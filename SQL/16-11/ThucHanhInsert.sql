
-- --Them du kieu vao bang Class-- --
insert into class
 value(1,"A1", "2008-12-20",1),
      (2,"A2", "2008-12-22",1),
      (3,"B3", current_date,0);

-- --Them du kieu vao bang Student-- --
insert into student 
value(1,"Hung","Ha Noi","0983432221",1,1),
     (2,"Hoa","Hai Phong","",1,1),
     (3,"Hung","HCM","0900433331",0,1),
     (4,"aaa","HCM","0900433331",0,2),
	 (5,"bb","HCM","0900433331",0,2);

-- --Them du kieu vao bang Student-- --
insert into subject
 value(1,"CF",5,1),
	  (2,"C",6,1),
      (3,"HDJ",5,1),
      (4,"RDBMS",10,1),
	  (5,"RDBMS",11,1);

-- --Them du kieu vao bang Student-- --
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1),
       (2, 5, 10, 1),
	   (1, 4, 50, 1);

-- --Thuc Hanh-- --

select * from class;
select * from student;
select * from subject;
select * from mark;

select * from student where Status = true;
select * from subject where Credit < 10; 


select student.StudentId, student.StudentName, class.ClassName from student
student join Class on student.ClassId = class.ClassID
where class.ClassName = "A1";

select student.StudentId, student.StudentName, mark.Mark, subject.SubName from student
		join Mark on student.StudentId = mark.StudentId
		join subject on subject.SubId = mark.SubId
        where subject.SubName = "CF";
        
        
-- Bai Tap--

-- Hien Thi Sinh vien ten bat dau bang 'h'
select * from student where StudentName like 'h%';

-- Lop hoc co thoi gin bat dau tu thnag 12
select * from class  where StartDate like "%12%";

-- Tất cả các thông tin môn học có credit trong khoảng từ 3-5
select * from subject where Credit between 3 And 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2
update student
set ClassID = 2
where StudentName = "Hoa";


-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select student.StudentName ,subject.SubName, mark.mark from student
join mark on mark.StudentId = student.StudentId
join subject on subject.SubId = mark.SubId
order by mark.Mark desc, student.StudentName asc ;


-- Hiển thị số lượng sinh viên ở từng nơi
select student.Address, count(student.StudentID) as 'So luong hoc vien' from student
group by student.Address;

-- Tính điểm trung bình các môn học của mỗi học viên
select student.StudentId, student.StudentName,avg(mark.Mark)as "Diem trung binh" from student
join mark on mark.StudentId = student.StudentId
group by student.StudentId,student.StudentName;
 
 -- Tính điểm trung bình các môn học của mỗi học viên > 15
 select student.StudentId, student.StudentName,avg(mark.Mark)as DiemTrungBinh from student
join mark on mark.StudentId = student.StudentId
group by student.StudentId,student.StudentName
having DiemTrungBinh > 15;

-- thông tin các học viên có điểm trung bình lớn nhất
select student.StudentId, student.StudentName,avg(mark.Mark)as DiemTrungBinh from student
join mark on mark.StudentId = student.StudentId
group by student.StudentId,student.StudentName
having DiemTrungBinh >= All (select avg(Mark) from mark group by mark.StudentId  );

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select subject.SubId,subject.SubName,subject.Credit, subject.Status from subject
where Credit >= All(select Credit from subject order by SubId );


-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select subject.SubId,subject.SubName, subject.Status,mark.Mark  from subject
join mark on mark.SubId = subject.SubId
where mark.Mark >= All(select mark.Mark from mark group by mark.SubId) 
;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student.StudentId, student.StudentName,avg(mark.Mark)as AvgMark from student
join mark on mark.StudentId = student.StudentId
group by student.StudentId
order by AvgMark desc, StudentName ASC




