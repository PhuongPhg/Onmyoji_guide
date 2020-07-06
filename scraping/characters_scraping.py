# importing the libraries
from bs4 import BeautifulSoup
import requests
import urllib
from urllib.request import Request, urlopen
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="onmyoji"
)

url="https://onmyojiguide.com/shikigami-list/"

req = Request(url, headers={'User-Agent': 'Mozilla/5.0'})
# webpage = urlopen(req).read()

mysite = urllib.request.urlopen(req).read()
# soup= BeautifulSoup(mysite, 'html.parser')
soup= BeautifulSoup(mysite, 'lxml')

# print(soup.prettify())

def f_link(f_url):
    f_req = Request(f_url, headers={'User-Agent': 'Mozilla/5.0'})
    f_link = urllib.request.urlopen(f_req).read()
    f_soup= BeautifulSoup(f_link, 'lxml')
    return f_soup

name=[]
appearance = []
rare=[]

tb = soup.find("table", attrs={"id": "tablepress-19"})
for link in tb.find_all('tr'):
    # name = link.find_all('a', href=True)
    for a in link.find_all('a', href=True):
        if(a.string is not None):
            result = a.string
            result = result.encode("ascii", "ignore")
            result = result.decode()
            result = result.replace("-","")
            if(result == ''):
                result = 'hiyoribo'
            name.append(result)
            appearance.append(a['href'])
            # print(result)
            # print(a['href'])
    for b in link.find_all('td', attrs = {'class':'column-4'}):
        rare.append(b.string)

if(len(name) == len(appearance) == len(rare)):
    print('Finish fetching name, appearance, rare')
    print(len(name))
    count = 0
    mycursor = mydb.cursor()
    for i in range(len(name)):
        mycursor = mydb.cursor()
        sql = "INSERT INTO characters (characters_name, appearance, rare) VALUES (%s, %s, %s)"
        val = (str(name[i]), str(appearance[i]), str(rare[i]))
        mycursor.execute(sql, val)
        mydb.commit()
        print(mycursor.rowcount, "record inserted.")
        count += mycursor.rowcount
    print(count, "record inserted.")