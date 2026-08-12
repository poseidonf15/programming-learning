import sqlite3

connection = sqlite3.connect("movies.db")
cursor = connection.cursor()

with open("database.sql", "r") as file:
    cursor.executescript(file.read())
    
connection.commit()
connection.close()