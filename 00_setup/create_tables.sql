
CREATE TABLE DEPARTMENTS (
dep_id NUMBER PRIMARY KEY,
dep_name VARCHAR2(50) NOT NULL
);

CREATE TABLE EMPLOYEES (
emp_id NUMBER PRIMARY KEY,
First_name VARCHAR2(50),
Last_name VARCHAR2(50),
salary NUMBER,
hire_date DATE,
dep_id NUMBER REFERENCES DEPARTMENTS(dep_id)
);


INSERT INTO departments VALUES (101, 'Finance');
INSERT INTO departments VALUES (102, 'IT');
INSERT INTO departments VALUES (103, 'Human Resources');
INSERT INTO departments VALUES (104, 'Customer Service');
INSERT INTO departments VALUES (105, 'Marketing');

INSERT INTO employees VALUES (201, 'Aline',  'Uwase',     150000, DATE '2021-03-18', 103);
INSERT INTO employees VALUES (202, 'Henry',  'Ishimwe',   170000, DATE '2022-08-23', 101);
INSERT INTO employees VALUES (203, 'Brian',  'Ngabo',      90000, DATE '2021-10-20', 103);
INSERT INTO employees VALUES (204, 'Claire', 'Ishimwe',   180000, DATE '2024-01-30', 102);
INSERT INTO employees VALUES (205, 'David',  'Niyonzima', 450000, DATE '2022-03-29', 104);
INSERT INTO employees VALUES (206, 'Esther', 'Kamanzi',   140000, DATE '2024-11-04', 105);
INSERT INTO employees VALUES (207, 'Frank',  'Habimana',  165000, DATE '2024-12-12', 102);
INSERT INTO employees VALUES (208, 'Grace',  'Ndayisaba',      0, DATE '2023-06-13', 105);
INSERT INTO employees VALUES (209, 'Sony',   'Aganze',    140000, DATE '2024-02-28', 105);
INSERT INTO employees VALUES (210, 'Zoe',    'Aurore',    150000, DATE '2023-09-11', NULL);

COMMIT;
