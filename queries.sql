-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM Product 
JOIN Category ON Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "Order"."Id", "Shipper"."CompanyName"
FROM "Order"
JOIN "Shipper" ON "Order"."ShipVia" = "Shipper"."Id"
WHERE "Order"."OrderDate" < "2012-08-09"


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, o.Quantity
FROM OrderDetail AS o
JOIN Product as p ON o.ProductId = p.Id
WHERE OrderId = 10251


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id, c.CompanyName, e.Id
FROM Customer as c 
JOIN "Order" as o ON c.Id = o.CustomerId
JOIN Employee as e on o.EmployeeId = e.Id