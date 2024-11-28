-- task4
-- 1
SELECT cust_name 
FROM restBill 
WHERE waiter_no IN 
(SELECT staff_no FROM restStaff
WHERE headwaiter = 
(SELECT staff_no 
FROM restStaff 
WHERE first_name="Charles"))
AND bill_total > "450.00";

-- 2
SELECT first_name , surname 
FROM restStaff 
WHERE staff_no 
IN (SELECT headwaiter 
FROM restStaff 
WHERE staff_no IN 
(SELECT waiter_no 
FROM restBill 
WHERE bill_date="160111" 
AND cust_name="Nerida Smith") );

-- 3
SELECT cust_name FROM restBill WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);

-- 4
SELECT first_name , surname 
FROM restStaff 
WHERE staff_no 
NOT IN (SELECT waiter_no FROM restBill);

-- 5
SELECT cust_name , first_name , surname  
FROM restBill R
INNER JOIN restStaff S
ON S.staff_no = R.waiter_no
WHERE bill_total = (SELECT MAX(bill_total) FROM restBill);