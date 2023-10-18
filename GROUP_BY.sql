/*SELECT DepartmentId, SUM(Salary) FROM Employees GROUP BY DepartmentId*/
/*
This SQL query groups the employees in a table named "Employees" by the "DepartmentId" columns and queries the employees by calculating the salary totals for each department.
---
Bu SQL sorgusu, "Employees" adl� bir tablodaki �al��anlar�n "DepartmentId" s�tunlar�na g�re gruplanmas�n� sa�lar ve her bir departman i�in 
�al��anlar�n maa� toplamlar�n� hesaplayarak sorgulamaktad�r.
*/

--USE Library --(Use library table(Library k�t�phanesini kullan))
/*SELECT a.Id, a.Name, COUNT(*) BooksWritten FROM BooksAuthors ba INNER JOIN Authors a ON a.Id = ba.AuthorId GROUP BY a.Id, a.Name HAVING COUNT(*) > 1*/
/*
This SQL Query combines two tables named "BooksAuthors" and "Authors", querying how many books each author has written. 
The query is filtered to list authors who have authored at least two books.
---
Bu SQL sorgusu, "BooksAuthors" ve "Authors" adl� iki tabloyu birle�tirerek, her yazar�n ka� kitap yazd���n� hesaplayarak sorgulamaktad�r. 
Sorgu, yazarlar�n en az iki kitap yazd��� yazarlar� listeleyecek �ekilde filtrelenmi�tir.
*/

/*SELECT b.Id, b.Title, COUNT(*) NumberOfAuthors FROM BooksAuthors ba INNER JOIN Books b ON b.Id = ba.BookId GROUP BY b.Id, b.Title HAVING COUNT(*) > 3*/
/*
This SQL Query combines two tables named "BooksAuthors" and "Books" and queries each book by calculating how many authors there are. 
The query is filtered to list books with at least four authors.
---
Bu SQL sorgusu, "BooksAuthors" ve "Books" adl� iki tabloyu birle�tirerek, her kitab�n ka� yazar� oldu�unu hesaplayarak sorgulamaktad�r. 
Sorgu, en az d�rt yazar� olan kitaplar� listeleyecek �ekilde filtrelenmi�tir.
*/

/*SELECT COUNT(*) Name FROM Authors*/
/*
This SQL query complies with all authors in the "Authors" table. Query result shows the author in a column named "Name".
---
Bu SQL sorgusu "Authors" tablosundaki t�m yazarlar�n say�s�n� hesaplar. Sorgu sonucu, "Name" adl� bir s�tunda yazar say�s�n� g�sterir.
*/

-- USE Company --(Use Company table(Company k�t�phanesini kullan))

/*SELECT CustomerId, COUNT(*) Status FROM Cars GROUP BY CustomerId*/
/*
This SQL Query generates a report in the "Cars" table where the customer is grouped by their usage and each owner's vehicle is calculated conservatively. 
The result of the query is the number of vehicles (i.e. "Status"), each of which is security and owned, in two columns named "CustomerId" and "Status".
---
Bu SQL sorgusu, "Cars" tablosundaki ara�lar�n m��teri kimli�ine g�re grupland�r�ld��� ve her m��terinin sahip oldu�u ara� say�s�n�n say�s�n�n hesapland��� bir rapor olu�turur. 
Sorgunun sonucu, "CustomerId" ve "Status" adl� iki s�tunda, her m��terinin kimli�i ve m��terinin sahip oldu�u ara� say�s� (yani, "Status") �eklinde g�r�nt�lenir.
*/


/*SELECT CustomerId, EmployeeId, TotalCost FROM Cars GROUP BY CustomerId, EmployeeId, TotalCost WITH CUBE*/
/*
This SQL query creates a report on customer usages in the "Cars" table, grouped by employee employment and total cost, and these groupings are expanded by the "CUBE" method.
---
Bu SQL sorgusu, "Cars" tablosundaki ara�lar�n m��teri kimli�i, �al��an kimli�i ve toplam maliyetine g�re grupland�r�ld��� ve bu gruplamalar�n "CUBE" 
y�ntemi ile geni�letildi�i bir rapor olu�turur.
*/

USE Company
/*SELECT cu.Id, cu.FName, COUNT(*) Model FROM Cars c INNER JOIN Customers cu ON cu.Id = c.CustomerId GROUP BY cu.Id, cu.FName HAVING COUNT(*) > 1*/
/*This SQL code performs an inner join between the "Cars" and "Customers" tables to retrieve the IDs and first names of customers who have multiple cars. 
It groups the results by customer ID and first name, and then filters out the groups where the count of cars for a customer is greater than 1.
---

Bu SQL kodu, "Cars" ve "Customers" tablolar� aras�nda i� i�e birle�tirme (inner join) yaparak birden fazla araca sahip m��terilerin kimliklerini ve adlar�n� �eker. 
Sonu�lar� m��teri kimli�i ve ad�na g�re gruplar ve ard�ndan ara� say�s� 1'den b�y�k olan gruplar� filtreler.*/


/*SELECT COUNT(*) EmployeeId FROM Cars
This code is a SQL query that counts the number of occurrences of the "EmployeeId" column in the "Cars" table.
--
Bu kod, "Cars" tablosundaki "EmployeeId" s�tununun ka� kez tekrarland���n� sayan bir SQL sorgusudur.*/

/*SELECT Status, COUNT(*) EmployeeId FROM Cars GROUP BY Status
This code is a SQL query that counts the number of occurrences of each unique value in the "Status" column of the "Cars" table and groups the results based on those unique values.
---
Bu kod, "Cars" tablosunun "Status" s�tunundaki her benzersiz de�erin ka� kez tekrarland���n� sayan bir SQL sorgusudur ve sonu�lar� bu benzersiz de�erlere g�re gruplar.*/


/*SELECT Status, COUNT(*) EmployeeId FROM Cars GROUP BY Status ORDER BY EmployeeId Desc
This code is a SQL query that counts the number of occurrences of each unique value in the "Status" column of the "Cars" table, 
groups the results based on those unique values, and then sorts the groups in descending order based on the count of occurrences.
---
Bu kod, "Cars" tablosunun "Status" s�tunundaki her benzersiz de�erin ka� kez tekrarland���n� sayan bir SQL sorgusudur, 
sonu�lar� bu benzersiz de�erlere g�re grupland�r�r ve ard�ndan gruplar� tekrar say�s�na g�re azalan s�rada s�ralar.*/

/*SELECT Model, Status, TotalCost FROM Cars GROUP BY Model, Status, TotalCost WITH CUBE
This SQL code retrieves data from the "Cars" table and groups it by the "Model," "Status," and "TotalCost" columns, 
creating a summary that includes subtotals and grand totals using the "WITH CUBE" keyword.
---
Bu SQL kodu, "Cars" tablosundan veri al�r ve "Model," "Status" ve "TotalCost" s�tunlar�na g�re gruplamalar yaparak, 
"WITH CUBE" ifadesiyle ara toplamlar ve genel toplamlar i�eren bir �zet olu�turur.

/*SELECT Model, Status, TotalCost FROM Cars GROUP BY Model, Status, TotalCost WITH ROLLUP
This SQL code retrieves data from the "Cars" table and groups it by the "Model," "Status," and "TotalCost" columns, 
creating a summary that includes subtotals and a grand total at the end of each group using the "WITH ROLLUP" keyword.
---
Bu SQL kodu, "Cars" tablosundan veri al�r ve "Model," "Status" ve "TotalCost" s�tunlar�na g�re gruplamalar yaparak, 
her grubun sonunda ara toplamlar� ve genel toplam� i�eren bir �zet olu�turur. Bunun i�in "WITH ROLLUP" ifadesini kullan�r.*/