/*Data Types(Veri Tipleri)*/

SELECT CAST(123 AS decimal(5,2)) -- Output(��kt�): 123.00
SELECT CAST(123.5 AS numeric(10,3)) -- Output(��kt�): 123.500

SELECT CAST(PI() AS float) -- Output(��kt�): 3,14159265358979
SELECT CAST(PI() AS real) -- Output(��kt�): 3,141593

SELECT CAST(125 AS int) -- Output(��kt�): 125
SELECT CAST(125 AS bigint) -- Output(��kt�): 125

SELECT CAST(12345 AS binary) -- Output(��kt�): 0x000000000000000000000000000000000000000000000000000000003039
SELECT CAST(12345 AS varbinary) -- Output(��kt�): 0x00003039

SELECT CAST('ABC' AS char(10)) -- Output(��kt�): ABC
SELECT CAST('ABC' AS varchar(10)) -- Output(��kt�): ABC
SELECT CAST('ABCDEFGHIJKLMNOPQRSTUVWXYZ' AS char(10)) -- Output(��kt�): ABCDEFGHIJ

/* I have written some SQL data types in this code if you want more information about it, I will share a link in the explanations section. 
	Baz� sql veri tiplerini bu kodumda yazd�m e�er bu konuda daha fazla bilgi istiyor iseni a��klamalar k�sm�nda bir link payla�oyor olaca��m.
*/