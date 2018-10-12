-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 12, 2018 lúc 01:13 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `products`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(4, 'SamSung', 'logoss.png'),
(1, 'Apple', 'logoapple.jpg'),
(5, 'Oppo', 'Oppo.png'),
(3, 'Sony', 'Sony.jpg'),
(2, 'Microsoft', 'Microsoft.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mobile`
--

DROP TABLE IF EXISTS `mobile`;
CREATE TABLE IF NOT EXISTS `mobile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mobile`
--

INSERT INTO `mobile` (`ID`, `name`, `image`, `description`, `manu_ID`, `type_ID`, `price`) VALUES
(1, 'SamSung galaxy note9', 'Iphone8.jpg', 'Mang lại sự cải tiến đặc biệt trong cây bút S-Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.', 4, 1, 6500000),
(2, 'SamSung galaxy j7', 'galaxyj7.png', 'Galaxy J7 Prime xứng đáng là cái tên hàng đầu trong danh sách chọn smartphone phổ thông của giới trẻ khi nhận được nhiều đánh giá tích cực về thiết kế, thời lượng pin lâu dài và camera chụp hình chất lượng tốt.', 1, 1, 500000),
(3, 'Apple iphone 5c', 'iphone5c.jpg', 'iPhone 5C được làm từ vật liệu polycarbonat chống trầy, bộ vỏ được gia công từ một khối nhựa duy nhất, tương tự iPhone 5S làm từ 1 khối nhôm duy nhất. Vì vậy, bạn sẽ khó có thể tìm ra bất kỳ khớp nối nào trên máy. Bên dưới bộ vỏ là một lớp kim loại nhằm mục đích giúp máy cứng cáp hơn và kiêm luôn chức năng của 1 chiếc anten thu phát sóng.', 2, 1, 1000000),
(4, 'Apple iphone 6s plus', '6splus.jpg', 'Điện thoại iPhone 6s Plus 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.\r\n\r\n', 2, 1, 1500000),
(13, 'Apple Macbook Pro Touch MR9Q2SA/A i5 2.3GHz/8GB/256GB (2018)', 'Apple_MacbookPro_Touch_MR9Q2SA_i5.jpg', 'Apple Macbook Pro Touch MR9Q2SA thuộc dòng máy tính xách tay cao cấp với một cấu hình mạnh mẽ đã được nâng cấp hơn so với phiên bản cũ cũng như vẻ ngoài gọn nhẹ, sang trọng phù hợp với thiết kế đồ họa chuyên nghiệp và người dùng có điều kiện muốn trải nghiệm sản phẩm.', 2, 2, 21000000),
(14, 'Apple Macbook 12\" MNYF2SA/A Core M 1.2GHz/8GB/256GB (2017)', 'Apple-macbook-12-mlh82.jpg', 'Apple Macbook 12” MNYF2SA/A 2017 là mẫu laptop được nhiều người dùng lựa chọn nhất vì máy có thiết kế mỏng nhẹ, đẹp nên phù hợp với nhu cầu sử dụng của nhiều người và đặc biệt là lựa chọn ưa thích của nhân viên văn phòng.', 2, 2, 19000000),
(15, 'Loa di động BLUETOOTH® XB41 EXTRA BASS™', 'SpeakerSony_XB41_Extra_Bass.jpg', 'SRS-XB41\r\nMang lễ hội cùng bạn đi khắp nơi\r\nTạo phong cách riêng cho đêm tiệc với EXTRA BASS™, chế độ LIVE SOUND nâng cao, đèn tiệc cùng các tính năng thú vị để mang lại trải nghiệm nhạc sống ba chiều bất tận.', 6, 3, 4490000),
(16, 'Loa di động BLUETOOTH® XB01 EXTRA BASS™', 'SpeakerSony_XB01_extra_Bass.jpg', 'Âm nhạc cùng bạn đến bất cứ nơi đâu với SRS-XB01. Loa gọn nhẹ, dễ dàng mang theo với khả năng tạo âm trầm sâu và mạnh mẽ.\r\nNhịp điệu sôi động hơn, tiệc tùng tưng bừng hơn nhờ có EXTRA BASS™', 6, 3, 780000),
(17, 'Máy tính bảng iPad Wifi 32GB (2018)', 'ipad-6th-wifi-32gb-1-400x460.png', 'iPad 6th Wifi 32GB với nhiều nâng cấp về phần cứng, đặc biệt hơn giá của sản phẩm này được định hình ở phân khúc giá rẻ, sinh viên sẽ là sự lựa chọn “không quá xa tầm tay” người dùng.', 2, 4, 11990000),
(9, 'Apple iphone X', 'iphonex.jpg', 'iPhone X được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp.\r\n', 2, 1, 40000000),
(11, 'Notebook 9 (NP900X3H-K01VN)', 'Notebook9.jpg', 'Thiết kế cực mỏng và siêu nhẹ\r\nDung lượng pin hoạt động lên đến 10 giờ\r\nTính năng kết nối và chia sẻ thông minh giữa các thiết bị di động.\r\nMàu sắc :SILVER', 1, 2, 17950000),
(12, 'Samsung ATIV Book 9 Plus', 'Samsung_ATIV_Book_9_Plus(3).jpg', 'Samsung ATIV Book 9 Plus là một trong những chiếc laptop mở đầu cho dòng laptop siêu nhẹ. Với cơ thể được là từ anodized nhôm cùng thiết kế hấp dẫn, chiếc Ultrabook của Samsung thực sự tạo ra một chiếc Macbook chạy hệ điều hành Windows.', 1, 2, 16500000),
(18, 'Máy tính bảng iPad Pro 10.5 inch Wifi 64GB (2017)', 'ipad-pro-105-inch-wifi-64gb-2017-400-400x460.png', 'iPad Pro 10.5 inch Wifi 64GB (2017) với kích thước màn hình nhỏ hơn, viền màn hình siêu mỏng cùng hiệu năng mạnh mẽ sẽ đáp ứng tốt cho bạn trong mọi nhu cầu sử dụng hằng ngày.\r\nĐiểm khác biệt lớn nhất ở mẫu iPad Pro 10.5 inch Wifi 64GB (2017) so với các thế hệ iPad cũ chính là phần viền màn hình của máy giờ đây đã được làm mỏng hơn rất nhiều so với các đàn anh đi trước.', 2, 4, 16990000),
(21, 'Oppo Neo 5 16Gb', 'oppo-neo-5-16gb.png', 'OPPO NEO 5 16GB chính là bản nâng cấp về bộ nhớ trong cho bạn có thêm nhiều sự lựa chọn.\r\nThiết kế 2 mặt gương của Neo 5 bản 16GB\r\nKhung máy được làm từ cấu trúc 2 lớp kim loại giúp máy cứng cáp hơn, OPPO NEO 5 16GB với thiết kế 2 mặt kính cho cảm giác sang trọng hơn', 5, 1, 7300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Cellphone', 'type_smartphone.png'),
(3, 'Laptop', 'type_laptop.png'),
(4, 'Speaker', 'Speaker.jpeg'),
(2, 'Tablet', 'Tablet.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
