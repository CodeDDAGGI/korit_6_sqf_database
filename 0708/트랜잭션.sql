# 트랜잭션(Transaction)

set @name = "김준일";
select @name;

# @@ 전역변수에 저장 1이면 참 0이면 거짓
select @@autocommit;
# 껏다키면 자동으로 autocomit이 1이 되어있음
set autocommit = 0;

insert into master_tb
values
	(0, 6 ,2);
    
commit;