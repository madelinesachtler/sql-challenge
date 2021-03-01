
Create table Titles ( 
	title_id VARCHAR PRIMARY KEY, 
	title VARCHAR
);


Create table Employees ( 
	emp_no INT PRIMARY KEY, 
	emp_title_ID VARCHAR,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id), 
	birthdate DATE, 
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR, 
	hire_date DATE

); 

Create table Departments ( 
	dep_no VARCHAR PRIMARY KEY, 
	dept_name VARCHAR

);

CREATE TABLE Dep_Emp(
	emp_no INT, 
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no), 
	dep_no VARCHAR, 
	FOREIGN KEY (dep_no) REFERENCES Departments(dep_no)

);


CREATE TABLE Dep_Manager( 
	dep_no VARCHAR, 
	FOREIGN KEY (dep_no) REFERENCES Departments(dep_no), 
	emp_no INT, 
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)

);


CREATE TABLE Salaries (
	emp_no INT, 
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no), 
	salary INT 
); 

-------------------------------------------------------------------
