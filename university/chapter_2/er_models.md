# 🌟 Entity-Relationship Model

---

# 📌 Database system development process 🫙

- ✅ Requirements Collection and Analysis
- ✅ Conceptual Design
- ✅ Selecting a suitable database system (DBS)
- ✅ Logical Design
- ✅ Physical Design
- ✅ Implementation (Implement the systems)

## 🔎 Requirement Collection and Analysis

- System analysts and DBAs need to interview users to understand user needs.
- System analysis tools such as Data Flow Diagram (DFD) can be used to assist analysis and description.

## 🏗️ Conceptual Design

- 🔹 Let analysts use conceptual tools to express the information process to facilitate the exchange of opinions among users who are not familiar with computers.
- 🔹 Collect relevant documents and forms (ex. shipping orders, return orders...etc.).
- 🔹 Interviews: including operators, customers, senior managers.
- 🔹 Commonly used tools: Entities-Relational Model, E-R Model.

## 🫙 Selecting a suitable database system

- MySQL
- MSSQL
- Others

## 🎲 Logical Design

- Convert the product of conceptual design into the data schema of the real database management system (such as associated tables).
- Perform formalization - Integrity constraints between data need to be defined (Integrity Constraints).

## 🧱 Physical Design

- Design the internal storage structure, file organization, indexing, etc. of the database.
- Assessment focus: efficiency of time and space.

---

# 📌 Entity, Attributes, Relationships 🛜

---

## 🛠 Symbols

ER Models represent the **logical view** of a system from a **data perspective**, using the following symbols:

- 1️⃣ **🔲 Rectangles**: Represent **Entities**.
- 2️⃣ **🟢 Ellipses**: Represent **Attributes**.
- 3️⃣ **💎 Diamonds**: Represent **Relationships** among Entities.
- 4️⃣ **📏 Lines**: Connect **attributes to entities** and **entities to relationships**.
- 5️⃣ **🟡 Double Ellipse**: Represent **Multi-Valued Attributes**.
- 6️⃣ **🔲 Double Rectangle**: Represent **Weak Entities**.

## 🔲 Entities

- The most basic objects of the E-R Model are things that exist independently in the real world
- it can be an independent thing, or a conceptual object, (e.g. teachers, students, courses...etc).
  - things that can be clearly identified.
  - Each record in an individual is called an instance (Instance)

## 🟢 Attributes

- Used to describe individuals
- can be classified into:
  - General attributes
  - Composite attributes
  - Multivalued attributes
  - Derived attributes
  - Key attributes

### General Attributes
