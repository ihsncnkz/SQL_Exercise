-- CREATE DATABASE Library

-- USE Library -- Library veri kümesi üzerinde çalýþacaðýmý belirtiyorum.(I am specifing to work on the library database)

-- Creata Table Chapter (Tablo oluþturma bölümü)
CREATE TABLE Authors (
	Id INT NOT NULL IDENTITY(1,1),
	Name VARCHAR(70) NOT NULL,
	Country VARCHAR(100) NOT NULL,
	PRIMARY KEY(Id))

CREATE TABLE Books(
	Id INT NOT NULL IDENTITY(1,1),
	Title VARCHAR(50) NOT NULL,
	PRIMARY KEY(Id))

CREATE TABLE BooksAuthors(
	AuthorId INT NOT NULL,
	BookId INT NOT NULL,
	FOREIGN KEY (AuthorId) REFERENCES Authors(Id),
	FOREIGN KEY (BookId) REFERENCES Books(Id))

-- Adding data into data tables.(Veri tablolarýna veri ekleme)

INSERT INTO Authors
	(Name, Country)
	VALUES
	('J.D. Salinger', 'USA'),
    ('F. Scott. Fitzgerald', 'USA'),
    ('Jane Austen', 'UK'),
    ('Scott Hanselman', 'USA'),
    ('Jason N. Gaylord', 'USA'),
    ('Pranav Rastogi', 'India'),
    ('Todd Miranda', 'USA'),
    ('Christian Wenz', 'USA')

INSERT INTO Books
	(Title)
	VALUES
	('The Catcher in the Rye'),
    ('Nine Stories'),
    ('Franny and Zooey'),
    ('The Great Gatsby'),
    ('Tender id the Night'),
    ('Pride and Prejudice'),
    ('Professional ASP.NET 4.5 in C# and VB')

INSERT INTO BooksAuthors
	(BookId, AuthorId)
	VALUES
	(1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8)


CREATE TABLE Countries(
	Id INT NOT NULL IDENTITY(1,1),
	ISO VARCHAR(2) NOT NULL,
	ISO3 VARCHAR(3) NOT NULL,
	ISONumeric INT NOT NULL,
	CoutryName VARCHAR(64) NOT NULL,
	Capital VARCHAR(64) NOT NULL,
	ContinentCode VARCHAR(2) NOT NULL,
	CurrencyCode VARCHAR(3) NOT NULL,
	PRIMARY KEY(Id))

INSERT INTO Countries
	(ISO, ISO3, ISONumeric, CoutryName, Capital, ContinentCode, CurrencyCode)
	VALUES
		('AU', 'AUS', 36, 'Australia', 'Canberra', 'OC', 'AUD'),
		('DE', 'DEU', 276, 'Germany', 'Berlin', 'EU', 'EUR'),
		('IN', 'IND', 356, 'India', 'New Delhi', 'AS', 'INR'),
		('LA', 'LAO', 418, 'Laos', 'Vientiane', 'AS', 'LAK'),
		('US', 'USA', 840, 'United States', 'Washington', 'NA', 'USD'),
		('ZW', 'ZWE', 716, 'Zimbabwe', 'Harare', 'AF', 'ZWL')
