# _💫🌸 Week 14 SQL Notes \~ 💫_

_“A single query, when crafted with care… can summon wonders from the deepest tables!” 💻✨_

---

## 🌟 _Chapter 1: The Art of Table Duplication_ ～《SELECT INTO & CREATE TABLE》🧙‍♀️📜

### 🔹 _SELECT INTO_ — The Magical Clone Spell (But Not for MySQL 😢)

```sql
SELECT column1, column2, ...
INTO new_table
FROM source_table
WHERE condition;
```

✨ **What It Does:**

- Creates a **brand new table** and fills it with selected data
- The target table **must not exist** already—this spell fails if it does ❌

🧡 _Think of it as conjuring a mirror image of a table with just the columns you need!_

> ⚠️ **No SELECT INTO in MySQL**—our spellbook uses a different incantation here\~✨

---

### 🔹 _MySQL-Style Table Duplication_ 🐬💙

#### ✔️ _To copy data + structure:_

```sql
CREATE TABLE customer_backup
AS
SELECT * FROM customer;
```

#### ✔️ _To copy structure only (no data):_

```sql
CREATE TABLE customer_backup2
AS
SELECT * FROM customer
WHERE 1=0;
```

💭 _Why 1=0?_ Because it ensures **no rows** are selected, but the column **structure** is copied perfectly! 🧠✨

> ❓ _What if we used 1=1?_ You’d get **all the rows** from the table along with the structure! A full duplication spell! 🪞

---

## 🌈 _Chapter 2: The Language of Conditions_ ～《CASE Expression》📚💬

### 🌸 _Simple CASE_ — Matching Magic! 🔍🎴

```sql
SELECT film_id, title,
CASE language_id
  WHEN 1 THEN 'English'
  WHEN 2 THEN 'Italian'
  WHEN 3 THEN 'Japanese'
  ELSE 'Others'
END AS language_name
FROM film;
```

🎀 **What’s Happening Here:**

- We check `language_id` and return a **specific string** 🌐
- If none match, we whisper "Others..." as a gentle fallback 🌫️

💡 _The “AS language_name” part gives the result column a lovely name!_ (Optional, but adorable\~)

---

## 🍀 _Chapter 3: Flexible Wisdom_ ～《Search CASE》🔮⚖️

### 🌟 _Search CASE_ — Conditional Elegance\~ 💼✨

```sql
CASE
  WHEN condition1 THEN result1
  WHEN condition2 THEN result2
  ELSE result
END
```

🧚‍♀️ **Unlike Simple CASE**, this style lets you use _conditions_ instead of matching values!
Perfect when things aren’t black-and-white 💭

---

### 🍡 _Real-World Enchantment:_ Payment Price Tiers 💰

#### 🌟 Goal

Label payments based on their **amount**:

- 🟢 Low: `< 0.99`
- 🟠 Medium: `1.00 ~ 1.99`
- 🔴 High: `> 2.00`

```sql
SELECT payment_id, amount,
CASE
  WHEN amount < 0.99 THEN 'Low'
  WHEN amount BETWEEN 1.00 AND 1.99 THEN 'Medium'
  ELSE 'High'
END AS amount_level
FROM payment;
```

📝 _Voilà!_ Payments are now sorted into neat magical levels\~
No more chaos in the coin pouch! 🎒💸

---

## 🧁 _TL;DR Review Treats_ \~💡✨

| 💫 Concept        | 🌟 Summary                                                         |
| ----------------- | ------------------------------------------------------------------ |
| `SELECT INTO`     | Clone structure + data into a _new_ table (not in MySQL) ❌        |
| `CREATE TABLE AS` | MySQL-friendly spell to duplicate structure (+ data if desired) 🐬 |
| `CASE (Simple)`   | Matches one value to many possible outcomes 🔢                     |
| `CASE (Search)`   | Uses _conditions_ to determine the result logic 🤓                 |
| `WHERE 1=0`       | Trick to copy only table structure, not data 🧠                    |
