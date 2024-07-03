# 데이터 수정(DML - UPDATE)

select * from student_tb;

select
	student_id
from
	student_tb
where
	student_name = "김준오";

update 
	student_tb
set
	email = "skjil1218@gmail.com"
# 여러개 in 단일 =
where
	student_id in (	select 
						temp_student_tb.student_id
					from
						(select * from student_tb ) as temp_student_tb
					where
						temp_student_tb.student_name = "김준오");
# student_tb != temp_student_tb(가상테이블)
# 서브 쿼리 이용 시 참조하는 테이블이랑 같으면 안됨
    
update
	student_tb
set
	phone = "010-1234-4321",
    email = "skjil1218@naver.com"
where
	student_id = 3;

    