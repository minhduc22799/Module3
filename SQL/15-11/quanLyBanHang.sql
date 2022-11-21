create database QuanLyBanHang;
create table Customer(
CustomerID int auto_increment not null primary key,
CustomerName varchar(50) not null,
CustomerAge int
);

create table Oder(
OderID int auto_increment not null primary key,
CustomerID int not null,
foreign key (CustomerID) references Customer(CustomerID),
OderDate datetime,
OderTotalPrice double
);

create table Product(
ProductID int auto_increment not null primary key,
ProductName varchar(50),
ProductPrice double
);
create table OderDetail(
OderID int not null,
foreign key (OderID) references Oder(OderID),
ProductId int not null,
foreign key (ProductID) references Product(ProductId),
primary key(OderID, ProductID),
OderQuantity int 
);