SELECT distinct city
from station
where (city LIKE 'E%'
         OR city LIKE 'A%'
         OR city LIKE 'I%'
         OR city LIKE 'O%'
         OR city LIKE 'U%')
         AND
        (city LIKE '%a' or
        city LIKE '%e' or
        city LIKE '%i' or
        city LIKE '%o' or
        city LIKE '%u')
