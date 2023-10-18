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
"Authors" tablosundan yazarlar�n toplam say�s�n� ("TotalAuthor" olarak adland�r�lm��) ve ABD'den olan yazarlar�n say�s�n� ("USA_COUNT" olarak adland�r�lm��) al�r. 
Sorgu, yazarlar�n toplam say�s�n� hesaplar ve ayr�ca ABD'den olan yazarlar� sayar.*/

/*SELECT Id, Name, Country, 
	CASE WHEN Country = 'USA' THEN 'UNITED STATE OF AMER�CA'
		WHEN Country = 'UK' THEN 'UNITED K�NGDOM'
		ELSE 'INDIA'
		END AS Country_Name FROM Authors
Retrieves the "Id," "Name," and "Country" columns from the "Authors" table, and creates an additional column "Country_Name" using a CASE statement. 
Depending on the "Country" value, the "Country_Name" column displays the corresponding full country name: 
'UNITED STATES OF AMERICA' for 'USA', 'UNITED KINGDOM' for 'UK', and 'INDIA' for other countries.
---
"Authors" tablosundan "Id," "Name" ve "Country" s�tunlar�n� al�r ve bir CASE ifadesi kullanarak ek bir "Country_Name" s�tunu olu�turur. 
"Country" de�erine ba�l� olarak "Country_Name" s�tunu, ilgili tam �lke ad�n� g�r�nt�ler: 
'USA' i�in 'UNITED STATES OF AMERICA', 'UK' i�in 'UNITED KINGDOM' ve di�er �lkeler i�in 'INDIA'.*/

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
Bu SQL kodu, "Employees" tablosuna "SalaryCategory" ad�nda yeni bir s�tun ekler. "CASE" ifadesi, maa�� 1000'den b�y�k veya e�it olanlara 'Expensive', 
di�erlerine 'Not Expensive' de�erlerini atar. Sorgu, t�m orijinal s�tunlar� ve yeni "SalaryCategory" s�tununu g�r�nt�ler, sonu�lar "Salary" de�erlerine g�re s�ralan�r.*/
