-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 04, 2019 at 06:19 PM
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
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `MaSach` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenSach` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TacGia` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NXB` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TheLoaiSach` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaSach`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `Password` int(20) NOT NULL,
  PRIMARY KEY (`MaBanDoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
