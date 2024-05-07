-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
-- # Difficulty : Medium

select 
     h.hacker_id, h.name
from submissions s
    inner join challenges c on s.challenge_id = c.challenge_id
    inner join difficulty d on c.difficulty_level = d.difficulty_level and s.score = d.score
    inner join hackers h on s.hacker_id = h.hacker_id

group by h.hacker_id, h.name
having count(s.score) > 1
order by count(s.score) desc, h.hacker_id
;


/* ON d.difficulty_level = c.difficulty_level AND s.score = d.score -> omitting where clause to include full scores only
*/