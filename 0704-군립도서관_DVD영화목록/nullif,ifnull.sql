-- insert into publisher_tb(publisher_name)
select
	-- 발행자,
	nullif(발행자 , "")  # 두 개를 비교해서 같으면 null, 다르면 첫번째꺼 반환
    -- ifnull(nullif(replace(발행자, "", "") ""), "발행자 없음") # 앞에가 null이면 뒤에 오는걸 반환
from
	sample_dvd_tb
group by
	발행자
having
	nullif(발행자, "") is not null ;
    
insert into publisher_tb(publisher_name)
select
	nullif(발행자, "") as publisher_name
from
	sample_dvd_tb
group by
	발행자
having
	publisher_name is not null
    