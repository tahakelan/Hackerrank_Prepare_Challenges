-- https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true
-- Difficulty: Hard

select 
      c.contest_id, c.hacker_id, c.name
    , sum(s.total_submissions) as total_submissions, sum(s.total_accepted_submissions) as total_accepted_submissions
    , sum(v.total_views) as total_views, sum(v.total_unique_views) as total_unique_views
from contests c 
    left join colleges cl on c.contest_id = cl.contest_id
    left join challenges ch on cl.college_id = ch.college_id
    left join 
      -- pre-summing this so there's only single row per challenge 
      -- directly joining multiple rows would cause cartesian join leading to inflated sum amount
        (select 
            challenge_id, sum(total_views) as total_views, sum(total_unique_views) as total_unique_views
         from view_stats
         group by challenge_id
        ) as v
        on ch.challenge_id = v.challenge_id
    left join 
      -- pre-summing this so there's only single row per challenge 
      -- directly joining multiple rows would cause cartesian join leading to inflated sum amount
        (select 
            challenge_id, sum(total_submissions) as total_submissions, sum(total_accepted_submissions) as total_accepted_submissions
         from submission_stats
         group by challenge_id
        ) as s
        on ch.challenge_id = s.challenge_id
 
group by c.contest_id, c.hacker_id, c.name
having (total_submissions + total_accepted_submissions + total_views +  total_unique_views) > 0
order by c.hacker_id
;
