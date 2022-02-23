-- 1) ������� ������� employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
-- 2) ��������� ������� employee 70 ��������. (��������� ����� Python)
-- 1. ������� ��� ���� � ��� ������.
create table employees(
id serial primary key,
employee_name Varchar(50) not null
)

-- 1. ������� ��� ���� � ��� ������.
 
select * from employees

-- 3) ������� ������� salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
-- 4) ��������� ������� salary 15 ��������: 

create table salary(
 id serial primary key,
monthly_salary int not null
)

select * from salary 

insert into salary(monthly_salary) 
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400);
       
-- 5) ������� ������� employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--6) ��������� ������� employee_salary 40 ��������:
--- � 10 ����� �� 40 �������� �������������� employee_id
      
 create table employee_salary(
 id serial primary key,
employee_id int not null unique,
salary_id int not null
)

select * from employee_salary

insert into employee_salary(employee_id, salary_id) 
values (1, 1),
       (2, 5),
       (3, 6),
       (4, 3),
       (5, 7),
       (6, 11),
       (7, 4),
       (8, 2),
       (9, 6),
       (10, 9),
       (11, 12),
       (12, 15),
       (13, 13),
       (14, 5),
       (15, 4),
       (16, 2),
       (17, 6),
       (18, 7),
       (19, 10),
       (20, 10),
       (21, 15),
       (22, 8),
       (23, 9),
       (24, 6),
       (25, 3),
       (26, 2),
       (27, 7),
       (28, 11),
       (29, 12),  
       (30, 11),  
       (100, 1),
       (200, 5),
       (300, 6),
       (400, 3),
       (500, 7),
       (600, 11),
       (700, 4),
       (800, 2),
       (900, 6),
       (1000, 9);      
      
-- 7) ������� ������� roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
-- 8) �������� ��� ������ role_name � int �� varchar(30)
-- 9) ��������� ������� roles 20 ��������:


create table roles(
id serial primary key,
role_name int not null unique 
)

select * from roles

ALTER TABLE roles
ALTER COLUMN role_name type Varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
	 ('Middle Python developer'),
	 ('Senior Python developer'),
	 ('Junior Java developer'),
	 ('Middle Java developer'),
	 ('Senior Java developer'),
	 ('Junior JavaScript developer'),
	 ('Middle JavaScript developer'),
	 ('Senior JavaScript developer'),
	 ('Junior Manual QA engineer'),
	 ('Middle Manual QA engineer'),
	 ('Senior Manual QA engineer'),
	 ('Project Manager'),
	 ('Designer'),
	 ('HR'),
	 ('CEO'),
	 ('Sales manager'),
	 ('Junior Automation QA engineer'),
	 ('Middle Automation QA engineer'),
	 ('Senior Automation QA engineer');
	 
	
--	10) ������� ������� roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
--- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
-- 11) ��������� ������� roles_employee 40 ��������:

	create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
    references employees(id),
    foreign key (role_id)
    references roles(id)  
	)
	
	select * from roles_employee
	
	insert into roles_employee(employee_id, role_id) 
values (1, 1),
       (2, 5),
       (3, 6),
       (4, 3),
       (5, 7),
       (6, 11),
       (7, 4),
       (8, 2),
       (9, 18),
       (10, 9),
       (11, 12),
       (12, 20),
       (13, 13),
       (14, 5),
       (15, 4),
       (16, 2),
       (17, 6),
       (18, 7),
       (19, 10),
       (20, 10),
       (21, 15),
       (22, 8),
       (23, 14),
       (24, 6),
       (25, 15),
       (26, 2),
       (27, 7),
       (28, 11),
       (29, 12),  
       (30, 18),
       (31, 10),
       (32, 15),
       (33, 8),
       (34, 16),
       (35, 20),
       (36, 3),
       (37, 17),
       (38, 7),
       (39, 11),
       (40, 19);  
       
