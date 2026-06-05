/*
SQL Practice - Rakshita Rawat
B.Tech CSE (2028)
Learning Journey: Data Analytics

Topics Covered:
- SELECT
- WHERE
- DISTINCT
- ORDER BY
- COUNT
- String Functions
- CASE WHEN
*/
-- 1. Query all columns from CITY
SELECT *
FROM CITY;

-- 2. American cities with population > 100000
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;

-- 3. Query all CITY names from STATION
SELECT CITY
FROM STATION;

-- 4. Query distinct CITY names from STATION
SELECT DISTINCT CITY
FROM STATION;

-- 5. Cities with even ID numbers
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID,2) = 0;

-- 6. Difference between total CITY entries and distinct CITY entries
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

-- 7. Cities starting with vowels
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('A','E','I','O','U');

-- 8. Cities ending with vowels
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) IN ('A','E','I','O','U');

-- 9. Students scoring more than 75 marks and arranging them on the basis of the last 3 letter of there name and if same the nased on id
SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME,3), ID;

-- 10. Classify triangles
SELECT
CASE
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR A = C OR B = C THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM TRIANGLES;
