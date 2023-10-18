Use Company

/*SELECT TOP 3 Model, TotalCost FROM Cars
Retrieves the top 3 records from the "Cars" table, selecting the "Model" and "TotalCost" columns for these records. The result includes cars with the highest total costs.
---
"Cars" tablosundan en y�ksek 3 kayd� al�r, bu kay�tlar i�in "Model" ve "TotalCost" s�tunlar�n� se�er. Sonu�, en y�ksek toplam maliyetlere sahip arabalar� i�erir.*/


/*SELECT TOP 3 Model, TotalCost FROM Cars ORDER BY TotalCost DESC
Retrieves the top 3 records from the "Cars" table, sorting them in descending order based on the "TotalCost" column. It selects the "Model" and "TotalCost" columns for these records.
---
"Cars" tablosundan en y�ksek 3 kayd� al�r. Bu kay�tlar� "TotalCost" s�tununa g�re azalan �ekilde s�ralar. Bu kay�tlar i�in "Model" ve "TotalCost" s�tunlar�n� se�er.*/


/*SELECT Model, TotalCost FROM Cars ORDER BY TotalCost DESC OFFSET 1 ROWS
Retrieves records from the "Cars" table, ordering them in descending order based on the "TotalCost" column. It skips the first row and retrieves the remaining rows.
---
"Cars" tablosundaki kay�tlar� "TotalCost" s�tununa g�re azalan �ekilde s�ralar. �lk sat�r� atlayarak geriye kalan sat�rlar� al�r.*/

/*SELECT * FROM Employees ORDER BY CASE DepartmentId 
	WHEN 1 THEN 'HR'
	WHEN 2 THEN 'Tech'
	ELSE  'Sales'
	END;

This SQL code sorts the "Employees" table's records based on a specific rule and displays the department of each employee in the sorting results. 
It orders the records by the department identifier (DepartmentId) and matches the department name accordingly.
---
Bu SQL kodu, "Employees" adl� bir tablodaki �al��anlar� belirli bir kurala g�re s�ralar ve s�ralama sonu�lar�nda �al��anlar�n hangi departmanda oldu�unu g�sterir. 
Departman kimli�i (DepartmentId) de�erine g�re s�ralama yapar ve bu de�ere ba�l� olarak departman ad�n� e�le�tirir.*/


/*SELECT FName, LName, PhoneNumber AS PH, HireDate AS HDate FROM Employees ORDER BY PH, HDate
Retrieves the first name, last name, phone number (aliased as "PH"), and hire date (aliased as "HDate") of employees from the "Employees" table. 
The results are sorted in ascending order based on the "PH" (phone number) and "HDate" (hire date) columns.
---
"Employees" tablosundaki �al��anlar�n ad�n�, soyad�n�, telefon numaras�n� ("PH" olarak adland�r�lm��) ve i�e al�m tarihini ("HDate" olarak adland�r�lm��) al�r. 
Sonu�lar, "PH" (telefon numaras�) ve "HDate" (i�e al�m tarihi) s�tunlar�na g�re artan s�rayla s�ralan�r.*/

/*SELECT FName, LName, PhoneNumber AS PH, HireDate AS HDate FROM Employees ORDER BY 2, 3
Retrieves the first name (FName), last name (LName), phone number (aliased as "PH"), and hire date (aliased as "HDate") of employees from the "Employees" table. 
The results are sorted based on the columns at positions 2 (LName) and 3 (PH) in ascending order.
---
"Employees" tablosundaki �al��anlar�n ad�n� (FName), soyad�n� (LName), telefon numaras�n� ("PH" olarak adland�r�lm��) ve i�e al�m tarihini ("HDate" olarak adland�r�lm��) al�r. 
Sonu�lar, 2. (LName) ve 3. (PH) s�tun pozisyonlar�na g�re artan s�rayla s�ralan�r.*/

/*SELECT Model FROM Cars WHERE TotalCost < 200 AND TotalCost >= 100
Retrieves the models of cars from the "Cars" table where the total cost is less than 200 and greater than or equal to 100.
---
"TotalCost" de�eri 200'den k���k ve 100'den b�y�k veya e�it olan arabalar�n "Cars" tablosundaki modellerini al�r.*/

/*SELECT CustomerId FROM Cars WHERE TotalCost >= 1000 OR TotalCost <= 100
Retrieves the customer IDs from the "Cars" table where the total cost is either greater than or equal to 1000, or less than or equal to 100.
---
"TotalCost" de�eri ya 1000'den b�y�k veya e�it olan ya da 100'den k���k veya e�it olan arabalar�n "Cars" tablosundaki m��teri kimliklerini al�r.
