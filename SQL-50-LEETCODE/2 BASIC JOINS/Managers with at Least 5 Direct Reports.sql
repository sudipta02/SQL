-- Write your PostgreSQL query statement below
select e2.name
from employee e1
join employee e2
on e1.managerId = e2.id
-- where e1.managerId is not null
group by e2.id, e2.name
having count(e2.id) >= 5;