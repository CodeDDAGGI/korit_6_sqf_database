SELECT * FROM dvd_db.sample_dvd_tb;
insert into producer_tb
-- 값넣는 법 select , values 둘중 하나 사용
-- values() 
select
	distinct
    0,
	제작자
from
	sample_dvd_tb;
    
-- 쿼리 실행순서에 따라 두개의 방법 중 1택
insert into producer_tb
select
    0,
	제작자
from
	sample_dvd_tb
group by
	제작자;
    
    
-- 테이블 생성
-- create table producer_tb(
-- 	 publisher_id int auto_increment PRIMARY KEY,
--   publisher_name varchar(100) not null unique
--   ); 