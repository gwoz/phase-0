Release 5 - SELECTing data from a database
==========================================

*1. Select all data for all states.*

	SELECT * FROM states;


*2. Select all data for all regions.*

	SELECT * FROM regions;


*3. Select the state_name and population for all states.*

	SELECT state_name, population FROM states;


*4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.*

	SELECT state_name, population FROM states ORDER BY population DESC;


*5. Select the state_name for the states in region 7.*
	
	SELECT state_Name FROM states WHERE region_id = 7;


*6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.*

	SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;


*7. Select the state_name for states with a population between 1 million and 1.5 million people.*

	SELECT state_name FROM states WHERE population > 1000000 AND population < 1500000;


*8. Select the state_name and region_id for states ordered by region in ascending order.*

	SELECT state_name, region_id FROM states ORDER BY region_id ASC;


*9. Select the region_name for the regions with "Central" in the name.*

	SELECT region_name FROM regions WHERE region_name LIKE "%Central%";


*10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).*

	SELECT region_name, state_name FROM regions JOIN states ON regions.id = states.region_id;


Release 6 - Your Own Schema
===========================

![Schema](schema.png)


Release 7 - Reflect
===================

*What are databases for?*
ANS: Databases are for storing data in an organized way so that it can be retrieved at a later time.

*What is a one-to-many relationship?*
ANS: A one to many relationship is when you have one thing that is related to many other things. For example, birthdays are a one to many thing because each date has many people that were born on it. We don't all have our own date (Although some might argue that!).

*What is a primary key? What is a foreign key? How can you determine which is which?*
ANS: A primary key is the unique identifier for a record in a database.

*How can you select information out of a SQL database? What are some general guidelines for that?*
ANS: You can select anything you want so long as it was defined as a field in that database. It seems like following the template of "SELECT (column) FROM (table) CONDITION (anything)" is a pretty common way to get access to data in a database.