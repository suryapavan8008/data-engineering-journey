SELECT VERSION();
SELECT NOW();
SELECT current_database();
select current_user;

create table employees(
emp_id INT,
emp_name VARCHAR(100),
department VARCHAR(50),
salary INT,
city VARCHAR(50)
);

insert into employees values(01, 'surya', 'IT', 50000, 'Bengaluru');
insert into employees values(02, 'Renu', 'DDMABI', 60000,'Mumbai'),
(2, 'Rahul', 'HR', 40000, 'Mumbai'),
(3, 'Anjali', 'IT', 65000, 'Hyderabad'),
(4, 'Kiran', 'Data', 70000, 'Bangalore'),
(5, 'Sneha', 'Finance', 45000, 'Chennai');

select * from employees;

select emp_id,department from employees;

select * from employees 
where salary = 50000;

select * from employees
where department ='DDMABI';

select * from employees
where salary >= 40000
and department = 'IT';

select * from employees
order by salary;

select * from employees
order by salary DESC;

select distinct department
from employees;

select * from employees
limit 4;

/*Tasks:

TASK 1
Show all employees--*/

select * from employees;

/*TASK 1

TASK 2
Show only employee names and cities.*/

select emp_name, city
from employees;

/*TASK 3

Show employees from Bangalore.*/
select * from employees 
where city= 'Bangalore';

/*
TASK 4

Show employees with salary greater than 50000.*/

select * from employees
where salary > 50000;

/*
TASK 5

Show all departments without duplicates.*/

select distinct department 
from employees;

/*
TASK 6

Show highest paid employee first.*/ 
select emp_name, salary from employees
order by salary DESC;

/*TASK 7

Show only first 2 employees.*/
select * from employees
limit 2;

select avg(salary)
from employees;

select max(salary)
from employees;

select min(salary)
from employees;

select sum(salary)
from employees;

select department, count(*)
from employees
group by department;

select department, avg(salary)
from employees
group by department;

select department, max(salary)
from employees
group by department;

select department, avg(salary)
from employees
group by department
order by avg(salary) DESC;

select department, count(*)
from employees
group by department
having count(*)> 1;

select department, count(*)
from employees
group by department;
