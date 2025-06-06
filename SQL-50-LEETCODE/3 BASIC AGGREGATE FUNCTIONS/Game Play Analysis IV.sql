# Write your MySQL query statement below
select round(count(b.player_id)/count(first_logins.player_id), 2) as fraction
from (
    select player_id, event_date
    from activity a
    where event_date = (
        select min(event_date)
        from activity
        where player_id = a.player_id
    )
) as first_logins
left join activity b
on b.player_id = first_logins.player_id and datediff(b.event_date,first_logins.event_date) = 1;