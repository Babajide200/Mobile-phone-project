SELECT * FROM mobile_phones LIMIT 10;

SELECT Brand, AVG(`Price_(USD)`) AS Average_Price
FROM mobile_phones
GROUP BY Brand
ORDER BY Average_Price DESC;

SELECT Brand, Model, Rating, `Price_(USD)`
FROM mobile_phones
ORDER BY Rating DESC
LIMIT 5;

SELECT Brand, Model, `Price_(USD)`, Rating
FROM mobile_phones
WHERE `Price_(USD)` BETWEEN 300 AND 600
ORDER BY Rating DESC;

SELECT `RAM_(GB)`, `Storage_(GB)`, COUNT(*) AS Phone_Count, 
       AVG(`Price_(USD)`) AS Average_Price
FROM mobile_phones
GROUP BY `RAM_(GB)`, `Storage_(GB)`
ORDER BY `RAM_(GB)`, `Storage_(GB)`;

SELECT Brand, Model, `Refresh_Rate_(Hz)`, `Price_(USD)`
FROM mobile_phones
WHERE `Refresh_Rate_(Hz)` >= 90
ORDER BY `Refresh_Rate_(Hz)` DESC, `Price_(USD)`;

SELECT Selling_Platform, COUNT(*) AS Total_Phones,
       MIN(`Price_(USD)`) AS Min_Price,
       MAX(`Price_(USD)`) AS Max_Price,
       AVG(`Price_(USD)`) AS Avg_Price
FROM mobile_phones
GROUP BY Selling_Platform;

SELECT Brand, Model, `Screen_Size_(inches)`, `Price_(USD)`
FROM mobile_phones
WHERE `Screen_Size_(inches)` > 6.5
ORDER BY `Screen_Size_(inches)` DESC;


SELECT Brand, Model, Processor, `Price_(USD)`
FROM mobile_phones
WHERE Processor LIKE '%Snapdragon%'
ORDER BY `Price_(USD)`;

 SELECT Brand, AVG('Price_(USD)') AS Average_Price 
 FROM mobile_phones GROUP BY Brand