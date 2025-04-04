SET SQL_SAFE_UPDATES = 0;

create database grocery_dataset;

USE grocery_dataset;

SELECT * 
FROM grocery_dataset;

SELECT DISTINCT(`Item Fat Content`)
FROM grocery_dataset;

UPDATE grocery_dataset
SET `Item Fat Content` = TRIM(`Item Fat Content`);

UPDATE grocery_dataset
SET `Item Fat Content` = REPLACE(`Item Fat Content`, '//', ''); 

UPDATE grocery_dataset
SET `Item Fat Content` = REPLACE(`Item Fat Content`, 'Low Fat]]', 'Low Fat'); 

SELECT DISTINCT(`Item Type`)
FROM grocery_dataset;

UPDATE grocery_dataset
SET `Item Type` = TRIM(`Item Type`);

UPDATE grocery_dataset
SET `Item Type` = REPLACE(`Item Type`, '//', ''); 

UPDATE grocery_dataset
SET `Item Type` = REPLACE(`Item Type`, 'Dairy….', 'Dairy'); 

SELECT * 
FROM grocery_dataset;

SELECT DISTINCT(`Outlet Location Type`)
FROM grocery_dataset;

UPDATE grocery_dataset
SET `Outlet Location Type` = REPLACE(`Outlet Location Type`, 'Middle,,, Class', 'Middle Class'); 

UPDATE grocery_dataset
SET `Outlet Location Type` = REPLACE(`Outlet Location Type`, 'Elites]]', 'Elites'); 

SELECT DISTINCT(`Outlet Size`)
FROM grocery_dataset;

UPDATE grocery_dataset
SET `Outlet Size` = REPLACE(`Outlet Size`, '...Medium', 'Medium'); 

UPDATE grocery_dataset
SET `Outlet Size` = REPLACE(`Outlet Size`, 'Medium..', 'Medium'); 

UPDATE grocery_dataset
SET `Outlet Size`= TRIM(`Outlet Size`);

UPDATE grocery_dataset
SET `Outlet Size` = REPLACE(`Outlet Size`, 'Small]]', 'Small'); 

UPDATE grocery_dataset
SET `Outlet Size` = REPLACE(`Outlet Size`, 'Small0', 'Small'); 

UPDATE grocery_dataset
SET `Outlet Size` = REPLACE(`Outlet Size`, 'Small0', 'Small'); 

UPDATE grocery_dataset
SET `Outlet Size` = REPLACE(`Outlet Size`, '/', ''); 

UPDATE grocery_dataset
SET `Outlet Size` = REPLACE(`Outlet Size`, 'Big@@', 'Big'); 

ALTER TABLE grocery_dataset
ADD COLUMN SALES float;

UPDATE grocery_dataset
SET SALES = SELECT Price * Quantity
FROM grocery_dataset;