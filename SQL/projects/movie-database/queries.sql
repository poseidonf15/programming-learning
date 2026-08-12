-- Get all movies
SELECT *
FROM movies;

-- Get Action movies
SELECT *
FROM movies
WHERE genre = 'Action';

-- Top 3 movies by rating
SELECT title
FROM movies
ORDER BY rating DESC
LIMIT 3;

-- Movies released after 2010
SELECT title
FROM movies
WHERE year > 2010;

-- Average rating of all movies
SELECT AVG(rating)
FROM movies;