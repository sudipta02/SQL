-- Write your PostgreSQL query statement below
select stu.student_id, stu.student_name, sub.subject_name, count(e.student_id) as attended_exams
from students stu
cross join subjects sub
left join examinations e
on e.student_id = stu.student_id and e.subject_name = sub.subject_name
group by stu.student_id, stu.student_name, sub.subject_name
order by stu.student_id, sub.subject_name;