create  database employee_attrition;
use  employee_attrition;

select * from emp;

-- Q1. Find the total number of employees.
select  count(*) from emp;

-- Q2. Count the employees who left the company.
select count(*) as employee_Left from emp
where Attrition="yes";

-- Q3. Count the employees who stayed in the company.
select count(*)  as employee_Stayed from emp
where Attrition="no";

-- Q4. Calculate the overall attrition rate in percentage.
SELECT
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS attrition_rate
FROM hr_data;

-- Q5. Count employees in each department.
select count(*),department from emp
group by department;

-- Q6. Count employees who left the company in each department.
select count(*),department from emp 
where Attrition="yes"
group by department
 order by count(*) desc;
 
-- Q7. Find the job roles with the highest number of employees who left.
select jobrole,COUNT(*) FROM emp
where Attrition="yes"
group by jobrole
order by count(*) desc
;

-- Q8. Count employees by overtime and attrition status.
select count(*),overtime,attrition from  emp
group by overtime,attrition
order by overtime,attrition;

-- Q9. Count employees who left the company by gender.
select count(*), gender from  emp
where attrition="yes"
group by gender
order by count(*) desc;

-- Q10. Count employees who left the company by business travel category.
select count(*),businesstravel from emp
where attrition="yes"
group by businesstravel
order by count(*) desc;

-- Q11. Find the average monthly income for each department.
select round(avg(monthlyincome),2),department from emp
group by department;

-- Q12. Find the average job satisfaction for each department.
select round(avg(jobsatisfaction),2),department from emp
group by department;

-- Q13. Count employees by job satisfaction level.
select count(*) ,jobsatisfaction from emp
group by jobsatisfaction;

-- Q14. Find the average age of employees in each department.
select round(avg(age),2),department from emp
group by department;

-- Q15. Find employees who have worked at the company for more than 10 years.
select * from  emp
where yearsatcompany>10;

-- Q16. Find employees whose job satisfaction level is 1 or 2.
select *  from emp
where jobsatisfaction in(1,2);

-- Q17. Count employees who work overtime.
select count(*) from emp
where overtime="yes";

-- Q18. Find the top 5 job roles with the highest employee count.
select jobrole,count(*) from emp 
group by jobrole
order by count(*) desc
limit 5;

-- Q19. Find the department with the highest number of employees who left.
select department,count(*) from emp
where attrition="yes"
group by department
order by count(*) desc;

-- Q20. Count employees by marital status and attrition status.
select count(*) , maritalstatus,attrition from emp
group  by  maritalstatus,attrition;