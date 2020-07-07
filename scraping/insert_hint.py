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

temps =[]
hints = []

tb = soup.find("table", attrs={"id": "tablepress-18"})
for name in tb.find_all('td', attrs = {'class':'column-1'}):
    name = name.text
    name = name.encode("ascii", "ignore")
    name = name.decode()
    name = name.replace("-","")
    name.strip()
    temps.append(name)

for hint in tb.find_all('td', attrs = {'class':'column-2'}):
    hint = hint.text
    hint = hint.encode("ascii", "ignore")
    hint = hint.decode()
    hint = hint.replace("-","")
    hint = hint.replace('\n', '')
    hint.strip()
    hints.append(hint)

print((hints))
print((temps))

if(len(hints) == len(temps)):
    print('Success fetching data for hints', len(temps), ' of rows')

    count=0

    mycursor = mydb.cursor()
    for i in range(len(temps)):
        mycursor = mydb.cursor()
        sql = "UPDATE wanted_quest SET hint = %s WHERE id_char = (SELECT id FROM characters WHERE characters_name = %s)"
        val = (str(hints[i]), str(temps[i]))
        # print(str(char[i]))
        mycursor.execute(sql, val)
        mydb.commit()
        count += mycursor.rowcount
    print(count, "record inserted.")

# for i in range(len(hints)):
#     print(i)
#     print(hints[i])