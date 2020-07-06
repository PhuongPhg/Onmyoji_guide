# importing the libraries
from bs4 import BeautifulSoup
import requests
import urllib
from urllib.request import Request, urlopen
import numpy as np
import re
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="onmyoji"
)

url="https://onmyojiguide.com/guide/bounty-list/"

req = Request(url, headers={'User-Agent': 'Mozilla/5.0'})
# webpage = urlopen(req).read()

wanted = urllib.request.urlopen(req).read()
# soup= BeautifulSoup(mysite, 'html.parser')
soup = BeautifulSoup(wanted, 'lxml')
# print(soup.prettify())

lists =[]
char = []
temps = []
tempss = []
total = []
j = 0

noi = []
tb = soup.find("table", attrs={"id": "tablepress-18"})
for name in tb.find_all('td', attrs = {'class':'column-1'}):
    name = name.text
    name = name.encode("ascii", "ignore")
    name = name.decode()
    name = name.replace("-","")
    name.strip()
    # if(name == 'Shuzu'):
    #     name = 'Shouzu'
    #     print(1)
    # if(name == 'Hououga'):
    #     name = 'Hououka'
    temps.append(name)
    # print(str(name))
# for name in str(tempss):
#     if(name == 'Hououga'):
#         name = name.replace('Shuzu', 'Shouzu')
#         print(1)
#     elif(name == 'Hououga'):
#         name = name.replace('Hououga', 'Hououka')
#     temps.append(name)

for chaps in tb.find_all('td', attrs = {'class':'column-3'}):
    # print(chaps.text.strip())
    chaps = chaps.text.strip().split('\n')
    # temp=chaps.split('<br>')

    for i in range(len(chaps)):
    # if(temps[j] != 'Black Panther' or temps[j] != 'Zombie Dog'):
        # if(temps[j] == 'Black Panther' or temps[j] == 'Zombie Dog'):
        #     continue
        if('Soul' in chaps[i] and 'Lantern Soul' not in chaps[i] and 'Warrior Souls' not in chaps[i]):            
            temp = chaps[i].split('has')
            char.append(temps[j])
        else:
            temp = chaps[i].split('-')
            char.append(temps[j])
        # print(temps[j])
        chap = temp[0]
        numbers_check = 0
        for k in range(1, len(temp)):
            if(temp[k].isdigit()):
                numbers_check += int(temp[k])
                # print(numbers_check)
            else:
                num = re.findall(r'\d+', temp[k])
                numbers = list(map(int, num))
                # print(numbers)
                numbers_check += np.sum(numbers)
        # print(numbers_check)
        # if(numbers_check != 0.0):
        total.append(numbers_check)
            # else:
        #     total.append('null')
        chap =chap.replace("[Recommend]","")
        chap = chap.strip()
        if(chap == 'Cry Me a River' or chap == 'Ame Onna Secret' or chap == 'Riverside Tales'):
            chap = chap + str(i)
        lists.append(chap)

    j+=1
    

print(len(char))
print(len(lists))
print(len(total))
# char.remove('Black Panther')
# char.remove('Zombie Dog')
if(len(char) == len(lists) == len(total)):
    print('Success fetching data for wanted_quest table with ', len(total), ' of rows')

    count=0

    mycursor = mydb.cursor()
    for i in range(len(total)):
        mycursor = mydb.cursor()
        sql = "INSERT INTO wanted_quest (id_char, place, no_yokai) VALUES ((SELECT id FROM characters WHERE characters_name = %s), %s, %s)"
        val = (str(char[i]), str(lists[i]), str(total[i]))
        # print(str(char[i]))
        mycursor.execute(sql, val)
        mydb.commit()
        count += mycursor.rowcount
    print(count, "record inserted.")

    #attention!!!!
    #Change the name 'Shouzu' - > 'Shuzu', 'Hououka' -> 'Hououga' in your database
        # UPDATE characters SET characters_name = 'Shuzu' WHERE id = 57
        # UPDATE characters SET characters_name = 'Hououga' WHERE id = 29
    #Insert 'Black Panther' and 'Zombie Dog' to the characters table
        # INSERT INTO characters (characters_name) VALUES('Black Panther');
        # INSERT INTO characters (characters_name) VALUES('Zombie Dog');