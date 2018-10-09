-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th9 26, 2018 lúc 09:45 AM
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
-- Cơ sở dữ liệu: `vuonghi`
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'SamSung', 'logoss.png'),
(2, 'Apple', 'logoapple.png'),
(3, 'Laptop Dell', 'logodell.png'),
(4, 'Laptop HP', 'logoHP.png');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mobile`
--

INSERT INTO `mobile` (`ID`, `name`, `image`, `description`, `manu_ID`, `type_ID`, `price`) VALUES
(1, 'SamSung galaxy note9', 'note9.png', 'Mang lại sự cải tiến đặc biệt trong cây bút S-Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.', 1, 1, 6000000),
(2, 'SamSung galaxy j7', 'galaxyj7.png', 'Galaxy J7 Prime xứng đáng là cái tên hàng đầu trong danh sách chọn smartphone phổ thông của giới trẻ khi nhận được nhiều đánh giá tích cực về thiết kế, thời lượng pin lâu dài và camera chụp hình chất lượng tốt.', 1, 1, 500000),
(3, 'Apple iphone 5c', 'iphone5c.png', 'iPhone 5C được làm từ vật liệu polycarbonat chống trầy, bộ vỏ được gia công từ một khối nhựa duy nhất, tương tự iPhone 5S làm từ 1 khối nhôm duy nhất. Vì vậy, bạn sẽ khó có thể tìm ra bất kỳ khớp nối nào trên máy. Bên dưới bộ vỏ là một lớp kim loại nhằm mục đích giúp máy cứng cáp hơn và kiêm luôn chức năng của 1 chiếc anten thu phát sóng.', 2, 1, 1000000),
(4, 'Apple iphone 6s plus', '6splus.png', 'Điện thoại iPhone 6s Plus 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.\r\n\r\n', 2, 1, 1500000),
(5, 'Laptop Dell Inspiron 7570', 'dellinspiron7570.png', 'Laptop Dell Inspiron 7570 (782P82) sở hữu thiết kế sang trọng tinh tế với các cạnh viền với nét cắt kim cương và bo tròn làm cho tổng thể máy càng trở nên đẳng cấp hơn. Máy được trang bị cấu hình mạnh mẽ cho hiệu năng mượt mà với chip Intel Core i7 Kabylake Refresh, Card đồ họa NVIDIA Geforce MX130, 4GB, kết hợp với bộ nhớ gồm ổ cứng HDD: 1 TB + SSD: 128GB cho tốc độ khởi động máy, các ứng dụng, tốc độ phản hồi các tác vụ chuyên về xử lý đồ họa - kĩ thuật được nhanh chóng, cũng như thỏa sức chiến các tựa game có yêu cầu cấu hình cao.\r\n', 3, 2, 300000),
(6, 'Laptop Dell Vostro 3578', 'dellvostro3578.png', 'Laptop Dell Vostro 3578 là dòng máy tính xách tay mới của Dell trong năm 2018 với cấu hình cực cao bao gồm vi xử lý i7 8550U thế hệ thứ 8 có hiệu năng vượt trội, card màn hình rời Radeon 520 và 8 GB RAM. Với cấu hình mạnh mẽ máy có thể chạy tốt các ứng dụng phục vụ cho công việc, học tập, xử lý đồ hoạ cũng như chơi game ở mức cấu hình tầm trung khá mượt mà.\r\n', 3, 2, 2500000),
(7, 'Laptop HP Pavilion', 'hppavilion.png', 'HP Pavilion x360 ba080TU là chiếc laptop xuất thân từ dòng sản phẩm Pavillion đến từ thương hiệu nổi tiếng HP. Với thiết kế vô cùng gọn nhẹ và cấu hình khá tốt, đáp ứng tốt cho người dùng có nhu cầu mang theo máy tính để học tập, làm việc.\r\n', 4, 2, 3500000),
(8, 'Laptop HP Envy', 'hpenvy.png', 'Hp Envy là một trong những dòng sản phẩm vô cùng nổi tiếng từ HP với ngoại hình cao cấp, cấu hình mạnh và thiết kế mỏng nhẹ truyền thống. HP Envy 13 ah0027TU i7 8550U là một trong những sản phẩm cao cấp như vậy của dòng Envy nổi tiếng. Một chiếc laptop có cấu hình cao và ngoại hình rất đẹp.\r\n', 4, 2, 2000000),
(9, 'Apple iphone X', 'iphonex.png', 'iPhone X được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp.\r\n', 2, 1, 40000000),
(10, 'Laptop Dell Inspiron 7373', 'dellinspiron7373.png', 'Dell Inspiron 7373 i5 8250U là mẫu laptop có thiết kế mỏng nhẹ và sang trọng với chất liệu nhôm nguyên khối thuộc phân khúc laptop phù hợp với doanh nhân, máy được trang bị cấu hình khá mạnh cho các nhu cầu làm việc, giải trí.\r\n', 3, 2, 50000000);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'smartphone', 'type_smartphone.png'),
(2, 'laptop', 'type_laptop.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
