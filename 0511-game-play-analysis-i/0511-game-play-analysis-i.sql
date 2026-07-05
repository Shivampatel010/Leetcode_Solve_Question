# Write your MySQL query statement below
-- select a.player_id, a.event_date as first_login
-- from Activity a 
-- Join Activity b on a.playerid = b.playerid 

select player_id, Min(event_date) as first_login from Activity group by player_id