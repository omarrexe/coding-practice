SELECT sum(city.population)
from city
LEFT JOIN country
on city.countrycode = country.code
WHERE continent ='Asia'