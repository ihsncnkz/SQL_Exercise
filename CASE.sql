/*USE Library

SELECT * FROM Authors*/

/*SELECT 
	COUNT(Id) AS TotalAuthor, 
	SUM(CASE
		WHEN Country = 'USA' THEN 1
		ELSE 0
		END) AS USA_COUNT FROM Authors
Retrieves the total count of authors (aliased as "TotalAuthor") and the count of authors from the USA (aliased as "USA_COUNT") from the "Authors" table. 
The query calculates the total number of authors and separately counts the authors who are from the USA.
---
"Authors" tablosundan yazarlarýn toplam sayýsýný ("TotalAuthor" olarak adlandýrýlmýþ) ve ABD'den olan yazarlarýn sayýsýný ("USA_COUNT" olarak adlandýrýlmýþ) alýr. 
Sorgu, yazarlarýn toplam sayýsýný hesaplar ve ayrýca ABD'den olan yazarlarý sayar.*/

/*SELECT Id, Name, Country, 
	CASE WHEN Country = 'USA' THEN 'UNITED STATE OF AMERÝCA'
		WHEN Country = 'UK' THEN 'UNITED KÝNGDOM'
		ELSE 'INDIA'
		END AS Country_Name FROM Authors
Retrieves the "Id," "Name," and "Country" columns from the "Authors" table, and creates an additional column "Country_Name" using a CASE statement. 
Depending on the "Country" value, the "Country_Name" column displays the corresponding full country name: 
'UNITED STATES OF AMERICA' for 'USA', 'UNITED KINGDOM' for 'UK', and 'INDIA' for other countries.
---
"Authors" tablosundan "Id," "Name" ve "Country" sütunlarýný alýr ve bir CASE ifadesi kullanarak ek bir "Country_Name" sütunu oluþturur. 
"Country" deðerine baðlý olarak "Country_Name" sütunu, ilgili tam ülke adýný görüntüler: 
'USA' için 'UNITED STATES OF AMERICA', 'UK' için 'UNITED KINGDOM' ve diðer ülkeler için 'INDIA'.*/

-- Use Company
/*SELECT *, 
    CASE 
        WHEN Salary >= 1000 THEN 'Expensive'
        ELSE 'Not Expensive'
    END AS SalaryCategory
FROM Employees 
ORDER BY Salary;
This SQL code adds a new column named "SalaryCategory" to the "Employees" table. The "CASE" statement assigns values of 'Expensive' to salaries greater than or equal to 1000, 
and 'Not Expensive' to others. The query displays all original columns along with the new "SalaryCategory" column, and the results are sorted by the "Salary" values.
---
Bu SQL kodu, "Employees" tablosuna "SalaryCategory" adýnda yeni bir sütun ekler. "CASE" ifadesi, maaþý 1000'den büyük veya eþit olanlara 'Expensive', 
diðerlerine 'Not Expensive' deðerlerini atar. Sorgu, tüm orijinal sütunlarý ve yeni "SalaryCategory" sütununu görüntüler, sonuçlar "Salary" deðerlerine göre sýralanýr.*/
