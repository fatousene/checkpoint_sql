CREATE TABLE Customer (
    Customer_id int ,
    Customer_name varchar(20) NOT NULL,
    Customer_Tel NUMBER ,
    CONSTRAINT Customer_pk PRIMARY KEY(Customer_id)
);
CREATE TABLE Product (
    Product_id int Product_pk  PRIMARY KEY,
    Product_name varchar(20) NOT NULL,
    Price int UNSIGNED
);
CREATE TABLE Orders (
    Customer_id int,
    Product_id int,
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY(Product_id) REFERENCES Product(Product_id)
);

ALTER TABLE Product ADD Category VARCHAR2(20),

ALTER TABLE Orders ADD CONSTRAINT  OrderDate DATE DEFAULT SYSDATE,
