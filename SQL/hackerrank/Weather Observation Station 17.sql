SELECT round(long_W,4)
from station
where lat_n >38.7780
ORDER BY lat_n ASC
LIMIT 1;
