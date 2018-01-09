# 627. Swap Salary - https://leetcode.com/problems/swap-salary/description/
UPDATE salary 
SET sex = IF(sex = 'f', 'm','f')

# 595. Big Countries - https://leetcode.com/problems/big-countries/description/
SELECT name, population, area FROM World
  WHERE area > 3000000 OR population > 25000000

# on how to find odd/even numbers
#620. Not Boring Movies - https://leetcode.com/problems/not-boring-movies/description/
SELECT * FROM cinema 
WHERE (id % 2) <> 0 AND description <>'boring'
ORDER BY rating DESC

# 182 Duplicate Email - https://leetcode.com/problems/duplicate-emails/description/
# Delete duplicate values
SELECT Email FROM Person
GROUP BY Email
HAVING COUNT(*)>1

# 175. COMBINE TWO TABLES - https://leetcode.com/problems/combine-two-tables/description/
# left join
SELECT Person.FirstName, Person.LastName, Address.City, Address.State FROM Person
LEFT JOIN Address 
ON Person.PersonId = Address. PersonId

# 181. Employees Earning More Than Their Managers - https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
SELECT a.Name AS Employee FROM Employee a 
INNER JOIN Employee b ON a.ManagerId=b.Id
WHERE a.Salary > b.Salary

# 183. Customers Who Never Order - https://leetcode.com/problems/customers-who-never-order/description/
SELECT Customers.Name AS Customers
FROM Customers 
LEFT JOIN Orders 
ON Customers.Id = Orders.CustomerId
WHERE Orders.CustomerId IS NULL

#197. Rising Temperature - https://leetcode.com/problems/rising-temperature/description/
# new knowledge: SUBDATE
SELECT W1.Id FROM Weather W1
LEFT JOIN Weather W2 ON SUBDATE(W1.Date,1) = W2.Date
WHERE W1.Temperature > W2.Temperature 

#596. Classes More Than 5 Students - https://leetcode.com/problems/classes-more-than-5-students/description/
SELECT class FROM courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5
# NOTES: 有>= 2个或以上的类别的数据先要group by再 count，不然程序不明白你要它count什么。


