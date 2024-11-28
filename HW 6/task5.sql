-- task5
-- 1
SELECT DISTINCT first_name , surname , bill_date, waiter_no , COUNT(waiter_no) AS " Number of bills"
FROM restBill R
INNER JOIN restStaff B
ON R.waiter_no = B.staff_no
GROUP BY first_name , surname, bill_date , waiter_no
HAVING COUNT(waiter_no)>=2;

-- 2
SELECT room_name , COUNT(*) AS "Number of Tables"
FROM restRest_table 
WHERE no_of_seats > 6
GROUP BY room_name ;

-- 3
SELECT DISTINCT room_name , SUM(bill_total) AS "Total bills in each room"
FROM restBill B
INNER JOIN restRest_table T 
ON B.table_no = T.table_no
GROUP BY room_name ;

-- 4
SELECT first_name , surname , SUM(bill_total) AS "Sum of total bills"
FROM restRoom_management M
INNER JOIN restStaff S
ON S.staff_no = M.headwaiter
INNER JOIN restRest_table T
ON M.room_name = T.room_name
INNER JOIN restBill B
ON B.table_no = T.table_no
GROUP BY M.headwaiter ;

-- 5
SELECT cust_name , AVG(bill_total) AS "Total bills average"
FROM restBill
GROUP BY cust_name 
HAVING AVG(bill_total)>400;

-- 6
SELECT DISTINCT first_name , surname , bill_date, waiter_no , COUNT(waiter_no) AS " Number of bills"
FROM restBill R
INNER JOIN restStaff B
ON R.waiter_no = B.staff_no
GROUP BY first_name , surname, bill_date , waiter_no
HAVING COUNT(waiter_no)>=3;