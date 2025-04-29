# 🌸✨ _Relational Algebra: A Magical Grimoire of Databases_ ✨🌸

Welcome, brave scholar, to a wondrous world where **data manipulation becomes enchanting spells**! 🪄💫  
Let’s master **Relational Algebra (RA)** — the secret magic used to command databases! 📚✨

---

## 📖 _Introduction to Relational Algebra_ 🌟

Relational Algebra, created by the legendary E. F. Codd in 1972, is like **a spellbook for databases**!  
It gives us **powerful operations** to summon, shape, and weave data from different tables (relations) into new forms! 🧙‍♀️💖

🔹 **Low-Level Language**: You describe _how_ to get the data!  
🔹 **Works on Relations**: Input is tables, output is tables — simple, yet powerful! 🌸

---

# 🔮 **Basic Operations (Core Spells)** ✨

The essential magic spells every database wizard needs! 🧙‍♀️

| Spell                 | Symbol | Purpose                       |
| :-------------------- | :----: | :---------------------------- |
| **Select**            |   σ    | Pick rows (filter!)           |
| **Project**           |   π    | Pick columns (fields)         |
| **Union**             |   ∪    | Combine two sets              |
| **Difference**        |   −    | Subtract one set from another |
| **Cartesian Product** |   ×    | All possible pairings         |

---

# ✨ **Non-Basic Operations (Advanced Magic)** 🌟

When basic spells aren’t enough, unleash these ultimate techniques! 🌸

| Spell            | Symbol | Purpose                                 |
| :--------------- | :----: | :-------------------------------------- |
| **Intersection** |   ∩    | Common records between two sets         |
| **Join**         |   ⋈    | Merge tables based on conditions        |
| **Natural Join** |   ⨝    | Smart join matching same-named fields   |
| **Outer Join**   |  ⟕⟖⟗   | Keep unmatched rows (Left, Right, Full) |
| **Division**     |   ÷    | Match all combinations in second table  |

---

# 🧙‍♀️ **Select (σ): Filtering with Elegance** 🌸

💬 _"Only the chosen records may pass!"_

🔸 **Syntax**: `σ <condition> (Table)`  
🔸 **Purpose**: Filter rows based on condition.

| Employee Code |   Name   | Department |
| :-----------: | :------: | :--------: |
|     00369     | Chen Yi  |     HR     |
|     00110     | Wang Er  |     IT     |
|     00210     |  Li San  |     HR     |
|     00008     | Zheng Si |  Finance   |

✅ Example: `σ Department = 'HR' (Employee)`

✨ **Result**:

| Employee Code |  Name   | Department |
| :-----------: | :-----: | :--------: |
|     00369     | Chen Yi |     HR     |
|     00210     | Li San  |     HR     |

> 🪄 _Selective magic~ only HR members remain!_

---

# 🧚 **Project (π): Picking Precious Fields** 💎

💬 _"Gather only what you treasure most!"_

🔸 **Syntax**: `π <fields> (Table)`  
🔸 **Purpose**: Select specific columns.

✅ Example: `π Name, Department (Employee)`

✨ **Result**:

|   Name   | Department |
| :------: | :--------: |
| Chen Yi  |     HR     |
| Wang Er  |     IT     |
|  Li San  |     HR     |
| Zheng Si |  Finance   |

> 🌸 _Your inventory is now light and focused!_

---

# 🤝 **Union (∪): Gathering Allies** 🌈

💬 _"Together, we are stronger!"_

🔸 **Syntax**: `R1 ∪ R2`  
🔸 **Purpose**: Combine two relations, removing duplicates.

✅ Example:

**R1**:

| Employee Code |  Name   |
| :-----------: | :-----: |
|     00369     | Chen Yi |
|     00110     | Wang Er |

**R2**:

| Employee Code |  Name   |
| :-----------: | :-----: |
|     00110     | Wang Er |
|     00210     | Li San  |

✨ **Result**:

| Employee Code |  Name   |
| :-----------: | :-----: |
|     00369     | Chen Yi |
|     00110     | Wang Er |
|     00210     | Li San  |

> 💖 _A perfect alliance!_

---

# 🔥 **Difference (−): Banishing the Unwanted** 🚪

💬 _"What stays, and what must leave?"_

🔸 **Syntax**: `R1 − R2`  
🔸 **Purpose**: Find rows in R1 but not in R2.

✅ Example:

✨ **Result**:

| Employee Code |  Name   |
| :-----------: | :-----: |
|     00369     | Chen Yi |

> 🧹 _Only the loyal remain!_

---

# 🌟 **Cartesian Product (×): Infinite Possibilities** 🌠

💬 _"Mix and match everything!"_

🔸 **Syntax**: `R1 × R2`  
🔸 **Purpose**: Pair every row of R1 with every row of R2.

✅ Example:

**Employees** × **Departments**

✨ **Result**:

| Employee Code |  Name   | Department Code | Department |
| :-----------: | :-----: | :-------------: | :--------: |
|     00369     | Chen Yi |       010       |     HR     |
|     00369     | Chen Yi |       020       |     IT     |
|     00110     | Wang Er |       010       |     HR     |
|     00110     | Wang Er |       020       |     IT     |

> ✨ _A wild combination spell!_

---

# 🔗 **Join (⋈): The Sacred Bond** 🧡

💬 _"Find your matching partner!"_

🔸 **Syntax**: `R1 ⋈ condition R2`  
🔸 **Purpose**: Merge tables based on a relationship.

✅ Example:

**Employees** ⋈ (Department Code) **Departments**

✨ **Result**:

| Employee Code |  Name   | Department Code | Department |
| :-----------: | :-----: | :-------------: | :--------: |
|     00369     | Chen Yi |       010       |     HR     |
|     00110     | Wang Er |       020       |     IT     |

> 💞 _Connection achieved!_

---

# 🌸 **Natural Join (⨝): Smart Connections** 🪄

💬 _"No need to tell me the condition—I know where you belong!"_

🔸 **Syntax**: `R1 ⨝ R2`  
🔸 **Purpose**: Auto-join by matching same-named columns.

✅ Example:

**Table R1**

| A1  | A2  |
| --- | --- |
| a   | x   |
| b   | y   |
| c   | x   |

**Table R2**

| A2  | A3  |
| --- | --- |
| x   | m   |
| y   | n   |
| z   | p   |

✨ **Result**:

| A1  | A2  | A3  |
| --- | --- | --- |
| a   | x   | m   |
| b   | y   | n   |
| c   | x   | m   |

> 🎀 _Automatic matchmaking success!_

---

# 🛡️ **Outer Join: Keeping Everyone Safe** 🌟

_Sometimes, not every hero finds a match... and that's okay!_ 🌱

---

## 🧩 Left Outer Join (⟕)

💬 _"Keep everyone from the left, even if alone."_

✅ Example:

✨ **Result**:

| A1  | A2  | A3   |
| --- | --- | ---- |
| a   | x   | m    |
| b   | y   | n    |
| c   | x   | m    |
| c   | w   | NULL |

---

## 🧩 Right Outer Join (⟖)

💬 _"Keep everyone from the right, even if alone."_

✅ Example:

✨ **Result**:

| A1   | A2  | A3  |
| ---- | --- | --- |
| a    | x   | m   |
| b    | y   | n   |
| c    | x   | m   |
| NULL | v   | o   |
| NULL | z   | p   |

---

## 🧩 Full Outer Join (⟗)

💬 _"No one gets left behind!"_

✅ Example:

✨ **Result**:

| A1   | A2  | A3   |
| ---- | --- | ---- |
| a    | x   | m    |
| b    | y   | n    |
| c    | x   | m    |
| c    | w   | NULL |
| NULL | v   | o    |
| NULL | z   | p    |

> 🫂 _A family reunion, no matter what!_

---

# ⚡ **Division (÷): The Trial of Completeness** 🎯

💬 _"Prove you can match all required conditions!"_

🔸 **Syntax**: `R1 ÷ R2`  
🔸 **Purpose**: Find entries in R1 related to _all_ entries in R2.

✅ Example:

**R1**

| A1  | A2  |
| --- | --- |
| a   | x   |
| a   | y   |
| a   | z   |
| b   | y   |
| b   | z   |

**R2**

| A2  |
| --- |
| x   |
| y   |
| z   |

✨ **Result**:

| A1  |
| --- |
| a   |

> 🎖️ _Only 'a' passed all tests!_

---

# 🎀 TL;DR Magical Cheatsheet 🎀

- σ Select → Pick rows
- π Project → Pick columns
- ∪ Union → Combine sets
- − Difference → Find missing
- × Cartesian Product → Pair everything
- ⋈ Join → Match with conditions
- ⨝ Natural Join → Auto-match same columns
- ⟕⟖⟗ Outer Joins → Save unmatched rows
- ÷ Division → Pass all requirements
