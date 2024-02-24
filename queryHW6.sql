------- CREATE TABLE -------------
-- create table product
CREATE TABLE product (product_id serial PRIMARY KEY, category_id INTEGER, name VARCHAR(255), description TEXT, price INTEGER, Stock INTEGER, create_at TIMESTAMP, update_at TIMESTAMP, delete_at TIMESTAMP);

-- create table category
CREATE TABLE category (category_id serial PRIMARY KEY, name VARCHAR(255), create_at TIMESTAMP, update_at TIMESTAMP, delete_at TIMESTAMP);

-- ADD DATA TO TABLE
-- Table product
INSERT INTO product(product_id, category_id, name, description, price, stock, create_at)
VALUES (1001, 2001, ‘Mouse, ‘Mouse gaming', 1000000, 100, '2024-02-14 18:00:00’), (1002, 2001, 'Keychrone', 'keyboard gaming', 1000000, 100, '2024-02-14 18:00:00'),
(1003, 2001, ‘LG Monitor, ‘Monitor oled’, 1000000, 100, '2024-02-14 18:00:00');

-- Table category
INSERT INTO category(
	category_id, name, create_at)
	VALUES (2001, 'Electronic', '2024-02-14 18:00’), (2002, ‘Fashion’, '2024-02-14 18:00’),
	(2002, ‘Sport’, '2024-02-14 18:00');
	
	
-- UPDATE DATA
-- Product
UPDATE product
	SET price=700000, stock=80, update_at='2024-02-14 19:00'
	WHERE product_id = 1001;
	
-- Category
UPDATE category
	SET name = 'Fashion', update_at = '2024-02-14 19:00:00'
	WHERE category_id = 2002;


-- DELETE DATA
-- Product
DELETE FROM product WHERE product_id = 1001

-- Category
DELETE FROM Category WHERE category_id = 2002


-- Join table between table product and category
SELECT product.product_id, product.name, category.category_name, product.description, product.price, product.stock
FROM product
INNER JOIN category ON product.category_id = category.category_id;