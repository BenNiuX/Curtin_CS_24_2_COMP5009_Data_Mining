--- Q3
SELECT * FROM manifest LIMIT 10;
--- Q6a
SELECT count(*), 
  COUNT(passengerid), COUNT(survived), count(pclass),
  count(name), count(sex), count(age), count(sibsp),
  count(parch), count(ticket), count(fare), count(cabin),
  count(embarked)
from manifest;
--- columns age, cabin, and embarked have at least one null value

--- Q6b
SELECT count(*) from manifest WHERE age is NULL;  -- 177
SELECT count(*) from manifest WHERE cabin is NULL; -- 687
SELECT count(*) from manifest WHERE embarked is NULL; -- 2

--- Q7
SELECT min(age), max(age), avg(age), sum(age) from manifest;
-- etc for each numeric column

--- Q8
SELECT * FROM manifest WHERE name LIKE "%Dr.%";

--- Q8a
SELECT count(*), sex FROM manifest WHERE name LIKE "%Dr.%" GROUP BY sex;

--- Q9
SELECT avg(fare) FROM manifest;
--- Q9a
SELECT avg(fare), pclass FROM manifest GROUP BY pclass;
--- Q9b
SELECT avg(fare), pclass, embarked FROM manifest GROUP BY pclass, embarked;
