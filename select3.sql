# group by - 그룹
# 집계 -> count , max , min , sum , avg

select
	admission_date,
	count(*) # null은 카운터 x
from
	student_tb
group by
	admission_date;
	


