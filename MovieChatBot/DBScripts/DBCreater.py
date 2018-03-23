# -*- coding: utf-8 -*-

#!/usr/bin/python3

import sqlite3
import os
import os.path
import ctypes
import json

conn = sqlite3.connect('Movie.sqlite');

databaseFile = 'Movie.sqlite'
sqlFile = 'MovieSQLFile.sql'

# Delete the old table
if os.path.isfile(databaseFile):
    os.remove(databaseFile)

# Create the tables
qry = open(sqlFile, 'r').read()
sqlite3.complete_statement(qry)
conn = sqlite3.connect(databaseFile)
cursor = conn.cursor()
try:
    cursor.executescript(qry)
except Exception as e:
    MessageBoxW = ctypes.windll.user32.MessageBoxW
    errorMessage = databaseFile + ': ' + str(e)
    MessageBoxW(None, errorMessage, 'Error', 0)
    cursor.close()
    raise
    
from pprint import pprint

data = json.load(open('Bangaluru.json'))

pprint(data)