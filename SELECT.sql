-- USE Company

-- SELECT * FROM Employees -- Returns the data in the Employees table.(Employess tablosundaki verileri verir.)
-- SELECT * FROM Departments
/*
* is the wildcard character used to select all available columns in a table.
*, bir tablodaki tüm kullanýlabilir sütunlarý seçmek için kullanýlan joker karakterdir.*/

-- SELECT Employees.*, Departments.Name from Employees JOIN Departments ON Departments.Id = Employees.DepartmentId
/*
Yukarýdaki kod bloðunda Employees tablosundaki tüm sütünlar, Departments tablosundaki yalnýzca Name sütünu Join komutu ile aralarýndaki ortak deðiþken olan Departments.Id ile
Employees.DepartmentId birleþtirildi ve sonucu verildi.
----------------
In the code block above, all the columns in the Employees table, only the Name column in the Departments table, and the common variable Departments.Id and Employees.DepartmentId 
are combined with the Join command and the result is given.
*/

-- SELECT FName AS 'First Name', LName AS 'Last Name' FROM Employees
/*
Yukarýdaki kodda Employees tablosunun FName ve LName sütünlerý "AS" Komutu ile yeniden adlandýrýlarak çýktýsý veridi.
-------
In the code above, the FName and LName columns of the Employees table are renamed with the "AS" Command and output is given.
*/

--SELECT FName AS FirstName, LName AS LastName FROM Employees
/*
Yukarýdaki kodda Employees tablosunun FName ve LName sütünlerý "AS" Komutu ile yeniden adlandýrýlarak çýktýsý veridi.
------
In the code above, the FName and LName columns of the Employees table are renamed with the "AS" Command and output is given.
*/

-- SELECT * FROM Customers

-- SELECT FullName = FName + ' ' + LName, EmailAddress = Email, PhoneCus = PhoneNumber FROM Customers
-- SELECT FName + ' ' + LName AS FULLNAME, Email AS EmailAddress, PhoneNumber AS PhoneCus FROM Customers
/*
Yukarýdaki kod bloklarý ayný çalýþma mantýðýna ve ayný çýktýlara sahiptir ve bu kod bloklarýnda Customers tablosundaki FName ve LName bir araya getirilerek FullName adý altýnda çýktýya
yansýr, Email ise EmailAddress, PhoneNumber ise PhoneCus isimleri adý altýna çýktýya yansýr.
-----
The code blocks above have the same working logic and the same outputs, and in these code blocks, FName and LName in the Customers table are combined and reflected in the output 
under the name FullName, Email is reflected in the output under the name EmailAddress and PhoneNumber is reflected in the output under the name PhoneCus.
*/

--SELECT * FROM Employees ORDER BY Id DESC
/*
Yukarýdaki kod bloðu Employess tablosundaki Id sütünuna göre yüksekten düþüðe doðru bir sýralama yapar.
-----
The code block above sorts from high to low based on the Id column in the Employees table.
*/

-- SELECT * FROM Employees ORDER BY DepartmentId ASC
/*
Yukarýdaki kod bloðu Employess tablosundaki DepartmentId sütünuna göre düþükten yükseðe doðru bir sýralama yapar.
-----
The code block above sorts from low to high based on the DepartmentId column in the Employees table.
*/

-- SELECT PhoneNumber, Email, PreferredContact FROM Customers

/*
Birden çok tablo birleþtirilirse, sütun adýndan önce tablo adýný belirterek belirli tablolardan sütunlar seçebilirsiniz: [tablo_adý].[sütun_adý]
---
If multiple tables are joined together, you can select columns from specific tables by specifying the table name before the column name: [table_name].[column_name]

The example of this statement is below.(Bu ifadenin örneði aþaðýdadýr.)
*/

--SELECT Customers.PhoneNumber, Customers.Email, Customers.PreferredContact, Cars.Status AS CarsStatus FROM Customers JOIN Cars ON Cars.CustomerId = Customers.Id
/*
Yukarýdaki kod bloðunda Customers ve Cars tablolarýný birleþtirdik. Customer.PhoneNumber tablodaki sütünü belirtme þeklidir. 
---
In the code block above, we combined the Customers and Cars tables. Customer.PhoneNumber is the way to specify the column in the table.
*/

--SELECT * FROM Cars WHERE Status = 'READY'
/*
WHERE komutunu kullanrak Cars tablosunun Status sütünu içerisindeki "READY" olan deðeri kod bize çýktý olarak verir.
---
By using the WHERE command, the code outputs the value "READY" in the Status column of the Cars table.
*/

-- SELECT WITH CASE (CASE ÝLE SELECT)
-- SELECT CASE WHEN Cars.TotalCost < 150 THEN 'under' else 'over' END threshold FROM Cars
/*
Yukarýdaki kod bloðunda Cars tablosundaki totalCost deðerleri 150'den küçük olanlar için "under" veya büyük olanlar için "over" çýktýsný "threshold" baþlýðý altýnda çýktý olarak verecektir.
---
In the code block above, the totalCost values in the Cars table will be output as "under" for those less than 150 or "over" for those larger than under the "threshold" heading.
*/
/*SELECT
	CASE WHEN Cars.TotalCost < 150 THEN 'UNDER'
		WHEN Cars.TotalCost >= 200 AND Cars.TotalCost <= 250 THEN 'BETWEEN'
		ELSE 'OVER'
		END THRESHOLD FROM Cars*/
/*
Yukarýdaki kod bloðunda Cars tablosundaki TotalCost sütunun deðeri eðer 150 altýnda use "UNDER", 200 ile 250 arasýnda ise "BETWEEN", bu iki seçenekte deðilse "OVER" çýktýsýný, "THRESHOLD"
adý altýnda çýktý olarak verir.
---
In the above code block, if the value of the TotalCost column in the Cars table is below 150 use "UNDER", if it is between 200 and 250 "BETWEEN", if these two options are not available "OVER", 
will be output under the name "THRESHOLD".
*/

/*SELECT e.FName, e.LName FROM Employees e*/

/*
Yukarýdaki kodda "Employees e" burada Employees'in yanýndaki e Employees'in yerine geçebilen bir kýsltma oluyor.
e.FName alýp Employees tablosundali FName verilerini çekebiliyoruz.
---
In the above code, e is striction for Employees. That is to say, I can use the e for reach in the data of Employees
*/

/*SELECT e.FName, e.LName, d.Id AS Depertman_Id FROM Employees e JOIN Departments d ON e.DepartmentId = d.Id*/

/*SELECT * FROM Employees WHERE DepartmentId = 2 AND Salary > 200*/

/*
Yukarýdaki kodda Employees tablosu içerisinden DepartmenId'si 2 olan ve Salary deperi 200 den büyük olan deðerleri çýktý olarak verir.
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
Tabloyu Kilitlemeden Seçme
Bazen tablolar çoðunlukla (veya yalnýzca) okumalar için kullanýldýðýnda, indeksleme artýk yardýmcý olmaz ve her bir bit önemlidir, performansý artýrmak 
için KÝLÝT olmadan seçimler kullanýlabilir.

Code(Kod):
SELECT * FROM TableName WITH (nolock)
*/


/*SELECT AVG(Salary) from Employees*/
/*
The AVG() aggregate function will return the average of values selected.
---
AVG() toplama iþlevi, seçilen deðerlerin ortalamasýný döndürür.
*/

/*SELECT MIN(Salary) FROM Employees*/
/*
The MIN() aggregate function will return the minimum of values selected.
---
MIN() toplama iþlevi, seçilen minimum deðerleri döndürür.
*/

/*SELECT MAX(Salary) FROM Employees*/
/*
The MAX() aggregate function will return the maximum of values selected.
---
MAX() toplama iþlevi, seçilen maksimum deðeri döndürür.
*/

/*SELECT COUNT(*) FROM Employees*/
/*
The COUNT() aggregate function will return the count of values selected.
---
COUNT() toplama iþlevi, seçilen deðerlerin sayýsýný döndürür.
*/

/*SELECT SUM(Salary) FROM Employees*/
/*
The SUM() aggregate function returns the sum of the values selected for all rows.
---
SUM() toplama iþlevi, tüm satýrlar için seçilen deðerlerin toplamýný döndürür.
*/

/*SELECT * FROM Cars WHERE Status IN ('WAITING', 'WORKING')*/
/*
Select with condition of multiple values from column
---
Sütundan birden fazla deðer koþuluyla seçin
*/

/*SELECT DepartmentId, COUNT(*) AS Item_count FROM Employees GROUP BY DepartmentId*/
/*
In the code block above, it returns how many of the data classes there are in the DepartmentId in the Employees table.
---
Yukarýdaki kod bloðunda, Employees tablosundaki DepartmentId içerisindeki veri sýnýflarýndan kaç tane olduðunu geri döndürür.
*/

/*SELECT DepartmentId, AVG(Salary) FROM Employees GROUP BY DepartmentId*/
/*
In the code block above, we get the average of the Salary column based on the classes of the DepartmentId column in the Employees table.
---
Yukarýdaki kod bloðuda, Employees tablosundaki DepartmenId sütünün sýnýflarýna göre Salary sütünun sýnýfý alýyoruz.
*/

/*SELECT Status, AVG(TotalCost) FROM Cars WHERE Status <> 'ACCOUNYING' GROUP BY Status*/

/*
The query filters the data in the "Cars" table and selects only all records that do not have "ACCOUNTING" in the "Status" column. 
It then groups the selected records by the "Status" column and calculates the average "TotalCost" value for each group.
---
Sorgu, "Cars" tablosundaki verileri filtreler ve yalnýzca "Status" sütununda "ACCOUNTING" olmayan tüm kayýtlarý seçer. 
Ardýndan, seçilen kayýtlarýn "Status" sütununa göre gruplandýrýr ve her grup için ortalama "TotalCost" deðerini hesaplar.
*/

/*SELECT Status, AVG(TotalCost) FROM Cars WHERE Status <> 'ACCOUNYING' GROUP BY Status HAVING AVG(TotalCost) > 1000*/
/*
The query filters the data in the "Cars" table and selects only all records that do not have "ACCOUNTING" in the "Status" column. 
It then groups the selected records by the "Status" column and calculates the average "TotalCost" value for each group.

Finally, using the "HAVING" expression, only groups with "TotalCost" values greater than 1000 are selected. 
Therefore, the query returns results only for vehicles whose "Status" value is not "ACCOUNTING" and whose average "TotalCost" value is greater than 1000.
---
Sorgu, "Cars" tablosundaki verileri filtreler ve yalnýzca "Status" sütununda "ACCOUNTING" olmayan tüm kayýtlarý seçer. 
Ardýndan, seçilen kayýtlarýn "Status" sütununa göre gruplandýrýr ve her grup için ortalama "TotalCost" deðerini hesaplar.

Son olarak, "HAVING" ifadesi kullanýlarak, sadece "TotalCost" deðerlerinin 1000'den büyük olduðu gruplar seçilir. 
Bu nedenle, sorgu yalnýzca, "Status" deðeri "ACCOUNTING" olmayan ve ortalama "TotalCost" deðeri 1000'den büyük olan araçlar için sonuçlar döndürür.
*/

/*SELECT * FROM Employees ORDER BY LName*/
/*
The query selects all data in the "Employees" table and sorts the records by the "LName" column using the "ORDER BY" statement. 
The "ORDER BY" statement sorts ascending by default, that is, it sorts the last names alphabetically.
---
Sorgu, "Employees" tablosundaki tüm verileri seçer ve "ORDER BY" ifadesi kullanýlarak, kayýtlarý "LName" (Soyadý) sütununa göre sýralar. 
"ORDER BY" ifadesi varsayýlan olarak artan sýralama yapar, yani soyadlarý alfabetik olarak sýralar.
*/


/*SELECT * FROM Employees ORDER BY LName DESC*/
/*
The query selects all data in the "Employees" table and sorts the records in descending order of the "LName" column using the "ORDER BY" expression. 
The "DESC" statement, when used after the "ORDER BY" statement, indicates that the records will be sorted in descending order.
---
Sorgu, "Employees" tablosundaki tüm verileri seçer ve "ORDER BY" ifadesi kullanýlarak, kayýtlarý "LName" (Soyadý) sütununa göre azalan þekilde sýralar. 
"DESC" ifadesi, "ORDER BY" ifadesinin ardýndan kullanýldýðýnda, kayýtlarýn azalan sýralama yapýlacaðýný belirtir.
*/

/*SELECT * FROM Employees ORDER BY LName ASC*/
/*
The query selects all data in the "Employees" table and sorts the records in ascending order by the "LName" column, using the "ORDER BY" statement. 
The "ASC" statement, when used after the "ORDER BY" statement, indicates that records will be sorted in ascending order. 
However, this expression will return the same result even if "ASC" is not specified in the query, as it is already used by default.
---
Sorgu, "Employees" tablosundaki tüm verileri seçer ve "ORDER BY" ifadesi kullanýlarak, kayýtlarý "LName" (Soyadý) sütununa göre artan þekilde sýralar. 
"ASC" ifadesi, "ORDER BY" ifadesinin ardýndan kullanýldýðýnda, kayýtlarýn artan sýralama yapýlacaðýný belirtir. 
Ancak bu ifade, zaten varsayýlan olarak kullanýldýðý için, sorguda "ASC" belirtilmemiþ olsa da ayný sonucu verecektir.
*/

/*SELECT Id, FName, LName, PhoneNumber FROM Employees ORDER BY 1*/
/*
This code is a SQL query and sorts employee records in a table named "Employees" in ascending order by the Id column. 
In addition, only the employee's Id, name, surname, and phone number information are included in the query.
---
Bu kod bir SQL sorgusudur ve "Employees" adlý bir tablodaki çalýþan kayýtlarýný Id sütununa göre artan þekilde sýralar. 
Ayrýca, sorguda yalnýzca çalýþanlarýn Id, adý, soyadý ve telefon numarasý bilgileri yer alýr.
*/

/*SELECT Id, FName, LName, PhoneNumber FROM Employees ORDER BY CASE WHEN LName = 'Jones' THEN 0 ELSE 1 END ASC*/
/*
This code is a SQL Query and sorts the records of employees in a table named "Employees" by last name. 
However, it makes a special order so that those with the surname "Jones" are used first.
---
Bu kod bir SQL sorgusudur ve "Employees" adlý bir tablodaki çalýþan kayýtlarýný soyadlarýna göre sýralar. 
Ancak, "Jones" soyadýna sahip çalýþanlar ilk sýrada yer alacak þekilde özel bir sýralama yapar.
*/

/*SELECT FName FROM Customers WHERE PhoneNumber IS NULL*/
/*
This SQL Query is querying the positioning names (FName) from a table named "Customers". However, the query only lists customers with a NULL value in the "PhoneNumber" column.
---
Bu SQL sorgusu, "Customers" adlý bir tablodan müþterilerin adlarýný (FName) sorgulamaktadýr. Ancak, sorgu yalnýzca, "PhoneNumber" sütununda NULL deðeri olan müþterileri listelemektedir.
*/

/*SELECT DISTINCT Model FROM  Cars*/
/*
This SQL Query is querying the car records in a table named "Cars" by listening for the unique (non-repeated) models from the "Model" column. 
That is, the query only lists cars with the same model once, without repeating them.
---
Bu SQL sorgusu, "Cars" adlý bir tablodaki araba kayýtlarýnýn "Model" sütunundan benzersiz (tekrarsýz) modelleri listeleyerek sorgulamaktadýr. 
Yani, sorgu ayný modele sahip olan araba kayýtlarýný tekrar etmeden sadece bir kez listelemektedir.
*/

/*SELECT * FROM Employees, Departments*/
/*
This SQL Query is querying by concatenating all records from two tables named "Employees" and "Departments".
---
Bu SQL sorgusu, "Employees" ve "Departments" adlý iki tablodaki tüm kayýtlarý birleþtirerek sorgulamaktadýr.
*/