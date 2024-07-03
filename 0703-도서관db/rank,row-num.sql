# 출판사를 기준으로 category의 count를 집계한다.

select
	*
from(
	select
--  partition by 각 파티션별로 순위를 매김
--  row_number 무조건 숫자 증가
--  rank는 공동 순위
#   rank() over(partition by publisher_id order by book_count desc) as `rank`,
#   dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`,
    row_number() over(partition by publisher_id order by book_count desc) as `num`,
    pc_count_tb.*
from
	(select
		publisher_id,
		category_id,
		count(*) as book_count
	from
		book_tb
	group by
		publisher_id,
		category_id) as pc_count_tb) as book_row_numve_tb
	where
		num = 1;