/*SELECT DepartmentId, SUM(Salary) FROM Employees GROUP BY DepartmentId*/
/*
This SQL query groups the employees in a table named "Employees" by the "DepartmentId" columns and queries the employees by calculating the salary totals for each department.
---
Bu SQL sorgusu, "Employees" adlý bir tablodaki çalýþanlarýn "DepartmentId" sütunlarýna göre gruplanmasýný saðlar ve her bir departman için 
çalýþanlarýn maaþ toplamlarýný hesaplayarak sorgulamaktadýr.
*/

--USE Library --(Use library table(Library kütüphanesini kullan))
/*SELECT a.Id, a.Name, COUNT(*) BooksWritten FROM BooksAuthors ba INNER JOIN Authors a ON a.Id = ba.AuthorId GROUP BY a.Id, a.Name HAVING COUNT(*) > 1*/
/*
This SQL Query combines two tables named "BooksAuthors" and "Authors", querying how many books each author has written. 
The query is filtered to list authors who have authored at least two books.
---
Bu SQL sorgusu, "BooksAuthors" ve "Authors" adlý iki tabloyu birleþtirerek, her yazarýn kaç kitap yazdýðýný hesaplayarak sorgulamaktadýr. 
Sorgu, yazarlarýn en az iki kitap yazdýðý yazarlarý listeleyecek þekilde filtrelenmiþtir.
*/

/*SELECT b.Id, b.Title, COUNT(*) NumberOfAuthors FROM BooksAuthors ba INNER JOIN Books b ON b.Id = ba.BookId GROUP BY b.Id, b.Title HAVING COUNT(*) > 3*/
/*
This SQL Query combines two tables named "BooksAuthors" and "Books" and queries each book by calculating how many authors there are. 
The query is filtered to list books with at least four authors.
---
Bu SQL sorgusu, "BooksAuthors" ve "Books" adlý iki tabloyu birleþtirerek, her kitabýn kaç yazarý olduðunu hesaplayarak sorgulamaktadýr. 
Sorgu, en az dört yazarý olan kitaplarý listeleyecek þekilde filtrelenmiþtir.
*/

/*SELECT COUNT(*) Name FROM Authors*/
/*
This SQL query complies with all authors in the "Authors" table. Query result shows the author in a column named "Name".
---
Bu SQL sorgusu "Authors" tablosundaki tüm yazarlarýn sayýsýný hesaplar. Sorgu sonucu, "Name" adlý bir sütunda yazar sayýsýný gösterir.
*/

-- USE Company --(Use Company table(Company kütüphanesini kullan))

/*SELECT CustomerId, COUNT(*) Status FROM Cars GROUP BY CustomerId*/
/*
This SQL Query generates a report in the "Cars" table where the customer is grouped by their usage and each owner's vehicle is calculated conservatively. 
The result of the query is the number of vehicles (i.e. "Status"), each of which is security and owned, in two columns named "CustomerId" and "Status".
---
Bu SQL sorgusu, "Cars" tablosundaki araçlarýn müþteri kimliðine göre gruplandýrýldýðý ve her müþterinin sahip olduðu araç sayýsýnýn sayýsýnýn hesaplandýðý bir rapor oluþturur. 
Sorgunun sonucu, "CustomerId" ve "Status" adlý iki sütunda, her müþterinin kimliði ve müþterinin sahip olduðu araç sayýsý (yani, "Status") þeklinde görüntülenir.
*/


/*SELECT CustomerId, EmployeeId, TotalCost FROM Cars GROUP BY CustomerId, EmployeeId, TotalCost WITH CUBE*/
/*
This SQL query creates a report on customer usages in the "Cars" table, grouped by employee employment and total cost, and these groupings are expanded by the "CUBE" method.
---
Bu SQL sorgusu, "Cars" tablosundaki araçlarýn müþteri kimliði, çalýþan kimliði ve toplam maliyetine göre gruplandýrýldýðý ve bu gruplamalarýn "CUBE" 
yöntemi ile geniþletildiði bir rapor oluþturur.
*/

USE Company
/*SELECT cu.Id, cu.FName, COUNT(*) Model FROM Cars c INNER JOIN Customers cu ON cu.Id = c.CustomerId GROUP BY cu.Id, cu.FName HAVING COUNT(*) > 1*/
/*This SQL code performs an inner join between the "Cars" and "Customers" tables to retrieve the IDs and first names of customers who have multiple cars. 
It groups the results by customer ID and first name, and then filters out the groups where the count of cars for a customer is greater than 1.
---

Bu SQL kodu, "Cars" ve "Customers" tablolarý arasýnda iç içe birleþtirme (inner join) yaparak birden fazla araca sahip müþterilerin kimliklerini ve adlarýný çeker. 
Sonuçlarý müþteri kimliði ve adýna göre gruplar ve ardýndan araç sayýsý 1'den büyük olan gruplarý filtreler.*/


/*SELECT COUNT(*) EmployeeId FROM Cars
This code is a SQL query that counts the number of occurrences of the "EmployeeId" column in the "Cars" table.
--
Bu kod, "Cars" tablosundaki "EmployeeId" sütununun kaç kez tekrarlandýðýný sayan bir SQL sorgusudur.*/

/*SELECT Status, COUNT(*) EmployeeId FROM Cars GROUP BY Status
This code is a SQL query that counts the number of occurrences of each unique value in the "Status" column of the "Cars" table and groups the results based on those unique values.
---
Bu kod, "Cars" tablosunun "Status" sütunundaki her benzersiz deðerin kaç kez tekrarlandýðýný sayan bir SQL sorgusudur ve sonuçlarý bu benzersiz deðerlere göre gruplar.*/


/*SELECT Status, COUNT(*) EmployeeId FROM Cars GROUP BY Status ORDER BY EmployeeId Desc
This code is a SQL query that counts the number of occurrences of each unique value in the "Status" column of the "Cars" table, 
groups the results based on those unique values, and then sorts the groups in descending order based on the count of occurrences.
---
Bu kod, "Cars" tablosunun "Status" sütunundaki her benzersiz deðerin kaç kez tekrarlandýðýný sayan bir SQL sorgusudur, 
sonuçlarý bu benzersiz deðerlere göre gruplandýrýr ve ardýndan gruplarý tekrar sayýsýna göre azalan sýrada sýralar.*/

/*SELECT Model, Status, TotalCost FROM Cars GROUP BY Model, Status, TotalCost WITH CUBE
This SQL code retrieves data from the "Cars" table and groups it by the "Model," "Status," and "TotalCost" columns, 
creating a summary that includes subtotals and grand totals using the "WITH CUBE" keyword.
---
Bu SQL kodu, "Cars" tablosundan veri alýr ve "Model," "Status" ve "TotalCost" sütunlarýna göre gruplamalar yaparak, 
"WITH CUBE" ifadesiyle ara toplamlar ve genel toplamlar içeren bir özet oluþturur.

/*SELECT Model, Status, TotalCost FROM Cars GROUP BY Model, Status, TotalCost WITH ROLLUP
This SQL code retrieves data from the "Cars" table and groups it by the "Model," "Status," and "TotalCost" columns, 
creating a summary that includes subtotals and a grand total at the end of each group using the "WITH ROLLUP" keyword.
---
Bu SQL kodu, "Cars" tablosundan veri alýr ve "Model," "Status" ve "TotalCost" sütunlarýna göre gruplamalar yaparak, 
her grubun sonunda ara toplamlarý ve genel toplamý içeren bir özet oluþturur. Bunun için "WITH ROLLUP" ifadesini kullanýr.*/