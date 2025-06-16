# _🌟📘 Week 15 SQL Notes \~ 🌸💫_

_“A stored procedure is like a secret incantation… once crafted, it can be summoned at will!” 💻✨_

---

## 💠 _Chapter 1: The Secret Arts of Stored Procedures_ ～《Reusable SQL Spells》📜🪄

### 🔹 What’s a Stored Procedure?

A stored procedure is like a **function inside your database** 🎩✨
You _define it once_, and you can **call it anytime**—no need to rewrite that long SQL!

> 🍰 _Think of it like a magical macro: one whisper, and the whole spell is cast\~_

---

### 🔧 _Basic Syntax_ – Creating a Simple Spell

```sql
DELIMITER //

CREATE PROCEDURE ShowActors()
BEGIN
  SELECT * FROM actor;
END //

DELIMITER ;
```

✨ **How to summon the magic:**

```sql
CALL ShowActors();
```

> 🍃 `DELIMITER //` helps the system know where the **procedure block** begins and ends (like the opening and closing of a magic scroll\~) 📜

---

## 💎 _Chapter 2: Parameters_ ～《Spells That Listen to You》🔮🎙️

### 🌀 _IN Parameters_ — Sending Information In

```sql
DELIMITER //

CREATE PROCEDURE GetActorFilmCount(IN actorId INT)
BEGIN
  SELECT COUNT(*)
  FROM film_actor
  WHERE actor_id = actorId;
END //

DELIMITER ;
```

🧠 **What’s going on?**

- `IN` means you’re giving the procedure a value to use!
- `actorId` is like a special charm you hand over 💌

🔮 Example:

```sql
CALL GetActorFilmCount(5);  -- How many films has actor #5 starred in?
```

---

### 📦 _Storing Results with DECLARE + INTO_ — For Gentle Wizards\~ 🌙

```sql
DELIMITER //

CREATE PROCEDURE GetActorFilmCount(IN actorId INT)
BEGIN
  DECLARE filmCount INT;
  SELECT COUNT(*) INTO filmCount
  FROM film_actor
  WHERE actor_id = actorId;
  SELECT filmCount;
END //

DELIMITER ;
```

🧡 **What's new here?**

- `DECLARE` creates a **local variable** 🧺
- `INTO` stores the result inside it
- This lets you do **more flexible things later** (like using the result in more queries!)

---

### 🔄 _OUT Parameters_ — Returning Values Like a Potion Bottle! 🍾

```sql
DELIMITER //

CREATE PROCEDURE GetCustomerRentalCount(IN customerid INT, OUT rental_count INT)
BEGIN
  SELECT COUNT(*) INTO rental_count
  FROM rental
  WHERE customer_id = customerid;
END //

DELIMITER ;
```

🧪 **Usage:**

```sql
SET @rental_count = 0;
CALL GetCustomerRentalCount(6, @rental_count);
SELECT @rental_count;
```

🎀 _Here, the spell hands the result back to you gently in a bottle named `@rental_count`\~_

---

## 📜✨ _Quick Reference Recap_

| 🪄 Concept                  | 🌟 Purpose & Summary                                                    |
| --------------------------- | ----------------------------------------------------------------------- |
| `CREATE PROCEDURE`          | Defines a reusable SQL block—your custom SQL spell! 📜                  |
| `DELIMITER // ... //`       | Ensures the procedure is read as a whole (like a sealed incantation) ✨ |
| `CALL procedure()`          | Executes the stored procedure (summons the magic) 🧙‍♀️                    |
| `IN` parameter              | Sends info **into** the procedure 💌                                    |
| `OUT` parameter             | Retrieves info **out from** the procedure 🍾                            |
| `DECLARE var; SELECT INTO`  | Stores a value in a **local variable** for internal use 📦              |
| `SET @var; CALL proc(...);` | Stores output into a **user variable** from an OUT parameter 🏷️         |
