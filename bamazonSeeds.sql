USE bamazon;

INSERT INTO products (product_name, department, price, stock_quantity)
VALUES ("heater", "APPLIANCES" 19.99, 100);

INSERT INTO products (product_name, department, price, stock_quantity)
VALUES ("dress", "CLOTHING", 29.99, 75);

INSERT INTO products (product_name, department, price, stock_quantity)
VALUES ("popcorn", "GROCERY"  39.99, 57);

INSERT INTO products (product_name, department, price, stock_quantity)
VALUES ("basketball", "SPORTING" GOODS, 9.99, 700);

INSERT INTO products (product_name, department, price, stock_quantity)
VALUES ("sheets","HOME GOODS", 7.54, 77);

INSERT INTO products (product_name, price, stock_quantity)
VALUES ("towel", "HOME GOODS" 4.57, 457);

INSERT INTO products (product_name, price, stock_quantity)
VALUES ("jacket", "CLOTHING", 754.00, 45);

INSERT INTO products (product_name, price, stock_quantity)
VALUES ("lotion", "BATH & BODY", 5.74 57);

INSERT INTO products (product_name, price, stock_quantity)
VALUES ("jeans", "CLOTHING" 9.99, 200);

INSERT INTO products (product_name, price, stock_quantity)
VALUES ("printer", "ELECTRONICS" 54.47 777);

UPDATE products SET sales = 0 WHERE id > 0;

CREATE TABLE Departments(
  id INTEGER AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(50), NOT NULL,
  totalSales DECIMAL(10,2) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO departments(department_name, totalSales)
VALUES ('ELECTRONICS', 7000.00),
('CLOTHING', 4000.00),
('BATH & BODY', 1000.00),
('APPLIANCES', 5000.00),
('SPORTING GOODS', 11000),
('HOME GOODS' 4570.00),
('GROCERY' 754.00);