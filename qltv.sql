-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 07, 2019 at 03:07 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qltv`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `authorname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên tác giả',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `authorname`, `created_at`, `updated_at`) VALUES
(1, 'Duy Tân', NULL, NULL),
(2, 'Chrities', NULL, NULL),
(3, 'Bách Khoa', NULL, NULL),
(4, 'Mosquite', NULL, NULL),
(5, 'Nguyễn Văn A', NULL, NULL),
(6, 'ABC', NULL, NULL),
(7, 'Nguy?n Công Chính', '2019-10-07 09:29:45', '2019-10-07 09:29:45'),
(8, 'Phạm Huy Hoàng', NULL, NULL),
(9, 'Stiteg Larsson', NULL, NULL),
(10, 'Robert', NULL, NULL),
(11, 'Nguyệt Tri', NULL, NULL),
(12, 'Nguyễn Văn Tuấn', NULL, NULL),
(13, 'David', NULL, NULL),
(14, 'Nguyễn Hiễn Lê', NULL, NULL),
(15, 'Trần Đan Thư', NULL, NULL),
(16, 'Toan Ánh', NULL, NULL),
(17, 'BHT', NULL, NULL),
(18, 'Nguyễn Văn D', NULL, NULL),
(19, 'Dagobert', NULL, NULL),
(20, 'Kelly', NULL, NULL),
(21, 'Dan Brown', NULL, NULL),
(22, 'Kim Định', NULL, NULL),
(23, 'Nguyễn Tôn Nhạn', NULL, NULL),
(24, 'Nhiều Tác Giả', NULL, NULL),
(25, 'Peter Ressi', NULL, NULL),
(26, 'Conan Doyle', NULL, NULL),
(27, 'Thomas Hasson', NULL, NULL),
(28, 'Gustave', NULL, NULL),
(29, 'Alon Gratch', NULL, NULL),
(30, 'Trần Văn D', NULL, NULL),
(31, 'Raymond Wacks', NULL, NULL),
(32, 'Bộ Giáo Dục', NULL, NULL),
(33, 'Hoành Sơn', NULL, NULL),
(34, 'Thu Giang', NULL, NULL),
(35, 'Cố Mạn', NULL, NULL),
(36, 'Tokien', NULL, NULL),
(37, 'Madalena', NULL, NULL),
(38, 'Dương Kỳ Anh', NULL, NULL),
(39, 'Nguyễn Ngoc Tứ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `id_author` int(11) NOT NULL COMMENT 'id của tác giả',
  `id_publisher` int(11) NOT NULL COMMENT 'id của nhà xuất bản',
  `bookname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên sách',
  `publish_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'năm xuất bản',
  `description` text COLLATE utf8_unicode_ci COMMENT 'mô tả',
  `page_number` int(11) DEFAULT '0' COMMENT 'số trang',
  `status` tinyint(4) DEFAULT '0' COMMENT 'trạng thái của sách (0 : là chưa có người mượn, 1: có người mượn)',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `id_author`, `id_publisher`, `bookname`, `publish_year`, `description`, `page_number`, `status`, `created_at`, `updated_at`, `image`, `type`, `number`) VALUES
(1, 1, 1, '1001 Bí ?n', NULL, NULL, 0, 0, '2019-10-07 07:54:10', '2019-10-07 07:54:10', 'images/1001bian.jpg', 'Khoa H?c - K? Thu?t', 3),
(2, 2, 2, 'Án Mạng Trên Sông Nile', NULL, NULL, 0, 0, '2019-10-06 18:05:12', '2019-10-06 18:05:12', 'images/anmangtrensongnile.jpg', 'Trinh Thám - Hình Sự', 5),
(3, 3, 3, 'Bách Khoa Thư', NULL, NULL, 0, 0, NULL, NULL, '/images/bachkhoathu.jpg', 'Khoa Học - Kỹ Thuật', 2),
(4, 4, 4, 'Bàn Về Tinh Thần Pháp Luật', NULL, NULL, 0, 0, NULL, NULL, '/images/banvetinhthanpl.jpg', 'Lịch Sử - Chính Trị', 6),
(5, 5, 2, 'Bước Chân Theo Dấu Mặt Trời', NULL, NULL, 0, 0, NULL, NULL, '/images/buoctheodaumattroi.jpg', 'Văn Hóa - Tôn Giáo', 9),
(6, 6, 5, 'Chuyến Bay Cuộc Đời', NULL, NULL, 0, 0, NULL, NULL, '/images/chuyenbaycuocdoi.jpg', 'Tâm Lý - Kỹ Năng Sống', 3),
(7, 7, 3, 'Chuyên Ngành Cơ Khí', NULL, NULL, 0, 0, NULL, NULL, '/images/chuyennganhcokhi.jpg', 'Khoa Học - Kỹ Thuật', 7),
(8, 8, 6, 'Code Dạo Ký Sự', NULL, NULL, 0, 0, NULL, NULL, '/images/codedaokisu.jpg', 'Khoa Học - Kỹ Thuật', 10),
(9, 9, 4, 'Cô Gái Có Hình Xăm Rồng', NULL, NULL, 0, 0, NULL, NULL, '/images/cogaicohinhxamrong.jpg', 'Trinh Thám - Hình Sự', 11),
(10, 10, 2, 'Con Tằm', NULL, NULL, 0, 0, NULL, NULL, '/images/contam.jpg', 'Trinh Thám - Hình Sự', 12),
(11, 11, 3, 'Điệp Viên Kỳ Quái', NULL, NULL, 0, 0, NULL, NULL, '/images/diepvienkiquai.jpg', 'Trinh Thám - Hình Sự', 5),
(12, 12, 7, 'Đi Vào Nghiên Cứu Khoa Học', NULL, NULL, 0, 0, NULL, NULL, '/images/divaonghiencuukh.jpg', 'Khoa Học - Kỹ Thuật', 7),
(13, 13, 2, 'Đọc Vị Bất Kì Ai', NULL, NULL, 0, 0, NULL, NULL, '/images/docvibatkiai.jpg', 'Tâm Lý - Kỹ Năng Sống', 9),
(14, 14, 8, 'Đông Kinh Nghĩa Thục', NULL, NULL, 0, 0, NULL, NULL, '/images/dongkinhnghiathuc.jpg', 'Văn Hóa - Tôn Giáo', 2),
(15, 15, 9, 'Kỹ Thuật Lập Trình', NULL, NULL, 0, 0, NULL, NULL, '/images/kythuatlaptrinh.jpg', 'Khoa Học - Kỹ Thuật', 3),
(16, 16, 8, 'Làng Xóm Việt Nam', NULL, NULL, 0, 0, NULL, NULL, '/images/langxomvn.jpg', 'Văn Hóa - Tôn Giáo', 4),
(17, 17, 10, 'Giáo Trình Lịch Sử Đảng Cộng Sản Việt Nam', NULL, NULL, 0, 0, NULL, NULL, '/images/lichsudang,jpg', 'Lịch Sử - Chính Trị', 5),
(18, 18, 2, 'Lịch Sử Quân Sự', NULL, NULL, 0, 0, NULL, NULL, '/images/líchuquansu.jpg', 'Lịch Sử - Chính Trị', 6),
(19, 19, 8, 'Lịch Sử Triết Học', NULL, NULL, 0, 0, NULL, NULL, '/images/lichsutriethoc.jpg', 'Lịch Sử - Chính Trị', 7),
(20, 20, 2, 'Lửa Hận', NULL, NULL, 0, 0, NULL, NULL, '/images/luahan.jpg', 'Trinh Thám - Hình Sự', 8),
(21, 21, 8, 'Mật Mã Davici', NULL, NULL, 0, 0, NULL, NULL, '/images/matmadavici.jpg', 'Trinh Thám - Hình Sự', 9),
(22, 22, 8, 'Nguồn Gốc Văn Hóa Việt Nam', NULL, NULL, 0, 0, NULL, NULL, '/images/nguongocvanhoavn.jpg', 'Văn Hóa - Tôn Giáo', 10),
(23, 23, 8, 'Nho Giáo Trung Quốc', NULL, NULL, 0, 0, NULL, NULL, '/images/nhogiaotq.jpg', 'Văn Hóa - Tôn Giáo', 11),
(24, 24, 7, 'Phật Giáo Hòa Hảo', NULL, NULL, 0, 0, NULL, NULL, '/images/phatgiaohoahao.jpg', 'Văn Hóa - Tôn Giáo', 12),
(25, 25, 11, 'Chính Trị Thế Giới Sau Năm 1945', NULL, NULL, 0, 0, NULL, NULL, '/images/sach-chinh-tri-the-gioi-sau-nam-1945.jpg', 'Lịch Sử - Chính Trị', 12),
(26, 26, 2, 'SherlockHomes', NULL, NULL, 0, 0, NULL, NULL, '/images/Sherlockhome.jpg', 'Trinh Thám - Hình Sự', 13),
(27, 27, 2, 'Sự Im Lặng Của Bầy Cừu', NULL, NULL, 0, 0, NULL, NULL, '/images/suimlangcuabaycuu.jpg', 'Trinh Thám - Hình Sự', 14),
(28, 28, 2, 'Tâm Lý Học Đám Đông', NULL, NULL, 0, 0, NULL, NULL, '/images/tamlyhocdamdong.jpg', 'Tâm Lý - Kỹ Năng Sống', 15),
(29, 29, 2, 'Tâm Thức Isreal', NULL, NULL, 0, 0, NULL, NULL, '/images/tamthucistreal.jpg', 'Tâm Lý - Kỹ Năng Sống', 16),
(30, 30, 8, 'Triết Học Kì Thú', NULL, NULL, 0, 0, NULL, NULL, '/images/thkithu.jpg', 'Triết Học', 2),
(31, 31, 12, 'Triết Học Luật Pháp', NULL, NULL, 0, 0, NULL, NULL, '/images/thluatphap.jpg', 'Triết Học', 3),
(32, 32, 10, 'Giáo Trình Triết Học Mác Lê-nin', NULL, NULL, 0, 0, NULL, NULL, '/images/thmac.jpg', 'Triết Học', 4),
(33, 33, 3, 'Triết Sử Ấn Độ', NULL, NULL, 0, 0, NULL, NULL, 'images/thando.jpg', 'Triết Học', 5),
(34, 34, 2, 'Tôi Tự Học', NULL, NULL, 0, 0, NULL, NULL, '/images/toituhoc.jpg', 'Tâm Lý - Kỹ Năng Sống', 4),
(35, 35, 2, 'Bên Nhau Trọn Đời', NULL, NULL, 0, 0, NULL, NULL, '/images/ttbennhautrondoi.jpg', 'Tiểu Thuyết', 4),
(36, 36, 2, 'Chúa Tể Những Chiếc Nhẫn', NULL, NULL, 0, 0, NULL, NULL, '/images/ttchuatenhungchiecnhan.jpg', 'Tiểu Thuyết', 3),
(37, 37, 2, 'Lâu Đài Cát', NULL, NULL, 0, 0, NULL, NULL, '/images/ttlaudaicat.jpg', 'Tiểu Thuyết', 2),
(38, 38, 13, 'Miền Trần Gian', NULL, NULL, 0, 0, NULL, NULL, '/images/ttmientrangian.jpg', 'Tiểu Thuyết', 1),
(39, 39, 2, 'Sông', NULL, NULL, 0, 0, NULL, NULL, '/images/ttsong.jpg', 'Tiểu Thuyết', 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_user`
--

DROP TABLE IF EXISTS `book_user`;
CREATE TABLE IF NOT EXISTS `book_user` (
  `id_book` int(11) NOT NULL COMMENT 'id sách',
  `id_user` int(11) NOT NULL COMMENT 'id user',
  `rent_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày mượn',
  `return_date` datetime DEFAULT NULL COMMENT 'ngày trả',
  PRIMARY KEY (`id_book`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardbook`
--

DROP TABLE IF EXISTS `cardbook`;
CREATE TABLE IF NOT EXISTS `cardbook` (
  `MaTheMuon` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBanDoc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayMuon` date NOT NULL,
  `SoNgayDuocMuon` int(11) NOT NULL,
  `NgayTraDuKien` int(11) NOT NULL,
  `NgayTraThucTe` int(11) NOT NULL,
  `SoNgayMuonTiep` int(11) NOT NULL,
  `TinhTrang` int(11) NOT NULL,
  PRIMARY KEY (`MaTheMuon`,`MaBanDoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `publishername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên nhà xuất bản',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `publishername`, `created_at`, `updated_at`) VALUES
(1, ' H?i Phòng', '2019-10-07 10:03:38', '2019-10-07 10:03:38'),
(2, 'NXB Trẻ', NULL, NULL),
(3, 'NXB Kim Đồng', NULL, NULL),
(4, 'NXB Chính Trị - Hành Chính', NULL, NULL),
(5, 'NXB Phụ Nữ', NULL, NULL),
(6, 'NXB Đồng Nai', NULL, NULL),
(7, 'NXB Tổng Hợp TPHCM', NULL, NULL),
(8, 'NXB Văn Hóa Thông Tin', NULL, NULL),
(9, 'NXB Khoa Học Kỹ Thuật', NULL, NULL),
(10, 'NXB Chính Trị Quốc Gia', NULL, NULL),
(11, 'NXB Lao Động', NULL, NULL),
(12, 'NXB Tri Thức', NULL, NULL),
(13, 'NXB Hội Nhà Văn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email',
  `phone` int(11) DEFAULT NULL COMMENT 'sdt',
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'họ',
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên',
  `role` tinyint(4) DEFAULT '0' COMMENT 'quyền(0 : đọc giả, 1 : GV_CB, 2: thủ thư(admin) )',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  `account` int(8) NOT NULL COMMENT 'tài khoản dùng để xác thực danh tính vd sv thì là tk sinh viên',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
