DROP DATABASE IF EXISTS examen22;
CREATE DATABASE examen22;
USE examen22;

CREATE TABLE product
(
   id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   name varchar(20) NOT NULL,
   price float
);

CREATE TABLE cart
(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE cart_items
(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    quantity int not NULL,
    product_id int NOT NULL,
    cart_id int NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (cart_id) REFERENCES cart(id)
);

INSERT INTO cart (id) VALUES
(1),
(2);


INSERT INTO product (id, name, price) VALUES
(1, 'toetsenbord', 50.44),
(2, 'muis', 22.33),
(3, 'scherm', 123.43),
(4, 'pen', 2.21);

INSERT INTO cart_items (id, quantity, product_id, cart_id) VALUES
(1, 2, 4, 1),
(2, 1, 2, 1);


