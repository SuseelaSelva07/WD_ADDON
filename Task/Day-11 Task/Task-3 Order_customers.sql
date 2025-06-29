3. Join Order and customers
mysql> create table orders(
    -> orderid int,
    -> cname varchar(50),
    -> amount int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>  insert into orders values(1995,'Taeshi',1000);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into orders values(1997,'Kookie',800);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into orders values(1996,'Mochi',600);
Query OK, 1 row affected (0.00 sec)

mysql>  insert into orders values(1997,'Yoongi',500);
Query OK, 1 row affected (0.00 sec)

mysql> select * from orders;
+---------+--------+--------+
| orderid | cname  | amount |
+---------+--------+--------+
|    1995 | Taeshi |   1000 |
|    1997 | Kookie |    800 |
|    1996 | Mochi  |    600 |
|    1997 | Yoongi |    500 |
+---------+--------+--------+
4 rows in set (0.00 sec)
