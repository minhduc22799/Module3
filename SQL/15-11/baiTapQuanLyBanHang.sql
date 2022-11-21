insert into customer (CustomerName, CustomerAge)
VALUES  ("Minh Quan",10),
        ("Ngoc Oanh",20),
        ("Hong Ha",50);
       
insert into oder (CustomerID, OderDate, OderTotalPrice)
VALUES  (1,'2006-03-21',null),
        (2,'2006-03-21',null),
        (1,'2006-03-16',null);
       
insert into product (ProductName, ProductPrice)
VALUES  ("May giat",3),
		("Tu Lanh",5),
		("Dieu Hoa",7),
		("Quat",1), 
		("Bep Dien",2);
        
insert into oderdetail (OderID,ProductID,OderQuantity )
VALUES  (1,1,3),
		(1,3,7),
		(1,4,2),
		(2,1,1),
		(3,1,8),
		(2,5,4),
		(2,3,3);
         
select * from customer;
select * from oder;
select * from product;
select * from oderdetail;

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oder.OderID, oder.OderDate, oder.OderTotalPrice from oder;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

select customer.CustomerName, product.ProductName from oderdetail
join oder on oder.OderID = oderdetail.OderID
join customer on customer.CustomerID = oder.CustomerID
join product on product.ProductID = oderdetail.ProductId;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào

select customer.CustomerName, customer.CustomerID from customer
where customer.CustomerID not in(select oder.CustomerID from oder);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn

select oder.OderID , oder.OderDate, Sum(product.ProductPrice * oderdetail.OderQuantity) as Total from oder
join oderdetail on oderdetail.OderID = oder.OderID
join product on product.ProductID = oderdetail.ProductId
group by oder.OderID