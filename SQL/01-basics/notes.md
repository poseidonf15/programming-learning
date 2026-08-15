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

What is ORDER BY?
ORDER BY is used to sort the rows returned by a query based on one or more columns.
The ordering could be from smallest to largest (ASC) or from largest to smallest (DESC). (The default is ASC)

What is LIMIT?
LIMIT is used to restrict the number of rows returned by a query.

    SELECT title
    FROM movies
    ORDER BY rating DESC
    LIMIT 3;

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

What is GROUP BY?
GROUP BY is used to group rows that have the same value in one or more columns.

What is WHERE?
WHERE is used to filter rows based on a condition before grouping.

What is HAVING?
HAVING is used to filter groups based on a condition after GROUP BY.

    WHERE vs HAVING:
    WHERE filters individual rows before GROUP BY.
    HAVING filters groups after GROUP BY.

    SELECT genre, COUNT(*)
    FROM movies
    WHERE rating >= 8
    GROUP BY genre
    HAVING COUNT(*) >= 2;

What is LIKE?
LIKE is used to filter string values based on a pattern. The % wildcard can represent any sequence of characters.

    -- Contains "The"
    SELECT title
    FROM movies
    WHERE title LIKE '%The%';

    -- Starts with "The"
    SELECT title
    FROM movies
    WHERE title LIKE 'The%';

    -- Ends with "2"
    SELECT title
    FROM movies
    WHERE title LIKE '%2';

What is IN?
IN is used to check whether a value matches one of several specified values. Instead of using multiple OR conditions, we can put the possible values in a list and use IN.

    SELECT title
    FROM movies
    WHERE genre IN ('Action', 'Sci-Fi', 'Crime');

What is BETWEEN?
BETWEEN is used to check whether a value is within a specified range. It is equivalent to using two conditions with AND, and it includes both boundary values.

    SELECT title
    FROM movies
    WHERE rating BETWEEN 8.0 AND 9.0;