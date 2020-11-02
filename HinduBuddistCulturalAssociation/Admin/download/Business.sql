DROP TABLE IF EXISTS Salesman_Table;
CREATE TABLE Salesman_Table (
  Salesman_ID NUMERIC(5) NOT NULL,
  Name VARCHAR(30) NOT NULL,
  City VARCHAR(15) NOT NULL,
  Commision DECIMAL(5,2) NOT NULL,
  PRIMARY KEY(Salesman_ID));
  
DROP TABLE IF EXISTS Customer_Table;
CREATE TABLE Customer_Table (
  Customer_ID NUMERIC(5) NOT NULL,
  Cust_Name VARCHAR(30) NOT NULL,
  City VARCHAR(15) NOT NULL,
  Grade NUMERIC(3) NOT NULL,
  Salesman_ID NUMERIC(5) NOT NULL,
  PRIMARY KEY(Customer_ID),
  FOREIGN KEY(Salesman_ID) REFERENCES Salesman_Table(Salesman_ID) ON DELETE RESTRICT ON UPDATE CASCADE);
  
DROP TABLE IF EXISTS Orders_Table;
CREATE TABLE Orders_Table(
  Ord_No NUMERIC(5) NOT NULL,
  Purch_amt DECIMAL(8,2) NOT NULL,
  Ord_Date DATE NOT NULL,
  Salesman_ID NUMERIC(5) NOT NULL,
  Customer_ID NUMERIC(5) NOT NULL,
  PRIMARY KEY(Ord_NO),
  FOREIGN KEY(Salesman_ID) REFERENCES Salesman_Table(Salesman_ID) ON DELETE RESTRICT ON UPDATE CASCADE
  FOREIGN KEY(Customer_ID) REFERENCES Customer_Table(Customer_ID) ON DELETE RESTRICT ON UPDATE CASCADE);
  
  INSERT INTO Salesman_Table VALUES(5001,'James Hoog','New York',0.15);
  INSERT INTO Salesman_Table VALUES(5002,'Nail Knite','Paris',0.13);
  INSERT INTO Salesman_Table VALUES(5005,'Pit Alex','London',0.11); 
  INSERT INTO Salesman_Table VALUES(5006,'Mc Lyon','Paris',0.14);
  INSERT INTO Salesman_Table VALUES(5003,'Lauson Hen','Paris',0.12); 
  INSERT INTO Salesman_Table VALUES(5007,'Paul Adam','Rome',0.13); 
  
  INSERT INTO Customer_Table VALUES(3002,'Nick Rimando','New York',100,5001); 
  INSERT INTO Customer_Table VALUES(3005,'Graham Zusi','California',200,5002);
  INSERT INTO Customer_Table VALUES(3001,'Brad Guzan','London',100,5005); 
  INSERT INTO Customer_Table VALUES(3004,'Fabian Johns','Paris',300,5006);
  INSERT INTO Customer_Table VALUES(3007,'Brad Davis','New York',200,5001);
  INSERT INTO Customer_Table VALUES(3009,'Geoff Camero','Berlin',100,5003);
  INSERT INTO Customer_Table VALUES(3008,'Julian Green','London',300,5002);
  INSERT INTO Customer_Table VALUES(3003,'Jozy Altidor','Moscow',200,5007);
  
  INSERT INTO Orders_Table VALUES(70001,150.5,'2012-10-05',3005,5002);
  INSERT INTO Orders_Table VALUES(70009,270.65,'2012-09-10',3001,5005); 
  INSERT INTO Orders_Table VALUES(70002,65.26,'2012-10-05',3002,5001); 
  INSERT INTO Orders_Table VALUES(70004,110.5,'2012-08-17',3009,5003); 
  INSERT INTO Orders_Table VALUES(70007,948.5,'2012-09-10',3005,5002);
  INSERT INTO Orders_Table VALUES(70005,2400.6,'2012-07-27',3007,5001);
  INSERT INTO Orders_Table VALUES(70008,5760,'2012-09-10',3002,5001);
  INSERT INTO Orders_Table VALUES(70010,1983.43,'2012-10-10',3004,5006); 
  INSERT INTO Orders_Table VALUES(70003,2480.4,'2012-10-10',3009,5003); 
  INSERT INTO Orders_Table VALUES(70012,250.45,'2012-06-27',3008,5002); 
  INSERT INTO Orders_Table VALUES(70011,75.29,'2012-08-17',3003,5007); 
  INSERT INTO Orders_Table VALUES(70013,3045.6,'2012-04-25',3002,5001); 
  
  
 