# Multi-RDBMS Comparison Lab

![Multi-RDBMS Comparison Lab](images/00_project_hero/multi_rdbms_comparison_lab_hero.png)

This repository is a practical SQL and relational database comparison lab.

The goal is to test the same basic SQL operations across multiple relational database systems and client tools. The project focuses on connection validation, SQL execution, a common sample model, and syntax differences between database engines.

## Database systems used

- Oracle Database with Toad for Oracle
- Microsoft SQL Server with SQL Server Management Studio 22
- PostgreSQL with pgAdmin
- MySQL with MySQL Workbench
- IBM Db2 running in Docker with DBeaver
- SQLite with DBeaver

SQLite is included as an additional comparison database. It is a file-based embedded SQL database, not a server-based RDBMS like Oracle, SQL Server, PostgreSQL, MySQL, or Db2.

## Current content

The repository includes:

- database client screenshots;
- connection test screenshots;
- SQL connection test scripts;
- a common `customers` / `orders` sample model;
- CREATE TABLE scripts;
- INSERT scripts;
- basic SELECT examples;
- JOIN and GROUP BY examples;
- cleanup scripts;
- execution screenshots for all six database environments.

## Documentation

The detailed documentation is written in Hungarian:

- `docs/01_tools_and_connection_tests.md`
- `docs/02_sample_model_and_sql_execution.md`
- `docs/03_rdbms_differences.md`

## Note

This is a learning and portfolio lab. The screenshots show local lab environments and test databases only. No production data, passwords, tokens, or sensitive information are included.

## Related project

This repository provides the RDBMS foundation and comparison layer. The follow-up project extends this work into a multi-database data extraction workflow:

- [multi-rdbms-data-extraction-lab](https://github.com/gergelyhajdu/multi-rdbms-data-extraction-lab)
