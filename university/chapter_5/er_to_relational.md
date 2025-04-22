# 🌟 E-R Diagram to Relational Mapping 📜✨

Welcome, young database alchemist! 🧝‍♀️✨ Today we master the art of transforming E-R diagrams into relational tables with the elegance of a high-ranking sorceress~ 🪄📖

---

## 🏰 Step 1: Mapping Regular Entity Types

🔹 _Strong entities_ = Main characters in our story ✨  
🔹 Each one gets its own _table realm_  
🔸 **Primary Key** becomes the core sigil (identifier)  
🔸 All simple attributes join the table  
❌ Ignore: Multi-valued, derived, foreign keys—for now!

🧙‍♀️ **Example:**

```plaintext
Student(SID, Name, Major, Age)
```

> 💡 _TL;DR_: Give each strong entity its own table. Only basic attributes matter at this stage.

---

## 🐣 Step 2: Mapping Weak Entity Types

🔹 _Weak entities_ = Support characters needing protection!  
🔸 Must rely on a _strong entity_ (the "owner")  
🔸 Use **composite primary key**: (OwnerKey + WeakEntityKey)  
🔸 Add a **foreign key** to link back to the owner

🧙‍♀️ **Example:**

```plaintext
Dependent(EmpID, DepName, Age, Relation)  -- EmpID is FK
```

> 💡 _TL;DR_: Weak entities = sidekicks. They can’t live alone without a strong hero!

---

## 💍 Step 3: Binary 1:1 Relationship Types

🔸 Three magical cases depending on _participation_ 🧩

### Case 1: One side is _Total (T)_ Participation

✔️ Add foreign key of the _other_ to the total side’s table  
✔️ Add relationship attributes here

### Case 2: Both sides are _Partial (P)_

✔️ Add foreign key to the side with _fewer instances_

### Case 3: Both sides are _Total (T)_

✨ Merge into one unified table—soulmates~!

🧙‍♀️ **Example (Total + Partial):**

```plaintext
Department(Dno, Dname, MgrSSN, StartDate)
```

> 💡 _TL;DR_: Total participation? Add the other's key! Both total? Fuse them like magic~ 💞

---

## 🌱 Step 4: Binary 1:N Relationships

🔹 _1 to Many_ = Mentor and many apprentices 🧑‍🏫👩‍🎓  
✔️ Add the **1-side primary key** as a **foreign key** in the N-side's table  
✔️ Add relationship attributes to the N-side too

🧙‍♀️ **Example:**

```plaintext
Employee(EID, Name, Dno)  -- Dno is FK to Department
```

> 💡 _TL;DR_: The many follow the one~ So the "many" side carries the "one's" ID.

---

## 🔗 Step 5: Binary M:N Relationships

🔸 Mages from two guilds forming pacts ⚔️⚖️  
✔️ Create a **new relationship table**  
✔️ Use both entity keys as a **composite primary key**  
✔️ Add attributes here too!

🧙‍♀️ **Example:**

```plaintext
Student_Course(SID, CID, Grade)
```

> 💡 _TL;DR_: M:N = New table with both IDs. It’s a special magical contract~ ✍️

---

## 🌈 Step 6: Multivalued Attributes

🔹 Like a character having _multiple powers_ 🌀  
✔️ Create a **separate table** for the attribute  
✔️ Use original key + multivalued field as a composite PK

🧙‍♀️ **Example:**

```plaintext
Employee_Skill(EID, Skill)
```

> 💡 _TL;DR_: One hero, many powers = split into a special scroll~ 📜✨

---

## 🧩 Step 7: N-ary Relationship Types

🔸 When 3+ characters team up for a grand quest! 🧙‍♀️🧝‍♂️🧛‍♂️  
✔️ Create a **new table**  
✔️ Combine all primary keys as **foreign keys** and **composite primary key**  
✔️ Include relationship attributes here

🧙‍♀️ **Example:**

```plaintext
Project_Assign(EID, PID, Role)
```

> 💡 _TL;DR_: More than 2? Make a party table~ Let the adventure begin!

---

# 🎀 Special Conversions

## 🧩 Composite Attributes

Split if needed:

```plaintext
Name → Fname, Lname
```

✔️ Depends on query needs or storage optimization~

---

## 🎯 Derived Attributes

❌ Not stored  
✅ Calculated on demand (e.g., Age from Birthdate)

> 💡 _Why?_: We don’t store what we can easily summon later~

---

## 🔄 1:1 Participation Recap

- **T + P** → FK in T side
- **P + P** → FK in "smaller" side
- **T + T** → Merge into one enchanted scroll~ 🌟

---

## 🔺 Ternary & N-ary Relationship TL;DR

🧠 **1:1:1** → Pick any 2 keys as PK (others are alternates)  
🧠 **1:1:N / 1:M:N** → Use the N-side + one 1-side as composite PK  
🧠 **P:M:N** → All three as PK — party time! 🎉

---

# 🌸 Final Sparkles~ ✨

✅ **Key Takeaways:**

- 🌟 Entities become tables
- 🧩 Relationships depend on cardinality & participation
- 📜 Multi-things (M:N, multi-attributes) = new tables!
- ❌ Derived stuff = skip storing, compute when needed
