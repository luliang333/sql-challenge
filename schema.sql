_no) references departments(dept_no)
);

--create dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
		FOREIGN KEY(dept_no) references departments(dept_no),
	emp_no INT,
		FOREIGN KEY (emp_no) references employees(emp_no)
);

--create employees table
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL
);

--create salaries table
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
		FOREIGN KEY(emp_no) references employees(emp_no),
	salary INT
);

--create titles table
CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL
);