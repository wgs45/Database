# **MySQL Syntax - Week 5** 📚

---

## **UPDATE - Modifying Data**

The `UPDATE` statement modifies existing records in a table.

### **Syntax:**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

⚠ **Warning:**

- Always use `WHERE` to prevent updating all records accidentally.
- If `WHERE` is **omitted**, all records will be updated (blocked by `SQL_SAFE_UPDATES`).

### **Example:**

1️⃣ Update the last name of the actor with `actor_id = 1`:

```sql
UPDATE sakila.actor
SET last_name = 'GUINESS123456'
WHERE actor_id = 1;
```

2️⃣ Update all actors with `last_name = 'AKROYD'`:

```sql
UPDATE sakila.actor
SET last_name = 'AKROYD123'
WHERE last_name = 'AKROYD';
```

---

## **Disabling SQL_SAFE_UPDATES**

If you want to update all records (without `WHERE`), MySQL blocks it by default.

### **Steps to Disable Safe Update Mode:**

```sql
SET SQL_SAFE_UPDATES = 0;  -- Disable safe update mode
UPDATE sakila.actor SET last_name = '404NOTFOUND';  -- Update all records
SET SQL_SAFE_UPDATES = 1;  -- Enable safe update mode again
```

---

## **DELETE - Removing Data**

The `DELETE` statement removes records from a table.

### **Syntax:**

```sql
DELETE FROM table_name WHERE condition;
```

⚠ **Warning:**

- **Without `WHERE`, ALL records will be deleted** (blocked by `SQL_SAFE_UPDATES`).
- **Use `TRUNCATE`** if you need to delete all rows efficiently.

### **Example:**

1️⃣ Delete a specific record:

```sql
DELETE FROM world.city WHERE ID = 1;
```

2️⃣ Delete all records (if safe mode is disabled):

```sql
DELETE FROM sakila.actor;
```

---

## **MIN & MAX - Finding Extremes**

The `MIN()` and `MAX()` functions return the smallest and largest values in a column.

### **Syntax:**

```sql
SELECT MIN(column) FROM table_name;
SELECT MAX(column) FROM table_name;
```

### **Example:**

1️⃣ Find the smallest population in the `world.city` table:

```sql
SELECT MIN(population) FROM world.city;
```

2️⃣ Find the largest population under 100,000:

```sql
SELECT MAX(population) FROM world.city WHERE population < 100000;
```

---

## **AS - Column Aliases**

The `AS` keyword renames columns in query results for better readability.

### **Syntax:**

```sql
SELECT column AS alias_name FROM table_name;
```

### **Example:**

1️⃣ Rename the `MIN(population)` result as `Min_Population`:

```sql
SELECT MIN(population) AS Min_Population FROM world.city;
```

---

## **COUNT, AVG, SUM - Aggregation Functions**

These functions perform calculations on column values:

- `COUNT(*)` → Counts rows
- `AVG(column)` → Calculates the average
- `SUM(column)` → Adds up values

### **Syntax:**

```sql
SELECT COUNT(column) FROM table_name;
SELECT AVG(column) FROM table_name;
SELECT SUM(column) FROM table_name;
```

### **Example:**

1️⃣ Count the number of cities with a population over 100,000:

```sql
SELECT COUNT(*) FROM world.city WHERE population > 100000;
```

2️⃣ Find the average population:

```sql
SELECT AVG(population) FROM world.city;
```

3️⃣ Calculate the total population:

```sql
SELECT SUM(population) FROM world.city;
```
