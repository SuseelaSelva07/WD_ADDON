1.To count students per course:
  
CREATE TABLE Stud (
  Sid int,
  Sname varchar(15),
  Scourse varchar(10),
  Sdept varchar(10)
);

-- insert
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (1, 'Sushii','computer' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (2, 'Taeshi','science' ,'manager');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (3, 'Kookie','maths' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (4, 'Jooni','english' ,'clerk');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (5, 'Yoongi','cs' ,'clerk');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (6, 'RM','maths' ,'manager');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (7, 'Mochi','english' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (8, 'Monie','science' ,'President');


--fetch
select Scourse, count(*) as total_students
from Student
group by Scourse;

Output:

+----------+----------------+
| Scourse  | total_students |
+----------+----------------+
| computer |              1 |
| science  |              2 |
| maths    |              2 |
| english  |              2 |
| cs       |              1 |
+----------+----------------+


