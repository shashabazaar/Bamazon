DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  id int(11) NOT NULL AUTO_INCREMENT,
  product_name varchar(100) NOT NULL,
  department_name varchar(45) NOT NULL,
  price decimal(10,2) DEFAULT '0.00',
  stock_quantity int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
); 
CREATE TABLE departments (
  id int(11) NOT NULL AUTO_INCREMENT,
  product_name varchar(100) NOT NULL,
  department_name varchar(45) NOT NULL,
  price decimal(10,2) DEFAULT '0.00',
  stock_quantity int(11) DEFAULT '0',
  PRIMARY KEY (id)
);

CREATE TABLE price (
  id int(11) NOT NULL AUTO_INCREMENT,
  product_name varchar(100) NOT NULL,
  department_name varchar(45) NOT NULL,
  price decimal(10,2) DEFAULT '0.00',
  stock_quantity int(11) DEFAULT '0',
  PRIMARY KEY (id)
);

CREATE TABLE stock_quantity (
  id int(11) NOT NULL AUTO_INCREMENT,
  product_name varchar(100) NOT NULL,
  department_name varchar(45) NOT NULL,
  price decimal(10,2) DEFAULT '0.00',
  stock_quantity int(11) DEFAULT '0',
  PRIMARY KEY (id)
);







