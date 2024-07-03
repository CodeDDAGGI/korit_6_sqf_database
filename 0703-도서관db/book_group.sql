-- Group by 집계, 중복제거

select
	distinct 
    category_id,
	publisher_id
from
	book_tb;
    
select
	distinct
    category_id,
    count(*)
from
	book_tb
where
	book_id > 7000
group by
	category_id;
    
-- 도서명 중 '돈'이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오

select
	category_id,
    book_name,
    count(*)
from
	book_tb
where
	book_name like "%돈%"
group by
	category_id;
    
-- 강사님 답
select
	*
from
	(select #서브쿼리
		category_id,
		count(*) as category_count
	from
		book_tb 
	where
		book_name like "%돈%" 
	group by
		category_id) as temp_tb
where 
	category_count > 10;
    
-- from -> where -> group by -> select -> having
select
	category_id,
	count(*) as category_count
from
	book_tb 
where
	book_name like "%돈%" 
group by
	category_id
having
	category_count > 10;
    

