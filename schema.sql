-- Create Two Tables
CREATE TABLE wiki (
  rank int PRIMARY KEY,
  title VARCHAR,
  worldwide_gross VARCHAR,
  year INT
);

CREATE TABLE omdb (
  id INT PRIMARY KEY,
  title VARCHAR,
  director VARCHAR,
  runtime VARCHAR,
  rating VARCHAR,
  imdb_rating VARCHAR
);
