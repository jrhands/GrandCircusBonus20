USE Northwind
GO

--1
SELECT * FROM [Customers]

--2
SELECT * FROM [Customers] WHERE [City] = 'London' OR [City] = 'Paris'

--3
SELECT DISTINCT [City] FROM [Customers]

--4
SELECT [FirstName] FROM [Employees] ORDER BY [FirstName]

--5
SELECT AVG(UnitPrice) AvgPrice FROM [Products]

--6
SELECT TOP 1 [UnitPrice], [ProductName]
FROM [Products]
ORDER BY [UnitPrice] DESC

--7
SELECT * FROM [Employees] WHERE [Notes] LIKE '%BA%'

--8
SELECT [OrderID], SUM(UnitPrice) OrderTotal FROM [Order Details] GROUP BY [OrderID]

--9
SELECT * FROM [Employees] WHERE [HireDate] BETWEEN '1/1/1994' AND GETDATE()

--10
SELECT DATEDIFF(year, [HireDate], GETDATE()) YearsWorking FROM [Employees]

--11
SELECT * FROM [Products] ORDER BY [UnitsInStock] ASC
SELECT * FROM [Products] ORDER BY [UnitsInStock] DESC

--12
SELECT * FROM [Products] WHERE [UnitsInStock] < 6

--13
SELECT * FROM [Products] WHERE [Discontinued] = 1

--14
SELECT * FROM [Products] WHERE [ProductName] LIKE '%Tofu%'

--15
SELECT TOP 1 [UnitPrice], [ProductName]
FROM [Products]
ORDER BY [UnitPrice] DESC

--16
SELECT * FROM [Employees] WHERE [HireDate] > '1/1/1993'

--17
SELECT * FROM [Employees] WHERE [TitleOfCourtesy] = 'Ms.' OR [TitleOfCourtesy] = 'Mrs.'

--18
SELECT * FROM [Employees] WHERE [HomePhone] LIKE '(206)%'
