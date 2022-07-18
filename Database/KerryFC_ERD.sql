#Create the Database for KingsElectric
CREATE DATABASE KerryFC;

#Create a Club table with the following columns: Club ID, Name, league, no of players, no of employees, Telephone, Address 
use KerryFC;

CREATE TABLE Club
(
ClubID varchar(50),
Club_name varchar(50),
Club_league varchar(50),
No_players int,
No_emlpoyees int,
Club_phone varchar(20),
Club_Address varchar(100),
StadiumGrounds_name varchar(100),
StadiumGrounds_capacity int,
PRIMARY KEY (ClubID)
);


#Create a Club table with the following columns: Club ID, Name, league, no of players, no of employees, Telephone, Address 
use KerryFC;

CREATE TABLE Football_Team
(
TeamID varchar(50),
ClubID varchar(50)
Club_name varchar(50),
Club_league varchar(50),
No_players decimal,
No_emlpoyees decimal,
Club_phone varchar(20),
Club_Address varchar(100),
Salary decimal,
PRIMARY KEY (TeamID),
foreign key(ClubID) REFERENCES Club(ClubID)
);



#Create a Staff table with the following columns: Staff ID, Name, Position, Salary, Telephone, Address 
use KerryFC;

CREATE TABLE Employee
(
EmployeeID varchar(50),
Employee_name varchar(50),
Employee_position varchar(50),
Employee_phone varchar(20),
Employee_address varchar(100),
Salary decimal,
PRIMARY KEY (EmployeeID)
);

#Create a Staff table with the following columns: Staff ID, Name, Position, Salary, Telephone, Address 
use KerryFC;

CREATE TABLE Players
(
PlayerID varchar(50),
Player_name varchar(50),
Player_age varchar(50),
Player_height varchar(50),
Player_weight varchar(50),
Player_Position varchar(50),
Team_ID varchar(50),
Player_phone varchar(20),
Player_Address varchar(100),
Salary decimal,
PRIMARY KEY (PlayerID),
foreign key(Team_ID) REFERENCES Football_Team(Team_ID)
);



 #Create a Suppliers table with the following columns: SupplierID, supplier name, supplier addredd, telephone
 
 use KerryFC;

CREATE TABLE Suppliers
(
SupplierID varchar(50),
SupplierName varchar(50),
SupplierAddress varchar (100),
SupplierTel varchar (20),
PRIMARY KEY (SupplierID)
 );
 
 #Create a Stock table with the following columns: Product ID, Product Description, Unit price, Quantity in stock, Supplier ID
use KerryFC;

CREATE TABLE Merch_Stock
(
StockID varchar(50),
ProductName varchar(50),
UnitPrice decimal (20),
QuantityInStock int,
SupplierID varchar(50),
PRIMARY KEY (StockID),
foreign key(SupplierID) REFERENCES Suppliers(SupplierID)
 );
 
  #Create a Stock table with the following columns: Product ID, Product Description, Unit price, Quantity in stock, Supplier ID
use KerryFC;

CREATE TABLE Tickets
(
TicketID varchar(50),
MatchID varchar(50),
Ticket_Price decimal (20),
Seat_section varchar(50),
Seat_number varchar(50),
SupplierID varchar(50),
PRIMARY KEY (TicketID),
foreign key(MatchID) REFERENCES Match_Fixtures(MatchID)
 );
 
  #Create a Customers table with the following columns: customerID, Name, address, email, telephone  

use KerryFC;

CREATE TABLE Customers
(
CustomerID varchar(15),
CustomerName varchar(50),
CustomerEmail varchar(50),
CustomerAddress varchar (100),
CustomerTel varchar (20),
PRIMARY KEY (CustomerID)
 );
 
#Create a Sales table with the following columns: OrderID, CustomerID, StockID, order date, quantity, total price, staffID

 use KerryFC;

CREATE TABLE Merch_Orders
(
Merch_OrderID varchar(10),
CustomerID varchar(50),
StockID varchar(50),
Merch_Orderdate date,
Merch_Quantity int,
TotalPrice decimal,
StaffID varchar(15),
PRIMARY KEY (OrderID),
foreign key(StockID) REFERENCES Stock(StockID),
foreign key(CustomerID) REFERENCES Customers(CustomerID),
foreign key(EmployeeID) REFERENCES Employee(EmployeeID)
 );
 
#Create a Sales table with the following columns: OrderID, CustomerID, StockID, order date, quantity, total price, staffID

 use KerryFC;

CREATE TABLE Ticket_Orders
(
Ticket_OrderID varchar(10),
CustomerID varchar(50),
TicketID varchar(50),
Ticket_Orderdate date,
Ticket_Quantity int,
TotalPrice decimal,
PRIMARY KEY (OrderID),
foreign key(CustomerID) REFERENCES Customers(CustomerID),
foreign key(TicketID) REFERENCES Tickets(TicketID)
 );

#Create a Sales table with the following columns: OrderID, CustomerID, StockID, order date, quantity, total price, staffID

 use KerryFC;

CREATE TABLE Match_Fixtures
(
MatchID varchar(10),
Match_location varchar(100),
Home_Team_ID varchar(50),
Away_Team_ID varchar(50),
Match_date date,
PRIMARY KEY (MatchID),
foreign key(Home_Team_ID) REFERENCES Teams(CustomerID),
foreign key(Away_Team_ID) REFERENCES Teams(Away_Team_ID)
 );
#Create a Sales table with the following columns: OrderID, CustomerID, StockID, order date, quantity, total price, staffID

 use KerryFC;

CREATE TABLE Game_Results
(
ResultsID varchar(10),
Match_location varchar(100),
Home_Team_ID varchar(50),
Away_Team_ID varchar(50),
Match_date date,
PRIMARY KEY (MatchID),
foreign key(Home_Team_ID) REFERENCES Teams(CustomerID),
foreign key(Away_Team_ID) REFERENCES Teams(Away_Team_ID)
 );
