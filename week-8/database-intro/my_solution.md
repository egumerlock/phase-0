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
![](https://github.com/egumerlock/phase-0/blob/master/week-8/database-intro/schemadesign.png)

Release 7:
What are databases for?
Databases are places to store data in a structured way so that it can be easily searched/ queried in the future.
What is a one-to-many relationship?
A one-to-many relationship is one of the most commonly used types of relationships where one key can hold many values.  For example, a table full of customers could have a relationship with a table full of orders, but each customer would have multiple orders associated with them.
What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a key in a relational database that is unique, and identifies an entity.  A relational database must always have one and only one primary key.  Typically they appearas columns.  A foreign key is a key from another table that refers to a specific key, usually the primary key.  A primary key can be targeted by multiple foreign keys from other tables, but a primary key does not have to be the target of anything.
How can you select information out of a SQL database? What are some general guidelines for that?
You can select information out of an SQL database using sqlite3, with a general command of `select data from database_filename;`. After that command, you can tack on additional commands to refine your search, using `where column_name` is a value or > value, `order by` with `asc` ascending or `desc` descending values.  You can join two tables tacking on this command after `from table_name` `inner join other_table_name on` and give a case statement there on what you would like to connect them by (which keys).