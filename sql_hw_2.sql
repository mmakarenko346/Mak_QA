--создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employees_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками.

insert into employees(employees_name)
values ('Ivan'),
 			('Vitaliy'),
 			('kostya'),
 			('john'),
 			('dima'),
 			('sasha'),
 			('petya'),
 			('kirill'),
 			('lesha'),
 			('mark'),
 			('kolya'),
 			('bill'),
 			('andrey'),
 			('jack'),
 			('semen'),
 			('valentin'),
 			('peter'),
 			('mick'),
 			('sauron'),
 			('frodo'),
 			('sam'),
 			('gendalf'),
 			('legolas'),
 			('ganniball'),
 			('shevchuk'),
 			('tsoy'),
 			('mary'),
 			('valera'),
 			('antonina'),
 			('darrell'),
 			('anselmo'),
 			('gibbons'),
 			('matrosov'),
 			('krupskaya'),
 			('beria'),
 			('kennedy'),
 			('bush'),
 			('butusov'),
 			('berry'),
 			('armstrong'),
 			('gagarin');
 
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null 		

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--4)наполнить таблицу salary 15 строками

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
			(2400),
			(2500);

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary_id)
		references salary(id)
);
	
insert into employee_salary (employee_id, salary_id)
	values (1, 10),
			(2, 5),
			(3, 14),
			(4, 6),
			(5, 1),
			(6, 9),
			(7, 3),
			(8, 11),
			(9, 2),
			(10, 13),
			(11, 12),
			(12, 8),
			(13, 15),
			(14, 3),
			(15, 10),
			(16, 11),
			(17, 1),
			(18, 2),
			(19, 3),
			(20, 5),
			(21, 9),
			(22, 10),
			(23, 12),
			(24, 5),
			(25, 15),
			(26, 9),
			(27, 4),
			(28, 7),
			(29, 12),
			(30, 1),
			(31, 16),
			(32, 15),
			(33, 7),
			(34, 10),
			(35, 11),
			(36, 2),
			(37, 4),
			(38, 16),
			(39, 10),
			(40, 11);
			
		Таблица roles

-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- Поменять тип столба role_name с int на varchar(30)
-- Наполнить таблицу roles 20 строками
		
create table roles(
	id serial primary key,
	role_name varchar(30) not null unique
	);

insert into roles (role_name)
	values ('Junior Python Developer'),
			('Middle Python Developer'),
			('Senior Python Developer'),
			('Junior Java Developer'),
			('Middle Java Developer'),
			('Senior Java Developer'),
			('Junior JavaScript Developer'),
			('Middle JavaScript Developer'),
			('Senior JavaScript Developer'),
			('Junior Manual QA engineer'),
			('Middle Manual QA engineer'),
			('Senior Manual QA engineer'),
			('Project Manager'),
			('Designer'),
			('HR'),
			('CEO'),
			('Sales Manager'),
			('Junior Automation QA engineer'),
			('Middle Automation QA engineer'),
			('Senior Automation QA engineer');
	
		
-- Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- Наполнить таблицу roles_employee 40 строками:
		
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
		foreign key (employee_id)
		references employees(id),
		foreign key (role_id)
		references roles(id)
	);

insert into roles_employee (employee_id, role_id)
	values (1, 10),
			(2, 5),
			(3, 14),
			(4, 6),
			(5, 1),
			(6, 9),
			(7, 3),
			(8, 11),
			(9, 2),
			(10, 13),
			(11, 12),
			(12, 8),
			(13, 15),
			(14, 3),
			(15, 10),
			(16, 11),
			(17, 1),
			(18, 2),
			(19, 20),
			(20, 5),
			(21, 9),
			(22, 10),
			(23, 12),
			(24, 5),
			(25, 15),
			(26, 9),
			(27, 4),
			(28, 7),
			(29, 12),
			(30, 1),
			(31, 16),
			(32, 15),
			(33, 16),
			(34, 10),
			(35, 11),
			(36, 2),
			(37, 4),
			(38, 16),
			(39, 19),
			(40, 11);
		
		


