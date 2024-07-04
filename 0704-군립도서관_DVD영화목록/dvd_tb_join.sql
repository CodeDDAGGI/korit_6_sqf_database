# 쿼리 실행 순서
# from -> where -> group by -> select -> having -> order by -> limit

select
	dt.dvd_id,
    dt.registration_number,
    dt.title,
    dt.producer_id,
    pdt.producer_name,
    dt.publisher_id,
    pbt.publisher_name,
    dt.publication_year,
    dt.database_date
from #from 자체도 테이블이 댐(조인 시)
	dvd_tb dt
	left outer join producer_tb pdt on(pdt.producer_id = dt.producer_id)
    left outer join publisher_tb pbt on(pbt.publisher_id = dt.publisher_id)
-- where
	-- dt.producer_id = 749 # 중복 id때문에 하나의 id값만 가져오려고
limit 10, 10; # 앞 자리 index , 뒷자리 나오는 갯수

