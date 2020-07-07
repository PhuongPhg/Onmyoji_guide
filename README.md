# Onmyoji Tool
*Description: Basic database project*

**Topic**: Onmyoji Tool management

Author:
- Trịnh Thảo Phương
- Ngô Xuân Minh
- Phạm Minh Long

# Usage
Per might want to port the database by

## Fetching data
### Requirement
- bs4
- requests
- urllib
- mysql.connector
### Setting up
- Change the information to your mysql server's information in each file scraping in folder [scraping](https://github.com/PhuongPhg/Onmyoji_guide/tree/master/scraping).
```
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="onmyoji"
)
```
- Before run scraping file, remember to run 'create_table.sql' with the guide below.
- Run all file in [scraping](https://github.com/PhuongPhg/Onmyoji_guide/tree/master/scraping) with Python. 

## Run SQL queries
First, access to mysql by
```
    $ sudo mysql
```

Then, run `create_table.sql` and `onmyoji.sql` by using
```
    $ soure PATH
```
*Note: Specify your path*