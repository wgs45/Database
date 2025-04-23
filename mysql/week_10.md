# 🌟 MySQL Grimoire – Week 10 Edition

_“Where data flows like gentle sakura petals in the spring breeze~”_ 🍃🌸

---

## 🏰 Setting Up Your Realm: SCHEMA & TABLES

> 📖 _Let’s conjure our database kingdom: `taiwan_123456789`! It will hold all the life events from our municipalities—births, deaths, marriages, and more~_ 💞

### 🧱 Step 1: Create Your Magical SCHEMA

```sql
-- CREATE SCHEMA taiwan_123456789;
USE taiwan_123456789;
```

### 📚 Step 2: Summon the Tables 📊

Each table represents a spellbook of data~ Let's craft them carefully~ 🔮

```sql
CREATE TABLE municipality (
  id INT PRIMARY KEY,
  `County` VARCHAR(50)
);

CREATE TABLE movingin (
  municipality_id INT,
  `Difference` VARCHAR(50),
  `gender` TINYINT,
  `number of people` INT,
  `date` INT,
  FOREIGN KEY (municipality_id) REFERENCES municipality(id)
);

CREATE TABLE movingout (
  municipality_id INT,
  `Difference` VARCHAR(50),
  `gender` TINYINT,
  `number of people` INT,
  `date` INT,
  FOREIGN KEY (municipality_id) REFERENCES municipality(id)
);

CREATE TABLE divorce (
  municipality_id INT,
  `Difference` VARCHAR(50),
  `logarithm` INT,
  `date` INT,
  FOREIGN KEY (municipality_id) REFERENCES municipality(id)
);

CREATE TABLE marriage (
  municipality_id INT,
  `Difference` VARCHAR(50),
  `logarithm` INT,
  `date` INT,
  FOREIGN KEY (municipality_id) REFERENCES municipality(id)
);

CREATE TABLE birth (
  municipality_id INT,
  `Difference` VARCHAR(50),
  `gender` TINYINT,
  `number of people` INT,
  `date` INT,
  FOREIGN KEY (municipality_id) REFERENCES municipality(id)
);

CREATE TABLE death (
  municipality_id INT,
  `Difference` VARCHAR(50),
  `gender` TINYINT,
  `number of people` INT,
  `date` INT,
  FOREIGN KEY (municipality_id) REFERENCES municipality(id)
);
```

> 🧚‍♀️ **✨ Pro Tip:** Make sure your column names match your CSV headers—this keeps the summoning ritual from failing! ⚠️

---

## 📦 Finding the Sacred Path: CSV File Directory

Before we can summon the data from the physical realm, we must locate the _blessed gate_ where MySQL permits file loading~ 🗂️✨

```sql
SHOW VARIABLES LIKE 'secure_file_priv';
```

> 🌈 _This command reveals the special directory where your `.csv` files must reside to be summoned by `LOAD DATA INFILE`!_  
> 💡 Example: `'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads'`

---

## 🪄 LOAD DATA Ritual: Feeding Your Tables from the Mortal Realm

🎉 _Let the data flow~!_ Here’s the ritual to invoke data into each table from `.csv` scrolls~ 🧾💕

```sql
-- LOAD movingout data
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TaiwanData/11310_movingout.csv'
INTO TABLE movingout
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(municipality_id, difference, gender, number of people, date);
```

> 🔮 _Repeat the spell below with the correct file name and table name for each data type~_

---

### 📜 Additional LOAD Spells

```sql
-- movingin
LOAD DATA INFILE '.../11310_movingin.csv' INTO TABLE movingin
CHARACTER SET utf8mb4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
IGNORE 1 ROWS (municipality_id, difference, gender, number of people, date);

-- marriage
LOAD DATA INFILE '.../11310_marriage.csv' INTO TABLE marriage
CHARACTER SET utf8mb4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
IGNORE 1 ROWS (municipality_id, difference, logarithm, date);

-- divorce
LOAD DATA INFILE '.../11310_divorce.csv' INTO TABLE divorce
CHARACTER SET utf8mb4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
IGNORE 1 ROWS (municipality_id, difference, logarithm, date);

-- death
LOAD DATA INFILE '.../11310_death.csv' INTO TABLE death
CHARACTER SET utf8mb4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
IGNORE 1 ROWS (municipality_id, difference, gender, number of people, date);

-- birth
LOAD DATA INFILE '.../11310_birth.csv' INTO TABLE birth
CHARACTER SET utf8mb4 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
IGNORE 1 ROWS (municipality_id, difference, gender, number of people, date);
```

---

## 🌸 TL;DR~ 💖

- 🏰 Create a SCHEMA to house your data kingdom.
- 📊 Each table is a chapter—municipality info, population movement, life events~
- 🧭 Use `SHOW VARIABLES` to find where your .csv scrolls must live~
- ✨ `LOAD DATA INFILE` is the spell to summon your CSV data into SQL tables~
- ❗ Double-check file paths and column names to avoid summon failures~!
