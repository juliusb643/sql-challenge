SELECT de.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

SELECT dm.emp_no, dm.dept_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

SELECT de.dept_no, de.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name 
FROM departments d 
JOIN dept_emp de ON d.dept_no = de.dept_no 
JOIN employees e ON de.emp_no = e.emp_no 
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, COUNT (last_name) AS Frequency 
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name)DESC