DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;

USE employeeDB;

CREATE TABLE departments ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30) UNIQUE NOT NULL,
);

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    role_title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    dept_id INT,
     FOREIGN KEY (dept_id)
     REFERENCES departments(id)
     ON DELETE SET NULL
);

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
     FOREIGN KEY (role_id)
     REFERENCES roles(id)
     ON DELETE SET NULL,
    manager_id INT,
     FOREIGN KEY (manager_id)
     REFERENCES employees(id)
     ON DELETE SET NULL
);




-- I WANT to be able to view and manage the departments, roles, and employees in my company