2..  To calculate average salary by dept.

-- create
CREATE TABLE Employee (
  EmpId int,
  Ename varchar(15),
  Edept varchar(10),
  Esalary int
);


INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (1, 'David', 'Accounting', 50000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (2, 'Amar', 'Salesman', 25000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (3, 'Deva', 'Clerk', 35000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (4, 'Bhavya', 'Manager', 45000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (5, 'Charu', 'Clerk', 33000);

-- fetch 
SELECT Edept, avg(Esalary) as average_salary
FROM Employee
group by Edept;


Output:

+------------+----------------+
| Edept      | average_salary |
+------------+----------------+
| Accounting |     50000.0000 |
| Salesman   |     25000.0000 |
| Clerk      |     34000.0000 |
| Manager    |     45000.0000 |
+------------+----------------+


