CREATE DATABASE sql_practice;
USE sql_practice;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT,
    city VARCHAR(50),
    joining_date DATE
);

INSERT INTO employees VALUES
(101, 'Aisha', 'IT', 65000, 24, 'Bangalore', '2023-06-15'),
(102, 'Rahul', 'HR', 48000, 28, 'Hyderabad', '2022-03-10'),
(103, 'Sneha', 'Finance', 72000, 26, 'Bangalore', '2021-11-20'),
(104, 'Arjun', 'IT', 55000, 25, 'Chennai', '2024-01-05'),
(105, 'Priya', 'Marketing', 45000, 29, 'Hyderabad', '2023-08-12'),
(106, 'Vikram', 'Finance', 60000, 31, 'Mumbai', '2020-09-18'),
(107, 'Neha', 'IT', 80000, 27, 'Bangalore', '2019-04-25'),
(108, 'Kiran', 'HR', 52000, 30, 'Chennai', '2022-07-30'),
(109, 'Anjali', 'Marketing', 58000, 23, 'Mumbai', '2024-02-14'),
(110, 'Rohit', 'IT', 70000, 32, 'Hyderabad', '2021-05-11'),
(111, 'Divya', 'Finance', 68000, 26, 'Bangalore', '2023-10-01'),
(112, 'Sanjay', 'HR', 47000, 29, 'Mumbai', '2024-03-22'),
(113, 'Meena', 'IT', 62000, 25, 'Chennai', '2022-12-15'),
(114, 'Karthik', 'Marketing', 50000, 28, 'Bangalore', '2020-06-09'),
(115, 'Pooja', 'Finance', 75000, 27, 'Hyderabad', '2019-08-17');
select * from employees;
select employee_id , name ,salary, department from employees where department = 'IT';
select * from employees where city = 'Bangalore';
select * from employees where  salary between   50000 and 70000;
select * from employees where department = 'HR' or department = 'Finance';
select * from employees order by salary desc;
select count(*) department from employees;
select avg(salary) department from employees;
select avg(salary) department from employees where salary > 60000;
select count(*) , department  from employees group by department;
select avg(salary),department from employees group by department;
select max(salary) , department as highest_salary from employees group by department;
select department, min(salary) as small_salary from employees group by department;
select department , count(*) as total_emp from employees group by department having count(*) > 3 ;
select department , avg(salary) from employees group by department having avg(salary) > 60000;
select * from employees where salary between 55000 and 70000;
select * from employees where age between 25 and 30;
select * from employees order by salary desc limit 3;
select * from employees order by salary asc limit 2;
select * from employees where department = 'Finance' and salary > 65000;
select * from employees where city = 'Bangalore' and age < 28;
select * from employees where salary > 55000 and salary < 75000;
select * from employees where joining_date > 2022-01-01;
select count(*) , city  from employees group by city having count(*);
select sum(salary),department from employees group by department;
select department,avg(age) as avg_age from employees group by department;
select max(salary),department from employees group by department having max(salary) > 75000;
select name , salary from employees order by salary desc limit 5;
select name , department , salary from employees order by salary  asc limit 3;
