SET NAMES UTF8;
DROP DATABASE IF EXISTS bamboo;
CREATE DATABASE bamboo CHARSET=UTF8;
USE bamboo;
CREATE TABLE bamboo_material (
	mid INT PRIMARY KEY AUTO_INCREMENT,
	mname VARCHAR(16) UNIQUE NOT NULL,
	mnutrition VARCHAR(1024)
);
CREATE TABLE bamboo_recipe (
	rid INT PRIMARY KEY AUTO_INCREMENT,
	rname VARCHAR(16) UNIQUE NOT NULL,
	rconsume INT,
	rmaterial INT,
	FOREIGN KEY (rmaterial) REFERENCES bamboo_material(mid)
);
CREATE TABLE bamboo_user (
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(16) UNIQUE NOT NULL,
	upwd VARCHAR(16) UNIQUE NOT NULL,
	gender VARCHAR(16),
	email VARCHAR(32),
	phone VARCHAR(32),
	weight FLOAT(4,2),
	urecipe INT ,
	FOREIGN KEY (urecipe) REFERENCES bamboo_recipe(rid)
);