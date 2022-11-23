-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 05:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangiay`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `ID` int(1) NOT NULL,
  `Title` text NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Status` int(11) NOT NULL,
  `Content` text NOT NULL,
  `github` varchar(1000) NOT NULL,
  `facebook` varchar(1000) NOT NULL,
  `instagram` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(1) NOT NULL,
  `UseName` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `RoID` int(2) NOT NULL,
  `Avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `UseName`, `Email`, `Password`, `RoID`, `Avatar`) VALUES
(1, 'hungIT', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 1, ''),
(4, 'hung', 'adminhung123@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `ID` int(1) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `Des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`ID`, `Title`, `Image`, `Content`, `Des`) VALUES
(3, 'Bộ Sưu Tập Giày Rọ Nam Da Bò Thời Trang', 'ID1.webp', 'Giày Rọ Nam Da Bò Thời Trang', 'Giày rọ nam không mấy quá xa lạ với các anh. Đây là một em giày da có thiết kế nam tính, phong cách. Giày được đúc liền phần đế và phần mũi, thường có khe nhỏ.   Em này lên chân rất dễ dàng. Mang em này không lo mồ hôi chân vì giày sở hữu thiết kế thoáng '),
(4, 'Top 6 Giày Lười Nam Da Bò Giá Rẻ Mà Các Anh Nên Biết', 'ID2.webp', 'Giày Lười Nam Da Bò', 'NT11 là đôi giày lười nam da bò giá rẻ rất được ưa chuộng ở Timan. Kiểu giày lười không mất thời gian để buộc dây giày.  Giày có độ mềm êm và đàn hồi chịu lực tốt vì được làm từ da bò thật 100%. Giày phối vân Timana đen trắng vô cùng ấn tượng. Mui giày đư'),
(5, 'Top 5 Giày Lười Nam Da Bò Cao Cấp Chính Hãng Timan', 'ID3.webp', 'Giày Lười Nam Da Bò Cao Cấp Chính Hãng Timan', 'Đôi giày lười nam da bò mà Timan rất muốn giới thiệu cho các anh chính là đôi NK90. Đây là một đôi giày da rất khác biệt, sở hữu sắc xanh ấn tượng.  Da bò cao cấp là chất liệu chính của đôi giày này. Bề mặt da gần phần mui giày được đục lỗ giúp giày thêm '),
(6, 'Top 7 Giày Lười Da Bò Nam Được Yêu Thích Nhất Timan', 'ID4.webp', 'Giày Lười Da Bò Nam Được Yêu Thích Nhất Timan', 'Anh cần một đôi giày lười da bò nam chất lượng mà giá phải chăng? Thế thì đừng bỏ qua em giày NK76. Với chất da bò nguyên tấm, giày bền bỉ và mang rất êm chân.    Nhằm hướng đến sự êm ái cho đôi chân của người mang, bên trong giày được thiết kế với lớp ló'),
(8, 'Top 8 Giày Da Bò Nam Cao Cấp Đáng Sở Hữu Nhất', 'ID5.webp', 'Giày Da Bò Nam Cao Cấp Đáng Sở Hữu Nhất', 'NL69 là mẫu giày da bò nam mới nhất được lên kệ nhà Timan. Em giày lười này có thiết kế đơn giản, dễ mang, chỉ một thao tác đơn giản là giày đã lên chân. Giày màu đen có thể phối với nhiều kiểu trang phục khác nhau.  Bên trong giày là lớp lót massage chốn'),
(9, 'Bộ Sưu Tập Giày Da Bóng Nam Thời Trang', 'ID6.webp', 'Giày Da Bóng Nam Thời Trang', 'Một chất liệu khá phổ biến, được sử dụng để làm nên những đôi giày da nam cao cấp, chính là da bóng. Chất da bóng tương đối phổ biến bên cạnh da bò, và da lộn. Về độ mềm êm và bền bỉ thì chất da này không hề thua kém những loại da cao cấp khác.  Da bóng c'),
(10, 'Bộ Sưu Tập Giày Lười Nam Da Lộn Đẹp Và Bền Bỉ', 'ID7.webp', 'Giày Lười Nam Da Lộn Đẹp Và Bền Bỉ', 'Dù qua bao nhiêu năm thì giày lười nam da lộn luôn nằm trong top những kiểu giày được yêu thích nhất. Nhờ vào chất da lộn tuyển chọn, giày vừa đẹp vừa bền bỉ. Giày lên chân là cảm nhận ngay được sự êm ái.  Những đôi giày da nam cao cấp kiểu lười này vô cù'),
(11, 'Bộ Sưu Tập Giày Loafer Nam Da Lộn Cực Chất Cho Phái Mạnh', 'ID8.webp', 'Giày Loafer Nam Da Lộn Cực Chất Cho Phái Mạnh', 'Trong tất cả kiểu giày nam, không có dòng giày nào phổ biến và nhận được nhiều sự yêu thích từ phái mạnh như giày loafer nam. Tiện lợi, và phong cách.  Với em giày này, chỉ một thao tác đơn giản là giày lên chân, không mất thời gian để buộc dây giày. Khôn'),
(12, 'Top 5 Mẫu Giày Da Lộn Nam Buộc Dây Thời Trang', 'ID9.webp', 'Mẫu Giày Da Lộn Nam Buộc Dây Thời Trang', 'GK03 là đôi giày da lộn nam buộc dây đang được các anh săn đón nhiệt tình trong suốt những tháng qua. Thiết kế hiện đại, nam tính.    Giày có độ mềm êm và bền bỉ tốt nhờ vào chất liệu da lộn cao cấp được xử lý kỹ lưỡng qua nhiều công đoạn khác nhau. Hai b'),
(13, 'Bộ Sưu Tập Giày Da Bò Lộn Nam Cao Cấp Chính Hãng', 'ID10.webp', 'Giày Da Bò Lộn Nam Cao Cấp Chính Hãng', 'Chinh phục các anh ngay từ cái nhìn đầu tiên chính là em HL01. Đây là đôi giày lười có dây rất thời trang.    Chất lượng của HL01 trước hết đến từ chất da lộn được tuyển chọn và xử lý kỹ lưỡng. Phần dây giày chắc chắn.  Em giày da bò lộn nam này đi rất êm');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Amount` int(255) NOT NULL,
  `Price` double NOT NULL,
  `DateCart` date NOT NULL,
  `Sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(1) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Status` int(2) NOT NULL,
  `Content` varchar(200) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `Title` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `Image`, `Status`, `Content`, `CreateDate`, `UpdateDate`, `Title`) VALUES
(5, 'giaynam.webp', 0, '', '2022-11-21 16:56:20', '2022-11-21 16:56:20', 'Giày Nam'),
(6, 'depnam.webp', 0, '', '2022-11-21 16:58:35', '2022-11-21 16:58:35', 'Dép nam'),
(7, 'Giay da nam.webp', 0, '', '2022-11-21 16:59:05', '2022-11-21 16:59:05', 'Giày da nam'),
(8, 'giayluoinam.webp', 0, '', '2022-11-21 16:59:49', '2022-11-21 16:59:49', 'Giày lười nam'),
(9, 'giaythethaonam.webp', 0, '', '2022-11-21 17:00:32', '2022-11-21 17:00:32', 'Giày thể thao nam'),
(10, 'giayvainam.webp', 0, '', '2022-11-21 17:01:25', '2022-11-21 17:01:25', 'Giày vải nam'),
(11, 'GiayTayNam.webp', 0, '', '2022-11-21 17:02:02', '2022-11-21 17:02:02', 'Giày tây nam');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(1) NOT NULL,
  `Title` text NOT NULL,
  `Email` text NOT NULL,
  `Subject` text NOT NULL,
  `Mess` text NOT NULL,
  `Phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(1) NOT NULL,
  `Title` text NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `Title`, `Link`) VALUES
(1, 'Trang Chu', 'trangchu'),
(3, 'About', 'About'),
(4, '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(1) NOT NULL,
  `Title` text NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Description` text NOT NULL,
  `Price` float NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `PriceNew` float NOT NULL,
  `Sale` int(2) NOT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `Content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Title`, `Image`, `Description`, `Price`, `CreateDate`, `UpdateDate`, `PriceNew`, `Sale`, `collection_id`, `Content`) VALUES
(73, 'Dép Kẹp Da Nam DK13', 'Thumb.webp', '', 500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 600, 0, NULL, ''),
(74, 'Giày Sandal Lưới Phối Da Nam XH01', 'Thumb (1).webp', '', 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 800, 0, NULL, ''),
(75, 'Giày Thể Thao Nam Cao Cấp TT10', 't3.webp', '', 500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 700, 0, NULL, ''),
(76, 'Giày Thể Thao Da Nam TA07', 't4.webp', '', 500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 800, 0, NULL, ''),
(77, 'Dép Lê Da Nam Cao Cấp DK14', 't6.webp', '', 500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1000, 0, NULL, ''),
(78, 'Giày Lười Vải Nam GV03', 't7.webp', '', 700, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 500, 0, NULL, ''),
(79, 'Giày Sandal Lưới Phối Da Nam XH02', 't8.webp', '', 500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 700, 0, NULL, ''),
(80, 'Giày Thể Thao Nam Da Lộn NX11', 't9.webp', '', 600, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 800, 0, NULL, ''),
(81, 'Giày Thể Thao Vải Fashion Nam CT25', 't10.webp', '', 10000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 200000, 0, NULL, ''),
(82, 'Giày Lười Thể Thao Vải Nam GV01', 't11.webp', '', 8000000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5000, 0, NULL, ''),
(102, 'Giày Da Nam Timan NT78', 'giay1.webp', 'Một thiết kế cá tính', 590000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 599000, 0, NULL, 'Một thiết kế cá tính'),
(103, 'Giày Da Thoáng Khí Nam NL78', 'giay2.webp', 'Một thiết kế cá tính', 490000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 490000, 0, NULL, 'Một thiết kế cá tính'),
(104, 'Giày Da Nam NK37', 'giay3.webp', 'Một thiết kế cá tính', 690000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 690000, 0, NULL, 'Giày Siêu Êm'),
(105, 'Giày Lười Da Nam Cao Cấp NK69', 'giay4.webp', 'Một thiết kế cá tính', 590000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 599000, 0, NULL, 'Giày Siêu Êm'),
(106, 'Giày Da Nam Timan CA15', 'giay5.webp', 'Một thiết kế cá tính', 550000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 550000, 0, NULL, 'Giày Siêu Êm'),
(107, 'Giày Da Thể Thao Nam Buộc Dây LV09', 'giay6.webp', 'Một thiết kế cá tính', 650000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 650000, 0, NULL, 'Giày Siêu Êm'),
(108, 'Giày Da Nam NK36', 'giay7.webp', 'Một thiết kế cá tính', 299000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 299000, 0, NULL, 'Giày Siêu Êm'),
(109, 'Giày Da Độn Đế Nam NL72', 'giay8.webp', 'Một thiết kế cá tính', 490000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 490000, 0, NULL, 'Giày Siêu Êm'),
(110, 'Giày Lười Da Bò Nam NK57', 'giay9.webp', 'Một thiết kế cá tính', 690000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 490000, 0, NULL, 'Giày Siêu Êm'),
(111, 'Giày Da Thoáng Khí Nam NL78', 'giay10.webp', 'Một thiết kế cá tính', 690000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 690000, 0, NULL, 'Giày Siêu Êm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `collection_id` (`collection_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `category` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
