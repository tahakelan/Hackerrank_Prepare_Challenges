-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- # Difficulty : Medium

select  h.hacker_id, h.name, count(*) as challenges_created
from hackers h
join challenges c on h.hacker_id = c.hacker_id
group by  h.hacker_id, h.name
having challenges_created = (
                /* Getting max number created */
                select count(*)
                from challenges
                group by hacker_id
                order by count(*) desc
                limit 1) 
        or 
        challenges_created in (
                /* Getting all hackers who created challenges less than max created and who have not created the same number of challenges with anyone else */
                select challenges_created
                from (select hacker_id, count(*) AS challenges_created
                      from challenges
                      group by hacker_id
                      order by count(*) desc) as counts
                group by challenges_created
                having count(*) = 1)                                                   
order by challenges_created desc, h.hacker_id
;