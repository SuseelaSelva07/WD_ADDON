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

mysql> insert into Student values('Kookie',1997,'kookie@gmail.com',11091997,'Sports',22000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Mochi',1996,'mochi@gmail.com',13101995,'Dance',21500);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Yoongi',1994,'yoongi@gmail.com',88031994,'Arts',20000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Moonie',1992,'moomie@gmail.com',44121992,'Physics',20500);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Hope',1994,'hope@gmail.com',18021994,'History',19800);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Joonie',1995,'joonie@gmail.com',12091994,'Chemistry',19500);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+------------------+----------+-----------+----------+
| sname  | sroll | sgmail           | phnum    | course    | courfees |
+--------+-------+------------------+----------+-----------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 | Maths     |    25000 |
| Kookie |  1997 | kookie@gmail.com | 11091997 | Sports    |    22000 |
| Mochi  |  1996 | mochi@gmail.com  | 13101995 | Dance     |    21500 |
| Yoongi |  1994 | yoongi@gmail.com | 88031994 | Arts      |    20000 |
| Moonie |  1992 | moomie@gmail.com | 44121992 | Physics   |    20500 |
| Hope   |  1994 | hope@gmail.com   | 18021994 | History   |    19800 |
| Joonie |  1995 | joonie@gmail.com | 12091994 | Chemistry |    19500 |
+--------+-------+------------------+----------+-----------+----------+
7 rows in set (0.00 sec)

mysql> select * from student ORDER BY courfees ASC;
+--------+-------+------------------+----------+-----------+----------+
| sname  | sroll | sgmail           | phnum    | course    | courfees |
+--------+-------+------------------+----------+-----------+----------+
| Joonie |  1995 | joonie@gmail.com | 12091994 | Chemistry |    19500 |
| Hope   |  1994 | hope@gmail.com   | 18021994 | History   |    19800 |
| Yoongi |  1994 | yoongi@gmail.com | 88031994 | Arts      |    20000 |
| Moonie |  1992 | moomie@gmail.com | 44121992 | Physics   |    20500 |
| Mochi  |  1996 | mochi@gmail.com  | 13101995 | Dance     |    21500 |
| Kookie |  1997 | kookie@gmail.com | 11091997 | Sports    |    22000 |
| Taeshi |  1995 | taeshi@gmail.com | 30121995 | Maths     |    25000 |
+--------+-------+------------------+----------+-----------+----------+
7 rows in set (0.00 sec)

mysql> select courfees
    -> from student
    -> ORDER BY courfees ASC;
+----------+
| courfees |
+----------+
|    19500 |
|    19800 |
|    20000 |
|    20500 |
|    21500 |
|    22000 |
|    25000 |
+----------+
7 rows in set (0.00 sec)
