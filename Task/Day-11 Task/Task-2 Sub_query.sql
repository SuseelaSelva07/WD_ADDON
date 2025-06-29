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

