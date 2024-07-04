select * from dvd_register_tb;
select * from dvd_tb;

insert into dvd_register_tb
values
	(0, 1, now()),
	(0, 1, now()),
	(0, 1, now()),
	(0, 1, now());
    
select
	0,
    dvd_id,
    now()
from
	dvd_tb
union all

select
	0,
    dvd_id,
    now()
from
	dvd_tb
union all

select
	0,
    dvd_id,
    now()
from
	dvd_tb

order by
	dvd_id;

-- insert into dvd_register_tb
select
	0,
	dt1.dvd_id,
    now()
from
	dvd_tb dt1
    left outer join dvd_tb dt2 on (dt2.dvd_id <4);
    
select
	registration_number,
    title,
    producer_id,
    publisher_id,
    count(*) as dvd_count
from
	dvd_tb
group by
	title,
    producer_id,
    publisher_id
having
	dvd_count >1;
    