# EX-1
#1
#Select column title from table films 
SELECT title FROM films

#2
#Get the title of every film from the films table.
SELECT title FROM films

#Get the title and release year for every film.
SELECT title, release_year FROM films


#3
#Get all the unique countries represented in the films table.
SELECT DISTINCT country FROM films

#Get all the different film certifications from the films table.
SELECT DISTINCT certification FROM films


#4
#Count the number of rows in the people table.
SELECT COUNT(*) FROM people;

#Count the number of (non-missing) birth dates in the people table.
SELECT COUNT(birthdate) FROM people;

#Count the number of unique birth dates in the people table.
SELECT COUNT(DISTINCT birthdate) FROM people;
