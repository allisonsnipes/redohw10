DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
sku INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(100) NOT NULL,
price FLOAT NOT NULL,
stock_quantity INTEGER(10) NOT NULL,
PRIMARY KEY(sku)
);
SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Raspberry Pi", "Electronics", 75.00, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("External Hard Drive", "Electronics", 200.00, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Lock Picks", "Hacking Supplies", 30.00, 1);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Port Sniffing Guide", "Hacking Supplies", 80.00, 2);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Surface Pro", "Computers", 900.00, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Macbook Pro", "Computers", 2700.00, 9);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Dot Grid Journal", "Stationary", 20.00, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Muji Pens", "Stationary", 10.00, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Hoodie", "Clothing", 40, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Sweat Pants", "Clothing", 15.00, 3);
