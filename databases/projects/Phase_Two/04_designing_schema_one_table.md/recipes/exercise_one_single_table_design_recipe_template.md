# Exercise One Single Table Design Recipe Template

_Copy this recipe template to design and create a database table from a specification._

## 1. Extract nouns from the user stories or specification

```ruby
# EXAMPLE USER STORY:
# (analyse only the relevant part - here the final line).

# As a music lover,
# So I can organise my records,
# I want to keep a list of albums' titles.

# As a music lover,
# So I can organise my records,
# I want to keep a list of albums' release year.


# My Changed Code Below:
# USER STORY:

# As a coach
# So I can get to know all students
# I want to see a list of students' names.

# As a coach
# So I can get to know all students
# I want to see a list of students' cohorts.
# My End.
```

```ruby
# Nouns:

# album, title, release year


# My Changed Code Below:
# Nouns:

# names, cohorts
# My End.
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

Example:
| Record                | Properties          |
| --------------------- | ------------------  |
| album                 | title, release year

Name of the table (always plural): `albums` 

Column names: `title`, `release_year`


My Work:
| Record                | Properties          |
| --------------------- | ------------------  |
| student               | name, cohort

Name of the table (always plural): `students` 

Column names: `name`, `cohort`
End Of My Work.

## 3. Decide the column types.

[Here's a full documentation of PostgreSQL data types](https://www.postgresql.org/docs/current/datatype.html).

Most of the time, you'll need either `text`, `int`, `bigint`, `numeric`, or `boolean`. If you're in doubt, do some research or ask your peers.

Remember to **always** have the primary key `id` as a first column. Its type will always be `SERIAL`.

```ruby
# EXAMPLE:

# id: SERIAL
# title: text
# release_year: int


# My Changed Code Below:
id: SERIAL
name: text
cohort: text
# My End.
```

## 4. Write the SQL.

```sql
-- -- EXAMPLE
-- -- file: albums_table.sql

-- -- Replace the table name, columm names and types.

-- CREATE TABLE albums (
--   id SERIAL PRIMARY KEY,
--   title text,
--   release_year int
-- );

-- My Changed Code Below:
-- file: students_table.sql

-- Replace the table name, columm names and types.

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  cohort text
);
-- My End.
```

## 5. Create the table.

# EXAMPLE
```bash
psql -h 127.0.0.1 database_name < albums_table.sql
```

# My Changed Code Below:
```bash
psql -h 127.0.0.1 student_directory_1 < students_table.sql
```
# My End.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fdatabases&prefill_File=resources%2Fsingle_table_design_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fdatabases&prefill_File=resources%2Fsingle_table_design_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fdatabases&prefill_File=resources%2Fsingle_table_design_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fdatabases&prefill_File=resources%2Fsingle_table_design_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fdatabases&prefill_File=resources%2Fsingle_table_design_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->