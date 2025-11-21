SELECT round((max(lat_N)-min(lat_N))+(max(long_W)-min(long_W)),4)
from station
