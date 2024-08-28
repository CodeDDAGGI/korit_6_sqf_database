create database mydatabase;
use mydatabase;
use mysql; -- 스키마 선택
select user,host from user; -- 사용자 목록 조회
drop user 'test'@'localhost'; -- 삭제
create user 'test'@'localhost' identified by 'test1234';
create user 'admin'@'localhost' identified by 'admin_password';
SHOW GRANTS FOR 'admin'@'localhost';
SHOW GRANTS FOR CURRENT_USER;
grant all privileges on *.* to 'admin'@'localhost';


use mydatabase;
select user, host from user;
-- 기본형 create user '사용자'@'host' identified by '비밀번호';

create user 'user'@'localhost' identified by 'user_password';
grant select, insert , update, delete on mydatabase.table_tb to 'user'@'localhost';
SHOW GRANTS FOR 'user'@'localhost';

DROP TABLE IF EXISTS Student;
create table Student
(
    student_id      int PRIMARY KEY  AUTO_INCREMENT,
    first_name    VARCHAR(50),
    last_name    VARCHAR(50),
    birth_date   DATE,
    email         VARCHAR(100)     Not NULL
);

select
*
from
Student;