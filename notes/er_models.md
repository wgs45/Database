# 🌟 ER Models

---

## 📚 Reference

🔗 **ER Models GeekForGeeks Reference:** [Click Here](https://www.geeksforgeeks.org/introduction-of-er-model/ "ER Model reference")

---

## 📌 Introduction to ER Models

### ❓ Why Use ER Diagrams in DBMS?

- 📊 ER diagrams represent the **E-R model** in a database, making them easy to convert into **relations (tables)**.
- 🌍 ER diagrams help in **real-world modeling** of objects, making them incredibly useful.
- 🎯 No technical knowledge of the underlying DBMS is required.
- 🏗 Provides a **standardized way** to visualize data logically.

---

## 🛠 Symbols Used in ER Models

ER Models represent the **logical view** of a system from a **data perspective**, using the following symbols:

- 1️⃣ **🔲 Rectangles**: Represent **Entities**.
- 2️⃣ **🟢 Ellipses**: Represent **Attributes**.
- 3️⃣ **💎 Diamonds**: Represent **Relationships** among Entities.
- 4️⃣ **📏 Lines**: Connect **attributes to entities** and **entities to relationships**.
- 5️⃣ **🟡 Double Ellipse**: Represent **Multi-Valued Attributes**.
- 6️⃣ **🔲 Double Rectangle**: Represent **Weak Entities**.

---

## 🏢 What is an Entity?

An **Entity** is an object with **physical existence** (e.g., person, car, house, employee) or **conceptual existence** (e.g., company, job, university course).

### 📌 What is an Entity Set?

- An **Entity** is an instance of an **Entity Type**.
- A **set of all entities** of the same type is called an **Entity Set**.
- **ER Diagrams** can represent an **Entity Set** but **not individual entities**.

---

## 🏗 Types of Entities

### 🔹 **Strong Entity**

- Has a **key attribute** (Primary Key) that **uniquely identifies** it.
- Does **not depend** on any other entity.
- Represented by a **Rectangle**.

### 🔸 **Weak Entity**

- Does **not have** a **key attribute**.
- **Depends on** a Strong Entity.
- Represented by a **Double Rectangle**.

---

## 🏷 What are Attributes?

Attributes are the **properties** that define an **Entity Type**.

- 🔹 Example: **Student** has attributes like **Roll_No, Name, DOB, Age, Address, Mobile_No**.

- 📌 **Representation in ER Diagram:** Attributes are represented by **Ovals**.

### 🔢 Types of Attributes

- 1️⃣ **🔑 Key Attribute**: Uniquely identifies each entity. E.g., **Roll_No** (represented by an **Oval with an underline**).
- 2️⃣ **🔄 Composite Attribute**: Composed of multiple other attributes. E.g., **Address → (Street, City, State, Country)** (represented by a **nested Oval**).
- 3️⃣ **📞 Multi-Valued Attribute**: Can have multiple values. E.g., **Phone_No** (represented by a **Double Oval**).
- 4️⃣ **📅 Derived Attribute**: Can be derived from other attributes. E.g., **Age (from DOB)** (represented by a **Dashed Oval**).

---

## 🔗 Relationship Type and Relationship Set

A **Relationship Type** represents the **association between entity types**.

- 📌 Example: **'Enrolled in'** is a relationship type between **Student** and **Course**.

- 📌 **Representation in ER Diagram:** **Diamonds** connect entities using **Lines**.

---

## 🔄 Degree of Relationship Sets

- 1️⃣ **Unary Relationship**: A single entity set participates (e.g., **Person married to one Person**).
- 2️⃣ **Binary Relationship**: Two entity sets participate (e.g., **Student enrolled in Course**).
- 3️⃣ **Ternary Relationship**: Three entity sets participate.
- 4️⃣ **N-ary Relationship**: More than three entity sets participate.

---

## 🔢 What is Cardinality?

**Cardinality** represents the **number of times** an entity in an entity set can participate in a relationship.

### 🏆 Types of Cardinality

1️⃣ **1️⃣ ➝ 1️⃣ One-to-One**: Each entity participates **only once**.

- Example: **One Male marries One Female**.
- **Tables Used:** 2.

2️⃣ **1️⃣ ➝ 🔢 One-to-Many**: One entity is related to multiple others.

- Example: **One Department has many Doctors**.
- **Tables Used:** 3.

3️⃣ **🔢 ➝ 1️⃣ Many-to-One**: Many entities relate to one entity.

- Example: **Many Students enroll in One Course**.
- **Tables Used:** 3.

4️⃣ **🔢 ➝ 🔢 Many-to-Many**: Many entities relate to many entities.

- Example: **Many Students enroll in many Courses**.
- **Tables Used:** 3.

---

## 🔄 Participation Constraint

**Defines whether all entities in an entity set must participate in a relationship.**

1️⃣ **Total Participation**: Every entity **must** participate.

- Example: **Each Student must enroll in a Course**.
- **Representation:** **Double Line** in ER Diagram.

2️⃣ **Partial Participation**: Some entities **may not** participate.

- Example: **Some Courses may not have any Students enrolled**.

---

## 🎨 How to Draw an ER Diagram?

- 1️⃣ **Identify all Entities** 📌 **(Use Rectangles)**.
- 2️⃣ **Identify Relationships** 🔗 **(Use Diamonds)**.
- 3️⃣ **Attach Attributes** 🎯 **(Use Ovals)**.
- 4️⃣ **Remove Redundant Data** ✂.
- 5️⃣ **Use Colors to Highlight Data** 🎨.

---

✨ **With ER Diagrams, database structures become easy to visualize and understand!** 🚀
