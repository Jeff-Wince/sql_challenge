CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE departments(
	dep_no VARCHAR(30) PRIMARY KEY,
	dep_name VARCHAR(30)
);

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE dept_manager(
	dep_no VARCHAR(30),
	emp_no INTEGER,
	PRIMARY KEY(dep_no, emp_no),
	FOREIGN KEY (dep_no) REFERENCES departments(dep_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dep_no VARCHAR(30),
	PRIMARY KEY(emp_no, dep_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dep_no) REFERENCES departments(dep_no)
);

CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	PRIMARY KEY(emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);