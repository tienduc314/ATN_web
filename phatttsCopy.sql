-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 10:17 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phattts`
--
CREATE DATABASE IF NOT EXISTS `phatttsCopy` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phatttsCopy`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_ID` varchar(10) NOT NULL,
  `Cat_Name` varchar(30) NOT NULL,
  `Cat_Des` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_ID`, `Cat_Name`, `Cat_Des`) VALUES
('C001', '(BeesMeBathToys)', 'BeesMeBathToys Product'),
('C002', 'GMC1500', 'GMC1500 Product'),
('C003', 'Royal', 'Royal product'),
('C004', 'BatTrang', 'Products made from Bat Trang ceramics are plentiful and diverse');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `CustName` varchar(30) NOT NULL,
  `gender` int(11) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `CusDate` int(11) NOT NULL,
  `CusMonth` int(11) NOT NULL,
  `CusYear` int(11) NOT NULL,
  `SSN` varchar(10) DEFAULT NULL,
  `ActiveCode` varchar(100) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Username`, `Password`, `CustName`, `gender`, `Address`, `telephone`, `email`, `CusDate`, `CusMonth`, `CusYear`, `SSN`, `ActiveCode`, `state`) VALUES
('phattvgcc19207', 'e10adc3949ba59abbe56e057f20f883e', 'Truong Van Phat', 0, 'Vinh Long', '0868755939', 'phatTTS@gmail.com', 16, 11, 1996, '', '', 1),
('userphattts', 'e10adc3949ba59abbe56e057f20f883e', 'Truong Van Phat', 0, 'Vinh Long', '1894861268', 'phattv19207@gmail.com', 17, 11, 1997, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(6) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `DeliveryDate` datetime NOT NULL,
  `Delivery_loca` varchar(200) NOT NULL,
  `Payment` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` varchar(10) NOT NULL,
  `Product_Name` varchar(30) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `Store` varchar(100) NOT NULL,
  `oldPrice` decimal(12,2) NOT NULL,
  `SmallDesc` varchar(1000) NOT NULL,
  `DetailDesc` text NOT NULL,
  `ProDate` datetime NOT NULL,
  `Pro_qty` int(11) NOT NULL,
  `Pro_image` varchar(200) NOT NULL,
  `Cat_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Name`, `Price`, `Store`, `oldPrice`, `SmallDesc`, `DetailDesc`, `ProDate`, `Pro_qty`, `Pro_image`, `Cat_ID`) VALUES
('TP001', 'HacTuSa(EOM)', 120, 'Ca mau','0.00', 'Set of Luxurious Lotus Palace Pattern Blended Tea Teapot', '<p>\r\n	HacTuSa is designed in the style of ancient pottery bearing feudal tea ceremony style. The design is like an ancient mill that gives you a new style of tea making and helps you feel the aroma, the sweetness of each sip of tea. Not only is the ordinary tea ceremony, this is also the decoration, the feng shui treasure of the family, attracting talent, accumulating wealth, and thousands of peace for the homeowner.</p>\r\n', '2021-05-07 11:44:19', 30, 'HacTuSa(OEM).jpg', 'C001'),
('TP002', 'GMC1500', 300,'Bac lieu', '0.00', 'GMC1500 has a luxurious European style.', '<div>\r\n	The high-quality ceramic dishware set is heat resistant, holds heat well and is very safe for the user.</div>\r\n<div>\r\n	Beautiful box and paper protection Tires Elegant and unusual pattern. High-grade cup: Bright, glossy, thin and very light porcelain material. There is no economical use of metal so it is safe for health.</div>\r\n<div>\r\n	With the lines of sophistication and elegance in the design, it is very convenient with a beautiful design</div>\r\n<div>\r\n	Use accent living room furniture, suitable for any home or business.</div>\r\n<div>\r\n	Use New Year&#39;s gifts, which are meaningful and luxurious housewarming gifts</div>\r\n<div>\r\n	Product details include tea tray</div>\r\n<div>\r\n	Material: Thick porcelain, light man color, gold border.</div>\r\n', '2021-05-07 11:55:05', 20, 'GMC1500.jfif', 'C002'),
('TP003', 'Royal', 250,'An giang', '0.00', 'The luxurious European aristocratic tea set inlaid with 24K net gold is truly a masterpiece.', '<div>\r\n	The teapot features handcrafted motifs from the pottery artisans, the handle details and the 24K gold-plated bezel without peeling. Thin, smooth and sophisticated enamel layer - perfectly beautiful in every detail.</div>\r\n<div>\r\n	The box also carries a very luxurious aristocratic spirit.</div>\r\n<div>\r\n	The European aristocratic tea set to drink tea is definitely delicious, in addition to the product set it also uses very beautiful decor.</div>\r\n<div>\r\n	Suitable for the living room in the neoclassical style</div>\r\n<div>\r\n	Suitable as housewarming gifts, promotion gifts, boss gifts, wedding gifts ...</div>\r\n', '2021-05-07 12:05:44', 15, 'Royal.jfif', 'C003'),
('TP004', 'SM1000', 100,'Dong thap' ,'0.00', 'MS1000 Is the latest product line with eye-catching design and convenience in use.', '<div>\r\n	The set of floating clay soils is handcrafted in the workshop. The product is heated at 1300 degrees Celsius, completely eliminates impurities, ensuring absolute safety for health.</div>\r\n<div>\r\n	Good durability, no clinging to tea, easy cleaning and cleaning.</div>\r\n<div>\r\n	Products made by artisanal craftsmanship, sharp, will surely satisfy the most demanding customers.</div>\r\n', '2021-05-07 12:21:52', 20, 'SM1000.jpg', 'C001'),
('TP005', 'Waterfall', 140,'Long an', '0.00', 'Waterfall is sophisticated, beautiful and elegant, very smooth.', '<p>\r\n	The shape of a waterfall when brewing tea will pour water into the bowl, the water is passed through the tea filter to flow down the tea bowl to make the tea very clear and keep the fragrance very fragrant. The high waterfall creates a superficial appearance and is convenient to use</p>\r\n', '2021-05-07 12:30:36', 30, 'Waterfall.jpg', 'C001'),
('TP006', 'NghiThanh', 160,'Ha tinh', '0.00', 'NghiThanh Converging classic noble beauty.', '<p>\r\n	The product set is made from high quality ceramic material, with floral motifs and golden emulsion.</p>\r\n', '2021-05-07 12:42:15', 10, 'NghiThanh.jfif', 'C003'),
('TP007', 'Ac28', 400,'Ha noi', '0.00', 'Ac28 has luxurious colors and unique patterned lines, which will be an extremely meaningful gift for your loved ones.', '<div>\r\n	Just like how to place the vase in feng shui, the teapot set on the living room table also has a special effect. In the teapot, there are Tho, Thuy, Hoa and Moc, the porcelain enamel is Kim - all in boiling water, the tea is blooming, the kettle and the vivid porcelain pattern. Water evaporates (Feng) and is poured into the cup into a stream (Thuy), then drinking and circulating to warm the whole body. That is the effect of Feng (and) Thuy.</div>\r\n<div>\r\n	The feng-shui meaning of the teapot set in the living room, how the owner puts the teapot</div>\r\n<div>\r\n	The teapot is placed in the living room, the most solemn position in the house. Today, there are sophisticated teapot sets, teapots placed in a pot of hot water to brew a teapot or have an electric teapot like a rice cooker. Not only looking at the direction of the kitchen, the direction of the living room, the way the owner puts the teapot and the teapot&#39;s position is a very important factor in modern feng shui.</div>\r\n', '2021-05-07 13:04:36', 25, 'Ac28.jfif', 'C001'),
('TP008', 'BatTrangSu', 130,'Nghe an', '0.00', 'BatTrangSu always has its own quintessence, unique and fancy design design.', '<p>\r\n	BatTrangSu attracts customers who enjoy tea. Each set of teapots inside the kettle and the cup is coated with a characteristic glaze nowhere to create a delicate beauty when brewing tea into the cup, you will see a very good combination between the color of ceramic glaze. The ceramic and green color of the tea, this blend creates the traditional Vietnamese tea ceremony style as well as makes many domestic and foreign customers know and love the Bat Trang ceramic brand.</p>\r\n', '2021-05-07 13:49:22', 27, 'BatTrangSu.jpg', 'C004'),
('TP009', 'ACT3', 500,'Phu yen', '0.00', 'ACT3 is bold Royal British style', '<p>\r\n	ACT3 is a world-class product that is decorated in villas, villas, hotels, castles and is trusted by the elite. Sophisticated, the image printed on the ceramic surface is extremely sharp with the enamel that is guaranteed to never fade.</p>\r\n', '2021-05-07 13:53:50', 12, 'ACT3.jpg', 'C003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`Username`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`Cat_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
