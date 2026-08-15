import sqlite3

connection = sqlite3.connect("movies.db")
cursor = connection.cursor()

with open("queries.sql", "r") as file:
    queries = file.read().split(";")

def execute_query(query, cursor, user_request):
    if user_request is None:
        cursor.execute(query)
    else:
        cursor.execute(query, (user_request,))

    results = cursor.fetchall()

    if not results:
        print("\nNo movies found.")
        return

    columns = [column[0] for column in cursor.description]
    
    for result in results:
        print(" | ".join([f"{column}: {data}" for column, data in zip(columns, result)]))


def add_movie(query, connection, cursor, title, year, genre, rating):
    cursor.execute(query, (title, year, genre, rating))
    connection.commit()

def get_year():
    while True:
        try:
            result = int(input("Year: "))
        except ValueError:
            print("\nThat is not a number!")
            continue

        if not 1888 <= result <= 2026:
            print("\nInvalid year.")
            continue

        return result

def get_rating():
    while True:
        try:
            result = float(input("Rating: "))  
        except ValueError:
            print("\nThat is not a number!")
            continue

        if not 0.0 <= result <= 10.0:
            print("\nInvalid rating. Please enter a rating 0.0 - 10.0.")
            continue

        return result

def get_text(prompt):
    while True:
        result = input(prompt).strip()

        if not result:
            print("You left it empty. Please try again.")
            continue

        return result

OPTIONS = {
    1: ("Show all movies", queries[0]),
    2: ("Show Action movies", queries[1]),
    3: ("Top 3 movies", queries[2]),
    4: ("Movies after 2010", queries[3]),
    5: ("Average rating", queries[4]),
    6: ("Search movies by genre", queries[5]),
    7: ("Search movies by title", queries[6]),
    8: ("Add movie", queries[7]),
    9: ("Exit",)
}

while True:
    print("""\n
========================
     MOVIE DATABASE 
========================

{}\n""".format("\n".join(f"{id}: {option[0]}"for id, option in OPTIONS.items())))

    try: 
        choice = int(input("Choose an option: "))
    except ValueError:
        print("\nThat is not a number!")
        continue

    user_request = None

    if choice == 9:
        print("\nBye-bye, have a nice day :)\n")
        break

    elif not 1 <= choice <= 9:
        print("\nInvalid option. Please choose 1-8.")
        continue

    elif choice == 6:
        user_request = get_text("Enter genre: ")

    elif choice == 7:
        user_request = get_text("Enter title: ")
        user_request = f"%{user_request}%"

    elif choice == 8:

        title = get_text("Title: ")
        year = get_year()
        genre = get_text("Genre: ")
        rating = get_rating()

        add_movie(OPTIONS[choice][1], connection, cursor, title, year, genre, rating)
        continue

    query = OPTIONS[choice][1]

    if query.strip():
        print(f"\n---{OPTIONS[choice][0]}---\n")
        execute_query(query, cursor, user_request)

connection.close()