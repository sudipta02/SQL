-- Write your PostgreSQL query statement below
select p.project_id, round(avg(e.experience_years),2) average_years
from project p
join employee e
on e.employee_id = p.employee_id
group by p.project_id;