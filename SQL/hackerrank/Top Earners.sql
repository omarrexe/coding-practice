SELECT max(salary*months) AS earnings ,SPACE(2),count(*)
FROM employee
WHERE (earnings) =(SELECT max(earnings) FROM employee)

