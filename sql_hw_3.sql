
-- Подключится к 
---Host: 159.69.151.133
--Port: 5056
--DB: подключение к той таблице где делали DDL операции
--User: подключение к тем пользователем каким делали DDL операции
--Pass: 123

--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
;



select * from employee_salary;
select * from roles;
select * from salary;
select * from employees;

 --2. Вывести всех работников у которых ЗП меньше 2000.
select employees_name from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000
;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
--5. Найти всех работников кому не начислена ЗП
--6. Вывести всех работников с названиями их должности.
 
select employees_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;


 --7. Вывести имена и должность только Java разработчиков.
select employees_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java Developer%'
;

 --8. Вывести имена и должность только Python разработчиков.
select employees_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python%'
;

 --9. Вывести имена и должность всех QA инженеров.
select employees_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA%'
;

 --10. Вывести имена и должность ручных QA инженеров.

select employees_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA%'
;

 --11. Вывести имена и должность автоматизаторов QA

select employees_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA%'
;

 --12. Вывести имена и зарплаты Junior специалистов

select employees_name, monthly_salary, role_name from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%'

;



 --13. Вывести имена и зарплаты Middle специалистов

select employees_name, monthly_salary, role_name from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Middle%'
;

-- 14. Вывести имена и зарплаты Senior специалистов

select employees_name, monthly_salary, role_name from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Senior%'
;

 --15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java Developer%'
;

 --16. Вывести зарплаты Python разработчиков
select role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python%'
;

 --17. Вывести имена и зарплаты Junior Python разработчиков

select role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%Python%'
;

 --18. Вывести имена и зарплаты Middle JS разработчиков

select role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Middle%JavaScript%'
;

 --19. Вывести имена и зарплаты Senior Java разработчиков

select role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Senior%JavaScript%'
;

-- 20. Вывести зарплаты Junior QA инженеров

select role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%QA%'
;

 --21. Вывести среднюю зарплату всех Junior специалистов
select avg (monthly_salary) from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Junior%'
;

 --22. Вывести сумму зарплат JS разработчиков

select sum (monthly_salary) from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%JavaScript%'
;

 --23. Вывести минимальную ЗП QA инженеров

select min (monthly_salary) from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA%'
;

 --24. Вывести максимальную ЗП QA инженеров

select max (monthly_salary) from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA%'
;

 --25. Вывести количество QA инженеров
select count (role_name) from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on employees.id = roles_employee.employee_id
where roles.role_name like '%QA%'
;

 --26. Вывести количество Middle специалистов.

select count (role_name) from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on employees.id = roles_employee.employee_id
where roles.role_name like '%Middle%'
;

 --27. Вывести количество разработчиков

select count (role_name) from roles
join roles_employee on roles.id = roles_employee.role_id
join employees on employees.id = roles_employee.employee_id
where roles.role_name like '%Developer%'
;

 --28. Вывести фонд (сумму) зарплаты разработчиков.

select sum (monthly_salary) from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Developer%'
;

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employees_name, role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
order by salary.monthly_salary
;


 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employees_name, role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where monthly_salary between 1699 and 2301
order by salary.monthly_salary
;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employees_name, role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where monthly_salary < 2300
order by salary.monthly_salary
;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employees_name, role_name, monthly_salary from employees join
employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by salary.monthly_salary
;

