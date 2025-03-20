# **MySQL Syntax - Week 4** 📚

---

## **ORDER BY - Sorting Query Results**

The `ORDER BY` clause sorts the query results based on one or more columns.

### **Syntax:**

```sql
SELECT column1, column2, ... FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;
```

- `ASC` (Ascending) → Sorts from **small to large** (default).
- `DESC` (Descending) → Sorts from **large to small**.

### **Example:**

Sort the `sakila.actor` table by `last_name` in **descending** order, and by `first_name` in **ascending** order:

```sql
SELECT * FROM sakila.actor ORDER BY last_name DESC, first_name ASC;
```

---

## **INSERT INTO - Adding Data**

The `INSERT INTO` statement is used to add new records to a table.

### **Syntax:**

```sql
-- Specify columns to insert values into
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

```sql
-- Insert values into all columns (must match the table structure)
INSERT INTO table_name VALUES (value1, value2, value3, ...);
```

### **Key Points:**

✅ Use **the first format** when inserting values into **specific columns**.  
✅ Use **the second format** only if **you are inserting values for all columns**.

### **Example:**

1️⃣ Insert a new customer into the `sakila.customer` table:

```sql
INSERT INTO sakila.customer (first_name, last_name, email)
VALUES ('Alice', 'Johnson', 'alice@example.com');
```

2️⃣ Insert data into all columns:

```sql
INSERT INTO sakila.customer
VALUES (1, 'Alice', 'Johnson', 'alice@example.com', '2025-03-20', 1);
```

---

## **NULL - Handling Missing Values**

In MySQL, `NULL` represents an **unknown** or **missing** value.

### **Difference Between NULL and an Empty String:**

- **NULL** → The value is **unknown** (it may or may not exist).
- **"" (Empty String)** → The value **exists** but is **empty**.

For example, in the `sakila.address` table:

- Some addresses have `NULL` values (unknown).
- Some addresses have `""` (empty but known).

### **Checking for NULL values**

❌ **Incorrect:**

```sql
SELECT * FROM sakila.staff WHERE password = NULL;  -- Wrong!
```

✅ **Correct:**

```sql
-- Find records where password is NULL
SELECT * FROM sakila.staff WHERE password IS NULL;

-- Find records where password is NOT NULL
SELECT * FROM sakila.staff WHERE password IS NOT NULL;
```
