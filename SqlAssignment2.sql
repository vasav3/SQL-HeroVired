Q-1. SELECT First_Name AS WORKER_NAME FROM Worker;

Q-2. SELECT POSITION('a' IN First_Name) FROM Worker WHERE First_Name='Amitabh';

Q-3. SELECT REPLACE(First_Name, 'a', 'A') FROM Worker;

Q-4. SELECT * FROM Worker ORDER BY First_Name ASC;

Q-5. SELECT * FROM Worker ORDER BY First_Name ASC, Department DESC;

Q-6. SELECT * FROM Worker WHERE First_Name IN ('Vipul', 'Satish');

Q-7. SELECT * FROM Worker WHERE Department='Admin';

Q-8. SELECT * FROM Worker WHERE First_Name LIKE '%a%';

Q-9. SELECT * FROM Worker WHERE Salary BETWEEN 100000 AND 500000;

Q-10. SELECT * FROM Worker WHERE First_Name LIKE '__h' AND LENGTH(First_Name) = 6;

Q-11. SELECT * FROM Worker WHERE Joining_Date BETWEEN '2014-02-01' AND '2014-02-28';

Q-12. SELECT First_Name, Last_Name, Salary FROM Worker WHERE Salary BETWEEN 50000 AND 100000;

Q-13.   SELECT s.name as Salesman, c.cust_name, c.city FROM Salesman s INNER JOIN Customer c ON s.city = c.city;

Q-14.   SELECT c.cust_name, c.city, s.name as Salesman, s.commission FROM Customer c
INNER JOIN Salesman s ON c.salesman_id = s.salesman_id;

Q-15 .  SELECT c.cust_name, c.city, s.name as Salesman, s.commission
FROM Customer c
INNER JOIN Salesman s ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12;