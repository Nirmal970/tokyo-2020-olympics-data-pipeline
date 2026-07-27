use Tokyo2022olympics

select * from Athletes;

select * from Coaches;

select * from Medals;

select * from medals_total;

select * from technical_officials;

Alter table Medals add constraint fk foreign key(athlete_id) references Athletes(athlete_id)

select discipline,count(*) as 'number of athletes' from Athletes group by discipline;

select * from Athletes where country_code='USA' and discipline_code='WLF'

select * from Athletes where name like '%James'

select * from Athletes where birth_date=(select max(birth_date) from Athletes)

select name from coaches where birth_date between '1975-01-01' and '2000-12-31';

select top 5 discipline,count(name) as 'number of coaches' from coaches group by discipline order by count(name) DESC 

select discipline,avg(year(getdate())-year(birth_date)) as 'average age' from Coaches group by discipline order by [average age] DESC;

select top 5 country_code,avg(year(getdate())-year(birth_date)) as 'average age' from Coaches group by country_code order by [average age] DESC;

select gender,count(*) as 'total medals' from Medals group by gender;

select top 3 country,count(*) as 'total medals' from Medals group by Country_code,Country order by 'total medals' DESC;

select a.athlete_id,a.name,count(*) as 'total medals' from Athletes a join medals m 
on a.athlete_id=m.athlete_id group by a.athlete_id,a.name order by 'total medals' DESC;

select athlete_name,count(distinct event) as 'number of events' from medals where medal_code=1 
group by athlete_id,athlete_name having count(distinct event)>1 order by 'number of events' DESC;

select distinct name from technical_officials where birth_date>'1975-01-01';

select country,count(*) as 'technical officials' from technical_officials group by country order by 'technical officials' DESC;

select birth_date, STRING_AGG(name, ', ') AS officials_with_same_birthdate from technical_officials group by birth_date
having count(DISTINCT name) > 1;











