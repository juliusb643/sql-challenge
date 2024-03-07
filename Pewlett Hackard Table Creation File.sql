CREATE TABLE departments (
	dept_no VARCHAR (30) NOT NULL,
	dept_name VARCHAR (30) NOT NULL
);

select * 
from departments

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR (30) NOT NULL
);

select *
from dept_emp


CREATE TABLE dept_manager (
	dept_no VARCHAR (30) NOT NULL,
	emp_no INT
);

select *
from dept_manager

CREATE TABLE employees (
	emp_no INT, 
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE
); 

select *
from employees

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

select *
from salaries

CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR (30) NOT NULL
);

select * 
from titles