1.Create student and course tables

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| details            |
| emp                |
| employee           |
| information_schema |
| mysql              |
| performance_schema |
| student            |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> create database school;
Query OK, 1 row affected (0.01 sec)

mysql> use school;
Database changed
mysql> create table Student (
    -> sname varchar(50),
    -> sroll int,
    -> sgmail varchar(50),
    -> phnum int,
    -> course varchar(50),
    -> courfees int
    -> );
Query OK, 0 rows affected (0.03 sec)
    
mysql> insert into Student values('Taeshi',1995,'taeshi@gmail.com',30121995,'Maths',25000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+------------------+----------+--------+----------+
| sname  | sroll | sgmail           | phnum    | course | courfees |
+--------+-------+------------------+----------+--------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 | Maths  |    25000 |
+--------+-------+------------------+----------+--------+----------+
1 row in set (0.00 sec)

