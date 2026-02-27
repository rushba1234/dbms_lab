mysql> create database college;
Query OK, 1 row affected (0.05 sec)

mysql> use college;
Database changed
mysql> create table student(roll_no int,name varchar(100),dob date,address text,phone_no varchar(10),blood_grp varchar(5));
Query OK, 0 rows affected (0.08 sec)

mysql> create table course(id int,name varchar(100),duration int);
Query OK, 0 rows affected (0.07 sec)

mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| course            |
| student           |
+-------------------+
2 rows in set (0.01 sec)

mysql> describe student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| roll_no   | int          | YES  |     | NULL    |       |
| name      | varchar(100) | YES  |     | NULL    |       |
| dob       | date         | YES  |     | NULL    |       |
| address   | text         | YES  |     | NULL    |       |
| phone_no  | varchar(10)  | YES  |     | NULL    |       |
| blood_grp | varchar(5)   | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> alter table student 
    -> drop column blood_grp;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe student;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| roll_no  | int          | YES  |     | NULL    |       |
| name     | varchar(100) | YES  |     | NULL    |       |
| dob      | date         | YES  |     | NULL    |       |
| address  | text         | YES  |     | NULL    |       |
| phone_no | varchar(10)  | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table student  
    -> add adhaar_no bigint;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| roll_no   | int          | YES  |     | NULL    |       |
| name      | varchar(100) | YES  |     | NULL    |       |
| dob       | date         | YES  |     | NULL    |       |
| address   | text         | YES  |     | NULL    |       |
| phone_no  | varchar(10)  | YES  |     | NULL    |       |
| adhaar_no | bigint       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table student   
    -> modify phone_no int;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| roll_no   | int          | YES  |     | NULL    |       |
| name      | varchar(100) | YES  |     | NULL    |       |
| dob       | date         | YES  |     | NULL    |       |
| address   | text         | YES  |     | NULL    |       |
| phone_no  | int          | YES  |     | NULL    |       |
| adhaar_no | bigint       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.06 sec)

mysql> drop table course;
Query OK, 0 rows affected (0.06 sec)

mysql> drop database college;
Query OK, 0 rows affected (0.06 sec)

