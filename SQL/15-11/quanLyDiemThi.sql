create database QuanLyDiemThi;
create table HocSinh(
	MaHS varchar(20) not null primary key,
    TenHS varchar(50) not null,
    NgaySinh datetime not null,
    Lop varchar(20) not null,
    GT varchar(20) null
);

create table MonHoc(
	MaMH varchar(20) not null primary key,
    TenMH varchar(50) not null
);


create table BangDiem(
	MaHS varchar(20) not null references hocsinh,
	MaMH varchar(20) not null references monhoc,
    DiemThi int not null,
    NgayKiemTra datetime not null,
    primary key (MaHS,MaMh)
);

create table GiaoVien(
	MaGV varchar(20) not null primary key,
    TenGV varchar(50) not null,
    SDT varchar(10) not null
);

alter table monhoc add MaGV varchar(20);
alter table monhoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);
