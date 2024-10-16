use azure_company;

INSERT INTO employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) VALUES
    ('John', 'B', 'Smith', '123456789', '1965-01-09', '731-Fondren-Houston-TX', 'M', 30000, NULL, 5),
    ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638-Voss-Houston-TX', 'M', 40000, NULL, 5),
    ('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321-Castle-Spring-TX', 'F', 25000, NULL, 4),
    ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291-Berry-Bellaire-TX', 'F', 43000, NULL, 4),
    ('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975-Fire-Oak-Humble-TX', 'M', 38000, NULL, 5),
    ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631-Rice-Houston-TX', 'F', 25000, NULL, 5),
    ('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980-Dallas-Houston-TX', 'M', 25000, NULL, 4),
    ('James', 'E', 'Borg', '888665555', '1937-11-10', '450-Stone-Houston-TX', 'M', 55000, NULL, 1);

UPDATE employee SET Super_ssn = '333445555' WHERE Ssn = '123456789';
UPDATE employee SET Super_ssn = '888665555' WHERE Ssn = '333445555';
UPDATE employee SET Super_ssn = '987654321' WHERE Ssn = '999887777';
UPDATE employee SET Super_ssn = '888665555' WHERE Ssn = '666884444';
UPDATE employee SET Super_ssn = '333445555' WHERE Ssn = '453453453';
UPDATE employee SET Super_ssn = '987654321' WHERE Ssn = '987987987';    
                            
INSERT INTO dependent (Essn, Dependent_name, Sex, Bdate, Relationship) VALUES
    ('333445555', 'Alice', 'F', '1986-04-05', 'Daughter'),
    ('333445555', 'Theodore', 'M', '1983-10-25', 'Son'),
    ('333445555', 'Joy', 'F', '1958-05-03', 'Spouse'),
    ('987654321', 'Abner', 'M', '1942-02-28', 'Spouse'),
    ('123456789', 'Michael', 'M', '1988-01-04', 'Son'),
    ('123456789', 'Alice', 'F', '1988-12-30', 'Daughter'),
    ('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse');

INSERT INTO departament (Dname, Dnumber, Mgr_ssn, Mgr_start_date, Dept_create_date) VALUES
    ('Research', 5, '333445555', '1988-05-22', '1986-05-22'),
    ('Administration', 4, '987654321', '1995-01-01', '1994-01-01'),
    ('Headquarters', 1, '888665555', '1981-06-19', '1980-06-19');

INSERT INTO dept_locations (Dnumber, Dlocation) VALUES
    (1, 'Houston'),
    (4, 'Stafford'),
    (5, 'Bellaire'),
    (5, 'Sugarland'),
    (5, 'Houston');
INSERT INTO project (Pname, Pnumber, Plocation, Dnum) VALUES
    ('ProductX', 1, 'Bellaire', 5),
    ('ProductY', 2, 'Sugarland', 5),
    ('ProductZ', 3, 'Houston', 5),
    ('Computerization', 10, 'Stafford', 4),
    ('Reorganization', 20, 'Houston', 1),
    ('Newbenefits', 30, 'Stafford', 4);
;

INSERT INTO works_on (Essn, Pno, Hours) VALUES
    ('123456789', 1, 32.5),
    ('123456789', 2, 7.5),
    ('666884444', 3, 40.0),
    ('453453453', 1, 20.0),
    ('453453453', 2, 20.0),
    ('333445555', 2, 10.0),
    ('333445555', 3, 10.0),
    ('333445555', 10, 10.0),
    ('333445555', 20, 10.0),
    ('999887777', 30, 30.0),
    ('999887777', 10, 10.0),
    ('987987987', 10, 35.0),
    ('987987987', 30, 5.0),
    ('987654321', 30, 20.0),
    ('987654321', 20, 15.0),
    ('888665555', 20, 0.0);
                            
select * from employee;
select Ssn, count(Essn) from employee e, dependent d where (e.Ssn = d.Essn);
select * from dependent;
SELECT Bdate, Address FROM employee
WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';

select * from departament where Dname = 'Research';

SELECT Fname, Lname, Address
FROM employee, departament
WHERE Dname = 'Research' AND Dnumber = Dno;

select * from project;
select Dname as Department, Mgr_ssn as Manager from departament d, dept_locations l
where d.Dnumber = l.Dnumber;

select Dname as Department, concat(Fname, ' ', Lname) from departament d, dept_locations l, employee e
where d.Dnumber = l.Dnumber and Mgr_ssn = e.Ssn;

select * from project, departament where Dnum = Dnumber and Plocation = 'Stafford';

SELECT Pnumber, Dnum, Lname, Address, Bdate
FROM project, departament, employee
WHERE Dnum = Dnumber AND Mgr_ssn = Ssn AND
Plocation = 'Stafford';

SELECT * FROM employee WHERE Dno IN (3,6,9);

SELECT Bdate, Address
FROM EMPLOYEE
WHERE Fname = ‘John’ AND Minit = ‘B’ AND Lname = ‘Smith’;

SELECT Fname, Lname, Address
FROM EMPLOYEE, DEPARTMENT
WHERE Dname = ‘Research’ AND Dnumber = Dno;

select Fname, Lname, Salary, Salary*0.011 from employee;
select Fname, Lname, Salary, Salary*0.011 as INSS from employee;
select Fname, Lname, Salary, round(Salary*0.011,2) as INSS from employee;

select e.Fname, e.Lname, 1.1*e.Salary as increased_sal from employee as e,
works_on as w, project as p where e.Ssn = w.Essn and w.Pno = p.Pnumber and p.Pname='ProductX';

select Dname as Department, concat(Fname, ' ', Lname) as Manager from departament d, dept_locations l, employee e
where d.Dnumber = l.Dnumber and Mgr_ssn = e.Ssn;

select Fname, Lname, Address from employee, departament
	where Dname = 'Research' and Dnumber = Dno;
    
select e.Fname, e.Lname, e.Address from employee e, departament d
	where d.Dname = 'Research' and d.Dnumber = e.Dno;