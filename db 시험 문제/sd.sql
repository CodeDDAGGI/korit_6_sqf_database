select * from Student;
select * from Course;
select * from information_schema.table_constraints where table_name = 'Student';
select * from information_schema.table_constraints where table_name = 'Course';


select 
 *
from 
  Student std
left outer join
  Course co
 ON  
  std.course_id = co.course_id
where
	co.course_name  = "영어";
  

alter table Student
add phone_number VARCHAR(100);

alter table Student
Modify email VARCHAR(100) UNIQUE;

START TRANSACTION;

delete from Student
where student_id = 1;

update Student 
set phone_number = "010-1234-5678"
where student_id = 2;

COMMIT;

select *
from Student;
select * from Course;

select * from mysql.innodb_index_stats;
create index email_key_name ON study.Student (email DESC);

create view StudentCourse as
select 
	std.first_name,
    std.last_name,
    co.course_name
from
	Student std
INNER join
  Course co
ON
  std.course_id = co.course_id;

select * from StudentCourse;



