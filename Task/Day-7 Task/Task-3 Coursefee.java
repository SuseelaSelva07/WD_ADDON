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
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> insert into Student values('Taeshi',1995,'taeshi@gmail.com',30121995,'Maths');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+------------------+----------+--------+
| sname  | sroll | sgmail           | phnum    | course | 
+--------+-------+------------------+----------+--------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 | Maths  |    
+--------+-------+------------------+----------+--------+
1 row in set (0.00 sec)

mysql> insert into Student values('Kookie',1997,'kookie@gmail.com',11091997,'Sports');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Mochi',1996,'mochi@gmail.com',13101995,'Dance');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Yoongi',1994,'yoongi@gmail.com',88031994,'Arts');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Moonie',1992,'moomie@gmail.com',44121992,'Physics');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Hope',1993,'hope@gmail.com',18021994,'History');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Joonie',1991,'joonie@gmail.com',12091994,'Chemistry');
Query OK, 1 row affected (0.00 sec)
    
mysql> select * from student;
+--------+-------+------------------+----------+-----------+
| sname  | sroll | sgmail           | phnum    | course    |
+--------+-------+------------------+----------+-----------+
| Taeshi |  1995 | taeshi@gmail.com | 30121995 | Maths     |   
| Kookie |  1997 | kookie@gmail.com | 11091997 | Sports    |    
| Mochi  |  1996 | mochi@gmail.com  | 13101995 | Dance     |  
| Yoongi |  1994 | yoongi@gmail.com | 88031994 | Arts      |   
| Moonie |  1992 | moomie@gmail.com | 44121992 | Physics   |    
| Hope   |  1994 | hope@gmail.com   | 18021994 | History   |    
| Joonie |  1995 | joonie@gmail.com | 12091994 | Chemistry |    
+--------+-------+------------------+----------+-----------+
7 rows in set (0.00 sec)

mysql>ALTER TABLE student
ADD coursefees int;

mysql>ulter student set cousefees=25000
    where sroll=1995;
Query OK, 1 row affected (0.00 sec)

mysql>ulter student set cousefees=22000
    where sroll=1997;
Query OK, 1 row affected (0.00 sec)

mysql>ulter student set cousefees=21500
    where sroll=1996;
Query OK, 1 row affected (0.00 sec)

mysql>ulter student set cousefees=20000
    where sroll=1994;
Query OK, 1 row affected (0.00 sec)

mysql>ulter student set cousefees=20500
    where sroll=1992;
Query OK, 1 row affected (0.00 sec)

mysql>ulter student set cousefees=19800
    where sroll=1993;
Query OK, 1 row affected (0.00 sec)

mysql>ulter student set cousefees=19500
    where sroll=1991;
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
| Hope   |  1993 | hope@gmail.com   | 18021994 | History   |    19800 |
| Joonie |  1991 | joonie@gmail.com | 12091994 | Chemistry |    19500 |
+--------+-------+------------------+----------+-----------+----------+
7 rows in set (0.00 sec)
