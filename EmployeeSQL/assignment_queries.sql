--List the employee number, last name, first name, sex, and salary of each employee.
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e 
left join salaries as s 
on (e.emp_no = s.emp_no)
order by e.emp_no


--List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
where extract("Year" from hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
From dept_manager dm
inner join departments as d 
On (dm.dept_no = d.dept_no)
inner join employees as e 
on (dm.emp_no = e.emp_no)

 

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
From dept_emp dm
inner join departments as d 
On (dm.dept_no = d.dept_no)
inner join employees as e 
on (dm.emp_no = e.emp_no)

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
from employees
where  first_name ='Hercules' and last_name like'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
From dept_emp dm
inner join departments as d 
On (dm.dept_no = d.dept_no)
inner join employees as e 
on (dm.emp_no = e.emp_no)
where d.dept_name = 'Sales'
order by e.emp_no

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
From dept_emp dm
inner join departments as d 
On (dm.dept_no = d.dept_no)
inner join employees as e 
on (dm.emp_no = e.emp_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
order by e.emp_no


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;