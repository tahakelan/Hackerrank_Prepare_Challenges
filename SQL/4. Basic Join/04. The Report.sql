-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- # Difficulty : Medium

select
    case when Grade>=8 then Name else Null end as Student_name
    , Grade, Marks
from Students s 
    join Grades g on (s.Marks between g.Min_Mark and g.Max_Mark)
order by Grade desc, Name, Marks
;