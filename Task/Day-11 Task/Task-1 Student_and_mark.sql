1.Join students and marks
    
create database scl;
Query OK, 1 row affected (0.01 sec)

mysql> use scl;
Database changed
mysql> create table Student (
    ->     sname varchar(50),
    ->     sroll int,
    ->     course varchar(50),
    ->     );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Student values('Taeshi',1995,'Maths');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+--------+
| sname  | sroll | course |
+--------+-------+--------+
| Taeshi |  1995 | Maths  |   
+--------+-------+--------+
1 row in set (0.00 sec)

mysql>  insert into Student values('Kookie',1997,'Sports');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Mochi',1996,'Dance');
Query OK, 1 row affected (0.00 sec)

mysql>  insert into Student values('Yoongi',1994,'Arts');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Student values('Moonie',1992,'Physics');
Query OK, 1 row affected (0.00 sec)

mysql>  insert into Student values('Hope',1994,'History');
Query OK, 1 row affected (0.00 sec)

mysql>  insert into Student values('Joonie',1995,'Chemistry');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+-------+-----------+
| sname  | sroll | course    | 
+--------+-------+-----------+
| Taeshi |  1995 | Maths     |   
| Kookie |  1997 | Sports    |  
| Mochi  |  1996 | Dance     |   
| Yoongi |  1994 | Arts      |   
| Moonie |  1992 | Physics   |   
| Hope   |  1994 | History   |   
| Joonie |  1995 | Chemistry |   
+--------+-------+-----------+
7 rows in set (0.00 sec)


  
mysql> select * from student;
+--------+-------+-----------+
| sname  | sroll | Subject   |
+--------+-------+-----------+
| Taeshi |  1995 | Maths     |
| Kookie |  1997 | Sports    |
| Mochi  |  1996 | Dance     |
| Yoongi |  1994 | Arts      |
| Moonie |  1992 | Physics   |
| Hope   |  1994 | History   |
| Joonie |  1995 | Chemistry |
+--------+-------+-----------+
7 rows in set (0.00 sec)

    mysql> create table marks(
    -> StudMark int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>  insert into mark values (99);
ERROR 1146 (42S02): Table 'scl.mark' doesn't exist
mysql>  insert into marks values (99);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into marks values (95);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into marks values (92);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into marks values (89);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into marks values (85);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into marks values (83);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into marks values (81);
Query OK, 1 row affected (0.00 sec)

mysql> select * from marks;
+----------+
| StudMark |
+----------+
|       99 |
|       95 |
|       92 |
|       89 |
|       85 |
|       83 |
|       81 |
+----------+
7 rows in set (0.00 sec)

mysql> select *
    -> from student cross join marks;
+--------+-------+-----------+----------+
| sname  | sroll | Subject   | StudMark |
+--------+-------+-----------+----------+
| Joonie |  1998 | Chemistry |       99 |
| Hope   |  1993 | History   |       99 |
| Moonie |  1992 | Physics   |       99 |
| Yoongi |  1994 | Arts      |       99 |
| Mochi  |  1996 | Dance     |       99 |
| Kookie |  1997 | Sports    |       99 |
| Taeshi |  1995 | Maths     |       99 |
| Joonie |  1998 | Chemistry |       95 |
| Hope   |  1993 | History   |       95 |
| Moonie |  1992 | Physics   |       95 |
| Yoongi |  1994 | Arts      |       95 |
| Mochi  |  1996 | Dance     |       95 |
| Kookie |  1997 | Sports    |       95 |
| Taeshi |  1995 | Maths     |       95 |
| Joonie |  1998 | Chemistry |       92 |
| Hope   |  1993 | History   |       92 |
| Moonie |  1992 | Physics   |       92 |
| Yoongi |  1994 | Arts      |       92 |
| Mochi  |  1996 | Dance     |       92 |
| Kookie |  1997 | Sports    |       92 |
| Taeshi |  1995 | Maths     |       92 |
| Joonie |  1998 | Chemistry |       89 |
| Hope   |  1993 | History   |       89 |
| Moonie |  1992 | Physics   |       89 |
| Yoongi |  1994 | Arts      |       89 |
| Mochi  |  1996 | Dance     |       89 |
| Kookie |  1997 | Sports    |       89 |
| Taeshi |  1995 | Maths     |       89 |
| Joonie |  1998 | Chemistry |       85 |
| Hope   |  1993 | History   |       85 |
| Moonie |  1992 | Physics   |       85 |
| Yoongi |  1994 | Arts      |       85 |
| Mochi  |  1996 | Dance     |       85 |
| Kookie |  1997 | Sports    |       85 |
| Taeshi |  1995 | Maths     |       85 |
| Joonie |  1998 | Chemistry |       83 |
| Hope   |  1993 | History   |       83 |
| Moonie |  1992 | Physics   |       83 |
| Yoongi |  1994 | Arts      |       83 |
| Mochi  |  1996 | Dance     |       83 |
| Kookie |  1997 | Sports    |       83 |
| Taeshi |  1995 | Maths     |       83 |
| Joonie |  1998 | Chemistry |       81 |
| Hope   |  1993 | History   |       81 |
| Moonie |  1992 | Physics   |       81 |
| Yoongi |  1994 | Arts      |       81 |
| Mochi  |  1996 | Dance     |       81 |
| Kookie |  1997 | Sports    |       81 |
| Taeshi |  1995 | Maths     |       81 |
+--------+-------+-----------+----------+
49 rows in set (0.00 sec)

