INSERT INTO city(population, name, latitude, longitude) VALUES(14960000, 'Tokyo', 35.652832, 139.839478);
INSERT INTO city(population, name, latitude, longitude) VALUES(4618000, 'Cape Town', -33.918861, 18.423300);
INSERT INTO city(population, name, latitude, longitude) VALUES(9776000, 'Seoul', 37.532600, 127.024612);
INSERT INTO city(population, name, latitude, longitude) VALUES(9776000, 'to_delete', 37.532600, 127.024612);
INSERT INTO city(population, name, latitude, longitude) VALUES(9776000, 'test', 37.532600, 127.024612);

SELECT population, name FROM city;
SELECT population, name FROM city WHERE population >= 1000000;
SELECT population, name FROM city WHERE population  <= 1000000 OR latitude > 20;
SELECT population, name FROM city WHERE longitude < 20 AND latitude > 20;

DELETE FROM city WHERE population <= 1000;
DELETE FROM city WHERE name='to_delete';

UPDATE city SET name='testing', population=200000, latitude=10, longitude=-10 WHERE name='testing';