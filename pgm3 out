Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

Query OK, 10 rows affected (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 0


SELECT * FROM employee;

+--------+----------+-----------+--------+---------+-------------------+
| emp_no | emp_name | mobile_no | salary | dept_no | designation       |
+--------+----------+-----------+--------+---------+-------------------+
| E001   | Rinshad  | 987650001 | 30000  | D01     | Manager           |
| E002   | Mishal   | 987650002 | 32000  | D01     | Assistant Manager |
| E003   | Fidha    | 987650003 | 18000  | D02     | Accountant        |
| E004   | Mizba    | 987650004 | 35000  | D02     | Senior Accountant |
| E005   | Rishin   | 987650005 | 40000  | D03     | Software Engineer |
| E006   | Jasna    | 987650006 | 16000  | D01     | HR Executive      |
| E007   | Nidha    | 987650007 | 19000  | D03     | System Analyst    |
| E008   | Sadha    | 987650008 | 31000  | D02     | Finance Executive |
| E009   | Anjum    | 987650009 | 33000  | D01     | Admin Officer     |
| E010   | Ameena   | 987650010 | 45000  | D03     | Team Lead         |
+--------+----------+-----------+--------+---------+-------------------+


SELECT * FROM department;

+---------+------------------+
| dept_no | dept_name        |
+---------+------------------+
| D01     | HR               |
| D02     | Finance          |
| D03     | IT               |
| D04     | Marketing        |
| D05     | Sales            |
| D06     | Operation        |
| D07     | Customer Support |
| D08     | Research         |
| D09     | Administration   |
| D010    | TRAINING         |
+---------+------------------+


SELECT emp_no, emp_name FROM employee WHERE dept_no = 'D02';

+--------+----------+
| E003   | Fidha    |
| E004   | Mizba    |
| E008   | Sadha    |
+--------+----------+


SELECT emp_no, emp_name, designation, dept_no, salary FROM employee ORDER BY salary DESC;

(E010 45000)
(E005 40000)
(E004 35000)
(E009 33000)
(E002 32000)
(E008 31000)
(E001 30000)
(E007 19000)
(E003 18000)
(E006 16000)


SELECT emp_no, emp_name FROM employee WHERE salary BETWEEN 20000 AND 50000;

E001, E002, E004, E005, E008, E009, E010


SELECT DISTINCT designation FROM employee;

Manager  
Assistant Manager  
Accountant  
Senior Accountant  
Software Engineer  
HR Executive  
System Analyst  
Finance Executive  
Admin Officer  
Team Lead  


UPDATE employee SET salary = 45000 WHERE designation = 'Manager';
Query OK, 1 row affected


UPDATE employee SET mobile_no = 987650111 WHERE emp_name = 'Rinshad';
Query OK, 1 row affected


DELETE FROM employee WHERE salary = 2500;
Query OK, 0 rows affected


SELECT emp_name, mobile_no FROM employee WHERE emp_name LIKE 'A%';

+----------+-----------+
| Ameena   | 987650010 |
| Anjum    | 987650009 |
+----------+-----------+


SELECT * FROM employee WHERE LENGTH(emp_name) >= 3 AND salary > 30000;

(Shows employees with salary > 30000 including updated Manager salary 45000)


SELECT * FROM employee WHERE emp_no IN ('E001','E002','E006');

E001, E002, E006


SELECT emp_no, emp_name FROM employee WHERE salary BETWEEN 20000 AND 30000;

E001


SELECT * FROM employee WHERE designation = 'Manager' OR designation = 'Team Lead';

E001 (Manager - 45000)
E010 (Team Lead - 45000)


SELECT dept_no, COUNT(*) AS total_employees FROM employee GROUP BY dept_no;

D01 → 4  
D02 → 3  
D03 → 3  


SELECT dept_no, AVG(salary) AS avg_salary FROM employee GROUP BY dept_no;

D01 → 31500  
D02 → 28000  
D03 → 34666.67  


SELECT dept_no, SUM(salary) AS total_salary FROM employee GROUP BY dept_no;

D01 → 126000  
D02 → 84000  
D03 → 104000  


SELECT dept_no, MAX(salary), MIN(salary) FROM employee GROUP BY dept_no;

D01 → Max: 45000  Min: 16000  
D02 → Max: 35000  Min: 18000  
D03 → Max: 45000  Min: 19000  


SELECT dept_no, AVG(salary) FROM employee WHERE dept_no != 'D01' GROUP BY dept_no;

D02 → 28000  
D03 → 34666.67  


SELECT dept_no, AVG(salary) AS avg_salary 
FROM employee 
WHERE dept_no != 'D03' 
GROUP BY dept_no 
HAVING AVG(salary) > 20000 
ORDER BY avg_salary ASC;

D02 → 28000  
D01 → 31500  
