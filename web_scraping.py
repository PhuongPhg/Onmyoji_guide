# importing the libraries
from bs4 import BeautifulSoup
import requests
import urllib
from urllib.request import Request, urlopen
url="https://onmyojiguide.com/shikigami-list/"

req = Request(url, headers={'User-Agent': 'Mozilla/5.0'})
# webpage = urlopen(req).read()

mysite = urllib.request.urlopen(req).read()
soup= BeautifulSoup(mysite, 'html.parser')
# print(soup.prettify())
n=0
tb = soup.find("table", attrs={"id": "tablepress-19"})
# for link in tb.find_all('td', {'class': 'column-2'}):
    # # name = link.find_all('a', href=True)
    # for a in link.find_all('a', href=True):
    #     if(a.string is not None):
    #         print(a.string)
    #         print(a['href'])
    
# for link in tb.find('td', {'class': 'column-3'}):     
#     role = link.string
#     print(role)   
