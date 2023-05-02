CREATE TABLE "Title" (
    "title_id" VARCHAR(200) PRIMARY KEY  NOT NULL,
    "title" VARCHAR(200)   NOT NULL
);

SELECT * FROM "Title";

CREATE TABLE "Salaries" (
    "emp_no" int PRIMARY KEY  NOT NULL,
    "salary" int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES "Employees"(emp_no)
);

SELECT * FROM "Salaries";

CREATE TABLE "Employees" (
    "emp_no" int PRIMARY KEY  NOT NULL,
    "emp_title_id" VARCHAR(200) NOT NULL,
    "birth_date" varchar(200)   NOT NULL,
    "first_name" VARCHAR(200)   NOT NULL,
    "last_name" VARCHAR(200)   NOT NULL,
    "sex" VARCHAR(200)   NOT NULL,
    "hire_date" VARCHAR(200)   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES "Title"(title_id)
);

SELECT * FROM "Employees";

CREATE TABLE "Dept_Manager" (
    "dept_no" VARCHAR(200)   NOT NULL,
    "emp_no" int PRIMARY KEY  NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES "Employees"(emp_no),
	FOREIGN KEY (dept_no) REFERENCES "Departments"(dept_no)
);

SELECT * FROM "Dept_Manager";

CREATE TABLE "Dept_Employee" (
    "emp_no" int NOT NULL,
    "dept_no" VARCHAR(200) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES "Departments"(dept_no),
	FOREIGN KEY (emp_no) REFERENCES "Employees"(emp_no),
	PRIMARY KEY ("emp_no", "dept_no")
);

SELECT * FROM "Dept_Employee";

CREATE TABLE "Departments" (
    "dept_no" VARCHAR(200) PRIMARY KEY  NOT NULL,
    "dept_name" VARCHAR(200)   NOT NULL
);

SELECT * FROM "Departments";

--CREATE TABLE "Employees_Departments"(
	--emp_no int NOT NULL,
	--FOREIGN KEY (emp_no) REFERENCES "Dept_Employee"(emp_no),
	--dept_no VARCHAR(200) NOT NULL,
	--FOREIGN KEY (dept_no) REFERENCES "Departments"(dept_no),
	--PRIMARY KEY (emp_no, dept_no)
--);

--DROP TABLE "Employees_Departments";