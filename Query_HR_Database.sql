--Retrieve all employees whose address is in Elgin,IL.
select * 
from EMPLOYEES
where ADDRESS like '%Elgin,IL';

--Retrieve all employees who were born during the 1970's.
select * 
from EMPLOYEES
where B_DATE like '197%';

--Retrieve all employees in department 5 whose salary is between 60000 and 70000 .
select * 
from EMPLOYEES
where DEP_ID = 5 and SALARY between 60000.00 and 70000.00;

--Retrieve a list of employees ordered by department ID.
select * 
from EMPLOYEES
order by DEP_ID;

--Retrieve a list of employees ordered in descending order by department ID and within each 
--department ordered alphabetically in descending order by last name.
select * 
from (select * 
          from EMPLOYEES
          order by DEP_ID desc) 
order by L_NAME desc;

--For each department ID retrieve the number of employees in the department.
select DEP_ID, count(DEP_ID) as EMP_COUNT 
from EMPLOYEES
group by DEP_ID;

--For each department retrieve the number of employees in the department, and the average 
--employees salary in the department.
select DEP_ID, count(DEP_ID) as EMP_COUNT, avg(SALARY) as AVG_SALARY 
from EMPLOYEES
group by DEP_ID;

--Label the computed columns in the previous result as “NUM_EMPLOYEES” and 
--“AVG_SALARY”.
select DEP_ID, count(DEP_ID) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY 
from EMPLOYEES
group by DEP_ID;

--Order the previous result by average salary.
select DEP_ID, count(DEP_ID) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY 
from EMPLOYEES
group by DEP_ID 
order by AVG_SALARY; 

--Limit the previous result to departments with fewer than 4 employees. 
select DEP_ID, count(DEP_ID) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY 
from EMPLOYEES
group by DEP_ID  
having count(DEP_ID) < 4  
order by AVG_SALARY; 

--Retrieve a list of employees ordered by department name, and within each department
--ordered alphabetically in descending order by last name.
select D.DEP_NAME, E.F_NAME, E.L_NAME
from EMPLOYEES as E, DEPARTMENTS as D 
where E.DEP_ID = D.DEPT_ID_DEP
order by D.DEP_NAME, E.L_NAME desc;
