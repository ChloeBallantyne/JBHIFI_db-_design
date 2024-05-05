CREATE TABLE Store (
    Store_ID INT AUTO_INCREMENT PRIMARY KEY,
    Store_Name VARCHAR(255),
    Location VARCHAR(255),
    Manager_ID INT,
    FOREIGN KEY (Manager_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Department (
    Dept_ID INT AUTO_INCREMENT PRIMARY KEY,
    Dept_Name VARCHAR(255),
    Store_ID INT,
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);

CREATE TABLE Product (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone_Number VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE Employee (
    Employee_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(255),
    Store_ID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);

CREATE TABLE Transaction (
    Transaction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Time TIME,
    Total_Amount DECIMAL(10, 2),
    Store_ID INT,
    Customer_ID INT,
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Payment (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR(50),
    Transaction_ID INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Transaction_ID) REFERENCES Transaction(Transaction_ID)
);

CREATE TABLE Stock (
    Stock_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_ID INT,
    Store_ID INT,
    Quantity INT,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);
