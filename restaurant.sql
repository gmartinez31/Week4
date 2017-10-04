CREATE TABLE restaurant (
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    distance_in_miles REAL DEFAULT .1 CHECK (distance_in_miles >= .1),
    stars DECIMAL,
    category VARCHAR,
    favorite_dish VARCHAR,
    takeout BOOLEAN DEFAULT FALSE,
    last_visit DATE
);

INSERT INTO restaurant VALUES (Default, 'Moon Tower Inn', 0.2, 4.5, 'American', 'Hunter S', FALSE, '2017-09-27');
INSERT INTO restaurant VALUES (Default, 'Champ Burger', 0.2, 4.8, 'American', 'Champ Cheese Burger', FALSE, '2017-09-29');
INSERT INTO restaurant VALUES (Default, 'Huynh Restaurant', 1.0, 4.6, 'Vietnamese', 'Com Bo Luc Lac', True, '2017-09-23');
INSERT INTO restaurant VALUES (Default, 'Ninfas', 0.2, 4.5, 'Mexican', 'Adobo Carne Asada', FALSE, '2017-10-01');
INSERT INTO restaurant VALUES (Default, 'Texas Bar-B-Que House', 0.6, 3.7, 'BBQ', 'Beef Brisket Plate', FALSE, '2017-10-05');
INSERT INTO restaurant VALUES (Default, 'Mandolas Deli', 1.1, 4.7, 'Italian', 'Pasta Mandola', FALSE, '2017-09-26');

--1
SELECT name FROM restaurant WHERE stars >= 4.5; 

--2
SELECT favorite_dish FROM restaurant;

--3
SELECT id FROM restaurant WHERE name='Champ Burger';

--4
Select name From restaurant where category='BBQ';

--5
Select name From restaurant where takeout=True;

--6
Select name From restaurant where takeout=True and category='BBQ';

--7
Select name From restaurant Where distance_in_miles < 1.0;

--8
Select name From restaurant where last_visit < current_date - 3;
