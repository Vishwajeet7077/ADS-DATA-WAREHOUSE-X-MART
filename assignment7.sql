CREATE DATABASE xmart;
USE xmart;

-- DimProduct Table
CREATE TABLE DimProduct (
    ProductKey INT PRIMARY KEY,
    ProductAltKey INT,
    ProductName VARCHAR(255),
    ProductCost DECIMAL(10, 2)
);

INSERT INTO DimProduct VALUES
				(1, 101, 'Laptop', 40000),
                (2, 102, 'Smartphone', 15000),
				(3, 103, 'Headphones', 2000),
                (4, 104, 'Tablet', 10000),
				(5, 105, 'Printer', 45000),
                (6, 106, 'Camera', 5000),
                (7, 107, 'TV', 15000),
                (8, 108, 'Gaming Console', 4000),
                (9, 109, 'Monitor', 5000),
                (10, 110, 'Router', 1500);

SELECT * FROM DimProduct;


-- DimCustomer Table
CREATE TABLE DimCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerAltID INT,
    CustomerName VARCHAR(255),
    Gender VARCHAR(10)
);

INSERT INTO DimCustomer VALUES
    (1, 201, 'Aarav Sharma', 'Male'),
    (2, 202, 'Aisha Patel', 'Female'),
    (3, 203, 'Aditya Kumar', 'Male'),
    (4, 204, 'Ananya Verma', 'Female'),
    (5, 205, 'Arjun Gupta', 'Male'),
    (6, 206, 'Avni Reddy', 'Female'),
    (7, 207, 'Aryan Singh', 'Male'),
    (8, 208, 'Ishita Yadav', 'Female'),
    (9, 209, 'Rohan Mishra', 'Male'),
    (10, 210, 'Sanya Kapoor', 'Female');

SELECT * FROM DimCustomer;


-- DimStores Table
CREATE TABLE DimStores (
    StoreID INT PRIMARY KEY,
    StoreAltID INT,
    StoreName VARCHAR(255),
    StoreLocation VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO DimStores VALUES
    (1, 301, 'X-Mart Downtown', '123 Main St', 'Mumbai', 'Maharashtra', 'India'),
    (2, 302, 'X-Mart Mall', '456 Center St', 'Delhi', 'Delhi', 'India'),
    (3, 303, 'X-Mart Plaza', '789 Broadway', 'Bangalore', 'Karnataka', 'India'),
    (4, 304, 'X-Mart Mega', '101 Park Ave', 'Kolkata', 'West Bengal', 'India'),
    (5, 305, 'X-Mart Central', '202 Market St', 'Chennai', 'Tamil Nadu', 'India'),
    (6, 306, 'X-Mart Square', '303 Pine St', 'Hyderabad', 'Telangana', 'India'),
    (7, 307, 'X-Mart Village', '404 Oak St', 'Ahmedabad', 'Gujarat', 'India'),
    (8, 308, 'X-Mart Corner', '505 Cedar St', 'Pune', 'Maharashtra', 'India'),
    (9, 309, 'X-Mart Junction', '606 Elm St', 'Jaipur', 'Rajasthan', 'India'),
    (10, 310, 'X-Mart Oasis', '707 Walnut St', 'Lucknow', 'Uttar Pradesh', 'India');

SELECT * FROM DimStores;


-- DimTime Table
CREATE TABLE DimTime (
    TimeKey INT PRIMARY KEY,
    TimeAltKey INT,
    Time30 DATETIME,
    Hour30 INT,
    MinuteNumber INT,
    SecondNumber INT,
    TimelnSecond INT,
    HourlyBucket INT,
    DayTimeBucketGroupKey INT,
    DayTimeBucket VARCHAR(50)
);

INSERT INTO DimTime (TimeKey, TimeAltKey, Time30, Hour30, MinuteNumber, SecondNumber, TimelnSecond, HourlyBucket, 
                     DayTimeBucketGroupKey, DayTimeBucket)
VALUES
(1, 1001, '2024-03-01 12:00:00', 12, 0, 0, 43200, 2, 1, 'Morning'),
(2, 1002, '2024-03-01 13:00:00', 13, 0, 0, 46800, 3, 1, 'Afternoon'),
(3, 1003, '2024-03-01 14:00:00', 14, 0, 0, 50400, 4, 1, 'Afternoon'),
(4, 1004, '2024-03-01 15:00:00', 15, 0, 0, 54000, 5, 1, 'Afternoon'),
(5, 1005, '2024-03-01 16:00:00', 16, 0, 0, 57600, 6, 1, 'Evening'),
(6, 1006, '2024-03-01 17:00:00', 17, 0, 0, 61200, 7, 1, 'Evening'),
(7, 1007, '2024-03-01 18:00:00', 18, 0, 0, 64800, 8, 1, 'Night'),
(8, 1008, '2024-03-01 19:00:00', 19, 0, 0, 68400, 9, 1, 'Night'),
(9, 1009, '2024-03-01 20:00:00', 20, 0, 0, 72000, 10, 1, 'Night'),
(10, 1010, '2024-03-01 21:00:00', 21, 0, 0, 75600, 11, 1, 'Night');

SELECT * FROM DimTime;


-- DimSalesPerson Table
CREATE TABLE DimSalesPerson (
    SalesPersonID INT PRIMARY KEY,
    SalesPersonAltID INT,
    SalesPersonName VARCHAR(255),
    StoreID INT,
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO DimSalesPerson VALUES
    (1, 401, 'Amit Sharma', 301, 'Mumbai', 'Maharashtra', 'India'),
    (2, 402, 'Priya Patel', 302, 'Delhi', 'Delhi', 'India'),
    (3, 403, 'Rahul Kumar', 303, 'Bangalore', 'Karnataka', 'India'),
    (4, 404, 'Ananya Verma', 304, 'Kolkata', 'West Bengal', 'India'),
    (5, 405, 'Vikas Gupta', 305, 'Chennai', 'Tamil Nadu', 'India'),
    (6, 406, 'Neha Reddy', 306, 'Hyderabad', 'Telangana', 'India'),
    (7, 407, 'Ravi Singh', 307, 'Ahmedabad', 'Gujarat', 'India'),
    (8, 408, 'Pooja Yadav', 308, 'Pune', 'Maharashtra', 'India'),
    (9, 409, 'Deepak Mishra', 309, 'Jaipur', 'Rajasthan', 'India'),
    (10, 410, 'Neha Kapoor', 310, 'Lucknow', 'Uttar Pradesh', 'India');

SELECT * FROM DimSalesPerson;


-- DimDate Table
CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,
    Date DATE,
    FullDateUK VARCHAR(20),
    FullDateUSA VARCHAR(20),
    DayOfMonth INT,
    DaySuffix VARCHAR(5),
    DayName VARCHAR(20),
    DayOfWeekUSA INT,
    DayOfWeekUK INT,
    DayOfWeekinMonth INT,
    DayOfWeekinYear INT,
    DayOfQuarter INT,
    DayOfYear INT,
    WeekOfMonth INT,
    WeekOfQuarter INT,
    WeekOfYear INT,
    Month INT,
    MonthName VARCHAR(20),
    MonthOfQuarter INT,
    Quarter INT,
    QuarterName VARCHAR(20),
    Year INT,
    YearName VARCHAR(20),
    MonthYear VARCHAR(6),
    MMYYYY VARCHAR(6),
    FirstDayOfMonth DATE,
    LastDayOfMonth DATE,
    FirstDayOfQuarter DATE,
    LastDayOfQuarter DATE,
    FirstDayOfYear DATE,
    LastDayOfYear DATE,
    IsHolidayUSA BOOLEAN,
    IsWeekday BOOLEAN,
    HolidayUSA VARCHAR(50),
    IsHolidayUK BOOLEAN,
    HolidayUK VARCHAR(50),
    FiscalDayOfYear INT,
    FiscalWeekOfYear INT,
    FiscalMonth INT,
    FiscalQuarter INT,
    FiscalQuarterName VARCHAR(20),
    FiscalYear INT,
    FiscalYearName VARCHAR(20),
    FiscalMonthYear VARCHAR(7),
    FiscalMMYYYY VARCHAR(6),
    FiscalFirstDayOfMonth DATE,
    FiscalLastDayOfMonth DATE,
    FiscalFirstDayOfQuarter DATE,
    FiscalLastDayOfQuarter DATE,
    FiscalFirstDayOfYear DATE,
    FiscalLastDayOfYear DATE
);

INSERT INTO DimDate (DateKey, Date, FullDateUK, FullDateUSA, DayOfMonth, DaySuffix, DayName, DayOfWeekUSA, DayOfWeekUK, 
                     DayOfWeekinMonth, DayOfWeekinYear, DayOfQuarter, DayOfYear, WeekOfMonth, WeekOfQuarter, WeekOfYear, Month, 
                     MonthName, MonthOfQuarter, Quarter, QuarterName, Year, YearName, MonthYear, MMYYYY, FirstDayOfMonth, 
                     LastDayOfMonth, FirstDayOfQuarter, LastDayOfQuarter, FirstDayOfYear, LastDayOfYear, IsHolidayUSA, IsWeekday, 
                     HolidayUSA, IsHolidayUK, HolidayUK, FiscalDayOfYear, FiscalWeekOfYear, FiscalMonth, FiscalQuarter, FiscalQuarterName, 
                     FiscalYear, FiscalYearName, FiscalMonthYear, FiscalMMYYYY, FiscalFirstDayOfMonth, FiscalLastDayOfMonth, 
                     FiscalFirstDayOfQuarter, FiscalLastDayOfQuarter, FiscalFirstDayOfYear, FiscalLastDayOfYear)
VALUES
(1, '2024-03-01', '01/03/2024', '03/01/2024', 1, 'st', 'Monday', 2, 2, 1, 61, 1, 61, 1, 1, 1, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(2, '2024-03-02', '02/03/2024', '03/02/2024', 2, 'nd', 'Tuesday', 3, 3, 2, 62, 1, 62, 1, 1, 1, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(3, '2024-03-03', '03/03/2024', '03/03/2024', 3, 'rd', 'Wednesday', 4, 4, 3, 63, 1, 63, 1, 1, 1, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
		  '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(4, '2024-03-04', '04/03/2024', '03/04/2024', 4, 'th', 'Thursday', 5, 5, 4, 64, 1, 64, 1, 1, 1, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(5, '2024-03-05', '05/03/2024', '03/05/2024', 5, 'th', 'Friday', 6, 6, 5, 65, 1, 65, 1, 1, 1, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(6, '2024-03-06', '06/03/2024', '03/06/2024', 6, 'th', 'Saturday', 7, 7, 6, 66, 1, 66, 1, 1, 1, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(7, '2024-03-07', '07/03/2024', '03/07/2024', 7, 'th', 'Sunday', 1, 1, 7, 67, 1, 67, 1, 1, 1, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(8, '2024-03-08', '08/03/2024', '03/08/2024', 8, 'th', 'Monday', 2, 2, 8, 68, 1, 68, 2, 2, 2, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(9, '2024-03-09', '09/03/2024', '03/09/2024', 9, 'th', 'Tuesday', 3, 3, 9, 69, 1, 69, 2, 2, 2, 3, 'March', 1, 1, 'Q1', 2024, '2024', 
          '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
          false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
          '2024-01-01', '2024-03-31'),
(10, '2024-03-10', '10/03/2024', '03/10/2024', 10, 'th', 'Wednesday', 4, 4, 10, 70, 1, 70, 2, 2, 2, 3, 'March', 1, 1, 'Q1', 2024, 
     '2024', '032024', '032024', '2024-03-01', '2024-03-31', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', false, true, null, 
         false, null, 61, 9, 3, 1, 'Q1', 2024, '2024', '032024', '032024', '2024-01-01', '2024-03-31', '2024-01-01', '2024-03-31', 
         '2024-01-01', '2024-03-31');

SELECT * FROM DimDate;


-- FactProductSales Table
CREATE TABLE FactProductSales (
    TransactionID INT PRIMARY KEY,
    SalesInvoiceNumber VARCHAR(50),
    SalesDateKey INT,
    SalesTimeKey INT,
    SalesTimeAltKey INT,
    StoreID INT,
    CustomerID INT,
    ProductID INT,
    SalesPersonID INT,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    DateKey INT,
    TimeKey INT,
    FOREIGN KEY (SalesDateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (SalesTimeKey) REFERENCES DimTime(TimeKey),
    FOREIGN KEY (StoreID) REFERENCES DimStores(StoreID),
    FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductKey), 
    FOREIGN KEY (SalesPersonID) REFERENCES DimSalesPerson(SalesPersonID),
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (TimeKey) REFERENCES DimTime(TimeKey)
);

INSERT INTO FactProductSales (TransactionId, SalesInvoiceNumber, SalesDateKey, SalesTimeKey, SalesTimeAltKey, StoreId, CustomerId, 
ProductId, SalesPersonId, Quantity, TotalAmount, DateKey, TimeKey)
VALUES
(1, 'INV001', 1, 1, 1001, 1, 1, 1, 1, 10, 1000.00, 1, 1),
(2, 'INV002', 2, 2, 1002, 2, 2, 2, 2, 15, 1500.00, 2, 2),
(3, 'INV003', 3, 3, 1003, 3, 3, 3, 3, 20, 2000.00, 3, 3),
(4, 'INV004', 4, 4, 1004, 4, 4, 4, 4, 25, 2500.00, 4, 4),
(5, 'INV005', 5, 5, 1005, 5, 5, 5, 5, 30, 3000.00, 5, 5),
(6, 'INV006', 6, 6, 1006, 6, 6, 6, 6, 35, 3500.00, 6, 6),
(7, 'INV007', 7, 7, 1007, 7, 7, 7, 7, 40, 4000.00, 7, 7),
(8, 'INV008', 8, 8, 1008, 8, 8, 8, 8, 45, 4500.00, 8, 8),
(9, 'INV009', 9, 9, 1009, 9, 9, 9, 9, 50, 5000.00, 9, 9),
(10, 'INV010', 10, 10, 1010, 10, 10, 10, 10, 55, 5500.00, 10, 10);

SELECT * FROM FactProductSales;
