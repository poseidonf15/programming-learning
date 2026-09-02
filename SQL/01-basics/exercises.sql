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

-- GROUP BY

SELECT genre, count(title)
FROM movies
GROUP BY genre;

SELECT genre, AVG(rating)
FROM movies
GROUP BY genre;

SELECT genre, MAX(rating)
FROM movies
GROUP BY genre;

-- HAVING

SELECT genre, COUNT(*)
FROM movies
GROUP BY genre
HAVING COUNT(*) > 2;

SELECT genre, COUNT(*)
FROM movies
WHERE rating >= 8
GROUP BY genre
HAVING COUNT(*) >= 2;

SELECT year, AVG(rating)
FROM movies
GROUP BY year
HAVING COUNT(*) >= 2;

--  LIKE

SELECT title
FROM movies
WHERE title LIKE 'The%';

SELECT title
FROM movies
WHERE title LIKE '%2';

SELECT title
FROM movies
WHERE title LIKE '%The%';

-- IN

SELECT title
FROM movies
WHERE genre IN ('Action', 'Sci-Fi') AND rating >= 8.5;

-- BETWEEN

SELECT title
FROM movies
WHERE rating BETWEEN 8.0 AND 9.0;

SELECT *
FROM movies
WHERE genre IN ('Action', 'Sci-Fi') AND rating BETWEEN 8.0 AND 9.2
ORDER BY rating DESC
LIMIT 3;

SELECT genre, COUNT(*)
FROM movies
WHERE rating >= 8
GROUP BY genre
HAVING COUNT(*) >= 2
ORDER BY COUNT(*) DESC;

-- JOIN

SELECT movies.title , genres.name
FROM movies 
JOIN genres
ON genres.id = movies.genre_id;

SELECT movies.title , genres.name, movies.rating
FROM movies 
LEFT JOIN genres
ON genres.id = movies.genre_id;

SELECT genres.name, COUNT(*), AVG(movies.rating)
FROM genres
JOIN movies
ON genres.id = movies.genre_id
GROUP BY genres.name
HAVING COUNT(*) >= 2;