-- Lets practice some SQL code

SELECT * FROM Earthquakes.quakes_clean;

-- I want to see the 10 worst Earthquakes within our table.
SELECT * FROM Earthquakes.quakes_clean WHERE MAG>=7.0 ORDER BY MAG DESC LIMIT 10;

-- Now lets find the 10 smallest Earthquakes within our table. We'll also give the table an alias.
SELECT * FROM Earthquakes.quakes_clean AS Quakes WHERE MAG<=6.9 ORDER BY MAG LIMIT 10;

-- Lets find all of the Earthquakes that happened in Papua, Indonesia, in descending oder by magnitude.
SELECT * FROM Quakes WHERE LOCATION LIKE '%papua%' ORDER BY MAG DESC;

-- Lets do the same for Japan.
SELECT * FROM Quakes WHERE LOCATION LIKE '%japan%' ORDER BY MAG DESC;
SELECT * FROM Quakes WHERE LOCATION LIKE '%japan%' AND MAG BETWEEN 7 AND 9 ORDER BY MAG DESC;

-- What are the top 8 worst Earthquakes in Chile?
SELECT * FROM Quakes WHERE LOCATION LIKE '%chile%' ORDER BY MAG DESC LIMIT 8;
