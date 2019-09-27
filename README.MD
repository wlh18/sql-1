# SQL One

In this lecture we introduce SQL (Structured Query Language) and PostgreSQL.

SQL is a domain-specific language used in programming, and it is designed for managing data held in a relational database management system. 

PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and technical standards compliance. PostgreSQL is the language that we will be using to interact with our database to store, retrieve, delete, and update data.

An SQL server is a database management system which is mainly used for e-commerce and providing different data warehousing solutions. PostgreSQL is an advanced version of SQL which provides support to different functions of SQL like foreign keys, subqueries, triggers, and different user-defined types and functions.

For more information on the differences between SQL and PostgreSQL, check out this article: https://www.educba.com/sql-server-vs-postgresql/

## Database

A database is an organized collection of data, generally stored and accessed electronically from a computer system. Where databases are more complex, they are often developed using formal design and modeling techniques.

The database management system (DBMS) is the software that interacts with end users, applications, and the database itself to capture and analyze the data. The DBMS software additionally encompasses the core facilities provided to administer the database. The sum total of the database, the DBMS and the associated applications can be referred to as a "database system". Often the term "database" is also used to loosely refer to any of the DBMS, the database system or an application associated with the database.

PostgreSQL is a **relational database**. A relational database is organized based on the "relational model of data." This model organizes data into one or more tables (or “relations”) of rows and columns, with a unique key for each row. Usually, each entity type--or resource--that is described in a relational database has its own table with the rows representing instances of that type of entity, and the columns representing values attributed to that instance. Since each row in a table has its own unique key, rows in a table can be linked to rows in other tables by storing the unique key of the row to which it should be linked (where such unique key is known as a “foreign key”). Data relationships of arbitrary complexity can be represented using the simple set of concepts present in relational databases.

To put it simply, relational databases look like Excel spreadsheets, and they work by relating and referencing rows and columns from one table to another.

Virtually all relational database systems use SQL (Structured Query Language) as the basic language for querying and maintaining the database, and relational databases are extremely popular. The reasons for the dominance of relational databases are: simplicity, robustness, flexibility, performance, scalability and compatibility in managing generic data.

A NoSQL database, or **non-relational database**, provides a mechanism for storage and retrieval of data that is modeled in means other than the tabular relations used in relational databases.

An example of a relational databse table looks like this:

![Table](images/table.png)

Tables in a relational database are built based on a schema.

## Schema

A **database schema** is a blueprint for how a database is structured. Put another way, a database schema is the skeleton structure that represents the logical view of the entire database. It defines how the data is organized and how the relations among them are associated. A database schema contains a collection of relation schemas for a whole database.

A **relation schema** is the logical definition of a table--it defines what the name of a table is, and what the name and datatype of each column is.


A relation schema for the table above might look similar to this:

```sql
CREATE TABLE instructors (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    country TEXT
)
```

Above, we are creating an instructors table, and specifying which datatypes are allowed to be inserted into specified columns of the table.

## Datatypes

When setting up our schema we will determine what **datatype** is allowed in our columns. There are a multitude of datatypes possible within PostgreSQL, so we will only cover the following here. 

### Empty Values

`Null` - This data type means an empty value.

### Numeric Values

`Integer` - This data type will define a round number.

`Decimal` - This data type can have unlimited decimal values.

`Float` - This data type can have values up to 15 decimal places.

`Serial` - This data type is an incrementing integer, usally used along with the `Primary Key` constraint in order to establish a unique identifier for a row in a table.

### Character Values

`Text` - This data type allows you to enter unlimited characters as a string.

`Varchar(n)` - This data type and its corresponding parameter enable you to limit the number of characters inserted as a string.

### Boolean Values

`Boolean` - This data type is either true or false. 

## Statements

SQL statements are queries that we make to our database.

A few things to note about SQL Statements:

1. We use a semicolon to declare the end of a statement.

2. We cannot have a trailing comma on our scripts. 

3. We need to use single quotes, not double.

4. It's common practice to write queries using all capital letters, but this is not necessary. Choose either uppercase or lowercase, but remain consistent. 

### Insert Statement

We can use `insert statements` to add data into our tables. The syntax for an insert statement looks like the following:

```sql
INSERT INTO instructors
(name, age, country)
VALUES
('Zach', 26, 'USA')
```

Above, we are adding a person into the database table instructors. Insert statements begin with the `INSERT INTO` keyword followed by the name of the table we are inserting data into. Then, in parentheses, we select the column names we would like to add to. We then use the `VALUES` keyword, followed by another pair of parentheses to include the specific data we would like to insert into the corresponding columns.

> Note: It's import that the data in the VALUES parentheses line up with the column order specified. 

### Select Statement

`Select` statements are used to query our database for information. The structure for a `select` statement looks like the following.


```sql
SELECT name
FROM instructors
```

```sql
SELECT *
FROM instructors
```

Above, we declare a select statement using the `SELECT` keyword. It is followed by the column name that we want to select data from. In this case, we used an asterik to say 'all' the data from every column. Then we declare what table to select from using the `FROM` keyword.

#### WHERE CLAUSE

We can use a `where clause` to add a filter to our select statements.

```sql
SELECT *
FROM instructors
WHERE name = 'Zach'
```

##### Comparison Operators

`>` - Greater than.

```sql
SELECT *
FROM instructors
WHERE id > 2
```

`<` - Less than.

```sql
SELECT *
FROM instructors
WHERE id < 2
```

`>=` - Greater than or equal to.

```sql
SELECT *
FROM instructors
WHERE id >= 2
```

`<=` - Less than or equal to.

```sql
SELECT *
FROM instructors
WHERE id <= 2
```

`!=` - Does not equate.

```sql
SELECT *
FROM instructors
WHERE id != 2
```

##### Logical Operators

`AND` - Check for multiple conditions to be true.

```sql
SELECT *
FROM instructors
WHERE id != 2
AND id < 3
```

`OR` - Check for only one of multiple conditions to be true.

```sql
SELECT *
FROM instructors
WHERE name = 'Zach'
OR id = 2
```

##### Null and Not Null

`IS NULL` - Checks for a value to be null.

```sql
SELECT *
FROM instructors
WHERE name IS NULL
```

`IS NOT NULL` - Checks for a value NOT to be null.

```sql
SELECT *
FROM instructors
WHERE name IS NOT NULL
```

##### IN Condition

`IN` - This is used as shorthand syntax to act as multiple `OR` conditions.

```sql
SELECT *
FROM instructors
WHERE name IN ('Zach', 'Matt', 'Josh');
```

If we didn't use the `IN` key word, our statement would look like this

```sql
SELECT *
FROM instructors
WHERE name = 'Zach'
OR name = 'Matt'
OR name = 'Josh';
```

##### BETWEEN Condition

`BETWEEN` - This is used to retrieve values in between a range.

```sql
SELECT *
FROM instructors
WHERE id BETWEEN 1 AND 3;
```

#### LIMIT

The `LIMIT` clause will allow you to return a certain amount of rows from a select statement.

```sql
SELECT *
FROM instructors
LIMIT 2
```

This would return the first two rows of data from the instructors table.

#### ORDER BY

`ORDER BY` - This clause will sort the records in our result. This clause can only be used in select statements.

```sql
SELECT *
FROM instructors
ORDER BY id
```

This will organize how result in ascending order by default.

##### ASC

`ASC` is the keyword we can use with order by to sort our records in the result in ascending order.


```sql
SELECT *
FROM instructors
ORDER BY id ASC
```

##### DESC

`DESC` is the keyword we can use with order by to sort our records in the result in descending order.


```sql
SELECT *
FROM instructors
ORDER BY id DESC
```

### SQL Functions

There are "functions" that we can use with PostgreSQL. This will usually handle some sort of mathematical logic for us.

`count()` - This returns the count of an expression.

```sql
SELECT count(id)
FROM instructors
```

> It's important to note that count does not count null values. Pass in the `*` to account for all rows.

`min()` - This returns the minimum value of an expression.

```sql
SELECT min(age)
FROM instructors
```

Above, we are finding the youngest racer.

`max()` - This returns the maximum value of an expression.

```sql
SELECT max(age)
FROM instructors
```

Above, we are returning the oldest racer.

`sum()` - This returns the summed value of an expression.

```sql
SELECT sum(age)
FROM instructors
```

Above, we now have the sum of the ages for all the instructors.

`avg()` - This function returns the average value of an expression.

```sql
SELECT avg(age)
FROM instructors
```

Above, we have found the average age of the instructors.

### Update Statements

We can  update our data inside of a database by using an `update statement`.

```sql
UPDATE instructors
SET name = 'Chris'
WHERE id = 2
```

Above, we have just updated the name for the user with the id of 2. We first use the `UPDATE` keyword followed by the name of the table we are updating. Then we `SET` the name to "Chris" where the user id equals 2.

### Delete Statements

We can remove or destroy data from our databased by using a `delete statement`.

```sql
DELETE FROM instructors
WHERE id = 2
```

We first use the `DELETE FROM` keyword, then declare the table to remove from. We then choose the id of the racer we want to remove.

> Make sure to add the where clause or you would remove everything in the table!

### Dropping A Table

We can drop our tables, if we feel the need to remove them. Be careful doing this, because we can not restore tables that have been dropped. This could lead to a lot of problems, so just keep that in mind!

```sql
DROP TABLE instructors
```
