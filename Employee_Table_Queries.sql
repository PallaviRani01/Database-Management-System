CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    age INT,
    experience INT,
    joining_date DATE,
    manager_id INT,
    bonus INT
);

INSERT INTO Employees
(emp_id, emp_name, department, salary, city, age, experience, joining_date, manager_id, bonus)
VALUES
(101, 'Aman Sharma', 'IT', 75000, 'Delhi', 28, 5, '2021-06-15', 201, 10000),
(102, 'Neha Verma', 'HR', 58000, 'Mumbai', 31, 7, '2019-04-20', 202, NULL),
(103, 'Rohan Singh', 'Sales', 42000, 'Jaipur', 26, 3, '2023-01-10', 203, 5000),
(104, 'Simran Kaur', 'Finance', 92000, 'Pune', 38, 10, '2017-08-12', 204, 15000),
(105, 'Arjun Mehta', 'IT', 68000, 'Bangalore', 29, 6, '2020-03-18', 201, 8000),
(106, 'Karan Patel', 'Marketing', 47000, 'Ahmedabad', 24, 2, '2024-02-05', NULL, NULL),
(107, 'Priya Gupta', 'HR', 62000, 'Delhi', 34, 9, '2018-11-22', 202, 12000),
(108, 'Rahul Jain', 'Finance', 81000, 'Mumbai', 41, 12, '2015-07-14', 204, 18000),
(109, 'Ankit Roy', 'IT', 99000, 'Pune', 36, 11, '2016-09-30', 201, 20000),
(110, 'Sneha Kapoor', 'Sales', 53000, 'Chandigarh', 27, 4, '2022-05-16', 203, NULL),
(111, 'Deepak Yadav', 'Marketing', 61000, 'Delhi', 30, 5, '2021-12-01', NULL, 7000),
(112, 'Ritika Sharma', 'Finance', 73000, 'Bangalore', 33, 8, '2019-10-10', 204, 9000),
(113, 'Abhishek Kumar', 'IT', 115000, 'Hyderabad', 39, 14, '2013-06-25', 201, 25000),
(114, 'Nitin Arora', 'HR', 49000, 'Jaipur', 25, 2, '2023-07-19', 202, NULL),
(115, 'Sonia Malhotra', 'Finance', 86000, 'Delhi', 37, 9, '2018-02-28', 204, 14000);

select  * from Employees
WHERE department IN ('IT', 'HR') AND salary > 60000 
AND age NOT BETWEEN 25 AND 35;

select *from Employees
where  (emp_name LIKE 'A%' OR emp_name LIKE '%n')
  AND city NOT IN ('Delhi', 'Mumbai');
  
  select *from Employees
  where experience > 5 and salary between 50000 and 90000 
  and joining_date > '2021-01-01'; 
  
  select *from Employees
  where department NOT IN ('Sales', 'Marketing') 
  and salary > 70000 or city = 'Pune';
  
  select *from Employees
  where bonus = 'NULL' and salary >50000 or experience > 8;
  
  select * from Employees
  where salary + bonus > 10000 
  and city ('Delhi' or 'Pune' or 'Bangalore')
  
select  * FROM Employees
WHERE salary + IFNULL(bonus, 0) > 100000
  AND city IN ('Delhi', 'Pune', 'Bangalore');
