Release 5:

1. select * from states;

2. select * from regions;

3. select state_name, population from states;

4. select state_name, population from states order by population desc;

5. select state_name from states where region_id in (7);

6. select state_name, population_density from states where population_density > 50 order by population_density asc

7. select state_name from states where population between 1000000 and 1500000;

8. select state_name, region_id from states order by region_id asc;

9. select region_name from regions where region_name like '%Central%';

10. select region_name, state_name from states inner join regions on states.region_id=regions.id order by region_id;

Release 6:
![][]