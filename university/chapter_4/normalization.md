# 📌 **Normalization in Databases**

---

## 🎯 **Why Normalize?**

When designing **related tables** in a database, two common mistakes occur:

1. **Directly converting company forms into tables.**
2. **Translating an E-R diagram into tables without proper structuring.**

### ⚠️ **Problems Without Normalization:**

- ❌ **Redundant Information** – Repeating data across tuples, leading to unnecessary storage usage.
- ❌ **Insertion Anomalies** – Inserting data may require unnecessary additional information, complicating the process.
- ❌ **Update Anomalies** – Updating one record may leave inconsistencies, resulting in data corruption.
- ❌ **Deletion Anomalies** – Deleting a record may remove important linked data, leading to loss of information.

---

## 📌 **Example: Supplier Purchasing Table (Before Normalization)**

| Supplier Code | Supplier Name | Contact Number | Product Code | Product Name | Unit Price | Purchase Quantity |
| ------------- | ------------- | -------------- | ------------ | ------------ | ---------- | ----------------- |
| 12345         | CTVC          | 081234567      | p147         | X101         | 1000       | 10                |
| 12345         | CTVC          | 081234567      | s201         | A-101        | 150        | 300               |
| 02314         | KGB           | 081234567      | s201         | A-101        | 160        | 100               |
| 02314         | KGB           | 081234567      | s199         | A-101        | 20         | 100               |
| 22138         | KFC           | 081234567      | u001         | B-101        | 750        | 20                |

---

## ⚠️ **Anomalies in the Table**

1. **Update Anomaly:**

- If we update product **s201** to "A-101 Battery", multiple rows need updates, leading to **inconsistency**.

2. **Insertion Anomaly:**

- A new supplier **(e.g., Code 00721)** cannot be added unless they have **already sold at least one product**.

3. **Deletion Anomaly:**

- If we delete **product u001**, we also **lose all information about supplier KFC**.

### 🔍 **Cause of These Anomalies?**

The presence of **Functional Dependencies (FDs)** between attributes. These dependencies suggest that certain attributes rely on others, creating unnecessary redundancy and leading to anomalies.

---

# 🔗 **Understanding Functional Dependency**

In a **relation R(A1, A2, …, An)**:  
✅ If **X determines Y**, we write it as **X → Y**.  
✅ Here, **X** is the **determinant** (left-hand side), and **Y** is the **dependent attribute** (right-hand side).

### 🔹 **Examples of Functional Dependencies:**

📍 **Location → Branch Telephone Area Code**  
📍 **Address Area → Postal Code**  
📍 **Employee Number → Employee Name**

These dependencies define how one attribute can uniquely determine another, helping us understand data relationships.

---

# 📌 **Types of Functional Dependencies**

### 1️⃣ **Full Functional Dependency (FFD)**

- **Definition:** A full functional dependency exists when **an attribute is fully dependent on the entire primary key**. This means that no part of the primary key is redundant in determining the value of the dependent attribute.
- **Example:**

  1. In a **Supplier** table, if a **Supplier Name** is determined by the **Supplier Code** (a single attribute primary key), we have a full functional dependency:

  - **Supplier Code → Supplier Name** (where Supplier Code is the full primary key).
  - If the **primary key is composite** (e.g., Supplier Code + Product Code), the dependent attribute must depend on **both parts** of the key to be considered a full dependency.

---

### 2️⃣ **Partial Functional Dependency (PFD)**

- **Definition:** A partial functional dependency occurs when an attribute is **dependent on part of a composite primary key** rather than the whole key.
- **Example:**

  1. In a table with a **composite primary key** consisting of **(Supplier Code, Product Code)**, if **Supplier Name** depends only on **Supplier Code**, then we have a partial functional dependency:

  - **Supplier Code → Supplier Name**
    This dependency is **partial** because **Supplier Name** only depends on part of the composite primary key.

  2. **Why is this a problem?**  
     When we have partial dependencies, it leads to **redundancy** in data. The **Supplier Name** would repeat multiple times for each different **Product Code** that the supplier has, causing wasted storage and potential inconsistencies.

---

### 3️⃣ **Transitive Dependency (TD)**

- **Definition:** A transitive dependency occurs when one non-key attribute depends on another non-key attribute. This leads to indirect relationships that should be avoided in normalized tables.

- **Example:**

  1. Consider a table where:

  - **Employee Number → Employee Name**
  - **Employee Name → Employee Address**

  Here, **Employee Address** depends on **Employee Name**, which in turn depends on **Employee Number**. This is a transitive dependency because **Employee Address** indirectly depends on **Employee Number**.

  2. **Why is this a problem?**  
     Transitive dependencies introduce **redundancy** and **update anomalies**. For instance, if you need to change an employee’s address, you might have to update it in multiple places if the **Employee Name** is repeated across different records. This can lead to inconsistencies.

---

# 📌 **Normalization Forms**

## 🔹 **First Normal Form (1NF)** – Eliminates Repeating Groups

✅ **Each column contains atomic (indivisible) values.**  
✅ **Each column has a unique name.**  
✅ **The order of storage does not matter.**

🔹 **Example:**

- Convert multi-valued attributes into separate rows.  
  For instance, a "Products" column that contains multiple products can be separated into individual rows for each product.

---

## 🔹 **Second Normal Form (2NF)** – Eliminates Partial Dependencies

✅ **Must be in 1NF.**  
✅ **No partial dependency** (i.e., no attribute should depend on only a part of the primary key).

🔹 **Example:**

- Break the table into two if a **non-key attribute** depends only on a **part of the primary key**. For instance, if a table has a composite key (e.g., Supplier ID + Product ID), an attribute like "Supplier Name" should only depend on Supplier ID, not on the full composite key.

---

## 🔹 **Third Normal Form (3NF)** – Eliminates Transitive Dependencies

✅ **Must be in 2NF.**  
✅ **No transitive dependency** (i.e., no attribute should depend on another non-key attribute).

🔹 **Example:**

- If **A → B** and **B → C**, then **A → C** is a **transitive dependency** and should be removed by creating a new table. For instance, if the **Employee Address** depends on the **Employee ID**, but the **Employee Name** depends on the **Employee Address**, we break this relationship to eliminate redundancy.

---

## 🔹 **Boyce-Codd Normal Form (BCNF)** – Stricter Than 3NF

✅ **Must be in 3NF.**  
✅ **Every determinant must be a candidate key.**

🔹 **Example:**

- If a table has multiple candidate keys, BCNF ensures that all of them fully determine the attributes. This ensures that each relationship is strictly controlled, reducing anomalies.

---

## 🔹 **Fourth Normal Form (4NF)** – Eliminates Multi-Valued Dependencies

✅ **Must be in 3NF.**  
✅ **No multi-valued dependencies** (i.e., no set of values should depend on another set of values).

🔹 **Example:**

- If a table has attributes that independently depend on each other, they should be separated into distinct tables to avoid redundancy.

---

## 🔹 **Fifth Normal Form (5NF)** – Eliminates Join Dependencies

✅ **Must be in 4NF.**  
✅ **No join dependencies** (i.e., no way to break down a relation into multiple relations without losing data integrity).

🔹 **Example:**

- If data can be split into smaller parts that need to be joined together to retrieve meaningful information, it should be normalized into multiple relations.

---

# 🎯 **Goals of Normalization**

✅ **Reduce Data Redundancy**  
✅ **Prevent Insert, Delete, and Update Anomalies**  
✅ **Improve Data Integrity & Consistency**  
✅ **Ensure Data Integrity** by organizing data based on logical relationships and dependencies.

---

# 📈 **Advantages of Normalization**

- **Reduced Redundancy**: Data is stored only once, reducing wasted space and storage costs.
- **Improved Data Integrity**: By eliminating redundancy, normalization ensures that the data remains consistent and accurate across the database.
- **Easier Maintenance**: With less duplication, updates, inserts, and deletions can be handled more easily.
- **Avoid Anomalies**: By eliminating anomalies (insertion, update, deletion), the system becomes more stable and predictable.

---

# ⚖️ **Denormalization: A Trade-off**

While **normalization** ensures data integrity, there are situations where **denormalization** (the opposite of normalization) is used. Denormalization involves **introducing redundancy** back into the database to optimize **read performance** in systems that are **read-heavy**. This can improve query performance, especially in reporting or analytical systems.

However, denormalization should be used cautiously, as it can reintroduce the anomalies that normalization seeks to avoid, such as update and insertion anomalies.

---

### **Summary of Normalization Forms:**

- **1NF (First Normal Form)**: Eliminate repeating groups (Make attributes atomic).
- **2NF (Second Normal Form)**: Eliminate partial dependencies (Remove dependencies on part of the primary key).
- **3NF (Third Normal Form)**: Eliminate transitive dependencies (Remove indirect relationships between attributes).
- **BCNF (Boyce-Codd Normal Form)**: Ensure every determinant is a candidate key (Stricter 3NF).
- **4NF (Fourth Normal Form)**: Eliminate multi-valued dependencies.
- **5NF (Fifth Normal Form)**: Eliminate join dependencies.

### 📈 **From Lower to Higher Normalization:**

- **First Normal Form (1NF)** → **Second Normal Form (2NF)** → **Third Normal Form (3NF)** → **Boyce-Codd Normal Form (BCNF)** → **Fourth Normal Form (4NF)** → **Fifth Normal Form (5NF)**  
  (Each step increases data integrity and reduces redundancy).

---

### 🧠 **Why is Normalization Important?**

Normalization ensures the structure of your database maintains logical consistency, minimizes data redundancy, and optimizes performance. By following these guidelines, we create a flexible, scalable, and efficient database design, enabling better data management and easy updates.
