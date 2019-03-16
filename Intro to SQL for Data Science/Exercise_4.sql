--EX-4
--1
--Get the names of people from the people table, sorted alphabetically.
SELECT name FROM people ORDER BY name;

--Get all details for all films except those released in 2015 and order them by duration.
SELECT * FROM films WHERE release_year <> 2015 ORDER BY duration;


--2
--Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.
SELECT imdb_score, film_id FROM reviews ORDER BY imdb_score DESC;


--3
--Get the birth date and name of people in the people table, in order of when they were born and alphabetically by name.
SELECT birthdate, name FROM people ORDER BY birthdate, name;


--4
--Get the release year and count of films released in each year.
SELECT release_year, COUNT(*) FROM films GROUP BY release_year


--5
--Get the release year, country, and highest budget spent making a film for each year, for each country. Sort your results by release year and country.
SELECT release_year, country, MAX(budget)
FROM films
GROUP BY release_year, country
ORDER BY release_year, country;

--Get the country, release year, and lowest amount grossed per release year per country. Order your results by country and release year.
SELECT country, release_year, MIN(gross)
FROM films
GROUP BY country, release_year
ORDER BY country, release_year;


--6
--Get the release year, budget and gross earnings for each film in the films table.
SELECT release_year, budget, gross
FROM films;


--5
--Get the country, average budget, and average gross take of countries that have made more than 10 films. 
--Order the result by country name, and limit the number of results displayed to 5. 
--You should alias the averages as avg_budget and avg_gross respectively.
-- select country, average budget, average gross
SELECT country, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
-- from the films table
FROM films
-- group by country 
GROUP BY country
-- where the country has more than 10 titles
HAVING COUNT(title) > 10
-- order by country
ORDER BY country
-- limit to only show 5 results
LIMIT 5


--6
SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird';
