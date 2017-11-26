-- Binary Tree Nodes
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT N, CASE
            WHEN P IS NULL THEN 'Root'
            WHEN (SELECT COUNT(*) FROM BST child WHERE child.P = father.N) > 0 THEN 'Inner'
            ELSE 'Leaf'
          END
FROM BST father
ORDER BY N;
