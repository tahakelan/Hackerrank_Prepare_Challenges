-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
-- # Difficulty : Medium

select 
	s.hacker_id, h.name, sum(s.score) as total_score
from
	(select 
	hacker_id, challenge_id, max(score) as score
	from submissions
	group by hacker_id, challenge_id
 	) as s
join hackers h
	where h.hacker_id = s.hacker_id
group by s.hacker_id, h.name
having total_score >0
order by total_score desc, s.hacker_id 
;