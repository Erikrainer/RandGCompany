DROP DATABASE IF EXISTS randg_db;

CREATE DATABASE randg_db;

\c randg_db;

CREATE TABLE department (
department_id INTEGER PRIMARY KEY,
name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
role_id INTEGER PRIMARY KEY,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INTEGER,
  FOREIGN KEY (department_id)
  REFERENCES department(department_id)
);

CREATE TABLE employee (
employee_id INTEGER PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INTEGER NOT NULL,
manager_id INTEGER,
  FOREIGN KEY (role_id)
  REFERENCES role(role_id),
  FOREIGN KEY (manager_id)
  REFERENCES role(role_id)
);

-- MANAGER POSITIONS UNTIL NOW 
-- 1 Sales Lead
-- 3 Lead Engineer
-- 5 Account Manager
-- 7 Legal Team Lead