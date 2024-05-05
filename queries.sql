-- Product Search:
-- Retrieve all products in a specific department:
SELECT * FROM Product WHERE Dept_ID = <department_id>;

-- Customer Information Retrieval:
-- Retrieve customer details based on email:
SELECT * FROM Customer WHERE Email = 'example@example.com';

-- Sales Analysis:
-- Retrieve total sales amount for a specific store on a particular date:
SELECT SUM(Total_Amount) AS Total_Sales 
FROM Transaction 
WHERE Store_ID = <store_id> AND Date = '2024-05-01';

-- Top Selling Products:
-- Retrieve top 3 selling products across all stores:
SELECT p.Product_ID, p.Product_Name, SUM(s.Quantity) AS Total_Sold 
FROM Product p
JOIN Stock s ON p.Product_ID = s.Product_ID
GROUP BY p.Product_ID
ORDER BY Total_Sold DESC
LIMIT 3;

-- Sales by Department:
-- Retrieve total sales amount for each department in a specific store:
SELECT d.Dept_Name, SUM(t.Total_Amount) AS Total_Sales
FROM Department d
JOIN Product p ON d.Dept_ID = p.Dept_ID
JOIN Transaction_Details td ON p.Product_ID = td.Product_ID
JOIN Transaction t ON td.Transaction_ID = t.Transaction_ID
WHERE d.Store_ID = <store_id>
GROUP BY d.Dept_Name;

-- Employee Performance:
-- Retrieve total sales amount for each employee in a specific store:
SELECT e.Employee_ID, e.Name, SUM(t.Total_Amount) AS Total_Sales
FROM Employee e
JOIN Transaction t ON e.Store_ID = t.Store_ID
WHERE e.Store_ID = <store_id>
GROUP BY e.Employee_ID, e.Name;

-- Customer Purchases:
-- Retrieve all transactions made by a specific customer:
SELECT * FROM Transaction WHERE Customer_ID = <customer_id>;

-- Stock Availability:
-- Retrieve available stock quantity for a specific product in all stores:
SELECT s.Store_ID, s.Quantity
FROM Stock s
WHERE s.Product_ID = <product_id>;