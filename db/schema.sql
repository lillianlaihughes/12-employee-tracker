DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;

USE employeeDB;

CREATE TABLE department ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30) UNIQUE NOT NULL,
);

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    role_title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    dept_id INT NOT NULL,
     FOREIGN KEY (dept_id)
     REFERENCES department(id)
     ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
     FOREIGN KEY (role_id)
     REFERENCES role(id)
     ON DELETE CASCADE,
    manager_id INT,
     FOREIGN KEY (manager_id)
     REFERENCES employee(id)
     ON DELETE SET NULL
);