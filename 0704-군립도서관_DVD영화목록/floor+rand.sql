-- insert into rental_tb

-- select
-- 	rt.rental_id,
--     rt.dvd_id,
--     rt.cutomer_name,
--     rt.rental_date

select
	*
from
	rental_tb rt
	left outer join 
	(select
		distinct
		0 as id,
		floor(rand() * 3000) + 1 as dvd_id,
		"김준이" as customer_name,
		now() as rental_date
	from
		dvd_tb
	where
		dvd_id < 1001
	order by
		dvd_id) rt2 on(rt2.dvd_id)
-- dvd_id


    