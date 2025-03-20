# **MySQL Syntax - Week 3** 📚

---

## **Structured Query Language (SQL)**

SQL allows you to interact with a database by performing the following operations:  
✅ Read data (**SELECT**)  
✅ Insert records (**INSERT**)  
✅ Update records (**UPDATE**)  
✅ Delete records (**DELETE**)  
✅ Create a new database (**CREATE DATABASE**)  
✅ Create a new table (**CREATE TABLE**)

**Key Point:** SQL keywords are **case-insensitive** (e.g., `select` and `SELECT` are the same).

---

## **SELECT - Retrieving Data**

The `SELECT` statement is used to retrieve data from a table.

### **Syntax:**

```sql
SELECT column1, column2, ... FROM table_name;
```

### **Examples:**

1️⃣ Retrieve **all columns** from the `customer` table in the `sakila` database:

```sql
SELECT * FROM sakila.customer;
```

2️⃣ Retrieve **specific columns** (`first_name` and `last_name`):

```sql
SELECT first_name, last_name FROM sakila.customer;
```

---

## **WHERE - Filtering Data**

The `WHERE` clause filters records based on a condition.

### **Syntax:**

```sql
SELECT column1, column2 FROM table_name WHERE condition;
```

### **Example:**

Retrieve all movies with a duration of **90 minutes or more**:

```sql
SELECT * FROM sakila.film WHERE length >= 90;
```

**Notes:**

- **Text values** must be enclosed in **quotes (`' '`)**, while **numbers** should not.
- Advanced filtering options (`BETWEEN`, `LIKE`, `IN`) will be covered later.

---

## **AND, OR, NOT - Combining Conditions**

### **Syntax & Usage:**

1️⃣ **AND** → Records must satisfy **all** conditions.

```sql
WHERE condition1 AND condition2 AND condition3;
```

2️⃣ **OR** → Records must satisfy **at least one** condition.

```sql
WHERE condition1 OR condition2 OR condition3;
```

3️⃣ **NOT** → Records **must not** satisfy a condition.

```sql
WHERE NOT condition;
```

### **Example:**

Retrieve movies that are at least **90 minutes long** AND have a **rating of 'PG-13'**:

```sql
SELECT * FROM sakila.film WHERE length >= 90 AND rating = 'PG-13';
```

Retrieve movies that are either **90 minutes long** OR have a **rating of 'PG'**:

```sql
SELECT * FROM sakila.film WHERE length >= 90 OR rating = 'PG';
```

Retrieve movies that **are NOT rated 'R'**:

```sql
SELECT * FROM sakila.film WHERE NOT rating = 'R';
```
