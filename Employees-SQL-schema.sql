DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;


-- Departments table
create table departments (
	dept_no varchar(10) not null primary key,
	dept_name varchar(25) not null
);

-- Employees by Department table
create table dept_emp (
	emp_no varchar(10) not null, 
	dept_no varchar(10) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

-- Department Managers table
create table dept_manager (
	dept_no varchar(10) not null,
	emp_no varchar(10) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments (dept_no)
);


-- Employees Table
create table employees (
	emp_no varchar(10) not null primary key,
	emp_title_id varchar(10) not null, 
	birth_date date not null,
	first_name varchar(50) not null, 
	last_name varchar(50) not null, 
	sex varchar(5) not null, 
	hire_date date not null
);

-- Salaries table
create table salaries (
	emp_no varchar(10) not null, 
	salary money not null,
	foreign key(emp_no) references employees (emp_no)
);


-- Titles table
create table titles (
	title_id varchar(10) not null primary key,
	title varchar(50) not null
);
	

