What is a Database?
A Database is a system used to store, organize, and manage data.
What is a Table?
A Table is a structure inside a database that organizes data into Columns and Records.
What is a Column?
A Column stores a specific type of information about each record, such as an id or title.
What is a Record?
A Record is a row in a table that contains all the information about one item.
What is SELECT?
SELECT is a command that lets us 'grab' information from a table.
What is FROM?
FROM is a command to set the table that we want to get the information from.
What is *?
* can be used with SELECT to retrieve all columns from the desired table.

Basic SELECT syntax:

SELECT column_name
FROM table_name;

To select multiple columns:

SELECT column1, column2
FROM table_name;

What is DISTINCT?
DISTINCT is used to return only unique combinations of the selected columns, removing duplicates.

SELECT DISTINCT genre
FROM movies;

What is COUNT()?
COUNT() is used to count the number of records that match the query.

SELECT COUNT (*)
FROM movies;

What is AVG()?
AVG() is used to calculate the average value of a numeric column.

SELECT AVG(rating)
FROM movies;

What is MIN()?
MIN() is used to return the lowest value of a given column.

SELECT MIN(rating)
FROM movies;

What is MAX()?
MAX() is used to return the highest value of a given column.

SELECT MAX(rating)
FROM movies;

Important:
Aggregate functions such as COUNT(), AVG(), MIN(), and MAX() return a value calculated from multiple records rather than returning the records themselves.
