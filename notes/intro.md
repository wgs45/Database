# Introduction to DBMS (Database Management System)

## Types of DBMS

1. Relational Database Management System (RDBMS): Data is organized into tables (relations) with rows and columns, and the relationships between the data are managed through primary and foreign keys. SQL (Structured Query Language) is used to query and manipulate the data. Examples are MySQL, Oracle, Microsoft SQL Server and Postgre SQL.
<br>
2. NoSQL DBMS: Designed for high-performance scenarios and large-scale data, NoSQL databases store data in various non-relational formats such as key-value pairs, documents, graphs, or columns. Examples are NoSQL DBMS are MongoDB, Cassandra, DynamoDB and Redis.
<br>
3. Object-Oriented DBMS (OODBMS): Stores data as objects, similar to those used in object-oriented programming, allowing for complex data representations and relationships.

## Applications of DBMS

- Banking: Manages accounts, transactions, and financial records.
- Airlines: Handles bookings, schedules, and availability.
- E-commerce: Supports catalogs, orders, and secure transactions.
- Healthcare: Stores patient records and billing.
- Education: Manages student data and course enrollments.
- Telecom: Tracks call records and billing.
- Government: Maintains census and taxation data.
- Social Media: Stores user profiles and posts efficiently.

## Database Language
* Data Definition Language
* Data Manipulation Language
* Data Control Language
* Transactional Control Language

## Data Definition Language (DDL)

DDL is the short name for Data Definition Language, which deals with database schemas and descriptions, of how the data should reside in the database.

- CREATE: to create a database and its objects like (table, index, views, store procedure, function, and triggers)
- ALTER: alters the structure of the existing database
- DROP: delete objects from the database
- TRUNCATE: remove all records from a table, including all spaces allocated for the records are removed
- COMMENT: add comments to the data dictionary
- RENAME: rename an object

## Data Manipulation Language (DML)

DML is the short name for Data Manipulation Language which deals with data manipulation and includes most common SQL statements such SELECT, INSERT, UPDATE, DELETE, etc., and it is used to store, modify, retrieve, delete and update data in a database. Data query language(DQL) is the subset of “Data Manipulation Language”. The most common command of DQL is SELECT statement. SELECT statement help on retrieving the data from the table without changing anything in the table.

- SELECT: retrieve data from a database
- INSERT: insert data into a table
- UPDATE: updates existing data within a table
- DELETE: Delete all records from a database table
- MERGE: UPSERT operation (insert or update)
- CALL: call a PL/SQL or Java subprogram
- EXPLAIN PLAN: interpretation of the data access path
- LOCK TABLE: concurrency Control

## Data Control Language (DCL)

DCL is short for Data Control Language which acts as an access specifier to the database.(basically to grant and revoke permissions to users in the database

- GRANT: grant permissions to the user for running DML(SELECT, INSERT, DELETE,…) commands on the table
- REVOKE: revoke permissions to the user for running DML(SELECT, INSERT, DELETE,…) command on the specified table

## Transactional Control Language (TCL)

TCL is short for Transactional Control Language which acts as an manager for all types of transactional data and all transactions. Some of the command of TCL are

- Roll Back: Used to cancel  or Undo changes made in the database 
- Commit: It is used to apply or save changes in the database
- Save Point: It is used to save the data on the temporary basis in the database

## Data Query Language (DQL)

Data query language(DQL) is the subset of “Data Manipulation Language”. The most common command of DQL is the SELECT statement. SELECT statement helps us in retrieving the data from the table without changing anything or modifying the table. DQL is very important for retrieval of essential data from a database.

<br>

# DBMS Architecture

## Tier-1 Architecture

In 1-Tier Architecture the database is directly available to the user, the user can directly sit on the DBMS and use it that is, the client, server, and Database are all present on the same machine. This setup is simple and is often used in personal or standalone applications where the user interacts directly with the database.
For Example: A Microsoft Excel spreadsheet is a great example of one-tier architecture.

- Everything—the user interface, application logic and data is handled on a single system.
- The user directly interacts with the application, performs operations like calculations or data entry and stores data locally on the same machine.

>`This architecture is simple and works well for personal, standalone applications where no external server or network connection is needed.`


## Tier-2 Architecture

The 2-tier architecture is similar to a basic client-server model . The application at the client end directly communicates with the database on the server side. APIs like ODBC and JDBC are used for this interaction. The server side is responsible for providing query processing and transaction management functionalities. On the client side, the user interfaces and application programs are run. The application on the client side establishes a connection with the server side to communicate with the DBMS.
For Example: A Library Management System used in schools or small organizations is a classic example of two-tier architecture.

- Client Layer (Tier 1): This is the user interface that library staff or users interact with. For example they might use a desktop application to search for books, issue them, or check due dates.
- Database Layer (Tier 2): The database server stores all the library records such as book details, user information, and transaction logs.

> `The client layer sends a request (like searching for a book) to the database layer which processes it and sends back the result. This separation allows the client to focus on the user interface, while the server handles data storage and retrieval.`

## Tier-3 Architecture

3-Tier Architecture , there is another layer between the client and the server. The client does not directly communicate with the server. Instead, it interacts with an application server which further communicates with the database system and then the query processing and transaction management takes place. This intermediate layer acts as a medium for the exchange of partially processed data between the server and the client. This type of architecture is used in the case of large web applications.

For Example: E-commerce Store
- User: You visit an online store, search for a product and add it to your cart.
- Processing: The system checks if the product is in stock, calculates the total price and applies any discounts.
- Database: The product details, your cart and order history are stored in the database for future reference.

> `Suitable for large scale applications`
