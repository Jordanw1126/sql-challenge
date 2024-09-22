--Creating tables 

--Department table
CREATE TABLE department (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL
);

--Employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(10),
	hire_date DATE
);

--Department employees table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30),
	PRIMARY KEY (emp_no, dept_no), --composite primary key
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

--Department manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),  --composite primary key
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

--Salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Titles table
CREATE TABLE titles (
    title_id VARCHAR(30) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);