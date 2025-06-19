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




2. List courses by ascending fees

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

3. Search books by keyword using LIKE


 create database library;
Query OK, 1 row affected (0.00 sec)

mysql> use library;
Database changed

mysql> create table books(
    -> Bname varchar(50),
    -> Bprice int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into books values('Java',20000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from library;
ERROR 1146 (42S02): Table 'library.library' doesn't exist
mysql> select * from books;
+-------+--------+
| Bname | Bprice |
+-------+--------+
| Java  |  20000 |
+-------+--------+
1 row in set (0.00 sec)

mysql> insert into books values('Python',18000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values('Maths',10000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values('English',8000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from books;
+---------+--------+
| Bname   | Bprice |
+---------+--------+
| Java    |  20000 |
| Python  |  18000 |
| Maths   |  10000 |
| English |   8000 |
+---------+--------+
4 rows in set (0.00 sec)

mysql> insert into books values('Accounts',12000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values('C++',15000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values('Linux',14000);
Query OK, 1 row affected (0.00 sec)

mysql> select * from books;
+----------+--------+
| Bname    | Bprice |
+----------+--------+
| Java     |  20000 |
| Python   |  18000 |
| Maths    |  10000 |
| English  |   8000 |
| Accounts |  12000 |
| C++      |  15000 |
| Linux    |  14000 |
+----------+--------+
7 rows in set (0.00 sec)

mysql> select Bname
    -> from books
    -> where Bname like 'java';
+-------+
| Bname |
+-------+
| Java  |
+-------+
1 row in set (0.00 sec)

mysql> select Bname
    -> from books
    -> where Bname like 'p%n';
+--------+
| Bname  |
+--------+
| Python |
+--------+
1 row in set (0.00 sec)

