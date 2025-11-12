(SELECT city ,length(city)
from station 
order by length(city)ASC ,city ASC
limit 1)
UNION
(SELECT city,length(city)
from station 
order by length(city) DESC,city ASC 
limit 1 )