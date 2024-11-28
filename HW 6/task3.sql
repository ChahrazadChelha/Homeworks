-- task3 
-- 1
SELECT first_name , surname 
FROM restStaff R 
INNER JOIN restBill  B 
ON R.staff_no = B.waiter_no 
WHERE cust_name = "Tanya Singh";

-- 2 
SELECT room_date 
FROM restStaff R 
INNER JOIN restRoom_management M 
ON R.headwaiter=M.headwaiter 
WHERE room_name = "Green" AND room_date LIKE "1602%";

-- 3
-- USING SUB QUERIES 
SELECT first_name , surname 
FROM restStaff 
WHERE staff_no 
IN (SELECT staff_no 
FROM restStaff 
WHERE headwaiter = 
(SELECT headwaiter 
FROM restStaff 
WHERE first_name = "ZOE" 
AND surname = "Ball")) 
AND first_name != "Zoe" 
AND surname != " Ball";


-- 4
SELECT DISTINCT cust_name , bill_total , first_name 
FROM restStaff R
INNER JOIN restBill B
ON R.staff_no = B.waiter_no 
ORDER BY bill_total DESC ;

-- 5
SELECT first_name , surname 
FROM restStaff R
INNER JOIN restBill B
ON R.staff_no = B.waiter_no
WHERE B.bill_no = "00014" AND B.bill_no = "00017";

-- 6 
SELECT first_name , surname 
FROM restStaff R
INNER JOIN restRoom_management M
ON R.headwaiter = M.headwaiter
WHERE 
room_name = "Blue" AND room_date = "160312";