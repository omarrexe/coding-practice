SELECT
max(if(OCCUPATION ='Doctor',name,null)) as Doctor,
max(if(OCCUPATION ='Professor',name,null)) as Professor,
max(if(OCCUPATION ='Singer',name,null)) as Singer,
max(if(OCCUPATION ='Actor',name,null)) as Actor

FROM (
SELECT * ,ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) as rn
FROM OCCUPATIONS ) as temp
GROUP BY rn
