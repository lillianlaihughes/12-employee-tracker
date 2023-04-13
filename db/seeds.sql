USE employeeDB;

INSERT INTO departments (dept_name)
VALUES
('Finance'),
('Amusement Parks'),
('Public Relations'),
('Legal'),
('News'),
('Operations'),
('HR');

INSERT INTO departments (dept_name)
VALUES
('Finance'),
(''),
(''),
(''),
(''),
(''),
('');

INSERT INTO roles (role_title, salary, dept_id)
VALUES
('CFO', 250000, 1),
(''),
(''),
(''),
(''),
(''),
('');

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
('Siobhan', 'Roy', 1, 2),
('Roman', 'Roy', 1, 2),
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