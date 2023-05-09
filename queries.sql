-- write your queries here

--1--
SELECT * FROM owners FULL JOIN vehicles ON vehicles.owner_id = owners.id;

--2--
SELECT first_name, last_name, COUNT(owner_id) FROM vehicles JOIN owners ON vehicles.owner_id = owners.id GROUP BY first_name, last_name;

--3--
SELECT first_name, last_name, AVG(price), COUNT(owner_id) FROM vehicles JOIN owners ON vehicles.owner_id = owners.id GROUP BY first_name, last_name HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;