-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 11, 2019 lúc 06:06 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id11697206_annaplay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `IdAlbum` int(11) NOT NULL,
  `TenAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenCaSiAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`IdAlbum`, `TenAlbum`, `TenCaSiAlbum`, `HinhAlbum`) VALUES
(1, 'Phía Sau Một Cô Gái (Single)', 'Soobin Hoàng Sơn', 'https://annaplay.000webhostapp.com/Hinhanh/Album/phiasaumotcogai.jpg'),
(2, 'Code Lyoko OST', 'Noam, Subdigitals', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/code_lyoko.jpg'),
(3, 'Huy Singer', 'Huy Hentai', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ai_song.jpg'),
(4, 'Na Stupid', 'NaNa', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/na_ngu.jpg'),
(5, 'Lời Yêu Ngây Dại (Single)', 'Kha', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/loiyeungaydai.jpg'),
(6, 'Vanh Vanh Cover', 'Vanh Vanh', 'https://annaplay.000webhostapp.com/Hinhanh/Album/vanh_vanh.jpg'),
(7, 'Tết Về Sớm Nhé', 'V.A', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/maxresdefault.jpg'),
(8, 'Boys Over Flower OST', 'Nhiều ca sĩ', 'https://annaplay.000webhostapp.com/Hinhanh/Album/vuonsaobang.jpg'),
(9, 'Album Of Wibu', 'Huy Giáo Sư', 'https://annaplay.000webhostapp.com/Hinhanh/Album/qbu.jpg'),
(10, '万有引力 / Vạn Vật Hấp Dẫn', 'Uông Tô Lang', 'https://annaplay.000webhostapp.com/Hinhanh/Album/album_vanvathapdan.jpg'),
(11, 'PhuongAlter', 'V.A', 'https://annamusic.000webhostapp.com/Black.jpg'),
(12, 'Buồn của anh', 'Nhiều ca sĩ', 'https://annaplay.000webhostapp.com/Hinhanh/Album/hoa_kaito.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihat`
--

CREATE TABLE `baihat` (
  `IdBaiHat` int(11) NOT NULL,
  `IdAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IdTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IdPlayList` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CaSi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LinkBaiHat` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `LuotThich` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baihat`
--

INSERT INTO `baihat` (`IdBaiHat`, `IdAlbum`, `IdTheLoai`, `IdPlayList`, `TenBaiHat`, `HinhBaiHat`, `CaSi`, `LinkBaiHat`, `LuotThich`) VALUES
(1, '1', '0', '1', 'Phía Sau Một Cô Gái', 'https://annaplay.000webhostapp.com/Hinhanh/Album/phiasaumotcogai.jpg', 'Soobin Hoàng Sơn', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/5384c4f65fb2b6ecefa3/5293792344046953092?authen=exp=1576019949~acl=/5384c4f65fb2b6ecefa3/*~hmac=1d02b99e7f8cdf80a3361d29942b1cf5', 20052010),
(2, '0', '1', '0', 'Electricity', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/electricity.jpg', 'Silk City, Diplo, Dua Lipa', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/076f8e6b5c2fb571ec3e/4501913971398551000?authen=exp=1576023207~acl=/076f8e6b5c2fb571ec3e/*~hmac=c5f5a2d71bea78fc756a82e2b7aaf7b4', 0),
(3, '0', '0', '1', 'Ai Là Người Thương Em', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ailanguoithuongem.jpg', 'Quân A.P', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/5638f3cfdb8832d66b99/4894631162202805437?authen=exp=1576025855~acl=/5638f3cfdb8832d66b99/*~hmac=149777675f543c56ca15070faf6db332', 1),
(4, '0', '0', '1', 'Nơi Này Có Anh', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/noinaycoanh.jpg', 'Sơn Tùng M-TP', 'https://annamusic.000webhostapp.com/Noi-Nay-Co-Anh-SonTung-M-TP.mp3', 3),
(5, '0', '0', '1', 'Điều Anh Biết', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/dieuanhbiet.jpg', 'Chi Dân', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/553ed2644920a07ef931/6911234967099074203?authen=exp=1576026205~acl=/553ed2644920a07ef931/*~hmac=f5d02889a3cf319bfd09b3d9205dcb78', 1),
(6, '0', '0', '1', 'Còn Gì Đau Hơn Chữ Đã Từng', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/cgdhcdt.jpg', 'Quân A.P', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/8d4d009826dfcf8196ce/6668049094557308765?authen=exp=1576025824~acl=/8d4d009826dfcf8196ce/*~hmac=895fabd385286c83e87356a56eb6a27e', 0),
(7, '0', '0', '1', '1 2 3 4', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/1234.jpg', 'Chi Dân', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/2a1aefcf378bded5879a/7476549963116102576?authen=exp=1576027456~acl=/2a1aefcf378bded5879a/*~hmac=337782852ba7ae2c9c1f71217b5fa2cf', 0),
(8, '2', '0', '0', 'A World Without Danger', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/code_lyoko.jpg', 'Noam', 'https://annamusic.000webhostapp.com/A%20World%20Without%20Danger.mp3', 0),
(9, '3', '0', '0', 'AI Song', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ai_song.jpg', 'Huy Hentai', 'https://annamusic.000webhostapp.com/AI_Song.mp3', 3),
(10, '3', '0', '0', 'Cô Thắm Không Về', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/cothamkhongve.jpg', 'Phát Hồ, JokeS Bii, Sinike ft. DinhLong', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui989/CoThamKhongVe-PhatHoJokesBiiThien-6067247.mp3?st=MqaNOgeWY87jQBh3Nag-tQ&e=1575357469&t=1575271071465', 50007),
(11, '1', '0', '1', 'Em Của Ngày Hôm Qua', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/emcuangayhomqua.jpg', 'Sơn Tùng M-TP', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui926/EmCuaNgayHomQua-SonTungMTP-2882720.mp3?st=KBt2Uaa40JXSQ0qfeTuhTQ&e=1575357541&download=true', 0),
(13, '4', '0', '14', 'Chẳng Thể Nói Ra (Cover)', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/na_ngu.jpg', 'NaNa', 'https://annamusic.000webhostapp.com/Chang-The-Noi-Ra-NaNa-Cover.mp3', 503),
(14, '5', '0', '1', 'Lời Yêu Ngây Dại', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/loiyeungaydai.jpg', 'Kha', 'https://vnso-zn-16-tf-mp3-320s1-zmp3.zadn.vn/d9b513713736de688727/9024769427840940651?authen=exp=1576025842~acl=/d9b513713736de688727/*~hmac=d189d1834222035cbd3c118ddf531af5', 10),
(15, '6', '', '', 'Anh Thương Em Nhất Mà (Cover)', 'https://annaplay.000webhostapp.com/Hinhanh/Album/vanh_vanh.jpg', 'Vanh Vanh', 'https://annamusic.000webhostapp.com/Anh%20Th%C6%B0%C6%A1ng%20Em%20Nh%E1%BA%A5t%20M%C3%A0%20(Cover)%20-%20Vanh%20Vanh.mp3', 201),
(16, '0', '0', '0', 'Em Gái Mưa', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/emgaimua.jpg', 'Hương Tràm', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/c182b5c36f8786d9df96/7669419221100946312?authen=exp=1576025903~acl=/c182b5c36f8786d9df96/*~hmac=76605af8ed17bb4ff82b22f83c399d4b', 0),
(17, '', '', '1', 'Simple Love', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/simplelove.jpg', 'Obito, Seachains, Davis', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/c0609af0bcb755e90ca6/4474961537635894532?authen=exp=1576025825~acl=/c0609af0bcb755e90ca6/*~hmac=bc9562a5e53d8d514253f117181d8f75', 0),
(18, '', '', '', 'Trời Giấu Trời Mang Đi', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/troigiautroimangdi.jpg', 'AMEE, ViruSs', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/be10578071c79899c1d6/4017917276478546655?authen=exp=1576025823~acl=/be10578071c79899c1d6/*~hmac=9db6e120173ce8a8b7946daf3efd9415', 0),
(19, '', '', '', 'Nếu Ngày Ấy', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/neungayay.jpg', 'Soobin Hoàng Sơn', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/d9d764234f64a63aff75/8078736484616457402?authen=exp=1576025956~acl=/d9d764234f64a63aff75/*~hmac=438fcf74c2b2eac6755b2c87d0c38231', 0),
(20, '', '', '', 'Cho Anh Xin Thêm 1 Phút', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/choanhxinthem1phut.jpg', 'Trịnh Thăng Bình, Liz Kim Cương', 'https://vnso-zn-16-tf-mp3-320s1-zmp3.zadn.vn/f9a6d97ef2391b674228/1181895433416782100?authen=exp=1576022361~acl=/f9a6d97ef2391b674228/*~hmac=d6ecc09c3a64608295bf71d2443768c8', 0),
(21, '', '', '', 'Không Yêu Đừng Gây Thương Nhớ', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/khongyeudunggaythuongnho.jpg', 'LyLy, Karik', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/0552ba149153780d2142/5129591598415938450?authen=exp=1576020119~acl=/0552ba149153780d2142/*~hmac=192dd0530cf2ccc956ac8a09cedf9268', 0),
(22, '', '', '', 'Không Sao Mà, Em Đây Rồi', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/kosaomaemdayroi.jpg', 'Suni Hạ Linh, Lou Hoàng', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/e0757fe554a2bdfce4b3/214794883883941468?authen=exp=1576022290~acl=/e0757fe554a2bdfce4b3/*~hmac=f60be36d42d3db2358b47c7337f3b0f4', 0),
(23, '', '', '', 'Anh Đánh Rơi Người Yêu Này!', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/anhdanhroinguoiyeunay.jpg', 'Andiez, AMEE', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/eb08c0edebaa02f45bbb/3858425473647301468?authen=exp=1576020011~acl=/eb08c0edebaa02f45bbb/*~hmac=0b2ed0b790c47d69da38a764974d2f7b', 0),
(24, '', '', '', 'Đếm Cừu', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/demcuu.jpg', 'Han Sara, Kay Trần', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/54c3fdd2d6953fcb6684/7006899747516143275?authen=exp=1576026411~acl=/54c3fdd2d6953fcb6684/*~hmac=7cff4326180a44701a09969480b8b6d1', 0),
(25, '', '', '1', 'Là Bạn Không Thể Yêu', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/labankhongtheyeu.jpg', 'Lou Hoàng', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/00ce81eda4aa4df414bb/3547356744650563868?authen=exp=1576025826~acl=/00ce81eda4aa4df414bb/*~hmac=57f0fc5cb38f33037848685779a3baf6', 0),
(26, '', '', '', 'Mãi Mãi Là Một Lời Nói Dối', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/maimailamotloinoidoi.jpg', 'Khổng Tú Quỳnh, RIN9', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/eab267704737ae69f726/3376247027149242823?authen=exp=1576025823~acl=/eab267704737ae69f726/*~hmac=4304787306e26d83b1f3ef6fbd76f53a', 0),
(27, '', '', '', 'Rời Bỏ', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/roibo.jpg', 'Hòa Minzy', 'https://vnso-zn-16-tf-mp3-320s1-zmp3.zadn.vn/96752c47fb03125d4b12/5372211537864775015?authen=exp=1576026438~acl=/96752c47fb03125d4b12/*~hmac=837dc87ed6c8e6c691ba1fda3f22dc66', 0),
(28, '', '', '', 'Xin Đừng Lặng Im', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/xindunglangim.png', 'Soobin Hoàng Sơn', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/0ec3a4ed7da994f7cdb8/8631273853461097302?authen=exp=1576018763~acl=/0ec3a4ed7da994f7cdb8/*~hmac=c09d6fe0cb38b3fb4fcc15ec71752711', 0),
(29, '', '', '', 'Chiều Hôm Ấy', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/chieuhomay.jpg', 'JayKii', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/d7ced83f017be825b16a/4749192693487786471?authen=exp=1576020668~acl=/d7ced83f017be825b16a/*~hmac=da0073718292dd915713f0a6f6089e7b', 0),
(30, '', '', '12', 'Mang Chủng / 芒种', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/mangchung.jpg', 'Âm Khuyết Thi Thính', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/96419304b843511d0852/3540970656530525041?authen=exp=1576019722~acl=/96419304b843511d0852/*~hmac=2d3f9ca17994db4119bfbbc474a36e07', 0),
(31, '', '', '', 'Yêu Thương Ngày Đó', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/yeuthuongngaydo.jpg', 'Soobin Hoàng Sơn', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/60440be1dca535fb6cb4/5989491614308795435?authen=exp=1576018675~acl=/60440be1dca535fb6cb4/*~hmac=fbfdfcce4a200b531434fccbd07c1cf8', 0),
(32, '', '', '', 'Đúng Người Đúng Thời Điểm', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/dungnguoidungthoidiem.jpg', 'Thanh Hưng', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/6d2f4d0174469d18c457/4163716586541612268?authen=exp=1576025882~acl=/6d2f4d0174469d18c457/*~hmac=fa6a935eccd72b652f2a797c214b45c0', 0),
(33, '', '', '', 'Một Bước Yêu Vạn Dặm Đau', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/motbuayeuvandamdau.jpg', 'Mr Siro', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/cac6528061c78899d1d6/3244659249188233085?authen=exp=1576022393~acl=/cac6528061c78899d1d6/*~hmac=3a0a71827b636ae5324d3f525da0e4c4', 0),
(34, '12', '', '15', 'Day Dứt Nỗi Đau', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/daydutnoidau.jpg', 'Mr Siro', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/562e3bb1aff546ab1fe4/453222947705882473?authen=exp=1576025218~acl=/562e3bb1aff546ab1fe4/*~hmac=26097e2b9ba1cb3b4141e6f9cea4b72c', 0),
(35, '', '', '', 'Giúp Anh Trả Lời Những Câu Hỏi', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/giupanhtraloinhungcauhoi.jpg', 'Vương Anh Tú', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/dc913bf088b461ea38a5/287559810144953656?authen=exp=1576025812~acl=/dc913bf088b461ea38a5/*~hmac=fbb4c5013c3f8b53c1cf1fdca5fd7fd0', 0),
(36, '', '', '', 'Không Thể Yêu Ai Được Nữa', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/kotheyeuaiduocnua.jpg', 'Gin Tuấn Kiệt', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/24898f435607bf59e616/1268967691769195212?authen=exp=1576023662~acl=/24898f435607bf59e616/*~hmac=e468a55da72b054bc5c129a352bfdfe8', 0),
(37, '', '', '', 'Trái Tim Em Cũng Biết Đau', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/traitimemcungbietdau.jpg', 'Bảo Anh', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/1e26ac160f52e60cbf43/8966350086793741763?authen=exp=1576025493~acl=/1e26ac160f52e60cbf43/*~hmac=3c89faff581cbef6cee72355caa8b796', 0),
(38, '', '', '', 'Anh Cứ Đi Đi', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/anhcudidi.jpg', 'Hari Won', 'https://vnso-zn-16-tf-mp3-320s1-zmp3.zadn.vn/e9a2324aaf0e46501f1f/2317732940058460495?authen=exp=1576022186~acl=/e9a2324aaf0e46501f1f/*~hmac=28e7e879836763863ceb3b6d85438c06', 0),
(39, '', '', '', 'Ngốc', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ngoc_huongtram.jpg', 'Hương Tràm', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/0cf1b1452f01c65f9f10/8202777314437758352?authen=exp=1576018500~acl=/0cf1b1452f01c65f9f10/*~hmac=046a44417efde7a4007ae8f351d02f1f', 0),
(40, '', '', '', 'Ánh Nắng Của Anh', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/anhnangcuaanh.jpg', 'Đức Phúc', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/42d4f36e7a2a9374ca3b/4886820296038712735?authen=exp=1576023313~acl=/42d4f36e7a2a9374ca3b/*~hmac=5ffab4857e15425a3c8de7a0df1b5f02', 0),
(41, '', '', '', 'Yêu Em Rất Nhiều', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/yeuemratnhieu.jpg', 'Hoàng Tôn', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/e29e78afa2eb4bb512fa/6481182748969397863?authen=exp=1576017960~acl=/e29e78afa2eb4bb512fa/*~hmac=c78599e3a8ba8747b858d332320604dc', 0),
(42, '', '', '', 'Lạ Lùng', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/lalung_vu.jpg', 'Vũ.', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/7c19378ed9ca309469db/6702390640991887387?authen=exp=1576027401~acl=/7c19378ed9ca309469db/*~hmac=69c77dd1432fdb5892275f385a0f67c9', 0),
(43, '', '', '', 'Thằng Điên', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/thangdien_justatee_phuongly.jpg', 'JustaTee, Phương Ly', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/0e08292bfa6f13314a7e/4160193530684448445?authen=exp=1576020038~acl=/0e08292bfa6f13314a7e/*~hmac=4e58ab8f42bfb2e84534e15870e3bc9c', 0),
(44, '', '', '', '24H', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/24h_lyly.jpg', 'LyLy, Magazine', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/7acf06dfce9b27c57e8a/2127740377634206228?authen=exp=1576026554~acl=/7acf06dfce9b27c57e8a/*~hmac=94782e4388fc6d1c9b4ef3ae3966bcad', 0),
(45, '', '', '', 'Anh Nhà Ở Đâu Thế?', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/anhnhaodauthe_amee.jpg', 'AMEE, B Ray', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/d8e575d85b9fb2c1eb8e/7639966540895454338?authen=exp=1576025850~acl=/d8e575d85b9fb2c1eb8e/*~hmac=a6fdee6d83b8fca78e7fc04b1e20cd32', 0),
(46, '', '', '', 'Anh Ơi Ở Lại', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/anhoianholai_chipu.jpg', 'Chi Pu, Đạt G', 'https://vnso-zn-16-tf-mp3-320s1-zmp3.zadn.vn/e8ec7c8a53cdba93e3dc/2269359036571815427?authen=exp=1576025850~acl=/e8ec7c8a53cdba93e3dc/*~hmac=965956fd97a3df7b40ba7bf744dbc4f0', 0),
(47, '', '', '', 'Đừng Yêu Nữa, Em Mệt Rồi', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/dungyeunuaemmetroi_min.jpg', 'MIN', 'https://vnso-zn-16-tf-mp3-320s1-zmp3.zadn.vn/8702936abc2d55730c3c/4706780314827481425?authen=exp=1576025849~acl=/8702936abc2d55730c3c/*~hmac=425b48a8cbb28c9c70f23a8022a4101e', 0),
(48, '', '', '', 'Đau Để Trưởng Thành', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/daudetruongthanh_onlyc.jpg', 'OnlyC', 'https://vnso-zn-16-tf-mp3-s1-zmp3.zadn.vn/efb76b9743d0aa8ef3c1/2551948579247847217?authen=exp=1576025851~acl=/efb76b9743d0aa8ef3c1/*~hmac=ba3d4efd52e0c5218534a4fb91ebe0c2', 0),
(49, '', '', '', 'Buồn Lắm Em Ơi', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/buonlamemoi_trinhdinhquang.jpg', 'Trịnh Đình Quang', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/276ef4b7d0f039ae60e1/3055462972925438680?authen=exp=1576025847~acl=/276ef4b7d0f039ae60e1/*~hmac=cea85457942b96bef995c4de2762c427', 0),
(50, '', '', '', 'Bước Qua Đời Nhau', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/buocquadoinhau_lebaobinh.jpg', 'Lê Bảo Bình', 'https://vnso-zn-11-tf-mp3-s1-zmp3.zadn.vn/119a1af43eb3d7ed8ea2/4147490096273996622?authen=exp=1576025825~acl=/119a1af43eb3d7ed8ea2/*~hmac=0d21d903dd1b1a9814f291baeddc08b4', 0),
(51, '', '', '', 'Yêu Lại Từ Đầu', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/yeulaitudau_khacviet.jpg', 'Khắc Việt', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui154/YeuLaiTuDau-KhacViet_354qr.mp3?st=6mB5SYc38x9S-VxnhpKpkA&e=1575356426&download=true', 0),
(52, '', '', '', 'Thất Tình', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/thattinh_tdq.jpg', 'Trịnh Đình Quang', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/5db8d3d1789591cbc884/5316827407317516549?authen=exp=1576025851~acl=/5db8d3d1789591cbc884/*~hmac=a0763dbd9058d886bdb4e1df4ce70c83', 0),
(53, '3', '', '13', 'Futari No Kimochi', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/Futari%20No%20Kimochi.jpg', 'V.A', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/59da31e486a06ffe36b1/2208760483996069983?authen=exp=1576019721~acl=/59da31e486a06ffe36b1/*~hmac=b71745731297ce639db64ea69bd137b3', 0),
(54, '', '', '2', 'The Lazy Song', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/Bruno-Mars-Lazy-Song.jpg', 'Bruno Mars', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/4dde252b906f7931207e/996448838228935507?authen=exp=1576029260~acl=/4dde252b906f7931207e/*~hmac=8f2900d72e1a9e9dade1f1c11b612e01', 0),
(55, '', '', '12', 'Em Bằng Lòng Làm Một Người Bình Thường Ở Bên Cạnh Anh', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ebllmnbtbca_vtt.jpg', 'Vương Thất Thất', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/ada7408f6ec88796ded9/2631440968198796563?authen=exp=1576021703~acl=/ada7408f6ec88796ded9/*~hmac=32041bac5dff9c409185ba2c3f9d3bc6', 0),
(56, '7', '', '', 'Tết Về Sớm Nhé (Đi Để Trở Về 4)', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/maxresdefault.jpg', 'Phan Mạnh Quỳnh', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/1b5169fa49bda0e3f9ac/3237916223458266515?authen=exp=1576025831~acl=/1b5169fa49bda0e3f9ac/*~hmac=a4d2681fba98cca1fef71b9ca84eea17', 300000),
(57, '', '', '12', 'Ác Ma Đến Từ Thiên Đường', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/amdttd_dtk.jpg', 'Đặng Tử Kỳ', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/ff3db68911cdf893a1dc/5444510976715034651?authen=exp=1576029429~acl=/ff3db68911cdf893a1dc/*~hmac=fb1d590ae3aea5ed0ddf099e214cfe97', 0),
(58, '7', '', '', 'Đi Để Trở Về', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/Didetrove.jpg', 'Soobin Hoàng Sơn', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/56eb74cfad8b44d51d9a/3986391471890296699?authen=exp=1576026184~acl=/56eb74cfad8b44d51d9a/*~hmac=4264a70e58b53576d9077a7c09efd7a5', 0),
(60, '', '', '12', 'Tâm Lặng Như Nước', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/tlnn_ice.jpg', 'Ice Paper', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/79cfee8cc1cb289571da/3070042518251613032?authen=exp=1576028399~acl=/79cfee8cc1cb289571da/*~hmac=d04a8f45ec56e5ed1d9cd44230dde2f1', 0),
(62, '', '', '12', 'Gặp Em Đúng Lúc', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/gedl_lt.jpg', 'Luân Tang, Tiêu Ức Tình, Huyền Thương', 'https://vnso-zn-5-tf-mp3-s1-zmp3.zadn.vn/3a5d6a70b834516a0825/8380362505694953369?authen=exp=1575329507~acl=/3a5d6a70b834516a0825/*~hmac=a52ae479f4aec38432217f12f06a42c4&filename=Gap-Em-Dung-Luc-%E5%89%9B%E5%A5%BD%E9%81%87%E8%A6%8B%E4%BD%A0-Luan-Tang-Tieu-Uc-Tinh-Huyen-Thuong.mp3', 0),
(63, '7', '', '', 'Sẽ Hứa Đi Cùng Nhau (Đi Để Trở Về 3)', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/DiDeTroVe3.jpg', 'Soobin Hoàng Sơn, Da LAB', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/30e473184d5fa401fd4e/6998755151495572630?authen=exp=1576020175~acl=/30e473184d5fa401fd4e/*~hmac=5f369ca7bfeb3404c5e60c398dd14888', 0),
(64, '', '', '12', 'Phật Hệ Thiếu Nữ / 佛系少女', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/phtn_pdm.jpg', 'Phùng Đề Mạc', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/8df295344770ae2ef761/2266275595132987966?authen=exp=1576027699~acl=/8df295344770ae2ef761/*~hmac=02f5c6c3502d78ea6052298a9b0d0252', 0),
(65, '', '', '12', 'Yêu Rồi / 恋爱啦', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/yr_nt.jpg', 'Ngải Thần', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/c0b144a595e17cbf25f0/7920167229000896592?authen=exp=1576024995~acl=/c0b144a595e17cbf25f0/*~hmac=327724bc5e4cbfe3ee83a70e872f9dde', 0),
(66, '', '', '12', 'Mỗi Câu Đều Ngọt Ngào', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/mcdnn_htl.jpg', 'Hạ Tử Linh', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/76c5d8d10995e0cbb984/1212731639255263744?authen=exp=1576029036~acl=/76c5d8d10995e0cbb984/*~hmac=009603323f2c07056ab5fcd9ed7c7b9e', 0),
(67, '7', '', '', 'Về Nhà Ăn Tết', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/VeNhaAnTet.jpg', 'BigDaddy ft. JustaTee ft. Onionn', 'https://vnso-zn-16-tf-mp3-320s1-zmp3.zadn.vn/2a6ed72e396ad034897b/8330595981509857186?authen=exp=1576021976~acl=/2a6ed72e396ad034897b/*~hmac=3e6ea5e96a6b313e87037bfaaf7fde15', 20000),
(69, '7', '', '', 'Tết Nhà Bà Hoan ( Parody ) ', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/TetnhabaHoan.jpg', 'LEG', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/f84fa7c8718c98d2c19d/4459900836884610373?authen=exp=1576029876~acl=/f84fa7c8718c98d2c19d/*~hmac=d319c20a56ae968eabfbd810399d57d3', 50001),
(70, '', '', '', 'Sai Lầm Của Anh', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/sailamcuaanh.jpg', 'Đình Dũng', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/afc1b7bb91fc78a221ed/1088771973478961784?authen=exp=1576029422~acl=/afc1b7bb91fc78a221ed/*~hmac=1fb269e3f9cd4bf7c76f372abe6313df', 1000000),
(71, '', '', '', 'Người Ấy', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/na_ttb.jpg', 'Trịnh Thăng Bình', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/ad1589043240db1e8251/2756256655227564993?authen=exp=1576024842~acl=/ad1589043240db1e8251/*~hmac=1707509ff1bb4394e0f470f6272be19c', 0),
(72, '', '', '', 'Tình Yêu Hoa Gió', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/tyhg-ttv.jpg', 'Trương Thế Vinh', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/1c5be33177759e2bc764/5648544872703174965?authen=exp=1576025104~acl=/1c5be33177759e2bc764/*~hmac=86577c3106de306949509b05ec4be41b', 0),
(73, '3', '', '13', 'Lemon Cover', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/Lemon.jpg', 'Yurisa', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui985/LemonCover-Yurisa-6011032.mp3?st=Aajnl16nCOcvYaAm-nFrRw&e=1575337684&download=true', 200000),
(74, '', '', '', 'Tìm Lại Bầu Trời', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/tlbt_th.jpg', 'Tuấn Hưng', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/f3d219ada8e941b718f8/5118065580009954016?authen=exp=1576023840~acl=/f3d219ada8e941b718f8/*~hmac=2187e6adf3182f0ad79a6eb7684e01cd', 0),
(75, '', '', '', 'Lãng Quên Chiều Thu', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/lqct_hv.jpg', 'Hoa Vinh', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/cfec0340d3043a5a6315/1039611800034886818?authen=exp=1576020526~acl=/cfec0340d3043a5a6315/*~hmac=b333a16f1cc5806bd951cd028ee243f3', 0),
(76, '', '', '', 'Losing My Mind', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/lmm_lsg.jpg', 'Lee Seung Gi', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/63731d6caa2843761a39/3547680348429460080?authen=exp=1576030257~acl=/63731d6caa2843761a39/*~hmac=f4789155475c7156133eb975d8c809b7', 0),
(77, '3', '', '13', 'Shugorei', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/Yunomi%20&%20nicamoq.jpg', ' Yunomi, Nicamoq', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui979/Shugorei-YunomiNicamoq-5915639.mp3?st=Bjp3JjPsfYBRbanWSFxZQQ&e=1575944045&t=1575857646031', 30000),
(78, '8', '', '', 'Because I\'m Stupid', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/bis_ss501.jpg', 'SS501', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/4bab966d2029c9779038/4613783196132333580?authen=exp=1576027071~acl=/4bab966d2029c9779038/*~hmac=a19788442d51b2ff064cbb29b04a0945', 0),
(79, '3', '', '13', 'RADWIMPS', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ADWIMPS%20-%20Grand%20Escape.jpg', 'Grand Escape ft. Toko Miura', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui988/GrandEscapeExtendedEdit-RADWIMPSTokoMiura-6060714.mp3?st=S4SDps8KP5L8OaFalI51bA&e=1575338803&download=true', 100000003),
(80, '8', '', '', 'Stand By Me', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/sbm_shinee.jpg', 'SHINEE', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/bccb660dd04939176058/4163832021979556887?authen=exp=1576026498~acl=/bccb660dd04939176058/*~hmac=ccd67fa72148c34f0417b790811a510f', 0),
(81, '3', '', '4', 'True Damage', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/True%20Damage.jpg', 'GIANTS (ft. Becky G, Keke Palmer, SOYEON, DUCKWRTH, Thutmose) | League of Legends', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui992/Giants-TrueDamageBeckyGKekePalmerSoYeonGIDLEDUCKWRTHThutmoseLeagueOfLegends-6136783_hq.mp3?st=TK5KQf0C3d9KyYNfIQAKcw&e=1575339001&download=true', 200000),
(82, '8', '', '', 'Paradise', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/sbm_shinee.jpg', 'V.A', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/41e69d202b64c23a9b75/7348790013940162773?authen=exp=1575592980~acl=/41e69d202b64c23a9b75/*~hmac=39f452698cd07343e0c616a0de90a01f', 0),
(83, '8', '', '', 'Do You Know', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/sbm_shinee.jpg', 'SomeDay', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/9834dae579a190ffc9b0/4682526949303355578?authen=exp=1576027186~acl=/9834dae579a190ffc9b0/*~hmac=e849c82b11ae07d3a4ed4a3bb231d1b3', 0),
(84, '10', '', '12', 'Có Chút Ngọt / 有点甜', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ccn_utl-by2.jpg', 'Uông Tô Lang, By2', 'https://vnso-zn-5-tf-mp3-320s1-zmp3.zadn.vn/96ae94a825ecccb295fd/6984715727885805978?authen=exp=1576026636~acl=/96ae94a825ecccb295fd/*~hmac=c48c5ff67d1d3e7b9095fa673d1f6cef', 1),
(85, '9', '', '', 'Nightcore - Senpai (Deeper version) ', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/senpai.jpg', 'V.A', 'https://c1-ex-swe.nixcdn.com/NhacCuaTui968/Senpai-Nightcore-5603317.mp3?st=FLXKfkjq8FdJNA8I6Iya_Q&e=1575339643&download=true', 10000002),
(86, '', '', '12', 'Người Theo Đuổi Ánh Sáng / 追光者', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ntdas_tv.jpg', 'Từ Vi', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/e79bc75a151efc40a50f/4447451830101602171?authen=exp=1576149457~acl=/e79bc75a151efc40a50f/*~hmac=6d828cf7a2534f5a96369e2b09e684bf', 0),
(87, '', '', '12', 'Học Mèo Kêu (学猫叫)', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/hocmeokeu_tpp-ttp.jpg', 'Tiểu Phan Phan, Tiểu Phong Phong', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/6cd6f1742130c86e9121/3380300905963529436?authen=exp=1576149490~acl=/6cd6f1742130c86e9121/*~hmac=fbece929bcff799ea3132c27819edf5f', 0),
(88, '9', '', '13', 'I Wish I Had Never Met You', 'https://annamusic.000webhostapp.com/I%20Wish%20I%20Had%20Never%20Met%20You.jpg', 'Inoran', '', 0),
(89, '8', '', '', 'Lucky', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/sbm_shinee.jpg', 'V.A', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/26b0fd764b32a26cfb23/5258704370699209668?authen=exp=1576150750~acl=/26b0fd764b32a26cfb23/*~hmac=bf3d7f7952dfe1166d4d0947346ad9f1', 0),
(90, '11', '', '', 'Ittou Ryouran', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/Shimosa.jpg', ' Rokka', '', 0),
(91, '11', '', '', 'Lose Your Way', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/LoseYourWay.jpg', ' Round Table, Dan', '', 0),
(92, '11', '', '', 'Nisha Senitsu ', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/Shimosa.jpg', 'Rokka', '', 0),
(93, '12', '', '15', 'Anh Thương Em Nhất Mà', 'https://annaplay.000webhostapp.com/Hinhanh/Album/hoa_kaito.jpg', 'Lã, Log, TiB', 'https://annamusic.000webhostapp.com/Anh%20Th%C6%B0%C6%A1ng%20Em%20Nh%E1%BA%A5t%20M%C3%A0%20-%20L%C3%A3.%20x%20Log%20x%20TiB.mp3', 2000000),
(94, '12', '', '15', 'Buồn Của Anh', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/buoncuaanh.jpg', 'K-ICM, Đạt G, Masew', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/a98736a4e2e00bbe52f1/665228756278513821?authen=exp=1576149567~acl=/a98736a4e2e00bbe52f1/*~hmac=c0cde704dabf1f9acab80effe2b7de28', 0),
(95, '3', '', '', 'Bông Hoa Chẳng Thuộc Về Ta', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/hoa.jpg', 'Việt, Deus', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/465759526015894bd004/4274927593654348250?authen=exp=1576149289~acl=/465759526015894bd004/*~hmac=f52d8a730aa7ad8cabf9c2ed55de3b9a', 10001),
(96, '12', '', '15', 'Ngày Mai Em Đi (Touliver Mix)', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/ngaymaiemdi.jpg', 'Touliver, Lê Hiếu, Soobin Hoàng Sơn', 'https://vnso-zn-15-tf-mp3-320s1-zmp3.zadn.vn/d9e15c49860d6f53361c/1936203574360723149?authen=exp=1576149226~acl=/d9e15c49860d6f53361c/*~hmac=f5c0accec1e056f7786aed8270439f70', 100000),
(97, '', '', '', 'I Know You Know', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/iknowyouknow_soobin.jpg', 'Soobin Hoàng Sơn', 'https://vnso-zn-6-tf-mp3-320s1-zmp3.zadn.vn/7ad10711d055390b6044/8583183854840171487?authen=exp=1576150204~acl=/7ad10711d055390b6044/*~hmac=5b4189e6cb86eb0519c9a587cc5aaf9e', 2000),
(98, '', '', '', 'Day Dứt Nỗi Đau (Cover)', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/AnnaPlay_icon.png', 'Lê Vũ Bình', 'https://vnso-zn-10-tf-mp3-320s1-zmp3.zadn.vn/0edfd44e7f0a9654cf1b/8216876961137759982?authen=exp=1576155201~acl=/0edfd44e7f0a9654cf1b/*~hmac=585230cc6dce4bdecded8283ed6c6258', 1000),
(99, '', '', '', 'Lỡ Như Anh Yêu Em?', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/lonhuanhyeuem_chidan.jpg', 'Chi Dân', 'https://vnso-zn-11-tf-mp3-320s1-zmp3.zadn.vn/cd8b32cee58a0cd4559b/6442516503730900195?authen=exp=1576199975~acl=/cd8b32cee58a0cd4559b/*~hmac=580e5e06f39c85bbfc56e438dca41874', 500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `IdChuDe` int(11) NOT NULL,
  `TenChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`IdChuDe`, `TenChuDe`, `HinhChuDe`) VALUES
(1, 'Trending', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_trending.jpg'),
(2, 'Nhạc Việt', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_music_vn.jpg'),
(3, 'Nhạc Âu Mỹ', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_music_us.jpg'),
(4, 'Nhạc Hàn', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_music_kr.jpg'),
(5, 'Nhạc Hoa', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_music_cn.jpg'),
(6, 'Trữ Tình & Bolero', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_bolero.jpg'),
(7, 'EDM', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_edm.jpg'),
(8, 'Tình Yêu', 'https://annaplay.000webhostapp.com/Hinhanh/Chude/cd_love.jpg'),
(9, 'Hoa thích điều này!', 'https://annaplay.000webhostapp.com/Hinhanh/Album/hoa_kaito.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `IdPlayList` int(11) NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinhnen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinhicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`IdPlayList`, `Ten`, `Hinhnen`, `Hinhicon`) VALUES
(1, 'Top 100 Nhạc Trẻ Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/back_top100nhactre.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100nhactre.jpg'),
(2, 'Top 100 Pop Âu Mỹ Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100aumy.jpg'),
(3, 'Top 100 Nhạc Trữ Tình Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100trutinh.jpg'),
(4, 'Top 100 Nhạc Electronic/Dance Âu Mỹ Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100edm.jpg'),
(5, 'Top 100 Nhạc Rap Việt Nam Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100rapviet.jpg'),
(6, 'Top 100 Nhạc Phim Việt Nam Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100nhacphimvn.jpg'),
(7, 'Top 100 Nhạc EDM Việt Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100edmviet.jpg'),
(8, 'Top 100 Nhạc V-Pop Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100vpop.jpg'),
(9, 'Top 100 Cải Lương Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100cailuong.jpg'),
(10, 'Nhạc yêu thích của An', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/myplaylist.jpg'),
(11, 'Top 100 Nhạc Hàn Quốc Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100korean.jpg'),
(12, 'Top 100 Nhạc Hoa Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100china.jpg'),
(13, 'Top 100 Nhạc Nhật Bản Hay Nhất', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100track.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/top100japan.jpg'),
(14, 'Những bài HIT của ca sĩ NaNa', 'https://annaplay.000webhostapp.com/Hinhanh/Playlist/background_nana.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Baihat/na_ngu.jpg'),
(15, 'Cô gái năm ấy tôi theo đuổi', 'https://annaplay.000webhostapp.com/Hinhanh/Album/hoa_kaito.jpg', 'https://annaplay.000webhostapp.com/Hinhanh/Album/hoa_kaito.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `Id` int(11) NOT NULL,
  `Hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Idbaihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`Id`, `Hinhanh`, `Noidung`, `Idbaihat`) VALUES
(1, 'https://annaplay.000webhostapp.com/Hinhanh/Quangcao/alnte_quanap.jpg', 'Ca khúc debut của Quân A.P', 3),
(2, 'https://annaplay.000webhostapp.com/Hinhanh/Quangcao/nnca_mtp.jpg', 'Ca khúc comback của Sếp', 4),
(3, 'https://annaplay.000webhostapp.com/Hinhanh/Quangcao/dab_chidan.jpg', 'Bài hát về tình yêu ngọt ngào của ca sĩ Chi Dân', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `IdTheLoai` int(11) NOT NULL,
  `IdChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`IdTheLoai`, `IdChuDe`, `TenTheLoai`, `HinhTheLoai`) VALUES
(1, '1', 'Nhạc Trẻ', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_nhactre.jpg'),
(2, '1', 'EDM', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_edm.jpg'),
(3, '1', 'Hip-Hop', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_hiphop.jpg'),
(4, '0', 'Nhạc Không Lời', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_koloi.jpg'),
(5, '0', 'Latin', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_latin.jpg'),
(6, '0', 'R&B', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_r&b.jpg'),
(7, '0', 'Nhạc Dance', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_musicdance.jpg'),
(8, '0', 'Nhạc Hoa', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_music_cn.jpg'),
(9, '0', 'Nhạc Âu Mỹ', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_music_us.jpg'),
(10, '0', 'K-Pop', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_kpop.jpg'),
(11, '0', 'Nhạc Thiếu Nhi', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_nhacthieunhi.jpg'),
(12, '0', 'Country', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_country.jpg'),
(13, '0', 'Rap Việt', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_rapviet.jpg'),
(14, '0', 'Trữ Tình & Bolero', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_bolero.jpg'),
(15, '0', 'Nhạc Nhật', 'https://annaplay.000webhostapp.com/Hinhanh/Theloai/tl_music_jp.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`IdAlbum`);

--
-- Chỉ mục cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`IdBaiHat`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`IdChuDe`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`IdPlayList`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`IdTheLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `IdAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `baihat`
--
ALTER TABLE `baihat`
  MODIFY `IdBaiHat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `IdChuDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `IdPlayList` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `IdTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
