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







