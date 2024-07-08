set @total = 0;
call usp_mod_score("이병안", 90, 0, 80, @total);

select @total;

select * from score_tb;