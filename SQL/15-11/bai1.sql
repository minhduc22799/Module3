create table `student`(
		`id` int not null primary key,
        `name` varchar (45) null,
        `age` int null,
        `country` varchar(45) null
);

create table `class`(
		`id` int not null primary key,
        `name` varchar (45) null
);

create table `teacher`(
		`id` int not null primary key,
        `name` varchar (45) null,
        `age` int null,
        `country` varchar(45) null
);

alter table student
modify name varchar(50) not NULL;

insert into student
values(1,"aa",20,"hanoi");
insert into student
values(2,"bb",9,"hanoi");
insert into student
values(3,"cc",15,"hanoi");
select*from student ;
select*from student where age > 10;

