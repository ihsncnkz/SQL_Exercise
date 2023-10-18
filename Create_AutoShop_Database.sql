CREATE DATABASE Company -- Create Database named company(Company isminde database oluþturma)
USE Company -- Work on Company database (Company veritabanýný kullanma)

-- Create Tables(Tablolarý Oluþturma)

CREATE TABLE Departments ( -- Create table named Departments(Departments adýnda tablo oluþturma)
	Id INT NOT NULL IDENTITY(1,1), -- Create Id value, datatype int, take can not null value, Identity, It starts suddenly and increases gradually.
									-- Id deðeri oluþtur, int veritipi, boþ deðer alamaz, Identity, birden baþlayarak birer birer kendisi artarak Id deðerini oluþturur.
	Name VARCHAR(25) NOT NULL, -- Create Name value, datatype varchar, take can not null value
								-- Name deðerini oluþtur, veri tibi varchar, boþ deðer alamaz.
	PRIMARY KEY(Id)) -- Specify Id as primary key(Id deðerinin Primary key olduðu belitiriyoruz)


CREATE TABLE Employees (
	Id INT NOT NULL IDENTITY(1,1),
	FName VARCHAR(35) NOT NULL,
	LName VARCHAR(35) NOT NULL,
	PhoneNumber VARCHAR(11),
	ManagerId INT,
	DepartmentId INT NOT NULL,
	Salary INT NOT NULL,
	HireDate DATETIME NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(ManagerId) REFERENCES Employees(Id), -- Specify ManagerId as foreign key from Employees table.(Employees tablosundan yabancý anahtar olarak ManagerId'yi belirtin.)
	FOREIGN KEY(DepartmentId) REFERENCES Departments(Id) -- Specify DepartmentId as foreign key from Departments table.(Departments tablosundan yabancý anahtar olarak DepartmentId'yi belirtin.)
	)

CREATE TABLE Customers (
	Id INT NOT NULL IDENTITY(1,1),
	FName VARCHAR(35) NOT NULL,
	LName VARCHAR(35) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	PhoneNumber VARCHAR(11),
	PreferredContact VARCHAR(5) NOT NULL,
	PRIMARY KEY(ID))

CREATE TABLE Cars(
	Id INT NOT NULL IDENTITY(1,1),
	CustomerId INT NOT NULL,
	EmployeeId INT NOT NULL,
	Model VARCHAR(50) NOT NULL,
	Status VARCHAR(25) NOT NULL,
	TotalCost INT NOT NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(CustomerId) REFERENCES Customers(Id),
	FOREIGN KEY(EmployeeId) REFERENCES Employees(Id))

-- data
INSERT INTO Departments -- Inserting data into Departments table.(Departmanlar tablosuna veri ekleme)
	(Name) -- Name of Column is Name (Kolunun ismi)
	VALUES -- data to be added.(eklenecek olan veriler.)
	('HR'),
	('Sales'),
	('Tech')

INSERT INTO Employees
	(FName, LName, PhoneNumber, ManagerId, DepartmentId, Salary, HireDate)
	VALUES
	('James', 'Simth',1234567890, NULL, 1, 1000, '2002-01-01'),
	('Jhon', 'Johnson', 2468101214, '1', 1, 400, '20050323'),
	('Michael', 'Williams', 1357911131, '1', 2, 600, '20090512'),
    ('Johnathon', 'Smith', 1212121212, '2', 1, 500, '2016-07-24')


INSERT INTO Customers
	(FName, LName, Email, PhoneNumber, PreferredContact)
	VALUES
	('William', 'Jones', 'william.jones@example.com', '3347927472', 'PHONE'),
    ('David', 'Miller', 'dmiller@example.net', '2137921892', 'EMAIL'),
    ('Richard', 'Davis', 'richard0123@example.com', NULL, 'EMAIL')

INSERT INTO Cars
	(CustomerId, EmployeeId, Model, Status, TotalCost)
	VALUES
	('1', '2', 'Ford F-150', 'READY', '230'),
    ('1', '2', 'Ford F-150', 'READY', '200'),
    ('2', '1', 'Ford Mustang', 'WAITING', '100'),
    ('3', '3', 'Toyota Prius', 'WORKING', '1254')