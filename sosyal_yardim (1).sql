-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 27 Mar 2019, 23:54:49
-- Sunucu sürümü: 5.7.24
-- PHP Sürümü: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sosyal_yardim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`admin_id`, `userName`, `sifre`) VALUES
(1, 'hukumran2019', 'sifre123'),
(2, 'adminRoot', '201921'),
(3, 'ahmet.yilmaz', '20191920');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adres_bilgileri`
--

DROP TABLE IF EXISTS `adres_bilgileri`;
CREATE TABLE IF NOT EXISTS `adres_bilgileri` (
  `adres_id` int(12) NOT NULL AUTO_INCREMENT,
  `mahalle` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `sokak` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `apartman` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kat` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kapi_no` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`adres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adres_bilgileri`
--

INSERT INTO `adres_bilgileri` (`adres_id`, `mahalle`, `sokak`, `apartman`, `kat`, `kapi_no`) VALUES
(1, 'ATATÜRK MAHALLESİ', '222/7', 'Aslan Apartmanı', '1', '5'),
(2, 'Mahalle...', '', '', '', ''),
(3, 'GÖKSU MAHALLESİ', '223/98', '78', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinsiyet`
--

DROP TABLE IF EXISTS `cinsiyet`;
CREATE TABLE IF NOT EXISTS `cinsiyet` (
  `mah` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `sayi` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cinsiyet`
--

INSERT INTO `cinsiyet` (`mah`, `sayi`) VALUES
('Atatürk mah.', 25),
('Cumhuriyet mah.', 16);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `panel_topmenu`
--

DROP TABLE IF EXISTS `panel_topmenu`;
CREATE TABLE IF NOT EXISTS `panel_topmenu` (
  `id_n` int(11) NOT NULL,
  `link_adi` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `link_id` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

DROP TABLE IF EXISTS `sorular`;
CREATE TABLE IF NOT EXISTS `sorular` (
  `yardim_id` int(21) NOT NULL AUTO_INCREMENT,
  `gelir` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `evin_durumu` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `fiziki_durum` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `isinma_durumu` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `aile_birey` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `okuyan_sayi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `uni_sayisi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `y_maas` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ozur_maas` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kurum` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `calisan_kisi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`yardim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`yardim_id`, `gelir`, `evin_durumu`, `fiziki_durum`, `isinma_durumu`, `aile_birey`, `okuyan_sayi`, `uni_sayisi`, `y_maas`, `ozur_maas`, `kurum`, `calisan_kisi`) VALUES
(1, 'Net asgari ücretin %50’sinden fazla olup,%100’üne kadar geliri olanlar', 'Kendi Evi (Brüt 70 m2 den fazla ise)', 'Kötü', 'Kalorifer', 'Daha fazla', '2', '1', 'Evet', 'Hayır', 'Kaymakamlık veya diğer kamu kurumu', 'Bir kişi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `username_surname` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `user_tel` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `tc_kimlik` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `cinsiyet` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `username_surname`, `user_tel`, `tc_kimlik`, `cinsiyet`) VALUES
(1, 'Ahmet', 'Çelik', '05039875623', '52306206532', 'Erkek'),
(2, 'Ceren', 'Ürken', '05039875623', '7412589678', 'Kadın'),
(3, 'Semih ', 'Yarar', '05039875623', '78945612385', 'Erkek');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
