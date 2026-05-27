CREATE TABLE departments (
    dept_id INT,
    department VARCHAR(50),
    manager_name VARCHAR(100)
);

INSERT INTO departments VALUES
(1, 'Data', 'Ramesh'),
(2, 'HR', 'Priya'),
(3, 'IT', 'Suresh'),
(4, 'Finance', 'Kavya');

alter table employees
add column dept_id int;

UPDATE employees SET dept_id = 1 WHERE department = 'Data';
UPDATE employees SET dept_id = 2 WHERE department = 'HR';
UPDATE employees SET dept_id = 3 WHERE department = 'IT';
UPDATE employees set dept_id = 4 where department ='DDMABI';
UPDATE employees SET dept_id = 4 WHERE department = 'Finance';



/*show tables*/

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';


select * from departments;
select * from employees;

select e.emp_name,
		e.salary,
		d.manager_name
from employees e
left join departments d
on e.dept_id= d.dept_id;


select e.emp_name,
		d.department,
		e.city
from employees e
left join departments d
on d.dept_id =e.dept_id;

select e.emp_name,
		e.salary,
		d.manager_name
from employees e
join departments d
on e.dept_id=d.dept_id
where e.salary>50000;


select e.emp_name,
		d.department
from employees e
left join departments d
on e.dept_id = d.dept_id;

/*CASE WHEN*/
select emp_name, salary,
case 
when salary >= 60000 then 'high salary'
when salary >= 40000 then ' medium'
else 'low salary'
end as salary_catogery
from employees;

select emp_name, salary
from employees
where salary >(select avg(salary) from employees);

/*TASK 1

Display:
employee name
manager name
department*/

select e.emp_name,
		d.manager_name,
		e.department
from employees e
right join departments d
on e.dept_id = e.dept_id;

/*TASK 2

Display employees from Bangalore with manager names.*/
select e.emp_name,
	e.city,
	d.manager_name
from employees e
join departments d
on e.dept_id= d.dept_id
where city = 'Bangalore';

/*TASK 3

Display employees earning below average salary.*/
select salary, emp_name
from employees
where salary < (select avg(salary) from employees);
/*TASK 4

Create salary bands using CASE WHEN:

Above 60000 → High
Between 45000 and 60000 → Medium
Below 45000 → Low*/

select emp_name, salary,
case
when salary > 60000 then 'high'
when salary > 45000 then 'medium'
else 'low'
end as salary_catogory 
from employees;
/*TASK 5

Display all employees even if no matching department exists.

(Hint: LEFT JOIN)*/

select e.emp_name,
	d.department
from employees e
left join departments d
on e.dept_id= e.dept_id;



