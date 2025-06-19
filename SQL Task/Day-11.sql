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


2. Sub-query to find top performer
mysql> update student set sroll=1998
    -> where sname='joonie';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set Marks=99
    -> where sroll=1995;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+--------+-------+-----------+-------+
| sname  | sroll | Subject   | Marks |
+--------+-------+-----------+-------+
| Taeshi |  1995 | Maths     |    99 |
| Kookie |  1997 | Sports    |    97 |
| Mochi  |  1996 | Dance     |    95 |
| Yoongi |  1994 | Arts      |    92 |
| Moonie |  1992 | Physics   |    89 |
| Hope   |  1993 | History   |    80 |
| Joonie |  1998 | Chemistry |    85 |
+--------+-------+-----------+-------+
7 rows in set (0.00 sec)

mysql> select *
    -> from student
    -> where marks = (select max(marks)
    -> from student);
+--------+-------+---------+-------+
| sname  | sroll | Subject | Marks |
+--------+-------+---------+-------+
| Taeshi |  1995 | Maths   |    99 |
+--------+-------+---------+-------+
1 row in set (0.00 sec)

3. Join Order and customers

