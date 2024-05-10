-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
-- # Difficulty : Medium

select 
	s.name
from students s
	join friends f on s.id = f.id
	join packages p1 on s.id = p1.id
	join packages p2 on  f.friend_id = p2.id
where p1.salary < p2.salary
order by p2.salary
;