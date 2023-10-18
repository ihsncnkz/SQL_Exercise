-- USE Company

-- SELECT * FROM Employees -- Returns the data in the Employees table.(Employess tablosundaki verileri verir.)
-- SELECT * FROM Departments
/*
* is the wildcard character used to select all available columns in a table.
*, bir tablodaki t�m kullan�labilir s�tunlar� se�mek i�in kullan�lan joker karakterdir.*/

-- SELECT Employees.*, Departments.Name from Employees JOIN Departments ON Departments.Id = Employees.DepartmentId
/*
Yukar�daki kod blo�unda Employees tablosundaki t�m s�t�nlar, Departments tablosundaki yaln�zca Name s�t�nu Join komutu ile aralar�ndaki ortak de�i�ken olan Departments.Id ile
Employees.DepartmentId birle�tirildi ve sonucu verildi.
----------------
In the code block above, all the columns in the Employees table, only the Name column in the Departments table, and the common variable Departments.Id and Employees.DepartmentId 
are combined with the Join command and the result is given.
*/

-- SELECT FName AS 'First Name', LName AS 'Last Name' FROM Employees
/*
Yukar�daki kodda Employees tablosunun FName ve LName s�t�nler� "AS" Komutu ile yeniden adland�r�larak ��kt�s� veridi.
-------
In the code above, the FName and LName columns of the Employees table are renamed with the "AS" Command and output is given.
*/

--SELECT FName AS FirstName, LName AS LastName FROM Employees
/*
Yukar�daki kodda Employees tablosunun FName ve LName s�t�nler� "AS" Komutu ile yeniden adland�r�larak ��kt�s� veridi.
------
In the code above, the FName and LName columns of the Employees table are renamed with the "AS" Command and output is given.
*/

-- SELECT * FROM Customers

-- SELECT FullName = FName + ' ' + LName, EmailAddress = Email, PhoneCus = PhoneNumber FROM Customers
-- SELECT FName + ' ' + LName AS FULLNAME, Email AS EmailAddress, PhoneNumber AS PhoneCus FROM Customers
/*
Yukar�daki kod bloklar� ayn� �al��ma mant���na ve ayn� ��kt�lara sahiptir ve bu kod bloklar�nda Customers tablosundaki FName ve LName bir araya getirilerek FullName ad� alt�nda ��kt�ya
yans�r, Email ise EmailAddress, PhoneNumber ise PhoneCus isimleri ad� alt�na ��kt�ya yans�r.
-----
The code blocks above have the same working logic and the same outputs, and in these code blocks, FName and LName in the Customers table are combined and reflected in the output 
under the name FullName, Email is reflected in the output under the name EmailAddress and PhoneNumber is reflected in the output under the name PhoneCus.
*/

--SELECT * FROM Employees ORDER BY Id DESC
/*
Yukar�daki kod blo�u Employess tablosundaki Id s�t�nuna g�re y�ksekten d����e do�ru bir s�ralama yapar.
-----
The code block above sorts from high to low based on the Id column in the Employees table.
*/

-- SELECT * FROM Employees ORDER BY DepartmentId ASC
/*
Yukar�daki kod blo�u Employess tablosundaki DepartmentId s�t�nuna g�re d���kten y�kse�e do�ru bir s�ralama yapar.
-----
The code block above sorts from low to high based on the DepartmentId column in the Employees table.
*/

-- SELECT PhoneNumber, Email, PreferredContact FROM Customers

/*
Birden �ok tablo birle�tirilirse, s�tun ad�ndan �nce tablo ad�n� belirterek belirli tablolardan s�tunlar se�ebilirsiniz: [tablo_ad�].[s�tun_ad�]
---
If multiple tables are joined together, you can select columns from specific tables by specifying the table name before the column name: [table_name].[column_name]

The example of this statement is below.(Bu ifadenin �rne�i a�a��dad�r.)
*/

--SELECT Customers.PhoneNumber, Customers.Email, Customers.PreferredContact, Cars.Status AS CarsStatus FROM Customers JOIN Cars ON Cars.CustomerId = Customers.Id
/*
Yukar�daki kod blo�unda Customers ve Cars tablolar�n� birle�tirdik. Customer.PhoneNumber tablodaki s�t�n� belirtme �eklidir. 
---
In the code block above, we combined the Customers and Cars tables. Customer.PhoneNumber is the way to specify the column in the table.
*/

--SELECT * FROM Cars WHERE Status = 'READY'
/*
WHERE komutunu kullanrak Cars tablosunun Status s�t�nu i�erisindeki "READY" olan de�eri kod bize ��kt� olarak verir.
---
By using the WHERE command, the code outputs the value "READY" in the Status column of the Cars table.
*/

-- SELECT WITH CASE (CASE �LE SELECT)
-- SELECT CASE WHEN Cars.TotalCost < 150 THEN 'under' else 'over' END threshold FROM Cars
/*
Yukar�daki kod blo�unda Cars tablosundaki totalCost de�erleri 150'den k���k olanlar i�in "under" veya b�y�k olanlar i�in "over" ��kt�sn� "threshold" ba�l��� alt�nda ��kt� olarak verecektir.
---
In the code block above, the totalCost values in the Cars table will be output as "under" for those less than 150 or "over" for those larger than under the "threshold" heading.
*/
/*SELECT
	CASE WHEN Cars.TotalCost < 150 THEN 'UNDER'
		WHEN Cars.TotalCost >= 200 AND Cars.TotalCost <= 250 THEN 'BETWEEN'
		ELSE 'OVER'
		END THRESHOLD FROM Cars*/
/*
Yukar�daki kod blo�unda Cars tablosundaki TotalCost s�tunun de�eri e�er 150 alt�nda use "UNDER", 200 ile 250 aras�nda ise "BETWEEN", bu iki se�enekte de�ilse "OVER" ��kt�s�n�, "THRESHOLD"
ad� alt�nda ��kt� olarak verir.
---
In the above code block, if the value of the TotalCost column in the Cars table is below 150 use "UNDER", if it is between 200 and 250 "BETWEEN", if these two options are not available "OVER", 
will be output under the name "THRESHOLD".
*/

/*SELECT e.FName, e.LName FROM Employees e*/

/*
Yukar�daki kodda "Employees e" burada Employees'in yan�ndaki e Employees'in yerine ge�ebilen bir k�sltma oluyor.
e.FName al�p Employees tablosundali FName verilerini �ekebiliyoruz.
---
In the above code, e is striction for Employees. That is to say, I can use the e for reach in the data of Employees
*/

/*SELECT e.FName, e.LName, d.Id AS Depertman_Id FROM Employees e JOIN Departments d ON e.DepartmentId = d.Id*/

/*SELECT * FROM Employees WHERE DepartmentId = 2 AND Salary > 200*/

/*
Yukar�daki kodda Employees tablosu i�erisinden DepartmenId'si 2 olan ve Salary deperi 200 den b�y�k olan de�erleri ��kt� olarak verir.
---
In the code above, it outputs values with a DepartmentId of 2 and a Salary value greater than 200 from the Employees table.
*/

/*SELECT FName FROM Customers WHERE PreferredContact = 'PHONE'*/

/*SELECT * FROM Employees WHERE (DepartmentId = 1 AND Salary < 600) OR (DepartmentId = 2 AND Salary > 500)*/

/*
Note:
Selecting without Locking the table
Sometimes when tables are used mostly (or only) for reads, indexing does not help anymore and every little bit counts, one might use selects without LOCK to improve performance.
---
Not:
Tabloyu Kilitlemeden Se�me
Bazen tablolar �o�unlukla (veya yaln�zca) okumalar i�in kullan�ld���nda, indeksleme art�k yard�mc� olmaz ve her bir bit �nemlidir, performans� art�rmak 
i�in K�L�T olmadan se�imler kullan�labilir.

Code(Kod):
SELECT * FROM TableName WITH (nolock)
*/


/*SELECT AVG(Salary) from Employees*/
/*
The AVG() aggregate function will return the average of values selected.
---
AVG() toplama i�levi, se�ilen de�erlerin ortalamas�n� d�nd�r�r.
*/

/*SELECT MIN(Salary) FROM Employees*/
/*
The MIN() aggregate function will return the minimum of values selected.
---
MIN() toplama i�levi, se�ilen minimum de�erleri d�nd�r�r.
*/

/*SELECT MAX(Salary) FROM Employees*/
/*
The MAX() aggregate function will return the maximum of values selected.
---
MAX() toplama i�levi, se�ilen maksimum de�eri d�nd�r�r.
*/

/*SELECT COUNT(*) FROM Employees*/
/*
The COUNT() aggregate function will return the count of values selected.
---
COUNT() toplama i�levi, se�ilen de�erlerin say�s�n� d�nd�r�r.
*/

/*SELECT SUM(Salary) FROM Employees*/
/*
The SUM() aggregate function returns the sum of the values selected for all rows.
---
SUM() toplama i�levi, t�m sat�rlar i�in se�ilen de�erlerin toplam�n� d�nd�r�r.
*/

/*SELECT * FROM Cars WHERE Status IN ('WAITING', 'WORKING')*/
/*
Select with condition of multiple values from column
---
S�tundan birden fazla de�er ko�uluyla se�in
*/

/*SELECT DepartmentId, COUNT(*) AS Item_count FROM Employees GROUP BY DepartmentId*/
/*
In the code block above, it returns how many of the data classes there are in the DepartmentId in the Employees table.
---
Yukar�daki kod blo�unda, Employees tablosundaki DepartmentId i�erisindeki veri s�n�flar�ndan ka� tane oldu�unu geri d�nd�r�r.
*/

/*SELECT DepartmentId, AVG(Salary) FROM Employees GROUP BY DepartmentId*/
/*
In the code block above, we get the average of the Salary column based on the classes of the DepartmentId column in the Employees table.
---
Yukar�daki kod blo�uda, Employees tablosundaki DepartmenId s�t�n�n s�n�flar�na g�re Salary s�t�nun s�n�f� al�yoruz.
*/

/*SELECT Status, AVG(TotalCost) FROM Cars WHERE Status <> 'ACCOUNYING' GROUP BY Status*/

/*
The query filters the data in the "Cars" table and selects only all records that do not have "ACCOUNTING" in the "Status" column. 
It then groups the selected records by the "Status" column and calculates the average "TotalCost" value for each group.
---
Sorgu, "Cars" tablosundaki verileri filtreler ve yaln�zca "Status" s�tununda "ACCOUNTING" olmayan t�m kay�tlar� se�er. 
Ard�ndan, se�ilen kay�tlar�n "Status" s�tununa g�re grupland�r�r ve her grup i�in ortalama "TotalCost" de�erini hesaplar.
*/

/*SELECT Status, AVG(TotalCost) FROM Cars WHERE Status <> 'ACCOUNYING' GROUP BY Status HAVING AVG(TotalCost) > 1000*/
/*
The query filters the data in the "Cars" table and selects only all records that do not have "ACCOUNTING" in the "Status" column. 
It then groups the selected records by the "Status" column and calculates the average "TotalCost" value for each group.

Finally, using the "HAVING" expression, only groups with "TotalCost" values greater than 1000 are selected. 
Therefore, the query returns results only for vehicles whose "Status" value is not "ACCOUNTING" and whose average "TotalCost" value is greater than 1000.
---
Sorgu, "Cars" tablosundaki verileri filtreler ve yaln�zca "Status" s�tununda "ACCOUNTING" olmayan t�m kay�tlar� se�er. 
Ard�ndan, se�ilen kay�tlar�n "Status" s�tununa g�re grupland�r�r ve her grup i�in ortalama "TotalCost" de�erini hesaplar.

Son olarak, "HAVING" ifadesi kullan�larak, sadece "TotalCost" de�erlerinin 1000'den b�y�k oldu�u gruplar se�ilir. 
Bu nedenle, sorgu yaln�zca, "Status" de�eri "ACCOUNTING" olmayan ve ortalama "TotalCost" de�eri 1000'den b�y�k olan ara�lar i�in sonu�lar d�nd�r�r.
*/

/*SELECT * FROM Employees ORDER BY LName*/
/*
The query selects all data in the "Employees" table and sorts the records by the "LName" column using the "ORDER BY" statement. 
The "ORDER BY" statement sorts ascending by default, that is, it sorts the last names alphabetically.
---
Sorgu, "Employees" tablosundaki t�m verileri se�er ve "ORDER BY" ifadesi kullan�larak, kay�tlar� "LName" (Soyad�) s�tununa g�re s�ralar. 
"ORDER BY" ifadesi varsay�lan olarak artan s�ralama yapar, yani soyadlar� alfabetik olarak s�ralar.
*/


/*SELECT * FROM Employees ORDER BY LName DESC*/
/*
The query selects all data in the "Employees" table and sorts the records in descending order of the "LName" column using the "ORDER BY" expression. 
The "DESC" statement, when used after the "ORDER BY" statement, indicates that the records will be sorted in descending order.
---
Sorgu, "Employees" tablosundaki t�m verileri se�er ve "ORDER BY" ifadesi kullan�larak, kay�tlar� "LName" (Soyad�) s�tununa g�re azalan �ekilde s�ralar. 
"DESC" ifadesi, "ORDER BY" ifadesinin ard�ndan kullan�ld���nda, kay�tlar�n azalan s�ralama yap�laca��n� belirtir.
*/

/*SELECT * FROM Employees ORDER BY LName ASC*/
/*
The query selects all data in the "Employees" table and sorts the records in ascending order by the "LName" column, using the "ORDER BY" statement. 
The "ASC" statement, when used after the "ORDER BY" statement, indicates that records will be sorted in ascending order. 
However, this expression will return the same result even if "ASC" is not specified in the query, as it is already used by default.
---
Sorgu, "Employees" tablosundaki t�m verileri se�er ve "ORDER BY" ifadesi kullan�larak, kay�tlar� "LName" (Soyad�) s�tununa g�re artan �ekilde s�ralar. 
"ASC" ifadesi, "ORDER BY" ifadesinin ard�ndan kullan�ld���nda, kay�tlar�n artan s�ralama yap�laca��n� belirtir. 
Ancak bu ifade, zaten varsay�lan olarak kullan�ld��� i�in, sorguda "ASC" belirtilmemi� olsa da ayn� sonucu verecektir.
*/

/*SELECT Id, FName, LName, PhoneNumber FROM Employees ORDER BY 1*/
/*
This code is a SQL query and sorts employee records in a table named "Employees" in ascending order by the Id column. 
In addition, only the employee's Id, name, surname, and phone number information are included in the query.
---
Bu kod bir SQL sorgusudur ve "Employees" adl� bir tablodaki �al��an kay�tlar�n� Id s�tununa g�re artan �ekilde s�ralar. 
Ayr�ca, sorguda yaln�zca �al��anlar�n Id, ad�, soyad� ve telefon numaras� bilgileri yer al�r.
*/

/*SELECT Id, FName, LName, PhoneNumber FROM Employees ORDER BY CASE WHEN LName = 'Jones' THEN 0 ELSE 1 END ASC*/
/*
This code is a SQL Query and sorts the records of employees in a table named "Employees" by last name. 
However, it makes a special order so that those with the surname "Jones" are used first.
---
Bu kod bir SQL sorgusudur ve "Employees" adl� bir tablodaki �al��an kay�tlar�n� soyadlar�na g�re s�ralar. 
Ancak, "Jones" soyad�na sahip �al��anlar ilk s�rada yer alacak �ekilde �zel bir s�ralama yapar.
*/

/*SELECT FName FROM Customers WHERE PhoneNumber IS NULL*/
/*
This SQL Query is querying the positioning names (FName) from a table named "Customers". However, the query only lists customers with a NULL value in the "PhoneNumber" column.
---
Bu SQL sorgusu, "Customers" adl� bir tablodan m��terilerin adlar�n� (FName) sorgulamaktad�r. Ancak, sorgu yaln�zca, "PhoneNumber" s�tununda NULL de�eri olan m��terileri listelemektedir.
*/

/*SELECT DISTINCT Model FROM  Cars*/
/*
This SQL Query is querying the car records in a table named "Cars" by listening for the unique (non-repeated) models from the "Model" column. 
That is, the query only lists cars with the same model once, without repeating them.
---
Bu SQL sorgusu, "Cars" adl� bir tablodaki araba kay�tlar�n�n "Model" s�tunundan benzersiz (tekrars�z) modelleri listeleyerek sorgulamaktad�r. 
Yani, sorgu ayn� modele sahip olan araba kay�tlar�n� tekrar etmeden sadece bir kez listelemektedir.
*/

/*SELECT * FROM Employees, Departments*/
/*
This SQL Query is querying by concatenating all records from two tables named "Employees" and "Departments".
---
Bu SQL sorgusu, "Employees" ve "Departments" adl� iki tablodaki t�m kay�tlar� birle�tirerek sorgulamaktad�r.
*/