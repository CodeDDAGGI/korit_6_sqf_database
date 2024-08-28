create table Employee
(
	employee_id int primary Key auto_increment,
    name VARCHAR(100) not null,
    email VARCHAR(100) unique not null,
    department_id int not null,
    foreign key(department_id) References Department(department_id)
);

insert into
Department
values(
	0, "김"
);

drop table Employee;

create table Department
(
	department_id int primary key auto_increment,
    department_name VARCHAR(100) not null
);

select department_id
from Employee;

select * from Department;

select * from Employee;

DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `EmpCreate`(
	IN emp_name varchar(100),
    IN emp_email varchar(100),
    IN dep_id int
 )
BEGIN
	insert
    into
		Employee
	values(
		0,
		emp_name,
		emp_email,
        dep_id);
END $$
DELIMITER ;

CALL EmpCreate('김기동' , 'meno@naver.com' , 1);

DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `EmpUpdate`(
	IN emp_id int,
    IN emp_email varchar(100)
 )
BEGIN
	update
		Employee
	set
		email = emp_email
	where
		employee_id = emp_id;
END $$
DELIMITER ;

CALL EmpUpdate(3 , 'meo@naver.com');

select * from Employee;

DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `EmpSelect`(
	IN dep_id int
 )
BEGIN
	select
		name,
        email
	from
		Employee
	where
		department_id = dep_id;
END $$
DELIMITER ;

CALL EmpSelect(1);

select
*
from
Employee;