DROP TABLE IF EXISTS 'shop';
DROP INDEX IF EXISTS 'sqlite_autoindex_shop_1';
DROP TABLE IF EXISTS 'product';
DROP INDEX IF EXISTS 'sqlite_autoindex_product_1';
DROP TABLE IF EXISTS 'warehouse';
DROP INDEX IF EXISTS 'sqlite_autoindex_warehouse_1';
DROP TABLE IF EXISTS 'worker';
CREATE TABLE shop (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance FLOAT NOT NULL);
INSERT INTO 'shop' VALUES(1,'азбука вкуса',300);
INSERT INTO 'shop' VALUES(2,'пятерочка',150);
INSERT INTO 'shop' VALUES(3,'наш',100);
null;
CREATE TABLE product (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);
INSERT INTO 'product' VALUES(1,'чебуреки хашные',150);
INSERT INTO 'product' VALUES(2,'пельмени',500);
INSERT INTO 'product' VALUES(3,'хинкали',1000);
null;
CREATE TABLE warehouse (
shop_id INTEGER REFERENCES shop (id),
product_id INTEGER REFERENCES product (id),
quantity INTEGER NOT NULL,
PRIMARY KEY (shop_id, product_id));
INSERT INTO 'warehouse' VALUES(1,1,5);
INSERT INTO 'warehouse' VALUES(3,1,3000);
INSERT INTO 'warehouse' VALUES(3,2,1000);
INSERT INTO 'warehouse' VALUES(3,3,2300);
null;
CREATE TABLE worker (
worker_id INTEGER PRIMARY KEY,
shop_id INTEGER REFERENCES product (id),
name VARCHAR(255),
salary INTEGER NOT NULL,
position VARCHAR(255));
INSERT INTO 'worker' VALUES(1,1,'Gordon D',40000,'отдел рыбы');
INSERT INTO 'worker' VALUES(2,2,'Barinov D',40000,'отдел мяса');
INSERT INTO 'worker' VALUES(3,3,'AM NYAM',60000,'отдел чебуреков');
