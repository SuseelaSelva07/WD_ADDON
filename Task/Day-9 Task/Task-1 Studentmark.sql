1. Fetch students with > 80 marks

mysql> create database scl;
Query OK, 1 row affected (0.01 sec)

mysql> use scl;
Database changed
mysql> create table Student (
    ->     sname varchar(50),
    ->     sroll int,
    ->     course varchar(50),
    ->     Mark int
    ->     );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Student values('Taeshi',1995,'Maths',99);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+--------+------+
| sname  | sroll | course | Mark |
+--------+-------+--------+------+
| Taeshi |  1995 | Maths  |   99 |
+--------+-------+--------+------+
1 row in set (0.00 sec)

mysql>  insert into Student values('Kookie',1997,'Sports',97);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Mochi',1996,'Dance',95);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into Student values('Yoongi',1994,'Arts',92);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Moonie',1992,'Physics',90);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into Student values('Hope',1994,'History',88);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into Student values('Joonie',1995,'Chemistry',85);
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+-----------+------+
| sname  | sroll | course    | Mark |
+--------+-------+-----------+------+
| Taeshi |  1995 | Maths     |   99 |
| Kookie |  1997 | Sports    |   97 |
| Mochi  |  1996 | Dance     |   95 |
| Yoongi |  1994 | Arts      |   92 |
| Moonie |  1992 | Physics   |   90 |
| Hope   |  1994 | History   |   88 |
| Joonie |  1995 | Chemistry |   85 |
+--------+-------+-----------+------+
7 rows in set (0.00 sec)

mysql> select *
    -> from student
    -> where mark > 80;
+--------+-------+-----------+------+
| sname  | sroll | course    | Mark |
+--------+-------+-----------+------+
| Taeshi |  1995 | Maths     |   99 |
| Kookie |  1997 | Sports    |   97 |
| Mochi  |  1996 | Dance     |   95 |
| Yoongi |  1994 | Arts      |   92 |
| Moonie |  1992 | Physics   |   90 |
| Hope   |  1994 | History   |   88 |
| Joonie |  1995 | Chemistry |   85 |
+--------+-------+-----------+------+
7 rows in set (0.00 sec)

mysql> update student set mark=75
    -> where sname='joonie';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+--------+-------+-----------+------+
| sname  | sroll | course    | Mark |
+--------+-------+-----------+------+
| Taeshi |  1995 | Maths     |   99 |
| Kookie |  1997 | Sports    |   97 |
| Mochi  |  1996 | Dance     |   95 |
| Yoongi |  1994 | Arts      |   92 |
| Moonie |  1992 | Physics   |   90 |
| Hope   |  1994 | History   |   88 |
| Joonie |  1995 | Chemistry |   75 |
+--------+-------+-----------+------+
7 rows in set (0.00 sec)

mysql> select *
    -> from student
    -> where mark > 80;
+--------+-------+---------+------+
| sname  | sroll | course  | Mark |
+--------+-------+---------+------+
| Taeshi |  1995 | Maths   |   99 |
| Kookie |  1997 | Sports  |   97 |
| Mochi  |  1996 | Dance   |   95 |
| Yoongi |  1994 | Arts    |   92 |
| Moonie |  1992 | Physics |   90 |
| Hope   |  1994 | History |   88 |
+--------+-------+---------+------+
6 rows in set (0.00 sec)




