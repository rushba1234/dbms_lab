CREATE TABLE persons (person_id INT PRIMARY KEY,name VARCHAR(50) NOT NULL,aadhar BIGINT NOT NULL UNIQUE,age INT CHECK (age > 18));


CREATE TABLE orders (orderid INT PRIMARY KEY,order_number INT NOT NULL,personid INT,
FOREIGN KEY (personid) REFERENCES persons(person_id));


DESCRIBE persons;
DESCRIBE orders;

ALTER TABLE employee ADD PRIMARY KEY (emp_no);

ALTER TABLE department ADD PRIMARY KEY (dept_no);

ALTER TABLE employee ADD CONSTRAINT fk_dept FOREIGN KEY (dept_no) REFERENCES department(dept_no) ON DELETE CASCADE;

ALTER TABLE orders DROP PRIMARY KEY;
