-- Write your PostgreSQL query statement below
select r.contest_id, round(count(distinct r.user_id)*100.0/total.total_users, 2) percentage
from register r
join (select count(*) as total_users from users) total
on true
group by r.contest_id, total.total_users
order by percentage desc, r.contest_id asc;