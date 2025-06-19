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
