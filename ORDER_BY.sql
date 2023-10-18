Use Company

/*SELECT TOP 3 Model, TotalCost FROM Cars
Retrieves the top 3 records from the "Cars" table, selecting the "Model" and "TotalCost" columns for these records. The result includes cars with the highest total costs.
---
"Cars" tablosundan en yüksek 3 kaydý alýr, bu kayýtlar için "Model" ve "TotalCost" sütunlarýný seçer. Sonuç, en yüksek toplam maliyetlere sahip arabalarý içerir.*/


/*SELECT TOP 3 Model, TotalCost FROM Cars ORDER BY TotalCost DESC
Retrieves the top 3 records from the "Cars" table, sorting them in descending order based on the "TotalCost" column. It selects the "Model" and "TotalCost" columns for these records.
---
"Cars" tablosundan en yüksek 3 kaydý alýr. Bu kayýtlarý "TotalCost" sütununa göre azalan þekilde sýralar. Bu kayýtlar için "Model" ve "TotalCost" sütunlarýný seçer.*/


/*SELECT Model, TotalCost FROM Cars ORDER BY TotalCost DESC OFFSET 1 ROWS
Retrieves records from the "Cars" table, ordering them in descending order based on the "TotalCost" column. It skips the first row and retrieves the remaining rows.
---
"Cars" tablosundaki kayýtlarý "TotalCost" sütununa göre azalan þekilde sýralar. Ýlk satýrý atlayarak geriye kalan satýrlarý alýr.*/

/*SELECT * FROM Employees ORDER BY CASE DepartmentId 
	WHEN 1 THEN 'HR'
	WHEN 2 THEN 'Tech'
	ELSE  'Sales'
	END;

This SQL code sorts the "Employees" table's records based on a specific rule and displays the department of each employee in the sorting results. 
It orders the records by the department identifier (DepartmentId) and matches the department name accordingly.
---
Bu SQL kodu, "Employees" adlý bir tablodaki çalýþanlarý belirli bir kurala göre sýralar ve sýralama sonuçlarýnda çalýþanlarýn hangi departmanda olduðunu gösterir. 
Departman kimliði (DepartmentId) deðerine göre sýralama yapar ve bu deðere baðlý olarak departman adýný eþleþtirir.*/


/*SELECT FName, LName, PhoneNumber AS PH, HireDate AS HDate FROM Employees ORDER BY PH, HDate
Retrieves the first name, last name, phone number (aliased as "PH"), and hire date (aliased as "HDate") of employees from the "Employees" table. 
The results are sorted in ascending order based on the "PH" (phone number) and "HDate" (hire date) columns.
---
"Employees" tablosundaki çalýþanlarýn adýný, soyadýný, telefon numarasýný ("PH" olarak adlandýrýlmýþ) ve iþe alým tarihini ("HDate" olarak adlandýrýlmýþ) alýr. 
Sonuçlar, "PH" (telefon numarasý) ve "HDate" (iþe alým tarihi) sütunlarýna göre artan sýrayla sýralanýr.*/

/*SELECT FName, LName, PhoneNumber AS PH, HireDate AS HDate FROM Employees ORDER BY 2, 3
Retrieves the first name (FName), last name (LName), phone number (aliased as "PH"), and hire date (aliased as "HDate") of employees from the "Employees" table. 
The results are sorted based on the columns at positions 2 (LName) and 3 (PH) in ascending order.
---
"Employees" tablosundaki çalýþanlarýn adýný (FName), soyadýný (LName), telefon numarasýný ("PH" olarak adlandýrýlmýþ) ve iþe alým tarihini ("HDate" olarak adlandýrýlmýþ) alýr. 
Sonuçlar, 2. (LName) ve 3. (PH) sütun pozisyonlarýna göre artan sýrayla sýralanýr.*/

/*SELECT Model FROM Cars WHERE TotalCost < 200 AND TotalCost >= 100
Retrieves the models of cars from the "Cars" table where the total cost is less than 200 and greater than or equal to 100.
---
"TotalCost" deðeri 200'den küçük ve 100'den büyük veya eþit olan arabalarýn "Cars" tablosundaki modellerini alýr.*/

/*SELECT CustomerId FROM Cars WHERE TotalCost >= 1000 OR TotalCost <= 100
Retrieves the customer IDs from the "Cars" table where the total cost is either greater than or equal to 1000, or less than or equal to 100.
---
"TotalCost" deðeri ya 1000'den büyük veya eþit olan ya da 100'den küçük veya eþit olan arabalarýn "Cars" tablosundaki müþteri kimliklerini alýr.
