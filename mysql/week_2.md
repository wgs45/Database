# **MySQL Syntax - Week 2** 📚

---

## **Create a Database** 🏛️

```sql
CREATE DATABASE database_name;
```

## **Print All Values from a Table** 📊

```sql
SELECT * FROM database_name.table_name;
```

---

## **Database Concepts** 🗄️

### **Basic Terminology**

| **Term**            | **Description**                       |
| ------------------- | ------------------------------------- |
| **Database Schema** | Structure of the database             |
| **Table**           | A collection of related data          |
| **Column (Field)**  | A single attribute of data in a table |
| **Row (Record)**    | A single entry in a table             |

### **Example: School Database**

A school's **database** contains multiple tables, such as:

- **Course Information Table**
- **Teacher Information Table**
- **Student Information Table**

The **Student Information Table** might contain:

- `name`
- `student_number`
- `gender`
- `address`
- `phone_number`
- `department`
- `level`

Each student has their own unique profile.

---

## **MySQL Data Table Field Modifications** 🛠️

### **Field Constraints & Attributes**

| **Abbreviation** | **Meaning**                                     |
| ---------------- | ----------------------------------------------- |
| **PK**           | Primary Key (Unique identifier)                 |
| **NN**           | NOT NULL (Cannot be NULL)                       |
| **UQ**           | Unique (Ensures uniqueness)                     |
| **B**            | Binary (Stores binary data)                     |
| **UN**           | Unsigned (Non-negative integer)                 |
| **ZF**           | Zero-Filled (Automatically fills leading 0s)    |
| **AI**           | Auto Increment (Automatically increases values) |
| **G**            | Generated Column (Computed field)               |

### **Usage of Constraints**

- **PK (Primary Key)** → Uniquely identifies a record
- **UQ (Unique)** → Ensures values are unique in a column
