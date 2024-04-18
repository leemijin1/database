-- employees 테이블읈 생성
create table employees(
	id int auto_increment primary key,
    name varchar(100),
    position varchar(100),
    salary decimal(10,2)
);

select*from employees;

-- 직원 데이터를 employees에 추가
insert into employees(name,position,salary)values('혜린','PM',90000);
insert into employees(name,position,salary)values
	('은우','Fronted',80000),
    ('가을','Backend',92000),
    ('지수','Fronted',78000),
    ('민혁','Fronted',96000),
    ('하온','Backend',130000);
    
create table employees(
	employee_id int(10) auto_increment primary key,
    employee_name varchar(100),
    employee_position varchar(100),
    salary decimal(10,2)
);

-- 모든 직원의 이름과 연봉 정보만을 조회하는 쿼리 작성
select name,salary from employees;

-- Frontend 직책 가진 직원 중 연봉이 90000 이하인 직원의 이름과 연봉 조회
select name,salary from employees where position='Fronted' and salary<=90000;
set sql_safe_updates=0;

-- PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인하세요.
update employees set salary = salary * 1.10 where position='PM';
select*from employees where position='PM';

-- 모든 `Backend`' 직책을 가진 직원의 연봉을 5% 인상하세요.
update employees set salary =salary *1.05 where position='Backend';
select*from employees where position='Backend'; 

-- 민혁 사원의 데이터를 삭제하세요.
delete from employees where name='민혁';
select*from employees;

-- 모든 직원을 `position` 별로 그룹화하여 각 직책의 평균 연봉을 계산하세요.
select avg(salary) as average_salary from employees group by position;

-- `employees` 테이블을 삭제하세요.
drop table employees;
