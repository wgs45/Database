# ER Models
------------

## Reference

- ER Models GeekForGeeks reference
[link](https://www.geeksforgeeks.org/introduction-of-er-model/ "ER Model reference")

# Introduction to ER Models

Why Use ER Diagrams In DBMS?
- ER diagrams represent the E-R model in a database, making them easy to convert into relations (tables).
<br>
- ER diagrams provide the purpose of real-world modeling of objects which makes them intently useful.
<br>
- ER diagrams require no technical knowledge of the underlying DBMS used.
It gives a standard solution for visualizing the data logically.

# Symbols used in ER Models

ER Model is used to model the logical view of the systemfrom a data perspective which consists of these symbols:

1. Rectangles: Rectangles represent Entities in the ER Model.
2. Ellipses: Ellipses represent Attributes in the ER Model.
3. Diamond: Diamonds represent Relationships among Entities.
4. Lines: Lines represent attributes to entities and entity sets with other relationship types.
5. Double Ellipse: Double Ellipses represent Multi-Valued Attributes.
6. Double Rectangle: Double Rectangle represents a Weak Entity.

# What is Entity?

An Entity may be an object with a physical existence – a particular person, car, house, or employee – or it may be an object with a conceptual existence – a company, a job, or a university course.

# What is Entity Set?

An Entity is an object of Entity Type and a set of all entities is called an entity set.

We can represent the entity set in ER Diagram but can’t represent entity in ER Diagram because entity is row andcolumn in the relation and ER Diagram is graphical representation of data.

# Types of Entity

1. Strong Entity
A Strong Entity is a type of entity that has a key Attribute. Strong Entity does not depend on other Entity in the Schema. It has a primary key, that helps in identifying it uniquely, and it is represented by a rectangle. These are called Strong Entity Types.
<br>

2. Weak Entity
An Entity type has a key attribute that uniquely identifies each entity in the entity set. But some entity type exists for which key attributes can’t be defined. These are called Weak Entity types.

# What is Attributes?

Attributes are the properties that define the entity type. For example, Roll_No, Name, DOB, Age, Address, and Mobile_No are the attributes that define entity type Student. In ER diagram, the attribute is represented by an oval.

# Types of Attributes

1. Key Attribute
The attribute which uniquely identifies each entity in the entity set is called the key attribute. For example, Roll_No will be unique for each student. In ER diagram, the key attribute is represented by an oval with underlying lines.
<br>

2. Composite Attribute 
An attribute composed of many other attributes is called a composite attribute. For example, the Address attribute of the student Entity type consists of Street, City, State, and Country. In ER diagram, the composite attribute is represented by an oval comprising of ovals.
<br>

3. Multi-Valued Attribute
An attribute consisting of more than one value for a given entity. For example, Phone_No (can be more than one for a given student). In ER diagram, a multivalued attribute is represented by a double oval.
<br>

4. Derived Attribute
An attribute that can be derived from other attributes of the entity type is known as a derived attribute. e.g.; Age (can be derived from DOB). In ER diagram, the derived attribute is represented by a dashed oval.

# Relationship Type and Relationship Set 

A Relationship Type represents the association between entity types. For example, ‘Enrolled in’ is a relationship type that exists between entity type Student and Course. In ER diagram, the relationship type is represented by a diamond and connecting the entities with lines.

# Degree of Relationship sets

1. Unary Relationship: When there is only ONE entity set participating in a relation, the relationship is called a unary relationship. For example, one person is married to only one person.
<br>

2. Binary Relationship: When there are TWO entities set participating in a relationship, the relationship is called a binary relationship. For example, a Student is enrolled in a Course.
<br>

3. Ternary Relationship: When there are three entity sets participating in a relationship, the relationship is called a ternary relationship.
<br>

4. N-ary Relationship: When there are n entities set participating in a relationship, the relationship is called an n-ary relationship.

# What is Cardinality?

The number of times an entity of an entity set participates in a relationship set is known as cardinality.

# Types of Cardinality

1. One-to-One: When each entity in each entity set can take part only once in the relationship, the cardinality is one-to-one. Let us assume that a male can marry one female and a female can marry one male. So the relationship will be one-to-one.
<br>
the total number of tables that can be used in this is 2.
<br>

2. One-to-Many: In one-to-many mapping as well where each entity can be related to more than one entity and the total number of tables that can be used in this is 2. Let us assume that one surgeon department can accommodate many doctors. So the Cardinality will be 1 to M. It means one department has many Doctors.
<br>
total number of tables that can used is 3.
<br>

3. Many-to-One: When entities in one entity set can take part only once in the relationship set and entities in other entity sets can take part more than once in the relationship set, cardinality is many to one. Let us assume that a student can take only one course but one course can be taken by many students. So the cardinality will be n to 1. It means that for one course there can be n students but for one student, there will be only one course.
<br>
The total number of tables that can be used in this is 3.
<br>

4. Many-to-Many: When entities in all entity sets can take part more than once in the relationship cardinality is many to many. Let us assume that a student can take more than one course and one course can be taken by many students. So the relationship will be many to many.
<br>
the total number of tables that can be used in this is 3.
<br>

# Participation Constraint
Participation Constraint is applied to the entity participating in the relationship set.

1. Total Participation – Each entity in the entity set must participate in the relationship. If each student must enroll in a course, the participation of students will be total. Total participation is shown by a double line in the ER diagram.
<br>

2. Partial Participation – The entity in the entity set may or may NOT participate in the relationship. If some courses are not enrolled by any of the students, the participation in the course will be partial.
<br>

# How to Draw ER Diagram?
1. The very first step is Identifying all the Entities, and place them in a Rectangle, and labeling them accordingly.
2. The next step is to identify the relationship between them and place them accordingly using the Diamond, and make sure that, Relationships are not connected to each other.
3. Attach attributes to the entities properly.
4. Remove redundant entities and relationships.
5. Add proper colors to highlight the data present in the database.
