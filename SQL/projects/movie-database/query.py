import sqlite3

connection = sqlite3.connect("movies.db")
cursor = connection.cursor()

with open("queries.sql", "r") as file:
    queries = file.read().split(";")

for query in queries:
    if query.strip():
        print("\n---", query[query.find("-") + 3: query.find("SELECT") - 1], "---\n")
        cursor.execute(query)

        columns = [column[0] for column in cursor.description]
        
        for result in cursor.fetchall():
            print(" | ".join([f"{column}: {data}" for column, data in zip(columns, result)]))

connection.close()