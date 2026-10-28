# SQL Joins & Set Operators

A visual guide for learning how SQL combines data from multiple tables. It covers how joins work, the different join types, how to choose between them, and the rules for set operators.

## Contents

- [Understanding Joins](#understanding-joins)
- [Types of SQL Joins](#types-of-sql-joins)
- [Choosing the Right Join](#choosing-the-right-join)
- [Set Operators](#set-operators)

---

## Understanding Joins

A join combines rows from two or more tables based on a related column, usually a primary key in one table matched to a foreign key in another. This diagram gives a simple overview of how that matching works.

<img width="410" height="372" alt="Overview of how joins combine tables" src="https://github.com/user-attachments/assets/952d7682-4732-45fa-9519-eaf5edb69499" />

---

## Types of SQL Joins

Each join type differs in which rows it keeps when matches are found or missing:

- **INNER JOIN**: keeps only rows that match in both tables.
- **LEFT JOIN**: keeps all rows from the left table, plus matches from the right.
- **RIGHT JOIN**: keeps all rows from the right table, plus matches from the left.
- **FULL JOIN**: keeps all rows from both tables, matched or not.
- **CROSS JOIN**: pairs every row of one table with every row of the other.

<img width="448" height="393" alt="Diagram of the different SQL join types" src="https://github.com/user-attachments/assets/e2e8783f-74e1-4dae-adbe-69b656845ef2" />

---

## Choosing the Right Join

This decision tree helps you pick the right join for your use case. Start by asking which rows you need to keep, then follow the branches to the matching join type.

<img width="833" height="308" alt="Decision tree for choosing a join type" src="https://github.com/user-attachments/assets/70411697-7967-43e8-9cf4-ca958ba79474" />

---

## Set Operators

Where joins combine tables **side by side** (adding columns), set operators combine the results of two queries **on top of each other** (stacking rows). The main ones are:

- **UNION**: combines results and removes duplicates.
- **UNION ALL**: combines results and keeps duplicates.
- **INTERSECT**: returns only rows found in both results.
- **EXCEPT** (called **MINUS** in some databases): returns rows from the first result that are not in the second.

### Rules and usage

The images below cover the rules each set operator must follow and when to use each one. In general:

- Both queries must return the **same number of columns**.
- Corresponding columns must have **compatible data types**.
- Column names come from the **first** query.
- Ordering is applied once, at the **end** of the combined result.

<img width="434" height="256" alt="Rules for set operators" src="https://github.com/user-attachments/assets/0f69a47a-9d69-40f1-a31f-5c2fcfa06cc5" />

<img width="465" height="360" alt="Where to use each set operator" src="https://github.com/user-attachments/assets/8ce1e84f-0902-43a4-b342-850e15ba1bb5" />
