
SELECT CASE
    WHEN g.grade < 8 THEN NULL
    ELSE s.name
END ,g.grade, s.marks

FROM students as s
INNER JOIN grades as g
on s.marks between g.min_mark AND g.max_mark
order by g.grade DESC , s.name ASC
