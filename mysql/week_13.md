# 🌟 Week 13 Database Grimoire: _“May Your Queries Always Return True”_ 💫

---

## 🔮 What is `EXISTS`?

> A Boolean **detection spell**—it returns `TRUE` if the subquery finds even one matching row. Otherwise… `FALSE`. ❌✨

```sql
SELECT * FROM tableA
WHERE EXISTS (
  SELECT 1 FROM tableB WHERE condition
);
```

🌸 **Key Points**:

- `SELECT 1` is like saying: “I just need proof something’s there\~”
- The `1` isn’t used—what matters is whether any **row** exists.

---

## ⚔️ `EXISTS` vs `IN` — Battle of the Subqueries

| Feature                   | 🧙 `EXISTS`                     | 🧺 `IN`                               |
| ------------------------- | ------------------------------- | ------------------------------------- |
| 🎯 Purpose                | Checks **if a row exists**      | Checks **if a value is in a list**    |
| 🧠 Logic Direction        | Outer → Subquery                | Subquery → Outer                      |
| 🚀 Performance (Big Data) | Faster for complex joins        | Slower (runs full subquery first)     |
| ⚠️ NULL Handling          | Safe & flexible\~               | ❌ `NOT IN` breaks if NULL is present |
| 🔧 Use Case               | Great for correlated subqueries | Best for simple, static lists         |

💡 **Rule of Thumb**:
✔️ Use `EXISTS` when joining or comparing across tables
❗ Be cautious with `NOT IN` if there's **any chance of NULLs** lurking 😱

---

## 🧝‍♀️ Example Spells (Queries)

### 🏃 Customers who rented movies

🔹 **Using IN**:

```sql
SELECT * FROM customer
WHERE customer_id IN (
  SELECT customer_id FROM rental
);
```

🔹 **Using EXISTS**:

```sql
SELECT * FROM customer c
WHERE EXISTS (
  SELECT 1 FROM rental r
  WHERE r.customer_id = c.customer_id
);
```

🌸 _Translation_:
“If there exists even one rental linked to this customer, return them!” 💌

---

## 📚 Who didn’t turn in homework?

### 🔥 Safe with `NOT EXISTS`

```sql
SELECT * FROM student s
WHERE NOT EXISTS (
  SELECT 1 FROM missing_homework m
  WHERE m.student_id = s.id
);
```

🌸 _Think of it like a teacher checking if you're missing from the naughty list\~_ 🧾🚫

⚠️ **Avoid This** (NULL trap!):

```sql
SELECT * FROM student
WHERE id NOT IN (
  SELECT student_id FROM missing_homework
);
```

❗ If `student_id` has NULL, this breaks the magic 🧨

---

## 🎥 Customers who rented _ACADEMY DINOSAUR_

### 🐣 Using `IN`

```sql
SELECT * FROM customer
WHERE customer_id IN (
  SELECT r.customer_id
  FROM rental r
  JOIN inventory i ON r.inventory_id = i.inventory_id
  JOIN film f ON i.film_id = f.film_id
  WHERE f.title = 'ACADEMY DINOSAUR'
);
```

### 🐉 Using `EXISTS`

```sql
SELECT * FROM customer c
WHERE EXISTS (
  SELECT 1
  FROM rental r
  JOIN inventory i ON r.inventory_id = i.inventory_id
  JOIN film f ON i.film_id = f.film_id
  WHERE r.customer_id = c.customer_id
    AND f.title = 'ACADEMY DINOSAUR'
);
```

🌸 _In both cases, we trace the magical route from rental → inventory → film to summon the customers who rented the mythical dino!_ 🦕

---

## 💫 `ANY` — “At least one shall pass!”

🔸 **Syntax**:

```sql
<column> <operator> ANY (<subquery>)
```

🔹 **Example**:

```sql
SELECT title, rental_rate
FROM film
WHERE rental_rate > ANY (
  SELECT rental_rate FROM film WHERE length > 120
);
```

🌸 _Means: “Give me all films whose rental rate beats **at least one** long movie\~”_ 🎬

---

## 🗿 `ALL` — “Outshine them all\~!”

🔸 **Syntax**:

```sql
<column> <operator> ALL (<subquery>)
```

🔹 **Example**:

```sql
SELECT title, rental_rate
FROM film
WHERE rental_rate >= ALL (
  SELECT rental_rate FROM film WHERE rating = 'G'
);
```

🌸 _Translation: Only the heroes whose rental_rate is mightier than every gentle-rated film may enter\~!_ ⭐🛡️

---

## 🧵 TL;DR Spell Scroll ✨

| ✨ Goal                         | 🎯 Use This  |
| ------------------------------- | ------------ |
| Check if **any row exists**     | `EXISTS`     |
| Get values from **a list**      | `IN`         |
| Avoid NULL issues in negation   | `NOT EXISTS` |
| Compare against **one or more** | `ANY`        |
| Must beat **every** result      | `ALL`        |
