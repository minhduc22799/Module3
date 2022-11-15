create database QuanLySInhVien;
create table Class(
ClassID int auto_increment not null primary key,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);

create table Student(
StudentID int auto_increment not null primary key,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key (ClassID) REFERENCES Class(ClassID)
);

create table Subject(
SubID int auto_increment not null primary key,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (Credit >=1),
Status Bit default 1
);


create table Mark(
MarkID  int not null primary key auto_increment,
SubID int not Null unique key,
foreign key (SubID) references subject(SubID),
StudentID  int not Null unique key,
foreign key (StudentID) references student(StudentId),
Mark float default 0 check(Mark between 0 And 100),
ExamTimes tinyint default 1
);
