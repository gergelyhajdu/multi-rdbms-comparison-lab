# Mintaadatmodell és SQL futtatás

Ez a dokumentum az egységes `customers` / `orders` mintaadatmodell futtatását mutatja be több relációs adatbázis-kezelő rendszerben.

A cél az, hogy ugyanazt az egyszerű logikai adatmodellt több adatbázisban is létrehozzam, majd az alapvető SQL-műveleteket összehasonlítható módon futtassam.

## Mintaadatmodell

A modell két táblából áll:

```text
customers
orders
```

A két tábla között egy-a-többhöz kapcsolat van:

```text
customers.customer_id → orders.customer_id
```

Egy ügyfélhez több rendelés is tartozhat.

## Customers tábla

A `customers` tábla ügyféladatokat tartalmaz.

Mezők:

- `customer_id` – technikai elsődleges kulcs;
- `customer_name` – ügyfél neve;
- `city` – város;
- `created_at` – rekord létrehozásának időpontja.

A `created_at` mező technikai / audit jellegű mező. Az adatbázis automatikusan kitölti az aktuális dátum/idő értékkel, ha beszúráskor nem adunk neki külön értéket.

## Orders tábla

Az `orders` tábla egyszerű rendelési adatokat tartalmaz.

Mezők:

- `order_id` – technikai elsődleges kulcs;
- `customer_id` – hivatkozás a `customers` táblára;
- `order_date` – rendelés dátuma;
- `amount` – rendelés összege;
- `status` – rendelés státusza.

## SQL fájlok

A mintaadatmodell SQL fájljai adatbázisonként külön almappában vannak:

```text
sql/02_sample_model/
├── oracle/
├── sqlserver/
├── postgresql/
├── mysql/
├── db2/
└── sqlite/
```

Minden adatbázis-mappában azonos logika szerint szerepelnek a fájlok:

```text
02_create_tables.sql
03_insert_sample_data.sql
04_basic_selects.sql
05_joins_and_group_by.sql
06_cleanup.sql
```

A `06_cleanup.sql` csak akkor szükséges, ha a táblákat törölni akarjuk, és később újra szeretnénk futtatni a teljes tesztet.

## Oracle Database

![Oracle táblák létrehozása](../images/02_sample_model_and_sql_execution/oracle/01_oracle_create_tables.png)

![Oracle mintaadatok beszúrása](../images/02_sample_model_and_sql_execution/oracle/02_oracle_insert_sample_data.png)

![Oracle alap SELECT lekérdezések](../images/02_sample_model_and_sql_execution/oracle/03_oracle_basic_selects.png)

![Oracle JOIN és GROUP BY lekérdezések](../images/02_sample_model_and_sql_execution/oracle/04_oracle_joins_and_group_by.png)

![Oracle cleanup](../images/02_sample_model_and_sql_execution/oracle/05_oracle_cleanup.png)

## MySQL

![MySQL táblák létrehozása](../images/02_sample_model_and_sql_execution/mysql/01_mysql_create_tables.png)

![MySQL mintaadatok beszúrása](../images/02_sample_model_and_sql_execution/mysql/02_mysql_insert_sample_data.png)

![MySQL alap SELECT lekérdezések](../images/02_sample_model_and_sql_execution/mysql/03_mysql_basic_selects.png)

![MySQL JOIN és GROUP BY lekérdezések](../images/02_sample_model_and_sql_execution/mysql/04_mysql_joins_and_group_by.png)

![MySQL cleanup](../images/02_sample_model_and_sql_execution/mysql/05_mysql_cleanup.png)

## PostgreSQL

![PostgreSQL táblák létrehozása](../images/02_sample_model_and_sql_execution/postgresql/01_postgresql_create_tables.png)

![PostgreSQL mintaadatok beszúrása](../images/02_sample_model_and_sql_execution/postgresql/02_postgresql_insert_sample_data.png)

![PostgreSQL alap SELECT lekérdezések](../images/02_sample_model_and_sql_execution/postgresql/03_postgresql_basic_selects.png)

![PostgreSQL JOIN és GROUP BY lekérdezések](../images/02_sample_model_and_sql_execution/postgresql/04_postgresql_joins_and_group_by.png)

![PostgreSQL cleanup](../images/02_sample_model_and_sql_execution/postgresql/05_postgresql_cleanup.png)

## Microsoft SQL Server

![SQL Server táblák létrehozása](../images/02_sample_model_and_sql_execution/sqlserver/01_sqlserver_create_tables.png)

![SQL Server mintaadatok beszúrása](../images/02_sample_model_and_sql_execution/sqlserver/02_sqlserver_insert_sample_data.png)

![SQL Server alap SELECT lekérdezések](../images/02_sample_model_and_sql_execution/sqlserver/03_sqlserver_basic_selects.png)

![SQL Server JOIN és GROUP BY lekérdezések](../images/02_sample_model_and_sql_execution/sqlserver/04_sqlserver_joins_and_group_by.png)

![SQL Server cleanup](../images/02_sample_model_and_sql_execution/sqlserver/05_sqlserver_cleanup.png)

## IBM Db2

![IBM Db2 táblák létrehozása](../images/02_sample_model_and_sql_execution/db2/01_db2_create_tables.png)

![IBM Db2 mintaadatok beszúrása](../images/02_sample_model_and_sql_execution/db2/02_db2_insert_sample_data.png)

![IBM Db2 alap SELECT lekérdezések](../images/02_sample_model_and_sql_execution/db2/03_db2_basic_selects.png)

![IBM Db2 JOIN és GROUP BY lekérdezések](../images/02_sample_model_and_sql_execution/db2/04_db2_joins_and_group_by.png)

![IBM Db2 cleanup](../images/02_sample_model_and_sql_execution/db2/05_db2_cleanup.png)

## SQLite

![SQLite táblák létrehozása](../images/02_sample_model_and_sql_execution/sqlite/01_sqlite_create_tables.png)

![SQLite mintaadatok beszúrása](../images/02_sample_model_and_sql_execution/sqlite/02_sqlite_insert_sample_data.png)

![SQLite alap SELECT lekérdezések](../images/02_sample_model_and_sql_execution/sqlite/03_sqlite_basic_selects.png)

![SQLite JOIN és GROUP BY lekérdezések](../images/02_sample_model_and_sql_execution/sqlite/04_sqlite_joins_and_group_by.png)

![SQLite cleanup](../images/02_sample_model_and_sql_execution/sqlite/05_sqlite_cleanup.png)

## Összegzés

Ebben a részben mind a hat adatbázisban ugyanaz a logikai mintaadatmodell futott le:

- táblák létrehozása;
- mintaadatok beszúrása;
- alap SELECT lekérdezések;
- JOIN és GROUP BY lekérdezések;
- cleanup script.

Ez a rész bizonyítja, hogy azonos üzleti modell több adatbázis-kezelőben is megvalósítható, de a konkrét SQL-szintaxis és egyes adattípusok adatbázisonként eltérhetnek.
