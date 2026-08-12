CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(50) NOT NULL,
  year INT NOT NULL,
  genre VARCHAR(50) NOT NULL,
  rating DECIMAL(3,1) NOT NULL
);

INSERT INTO movies (title, year, genre, rating)
VALUES 
  ('The Dark Knight', 2008, 'Action', 9.1),
  ('Interstellar', 2014, 'Sci-Fi', 8.7),
  ('The Godfather', 1972, 'Crime', 9.2),
  ('Inception', 2010, 'Sci-Fi', 8.8),
  ('The Odyssey', 2026, 'Action', 8.5),
  ('Obsession', 2026, 'Horror', 7.9),
  ('Avengers: Age of Ultron', 2015, 'Action', 7.3),
  ('The Amazing Spider-Man 2', 2014, 'Action', 6.6),
  ('Fight club', 1999, 'Action', 8.8),
  ('The Nun', 2018, 'Horror', 5.4);
