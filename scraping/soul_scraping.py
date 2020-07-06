from bs4 import BeautifulSoup
import requests
import urllib
from urllib.request import Request, urlopen
import mysql.connector

import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="onmyoji"
)


url="https://onmyojiguide.com/ontamas-list/"
req = Request(url, headers={'User-Agent': 'Mozilla/5.0'})
soul_site = urllib.request.urlopen(req).read()
soup= BeautifulSoup(soul_site, 'lxml')


name_soul = []
set_2 = []
set_4 = []

tb = soup.find("table", attrs={"id": "tablepress-5"})

for name in tb.find_all('td', attrs = {'column-2'}):
    # for name in link.find_all('a', href=True):
    if(name.string is not None):
        name = name.string
        name = name.encode("ascii", "ignore")
        name = name.decode()
        name = name.replace("-","")
        name_soul.append(name)
        # print(name)
    
for combo_2 in tb.find_all('td', attrs = {'column-3'}):
    if(combo_2 is not None):
        # combo_2 = combo_2.replace('<br>', '')
        if(combo_2.string is None):
            combo_2 = combo_2.br.previous_element
        else:
            combo_2 = combo_2.string
        set_2.append(combo_2)
        # print(combo_2)

for combo_4 in tb.find_all('td', attrs = {'column-4'}):
    if(combo_4 is not None):
        if(combo_4.string is None):
            combo_4 = combo_4.br.previous_element
        else:
            combo_4 = combo_4.string
        set_4.append(combo_4)
        # print(combo_4)

if(len(name_soul) == len(set_2) == len(set_4)):
    print('Success fetching data for soul table with ', len(set_4), ' of rows')

    count=0

    mycursor = mydb.cursor()
    for i in range(len(name_soul)):
        mycursor = mydb.cursor()
        sql = "INSERT INTO soul (soul_name, combo_2, combo_4) VALUES (%s, %s, %s)"
        val = (str(name_soul[i]), str(set_2[i]), str(set_4[i]))
        mycursor.execute(sql, val)
        mydb.commit()
        count += mycursor.rowcount
    print(count, "record inserted.")