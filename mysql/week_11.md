# 🌟✨ **MySQL Grimoire – Week 11 Edition** ✨🌟

`Theme: Joins of Destiny – Linking Tables with Elegant Precision!`

---

## 🧩✨ The Art of the Join Spell (SQL Magic 101)

> ❝When two tables yearn to be one, a **JOIN** is cast to weave their fates\~❞

---

### 🔹 **INNER JOIN** – “Fated Encounter” 🌟

💬 Only returns rows that _exist in both tables_ (where their linked keys match)!

```sql
-- 🌟 INNER JOIN: Only where both sides match!
USE fruitbattle_987654321;

SELECT *
FROM customer
INNER JOIN products
  ON customer.CustomerID = products.CustomerID;
```

✅ **Only matches are shown**
❌ No match? No row!
🪄 _Think of it as a magical handshake—only those who meet in both realms are revealed._

---

### 🔸 **LEFT JOIN** – “Loyal Companion” 🍃

💬 Returns _all_ rows from the **left** table (customer), and matches from the right (products).
🎭 If there's no match, the right side is **NULL**—an empty echo\~

```sql
-- 🍃 LEFT JOIN: All from customer, matching products (or NULL if none)
USE fruitbattle_987654321;

SELECT *
FROM customer
LEFT JOIN products
  ON customer.CustomerID = products.CustomerID;
```

🟢 **Left side stays complete**
⚠️ Missing right-side matches appear as `NULL`
🌸 _A tale of loyalty—"Even if you bring nothing, I still choose you."_

---

### 🔸 **RIGHT JOIN** – “The Waiting Ally” 🌼

💬 Returns _all_ rows from the **right** table (products), and matches from the left (customer).
🎭 If no match exists on the left, it returns **NULL** values from that side.

```sql
-- 🌼 RIGHT JOIN: All from products, matching customers (or NULL if none)
USE fruitbattle_987654321;

SELECT *
FROM customer
RIGHT JOIN products
  ON customer.CustomerID = products.CustomerID;
```

🟡 **Right side is the star**
⚠️ Left-side gaps = `NULL`
💌 _An elegant twist—"Even if you forget me, I’ll still wait on your side."_

---

### 🌐 **FULL OUTER JOIN** – “The Eternal Reunion” 💫

💬 Returns _ALL_ rows from both tables. Where there’s no match, shows `NULL` on the missing side\~

❗ **Note:** MySQL doesn't support FULL OUTER JOIN natively 🧪
🪄 You can simulate it with a **UNION** of LEFT + RIGHT JOINs!

```sql
-- 💫 Simulated FULL OUTER JOIN with UNION
SELECT *
FROM customer
LEFT JOIN products
  ON customer.CustomerID = products.CustomerID

UNION

SELECT *
FROM customer
RIGHT JOIN products
  ON customer.CustomerID = products.CustomerID;
```

🔮 _No soul left behind—every record gets a chance to shine._

---

## 📚 TL;DR – Join Spells Cheat Sheet ✨

| Type           | Returns...                                | Missing Matches Become  |
| -------------- | ----------------------------------------- | ----------------------- |
| **INNER JOIN** | Only rows that exist in _both_ tables 🌟  | Excluded ❌             |
| **LEFT JOIN**  | All from **left**, matching from right 🍃 | Right side → `NULL`     |
| **RIGHT JOIN** | All from **right**, matching from left 🌼 | Left side → `NULL`      |
| **FULL OUTER** | All from both 💫                          | `NULL` on missing sides |
