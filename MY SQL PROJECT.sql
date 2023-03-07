USE world;

-- Using count, get the number of cities in the USA. 
SELECT count(*) 
FROM city
WHERE countrycode = "USA";

SELECT count(*)
FROM city
WHERE countrycode = "ARG";

/* Find out the population and average life expectancy 
for People in Argentina (ARG) is */

SELECT  
     Code,
     Population,
     LifeExpectancy
FROM country
WHERE code = "ARG";

SELECT 
      AVG(LifeExpectancy) as "AvgLifeExpectancy"
 FROM country;


SELECT  
     Code,
     Population,
     AVG(LifeExpectancy) as "AvgLifeExpectancy"
FROM country
WHERE code = "ARG"
GROUP BY Population
ORDER BY AvgLifeExpectancy;


/* Using is NOT NULL, ORDER BY, LIMIT, 
what country has the highest lifeexpectancy */

SELECT max(LifeExpectancy)
FROM country;

SELECT max(LifeExpectancy)
FROM country
WHERE LifeExpectancy IS NOT NULL;

SELECT 
Name, LifeExpectancy
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy desc
LIMIT 5;

-- Using LEFT JOIN, ON, what is the capital of Spain(ESP).

SELECT name, capital
FROM country
WHERE name = "Spain";

SELECT country.name AS country,District AS Capital
FROM country
LEFT JOIN city
ON country.capital = city.ID
WHERE country.Name = "Spain";

-- USING LEFT JOIN, ON, list all the languages spoken in the 'Southeast Asia'region.

SELECT countrylanguage.Language, country.region
FROM country left  join countrylanguage  
ON country.code=countrylanguage.countrycode
WHERE region = 'Southeast Asia';

 