/*Data Types(Veri Tipleri)*/

SELECT CAST(123 AS decimal(5,2)) -- Output(Çýktý): 123.00
SELECT CAST(123.5 AS numeric(10,3)) -- Output(Çýktý): 123.500

SELECT CAST(PI() AS float) -- Output(Çýktý): 3,14159265358979
SELECT CAST(PI() AS real) -- Output(Çýktý): 3,141593

SELECT CAST(125 AS int) -- Output(Çýktý): 125
SELECT CAST(125 AS bigint) -- Output(Çýktý): 125

SELECT CAST(12345 AS binary) -- Output(Çýktý): 0x000000000000000000000000000000000000000000000000000000003039
SELECT CAST(12345 AS varbinary) -- Output(Çýktý): 0x00003039

SELECT CAST('ABC' AS char(10)) -- Output(Çýktý): ABC
SELECT CAST('ABC' AS varchar(10)) -- Output(Çýktý): ABC
SELECT CAST('ABCDEFGHIJKLMNOPQRSTUVWXYZ' AS char(10)) -- Output(Çýktý): ABCDEFGHIJ

/* I have written some SQL data types in this code if you want more information about it, I will share a link in the explanations section. 
	Bazý sql veri tiplerini bu kodumda yazdým eðer bu konuda daha fazla bilgi istiyor iseni açýklamalar kýsmýnda bir link paylaþoyor olacaðým.
*/