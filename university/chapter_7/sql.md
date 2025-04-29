# 🌟 Structured Query Language (SQL) — A Magical Study Journal 🌟

---

## ✨ Database Languages ✨

🔹 **Structured Query Language (SQL)**

- 💻 A universal language to _speak_ to relational databases!
- 🏰 Developed by IBM in the 1970s — practically ancient magic!
- 🎯 Today, _almost every_ database system understands SQL~ ✔️

---

## 📚 Types of SQL Instructions

**SQL is a whole grimoire of spells!** 🪄 Here are its main types:

🔸 **Data Definition Language (DDL)**  
 – Create ✨, Drop 💥, Alter 🔧 database _objects_ (tables, views, databases)

🔸 **Data Manipulation Language (DML)**  
 – Insert 🍰, Update ✍️, Delete 🗑️ data inside tables

🔸 **Data Control Language (DCL)**  
 – Grant 🪄, Revoke 🚫, Alter Password 🔐 (control over users!)

---

## 📖 More Magic Commands~

Besides the basics, the SQL spellbook includes:

🔹 **Data Query Language (DQL)**  
 – Query and fetch data 📜 (often grouped with DML)

🔹 **Data Administration Commands**  
 – For audits 🔎 and analyzing the system

🔹 **Transactional Control Commands**  
 – Manage transaction flows 🛤️ (Commit, Rollback magic!)

---

## 🌸 ANSI SQL Syntax 🌸

⭐ Almost _all_ databases support ANSI SQL — a "common tongue" for database wizards!  
⭐ But beware: Different vendors add their own _flavor_~ 🍰 (e.g., Oracle, MySQL, PostgreSQL)

🧹 **Tip:** Always check for small syntax differences when switching systems!

---

## 🎀 SQL Data Types — The Ingredients of Your Magic 🍀

### 📝 Character Strings

- **CHAR(n)** → Fixed-length (perfectly neat ✨)
- **VARCHAR(n)** → Variable length (flexible and free 🌸)
- **BIT(n)** → Fixed-length bit string (1s and 0s ⚡)
- **BIT VARYING(n)** → Flexible bits (data acrobatics 🤸)

### 🔢 Numeric Types

- **INT / INTEGER** → Regular whole numbers
- **DEC(m,n)** → Precise numbers (m = total digits, n = decimal places)
- **SMALLINT** → Smaller numbers (compact magic ✨)
- **FLOAT, REAL, DOUBLE PRECISION** → Floating numbers 🌊, single or double precision!

### ⏰ Date/Time Types

- **DATE** → 🗓️ Format: `YYYY-MM-DD`
- **TIME** → ⏰ Format: `HH:MM:SS`
- **TIMESTAMP** → A full time-stamp combo 🌟 (Date + Time + precise seconds!)
- **INTERVAL** → Duration of time (like counting spells!)

---

## 🧙‍♀️ Data Definition Language (DDL) — Crafting Worlds 🌏

DDL spells operate on two main structures:

- 🏰 **Database/Schema**
- 🗂️ **Tables**

**Main incantations**:

1. **CREATE** → Bring new tables or databases into existence! ✨
2. **DROP** → Make them vanish into the void! 💨
3. **ALTER** → Reshape them to your will! 🎭

---

## 🛠️ Creating and Deleting Databases

🔸 **Create a Database/Schema**

```sql
CREATE SCHEMA TKU_db;
-- or --
CREATE DATABASE TKU_db;
```

💬 _(Both are accepted! Schema = Database in this context.)_

🔸 **Delete a Database/Schema**

```sql
DROP SCHEMA TKU_db;
-- or --
DROP DATABASE TKU_db;
```

⭐ Commands are **NOT case-sensitive** (but always write them elegantly~ 🖋️)

---

# 📜 TL;DR — Quick Magic Scroll 🧚

| Magic Element | Meaning                                | Examples                        |
| :------------ | :------------------------------------- | :------------------------------ |
| ✨ SQL        | Language to communicate with databases | `SELECT`, `INSERT`              |
| 📚 Types      | DDL, DML, DCL, DQL, Admin, Transaction | `CREATE`, `UPDATE`, `GRANT`     |
| 🌟 ANSI SQL   | Universal base language                | Slight vendor tweaks            |
| 🍀 Data Types | Characters, Numbers, Dates             | `VARCHAR`, `INT`, `DATE`        |
| 🏰 DDL        | Create, Drop, Alter databases & tables | `CREATE DATABASE`, `DROP TABLE` |
