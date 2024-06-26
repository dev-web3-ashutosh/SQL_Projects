CREATE DATABASE LPG;
USE LPG;

-- CREATE cust_details TABLE
CREATE TABLE cust_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(1),
    address VARCHAR(100),
    phone_no BIGINT,
    connection_type DECIMAL(3 , 1 ),
    no_of_cylinders INT
);

-- CREATE orders TABLE
CREATE TABLE orders (
	id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    cust_id INT,
    FOREIGN KEY (cust_id)
		REFERENCES cust_details(id),
	quantity INT,
    payment_type VARCHAR(30),
    status VARCHAR(30)
);

-- CREATE TABLE cancelled_orders
CREATE TABLE cancelled_orders (
	order_id INT,
    FOREIGN KEY (order_id)
		REFERENCES orders(id),
	date DATE,
    reason VARCHAR(50)
);

-- CREATE TABLE billing_details
CREATE TABLE billing_details (
	inv_id INT AUTO_INCREMENT PRIMARY KEY,
	date DATE,
	order_id INT,
	FOREIGN KEY (order_id)
		REFERENCES orders(id),
	delivery_status VARCHAR(30)
);

-- CREATE TABLE cancelled_bills
CREATE TABLE cancelled_bills(
	inv_id INT,
	FOREIGN KEY (inv_id)
		REFERENCES orders(id),
	date DATE,
	reason VARCHAR(50)
);

-- CREATE TABLE pricing
CREATE TABLE pricing (
	type DECIMAL(3,1),
	month VARCHAR(10),
	year INT,
	price INT
);

-- INSERT DATA IN TABLE cust_details
insert into cust_details (Name, Gender, Address, Phone_No, Connection_Type,
No_Of_Cylinders) values ('Harish', 'M', '1-2, bglr', 1987654322, 14.2, 1);
insert into cust_details (Name, Gender, Address, Phone_No, Connection_Type,
No_Of_Cylinders) values ('Amisha', 'F', '32-12, bglr', 1614322387, 14.2, 1);
insert into cust_details (Name, Gender, Address, Phone_No, Connection_Type,
No_Of_Cylinders) values ('Ujjawal', 'M', '19-0, gurgaon', 1871614322, 14.2, 1);
insert into cust_details (Name, Gender, Address, Phone_No, Connection_Type,
No_Of_Cylinders) values ('Anu', 'F', '2-10, hyd', 1000614322, 19.0, 5);
insert into cust_details (Name, Gender, Address, Phone_No, Connection_Type,
No_Of_Cylinders) values ('Rakshitha', 'F', '3-1-3, chennai', 1614322551, 19.0, 10);
insert into cust_details (Name, Gender, Address, Phone_No, Connection_Type,
No_Of_Cylinders) values ('Varuni', 'F', '10-4, gurgaon', 1432245789, 14.2, 1);
insert into cust_details (Name, Gender, Address, Phone_No, Connection_Type,
No_Of_Cylinders) values ('Vamshi', 'M', '31-14, hyd', 14433245789, 19.0, 6);

ALTER TABLE cust_details AUTO_INCREMENT=1;

-- INSERT DATA IN TABLE orders
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-01',
6, 1, 'online', 'cancelled');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-01',
3, 1, 'POD', 'Ordered');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-02',
5, 4, 'POD', 'Cancelled');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-03',
6, 1, 'POD', 'Ordered');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-10-04',
3, 1, 'Online', 'Ordered');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-05',
6, 1, 'Online', 'Ordered');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-06',
4, 4, 'Online', 'Ordered');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-07',
5, 9, 'POD', 'Ordered');
insert into orders (Date, Cust_Id, Quantity, Payment_type, Status) values('2021-11-09',
7, 5, 'Online', 'Ordered');

-- INSERT DATA IN TABLE cancelled_orders
insert into cancelled_orders values(1, '2021-10-02', 'Out of Station');
insert into cancelled_orders values(3, '2021-10-03', 'Mistakenly Ordered');

-- INSERT DATA IN TABLE billing_details
insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-10-03', 2,
'Undelivered');
insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-10-04', 4,
'Delivered');
insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-10-06', 5,
'Delivered');
insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-11-06', 6,
'Delivered');
insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-11-06', 7,
'Delivered');
insert into billing_details(Date, Order_Id, Delivery_Status) values ('2021-11-08', 8,
'Delivered');

-- INSERT DATA IN TABLE cancelled_bills
insert into cancelled_bills values(2, '2021-10-04', 'Insufficient Amount');

-- INSERT DATA IN TABLE pricing
insert into pricing values(14.2, 'January', 2021, 925);
insert into pricing values(19.0, 'January', 2021, 1223);
insert into pricing values(5.0, 'January', 2021, 352);
insert into pricing values(14.2, 'February', 2021, 931);
insert into pricing values(19.0, 'February', 2021, 1025);
insert into pricing values(5.0, 'February', 2021, 361);
insert into pricing values(14.2, 'March', 2021, 910);
insert into pricing values(19.0, 'March', 2021, 1225);
insert into pricing values(5.0, 'March', 2021, 365);
insert into pricing values(14.2, 'April', 2021, 942);
insert into pricing values(19.0, 'April', 2021, 1300);
insert into pricing values(5.0, 'April', 2021, 330);
insert into pricing values(14.2, 'May', 2021, 942);
insert into pricing values(19.0, 'May', 2021, 1280);
insert into pricing values(5.0, 'May', 2021, 333);
insert into pricing values(14.2, 'June', 2021, 958);
insert into pricing values(19.0, 'June', 2021, 1283);
insert into pricing values(5.0, 'June', 2021, 320);
insert into pricing values(14.2, 'July', 2021, 950);
insert into pricing values(19.0, 'July', 2021, 1295);
insert into pricing values(5.0, 'July', 2021, 330);
insert into pricing values(14.2, 'August', 2021, 947);
insert into pricing values(19.0, 'August', 2021, 1298);
insert into pricing values(5.0, 'August', 2021, 337);
insert into pricing values(14.2, 'September', 2021, 963);
insert into pricing values(19.0, 'September', 2021, 1306);
insert into pricing values(5.0, 'September', 2021, 340);
insert into pricing values(14.2, 'October', 2021, 960);
insert into pricing values(19.0, 'October', 2021, 1310);
insert into pricing values(5.0, 'October', 2021, 347);
insert into pricing values(14.2, 'November', 2021, 970);
insert into pricing values(19.0, 'November', 2021, 1313);
insert into pricing values(5.0, 'November', 2021, 350);
insert into pricing values(14.2, 'December', 2021, 974);
insert into pricing values(19.0, 'December', 2021, 1320);
insert into pricing values(5.0, 'December', 2021, 362);
insert into pricing values(14.2, 'January', 2022, 999);
insert into pricing values(19.0, 'January', 2022, 1309);
insert into pricing values(5.0, 'January', 2022, 359);

/*
3. Write a query to display a table with customer Id, Name, Connection_Type and No_Of
Cylinders ordered from orders table.
*/
SELECT 
    cd.id,
    cd.name,
    cd.connection_type,
    SUM(o.quantity) AS 'No Of Cylinders'
FROM
    orders AS o
        JOIN
    cust_details AS cd ON o.cust_id = cd.id
WHERE
    status = 'Ordered'
GROUP BY cust_id
ORDER BY cust_id;

/*
4. Display one customer from each product category who purchased the maximum number
of cylinders with Connection_Type, Cust_Id, Name and Quantity purchased.
*/
SELECT 
    cust_id, SUM(quantity) as quantity, connection_type,
    rank() over(quantity) as rnk
FROM
    orders
        JOIN
    cust_details ON orders.cust_id = cust_details.id
WHERE
    status = 'ordered' and
    rnk =1
GROUP BY cust_id
ORDER BY cust_id;

select a.Cust_Id, a.Name, a.no_of_cylinders, a.Connection_Type 
from (
	select 
		C.Id as Cust_Id, C.Name, P.no_of_cylinders, C.Connection_Type,
		rank() over(partition by C.Connection_Type order by P.no_of_cylinders desc) as rnk
	from 
		Cust_Details as C 
			inner join
		(select Cust_Id, sum(Quantity) as no_of_cylinders 
        from orders 
        where status = 'ordered'
		group by cust_Id) as P on P.Cust_Id = C.Id
) a
where a.rnk=1;


