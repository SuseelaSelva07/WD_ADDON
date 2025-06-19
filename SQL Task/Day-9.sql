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
