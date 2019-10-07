/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL host
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : qltv

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 08/10/2019 01:10:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `authorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên tác giả',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of author
-- ----------------------------
BEGIN;
INSERT INTO `author` VALUES (1, 'Duy Tân', NULL, NULL);
INSERT INTO `author` VALUES (2, 'Chrities', NULL, NULL);
INSERT INTO `author` VALUES (3, 'Bách Khoa', NULL, NULL);
INSERT INTO `author` VALUES (4, 'Mosquite', NULL, NULL);
INSERT INTO `author` VALUES (5, 'Nguyễn Văn A', NULL, NULL);
INSERT INTO `author` VALUES (6, 'ABC', NULL, NULL);
INSERT INTO `author` VALUES (7, 'Nguy?n Công Chính', '2019-10-07 09:29:45', '2019-10-07 09:29:45');
INSERT INTO `author` VALUES (8, 'Phạm Huy Hoàng', NULL, NULL);
INSERT INTO `author` VALUES (9, 'Stiteg Larsson', NULL, NULL);
INSERT INTO `author` VALUES (10, 'Robert', NULL, NULL);
INSERT INTO `author` VALUES (11, 'Nguyệt Tri', NULL, NULL);
INSERT INTO `author` VALUES (12, 'Nguyễn Văn Tuấn', NULL, NULL);
INSERT INTO `author` VALUES (13, 'David', NULL, NULL);
INSERT INTO `author` VALUES (14, 'Nguyễn Hiễn Lê', NULL, NULL);
INSERT INTO `author` VALUES (15, 'Trần Đan Thư', NULL, NULL);
INSERT INTO `author` VALUES (16, 'Toan Ánh', NULL, NULL);
INSERT INTO `author` VALUES (17, 'BHT', NULL, NULL);
INSERT INTO `author` VALUES (18, 'Nguyễn Văn D', NULL, NULL);
INSERT INTO `author` VALUES (19, 'Dagobert', NULL, NULL);
INSERT INTO `author` VALUES (20, 'Kelly', NULL, NULL);
INSERT INTO `author` VALUES (21, 'Dan Brown', NULL, NULL);
INSERT INTO `author` VALUES (22, 'Kim Định', NULL, NULL);
INSERT INTO `author` VALUES (23, 'Nguyễn Tôn Nhạn', NULL, NULL);
INSERT INTO `author` VALUES (24, 'Nhiều Tác Giả', NULL, NULL);
INSERT INTO `author` VALUES (25, 'Peter Ressi', NULL, NULL);
INSERT INTO `author` VALUES (26, 'Conan Doyle', NULL, NULL);
INSERT INTO `author` VALUES (27, 'Thomas Hasson', NULL, NULL);
INSERT INTO `author` VALUES (28, 'Gustave', NULL, NULL);
INSERT INTO `author` VALUES (29, 'Alon Gratch', NULL, NULL);
INSERT INTO `author` VALUES (30, 'Trần Văn D', NULL, NULL);
INSERT INTO `author` VALUES (31, 'Raymond Wacks', NULL, NULL);
INSERT INTO `author` VALUES (32, 'Bộ Giáo Dục', NULL, NULL);
INSERT INTO `author` VALUES (33, 'Hoành Sơn', NULL, NULL);
INSERT INTO `author` VALUES (34, 'Thu Giang', NULL, NULL);
INSERT INTO `author` VALUES (35, 'Cố Mạn', NULL, NULL);
INSERT INTO `author` VALUES (36, 'Tokien', NULL, NULL);
INSERT INTO `author` VALUES (37, 'Madalena', NULL, NULL);
INSERT INTO `author` VALUES (38, 'Dương Kỳ Anh', NULL, NULL);
INSERT INTO `author` VALUES (39, 'Nguyễn Ngoc Tứ', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for book_user
-- ----------------------------
DROP TABLE IF EXISTS `book_user`;
CREATE TABLE `book_user` (
  `id_book` int(11) NOT NULL COMMENT 'id sách',
  `id_user` int(11) NOT NULL COMMENT 'id user',
  `rent_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày mượn',
  `return_date` datetime DEFAULT NULL COMMENT 'ngày trả',
  PRIMARY KEY (`id_book`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `id_author` int(11) NOT NULL COMMENT 'id của tác giả',
  `id_publisher` int(11) NOT NULL COMMENT 'id của nhà xuất bản',
  `bookname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên sách',
  `publish_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'năm xuất bản',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'mô tả',
  `page_number` int(11) DEFAULT '0' COMMENT 'số trang',
  `status` tinyint(4) DEFAULT '0' COMMENT 'trạng thái của sách (0 : là chưa có người mượn, 1: có người mượn)',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  `image` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of books
-- ----------------------------
BEGIN;
INSERT INTO `books` VALUES (2, 2, 2, 'Án Mạng Trên Sông Nile', NULL, NULL, 0, 0, '2019-10-06 18:05:12', '2019-10-06 18:05:12', 'images/anmangtrensongnile.jpg', 'Trinh Thám - Hình Sự', 5);
INSERT INTO `books` VALUES (3, 3, 3, 'Bách Khoa Thư', NULL, NULL, 0, 0, '2019-10-08 00:37:18', '2019-10-08 00:37:18', 'images/bachkhoathu.jpg', 'Khoa Học - Kỹ Thuật', 2);
INSERT INTO `books` VALUES (4, 4, 4, 'Bàn Về Tinh Thần Pháp Luật', NULL, NULL, 0, 0, '2019-10-08 00:37:22', '2019-10-08 00:37:22', 'images/banvetinhthanpl.jpg', 'Lịch Sử - Chính Trị', 6);
INSERT INTO `books` VALUES (5, 5, 2, 'Bước Chân Theo Dấu Mặt Trời', NULL, NULL, 0, 0, '2019-10-08 00:37:26', '2019-10-08 00:37:26', 'images/buoctheodaumattroi.jpg', 'Văn Hóa - Tôn Giáo', 9);
INSERT INTO `books` VALUES (6, 6, 5, 'Chuyến Bay Cuộc Đời', NULL, NULL, 0, 0, '2019-10-08 00:37:30', '2019-10-08 00:37:30', 'images/chuyenbaycuocdoi.jpg', 'Tâm Lý - Kỹ Năng Sống', 3);
INSERT INTO `books` VALUES (7, 7, 3, 'Chuyên Ngành Cơ Khí', NULL, NULL, 0, 0, '2019-10-08 00:37:33', '2019-10-08 00:37:33', 'images/chuyennganhcokhi.jpg', 'Khoa Học - Kỹ Thuật', 7);
INSERT INTO `books` VALUES (8, 8, 6, 'Code Dạo Ký Sự', NULL, NULL, 0, 0, '2019-10-08 00:37:35', '2019-10-08 00:37:35', 'images/codedaokisu.jpg', 'Khoa Học - Kỹ Thuật', 10);
INSERT INTO `books` VALUES (9, 9, 4, 'Cô Gái Có Hình Xăm Rồng', NULL, NULL, 0, 0, '2019-10-08 00:37:37', '2019-10-08 00:37:37', 'images/cogaicohinhxamrong.jpg', 'Trinh Thám - Hình Sự', 11);
INSERT INTO `books` VALUES (10, 10, 2, 'Con Tằm', NULL, NULL, 0, 0, '2019-10-08 00:37:38', '2019-10-08 00:37:38', 'images/contam.jpg', 'Trinh Thám - Hình Sự', 12);
INSERT INTO `books` VALUES (11, 11, 3, 'Điệp Viên Kỳ Quái', NULL, NULL, 0, 0, '2019-10-08 00:37:40', '2019-10-08 00:37:40', 'images/diepvienkiquai.jpg', 'Trinh Thám - Hình Sự', 5);
INSERT INTO `books` VALUES (12, 12, 7, 'Đi Vào Nghiên Cứu Khoa Học', NULL, NULL, 0, 0, '2019-10-08 00:37:43', '2019-10-08 00:37:43', 'images/divaonghiencuukh.jpg', 'Khoa Học - Kỹ Thuật', 7);
INSERT INTO `books` VALUES (13, 13, 2, 'Đọc Vị Bất Kì Ai', NULL, NULL, 0, 0, '2019-10-08 00:37:50', '2019-10-08 00:37:50', 'images/docvibatkiai.jpg', 'Tâm Lý - Kỹ Năng Sống', 9);
INSERT INTO `books` VALUES (14, 14, 8, 'Đông Kinh Nghĩa Thục', NULL, NULL, 0, 0, '2019-10-08 00:37:55', '2019-10-08 00:37:55', 'images/dongkinhnghiathuc.jpg', 'Văn Hóa - Tôn Giáo', 2);
INSERT INTO `books` VALUES (15, 15, 9, 'Kỹ Thuật Lập Trình', NULL, NULL, 0, 0, '2019-10-08 00:37:58', '2019-10-08 00:37:58', 'images/kythuatlaptrinh.jpg', 'Khoa Học - Kỹ Thuật', 3);
INSERT INTO `books` VALUES (16, 16, 8, 'Làng Xóm Việt Nam', NULL, NULL, 0, 0, '2019-10-08 00:38:00', '2019-10-08 00:38:00', 'images/langxomvn.jpg', 'Văn Hóa - Tôn Giáo', 4);
INSERT INTO `books` VALUES (17, 17, 10, 'Giáo Trình Lịch Sử Đảng Cộng Sản Việt Nam', NULL, NULL, 0, 0, '2019-10-08 00:54:46', '2019-10-08 00:54:46', 'images/lichsudang.jpg', 'Lịch Sử - Chính Trị', 5);
INSERT INTO `books` VALUES (18, 18, 2, 'Lịch Sử Quân Sự', NULL, NULL, 0, 0, '2019-10-08 00:54:43', '2019-10-08 00:54:43', 'images/lichuquansu.jpg', 'Lịch Sử - Chính Trị', 6);
INSERT INTO `books` VALUES (19, 19, 8, 'Lịch Sử Triết Học', NULL, NULL, 0, 0, '2019-10-08 00:38:06', '2019-10-08 00:38:06', 'images/lichsutriethoc.jpg', 'Lịch Sử - Chính Trị', 7);
INSERT INTO `books` VALUES (20, 20, 2, 'Lửa Hận', NULL, NULL, 0, 0, '2019-10-08 00:38:08', '2019-10-08 00:38:08', 'images/luahan.jpg', 'Trinh Thám - Hình Sự', 8);
INSERT INTO `books` VALUES (21, 21, 8, 'Mật Mã Davici', NULL, NULL, 0, 0, '2019-10-08 00:57:15', '2019-10-08 00:57:15', 'images/matmadavinci.jpg', 'Trinh Thám - Hình Sự', 9);
INSERT INTO `books` VALUES (22, 22, 8, 'Nguồn Gốc Văn Hóa Việt Nam', NULL, NULL, 0, 0, '2019-10-08 00:38:15', '2019-10-08 00:38:15', 'images/nguongocvanhoavn.jpg', 'Văn Hóa - Tôn Giáo', 10);
INSERT INTO `books` VALUES (23, 23, 8, 'Nho Giáo Trung Quốc', NULL, NULL, 0, 0, '2019-10-08 00:38:17', '2019-10-08 00:38:17', 'images/nhogiaotq.jpg', 'Văn Hóa - Tôn Giáo', 11);
INSERT INTO `books` VALUES (24, 24, 7, 'Phật Giáo Hòa Hảo', NULL, NULL, 0, 0, '2019-10-08 00:38:20', '2019-10-08 00:38:20', 'images/phatgiaohoahao.jpg', 'Văn Hóa - Tôn Giáo', 12);
INSERT INTO `books` VALUES (25, 25, 11, 'Chính Trị Thế Giới Sau Năm 1945', NULL, NULL, 0, 0, '2019-10-08 00:38:22', '2019-10-08 00:38:22', 'images/sach-chinh-tri-the-gioi-sau-nam-1945.jpg', 'Lịch Sử - Chính Trị', 12);
INSERT INTO `books` VALUES (26, 26, 2, 'SherlockHomes', NULL, NULL, 0, 0, '2019-10-08 00:38:24', '2019-10-08 00:38:24', 'images/Sherlockhome.jpg', 'Trinh Thám - Hình Sự', 13);
INSERT INTO `books` VALUES (27, 27, 2, 'Sự Im Lặng Của Bầy Cừu', NULL, NULL, 0, 0, '2019-10-08 00:38:27', '2019-10-08 00:38:27', 'images/suimlangcuabaycuu.jpg', 'Trinh Thám - Hình Sự', 14);
INSERT INTO `books` VALUES (28, 28, 2, 'Tâm Lý Học Đám Đông', NULL, NULL, 0, 0, '2019-10-08 00:38:28', '2019-10-08 00:38:28', 'images/tamlyhocdamdong.jpg', 'Tâm Lý - Kỹ Năng Sống', 15);
INSERT INTO `books` VALUES (29, 29, 2, 'Tâm Thức Isreal', NULL, NULL, 0, 0, '2019-10-08 00:38:30', '2019-10-08 00:38:30', 'images/tamthucistreal.jpg', 'Tâm Lý - Kỹ Năng Sống', 16);
INSERT INTO `books` VALUES (30, 30, 8, 'Triết Học Kì Thú', NULL, NULL, 0, 0, '2019-10-08 00:38:32', '2019-10-08 00:38:32', 'images/thkithu.jpg', 'Triết Học', 2);
INSERT INTO `books` VALUES (31, 31, 12, 'Triết Học Luật Pháp', NULL, NULL, 0, 0, '2019-10-08 00:38:33', '2019-10-08 00:38:33', 'images/thluatphap.jpg', 'Triết Học', 3);
INSERT INTO `books` VALUES (32, 32, 10, 'Giáo Trình Triết Học Mác Lê-nin', NULL, NULL, 0, 0, '2019-10-08 00:38:35', '2019-10-08 00:38:35', 'images/thmac.jpg', 'Triết Học', 4);
INSERT INTO `books` VALUES (33, 33, 3, 'Triết Sử Ấn Độ', NULL, NULL, 0, 0, NULL, NULL, 'images/thando.jpg', 'Triết Học', 5);
INSERT INTO `books` VALUES (34, 34, 2, 'Tôi Tự Học', NULL, NULL, 0, 0, '2019-10-08 00:38:39', '2019-10-08 00:38:39', 'images/toituhoc.jpg', 'Tâm Lý - Kỹ Năng Sống', 4);
INSERT INTO `books` VALUES (35, 35, 2, 'Bên Nhau Trọn Đời', NULL, NULL, 0, 0, '2019-10-08 00:38:41', '2019-10-08 00:38:41', 'images/ttbennhautrondoi.jpg', 'Tiểu Thuyết', 4);
INSERT INTO `books` VALUES (36, 36, 2, 'Chúa Tể Những Chiếc Nhẫn', NULL, NULL, 0, 0, '2019-10-08 00:38:43', '2019-10-08 00:38:43', 'images/ttchuatenhungchiecnhan.jpg', 'Tiểu Thuyết', 3);
INSERT INTO `books` VALUES (37, 37, 2, 'Lâu Đài Cát', NULL, NULL, 0, 0, '2019-10-08 00:38:45', '2019-10-08 00:38:45', 'images/ttlaudaicat.jpg', 'Tiểu Thuyết', 2);
INSERT INTO `books` VALUES (38, 38, 13, 'Miền Trần Gian', NULL, NULL, 0, 0, '2019-10-08 00:38:47', '2019-10-08 00:38:47', 'images/ttmientrangian.jpg', 'Tiểu Thuyết', 1);
INSERT INTO `books` VALUES (39, 39, 2, 'Sông', NULL, NULL, 0, 0, '2019-10-08 00:38:49', '2019-10-08 00:38:49', 'images/ttsong.jpg', 'Tiểu Thuyết', 1);
COMMIT;

-- ----------------------------
-- Table structure for cardbook
-- ----------------------------
DROP TABLE IF EXISTS `cardbook`;
CREATE TABLE `cardbook` (
  `MaTheMuon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBanDoc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayMuon` date NOT NULL,
  `SoNgayDuocMuon` int(11) NOT NULL,
  `NgayTraDuKien` int(11) NOT NULL,
  `NgayTraThucTe` int(11) NOT NULL,
  `SoNgayMuonTiep` int(11) NOT NULL,
  `TinhTrang` int(11) NOT NULL,
  PRIMARY KEY (`MaTheMuon`,`MaBanDoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for publisher
-- ----------------------------
DROP TABLE IF EXISTS `publisher`;
CREATE TABLE `publisher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `publishername` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên nhà xuất bản',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of publisher
-- ----------------------------
BEGIN;
INSERT INTO `publisher` VALUES (1, ' H?i Phòng', '2019-10-07 10:03:38', '2019-10-07 10:03:38');
INSERT INTO `publisher` VALUES (2, 'NXB Trẻ', NULL, NULL);
INSERT INTO `publisher` VALUES (3, 'NXB Kim Đồng', NULL, NULL);
INSERT INTO `publisher` VALUES (4, 'NXB Chính Trị - Hành Chính', NULL, NULL);
INSERT INTO `publisher` VALUES (5, 'NXB Phụ Nữ', NULL, NULL);
INSERT INTO `publisher` VALUES (6, 'NXB Đồng Nai', NULL, NULL);
INSERT INTO `publisher` VALUES (7, 'NXB Tổng Hợp TPHCM', NULL, NULL);
INSERT INTO `publisher` VALUES (8, 'NXB Văn Hóa Thông Tin', NULL, NULL);
INSERT INTO `publisher` VALUES (9, 'NXB Khoa Học Kỹ Thuật', NULL, NULL);
INSERT INTO `publisher` VALUES (10, 'NXB Chính Trị Quốc Gia', NULL, NULL);
INSERT INTO `publisher` VALUES (11, 'NXB Lao Động', NULL, NULL);
INSERT INTO `publisher` VALUES (12, 'NXB Tri Thức', NULL, NULL);
INSERT INTO `publisher` VALUES (13, 'NXB Hội Nhà Văn', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email',
  `phone` int(11) DEFAULT NULL COMMENT 'sdt',
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'họ',
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tên',
  `role` tinyint(4) DEFAULT '0' COMMENT 'quyền(0 : đọc giả, 1 : GV_CB, 2: thủ thư(admin) )',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'ngày cập nhật',
  `account` int(8) NOT NULL COMMENT 'tài khoản dùng để xác thực danh tính vd sv thì là tk sinh viên',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
