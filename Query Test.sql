-- M.Abdurrahman Shidiq
use world;
select*from city;
select*from country;
select*from countrylanguage;

-- #1
select c.id, c.name, c.CountryCode, c.District, c.Population
from country co
join city c on c.CountryCode = co.Code
where c.CountryCode = 'IDN'
order by c.Population desc
limit 10;

-- #2

select c.id, c.name as 'Nama_kota', c.District, c.Population
from city c
order by c.Population desc
limit 10;

-- #3
select co.Code, co.Name, cl.Language, cl.IsOfficial, cl.Percentage
from country co
join countrylanguage cl on cl.CountryCode = co.Code
where cl.Language = 'English'
order by cl.Percentage desc
limit 10;

-- #4
select co.Name, co.Continent, co.LifeExpectancy, co.GNP
from country co
where co.Continent = 'Asia' and co.LifeExpectancy > (select avg(LifeExpectancy) from country where Continent='Europe')
order by co.LifeExpectancy desc
;

