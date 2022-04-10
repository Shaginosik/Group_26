-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select e.employee_name, s.monthly_salary from employee_salary es  
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id 

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select e.employee_name, s.monthly_salary from employee_salary es 
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id
where monthly_salary < 2000

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary, e.employee_name from salary s
join employee_salary es on es.salary_id=s.id
left join employees e on es.employee_id=e.id
where employee_name is null
 
 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary, e.employee_name from salary s
join employee_salary es on es.salary_id=s.id
left join employees e on es.employee_id=e.id
where employee_name is null and monthly_salary < 2000

 --5. ����� ���� ���������� ���� �� ��������� ��.
 select e.employee_name, s.monthly_salary from employees e
 left join employee_salary es on es.employee_id=e.id
 left join salary s on es.salary_id=s.id
 where monthly_salary is null
 
 --6. ������� ���� ���������� � ���������� �� ���������.
 select e.employee_name, r.role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id
 
 --7. ������� ����� � ��������� ������ Java �������������.
 select e.employee_name, r.role_name from roles_employee re
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id
 where role_name in ('Junior Java developer', 'Middle Java developer', 'Senior Java developer')
 
 --8. ������� ����� � ��������� ������ Python �������������.
 select e.employee_name, r.role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id
 where role_name like '%Python%'
 
 --9. ������� ����� � ��������� ���� QA ���������.
 select e.employee_name, r.role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id
 where role_name like '%QA%'
 
 --10. ������� ����� � ��������� ������ QA ���������.
 select e.employee_name, r.role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id
 where role_name like '%Manual QA%'
 
 --11. ������� ����� � ��������� ��������������� QA
 select e.employee_name, r.role_name from roles_employee re 
 join employees e on e.id=re.employee_id
 join roles r on r.id=re.role_id
 where role_name like '%Automation%'
 
 --12. ������� ����� � �������� Junior ������������
 select e.employee_name,  s.monthly_salary, r.role_name from  employees e
 join  employee_salary es on e.id=es.employee_id
 join  roles_employee re on  e.id=re.employee_id
 join salary s on s.id=es.salary_id 
 join roles r on r.id=re.role_id
 where role_name like '%Junior%'

 --13. ������� ����� � �������� Middle ������������
  select e.employee_name,  s.monthly_salary, r.role_name from  employees e
 join  employee_salary es on e.id=es.employee_id
 join  roles_employee re on  e.id=re.employee_id
 join salary s on s.id=es.salary_id 
 join roles r on r.id=re.role_id
 where role_name like '%Middle%'
 
 -- 14. ������� ����� � �������� Senior ������������
   select e.employee_name,  s.monthly_salary, r.role_name from  employees e
 join  employee_salary es on e.id=es.employee_id
 join  roles_employee re on  e.id=re.employee_id
 join salary s on s.id=es.salary_id 
 join roles r on r.id=re.role_id
 where role_name like '%Senior%'
 
 --15. ������� �������� Java �������������
    select  r.role_name, s.monthly_salary from  employees e
 join  employee_salary es on e.id=es.employee_id
 join  roles_employee re on  e.id=re.employee_id
 join salary s on s.id=es.salary_id 
 join roles r on r.id=re.role_id
 where role_name like '%Java %'
  
 --16. ������� �������� Python �������������
 select r.role_name, s.monthly_salary from roles r
 join roles_employee re on r.id=re.role_id 
 join employee_salary es on re.employee_id=es.employee_id 
 join salary s on s.id=es.salary_id 
 where role_name like '%Python%'
 
 --17. ������� ����� � �������� Junior Python �������������
 select e.employee_name,  s.monthly_salary, r.role_name from  employees e
 join  employee_salary es on e.id=es.employee_id
 join  roles_employee re on  e.id=re.employee_id
 join salary s on s.id=es.salary_id 
 join roles r on r.id=re.role_id
 where role_name like '%Junior%' and role_name like '%Python%'
 
 --18. ������� ����� � �������� Middle JS �������������
  select e.employee_name,  s.monthly_salary, r.role_name from  employees e
 join  employee_salary es on e.id=es.employee_id
 join  roles_employee re on  e.id=re.employee_id
 join salary s on s.id=es.salary_id 
 join roles r on r.id=re.role_id
 where role_name like '%Middle%' and role_name like '%JavaScript%'
  
 --19. ������� ����� � �������� Senior Java �������������
 select e.employee_name, s.monthly_salary, r.role_name from employees e 
 join employee_salary es on e.id=es.employee_id
 join salary s on s.id=es.salary_id
 join roles_employee re on es.employee_id=re.employee_id
 join roles r on r.id=re.role_id
 where role_name like '%Senior%' and role_name like '%Java%' 
 
 --20. ������� �������� Junior QA ���������
 select r.role_name, s.monthly_salary from roles r
 join roles_employee re on r.id=re.role_id 
 join employee_salary es on re.employee_id=es.employee_id 
 join salary s on s.id=es.salary_id 
 where role_name like '%Junior%' and role_name like '%QA%'
 
 --21. ������� ������� �������� ���� Junior ������������
 select AVG(monthly_salary) "������� �� Junior ������������"  from roles r
 join roles_employee re on r.id=re.role_id 
 join employee_salary es on re.employee_id=es.employee_id 
 join salary s on s.id=es.salary_id 
 where role_name like '%Junior%'
 
 --22. ������� ����� ������� JS �������������
 select sum(monthly_salary) "����� ������� JS �������������"  from roles r
 join roles_employee re on r.id=re.role_id 
 join employee_salary es on re.employee_id=es.employee_id 
 join salary s on s.id=es.salary_id 
 where role_name like '%JavaScript%'
 
 --23. ������� ����������� �� QA ���������
 select min(monthly_salary) "min salary QA"  from roles r
 join roles_employee re on r.id=re.role_id 
 join employee_salary es on re.employee_id=es.employee_id 
 join salary s on s.id=es.salary_id 
 where role_name like '%QA%'
 
 --24. ������� ������������ �� QA ���������
  select max(monthly_salary) "max salary QA"  from roles r
 join roles_employee re on r.id=re.role_id 
 join employee_salary es on re.employee_id=es.employee_id 
 join salary s on s.id=es.salary_id 
 where role_name like '%QA%'
 
 --25. ������� ���������� QA ���������
 select count(role_name) "Count QA" from roles r  
 join roles_employee re on r.id=re.role_id  
 where role_name like '%QA%'

 --26. ������� ���������� Middle ������������.
  select count(role_name) "Count Middle" from roles r  
 join roles_employee re on r.id=re.role_id  
 where role_name like '%Middle%'
 
 --27. ������� ���������� �������������
  select count(role_name) Count_developer from roles r  
 join roles_employee re on r.id=re.role_id  
 where role_name like '%developer%'
 
 --28. ������� ���� (�����) �������� �������������.
 select sum(monthly_salary) from salary s 
 join employee_salary es on s.id=es.salary_id  
 join roles_employee re on re.employee_id=es.employee_id 
 join roles r on r.id=re.role_id 
 where role_name like '%developer%'
 
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
 select e.employee_name, r.role_name, s.monthly_salary from employees e 
 join employee_salary es on es.employee_id=e.id 
 join salary s on es.salary_id=s.id 
 join roles_employee re on re.employee_id=es.employee_id
 join roles r on re.role_id=r.id 
 order by monthly_salary 
  
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
  select e.employee_name, r.role_name, s.monthly_salary from employees e 
 join employee_salary es on es.employee_id=e.id 
 join salary s on es.salary_id=s.id 
 join roles_employee re on re.employee_id=es.employee_id
 join roles r on re.role_id=r.id 
 where monthly_salary between 1700 and 2300
 order by monthly_salary 
 
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
   select e.employee_name, r.role_name, s.monthly_salary from employees e 
 join employee_salary es on es.employee_id=e.id 
 join salary s on es.salary_id=s.id 
 join roles_employee re on re.employee_id=es.employee_id
 join roles r on re.role_id=r.id 
 where monthly_salary < 2300
 order by monthly_salary 
 
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
    select e.employee_name, r.role_name, s.monthly_salary from employees e 
 join employee_salary es on es.employee_id=e.id 
 join salary s on es.salary_id=s.id 
 join roles_employee re on re.employee_id=es.employee_id
 join roles r on re.role_id=r.id 
 where monthly_salary in (1100, 1500, 2000)
 order by monthly_salary 
 
