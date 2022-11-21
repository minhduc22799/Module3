create database productstore;
create table Products(
ProductId int auto_increment not null primary key,
ProductCode varchar(30) unique,
ProductName varchar(50),
ProductPrice double,
date_create datetime,
amount int
);

create table Customers(
CustomerId int not null auto_increment primary key,
CustomerName varchar(50),
CustomerAge int check (CustomerAge between 0 and 120),
address varchar(100)
);

create table Orders(
OrderId int not null auto_increment primary key,
date_create datetime,
CustomerID int not null,
foreign key (CustomerID) references customers(CustomerId)
);

create table OrderDetail(
OrderId int not null,
ProductId int not null,
Quantity int ,
foreign key (OrderId) references Orders(OrderId),
foreign key (ProductId) references Products(ProductId)
);

insert into products (ProductCode, ProductName, ProductPrice,date_create, amount)
value (111, "Cake", 5.0, "2022-11-15", 20),
      (222, "Candy", 3.5, "2022-11-16", 40),
      (333, "Snack", 10.0, "2022-11-13", 30),
       (444, "Candy", 3.5, "2022-11-16", 40);
      
insert into customers (CustomerName, CustomerAge, address)
value ("Tung", 25, "Lao Cai"),
      ("Duc", 23, "Ha Noi"),
      ("Minh", 24, "Ha Noi");


insert into orders (date_create, CustomerID)
value ("2022-11-17", 1),
      ("2022-11-17", 2),
      ("2022-11-18", 3),
      ("2022-11-18", 1);
      
insert into OrderDetail 
value (1, 1, 5),
      (1, 3, 10), 
      (2, 2, 7),
      (2, 3, 5),
      (3, 2, 1),
      (4, 1, 1),
      (2, 1, 9);


-- Truy Van-----------------------------------------------------------
select * from OrderDetail;
-- 1
select * from products
where amount >= All(select amount from products);

-- 2
select * from products
order by ProductPrice desc, ProductName asc;

-- 3
select * from products
where date_create < '2022/11/16';

-- 4
select orders.orderID, sum(orderDetail.Quantity * products.ProductPrice) as SumPrice from orders
join orderDetail on orderDetail.OrderID = orders.orderID
join products on orderDetail.ProductID = products.ProductID
group by orders.orderID;
-- 5
select products.ProductID, products.ProductName, Sum(orderdetail.Quantity)as BestSeller from orderdetail
join products on products.ProductId = orderdetail.ProductId
group by orderdetail.ProductId
having BestSeller >= All (select Sum(orderdetail.Quantity) from orderdetail group by orderdetail.ProductId)
;













