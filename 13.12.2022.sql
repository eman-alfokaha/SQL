create database inf1


CREATE TABLE Customers(
     CustomersID int primary key identity(1,1),
     FirstName varchar(20), 
	lastname varchar(20)
	);


CREATE TABLE Orders(
     OrderID int primary key identity(1,1),  
	 CustomersID int ,
	orderdate datetime,
	 FOREIGN KEY (CustomersID) REFERENCES Customers
);
CREATE TABLE Products(
     ProductsId int primary key identity(1,1),
	 ProductsName varchar(20),
	 nproduct int,
	 OrderID int,
	 FOREIGN KEY (OrderID) REFERENCES Orders
);
CREATE TABLE order_Products(
     order_ProductsId int primary key identity(1,1),
	 qiunttes int,
	 OrderID int,
	 FOREIGN KEY (OrderID) REFERENCES Orders,
	  ProductsId int,
	 FOREIGN KEY ( ProductsId) REFERENCES  Products,
);

INSERT INTO Customers VALUES ('eman','alfokaha'),('tima','alfokaha');
INSERT INTO Orders VALUES (1,1-2-2022),(2,12-2-2022);
INSERT INTO Products VALUES ('apple',9,1),('panann',9,2);
INSERT INTO order_Products VALUES (3,1,2),(7,1,2);


select * FROM Products
select * FROM Orders
select * FROM Customers
select * FROM order_Products
SELECT Orders.OrderID, Customers.FirstName,order_Products.qiunttes
FROM ((Orders
INNER JOIN Customers ON Orders.CustomersID = Customers.CustomersID)
INNER JOIN order_Products ON Orders.OrderID  = order_Products.order_ProductsId );





--DROP TABLE Orders
--DROP TABLE Customers
--DROP TABLE Products
