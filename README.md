# README – Data Digger SQL Project

This project is created to understand basic SQL concepts like CRUD operations, primary key, foreign key, aggregate functions, clauses and joins.
In this project, I designed a small E-Commerce database and performed different SQL queries on it.

## Tables Used

1. Customers

   * CustomerID (Primary Key)
   * Name
   * Email
   * Address

2. Orders

   * OrderID (Primary Key)
   * CustomerID (Foreign Key)
   * OrderDate
   * TotalAmount

3. Products

   * ProductID (Primary Key)
   * ProductName
   * Price
   * Stock

4. OrderDetails

   * OrderDetailID (Primary Key)
   * OrderID (Foreign Key)
   * ProductID (Foreign Key)
   * Quantity
   * SubTotal

## Operations Performed

• Inserted sample records into all tables
• Retrieved records using SELECT
• Updated records using UPDATE
• Deleted records using DELETE
• Used WHERE clause for filtering
• Used ORDER BY for sorting
• Used BETWEEN condition
• Used aggregate functions like SUM(), MAX(), MIN(), AVG(), COUNT()
• Used GROUP BY and LIMIT
