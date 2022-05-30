CREATE TABLE Departments (
    dept_no VARCHAR(255)   PRIMARY KEY,
    dept_name VARCHAR(255)   NOT NULL
);

CREATE TABLE Titles (
    title_id VARCHAR(255)   PRIMARY KEY,
    title VARCHAR(255)   NOT NULL   
);

CREATE TABLE Employees (
    emp_no INT   PRIMARY KEY,
	title_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (title_id) REFERENCES Titles(title_id),
    birth_date DATE   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    sex VARCHAR(255)   NOT NULL,
    hire_date DATE   NOT NULL  
);

CREATE TABLE Dept_Manager (
	dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_Emp (
	emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
	emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    salary INT   NOT NULL
);


