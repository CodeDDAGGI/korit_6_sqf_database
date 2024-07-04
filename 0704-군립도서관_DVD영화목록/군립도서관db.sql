SELECT * FROM study.`dvd_sample_tb`;

    
insert into producer_tb(producer_id , producer_name)
select
	0,
	producer
from
	dvd_sample_tb
group by
	producer_id,
    producer;
    
insert into dvd_publisher_tb(dvd_publisher_id , dvd_publisher_name)
select
	0,
	dvd_publisher
from
	dvd_sample_tb
group by
	dvd_publisher_id,
    dvd_publisher;

update
	dvd_sample_tb as dst 
    left outer join producer_tb as pt on(pt.producer_name = dst.producer)
    left outer join dvd_publisher_tb as dpt on(dpt.dvd_publisher_name = dst.dvd_publisher)
set
    dst.producer_id = pt.producer_id,
    dst.dvd_publisher_id = if(dst.dvd_publisher = "", null , dpt.dvd_publisher_id);
    
insert into dvd_tb
select
	0,
	registration_number,
    title,
    producer_id,
    producer,
    dvd_publisher_id,
    dvd_publisher,
    dvd_publiscation_year,
    database_date
from
	dvd_sample_tb;
