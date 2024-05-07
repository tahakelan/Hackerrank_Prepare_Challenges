-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
-- # Difficulty : Medium

select
    w.id, p.age, w.coins_needed, w.power
from wands w
    join wands_property p on w.code = p.code and p.is_evil = 0
where w.coins_needed=(
                            /*selecting the cheapest wands for a given combination
                            of power and age*/
                            select min(coins_needed)
                            from wands w1
                            join wands_property p1 on w1.code=p1.code
                            where w1.power=w.power and p1.age=p.age)    
                            
order by w.power desc, p.age desc
;