/* SELECT name
FROM students
WHERE marks >75
ORDER by
    RIGHT(name , 3) ASC,
    ID ASC */


SELECT name
FROM students
where marks > 75
ORDER BY
substring(name , -3) ASC ,
id ASC