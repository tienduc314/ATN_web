-- phpMyAdmin SQL Dump
-- version 5.1.3
-- SQLINES DEMO *** admin.net/
--
-- Host: 127.0.0.1
-- SQLINES DEMO *** Apr 09, 2022 at 05:15 PM
-- SQLINES DEMO *** 0.4.24-MariaDB
-- PHP Version: 7.4.28

/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */



/* SQLINES DEMO *** ARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** LLATION_CONNECTION=@@COLLATION_CONNECTION */;
/* SQLINES DEMO *** tf8mb4 */;


-- SQLINES DEMO *** ---------------------------------------

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE shop (
  shop_id varchar(10) NOT NULL,
  shop_name varchar(30) NOT NULL,
  address varchar(30) NOT NULL,
  phone varchar(50) NOT NULL,
  email varchar(50) NOT NULL
); 

--
-- SQLINES DEMO *** table `shop`
--

INSERT INTO shop (shop_id, shop_name, address, phone, email) VALUES
('S001', 'ATN_CanTho', 'Can Tho', '0123456789', 'atn_cantho@gmail.com'),
('S002', 'ATN_HaNoi', 'Ha Noi', '0123456789', 'atn_hanoi@gmail.com');

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `category`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE category (
  Cat_ID varchar(10) NOT NULL,
  Cat_Name varchar(30) NOT NULL,
  Cat_Des varchar(1000) DEFAULT NULL
) ;

--
-- SQLINES DEMO *** table `category`
--

INSERT INTO category (Cat_ID, Cat_Name, Cat_Des) VALUES
('C001', 'LEGO', 'ATN product'),
('C002', 'BABIE', 'ATN product');

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `customer`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE customer (
  Username varchar(20) NOT NULL,
  Password varchar(40) NOT NULL,
  CustName varchar(30) NOT NULL,
  gender int NOT NULL,
  Address varchar(1000) NOT NULL,
  telephone varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  CusDate int NOT NULL,
  CusMonth int NOT NULL,
  CusYear int NOT NULL,
  SSN varchar(10) DEFAULT NULL,
  ActiveCode varchar(100) NOT NULL,
  state int NOT NULL
) ;

--
-- SQLINES DEMO *** table `customer`
--

INSERT INTO customer (Username, Password, CustName, gender, Address, telephone, email, CusDate, CusMonth, CusYear, SSN, ActiveCode, state) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 0, '146B mau than', '0337905287', 'admin@gmail.com', 20, 5, 1988, '', '', 1),
('duc', 'e10adc3949ba59abbe56e057f20f883e', 'nguyen tien duc', 0, '146B mau than', '0777555444', 'tienduc314@gmail.com', 19, 5, 1992, '', '', 0),
('user', 'e10adc3949ba59abbe56e057f20f883e', 'user', 0, 'Can Tho', '0337905287', 'user@gmail.com', 19, 8, 2001, '', '', 0);

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** or table `product`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE product (
  Product_ID varchar(10) NOT NULL,
  Product_Name varchar(30) NOT NULL,
  Price bigint NOT NULL,
  SmallDesc varchar(1000) NOT NULL,
  DetailDesc text NOT NULL,
  Pro_qty int NOT NULL,
  Pro_image varchar(200) NOT NULL,
  Cat_ID varchar(10) NOT NULL,
  shop_id varchar(10) NOT NULL
) ;

--
-- SQLINES DEMO *** table `product`
--

INSERT INTO product (Product_ID, Product_Name, Price, SmallDesc, DetailDesc, Pro_qty, Pro_image, Cat_ID, shop_id) VALUES
('P001', 'Mandalore Building', 500, 'LEGO Star Wars Duel on Mandalore 75310 Building Kit', '', 12, 'starwar.png', 'C001', 'S001'),
('P002', 'Troopers Building', 505, 'LEGO Star Wars 501st Legion Clone Troopers Building Kit, Cool Action Set for Creative Play 75280', '', 21, 'starwar2.png', 'C001', 'S001'),
('P003', 'Batch Shuttle', 300, 'LEGO Star Wars The Bad Batch Shuttle 75314', '', 17, 'batchshuttle.png', 'C001', 'S001'),
('P004', 'BrickHeadz', 399, 'LEGO BrickHeadz Star Wars The Mandalorian & The Child 75317', '', 19, 'brickheadz.png', 'C001', 'S001'),
('P005', 'Mandalorian', 790, 'LEGO Star Wars Mandalorian Battle Pack Shock Troopers and Speeder Bike Building Kit 75267', '', 15, 'mandalorian.png', 'C001', 'S002'),
('P006', 'Barbie doll', 680, 'Barbie Dreamtopia Rainbow Magic Mermaid Doll', '', 23, 'rainbow.png', 'C002', 'S002'),
('P007', 'Barbie Careers', 899, 'Barbie Careers Space Discovery Dolls & Science Classroom Playset', '', 20, 'careers.png', 'C002', 'S001'),
('P008', 'Puppy', 350, 'Barbie Puppy Party Doll and Playset', '', 20, 'puppyparty.png', 'C002', 'S001'),
('P009', 'Chelsea', 540, 'Barbie and Chelsea the Lost Birthday Splashtastic Pool Surprise Playset', '', 7, 'chelsea.png', 'C002', 'S001'),
('P010', 'Babie Doctor', 550, 'Barbie You Can Be Anything Baby Doctor Blonde Doll and Playset', '', 9, 'doctor.png', 'C002', 'S002');

--
-- SQLINES DEMO *** d tables
--

--
-- SQLINES DEMO ***  `shop`
--
ALTER TABLE shop
  ADD PRIMARY KEY (shop_id);

--
-- SQLINES DEMO ***  `category`
--
ALTER TABLE category
  ADD PRIMARY KEY (Cat_ID);

--
-- SQLINES DEMO ***  `customer`
--
ALTER TABLE customer
  ADD PRIMARY KEY (Username);

--
-- SQLINES DEMO ***  `product`
--
ALTER TABLE product
  ADD PRIMARY KEY (Product_ID),
  ADD FOREIGN KEY (Cat_ID) REFERENCES category (Cat_ID),
  ADD FOREIGN KEY (shop_id) REFERENCES shop (shop_id);	

--
-- SQLINES DEMO *** umped tables
--

/* SQLINES DEMO *** ER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** ON_CONNECTION=@OLD_COLLATION_CONNECTION */;
