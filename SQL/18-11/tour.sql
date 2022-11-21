create database tour;
drop database tour;
create table country (
country_id int auto_increment not null primary key,
country_name varchar(50) unique
);

create table location (
location_id int auto_increment not null primary key,
location_name varchar(50),
country_id int not null,
foreign key (country_id) references country(country_id)
);

create table tour (
tour_id int auto_increment not null primary key,
tour_code varchar(50) unique,
tour_price varchar(50),
tour_date int not null,
location_id int ,
foreign key (location_id ) references location(location_id )
);

create table customer (
customer_id int auto_increment not null primary key,
customer_name varchar(50),
customer_age int ,
customer_address varchar(50) ,
customer_cccd varchar(50) unique
);


create table employee (
employee_id int auto_increment not null primary key,
employee_code varchar(50) unique,
employee_name varchar(50),
employee_age int,
employee_salary double 
);

create table service (
tour_id int not null,
customer_id int not null,
employee_id int not null,
foreign key (tour_id) references tour(tour_id),
foreign key (customer_id) references customer(customer_id),
foreign key (employee_id) references employee(employee_id),
primary key(tour_id,customer_id,employee_id)
);

-- Them du lieu Country
insert into country(country_name)
					values("Ha Noi"),
						  ("HCM"),
						  ("Da Nang"),
						  ("Hai Phong"),
						  ("Vunng Tau");
                          
                          
	-- Them du lieu Location   
insert into location(location_name,country_id)
					values("Hồ Gươm",1),
						  ("Hồ Tây",1),
						  ("Dinh Độc Lập",2),
						  ("Chợ Bến Thành",2),
						  ("Ghềnh Bàng",3),
						  ("Đảo Cát Bà",4),
						  ("Hòn Bà",5);           
                          
-- Them du lieu Tour   
insert into tour(tour_code,tour_price,tour_date,location_id)
					values("HN01",100000,3,1),
						  ("VT1",150000,4,7),
						  ("HCM01",200000,1,3),
						  ("HCM02",500000,2,4),
						  ("DN01",250000,3,5),
						  ("HP01",500000,6,6),
						  ("HN02",700000,1,2);      
                          
                          
-- Them du lieu Customer  
insert into customer(customer_name,customer_age,customer_address,customer_cccd)
					values("Lê Quang Tùng",25,"Lào Cai","1263781263"),
						  ("Đỗ Minh Đức",23,"Hà Nội","6123861836"),
						  ("Trần Ngô Vũ Minh",24,"Hà Nội","5123516533"),
						  ("Đỗ Đức Anh",26,"Hải Phòng","12316736127"),
						  ("Ngô Xuân Trường",30,"Hà Nội","1273981732"),
						  ("Lưu Lê Thái Sơn",25,"Nghệ An","4632739273");
                          
                          
-- Them du lieu employee  
insert into employee(employee_code,employee_name,employee_age,employee_salary)
					values("NV01","Nguyễn Nhân Viên",22,30000000),
						  ("NV02","Trần Nhân Viên",25,32000000),
						  ("NV03","Lê Nhân Viên",21,41000000),
						  ("NV04","Vũ Nhân Viên",22,60000000),
						  ("NV05","Đỗ Nhân Viên",24,30000000);
                        ;
                        
 -- Them du lieu Service                
insert into service(tour_id,customer_id,employee_id )
					values(1,1,1),
						  (3,4,1),
						  (2,2,2),
						  (5,6,3),
                          (7,6,4);
                          		
select * from country;
select * from location;
select * from tour;
select * from customer;
select * from employee;
select * from service;

-- 1
select  employee.employee_code,tour.tour_id, tour.tour_code, location.location_name, country.country_name from service
join employee on employee.employee_id = service.employee_id
join tour on tour.tour_id = service.tour_id
join location on tour.location_id = location.location_id
join country on country.country_id = location.country_id
where employee.employee_code = "NV01";

-- 2
select customer.customer_id, customer.customer_name,customer.customer_cccd,tour.tour_code, location.location_name, country.country_name 
from service
join customer on customer.customer_id = service.customer_id
join tour on tour.tour_id = service.tour_id
join location on tour.location_id = location.location_id
join country on country.country_id = location.country_id
where customer.customer_cccd = "4632739273";

-- 3
select country.country_id ,country.country_name, tour.tour_id, tour.tour_code, tour.tour_price, tour.tour_date,location.location_name
from tour
join location on location.location_id = tour.location_id
join country on country.country_id = location.country_id;

-- 4

select tour_id, tour_code,tour_date, max(tour_price) as MaxPrice from tour
group by tour_id
having MaxPrice = (select max(tour_price) from tour);

-- 5
select tour.tour_code,location.location_name, (count(customer.customer_id) * tour.tour_price) as MaxPriceTour from service
join tour on tour.tour_id = service.tour_id
join customer on customer.customer_id = service.customer_id
join location on location.location_id = tour.location_id
group by service.tour_id 
having MaxPriceTour >= All (select (count(customer.customer_id) * tour.tour_price)from service
join tour on tour.tour_id = service.tour_id
join customer on customer.customer_id = service.customer_id 
group by service.tour_id  )



