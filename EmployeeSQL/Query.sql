-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, salaries.salary, employees.last_name, employees.first_name, employees.sex
from employees
left join salaries on employees.emp_no= salaries.emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.
select hire_date, first_name, last_name
from employees
where hire_date between '1986-01-01' and '1986-12-31'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select depman.dept_no, dep.dept_name, depman.emp_no, emp.first_name, emp.last_name
from dep_manager as depman
inner join departments as dep
on depman.dept_no = dep.dept_no
inner join employees as emp
on depman.emp_no = emp.emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
from employees as emp
inner join dep_employees as depemp
on emp.emp_no = depemp.emp_no
inner join departments as dep
on depemp.dept_no = dep.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees 
where
	first_name = 'Hercules' and last_name like 'B%'
	
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employees as emp
inner join dep_employees as depemp
on emp.emp_no = depemp.emp_no
inner join departments as dep
on depemp.dept_no = dep.dept_no
where dep.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employees as emp
inner join dep_employees as depemp
on emp.emp_no = depemp.emp_no
inner join departments as dep
on depemp.dept_no = dep.dept_no
where dep.dept_name in ('Sales','Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*)
FROM employees
Group by last_name
ORDER BY count(*) DESC