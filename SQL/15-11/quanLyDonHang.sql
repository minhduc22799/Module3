create database quanlydonhang;
use quanlydonhang;

create table nhacc(
MaNCC int not null primary key,
TenNCC varchar(50),
DiaChi varchar(50),
SDT varchar(20)
);
create table dondathang(
SoDH int not null primary key,
NgayDH DATETIME,
MaNCC int not null,
foreign key (MaNCC) references nhacc (MaNCC)
);

create table ttncc(
MaNCC int not null,
SDT varchar(20),
foreign key (MaNCC) references nhacc (MaNCC)
);
create table chitietdonDH(
MaVTU int not null,
SoDH int not null,
foreign key (SoDH) references dondathang (SoDH),
foreign key (MaVTU) references vattu (MaVTU)
);
create table vattu(
MaVTU int not null primary key,
TenVTU varchar(50)
);
create table chitietphieuxuat(
DGXuat int not null,
SLXuat int not null,
SoPX int not null,
MaVTU int not null,
foreign key (SoPX) references phieuxuat (SoPX),
foreign key (MaVTU) references vattu (MaVTU)
);
create table phieuxuat(
SoPX int not null primary key,
NgayXuat DATETIME
);
create table phieunhap(
SoPN int not null primary key,
NgayNhap DATETIME
);
create table chitietphieunhap(
DGNhap int not null,
SLNhap int not null,
SoPN int not null,
MaVTU int not null,
foreign key (SoPN) references phieunhap (SoPN),
foreign key (MaVTU) references vattu(MaVTU)
);