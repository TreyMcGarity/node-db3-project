-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select ProductName, CategoryName from Product as p 
join Category as c on p.CategoryId = c.Id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select Id, CompanyName from [order] as o 
join Shipper as s on o.ShipVia = s.Id 
where OrderDate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select productName, QuantityPerUnit from Product as p
join OrderDetail as od on p.Id = od.productId
where od.orderId = 10251;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select id as "Order Id", CompanyName as "Company Name", LastName as "Employee Last Name" from [order] as O
join Customer as c on o.CustomerId = c.Id 
join Employee as e on o.EmployeeId = e.Id;