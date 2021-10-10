SELECT name,"year of issue" FROM albums WHERE "year of issue"=2018;
SELECT name,"length of time" FROM tracks ORDER BY "length of time" DESC LIMIT 1;
SELECT name FROM tracks WHERE "length of time" >= 210;
SELECT * FROM collection WHERE year BETWEEN 2018 AND 2020;
SELECT * FROM "Performers" WHERE name NOT LIKE '% %';
SELECT * FROM tracks WHERE LOWER(name) LIKE '%my%' OR LOWER(name) LIKE '%мой%';
