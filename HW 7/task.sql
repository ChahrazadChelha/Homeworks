-- VIEWS

-- 1
CREATE VIEW samsBills 
AS SELECT first_name , surname , bill_date , cust_name , bill_total
FROM restStaff R 
INNER JOIN restBill B
ON R.staff_no = B.waiter_no 
WHERE first_name = "Sam";

SELECT * FROM samsBills;

-- 2
SELECT * FROM samsBills WHERE bill_total > 400;

-- 3
CREATE VIEW roomTotals 
AS SELECT DISTINCT room_name , SUM(bill_total) AS "total_sum"
FROM restBill B
INNER JOIN restRest_table T 
ON B.table_no = T.table_no
GROUP BY room_name ;

SELECT * FROM roomTotals;

-- 4
CREATE VIEW teamTotals AS
SELECT CONCAT(H.first_name, ' ', H.surname) AS headwaiter_name, SUM(B.bill_total) AS total_sum
FROM restStaff W
INNER JOIN restBill B 
ON W.staff_no = B.waiter_no
INNER JOIN restStaff H 
ON W.headwaiter = H.staff_no
GROUP BY CONCAT(H.first_name, ' ', H.surname);

SELECT * FROM teamTotals;