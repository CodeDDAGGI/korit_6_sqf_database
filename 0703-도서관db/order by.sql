-- order by - 정렬
-- ASC > 오름차순(생략가능), DESC > 내림차순(생략불가능)
select
	*
from
	category_tb
order by
	category_id;
				
select
	*
from
	book_tb
order by
    publisher_id desc ,
    category_id,
    book_id desc;
-- order by는 원하는대로 정렬을 하려면 순서대로

	
    


    