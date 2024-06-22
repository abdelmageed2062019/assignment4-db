CREATE DATABASE inventory COLLATE utf8mb4_unicode_ci;

USE inventory;


CREATE TABLE Governorates ( 
     id INT AUTO_INCREMENT  PRIMARY KEY,
     name VARCHAR(255) NOT NULL
);


CREATE TABLE Stores (
     id INT AUTO_INCREMENT  PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    governorate_id INT,
    FOREIGN KEY (governorate_id) REFERENCES Governorates(id)
);


CREATE TABLE Suppliers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(255),
    brief_data TEXT
);

CREATE TABLE Products  (
    id INT AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    code VARCHAR(50) NOT NULL,
    description TEXT,
    price INT NOT NULL,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(id)
);


CREATE TABLE Stores_Products (
    store_id INT,
    product_id INT,
    PRIMARY KEY (store_id, product_id),
    FOREIGN KEY (store_id) REFERENCES Stores(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);
