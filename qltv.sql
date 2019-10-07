-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 06, 2019 at 05:30 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(7, 'BCD', NULL, NULL),
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `id_author`, `id_publisher`, `bookname`, `publish_year`, `description`, `page_number`, `status`, `created_at`, `updated_at`, `image`, `type`, `number`) VALUES
(1, 1, 1, '1001 Bí Ẩn', NULL, NULL, 0, 0, '2019-10-06 18:04:56', '2019-10-06 18:04:56', 'images/1001bian.jpg', 'Khoa Học - Kỹ Thuật', 3),
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
-- Table structure for table `cb_gv`
--

DROP TABLE IF EXISTS `cb_gv`;
CREATE TABLE IF NOT EXISTS `cb_gv` (
  `MaBanDoc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTen` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhongBan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChucVu` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaBanDoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `publisher_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên nhà xuất bản',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `publisher_name`, `created_at`, `updated_at`) VALUES
(1, 'NXB Hải Phòng', NULL, NULL),
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
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `MaSach` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenSach` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TacGia` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NXB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TheLoaiSach` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaSach`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`MaSach`, `TenSach`, `TacGia`, `NXB`, `TheLoaiSach`, `Hinh`) VALUES
('MS01', '1001 Bí Ẩn', 'Duy Tân', 'NXB Hải Phòng', 'Khoa Học - Kỹ Thuật', '/images/1001bian.jpg'),
('MS02', 'Án Mạng Trên Sông Nile', 'Christie', 'NXB Trẻ', 'Trinh Thám - Hình Sự', '/images/anmangtrensongnile.jpg'),
('MS03', 'Bách Khoa Thư', 'Bách Khoa', 'NXB Kim Đồng', 'Khoa Học - Kỹ Thuật', '/images/bachkhoathu.jpg'),
('MS04', 'Bàn Về Tinh Thần Pháp Luật', 'Mosquite', 'NXB Chính Trị - Hành Chính', 'Lịch Sử - Chính Trị', '/images/banvetinhthanpl.jpg'),
('MS05', 'Bước Chân Theo Dấu Mặt Trời', 'Nguyễn Văn A', 'NXB Trẻ', 'Văn Hóa - Tôn Giáo', '/images/buoctheodaumattroi.jpg'),
('MS06', 'Chuyến Bay Cuộc Đời', 'ABC', 'NXB Phụ Nữ', 'Tâm Lý - Kỹ Năng Sống', '/images/chuyenbaycuocdoi.jpg'),
('MS07', 'Chuyên Ngành Cơ Khí', 'BCD', 'NXB Kim Đồng', 'Khoa Học - Kỹ Thuật', '/images/chuyennganhcokhi.jpg'),
('MS08', 'Code Dạo Ký Sự', 'Phạm Huy Hoàng', 'NXB Đồng Nai', 'Khoa Học - Kỹ Thuật', '/images/codedaokisu.jpg'),
('MS09', 'Cô Gái Có Hình Xăm Rồng', 'Stiteg Larsson', 'NXB Phụ Nữ', 'Trinh Thám - Hình Sự', '/images/cogaicohinhxamrong.jpg'),
('MS10', 'Con Tằm', 'Robert', 'NXB Trẻ', 'Trinh Thám - Hình Sự', '/images/contam.jpg'),
('MS11', 'Điệp Viên Kỳ Quái', 'Nguyệt Tri', 'NXB Kim Đồng', 'Trinh Thám - Hình Sự', 'images/diepvienkiquai.jpg'),
('MS12', 'Đi Vào Nghiên Cứu Khoa Học', 'Nguyễn Văn Tuấn', 'NXB Tổng Hợp TPHCM', 'Khoa Học - Kỹ Thuật', 'images/divaonghiencuukh.jpg'),
('MS13', 'Đọc Vị Bất Kì Ai', 'David', 'NXB Trẻ', 'Tâm Lý - Kỹ Năng Sống', 'images/docvibatkiai.jpg'),
('MS14', 'Đông Kinh Nghĩa Thục', 'Nguyễn Hiễn Lê', 'NXB Văn Hóa Thông Tin', 'Văn Hóa - Tôn Giáo', 'images/dongkinhnghiathuc.jpg'),
('MS15', 'Kỹ Thuật Lập Trình', 'Trần Đan Thư', 'NXB Khoa Học Kỹ Thuật', 'Khoa Học - Kỹ Thuật', 'images/kythuatlaptrinh.jpg'),
('MS16', 'Làng Xóm Việt Nam', 'Toan Ánh', 'NXB Văn Hóa Thông Tin', 'Văn Hóa - Tôn Giáo', 'images/langxomvn.jpg'),
('MS17', 'Giáo Trình Lịch Sử Đảng Cộng Sản Việt Nam', 'BHT', 'NXB Chính Trị Quốc Gia', 'Lịch Sử - Chính Trị', 'images/lichsudang,jpg'),
('MS18', 'Lịch Sử Quân Sự', 'Nguyễn Văn D', 'NXB Trẻ', 'Lịch Sử - Chính Trị', 'images/líchuquansu.jpg'),
('MS19', 'Lịch Sử Triết Học', 'Dagobert', 'NXB Văn Hóa Thông Tin', 'Lịch Sử - Chính Trị', 'images/lichsutriethoc.jpg'),
('MS20', 'Lịch Sử Kháng Chiến Chống Mỹ Cứu Nước', 'Bộ Quốc Phòng', 'NXB Chính Trị Quốc Gia', 'Lịch Sử - Chính Trị', 'images/lskhangchienchongmy.jpg'),
('MS21', 'Lửa Hận', 'Kelly', 'NXB Trẻ', 'Trinh Thám - Hình Sự', 'images/luahan.jpg'),
('MS22', 'Mật Mã Davici', 'Dan Brown', 'NXB Văn Hóa Thông Tin', 'Trinh Thám - Hình Sự', 'images/matmadavici.jpg'),
('MS23', 'Nguồn Gốc Văn Hóa Việt Nam', 'Kim Định', 'NXB Văn Hóa Thông Tin', 'Văn Hóa - Tôn Giáo', 'images/nguongocvanhoavn.jpg'),
('MS24', 'Nho Giáo Trung Quốc', 'Nguyễn Tôn Nhạn', 'NXB Văn Hóa Thông Tin', 'Văn Hóa - Tôn Giáo', 'images/nhogiaotq.jpg'),
('MS25', 'Phật Giáo Hòa Hảo', 'Nhiều Tác Giả', 'NXB Tổng Hợp TPHCm', 'Văn Hóa - Tôn Giáo', 'images/phatgiaohoahao.jpg'),
('MS26', 'Chính Trị Thế Giới Sau Năm 1945', 'Peter Ressi', 'NXB Lao Động', 'Lịch Sử - Chính Trị', 'images/sach-chinh-tri-the-gioi-sau-nam-1945.jpg'),
('MS27', 'SherlockHomes', 'Conan Doyle', 'NXB Trẻ', 'Trinh Thám - Hình Sự', 'images/Sherlockhome.jpg'),
('MS28', 'Sự Im Lặng Của Bầy Cừu', 'Thomas Hasson', 'NXB Trẻ', 'Trinh Thám - Hình Sự', 'images/suimlangcuabaycuu.jpg'),
('MS29', 'Tâm Lý Học Đám Đông', 'Gustave', 'NXB Trẻ', 'Tâm Lý - Kỹ Năng Sống', 'images/tamlyhocdamdong.jpg'),
('MS30', 'Tâm Thức Isreal', 'Alon Gratch', 'NXB Trẻ', 'Tâm Lý - Kỹ Năng Sống', 'images/tamthucistreal.jpg'),
('MS31', 'Triết Học Kì Thú', 'Trần Văn D', 'NXB Văn Hóa Thông Tin', 'Triết Học', 'images/thkithu.jpg'),
('MS32', 'Triết Học Luật Pháp', 'Raymond Wacks ', 'NXB Tri Thức', 'Triết Học', 'images/thluatphap.jpg'),
('MS33', 'Giáo Trình Triết Học Mác Lê-nin', 'Bộ Giáo Dục ', 'NXB Chính Trị Quốc Gia', 'Triết Học', 'images/thmac.jpg'),
('MS34', 'Triết Sử Ấn Độ', 'Hoành Sơn', 'NXB Kim Đồng', 'Triết Học', 'images/thando.jpg'),
('MS35', 'Tôi Tự Học', 'Thu Giang', 'NXB Trẻ', 'Tâm Lý - Kỹ Năng Sống', 'images/toituhoc.jpg'),
('MS36', 'Bên Nhau Trọn Đời', 'Cố Mạn', 'NXB Trẻ', 'Tiểu Thuyết', 'images/ttbennhautrondoi.jpg'),
('MS37', 'Chúa Tể Những Chiếc Nhẫn', 'Tokien', 'NXB Trẻ', 'Tiểu Thuyết', 'images/ttchuatenhungchiecnhan.jpg'),
('MS38', 'Lâu Đài Cát', 'Madalena', 'NXB Trẻ', 'Tiểu Thuyết', 'images/ttlaudaicat.jpg'),
('MS39', 'Miền Trần Gian', 'Dương Kỳ Anh', 'NXB Hội Nhà Văn', 'Tiểu Thuyết', 'images/ttmientrangian.jpg'),
('MS40', 'Sông', 'Nguyễn Ngoc Tứ', 'NXB Trẻ', 'Tiểu Thuyết', 'images/ttsong.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
CREATE TABLE IF NOT EXISTS `sinhvien` (
  `MaBanDoc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTen` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaKhoa` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lop` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `Username` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaBanDoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`MaBanDoc`, `HoTen`, `GioiTinh`, `DiaChi`, `MaKhoa`, `Lop`, `NgaySinh`, `Username`, `Password`) VALUES
('SV01', 'Nguyễn Văn A', 'Nam', 'Thành Tây', 'CNTT', 'C', '1997-10-02', 'NVA', 'NVA');

-- --------------------------------------------------------

--
-- Table structure for table `themuonsach`
--

DROP TABLE IF EXISTS `themuonsach`;
CREATE TABLE IF NOT EXISTS `themuonsach` (
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
-- Table structure for table `thuthu`
--

DROP TABLE IF EXISTS `thuthu`;
CREATE TABLE IF NOT EXISTS `thuthu` (
  `MaThuThu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTen` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` int(30) NOT NULL,
  PRIMARY KEY (`MaThuThu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Username` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email',
  `password` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'mật khẩu',
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'họ',
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên',
  `role` tinyint(4) DEFAULT '0' COMMENT 'quyền(0 : đọc giả, 1 : GV_CB, 2: thủ thư(admin) )',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
