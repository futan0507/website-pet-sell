-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2013 at 05:28 AM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banthunuoi`
--

-- --------------------------------------------------------

--
-- Table structure for table `banggia`
--

CREATE TABLE IF NOT EXISTS `banggia` (
  `mabanggia` int(11) NOT NULL,
  `tenbanggia` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banggia`
--

INSERT INTO `banggia` (`mabanggia`, `tenbanggia`) VALUES
(1, 'bang gia thu nuoi.pdf'),
(2, 'bang gia dung cu thu nuoi.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `cacloaithunuoi`
--

CREATE TABLE IF NOT EXISTS `cacloaithunuoi` (
  `maloaithunuoi` varchar(20) NOT NULL,
  `tenloaithunuoi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`maloaithunuoi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cacloaithunuoi`
--

INSERT INTO `cacloaithunuoi` (`maloaithunuoi`, `tenloaithunuoi`, `diachi`, `dienthoai`, `email`) VALUES
('CH', 'Chó', '1 Kha Vạn Cân _QTĐ_TPHCM', '8975466', 'cho@yahoo.com'),
('ME', 'Mèo', '2 Kha Vạn Cân _QTĐ_TPHCM', '8647512', 'meo@yahoo.com'),
('CA', 'Cá', '3 Kha Vạn Cân _QTĐ_TPHCM', '5687443', 'ca@yahoo.com'),
('CHU', 'Chuột', '4 Kha Vạn Cân _QTĐ_TPHCM', '8697455', 'chuot@yahoo.com'),
('TH', 'Thỏ', '6 Kha Vạn Cân_TPHCM', '8644952', 'tho@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `chitietthunuoi`
--

CREATE TABLE IF NOT EXISTS `chitietthunuoi` (
  `tenthunuoi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinhcach` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mausac` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noisong` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `xuatsu` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tenthunuoi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietthunuoi`
--

INSERT INTO `chitietthunuoi` (`tenthunuoi`, `tinhcach`, `mausac`, `noisong`, `xuatsu`, `hinh`) VALUES
('Chó sư tử lùn tây tạng', 'Chó cảnh giữ nhà, khôn, cần có bạn', 'Trắng', 'Trong chuồng', 'Trung Quốc', 'cho3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE IF NOT EXISTS `donhang` (
  `idDH` int(12) NOT NULL AUTO_INCREMENT,
  `Makhachhang` int(11) NOT NULL,
  `ThoiDiemDatHang` date NOT NULL,
  `ThoiDiemGiaoHang` date NOT NULL,
  `DiaDiemGiaohang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenNguoiNhan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GhiChu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhTrang` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idDH`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idDH`, `Makhachhang`, `ThoiDiemDatHang`, `ThoiDiemGiaoHang`, `DiaDiemGiaohang`, `TenNguoiNhan`, `GhiChu`, `TinhTrang`) VALUES
(1, 2, '2012-10-17', '2012-10-19', 'TPHCM', 'Mr Nhien', NULL, 0),
(5, 3, '2012-10-15', '2012-10-09', 'Đắk Lắk', 'Mr Thoai', NULL, 0),
(11, 4, '2012-10-16', '2012-10-24', 'Tây Ninh', 'Trần Ngọc Dân', NULL, 0),
(13, 3, '2012-10-16', '2012-10-11', 'HN', 'Lưu Gia Thoại', NULL, 0),
(14, 8, '2009-10-08', '2014-10-09', 'TPHCM', 'Phạm Ngọc Hoa', NULL, 0),
(15, 4, '2012-10-17', '2012-10-04', 'HN', 'Trần Ngọc Dân', NULL, 0),
(17, 2, '2012-10-17', '2012-10-22', 'TPHCM', 'Vũ Minh Luân', NULL, 0),
(16, 5, '2012-10-28', '2012-10-31', 'Đà Nẵng', 'Nguyễn Văn Hưng', NULL, 0),
(18, 7, '2012-10-16', '2012-10-04', 'Tào Khựa', 'XiXao', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhangchitiet`
--

CREATE TABLE IF NOT EXISTS `donhangchitiet` (
  `idChiTiet` int(12) NOT NULL,
  `mathunuoi` varchar(6) NOT NULL,
  `SoLuong` int(4) NOT NULL,
  `Dongia` int(11) NOT NULL,
  `idDH` int(12) NOT NULL,
  PRIMARY KEY (`idChiTiet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`idChiTiet`, `mathunuoi`, `SoLuong`, `Dongia`, `idDH`) VALUES
(35, 'CH01', 5, 5000000, 18),
(47, 'ME02', 8, 500000, 11),
(23, 'CA03', 25, 100000, 17),
(20, 'CHU04', 15, 110000, 1),
(19, 'CH06', 40, 500000, 13),
(38, 'CA05', 50, 10000000, 16),
(29, 'ME05', 25, 700000, 13),
(45, 'CH03', 12, 500000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `Makhachhang` int(11) NOT NULL AUTO_INCREMENT,
  `Tenkhachhang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Phai` tinyint(1) NOT NULL,
  `Diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Matkhau` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Macv` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `xacnhanmatkhau` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Makhachhang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`Makhachhang`, `Tenkhachhang`, `Phai`, `Diachi`, `Dienthoai`, `user`, `Matkhau`, `Macv`, `email`, `ngaysinh`, `xacnhanmatkhau`) VALUES
(1, 'Võ Văn Nhiên', 1, '101 Đỗ Xuân Hợp Q9 TPHCM', '012687444', 'nhien', '123', '1', 'nhienit600@gmail.com', '1975-09-22', '123'),
(2, 'Lê Duy Anh', 1, '102 Đỗ Xuân Hợp Q9 TPHCM', '096887410', 'luan', '123', '0', 'luan@gmail.com', '1980-05-08', '123'),
(3, 'Lưu Gia Thoại', 1, '103 Đỗ Xuân Hợp Q9 TPHCM', '069871632', 'thoai', '123', '0', 'thoai@gmail.com', '1982-10-20', '123'),
(4, 'Trần Ngọc Dân', 1, '104 Đỗ Xuân Hợp Q9 TPHCM', '098756355', 'dan', '123', '0', 'dan@yahoo.com', '1977-10-05', '5ab1f07480927e00915178f58cc9d0d82a0d78de'),
(5, 'Nguyễn Văn Hưng', 1, '105 Đỗ Xuân Hợp Q9 TPHCM', '0125687413', 'hung', '123', '0', 'hung@gmail.com', '1987-10-14', '123'),
(6, 'Mai Phương Uyên', 0, '106 Đỗ Xuân Hợp Q9 TPHCM', '097546321', 'uyen', '123', '0', 'uyen@gmail.com', '1985-10-29', '123'),
(7, 'Châu Thị Chứa', 0, '107 Đỗ Xuân Hợp Q9 TPHCM', '0987663156', 'chua', '123', '0', 'chua@yahoo.com', '1983-10-18', '123'),
(9, 'Nguyễn Thị Vân Hảo', 0, '16 Cống Quỳnh Q1', '0902078989', 'hao', '123', '0', 'hao@yahoo.com', '1981-10-21', '123');

-- --------------------------------------------------------

--
-- Table structure for table `loaithunuoi`
--

CREATE TABLE IF NOT EXISTS `loaithunuoi` (
  `maloaithu` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maloaithunuoi` varchar(20) NOT NULL,
  `tenloaithu` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maloaithu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaithunuoi`
--

INSERT INTO `loaithunuoi` (`maloaithu`, `maloaithunuoi`, `tenloaithu`) VALUES
('C', 'CH', 'Dog'),
('M', 'ME', 'Cat'),
('A', 'CA', 'Fish'),
('U', 'CHU', 'Hamster'),
('O', 'TH', 'Rabbit');

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

CREATE TABLE IF NOT EXISTS `loaitin` (
  `MaLT` int(11) NOT NULL AUTO_INCREMENT,
  `Ngonngu` char(10) NOT NULL DEFAULT 'viet',
  `TenLT` varchar(100) NOT NULL,
  `TenLT_KhongDau` varchar(100) DEFAULT NULL,
  `MaTL` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`MaLT`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`MaLT`, `Ngonngu`, `TenLT`, `TenLT_KhongDau`, `MaTL`) VALUES
(1, 'viet', 'Bóng đá', 'Bong-da', 1),
(2, 'viet', 'Tennis', 'Ten-nis', 1),
(3, 'viet', 'Hình sự', 'Hinh-su', 2),
(4, 'viet', 'Ký sự', 'Ky-su', 2),
(5, 'viet', 'Khoa học', 'Khoa-hoc', 3),
(6, 'viet', 'Tuyển sinh', 'Tuyen-sinh', 3),
(7, 'viet', 'Âm nhạc', 'Am-nhac', 4),
(8, 'viet', 'Thời trang', 'Thoi-trang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE IF NOT EXISTS `theloai` (
  `MaTL` int(11) NOT NULL AUTO_INCREMENT,
  `Ngonngu` char(10) NOT NULL DEFAULT 'viet',
  `TenTL` varchar(255) NOT NULL,
  `TenTL_KhongDau` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaTL`),
  UNIQUE KEY `TenTL` (`TenTL`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`MaTL`, `Ngonngu`, `TenTL`, `TenTL_KhongDau`) VALUES
(1, 'viet', 'Thể thao', 'The-thao'),
(2, 'viet', 'Pháp luật', 'Phap-luat'),
(3, 'viet', 'Giáo dục', 'Giao-duc'),
(4, 'viet', 'Văn hóa nghệ thuật', 'Van-hoa-nghe-thuat');

-- --------------------------------------------------------

--
-- Table structure for table `thunuoi`
--

CREATE TABLE IF NOT EXISTS `thunuoi` (
  `mathunuoi` varchar(6) NOT NULL,
  `tenthunuoi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maloaithunuoi` varchar(20) NOT NULL,
  `maloaithu` varchar(3) NOT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `hinh` varchar(200) NOT NULL,
  `ngaynhap` date NOT NULL,
  `noibat` int(11) NOT NULL,
  PRIMARY KEY (`mathunuoi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thunuoi`
--

INSERT INTO `thunuoi` (`mathunuoi`, `tenthunuoi`, `maloaithunuoi`, `maloaithu`, `mota`, `soluong`, `dongia`, `hinh`, `ngaynhap`, `noibat`) VALUES
('CH05', 'Chó Jack Russel', 'CH', 'C', 'Jack Russel\r\nXuất xứ: Devon ( Anh )\r\nMàu sắc: đen và nâu nhạt\r\nTrọng lượng: 3 kg – 4 kg\r\nTính cách: năng động là kẻ săn chuột cừ khôi, giống chó săn đa năng luôn lanh chanh tràn đầy sức sống', 20, 1000000, 'cho5.jpg', '2012-10-12', 1),
('CH02', 'Chó Pomeranian ', 'CH', 'C', 'Chó phóc lông dài \r\nXuất xứ: Đức\r\nMàu sắc: trắng, kem, cam, xám, đen vàng\r\nTrọng lượng: 1,5 kg – 2,5 kg\r\nTính cách: can đảm, lanh lợi, dễ thương\r\n', 30, 3000000, 'cho2.jpg', '2012-10-16', 1),
('CH04', 'Chó Beagle', 'CH', 'C', 'Chó Beagle\r\nXuất xứ: Anh\r\nMàu sắc: đen trắng và nâu nhạt\r\nTrọng lượng: 4 kg – 7 kg\r\nTính cách: thích nghi hoàn cảnh nhanh.', 60, 2000000, 'cho4.jpg', '2012-10-03', 1),
('CH06', 'Chó ChiHuaHua', 'CH', 'C', 'Chiều cao: 6-9 inches (15-23 cm.) \r\nCân nặng: 2-6 pounds (1-3 kg.) \r\nNơi sống: Trong chuồng', 100, 500000, 'chochihuahua.jpg', '2012-10-10', 1),
('CA01', 'Cá thủy sinh Ali ', 'CA', 'A', 'Cá thủy sinh Ali vàng bé thường được nuôi trong bể làm kiểng \r\nMàu sắc: vàng\r\nXuất sứ: Việt Nam', 200, 100000, 'ca1.jpg', '2012-10-01', 1),
('CA02', 'Cá Đầu Bò', 'CA', 'A', 'Cá Đầu Bò được nuôi trong hồ kiếng làm kiểng chơi \r\nMàu sắc: Đen\r\nXuất Xứ: Chưa bik nguồn gốc ', 100, 80000, 'ca2.jpg', '2012-10-30', 0),
('CA03', 'Cá cảnh Kole tang ', 'CA', 'A', 'Cá cảnh Kole tang cá đẹp long lanh nuôi cho đẹp \r\nXuất xứ: Campuchia', 50, 100000, 'ca3.jpg', '2012-10-25', 1),
('CA04', 'Cá Hoàng Bảo Yến', 'CA', 'A', 'Cá Hoàng Bảo Yến có thân trắng xám vành đen thức ăn chủ yếu là cám\r\nMàu sắc Trắng xám\r\nXuất xứ: VN', 300, 120000, 'ca4.jpg', '2012-10-09', 0),
('CA05', 'Cá Thanh Long vây Hồng', 'CA', 'A', 'Cá Thanh Long vây Hồng là loại cá hiện nay được rất nhìu đại gia ưa chuộng vì vẽ đẹp của nó\r\nXuất xứ: ko rõ\r\nMàu sắc : đa màu sắc \r\n', 500, 10000000, 'ca5.jpg', '2012-10-31', 1),
('ME01', 'Mèo vàng ', 'ME', 'M', 'Mèo vàng bé tý nhỏ xinh \r\nMàu sắc: vàng khè', 10, 100000, 'meo1.jpg', '2012-10-17', 0),
('ME02', 'Mèo trắng sọc đen', 'ME', 'M', 'Mèo trắng sọc đen nhìn thấy mà cưng\r\nMàu sắc: trắng đen\r\nXuất xứ: VN', 70, 500000, 'meo2.jpg', '2012-10-25', 1),
('ME03', 'Mèo tam thể ', 'ME', 'M', 'Mèo tam thể  tráng vàng thường được nuôi trong nhà với tài bắt chuột cực giỏi\r\nXuất xứ: VN', 150, 80000, 'meo3.jpg', '2012-07-10', 0),
('ME04', 'Mèo trắng tiểu thư', 'ME', 'M', 'Mèo trắng tiểu thư \r\nXuất xứ: Đông-Ti-Mo\r\nMàu sắc: Trắng bóc', 500, 500000, 'meo4.jpg', '2012-10-26', 0),
('ME05', ' Mèo bá đạo ', 'ME', 'M', 'Mèo bá đạo\r\nMàu sắc: Trắng\r\nXuất xứ: Lào ', 90, 700000, 'meo5.jpg', '2012-10-01', 1),
('CHU01', 'Chuột Dominant Spot Winterwhite', 'CHU', 'U', 'Chuột Dominant Spot Winterwhite \r\nXuất xứ :Thailand được các bạn trẻ ngày nay nuôi nhìu trong nhà\r\nMàu sắc: Vàng trắng \r\nTính cách: hiền lành', 300, 40000, 'chuot1.jpg', '2012-09-04', 0),
('CHU02', 'Chuột Golden mắt đen ', 'CHU', 'U', 'Chuột Golden mắt đen  thức ăn chủ yếu là món rau xanh các loại ngũ cốc, ngô, mè, cà rốt\r\nXuất xứ: Tháiland\r\nTính cách: vui vẽ \r\n\r\n', 300, 80000, 'chuot2.jpg', '2012-08-07', 1),
('CHU03', 'Chuột Whiteface Roborovski ', 'CHU', 'U', 'Chuột Whiteface Roborovski nuôi trong lồng kính và được chắm sóc kỹ càng\r\nMàu sắc: xám trắng\r\nThức ăn chính: rau, ngũ cốc', 100, 90000, 'chuot3.jpg', '2012-10-09', 0),
('CHU04', 'Chuột Beige Winterwhite', 'CHU', 'U', 'Chuột Beige Winterwhite đặc biệt nhất là có đôi mắt màu đỏ\r\nMàu sắc: vàng hoe\r\nKích cỡ : 4-5cm\r\nTính cách: Hiền ko dzữ', 20, 110000, 'chuot4.jpg', '2012-04-02', 0),
('CHU05', 'Chuột Lilac Winterwhite', 'CHU', 'U', 'Chuột Lilac Winterwhite  nhỏ nhắn đáng yêu  thưởng được nhắc đến trong truyện cổ tích với cái tên " chuột LiLac"\r\nMàu sắc : Trắng xám', 30, 70000, 'chuot5.jpg', '2012-06-11', 0),
('CH07', 'Chóhuahua', 'CH', 'C', 'chó chi hua hua đẹp  \r\nTrọng lượng: 1,5 kg – 2,5 kg\r\nTính cách: vui vẽ, lanh lợi, dễ thương\r\nMàu sắc: đa màu ', 152, 70000, 'cho7.jpg', '2012-10-10', 1),
('CH08', 'Chó xù', 'CH', 'C', 'Chó xù lù xù lù \r\nMàu sắc: trắng\r\nTính cách: lanh lợi, gậm xương', 598, 135000, 'cho8.jpg', '2012-04-10', 0),
('CH09', 'Chó đia hia', 'CH', 'C', 'Chó đia hia lìa hia hia tai to \r\nMàu sắc: Trắng đen\r\nTính cách: hiền lành , nghe lời chủ', 350, 121500, 'cho9.jpg', '2012-10-29', 0),
('CHU06', 'Chuột hamter trắng', 'CHU', 'U', 'Chuột hamter trắng cà lắng ắng ắng\r\nKích cỡ: 3-4cm\r\nNơi sống: lồng kính\r\nXuất xứ: VN', 350, 350000, 'chuot6.jpg', '0000-00-00', 0),
('CHU07', 'Chuột vàng', 'CHU', 'U', 'Chuột vàng khè \r\nMàu sắc: Vàng, trắng\r\nKích cỡ: 2-3cm\r\nNơi sông: lồng kính', 175, 250000, 'chuot7.jpg', '2012-10-31', 1),
('CHU08', 'Chuột chấu', 'CHU', 'U', 'Chuột Chấu cà lấu ấu ấu \r\nThức ăn chính: chấu, rau , củ, quả\r\nTính tình: hiền, nhát\r\nXuất xứ: Trung Quốc', 250, 30000, 'chuot8.jpg', '2012-08-07', 0),
('CHU09', 'Chuột đen ', 'CHU', 'U', 'Chuột đen cà ren en en\r\nMàu sắc:Đen\r\nXuất xứ: Tàu khựa', 300, 25000, 'chuot9.jpg', '2012-10-07', 0),
('CHU10', 'Hamter vàng', 'CHU', 'U', 'Hamter vàng \r\nNơi sống: Lồng kính\r\nKích cỡ: 4-5cm\r\nThức ăn: Gạo, chấu...\r\n\r\n', 250, 15000, 'chuot10.jpg', '2012-10-02', 0),
('ME06', 'Mèo trắng đen', 'ME', 'M', 'Mèo trắng đen  \r\nMàu sắc: Đen trắng\r\nTính cách: hiền, bắt chuột giỏi\r\nThức ăn: Cá, mỡ\r\n', 50, 150000, 'meo6.jpg', '0000-00-00', 0),
('ME07', 'Mèo tiểu thư điệu', 'ME', 'M', 'Mèo tiểu thư điệu cho mấy gái điệu', 136, 256800, 'meo7.jpg', '2012-10-02', 0),
('ME08', 'Mèo xám', 'ME', 'M', 'Mèo Xám cà lám ám ám', 158, 125000, 'meo8.jpg', '2012-10-18', 1),
('ME09', 'Mèo tam thể vàng', 'ME', 'M', 'Mèo tam thể vàng àn cà làn àn àn', 25, 98999, 'meo9.jpg', '2012-10-03', 0),
('ME10', 'Mèo trắng tinh thể', 'ME', 'M', 'Mèo trắng tinh thể', 32, 354444, 'meo10.jpg', '2012-10-10', 0),
('CA06', 'Cá Cichlids châu Phi ', 'CA', 'A', 'Cá Cichlids khi lớn lên thường có chiều dài thân từ 15 đến 18cm, sống trong nước ngọt và dễ dàng nuôi trong bể cá cảnh.', 235, 35000, 'ca6.jpg', '2012-10-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tin`
--

CREATE TABLE IF NOT EXISTS `tin` (
  `MaTin` int(11) NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(255) NOT NULL,
  `TomTat` varchar(1000) DEFAULT NULL,
  `Hinh` varchar(255) DEFAULT NULL,
  `Ngay` datetime DEFAULT '0000-00-00 00:00:00',
  `Noidung` text,
  `MaTL` int(11) NOT NULL,
  `MaLT` int(11) NOT NULL,
  PRIMARY KEY (`MaTin`),
  FULLTEXT KEY `TimKiemToanVan` (`TieuDe`,`TomTat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=357 ;

--
-- Dumping data for table `tin`
--

INSERT INTO `tin` (`MaTin`, `TieuDe`, `TomTat`, `Hinh`, `Ngay`, `Noidung`, `MaTL`, `MaLT`) VALUES
(1, 'Thủ môn Tấn Trường và vợ rạng rỡ trước ngày cưới', 'Ngày 13/2 thủ môn đội tuyển quốc gia Tấn Trường sẽ lên xe hoa cùng cô dâu Ngọc Liên tại quê nhà Lai Vung và thành phố Cao Lãnh, Đồng Tháp.', 'tan-truong-123_jpg_thumb210x0_ns.jpg', '2009-05-03 00:00:00', 'Tấn Trường quê ở huyện Lai Vung (Đồng Tháp), vợ sắp cưới 22 tuổi Ngọc Liên sống ở thành phố Cao Lãnh. Tấn Trường cho biết hai người quen nhau đã gần 5 năm và quyết định đi đến hôn nhân khi Ngọc Liên đã học xong đại học, còn anh cũng đã có sự nghiệp ổn định.\r\nThay vì thuê các cửa hàng chụp ảnh cưới, Tấn Trường đã cùng Ngọc Liên thực hiện bộ ảnh cưới dưới sự giúp đỡ của các phóng viên thể thao tại Vũng Tàu trong vòng 2 ngày.', 1, 1),
(2, 'Chelsea cầu viện Guus Hiddink ', '"Phù thủy" người Hà Lan có thể là một phần quan trọng trong kế hoạch tái thiết Chelsea. ', 'a2.jpg', '2008-06-09 00:00:00', 'Phong độ gần đây của Chelsea khiến ông chủ Roman Abramovich không thể hài lòng. Vậy nên, sau khi hoàn thành nhiệm vụ đưa World Cup 2018 đến với quê hương Nga, ông đã quay trở lại để tập trung cơ cấu lại đội bóng thành London.\r\nKế hoạch đã được khởi động ấn tượng bằng việc chi tiền bổ sung lực lượng - mà khoản phí chuyển nhượng lớn nhất trong lịch sử bóng đá Anh (50 triệu bảng) để mua tiền đạo Fernando Torres là một minh chứng. ', 1, 1),
(3, 'Diego Milito nghỉ thi đấu 4 tuần vì chấn thương ', 'Tiền đạo Diego Milito sẽ phải nghỉ thi đấu 4 tuần vì chấn thương đùi - CLB Inter Milan vừa cho biết thông tin này.', 'militojpg-095715.jpg', '2009-04-16 00:00:00', '<p>Milito bị chấn thương trong trận Inter Milan thắng AS Roma 5-3 hôm Chủ nhật vừa rồi</p>\r\n<p>Tiền đạo người Argentina sẽ phải nghỉ thi đấu khoảng 4 tuần, đồng nghĩa với việc không thể tham dự trận đấu ở vòng 1/8 Champion League giữa Inter Milan và Bayern Munich, diễn ra ngày 23.2</p>\r\n', 1, 1),
(4, 'Kaka: Tôi hài lòng với sự trở lại của mình', 'Dân Việt - Tiền vệ Ricardo Kaka cho biết, anh cảm thấy rất hài lòng với những màn trình diễn của mình sau khi trở lại từ ca phẫu thuật chấn thương đầu gối.', '080211_the-thao_Kaka.jpg', '2010-04-08 00:00:00', '<p>Ở trận tiếp Real Sociedad diễn ra vào rạng sáng thứ Hai vừa qua, cầu thủ 28 tuổi đã ghi bàn thắng mở tỷ số cho Real Madrid và góp công lớn giúp Los Blancos giành chiến thắng 4-1. Đây cũng là pha lập công thứ hai của Kaka sau khi trở lại hồi đầu tháng 1.</p>\r\n<p>Kaka nói: “Tôi cảm thấy rất thoải mái và tự tin. Các bước chạy của tôi đã trở nên nhanh nhẹn và thanh thoát hơn. Tôi luôn cố gắng để cải thiện phong độ để thi đấu tốt nhằm đóng góp vào sự thành công chung của CLB.</p>\r\n', 1, 1),
(5, 'Nadal đoạt giải Oscar thể thao ', 'Siêu sao quần vợt người Tây Ban Nha đoạt giải Nam VĐV thể thao hay nhất - một trong những danh hiệu của Viện Hàn lâm thể thao thế giới Laureus tại buổi Gala tối qua ở Abu Dhabi, Các tiểu vương quốc Ảrập thống nhất.', 'nadal2_jpg_thumb210x0_ns.jpg', '2007-04-05 00:00:00', 'Giải Đội tuyển xuất sắc đã tôn vinh đội tuyển bóng đá nam Tây Ban Nha với chức vô địch World Cup 2010. Mặc dù được xem là một trong những đại gia bóng đá, Tây Ban Nha luôn tỏ ra vô duyên tại World Cup cho đến khi thắng Hà Lan 1-0 trong trận chung kết mùa hè trước. Tây Ban Nha đã khiến người hâm mộ thán phục bằng lối chơi tấn công và khả năng chuyền bóng biến hóa.', 1, 2),
(6, '11 tay vợt nữ hàng đầu mang 11 quốc tịch khác nhau ', 'Từ Australia đến Belarus, từ Mỹ đến Trung Quốc..., top 11 tay vợt nữ hiện nay chẳng khác nào một Liên hợp quốc thu nhỏ. ', 'tn_a2.jpg', '2006-04-04 00:00:00', 'Xếp sau tay vợt số một thế giới hiện nay Wozniacki (Đan Mạch) lần lượt là tân vô địch Australia Mở rộng Kim Clijsters (Bỉ), Vera Zvonareva (Nga), Francesca Schiavone (Italy), Sam Stosur (Australia), Venus Williams (Mỹ), Li Na (Trung Quốc), Jelena Jankovic (Serbia), Victoria Azarenka (Belarus), Agnieszka Radwanska (Ba Lan) và Shahar Peer (Israel).', 1, 2),
(7, 'Murray nghỉ ngơi sau thất bại ở Australia Mở rộng', 'Tay vợt số 5 thế giới có thể sẽ xa sân đấu một thời gian để tĩnh tâm, sau thất bại thứ ba trong một trận chung kết Grand Slam. ', 'tn_3.jpg', '2007-01-01 00:00:00', 'Andy Murray đã khởi đầu đầy hứa hẹn ở Australia Mở rộng, và đứng trước cơ hội để có danh hiệu Grand Slam đầu tiên trong sự nghiệp. Nhưng đúng vào thời điểm quyết định anh lại không thể hiện được mình, và chịu thua hoàn toàn trước Novak Djokovic sau ba set. ', 1, 2),
(8, 'Sao nổi cáu ở Australia mở rộng 2011 ', 'Không khí ngột ngạt, oi bức và tính chất căng thẳng ở các cuộc tranh tài khiến các tay vợt dự giải có nhiều phen không giữ được bình tĩnh.', 'tn_4.jpg', '2007-04-06 00:00:00', '<p>Sophie Ferguson cũng có phản ứng tương tự Wawrinka khi thua đối thủ Croatia, Petra Martic ngay vòng một và trở thành tay vợt chủ nhà đầu tiên nói lời tạm biệt Australia mở rộng 2011. </p>\r\n<p>Agnieszka Radwanska trút giận sau một pha đánh bóng không như ý trong trận thắng Shuai Peng ở vòng bốn.</p>\r\n', 1, 2),
(9, 'Hại vợ vì bị ngăn cản uống rượu', 'Án mạng kinh hoàng xảy ra tại ki-ốt bán quần áo vào ngày giáp Tết sau khi người vợ cằn nhằn chồng liên tục uống rượu suốt buổi tối.', 'hs_1.jpg', '2007-04-05 00:00:00', '<p>Tối 28/1 thấy Cừ ôm khư khư chai rượu uống liên hồi, chị Liên can ngăn. Nói mãi không được, người vợ bế con 8 tháng tuổi đi ngủ trước. Bực tức vì bị cằn nhằn, cộng với men rượu đã ngấm, Cừ xách con dao quắm ở góc nhà lao vào quát mắng và chém vợ.</p>\r\n<p>Bị thương, chị Liên cố chạy thoát ra ngoài nhưng cửa nhà đã khóa… Biết vợ bị thương, Cừ để mặc lên giường đi ngủ. Khoảng 4h sáng hôm sau, anh ta tỉnh dậy, gọi hàng xóm đưa chị Liên đi cấp cứu. Nạn nhân tử vong trong sáng 29/1 do vết thương quá nặng.</p>\r\n', 2, 3),
(10, 'Nữ sinh về quê ăn Tết bị tài xế làm nhục', 'Ngày 28/1 công an đã bắt lái xe Lê Ngọc Hùng để điều tra tố cáo hiếp dâm một nữ sinh viên khi cô này đi nhờ xe tải từ Đà Nẵng về Thanh Hóa ăn Tết.', 'hs_2.jpg', '2009-04-04 00:00:00', '<p>Khoảng 19h ngày 27/1, tại Đà Nẵng 2 nữ sinh viên đón ôtô tải để về quê Thanh Hóa, trên xe có 2 tài xế. Đến địa phận thôn Hà Thanh, xã Gio Châu, huyện Gio Linh, tỉnh Quảng Trị, một cô bị lái xe đẩy xuống đường. Người còn lại bị tài xế Hùng giữ lại trong xe để hiếp dâm.</p>\r\n<p>Sau khi giở trò đồi bại, anh ta đẩy cô này xuống đường. Nạn nhân được người dân xung quanh giúp đỡ đưa đến Công an huyện Gio Linh trình báo sự việc.</p>\r\n', 2, 3),
(11, 'Nghi phạm sát hại chủ nhà trọ bị bắt', 'Chiều 24/1, Công an Hà Nội đã bắt Vũ Trọng Tâm - nghi phạm gây ra cái chết thương tâm cho ông chủ nhà trọ Lê Văn Lưu (57 tuổi).', 'hs_3.jpg', '2010-04-02 00:00:00', '<p>Trước đó 3 ngày, xác nạn nhân được phát hiện ở bên tường khu nhà trọ tại phường Yên Hòa, Cầu Giấy, phần ngực và đầu có hơn chục vết thương do vật nhọn tác động. Trong túi quần của ông Lưu, cơ quan điều tra tìm thấy hơn 100 triệu đồng.</p>\r\n<p>Khám nghiệm hiện trường, cảnh sát tìm thấy ở bãi cỏ cách nhà nạn nhân có con dao nhọn, một chiếc khóa hình chữ U có dấu vết máu. Lần theo manh mối, người thuê trọ tên Tâm, 51 tuổi, hành nghề lái xe ôm bị đưa vào "tầm ngắm" và bị bắt tại một nhà nghỉ ở huyện Gia Lâm.</p>\r\n', 2, 3),
(12, 'Nghi phạm vụ xác nữ không đầu bị bắt', 'Sau 30 giờ điều tra, công an Hải Phòng đã bắt được nghi phạm liên quan đến vụ án xảy ra ở quận Kiến An (Hải Phòng). ', 'hs_4.jpg', '2009-04-04 00:00:00', 'Sáng 9/1, một cán bộ Công an TP Hải Phòng cho VnExpress.net biết đã bắt được nghi phạm liên quan đến vụ xác chết không đầu ở khu chợ Đầm Triều, phường Quán Trữ (quận Kiến An).Trước đó, chiều 7/1, một công nhân vệ sinh môi trường đô thị khi quét rác tại khu đất trống gần chợ phát hiện xác người phụ nữ mất đầu và tay. Nạn nhân khoảng 40 tuổi chết trong tình trạng chân trái có vết cắt, mặc chiếc quần lót, rác phủ lên người.\r\n\r\n', 2, 3),
(13, 'Trở thành sát thủ vì những mối tình học trò', 'Đang tuổi cắp sách đến trường nhưng không ít cô cậu học trò đã chìm đắm trong những mối tình', 'ks_1.jpg', '2009-04-02 00:00:00', 'Nhanh chóng đến hiện trường, các chiến sĩ công an không khỏi đau lòng khi thấy Đặng Hoàng Tiến (15 tuổi, học sinh lớp 10 trường THPT Lê Thị Hồng Gấm) nằm gục trên vũng máu. Cạnh bên là chiếc cặp học sinh và xe đạp ngã chỏng chơ. Cách đó không xa, một xe máy được xác định là của hung thủ cùng lưỡi lê dài khoảng 35 cm và chiếc cặp khác chứa đầy sách vở nằm lăn lóc trên đường. Dù được đưa đi cấp cứu sau đó nhưng nạn nhân đã chết do vết thương quá nặng.', 2, 4),
(14, 'Bi kịch gia đình từ mối tình tội lỗi với chị dâu', 'Gần đến giờ xử án, người đàn ông càng co rúm trước vành móng ngựa, ánh mắt hoảng loạn liên tục đảo quanh', 'ks_2.jpg', '2008-04-07 00:00:00', 'Khi được tòa gọi đến, Trọng lê từng bước nặng nhọc đến gần vành móng ngựa hơn. Trên đôi chân bị xiềng xích, những ngón chân cáu bẩn của gã bấu chặt vào đôi dép nhựa đã sờn cũ. Không một lần ngẩng mặt, bị cáo khai nhận toàn bộ tội lỗi của mình. Cả khán phòng im phăng phắc dõi theo những lời khai. Vài người không giấu được thảng thốt, ngỡ ngàng trước tấm bi kịch đầy đau khổ của đại gia đình bị cáo.', 2, 4),
(15, 'Hậu họa từ cuộc tình với thiếu nữ bị câm', 'Dù anh đã khuyên nhủ, nhưng tình yêu cháy bỏng của thiếu nữ cùng hoàn cảnh câm điếc đã khiến hai người vượt qua sự ngăn cấm của gia đình và pháp luật… ', 'ks_3.jpg', '2009-04-14 00:00:00', 'Người đàn ông có gương mặt hốc hác, nhăn nhó cứ thấp thỏm trước vành móng ngựa trong khán phòng rộng lớn của TAND quận 8 (TP HCM). Ánh mắt âu lo cứ bám riết lấy người phụ nữ đứng tuổi tại chiếc bàn được kê chếch phía trái của phòng. Bà là hiệu trưởng của trường khuyết tật Hy Vọng quận 8, cô giáo Tôn Nữ Thị Nhi. Còn anh là Nguyễn Văn Hồng (39 tuổi), vốn câm điếc bẩm sinh bị truy tố về tội “giao cấu với trẻ em”.', 2, 4),
(16, 'Cô giáo trẻ xin giảm án cho kẻ giết mình', 'Cô ngồi bất động, mệt mỏi, đôi tay chằng chịt sẹo hững hờ đan vào nhau. Đến khi gã thanh niên khai lại toàn bộ hành vi phạm tội', 'ks_4.jpg', '2009-04-05 00:00:00', ' Thế mà chỉ ít phút sau đó, khi được Tòa phúc thẩm TAND Tối cao tại TP HCM gọi đến, cô nhẹ nhàng: “Đúng là tôi đã may mắn khi sống sót sau những gì bị cáo đã gây ra. Nhưng mức án chung thân mà bị cáo phải chịu cứ làm tôi cảm thấy nặng lòng. Bị cáo còn trẻ tuổi, tôi tin tưởng cậu ấy sẽ thực sự hối cải, hoàn lương khi hiểu được ý nghĩa của sự tha thứ này. Tôi tha thiết mong tòa giảm án để bị cáo có cơ hội sửa chữa, sớm trở về với gia đình…”\r\n\r\n', 2, 4),
(17, 'Con trai nhà thơ thành nhà toán học tầm cỡ', 'TTXuân - 41 tuổi, giáo sư Vũ Hà Văn đã công bố 80 công trình trên các tạp chí toán học hàng đầu thế giới', 'kh_1.bmp', '2009-04-06 00:00:00', 'Năm 2009, Vũ Hà Văn được Nhà nước Việt Nam công nhận là giáo sư kiêm chức của Viện Toán học, khi anh 39 tuổi. Ngô Bảo Châu và Vũ Hà Văn là hai giáo sư trẻ nhất Việt Nam. \r\nTrong ba năm 2007-2010, khi Ngô Bảo Châu từ Đại học Paris 11 chuyển sang làm việc tại Viện Nghiên cứu cao cấp Princeton, Châu, Văn và Đàm Thanh Sơn (đến từ Đại học Washington, Seattle) trở thành ba người bạn thân. Cả ba anh đều sinh ra và lớn lên ở Hà Nội, đều là dân chuyên toán cũ và đều có chung ý nguyện gắn bó với quê hương. \r\n', 3, 5),
(18, 'Robot thương hiệu Việt', 'TTXuân - Ở tuổi 29, Hồ Vĩnh Hoàng, tổng giám đốc Công ty cổ phần Robotics Tosy (đường Láng, Hà Nội), đã sở hữu Topio - robot dáng người biết đánh bóng bàn và đĩa bay Tosy', 'kh_2.bmp', '2007-04-09 00:00:00', 'Hồ Vĩnh Hoàng có một tuổi thơ đam mê và khám phá. Lúc còn đi học, thay vì được bố mẹ mua đồ chơi thì cậu học trò đất Hà thành tự mày mò làm đồ chơi cho mình. Ở tuổi lên 5, “công trình sáng tạo” đầu tiên của Hoàng ra đời: chiếc canô chạy dưới nước bằng pin. Năm cuối cùng của thời học sinh ở khối chuyên toán - tin Đại học Khoa học tự nhiên (Đại học Quốc gia Hà Nội), một quả bóng được di chuyển bằng bộ điều khiển từ xa được Hoàng chế tạo sau ba tháng mày mò. \r\nĐồ chơi đĩa bay mang tên Tosy dần lớn lên trong tâm trí cậu học trò năm cuối phổ thông. Đến năm 2002, khi đang là sinh viên năm 2 Đại học Bách khoa Hà Nội, Hoàng quyết tâm thực hiện bằng được ước mơ và rủ thêm một số người bạn thành lập công ty. Năm 2003, Hoàng cùng đội robocon của trường đoạt giải nhất cuộc thi Robocon trong vai trò đội trưởng\r\n', 3, 5),
(19, 'Robot “thương hiệu sinh viên”', 'Nói đến chế tạo robot, người ta thường nghĩ đến đội ngũ kỹ sư giỏi với các nhà máy hiện đại. Thế nhưng ở VN, những học sinh, sinh viên cũng đang tạo ra nhiều robot có chức năng rất thực tế', 'kh_3.bmp', '2007-04-10 00:00:00', 'Tại liên hoan Sáng tạo khoa học công nghệ trẻ TP.HCM vừa diễn ra đầu tháng 1-2011, người xem được chiêm ngưỡng robot nhện của hai sinh viên năm cuối khoa khoa học và kỹ thuật máy tính, Trường ĐH Bách khoa (ĐHQG TP.HCM) là Nguyễn Lâm Vinh Cường và Lã Ngọc Đức.Robot này có hình thù giống con nhện chỉ với sáu chân nên có thể di chuyển dễ dàng trên những địa hình phức tạp. Mục đích tạo ra robot nhằm phục vụ những công việc như thám hiểm các địa hình phức tạp nhờ gắn camera quan sát trên thân robot... \r\nNgoài ra còn có robot hoa có thể đóng mở cánh hoa, đung đưa thân, lá và “nhảy múa” theo nhạc... hay robot cá có thể lặn sâu hơn 1.000m để thám hiểm, tìm kiếm, cứu hộ dưới lòng sông, đáy biển...\r\nMột nhóm sinh viên năm cuối khác gồm Nguyễn Tấn Cường, Nguyễn Minh Tuấn và Cao Việt Dũng cũng của khoa khoa học và kỹ thuật máy tính Trường ĐH Bách khoa (ĐHQG TP.HCM) vừa chế tạo robot có thể nhận diện được chữ in và cả chữ viết tay, đồng thời phát âm chữ viết đó. \r\n', 3, 5),
(20, 'Robot đi học thay', 'Để giúp học sinh Nga Stepan 12 tuổi tiếp tục việc học mặc dù bị bệnh bạch cầu, người ta lắp đặt một robot trong lớp học để đi học thay cậu bé', 'kh_4.bmp', '2010-03-03 00:00:00', 'Chú robot ngồi ở ghế của cậu bé trong lớp, được gắn camera, micro và loa để giúp cậu học hành qua màn hình. Từ nhà, qua chú robot, Stepan có thể đặt câu hỏi với cô giáo Alla Guevak. Cô nói: “Chúng tôi cũng gọi robot là Stepan. Lúc đầu chúng tôi thấy lạ nhưng rồi quen dần. Trong giờ chơi, robot cũng giao tiếp rất tích cực với các học sinh khác. Chúng tôi đối xử với robot như là Stepan hiện diện thật sự vậy”.\r\n\r\nStepan cho biết cậu có thể cho robot đi chậm hoặc đi nhanh, cho đầu nó quay qua trái hoặc phải một cách linh động. Do đó cậu cảm thấy như mình ngồi học thật sự trong lớp.\r\n\r\n', 3, 5),
(21, 'ĐH Giao thông vận tải TP.HCM: Bắt đầu tuyển nữ ngành hàng hải', 'Nhiều năm nay hai ngành thuộc nhóm ngành hàng hải là điều khiển tàu biển và khai thác máy tàu thủy của Trường ĐH Giao thông vận tải TP.HCM chỉ tuyển nam, không tuyển nữ', 'ts_1.bmp', '2009-03-02 00:00:00', 'Tương tự ở bậc cao đẳng, hai ngành này cũng tuyển nữ. Đây là nhóm ngành có cơ hội việc làm tốt và thu nhập cao. Các công việc trên tàu gồm điều khiển tàu biển, quản lý và vận hành hệ thống máy móc, hệ thống điện, điện tử trên tàu, bảo quản hàng hóa chuyên chở trên tàu… thường khá vất vả. Vì vậy yêu cầu về sức khỏe đối với thí sinh: tổng thị lực hai mắt phải đạt 18/10 trở lên, không mắc bệnh mù màu, phải nghe rõ khi nói thường cách 5m và nói thầm cách 0.5m và có cân nặng từ 45 kg trở lên. \r\n\r\n', 3, 6),
(22, 'Tư vấn nhóm ngành kinh tế tại Đăk Lăk', 'Em được biết trường ĐH kinh tế luật mới được tách ra gần đây. Vậy chỉ tiêu các ngành kinh tế của trường trong năm nay? Ngành thương mại quốc tế học gì?', 'ts_2.bmp', '2008-03-30 00:00:00', '- Th.S Trần Thế Hoàng: Tiếng Anh là xu thế bắt buộc cho mọi trường ĐH, mọi ngành nghề nên chúng ta nên đầu tư vào ngoại ngữ. Hiện các trường công bố chuẩn đầu ra đều yêu cầu ngoại ngữ. \r\n- ThS Hứa Minh Tuấn: học sinh trường huyện thường yếu về ngoại ngữ. Nhưng các em chọn ngành kinh tế vẫn được. Nếu tiếng Anh thuộc hạng xoàng, chúng ta có thể thi khối A. Khi vào trường, tiếng Anh căn bản đào tạo bậc ĐH cao đẳng thiết kế 10 đơn vị học trình, tổng cộng 150 tiết, tuy nhiên cũng tùy từng trường có cơ cấu học khác nhau. Ở Trường ĐH tài chính makerting, sau khi vào trường, các em được chia thành 4 cấp độ, các em kém được kèm riêng, tách ra lớp riêng để phụ đạo. Sau phần căn bản các em có thể dễ dàng tiếp cận tiếng Anh chuyên ngành. Nếu các em chăm chỉ học tập thì không phải lo lắng nhiều về việc cải thiện trình độ ngoại ngữ.\r\n', 3, 6),
(23, '2500 học sinh tham gia ngày hội tuyển sinh tại Tiền Giang', 'Sáng nay 9-1, mặc dù chương trình đến 8g 30 mới chính thức diễn ra, nhưng từ 7g30 học sinh từ các huyện lân cận TP Mỹ Tho như Chợ Gạo, Châu Thành, Cái Bè... đã về Trường ĐH Tiền Giang ', 'ts_3.bmp', '2007-03-05 00:00:00', 'Các học sinh Trường THPT Nguyễn Văn Tiếp (huyện Tân Phước) đến tham gia từ 7g. Một học sinh cho biết rất vui khi dự chương trình: "Em muốn thi vào ngành công nghệ thông tin nhưng vẫn còn phân vân chưa biết thi ở Tiền Giang hay lên TP.HCM. Hôm nay sẽ nhờ các thầy tư vấn để có quyết định cuối cùng".\r\n\r\nTrường ĐH Tiền Giang đã mở cửa các khu nhà xưởng, thí nghiệm, thực hành để học sinh tham quan trước khi tham gia chương trình tư vấn. Các nhóm học sinh đến sớm đã được các sinh viên tình nguyện tận tình hướng dẫn đi tham quan để có cái nhìn tổng thể về môi trường học tập ở bậc ĐH.\r\n\r\nChương trình tư vấn tuyển sinh hướng nghiệp 2011 được tổ chức tại Trường ĐH Tiền Giang (phường 5, TP Mỹ Tho, Tiền Giang) do báo Tuổi Trẻ, Bộ GD-ĐT, Sở GD-ĐT Tiền Giang và trường ĐH Tiền Giang phối hợp tổ chức\r\n', 3, 6),
(24, 'Chỉ tiêu tuyển sinh dự kiến của ĐHQG TP.HCM', 'Theo TS Nguyễn Đức Nghĩa - phó giám đốc ĐHQG TP.HCM, kỳ thi tuyển sinh 2011 ĐHQG TP.HCM vẫn thực hiện thi tuyển sinh theo “ba chung” và không có thay đổi gì lớn so với kỳ thi năm trước', 'ts_4.bmp', '2010-03-03 00:00:00', 'TS Nguyễn Thanh Nam - Trưởng phòng đào tạo Trường ĐH Bách khoa, cho biết kỳ thi tuyển sinh năm 2011 trường dự kiến tuyển 3.950 chỉ tiêu và không mở thêm ngành mới. Theo đó, ở bậc ĐH trường dự kiến tăng thêm 50 chỉ tiêu, gồm các ngành: điện - điện tử 650 chỉ tiêu (tăng 10 chỉ tiêu so với năm 2010), nhóm ngành công nghệ hóa - thực phẩm - sinh học 430 chỉ tiêu (tăng 20 chỉ tiêu) và ngành kỹ thuật giao thông 180 chỉ tiêu (tăng 20 chỉ tiêu). \r\n\r\nRiêng ngành kiến trúc thi khối V gồm toán và vật lý (theo đề khối A) và môn năng khiếu (vẽ đầu tượng). Trường cũng sẽ tuyển 170 sinh viên chương trình Việt - Pháp đào tạo kỹ sư chất lượng cao từ các thí sinh đã trúng tuyển vào trường ở tất cả các ngành; tuyển 50 sinh viên vào khóa 5 chương trình đào tạo tiên tiến theo dự án của Bộ GD-ĐT nhóm ngành điện - điện tử, theo chương trình của Đại học Illinois, Hoa Kỳ\r\n', 3, 6),
(25, 'Nam ca sĩ của nhóm Boney M đột tử  ', 'Nam ca sĩ của nhóm nhạc Boney M - Bobby Farrell đã bất ngờ qua đời vào sáng 30.12 tại một khách sạn ở thành phố Saint Petersburg (Nga)', 'an_1.jpg', '2007-03-11 00:00:00', 'Theo Seine, Farrell đã than rằng ông cảm thấy khó thở trước và sau buổi diễn tối 29.12.\r\n\r\nTrong khi đó, cơ quan điều tra ở thành phố Saint Petersburg cho biết, nguyên nhân cái chết vẫn đang được điều tra làm rõ.\r\n\r\nLà nam ca sĩ duy nhất kiêm vai trò vũ công của ban nhạc 4 người Boney M, Farrell nổi tiếng với giọng hát trầm và những bước nhảy mạnh mẽ.\r\n\r\nBan nhạc Boney M gốc vốn được biết đến nhiều trong những thập niên 70 và 80 của thế kỷ trước nhờ các bản "hit" sôi động như Daddy Cool, Rivers of Babylon và Rasputin trước khi giải tán vào năm 1986\r\n', 4, 7),
(26, '10 ca khúc “đỉnh” nhất năm 2010  ', 'Ngày 27.12, kênh truyền hình âm nhạc nổi tiếng châu Á Channel V đã công bố danh sách 10 ca khúc hay nhất năm 2010', 'an_2.jpg', '2010-03-09 00:00:00', 'Ca khúc Bad Romance của Nghệ sĩ tiêu biểu nhất năm 2010 Lady Gaga (theo bầu chọn của tạp chí Billboard) đã giành được vị trí đầu tiên trong danh sách 10 ca khúc hay nhất năm 2010 do khán giả Channel V bình chọn. \r\n\r\nBad Romance cũng đã giúp Lady Gaga lãnh trọn 7 giải thưởng của MTV Video Music Awards 2010 (gồm Video của năm, Video của nữ ca sĩ xuất sắc nhất, Video nhạc pop xuất sắc nhất,Video nhạc dance xuất sắc nhất, Đạo diễn xuất sắc nhất, Vũ đạo xuất sắc nhất và Video được biên tập tốt nhất).\r\n', 4, 7),
(27, '5 album Giáng sinh được chờ đợi nhất  ', 'Sự trở lại của một số diva và nhóm nhạc đã làm thị trường nhạc Giáng sinh năm nay thêm rộn rã', 'an_3.jpg', '2009-03-08 00:00:00', 'Hiện tượng âm nhạc thế giới năm 2009 Susan Boyle giới thiệu album mới nhất: The gift trong mùa Giáng sinh năm nay. Ra mắt đầu tháng 11, The gift lập tức đứng đầu nhiều bảng xếp hạng âm nhạc thế giới với hơn 1 triệu đĩa bán ra. The gift có nhiều ca khúc được Susan Boyle thể hiện theo phong cách pop, acoustic và cả thánh ca như: Perfect day, Hallelujah, Don’t dream it’s over... \r\n\r\nAlbum thứ 5 nhưng là album đầu về Giáng sinh của ca sĩ Scotland Annie Lennox: A Christmas Cornucopia cũng là một hiện tượng của năm. Các ca khúc kinh điển như Silent night, The first Noel, Lullay Lullay... được Annie Lennox thể hiện cùng sáng tác mới nhất của cô Universal child trong album này.  \r\n\r\n', 4, 7),
(28, 'Justin Bieber thống trị American Music Awards  ', 'Thần tượng mới 16 tuổi người Canada Justin Bieber đã qua mặt đàn anh Eminem để thống trị tại lễ trao giải American Music Awards (AMA) 2010 vừa kết thúc sáng nay (22.11, giờ VN)', 'an_4.jpg', '2010-03-03 00:00:00', 'Ca sĩ 16 tuổi cũng ngỏ lời cám ơn huyền thoại Michael Jackson khi nhận giải dành cho Ca sĩ nhạc pop qua câu nói: “Không có Michael Jackson, không ai trong chúng ta có thể có mặt tại đây”.\r\n\r\nBieber, người lớn lên tại Stratford, Ontario (Canada) song hiện sống tại Mỹ, chính là một trong những gương mặt “hot” nhất trong thế giới âm nhạc hiện nay. Cậu hiện là người trong mộng của hàng triệu cô gái trẻ, những người đã làm ngập lụt cả mạng xã hội Twitter bằng các thông điệp bày tỏ sự ngưỡng mộ. Đây là lợi thế lớn cho Bieber do các giải thưởng được người hâm mộ quyết định thông qua việc bầu chọn qua mạng.\r\n', 4, 7),
(29, 'Năng động cùng jean  ', 'Xu hướng thời trang jean cho mùa đông và xuân năm nay không chỉ giúp bạn trẻ năng động, thoải mái mà kiểu dáng còn mềm mại', 'tt_1.jpg', '2010-03-05 00:00:00', '(TNTS) Xu hướng thời trang jean cho mùa đông và xuân năm nay không chỉ giúp bạn trẻ năng động, thoải mái mà kiểu dáng còn mềm mại, ôm sát người rất phù hợp với tiết trời se lạnh. \r\nĐặc biệt với phái đẹp, dù bạn có vóc dáng cân đối hay không không quan trọng bởi các kiểu quần jeans mùa này thiết kế chú trọng đến những điểm nhấn nơi eo, hông và vòng 3, thật dễ dàng cho bạn lựa chọn nhằm tôn thêm vẻ duyên dáng, quyến rũ. \r\n\r\n', 4, 8),
(30, 'Dạ hội tóc  ', 'Diễn ra vào trung tuần tháng 10 vừa qua tại London (Anh), show trình diễn tóc uy tín nhất thế giới Alternative Hair Show lần thứ 28 ', 'tt_2.jpg', '2010-03-07 00:00:00', ' Diễn ra vào trung tuần tháng 10 vừa qua tại London (Anh), show trình diễn tóc uy tín nhất thế giới Alternative Hair Show lần thứ 28 thu hút một đội ngũ đông đảo các nhà tạo mẫu tóc hàng đầu thế giới tham dự. Đêm diễn giới thiệu nhiều kiểu tóc ấn tượng, độc đáo, phù hợp với chủ đề Masquerade (Dạ hội hóa trang). \r\nDưới đây là một số mẫu tóc vừa được giới thiệu tại show trình diễn tóc Alternative Hair Show 2010\r\n', 4, 8),
(31, 'Đêm của những giấc mơ  ', 'Đêm duy nhất Đẹp fashion show 9 có sự tham gia của các siêu mẫu hàng đầu VN và hàng loạt người đẹp từng đoạt danh hiệu tại các cuộc thi Hoa hậu VN', 'tt_3.jpg', '2010-03-09 00:00:00', ' Trong đêm diễn được mong chờ này, người xem đã được trải nghiệm một đêm thời trang đặc biệt trong sự kết hợp với các loại hình nghệ thuật khác như hội họa, âm nhạc, video, nhiếp ảnh, múa đương đại, xiếc, nghệ thuật trình diễn... \r\n\r\nNgoài các gương mặt quen thuộc trong làng thiết kế Việt như Hoàng Ngân, Kelly Bùi, Đỗ Mạnh Cường, đêm diễn còn có sự góp mặt của nhà thiết kế người Đức Juliane Kunze (Đức) và nhà thiết kế trẻ Lưu Anh Tuấn, một hiện tượng trong giới thời trang Hungary những năm gần đây. \r\n\r\n', 4, 8),
(32, 'Những mẫu thiết kế độc đáo  ', 'Trong khuôn khổ các tuần lễ thời trang dành cho xuân hè 2011 vừa qua, ngoài những bộ trang phục mang tính ứng dụng cao', 'tt_4.jpg', '2010-09-06 00:00:00', 'Trong khuôn khổ các tuần lễ thời trang dành cho xuân hè 2011 vừa qua, ngoài những bộ trang phục mang tính ứng dụng cao, các nhà tạo mẫu còn giới thiệu những mẫu thiết kế ngộ nghĩnh, thiên về trình diễn. Dưới đây là một số mẫu thiết kế hết sức độc đáo, lạ mắt, lấy ý tưởng từ những vật dụng trong cuộc sống hằng ngày, trích từ bốn tuần lễ thời trang xuân hè lớn nhất trong năm: New York, London, Milan, Paris và một số tuần lễ thời trang khác', 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_answers_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_answers_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTION_ID` int(11) DEFAULT NULL,
  `ORDER_ID` int(10) DEFAULT NULL,
  `ANSWER` text,
  `COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `webpoll_answers_ver`
--

INSERT INTO `webpoll_answers_ver` (`ID`, `QUESTION_ID`, `ORDER_ID`, `ANSWER`, `COUNT`) VALUES
(1, 1, 0, 'Answer 1', 0),
(2, 1, 1, 'Answer 2', 0),
(3, 2, 1, 'ChÃƒÂ³', 1),
(4, 2, 2, 'MÃƒÂ¨o', 1),
(5, 2, 3, 'CÃƒÂ¡', 1),
(6, 2, 4, 'ThÃ¡Â»Â', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_colors_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_colors_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SET_NAME` varchar(200) DEFAULT NULL,
  `POLL_BG` varchar(7) DEFAULT NULL,
  `QUESTION_BG` varchar(7) DEFAULT NULL,
  `QUESTION_TXT` varchar(7) DEFAULT NULL,
  `ANSWER_TXT` varchar(7) DEFAULT NULL,
  `MOUSE_OVER` varchar(7) DEFAULT NULL,
  `MOUSE_OUT` varchar(7) DEFAULT NULL,
  `VOTE_BTN_BG` varchar(7) DEFAULT NULL,
  `VOTE_BTN_TXT` varchar(7) DEFAULT NULL,
  `TOTAL_VOTES` varchar(7) DEFAULT NULL,
  `VOTES_BAR` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `webpoll_colors_ver`
--

INSERT INTO `webpoll_colors_ver` (`ID`, `SET_NAME`, `POLL_BG`, `QUESTION_BG`, `QUESTION_TXT`, `ANSWER_TXT`, `MOUSE_OVER`, `MOUSE_OUT`, `VOTE_BTN_BG`, `VOTE_BTN_TXT`, `TOTAL_VOTES`, `VOTES_BAR`) VALUES
(1, 'Default Color Set', '999966', '000000', 'FFFFFF', 'FFFFFF', '999966', 'FFFFFF', '000000', 'FFFFFF', '000000', '000000');

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_questions_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_questions_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COLOR_SET_ID` varchar(11) DEFAULT NULL,
  `DAYS` varchar(5) DEFAULT NULL,
  `WIDTH` varchar(10) DEFAULT NULL,
  `HEIGHT` varchar(10) DEFAULT NULL,
  `QUESTION` varchar(100) DEFAULT NULL,
  `SHOW_RESULT` varchar(100) DEFAULT NULL,
  `ON_VOTE` varchar(100) DEFAULT NULL,
  `CUSTOM_MSG` varchar(100) DEFAULT NULL,
  `BTN_MSG` varchar(100) DEFAULT NULL,
  `TOTAL_MSG` varchar(100) DEFAULT NULL,
  `POLL_START` datetime DEFAULT NULL,
  `POLL_END` datetime DEFAULT NULL,
  `ALLOW_VOTE` varchar(5) DEFAULT NULL,
  `USE_TIME_INTERVAL` varchar(5) DEFAULT NULL,
  `VIEW_RESULTS` varchar(5) DEFAULT NULL,
  `VIEW_RESULTS_TITLE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `webpoll_questions_ver`
--

INSERT INTO `webpoll_questions_ver` (`ID`, `COLOR_SET_ID`, `DAYS`, `WIDTH`, `HEIGHT`, `QUESTION`, `SHOW_RESULT`, `ON_VOTE`, `CUSTOM_MSG`, `BTN_MSG`, `TOTAL_MSG`, `POLL_START`, `POLL_END`, `ALLOW_VOTE`, `USE_TIME_INTERVAL`, `VIEW_RESULTS`, `VIEW_RESULTS_TITLE`) VALUES
(1, '1', '0', '200', '400', 'Question?', 'amount_percent', 'total', '', 'Vote me!', 'Total votes:', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', 'false', 'true', 'view results'),
(2, '1', '0', '200', '250', 'BÃ¡ÂºÂ¡n thÃƒÂ­ch loÃ¡ÂºÂ¡i thÃƒÂº nuÃƒÂ´i nÃƒÂ o ?', 'amount_percent', 'total', '', 'BÃƒÂ¬nh chÃ¡Â»Ân', 'TÃƒÂ´ng CÃƒÂ´ng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', 'false', 'true', 'KÃƒÂªt quÃ¡ÂºÂ£');

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_votes_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_votes_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTION_ID` int(11) DEFAULT NULL,
  `ANSWER_ID` int(11) DEFAULT NULL,
  `IP` varchar(25) DEFAULT NULL,
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `webpoll_votes_ver`
--

INSERT INTO `webpoll_votes_ver` (`ID`, `QUESTION_ID`, `ANSWER_ID`, `IP`, `DT`) VALUES
(1, 2, 6, '127.0.0.1', '2013-01-16 12:06:10'),
(2, 2, 3, '127.0.0.1', '2013-01-16 12:06:32'),
(3, 2, 4, '127.0.0.1', '2013-01-16 12:20:05'),
(4, 2, 5, '127.0.0.1', '2013-01-16 12:20:25');
