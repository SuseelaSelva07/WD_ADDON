mysql>  create database Student;
Query OK, 1 row affected (0.01 sec)

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

mysql> use student;
Database changed
mysql> create table Student (
    ->  sname varchar(50),
    -> sroll int,
    -> sgmail varchar(50),
    -> phnum int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Student values('Taeshi',1995,'taeshi@gmail.com',30121995);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+------------------+----------+
| sname  | sroll | sgmail           | phnum    |
+--------+-------+------------------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 |
+--------+-------+------------------+----------+
1 row in set (0.00 sec)

mysql> insert into Student values('Kookie',1997,'kookie@gmail.com',11091997);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Mochi',1996,'mochi@gmail.com',13101995);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Yoongi',1994,'yoongi@gmail.com',88031994);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Moonie',1992,'moomie@gmail.com',44121992);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Hope',1994,'hope@gmail.com',18021994);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Joonie',1995,'joonie@gmail.com',12091994);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+------------------+----------+
| sname  | sroll | sgmail           | phnum    |
+--------+-------+------------------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 |
| Kookie |  1997 | kookie@gmail.com | 11091997 |
| Mochi  |  1996 | mochi@gmail.com  | 13101995 |
| Yoongi |  1994 | yoongi@gmail.com | 88031994 |
| Moonie |  1992 | moomie@gmail.com | 44121992 |
| Hope   |  1994 | hope@gmail.com   | 18021994 |
| Joonie |  1995 | joonie@gmail.com | 12091994 |
+--------+-------+------------------+----------+
7 rows in set (0.00 sec)

mysql> update student set sroll=99031993
    -> where sname='Yoongi';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+--------+----------+------------------+----------+
| sname  | sroll    | sgmail           | phnum    |
+--------+----------+------------------+----------+
| Taeshi |     1995 | taeshi@gmail.com | 30121995 |
| Kookie |     1997 | kookie@gmail.com | 11091997 |
| Mochi  |     1996 | mochi@gmail.com  | 13101995 |
| Yoongi | 99031993 | yoongi@gmail.com | 88031994 |
| Moonie |     1992 | moomie@gmail.com | 44121992 |
| Hope   |     1994 | hope@gmail.com   | 18021994 |
| Joonie |     1995 | joonie@gmail.com | 12091994 |
+--------+----------+------------------+----------+
7 rows in set (0.00 sec)

mysql> update student set sroll=1993
    -> where sname='Yoongi';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+--------+-------+------------------+----------+
| sname  | sroll | sgmail           | phnum    |
+--------+-------+------------------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 |
| Kookie |  1997 | kookie@gmail.com | 11091997 |
| Mochi  |  1996 | mochi@gmail.com  | 13101995 |
| Yoongi |  1993 | yoongi@gmail.com | 88031994 |
| Moonie |  1992 | moomie@gmail.com | 44121992 |
| Hope   |  1994 | hope@gmail.com   | 18021994 |
| Joonie |  1995 | joonie@gmail.com | 12091994 |
+--------+-------+------------------+----------+
7 rows in set (0.00 sec)

mysql> update student set sroll=1998
    -> where sname='Joonie';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+--------+-------+------------------+----------+
| sname  | sroll | sgmail           | phnum    |
+--------+-------+------------------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 |
| Kookie |  1997 | kookie@gmail.com | 11091997 |
| Mochi  |  1996 | mochi@gmail.com  | 13101995 |
| Yoongi |  1993 | yoongi@gmail.com | 88031994 |
| Moonie |  1992 | moomie@gmail.com | 44121992 |
| Hope   |  1994 | hope@gmail.com   | 18021994 |
| Joonie |  1998 | joonie@gmail.com | 12091994 |
+--------+-------+------------------+----------+
7 rows in set (0.00 sec)

mysql> create table Course(
    ->  Coursefee int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into course values(10000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values(20000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values(30000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values(40000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values(50000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values(60000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values(70000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+------------------+----------+
| sname  | sroll | sgmail           | phnum    |
+--------+-------+------------------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 |
| Kookie |  1997 | kookie@gmail.com | 11091997 |
| Mochi  |  1996 | mochi@gmail.com  | 13101995 |
| Yoongi |  1993 | yoongi@gmail.com | 88031994 |
| Moonie |  1992 | moomie@gmail.com | 44121992 |
| Hope   |  1994 | hope@gmail.com   | 18021994 |
| Joonie |  1998 | joonie@gmail.com | 12091994 |
+--------+-------+------------------+----------+
7 rows in set (0.00 sec)

mysql> select *from course;
+-----------+
| Coursefee |
+-----------+
|     10000 |
|     20000 |
|     30000 |
|     40000 |
|     50000 |
|     60000 |
|     70000 |
+-----------+
7 rows in set (0.00 sec)

mysql> select * from student;
+--------+-------+------------------+----------+
| sname  | sroll | sgmail           | phnum    |
+--------+-------+------------------+----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 |
| Kookie |  1997 | kookie@gmail.com | 11091997 |
| Mochi  |  1996 | mochi@gmail.com  | 13101995 |
| Yoongi |  1993 | yoongi@gmail.com | 88031994 |
| Moonie |  1992 | moomie@gmail.com | 44121992 |
| Hope   |  1994 | hope@gmail.com   | 18021994 |
| Joonie |  1998 | joonie@gmail.com | 12091994 |
+--------+-------+------------------+----------+
7 rows in set (0.00 sec)
