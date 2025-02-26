# Mysql connector is basically a library which work like a bridge between python and mysql. This library is use to run mysql database query using python
import mysql.connector

# Connect ot the database server
try:
    conn = mysql.connector.connect(
        host='127.0.0.1',
        user = 'root',
        password =''
    )
    # efficient way is not to show user and pass. Better technique is to store it into sytem variable / or (using os module you can replace it)
    mycursor = conn.cursor()
    print('connection established')
except:
    print('Connection error')

