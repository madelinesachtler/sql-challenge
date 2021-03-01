

-------------------------------------------------------------------

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees e 
join salaries s ON e.emp_no = s.emp_no ; 


-- List first name, last name, and hire date for employees who were hired in 1986. -- 
SELECT first_name, last_name, hire_date 
FROM employees
where hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dep_no, d.dept_name, man.emp_no, e.first_name, e.last_name
from departments d 
join dep_manager man on (d.dep_no = man.dep_no)
join employees e on (man.emp_no = e.emp_no)

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

select d.dept_name, de.emp_no, emp.first_name, emp.last_name 
from departments d 
join dep_emp de on (d.dep_no = de.dep_no)
join employees emp on (de.emp_no = emp.emp_no);

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name, sex 
	FROM employees 
	WHERE first_name = 'Hercules'
	and last_name LIKE 'B%'; 


--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select d.dept_name, dept.emp_no, e.first_name, e.last_name
	from departments d 
	join dep_emp dept on (d.dep_no = dept.dep_no)
	join employees e on (dept.emp_no = e.emp_no)
	WHERE dept_name = 'Sales' ; 
	
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select d.dept_name, dept.emp_no, e.first_name, e.last_name
	from departments d 
	join dep_emp dept on (d.dep_no = dept.dep_no)
	join employees e on (dept.emp_no = e.emp_no)
	WHERE dept_name = 'Sales' or dept_name = 'Development'


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)AS Frequency
	FROM employees
  	GROUP BY last_name
  	ORDER BY
  	COUNT(last_name) DESC


