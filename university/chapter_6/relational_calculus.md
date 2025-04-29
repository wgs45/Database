# 📜 Relational Calculus ✨ ~ Magical Study Journal ~

---

## 🌟 What is Relational Calculus?

🔹 A **query language** for relational databases, designed by **Codd in 1972**! 📖✨  
🔹 **Non-procedural**: You describe **what** you want, _not how_ to get it! 🧙‍♀️  
🔹 Two types:

- **Tuple-Oriented** (based on rows 🌸)
- **Domain-Oriented** (based on attribute values 🌟)

> ✨ **Relationally Complete**:  
> If a query language can do everything relational calculus can, it’s said to have "relational completeness."  
> ✔️ **Relational Algebra** and **SQL** are both relationally complete! 💻🌈

---

## 🌸 Tuple-Oriented Relational Calculus (TRC)

🔹 Works with **tuples** (rows) 📄  
🔹 Structure:

```
{Tuple Variable | Condition}
```

🔹 **BNF Form**:

```
Range of tuple variable is Relation;
Fields you want WHERE Conditions
```

---

### 🧺 Example 1: Find employee names and addresses with salary < 100,000

**Simplified:**

```
{e.EmployeeName, e.Address | Employee(e) ∧ e.Salary < 100000}
```

**BNF:**

```
Range of e is Employee;
e.EmployeeName, e.Address WHERE e.Salary < 100000;
```

---

### 🧺 Example 2: Find employee names and department names with salary < 100,000

**Simplified:**

```
{e.EmployeeName, d.DepartmentName | Employee(e) ∧ Department(d) ∧ e.DepartmentCode = d.DepartmentCode ∧ e.Salary < 100000}
```

**BNF:**

```
Range of e is Employee;
Range of d is Department;
e.EmployeeName, d.DepartmentName WHERE e.DepartmentCode = d.DepartmentCode ∧ e.Salary < 100000;
```

---

## 🔸 Related Language: QUEL

💬 **QUEL** (in INGRES system) uses TRC-like structure but ✨adds aggregation and grouping✨!  
Syntax feels like:

```
Range of tuple variable is Relation;
Retrieve fields WHERE Conditions
```

Super handy for interactive graphic systems! 🎨🖥️

---

## 🌈 Quantifiers Magic ✨

---

### 🧙‍♂️ Universal Quantifier (FORALL, ∀)

- Meaning: "For **all** instances..." 🌍

🧺 **Example:** Find supplier codes where **every** product has been sold!

```
{t.SupplierCode | Sales(t) ∧ (∀ p)(Product(p) ∧ t.ProductCode = p.ProductCode → t.SalesVolume > 0)}
```

---

### 🧚‍♀️ Existential Quantifier (∃)

- Meaning: "There **exists** at least one..." 🌟

🧺 **Example:** Find supplier codes that sold at least **one** product:

```
{t.SupplierCode | Sales(t) ∧ (∃ p)(Product(p) ∧ t.ProductCode = p.ProductCode ∧ t.SalesVolume > 0)}
```

🧺 **Bonus Example:** Supplier codes with **no products sold**:

```
{t.SupplierCode | Sales(t) ∧ ¬(∃ p)(Product(p) ∧ t.ProductCode = p.ProductCode ∧ t.SalesVolume > 0)}
```

---

## 🌸 Domain-Oriented Relational Calculus (DRC)

🔹 Works with **domain variables** (individual attributes 🌟)  
🔹 Structure:

```
{Domain Variables | Condition}
```

🔹 In DRC, list every field individually! 🧹

---

### 🧺 Example: Find employee names and addresses where salary < 100,000

**Simplified:**

```
{b, d | (∃ a, c, e, f, g)(Employee(a, b, c, d, e, f, g) ∧ e < 100000)}
```

**BNF:**

```
Range of a, b, c, d, e, f, g is Employee;
b, d WHERE salary (e) < 100000;
```

---

## 🪄 Relational Algebra vs. Relational Calculus

| ⚔️ Feature              | 🛡️ Relational Algebra  | 🎀 Relational Calculus      |
| :---------------------- | :--------------------- | :-------------------------- |
| Creation Era            | Earlier                | Later                       |
| Language Type           | Procedural (how to do) | Non-procedural (what to do) |
| Style                   | Close to programming   | Close to natural language   |
| Implementation          | Direct                 | Requires transformation     |
| Basic Operands          | Provided               | Not provided                |
| Relational Completeness | ✔️                     | ✔️                          |

---

# 🎀 TL;DR Quick Recap

- Relational Calculus = "What you want," not "how you get it" 🧠✨
- Two styles: Tuple (TRC) = rows, Domain (DRC) = columns 📄📝
- Use **∀** for _everything_ and **∃** for _something_!
- Relational Algebra = older, procedural; Calculus = newer, declarative 🎩🎨
- Both are **relationally complete** 💎
