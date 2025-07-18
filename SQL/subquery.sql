mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| details            |
| emp                |
| employee           |
| information_schema |
| library            |
| mysql              |
| performance_schema |
| school             |
| student            |
| sys                |
+--------------------+
11 rows in set (0.00 sec)

mysql> use college;
Database changed
mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where mgr =(select empno
    -> from emp
    -> where ename='king');
+-------+
| ename |
+-------+
| JONES |
| BLAKE |
| CLARK |
+-------+
3 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where empno = (select mgr
    -> from emp
    -> where ename='smith');
+-------+
| ename |
+-------+
| FORD  |
+-------+
1 row in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where empno=(select mgr
    -> from emp
    -> where empno=(select mgr
    -> from emp
    -> where ename='smith'));
+-------+
| ename |
+-------+
| JONES |
+-------+
1 row in set (0.00 sec)

mysql> select ename,loc
    -> from emp,dept
    -> where emp,deptno=dept.deptno;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',deptno=dept.deptno' at line 3
mysql> select ename, loc
    -> from emp,dept
    -> where emp.deptno=dept.deptno;
+--------+----------+
| ename  | loc      |
+--------+----------+
| SMITH  | DALLAS   |
| ALLEN  | CHICAGO  |
| WARD   | CHICAGO  |
| JONES  | DALLAS   |
| MARTIN | CHICAGO  |
| BLAKE  | CHICAGO  |
| CLARK  | NEW YORK |
| SCOTT  | DALLAS   |
| KING   | NEW YORK |
| TURNER | CHICAGO  |
| ADAMS  | DALLAS   |
| JAMES  | CHICAGO  |
| FORD   | DALLAS   |
| MILLER | NEW YORK |
+--------+----------+
14 rows in set (0.00 sec)

mysql> select job, sal
    -> from emp;
+-----------+---------+
| job       | sal     |
+-----------+---------+
| CLERK     |  800.00 |
| SALESMAN  | 1600.00 |
| SALESMAN  | 1250.00 |
| MANAGER   | 2975.00 |
| SALESMAN  | 1250.00 |
| MANAGER   | 2850.00 |
| MANAGER   | 2450.00 |
| ANALYST   | 3000.00 |
| PRESIDENT | 5000.00 |
| SALESMAN  | 1500.00 |
| CLERK     | 1100.00 |
| CLERK     |  950.00 |
| ANALYST   | 3000.00 |
| CLERK     | 1300.00 |
+-----------+---------+
14 rows in set (0.00 sec)

mysql> select * from emp
    -> left outer dept
    -> on emp.deptno=dept.deptno;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'dept
on emp.deptno=dept.deptno' at line 2
mysql> select *
    -> from emp
    -> on emp.deptno=dept.deptno;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on emp.deptno=dept.deptno' at line 3
mysql> select *
    -> from emp
    -> right join dept
    -> on emp.deptno=dept.deptno;
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno | deptno | dname      | loc      |
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |     30 | SALES      | CHICAGO  |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |     30 | SALES      | CHICAGO  |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |     30 | SALES      | CHICAGO  |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |     30 | SALES      | CHICAGO  |
|  NULL | NULL   | NULL      | NULL | NULL       |    NULL |    NULL |   NULL |     40 | OPERATIONS | BOSTON   |
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
15 rows in set (0.00 sec)


mysql> select e1.ename emp_name,e2.ename mgr_name
    -> from emp e1,emp e2
    -> where e1.mgr=e2.empno AND e1.job='clerk';
+----------+----------+
| emp_name | mgr_name |
+----------+----------+
| JAMES    | BLAKE    |
| MILLER   | CLARK    |
| ADAMS    | SCOTT    |
| SMITH    | FORD     |
+----------+----------+
4 rows in set (0.00 sec)

