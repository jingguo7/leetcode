# 627. Swap Salary - https://leetcode.com/problems/swap-salary/description/
UPDATE salary 
SET sex = IF(sex = 'f', 'm','f')

# 595. Big Countries
SELECT name, population, area FROM World
  WHERE area > 3000000 OR population > 25000000