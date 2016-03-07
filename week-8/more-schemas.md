Release 2:

[](https://github.com/egumerlock/phase-0/blob/master/week-8/imgs/one_to_one_schema.png)

This is a one to one schema because for every row in the student table, there will be a row in the address table with the correpsonding information for that student.  In other words, for every instance of data (student) in the original table, there will be one instance of data (address) in the relational table.

Release 4:

[](https://github.com/egumerlock/phase-0/blob/master/week-8/imgs/grocerylistschema.png)

Items can belong to many grocery lists, and grocery lists can contain many items.  Many to many relationship.

Release 6:

Reflect:
What is a one-to-one database?
A one to one database is one where one key (student) has one foreign key (address) and they are linked by an id number.
When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You would use a one to one database when a key is a unique identifier.  For example, every person has a social security number that is unique.  You may not want this connected to the person's name in the table, and so you would put it in another table connected by a foreign key.
What is a many-to-many database?
A many-to-many database is one where there are many keys that could also connect to another table of many keys.  So for example, a grocery list can contain many items, and the items can be in multiple grocery lists.
When would you use a many-to-many database? (Think generally, not in terms of the example you created).
You would use a many-to-many database to have two databases of non-unique information linked.  So if you had a database of names and a database of projects, you could see that a person could have many projects, and a project could contain many names.
What is confusing about database schemas? What makes sense?
The join table is confusing for me.  I don't understand how putting an artist_id on an artwork allows you to have multiple artist_ids on that artwork.  It seems that the join table would still only be able to contain one artist_id, in which case its a one-to-one relationship.  Also, what doesn't make sense really is that the schemas are shown as vertical lists, whereas in tables, they would be visually columns.  Why you wouldn't do this in your database design is still beyond my knowledge.  One to one relationships make sense, but also why would you not simply contain the information in one table? I guess tables would get out of hand in size.  Many-to-many relationships also make sense, but the join table is the confusing part.