-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2022 lúc 06:38 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tmdt-shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `image`, `email`, `password`) VALUES
(1, 'admin', '', 'admin@gmail.com', 'hamza123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `cust_id`, `product_id`, `quantity`, `size`) VALUES
(1, 1, 8, 1, NULL),
(7, 7, 7, 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(12, 'Áo nam'),
(13, 'Quần nam'),
(14, 'Áo nữ'),
(15, 'Quần nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_pass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_add` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_postalcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_pass`, `cust_add`, `cust_city`, `cust_postalcode`, `cust_number`) VALUES
(4, 'Hamza Mughal', 'mhamzaq869@gmail.com', '11111111', 'h#3,St#62,area dar ul islam', 'lahore', '54810', '03077087412'),
(5, 'demo', 'demo@gmail.com', '11111111', 'lahore cantt', 'lahore', '54840', '03224987258'),
(6, 'nam', 'phanvannam03030@gmail.com', '11111111', '185 Lê Duẩn', 'dn', '204', '1234567890'),
(7, 'nam', 'phanvannam03030@gmail.com', '11111111', '185 Lê Duẩn', 'dn', '204', '1234567890'),
(8, 'nam124313', 'nam@gmail.com', '11111111', 'dn2323', 'dn', '23', '123456789'),
(9, 'nam', 'phanvannam03030@gmail.com', '12345678', '185 Lê Duẩn', 'dn', '204', '1234567890'),
(10, 'vanthang', 'thang123@gmail.com', '123', 'Tân Tiến768', 'Hà Nội', '11424', '90487646564');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_address` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_pcode` int(11) NOT NULL,
  `customer_phonenumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `products_qty` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `order_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `order_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `customer_email`, `customer_fullname`, `customer_address`, `customer_city`, `customer_pcode`, `customer_phonenumber`, `product_id`, `product_amount`, `invoice_no`, `products_qty`, `size`, `order_date`, `order_status`) VALUES
(1, 10, 'thang123@gmail.com', 'vanthang', 'T?n Ti?n768', 'H? N?i', 11424, '90487646564', 7, 23000000, 1393612851, 100, 2, '06-12-2022', 'delivered'),
(2, 10, 'thang123@gmail.com', 'vanthang', 'T?n Ti?n768', 'H? N?i', 11424, '90487646564', 3, 547000, 1676260233, 1, 0, '06-12-2022', 'verified'),
(3, 10, 'thang123@gmail.com', 'vanthang', 'T?n Ti?n768', 'H? N?i', 11424, '90487646564', 7, 230000, 602941231, 1, 0, '06-12-2022', 'pending'),
(4, 10, 'thang123@gmail.com', 'vanthang', 'T?n Ti?n768', 'H? N?i', 11424, '90487646564', 8, 21525000, 602941231, 123, 3, '06-12-2022', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `furniture_product`
--

CREATE TABLE `furniture_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category` int(11) NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `furniture_product`
--

INSERT INTO `furniture_product` (`pid`, `title`, `category`, `detail`, `price`, `image`, `date`, `status`) VALUES
(2, 'Áo khoác cỡ lớn Túi Nút phía trước Kẻ sọc Giải trí', 14, '<p>M&agrave;u sắc:M&agrave;u Hồng baby</p>\r\n\r\n<p>Phong c&aacute;ch:Giải tr&iacute;</p>\r\n\r\n<p>Kiểu mẫu:</p>\r\n\r\n<p>Kẻ sọc</p>\r\n\r\n<p>Chi tiết:</p>\r\n\r\n<p>T&uacute;i, N&uacute;t ph&iacute;a trước</p>\r\n\r\n<p>Kiểu:</p>\r\n\r\n<p>Gấu b&ocirc;ng</p>\r\n\r\n<p>Viền:</p>\r\n\r\n<p>V&ograve;ng cổ</p>\r\n\r\n<p>Chiều d&agrave;i tay:</p>\r\n\r\n<p>Tay &aacute;o d&agrave;i</p>\r\n\r\n<p>Loại tay &aacute;o:</p>\r\n\r\n<p>Thả vai</p>\r\n\r\n<p>Chiều d&agrave;i:</p>\r\n\r\n<p>Ngắn</p>\r\n\r\n<p>Loại Ph&ugrave; hợp:</p>\r\n\r\n<p>Ph&ugrave; hợp thường</p>\r\n\r\n<p>Sợi vải:</p>\r\n\r\n<p>Kh&ocirc;ng căng</p>\r\n\r\n<p>Vật liệu:</p>\r\n\r\n<p>Vải</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>100% Polyester</p>\r\n\r\n<p>Hướng dẫn Bảo quản:</p>\r\n\r\n<p>Machine wash or professional dry clean</p>\r\n\r\n<p>Mỏng:</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n', 496000, '1659512255832fef934c32ac0f9d3afd7e6a17e03c.webp', '06-12-2022', 'publish'),
(3, 'Áo khoác cỡ lớn Túi Nút phía trước màu trơn Giải trí', 14, '<p>M&agrave;u sắc:</p>\r\n\r\n<p>M&agrave;u be</p>\r\n\r\n<p>Phong c&aacute;ch:</p>\r\n\r\n<p>Giải tr&iacute;</p>\r\n\r\n<p>Kiểu mẫu:</p>\r\n\r\n<p>m&agrave;u trơn</p>\r\n\r\n<p>Chi tiết:</p>\r\n\r\n<p>T&uacute;i, N&uacute;t ph&iacute;a trước</p>\r\n\r\n<p>Kiểu:</p>\r\n\r\n<p>Gấu b&ocirc;ng</p>\r\n\r\n<p>Viền:</p>\r\n\r\n<p>V&ograve;ng cổ</p>\r\n\r\n<p>Chiều d&agrave;i tay:</p>\r\n\r\n<p>Tay &aacute;o d&agrave;i</p>\r\n\r\n<p>Loại tay &aacute;o:</p>\r\n\r\n<p>Thả vai</p>\r\n\r\n<p>Chiều d&agrave;i:</p>\r\n\r\n<p>Ngắn</p>\r\n\r\n<p>Loại Ph&ugrave; hợp:</p>\r\n\r\n<p>Ph&ugrave; hợp thường</p>\r\n\r\n<p>Sợi vải:</p>\r\n\r\n<p>Kh&ocirc;ng căng</p>\r\n\r\n<p>Vật liệu:</p>\r\n\r\n<p>Flannelette</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>100% Polyester</p>\r\n\r\n<p>Hướng dẫn Bảo quản:</p>\r\n\r\n<p>Hand wash or professional dry clean</p>\r\n\r\n<p>Mỏng:</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n', 547000, '1666924531e707b70d9a968fdbfa847eb303b63195_thumbnail_600x.webp', '06-12-2022', 'publish'),
(4, 'Áo cộc tay Nam Túi Nút phía trước màu trơn Công việc', 12, '<p>M&agrave;u sắc:</p>\r\n\r\n<p>X&aacute;m</p>\r\n\r\n<p>Phong c&aacute;ch:</p>\r\n\r\n<p>C&ocirc;ng việc</p>\r\n\r\n<p>Kiểu mẫu:</p>\r\n\r\n<p>m&agrave;u trơn</p>\r\n\r\n<p>Chi tiết:</p>\r\n\r\n<p>T&uacute;i, N&uacute;t ph&iacute;a trước</p>\r\n\r\n<p>Kiểu:</p>\r\n\r\n<p>Thường xuy&ecirc;n</p>\r\n\r\n<p>Viền:</p>\r\n\r\n<p>Cổ &aacute;o t&acirc;y</p>\r\n\r\n<p>Chiều d&agrave;i tay:</p>\r\n\r\n<p>Tay &aacute;o d&agrave;i</p>\r\n\r\n<p>Loại tay &aacute;o:</p>\r\n\r\n<p>Tay thường</p>\r\n\r\n<p>Chiều d&agrave;i:</p>\r\n\r\n<p>Thường xuy&ecirc;n</p>\r\n\r\n<p>T&uacute;i đeo tay:</p>\r\n\r\n<p>Ngực đơn</p>\r\n\r\n<p>Loại Ph&ugrave; hợp:</p>\r\n\r\n<p>Ph&ugrave; hợp thường</p>\r\n\r\n<p>Sợi vải:</p>\r\n\r\n<p>Kh&ocirc;ng căng</p>\r\n\r\n<p>Vật liệu:</p>\r\n\r\n<p>Worsted</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>48% Polyester, 41% Sợi viscose, 5% Polyamide, 4% Acrylic, 2% Len</p>\r\n\r\n<p>Hướng dẫn Bảo quản:</p>\r\n\r\n<p>Machine wash or professional dry clean</p>\r\n\r\n<p>Mỏng:</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n', 807000, '16657161022db27b690c5129ab11a35ec2f77958cc_thumbnail_600x.webp', '06-12-2022', 'publish'),
(5, 'Áo thun có cổ Nam Nút Tương phản ràng buộc Lá thư Sẵn sàng', 12, '<p>M&agrave;u sắc:</p>\r\n\r\n<p>m&agrave;u xanh l&aacute;</p>\r\n\r\n<p>Phong c&aacute;ch:</p>\r\n\r\n<p>Giải tr&iacute;</p>\r\n\r\n<p>Kiểu mẫu:</p>\r\n\r\n<p>L&aacute; thư</p>\r\n\r\n<p>Viền:</p>\r\n\r\n<p>Cổ Polo</p>\r\n\r\n<p>Chi tiết:</p>\r\n\r\n<p>N&uacute;t, Tương phản r&agrave;ng buộc</p>\r\n\r\n<p>Chiều d&agrave;i tay:</p>\r\n\r\n<p>Ngắn tay</p>\r\n\r\n<p>Loại tay &aacute;o:</p>\r\n\r\n<p>Tay thường</p>\r\n\r\n<p>Chiều d&agrave;i:</p>\r\n\r\n<p>Thường xuy&ecirc;n</p>\r\n\r\n<p>Loại Ph&ugrave; hợp:</p>\r\n\r\n<p>Ph&ugrave; hợp thường</p>\r\n\r\n<p>Sợi vải:</p>\r\n\r\n<p>Căng nhẹ</p>\r\n\r\n<p>Vật liệu:</p>\r\n\r\n<p>Vải</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>100% Polyester</p>\r\n\r\n<p>Hướng dẫn Bảo quản:</p>\r\n\r\n<p>Machine wash or professional dry clean</p>\r\n\r\n<p>Mỏng:</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n', 252000, '16593332048cf97497e7b1634b2450900124803691_thumbnail_600x.webp', '06-12-2022', 'publish'),
(6, 'Áo thun có cổ Nam Nút Hình học Công việc', 12, '<p>M&agrave;u sắc:</p>\r\n\r\n<p>M&agrave;u Đỏ S&acirc;u</p>\r\n\r\n<p>Phong c&aacute;ch:</p>\r\n\r\n<p>C&ocirc;ng việc</p>\r\n\r\n<p>Kiểu mẫu:</p>\r\n\r\n<p>H&igrave;nh học</p>\r\n\r\n<p>Viền:</p>\r\n\r\n<p>Cổ Polo</p>\r\n\r\n<p>Chi tiết:</p>\r\n\r\n<p>N&uacute;t</p>\r\n\r\n<p>Chiều d&agrave;i tay:</p>\r\n\r\n<p>Ngắn tay</p>\r\n\r\n<p>Loại tay &aacute;o:</p>\r\n\r\n<p>Tay thường</p>\r\n\r\n<p>Chiều d&agrave;i:</p>\r\n\r\n<p>Thường xuy&ecirc;n</p>\r\n\r\n<p>Loại Ph&ugrave; hợp:</p>\r\n\r\n<p>Ph&ugrave; hợp thường</p>\r\n\r\n<p>Sợi vải:</p>\r\n\r\n<p>Căng trung b&igrave;nh</p>\r\n\r\n<p>Vật liệu:</p>\r\n\r\n<p>Vải</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>100% Polyester</p>\r\n\r\n<p>Hướng dẫn Bảo quản:</p>\r\n\r\n<p>Giặt m&aacute;y, kh&ocirc;ng giặt kh&ocirc;, giặt bằng chất tẩy rửa mềm</p>\r\n\r\n<p>Mỏng:</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n', 292000, '165819367625ca62f128570f192b8be052f8a98a59_thumbnail_600x.webp', '06-12-2022', 'publish'),
(7, 'Áo thun có cổ Nam Nút Tương phản ràng buộc Khối Màu Giải trí', 12, '<p>M&agrave;u sắc:</p>\r\n\r\n<p>M&agrave;u xanh hải qu&acirc;n</p>\r\n\r\n<p>Phong c&aacute;ch:</p>\r\n\r\n<p>Giải tr&iacute;</p>\r\n\r\n<p>Kiểu mẫu:</p>\r\n\r\n<p>Khối M&agrave;u</p>\r\n\r\n<p>Viền:</p>\r\n\r\n<p>Cổ Polo</p>\r\n\r\n<p>Chi tiết:</p>\r\n\r\n<p>N&uacute;t, Tương phản r&agrave;ng buộc</p>\r\n\r\n<p>Chiều d&agrave;i tay:</p>\r\n\r\n<p>Ngắn tay</p>\r\n\r\n<p>Loại tay &aacute;o:</p>\r\n\r\n<p>Tay thường</p>\r\n\r\n<p>Chiều d&agrave;i:</p>\r\n\r\n<p>Thường xuy&ecirc;n</p>\r\n\r\n<p>Loại Ph&ugrave; hợp:</p>\r\n\r\n<p>Ph&ugrave; hợp thường</p>\r\n\r\n<p>Sợi vải:</p>\r\n\r\n<p>Căng nhẹ</p>\r\n\r\n<p>Vật liệu:</p>\r\n\r\n<p>Vải</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>100% Polyester</p>\r\n\r\n<p>Hướng dẫn Bảo quản:</p>\r\n\r\n<p>Machine wash or professional dry clean</p>\r\n\r\n<p>Mỏng:</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n', 230000, '16614798656bd0c20d513c2b761aa3c60fe8a70689_thumbnail_600x.webp', '06-12-2022', 'publish'),
(8, 'Quần Short Nam Dây kéo Tất cả trên in Giải trí', 13, '<p>M&agrave;u sắc:</p>\r\n\r\n<p>m&agrave;u đen</p>\r\n\r\n<p>Phong c&aacute;ch:</p>\r\n\r\n<p>Giải tr&iacute;</p>\r\n\r\n<p>Kiểu mẫu:</p>\r\n\r\n<p>Tất cả tr&ecirc;n in</p>\r\n\r\n<p>Chi tiết:</p>\r\n\r\n<p>D&acirc;y k&eacute;o</p>\r\n\r\n<p>Kiểu:</p>\r\n\r\n<p>Ch&acirc;n thẳng</p>\r\n\r\n<p>loại đ&oacute;ng k&iacute;n:</p>\r\n\r\n<p>D&acirc;y k&eacute;o thắt lưng</p>\r\n\r\n<p>V&ograve;ng eo:</p>\r\n\r\n<p>Tự nhi&ecirc;n</p>\r\n\r\n<p>Chiều d&agrave;i:</p>\r\n\r\n<p>M&ugrave;a vụ</p>\r\n\r\n<p>Loại Ph&ugrave; hợp:</p>\r\n\r\n<p>Ph&ugrave; hợp thường</p>\r\n\r\n<p>Sợi vải:</p>\r\n\r\n<p>Kh&ocirc;ng căng</p>\r\n\r\n<p>Vật liệu:</p>\r\n\r\n<p>Vải</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>100% Polyester</p>\r\n\r\n<p>Hướng dẫn Bảo quản:</p>\r\n\r\n<p>Machine wash or professional dry clean</p>\r\n\r\n<p>Mỏng:</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n', 175000, '161890302904b2b5a76d5029b8ccd97c7a12304932_thumbnail_600x.webp', '06-12-2022', 'publish');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Chỉ mục cho bảng `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `furniture_product`
--
ALTER TABLE `furniture_product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `furniture_product`
--
ALTER TABLE `furniture_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
