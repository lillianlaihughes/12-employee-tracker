USE employeeDB;

INSERT INTO department 
    (dept_name)
VALUES
    ('Operations'),
    ('Finance'),
    ('Legal'),
    ('Public Relations'),
    ('Amusement Parks'),
    ('Broadcast Media'),
    ('HR');

INSERT INTO role 
    (role_title, salary, dept_id)
VALUES
    ('CEO', 550000000, 1),
    ('COO', 350000000, 1),
    ('CFO', 350000000, 2),
    ('General Counsel', 250000000, 3),
    ('Communications Director', 150000000, 4),
    ('Executive Assistant', 50000000, 1),
    ('Political Consultant', 150000000, 3), 
    ('Domestic Operations VP', 150000000, 6);

INSERT INTO employee 
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Logan', 'Roy', 1, null),
    ('Roman', 'Roy', 2, 1),
    ('Siobhan', 'Roy', 7, 1),
    ('Kendall', 'Roy', 2, 1),
    ('Connor', 'Roy', 9, 1),
    ('Tom', 'Wambsgans', 8, 3),
    ('Cousin', 'Greg', 6, 6),
    ('Gerri', 'Kellman', 4, 1),
    ('Karl', 'Muller', 3, 1),
    ('Hugo', 'Baker', 4, 8),
    ('Frank', 'Vernon', 3, 2),
    ('Stewy', 'Hosseini', 9, 4),
    ('Karolina', 'Novotney', 5, 1),
    ('Kerry', 'Castellabate', 6, 1);