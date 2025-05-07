# 🌟✨ **MySQL Grimoire – Week 12 Edition** ✨🌟

**Theme: Alchemy of Results – Combining and Filtering with Style\~!**

---

## 🪄✨ UNION – “Merge of Realms”

> _When two worlds share the same form, they can become one\~_ 🌍💕

### 🔹 What is UNION?

UNION is a graceful SQL incantation that lets you **combine rows from multiple SELECT queries** into one elegant result set\~! 🌈✨

### 🔸 Key Effects

1. **✨ Combines Results:**

   - Merges rows from two or more queries.
   - Columns must **match in number and data type compatibility**! 🎭

2. **🧹 Removes Duplicates by Default:**

   - Like a gentle filter—only _unique rows_ are kept.

3. **🎯 Use `UNION ALL` for All Rows:**

   - Keeps duplicates if you _really_ want every record.

---

### 🧑‍💻 Example 1: Simple Merge of Tables 🌆

```sql
SELECT column_name FROM table1
UNION
SELECT column_name FROM table2;
```

✔️ Same structure
❌ Duplicates removed

---

### 🧑‍💻 Example 2: Adding Source Tags 📌

```sql
SELECT first_name, last_name, 'customer' AS source
FROM sakila.customer
WHERE last_name LIKE 'A%'

UNION

SELECT first_name, last_name, 'actor' AS source
FROM sakila.actor
WHERE last_name LIKE 'A%'

ORDER BY source, last_name, first_name;
```

✨ Adds a `source` column to label where each row came from
💡 This is like labeling your character cards by faction\~! 🃏

---

### 📝 TL;DR – UNION Recap

| UNION Type  | Keeps Duplicates? | Magic Summary                          |
| ----------- | ----------------- | -------------------------------------- |
| `UNION`     | ❌ No             | Combines, but filters duplicates ✨    |
| `UNION ALL` | ✔️ Yes            | Combines _everything_, no filtering 🎁 |

🌟 _Make sure the column count & types match, or your spell will fizzle\~!_

---

## 🧠✨ HAVING – “The Post-Gathering Filter” 🧪

> _First you gather your findings (GROUP BY)... then decide who makes the cut with HAVING\~_ 🧙‍♀️🔍

---

### 🔹 HAVING vs WHERE

| Clause   | When it's Used                      | Filters What?                          |
| -------- | ----------------------------------- | -------------------------------------- |
| `WHERE`  | 💫 Before grouping (raw data)       | Individual rows                        |
| `HAVING` | 🔮 After grouping (aggregated data) | Grouped results (`SUM`, `COUNT`, etc.) |

---

### 🧑‍💻 Example 1: Count Filter – Rent Over 10 🎬

```sql
SELECT customer_id, COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING total_rentals > 10;
```

✔️ Filters customers after grouping
🎯 Shows only those with more than 10 rentals!

---

### 🧑‍💻 Example 2: Elegant Join & HAVING 🌸

```sql
SELECT
  c.customer_id,
  CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
  COUNT(r.rental_id) AS rental_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id
HAVING COUNT(r.rental_id) > 30;
```

✨ Joins customer & rental tables
🎀 Shows customers who rented more than 30 times!

---

## 💬 Curious Question from Master

> _Why are the `AS` and alias parts shown in `SELECT`, even though SQL doesn’t execute SELECT first?_ 🤔💡

### 🧩 SQL’s Secret Execution Order

```plaintext
1️⃣ FROM + JOIN
2️⃣ WHERE
3️⃣ GROUP BY
4️⃣ HAVING
5️⃣ SELECT
6️⃣ ORDER BY
7️⃣ LIMIT
```

✨ The reason `AS` appears in `SELECT` is because that’s where _you_ define how it looks—_but the engine_ still processes things in this strict order.
💡 So yes—**SELECT is _written_ first, but _executed_ after GROUP BY and HAVING.** Like a finale to a grand spell\~ 🎇

---

## 📚 TL;DR – Week 12 Summary ✨

| Concept     | Use Case                    | Key Points                                    |
| ----------- | --------------------------- | --------------------------------------------- |
| `UNION`     | Combine multiple SELECTs 💌 | Same structure, duplicates removed by default |
| `UNION ALL` | Include duplicates too 🎁   | Keeps all rows—_no filtering_                 |
| `HAVING`    | Filter after grouping 🧪    | Works with `GROUP BY` + aggregate functions   |
| `WHERE`     | Filter before grouping 🔍   | Only on raw rows, not aggregates              |
