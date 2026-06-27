create database dept_id;
use dept_id;
create table department(dept_id int primary key,dept_name varchar(30)not null,location varchar(30) default"hyderabad");
desc department;
insert into department values(10,"hr","hyderbad"),(20,"it","bangaloor"),(30,"finance","mumbai"),(40,"marketing","dheli");
select * from department;
create table employee(emp_id int primary key,emp_name  varchar(30),salary bigint,hire_date date,email varchar(50) unique,
age int check(age>20),phone bigint,dept_id int,foreign key(dept_id) references department(dept_id));
desc employee;
insert into employee values(101,"ravi",45000,'2022-01-05',"ravu@gmail.com",25,9088776,20),
(102,"priya",55000,'2021-05-10',"priya@gmail.com",28,8390303,10),
(103,"kiran",60000,'2020-08-20',"kiran@gmail.com",30,38376666,20),
(104,"sneha",40000,'2023-02-01',"snaeha@gmail.com",24,4444333,30),
(105,"arjun",70000,'2019-11-20',"arjun@gmail.com",35,34322222,20),
(106,"divya",48000,'2022-06-18',"divya@gmail.com",27,34445555,40);
select * from employee;
alter table employee add column phone varchar(15);
alter table employee add column desigantion varchar(30);
alter table employee rename column phone to mobile_no;
alter table employee modify column salary decimal(12,2); 
desc employee;
alter table employee modify column emp_name varchar(20) not null;
desc employee;
alter table employee add constraint  unique_mobile_no unique(mobil_no);
desc employee;
alter table employee rename to emp_id;
select * from emp_id;
select *,salary+5000 from emp_id where empid=101;
select *,salary+salary*0.1 as increased_salary from emp_id;
alter table emp_id set email="rv@gmail.com" where empid=101;
delete from emp_id where emp_id=106;
delete from emp_id where salary<45000;
select* from emp_id;
truncate table emp_id;
select * from emp_id;
drop table emp_id;
drop table department;
