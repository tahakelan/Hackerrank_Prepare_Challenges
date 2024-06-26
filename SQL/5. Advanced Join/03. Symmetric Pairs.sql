-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true
-- # Difficulty : Medium

select a.x, a.y
    from functions a join functions b on a.x=b.y and b.x=a.y
    group by a.x, a.y
    having count(a.x)>1 or a.x<a.y
order by a.x
;
