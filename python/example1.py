# Python and SQL Example for CSCI 3410
# Requires access to the Azure Labs Database
# You will need the following information from class to join
#   1. server URL
#   2. username
#   3. password

# This example shows you how to connect to a database server
#  and returns some basic output.

# pypi.org/project/pyodbc
# install using "pip install pyodbc"
import pyodbc as db

# connection variables - some values have been redacted before pushing
#  to GitHub. This info should be given to you prior to the lesson.
server   = ''
database = 'labs'
username = ''
password = ''
driver   = '{SQL Server}'

# create the connection string
# you can learn more about this at connectionstrings.com 
conn_str = 'DRIVER=' + driver + ';Server=tcp:' + server + '.database.windows.net,1433;Database=' + database + ';UID=' + username + ';PWD=' + password + ';'

# connect to the database server
cnxn     = db.connect(conn_str)

# create a database cursor so we can perform fetch operations
#  against our resultset.
cursor   = cnxn.cursor()

row = cursor.execute("select @@version as sql_version").fetchone()
print(row)
