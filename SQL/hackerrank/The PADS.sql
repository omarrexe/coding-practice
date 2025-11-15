
SELECT   concat(name,'(',substring(occupation,1,1),')')
from occupations
ORDER by name ASC;

SELECT concat('There are a total of ',count(occupation),' ',lower(occupation),'s.')
from occupations
GROUP by occupation
ORDER BY count(occupation) ,occupation ASC;



