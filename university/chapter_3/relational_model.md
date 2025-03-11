# 📌 Relational Models 📊

---

## 🔹 Relational Model Concepts 🔍

- ✅ **Well-defined & Simple to Understand**
- ✅ The relational model represents a **database as a collection of multiple relationships**.
- ✅ Each **Relation (Table) = Data Table** 👋
- ✅ A **relation schema** defines an association and contains:
  - **Table Name** 🏷️
  - **Attribute Names** 📌
  - **Domains of Attributes** 📊

### 🏢 Structure of a Relation (Table)

1⃣ Each **Relation (Table)** contains **multiple rows (Tuples)** and **columns (Attributes)**.

| 📌 Informal Term         | 📚 Formal Term  |
| ------------------------ | --------------- |
| Table                    | Relation        |
| Field                    | Attribute       |
| Row, Record              | Tuple           |
| Range of data in a field | Domain          |
| Definition of table      | Relation Schema |

2⃣ A **Relationship** in the database consists of **two parts**:

- **Heading**: Defines a **set of attributes** and their **domains**.
- **Body**: Stores **tuples** that represent data entries (changes over time). ✅

### 🔹 Domain 🏢

A **Domain** defines **all possible values** for a specific attribute.

📈 Examples:

- **Student Age** field ➔ Domain = 0 to 99 🧑‍🎓
- **Student Name** field ➔ Domain = char(10) (Max. 10 characters) 📝

### 🔹 Attribute 📊

An **Attribute** is the **name of the role** played by a domain.

📈 Examples:

- **"Age" Attribute** ➔ Represents **Student's Age** 🎂
- **"Name" Attribute** ➔ Represents **Student's Name** 🏷️

---

## 📌 Characteristics of Relations 🔹

- 1⃣ **No Order Between Tuples (Rows)** 📋
- 2⃣ **No Order Among Attributes (Columns)** 📊
- 3⃣ **All Attribute Values are Atomic (Indivisible)** 🏢
- 4⃣ **No Duplicate Tuples Allowed** ⛔

---

## 🚀 NULL Values in a Relation

1⃣ **A Tuple (Row) may contain NULL Values** ❓

- Used when **data is unknown or missing**
- NULL ≠ Blank Space or Zero ❌

2⃣ **Types of NULL Values:**

- **Application NULL** → Data exists but is currently unknown (e.g., A student's final exam result is pending). 📝
- **Inapplicable NULL** → Data does not exist (e.g., A student didn’t take the final exam, so no result). ❌
- **Unknown NULL** → We don’t even know if the value exists (e.g., We don't know if a student took the exam). ❓

---

## 🔑 Keys in Relational Model 🔗

Keys **identify unique records** and establish **relationships between tables**.

| 🔹 Attribute -> | 🔹 Super Key ->          | 🔹 Candidate Key -> | 🔹 Primary Key ->      | 🔹 Alternate Key         |
| --------------- | ------------------------ | ------------------- | ---------------------- | ------------------------ |
| Basic field     | Unique set of attributes | Minimal Super Key   | Main Unique Identifier | Remaining Candidate Keys |

### 🔍 **1. Super Key** 🔑

- A **Super Key** is a **set of attributes that uniquely identifies a tuple (row)**.
- It **can have extra attributes** that are not necessary for uniqueness.
- **Example:**
  - (Student_ID, Name) is a **Super Key** because **Student_ID alone** can already uniquely identify a student.

### 🔍 **2. Candidate Key** 🎯

- A **minimal Super Key** (i.e., the smallest possible set of attributes that uniquely identify a tuple).
- **Example:**
  - (Student_ID) alone can uniquely identify a student ➔ **Candidate Key**.
  - (Email) can also uniquely identify a student ➔ Another **Candidate Key**.

### 🔍 **3. Primary Key** 🏆

- The **chosen Candidate Key** that uniquely identifies each tuple in a relation.
- **Cannot have NULL values (NOT NULL constraint).**
- **Example:**
  - If we choose **Student_ID** as the unique identifier, it becomes the **Primary Key**.

### 🔍 **4. Alternate Key** ↺

- **Other Candidate Keys** that were not chosen as the **Primary Key**.
- **Example:**
  - If **Student_ID** is chosen as the Primary Key, **Email** remains as an **Alternate Key**.

### 🔍 **5. Foreign Key** 🔗

- A **Foreign Key** is an attribute (or set of attributes) in one table that refers to the **Primary Key** of another table.
- **Used to maintain referential integrity between tables.**
- **Example:**
  - The **Student_ID** in the **"Enrollment" Table** is a **Foreign Key** referring to the **Student_ID in the "Students" Table**.

---

## 💼 Example: Banking System

| **Table Name**   | **Attributes**                                         | **Key Type**                          |
| ---------------- | ------------------------------------------------------ | ------------------------------------- |
| **Customers**    | Customer_ID (PK), Name, Email, Phone                   | **Primary Key (PK)**                  |
| **Accounts**     | Account_Number (PK), Customer_ID (FK), Balance         | **Foreign Key (FK)** (Customer_ID)    |
| **Transactions** | Transaction_ID (PK), Account_Number (FK), Amount, Date | **Foreign Key (FK)** (Account_Number) |

---

### 🔹 **Super Key vs. Candidate Key**

| **Feature**     | **Super Key**                                    | **Candidate Key**                                        |
| --------------- | ------------------------------------------------ | -------------------------------------------------------- |
| Definition      | Set of attributes that uniquely identify a tuple | Minimal set of attributes that uniquely identify a tuple |
| Minimal?        | ❌ No (May have extra attributes)                | ✅ Yes (No extra attributes)                             |
| Number in Table | **Many** possible Super Keys                     | **Few** Candidate Keys                                   |
| Example         | (Customer_ID, Name), (Customer_ID)               | (Customer_ID)                                            |

---
