USE employeeDB;

INSERT INTO departments (dept_name)
VALUES
('Finance'),
('Amusement Parks'),
('Public Relations'),
('Legal'),
('Broadcast Media'),
('Print Media'),
('Operations'),
('HR');

INSERT INTO roles (role_title, salary, dept_id)
VALUES
('CEO', 5000000, 1),
('COO'),
('CFO'),
('General Counsel'),
('Communications Director'),
('Executive Assistant'),
('Political Consultant'), 
('President of Domestic Operations'),
('Board Member');

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
('Roman', 'Roy', 1, 2),
('Siobhan', 'Roy', 1, 2),
('Kendall', 'Roy', 1, 2),
('Connor', 'Roy', 1, 2),
('Logan', 'Roy', 1, 2),
('Tom', 'Wambsgans', 1, 2),
('Cousin', 'Greg', 1, 2),
('Gerri', 'Kellman', 1, 2),
('Karl', 'Muller', 1, 2),
('Hugo', 'Baker', 1, 2),
('Frank', 'Vernon', 1, 2),
('Stewy', 'Hosseini', 1, 2),
('Karolina', 'Novotney', 1, 2),
('');