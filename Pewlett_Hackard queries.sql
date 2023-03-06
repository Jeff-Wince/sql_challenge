--Data Analysis

    --List the employee number, last name, first name, sex, and salary of each employee.
SELECT
	emp_no,
	first_name,
	last_name,
	hire_date
	FROM
	employees;


    --List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
	first_name,
	last_name,
	hire_date
	FROM
	employees
	where hire_date>='1986-01-01'
	and hire_date<'1987-01-01';
    --List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
	DP.dep_no,
	DM.emp_no,
	DP.dep_name,
	EM.last_name,
	EM.first_name
	FROM
	employees EM
	join dept_emp DE on DE.emp_no=EM.emp_no
	join departments DP on DE.dep_no=DP.dep_no
	join dept_manager DM on DM.emp_no=EM.emp_no;
    --List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
	DP.dep_no,
	EM.emp_no,
	EM.last_name,
	EM.first_name,
	DP.dep_name
	FROM
	employees EM
	JOIN dept_emp DE on DE.emp_no=EM.emp_no
	JOIN departments DP on DP.dep_no=DE.dep_no;
	
    --List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
	first_name,
	last_name,
	sex
	FROM employees
	WHERE
	first_name='Hercules'
	AND
	last_name like 'B%';
    --List each employee in the Sales department, including their employee number, last name, and first name.
SELECT
	EM.emp_no,
	last_name,
	first_name,
	dep_name
	FROM
	dept_emp DE
	join employees EM on EM.emp_no=DE.emp_no
	join departments DP on DE.dep_no=DP.dep_no
	WHERE
	dep_name='Sales'
	;
    --List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	EM.emp_no,
	last_name,
	first_name,
	dep_name
	FROM
	dept_emp DE
	join employees EM on EM.emp_no=DE.emp_no
	join departments DP on DE.dep_no=DP.dep_no
	WHERE
	dep_name in('Sales', 'Development')
	;
    --List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT
	last_name,
	count(last_name)
	FROM employees
	GROUP BY last_name;