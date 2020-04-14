-- Query to check successful load
SELECT * FROM omdb;
SELECT * FROM wiki;
SELECT * FROM movies;

-- Join tables on county_id
DROP TABLE movies;
CREATE TABLE movies AS
SELECT DISTINCT wiki.rank, wiki.title, wiki.worldwide_gross, wiki.year,
		omdb.director, omdb.runtime, omdb.rating, omdb.imdb_rating
FROM wiki
FULL OUTER JOIN omdb
ON wiki.title = omdb.title
WHERE wiki.title IS NOT NULL
ORDER BY wiki.rank;

