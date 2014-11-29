CREATE TABLE User (
	user_id      INTEGER PRIMARY KEY AUTO_INCREMENT,
	password     varchar(16),
	address      varchar(100),
	phone_number varchar(15),
	fav_pet	     varchar(10)
);

CREATE TABLE Category(
	category_id INTEGER PRIMARY KEY AUTO_INCREMENT,
	name        varchar(20)
);

CREATE TABLE Product(
	product_id   INTEGER PRIMARY KEY AUTO_INCREMENT,
	product_name varchar(30),
	photo_path   varchar(30),
	description  varchar(100),
	price        REAL,
	category_id  INTEGER,
	FOREIGN KEY(category_id) REFERENCES Category(category_id)
);

CREATE TABLE ShoppingCart(
	user_id    INTEGER AUTO_INCREMENT,
	product_id INTEGER,
	quantity   INTEGER,
	FOREIGN KEY(product_id) REFERENCES Product(product_id),
	FOREIGN KEY(user_id)    REFERENCES User(user_id)
);