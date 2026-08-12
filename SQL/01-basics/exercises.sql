-- SELECT

SELECT title
FROM movies;

SELECT genre
FROM movies;

SELECT title, rating
FROM movies;

-- WHERE

SELECT title
FROM movies
WHERE genre = 'Sci-Fi';

SELECT title
FROM movies
WHERE year = 2010;

SELECT title, rating
FROM movies
WHERE rating = 9.0;

-- Basic Operators = != < > <= >=

SELECT title
FROM movies
WHERE rating > 8.8;

SELECT title
FROM movies
WHERE year < 2010;

SELECT title
FROM movies
WHERE rating >= 8.8;

SELECT title
FROM movies
WHERE genre != 'Sci-Fi';

-- AND, OR

SELECT title
FROM movies
WHERE genre = 'Sci-Fi'
AND year > 2010;

SELECT title
FROM movies
WHERE rating > 9.0
OR year < 2000;

SELECT title
FROM movies
WHERE genre = 'Action'
OR genre = 'Crime';

SELECT title
FROM movies
WHERE genre = 'Sci-Fi'
AND rating >= 8.8;

-- ORDER BY, LIMIT

SELECT title
FROM movies
ORDER BY year;

SELECT title
FROM movies
ORDER BY rating DESC;

SELECT title
FROM movies
ORDER BY rating DESC
LIMIT 3;

SELECT title
FROM movies
WHERE genre = 'Sci-Fi'
ORDER BY rating DESC
LIMIT 2;

-- DISTINCT

SELECT DISTINCT genre
FROM movies;

SELECT DISTINCT year
FROM movies;

-- COUNT

SELECT COUNT (*)
FROM movies;

SELECT COUNT (*)
FROM movies 
WHERE genre = 'Sci-Fi';

SELECT COUNT (*)
FROM movies 
WHERE rating >= 9.0;

SELECT COUNT (*)
FROM movies 
WHERE year > 2000;

-- AVG, MAX, MIN

SELECT AVG(rating)
FROM movies;

SELECT MAX(rating)
FROM movies;

SELECT MIN(rating)
FROM movies;

SELECT MIN(year)
FROM movies;

SELECT AVG(rating)
FROM movies
WHERE genre = 'Sci-Fi';
