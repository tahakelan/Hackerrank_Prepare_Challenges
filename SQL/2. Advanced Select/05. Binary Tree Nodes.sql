-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- # Difficulty : Medium

select N
, case when P is null then 'Root'
          when N in (select distinct P from BST) then 'Inner'
          else 'Leaf'
          end as node_type
from BST
order by N
;
       
	