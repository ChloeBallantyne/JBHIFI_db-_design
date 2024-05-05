INSERT INTO Store (Store_Name, Location, Manager_ID) VALUES
('JB Hi-Fi Downtown', '123 Main Street, Downtown', 101),
('JB Hi-Fi Westside', '456 Oak Avenue, Westside', 102),
('JB Hi-Fi Eastend', '789 Pine Road, Eastend', 103);

INSERT INTO Department (Dept_Name, Store_ID) VALUES
('Electronics', 1),
('Music', 1),
('Movies', 2),
('Gaming', 3);

INSERT INTO Product (Product_Name, Price, Dept_ID) VALUES
('Samsung TV', 999.99, 1),
('Apple iPhone', 799.99, 1),
('Sony Headphones', 149.99, 1),
('Taylor Swift Album', 14.99, 2),
('Avengers DVD', 19.99, 3),
('PlayStation 5', 499.99, 4);

INSERT INTO Customer (Name, Email, Phone_Number, Address) VALUES
('John Doe', 'john@example.com', '123-456-7890', '456 Elm Street'),
('Jane Smith', 'jane@example.com', '987-654-3210', '789 Oak Avenue');

INSERT INTO Employee (Name, Position, Store_ID, Salary) VALUES
('Alice Johnson', 'Store Manager', 1, 60000),
('Bob Smith', 'Sales Associate', 1, 40000),
('Charlie Brown', 'Store Manager', 2, 65000),
('David Lee', 'Sales Associate', 3, 42000);

INSERT INTO Transaction (Date, Time, Total_Amount, Store_ID, Customer_ID) VALUES
('2024-05-01', '10:30:00', 149.99, 1, 1),
('2024-05-02', '11:45:00', 69.98, 2, 2),
('2024-05-03', '09:15:00', 899.99, 3, 1);

INSERT INTO Payment (Type, Transaction_ID, Amount) VALUES
('Credit Card', 1, 149.99),
('Credit Card', 2, 69.98),
('Cash', 3, 899.99);

INSERT INTO Stock (Product_ID, Store_ID, Quantity) VALUES
(1, 1, 10),
(2, 1, 15),
(3, 1, 20),
(4, 2, 30),
(5, 2, 25),
(6, 3, 12);
