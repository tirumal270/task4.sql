create database dept_id;
use dept_id;
show tables;
create table department(deptid int primary key,dept_name varchar(20),location char(30));
desc department;
insert into department values(10,"hr","hyderbad"),(20,"it","bangaloor"),(30,"finance","mumbai"),(40,"marketing","dheli");
select * from department;
create table emp(empid int primary key,emp_name  varchar(30),salary bigint,hire_date date,email varchar(50) unique,
age int check(age>20),phone bigint,foreign key(empid) references department(deptid));
desc emp;
alter table employe modify column salary decimal(12,2); 
desc employe;
alter table employe modify column emp_name varchar(20) not null;
desc employe;
alter table employe add constraint  unique_mobile_no unique(mobil_no);
desc employe;
alter table employe rename to emp_id;
insert into emp_id values(101,"ravi",45000,'10-38-29',"ravu@gmail.com",21,9088776),
(102,"priya",55000,'12-12-20',"priya@gmail.com",29,8390303),
(103,"kiran",60000,'10-03-29',"kiran@gmail.com",23,38376666),
(104,"sneha",40000,'10-08-29',"snaeha@gmail.com",25,44443333),
(105,"arjun",70000,'02-22-28',"arjun@gmail.com",24,343222222),
(106,"divya",48000,'03-04-23',"divya@gmail.com",32,344455555);
select * from emp_id;
select *,salary+5000 from emp_id where empid=102;
select *,salary+salary*0.1 as increased_salary from emp_id;
delete from emp_id where salary<4000;
select* from emp_id;
truncate table emp_id;
select * from emp_id;
drop table emp_id;
drop table department;




