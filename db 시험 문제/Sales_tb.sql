SELECT * FROM study.Sales_tb;

delete from Sales_tb;

insert into Sales_tb
values (0 , "John" , 1000 , "2024-01-10"),
		(0 , "Alice" , 1500 , "2024-01-15"),
		(0 , "Bob" , 1200 , "2024-02-12"),
		(0 , "Alice" , 1700 , "2024-02-15"),
		(0 , "John" , 1300 , "2024-03-02"),
		(0 , "Bob" , 1100 , "2024-03-10"),
		(0 , "Alice" , 2000 , "2024-03-15");
       
insert into Sales_tb
values 	(0 , "Alice" , 2000 , "2024-01-15");

select
	sale_id,
    seller_name,
    RANK() OVER(order by sale_amount DESC) AS 판매금액,
    sale_date
from 
	Sales_tb;
    
select
	seller_name as 판매자,
    sum(sale_amount) as 판매금액,
    DATE_FORMAT(sale_date,'%Y-%m') 판매월
from
	Sales_tb
group by 
	seller_name;


select
	DATE_FORMAT(sale_date,'%Y-%m') sale_month,
    sum(sale_amount) as monthly_total,
    sum(sum(sale_amount)) over(order by DATE_FORMAT(sale_date,'%Y-%m')) as running_total
from 
	Sales_tb
group by
	DATE_FORMAT(sale_date,'%Y-%m');


select
	sum(sale_amount) as 합계
from
	Sales_tb;
    
-- 서술형
DELIMITER $$
 create procedure SalesProcedure (
	IN seller_names Varchar(100) ,
    IN sale_dates Varchar(100) 
 )
 BEGIN
	select
	seller_name as 판매자,
	sum(sale_amount) as 합계,
    format(avg(sale_amount),1) as 평균,
    DATE_FORMAT(sale_date,'%Y-%m') as 판매월
from
	Sales_tb
where
	seller_name = seller_names and DATE_FORMAT(sale_date,'%Y-%m') = sale_dates; 
END $$
DELIMITER ;

CALL SalesProcedure("Alice" , "2024-01");

select
	seller_name as 판매자,
    sum(sale_amount) as 합계,
	avg(sale_amount) as 평균
from
	Sales_tb
where
	seller_name = "Alice";
