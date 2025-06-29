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
