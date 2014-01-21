-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 21, 2014 at 01:07 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `otw`
--
CREATE DATABASE IF NOT EXISTS `otw` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `otw`;

-- --------------------------------------------------------

--
-- Table structure for table `evaluacija`
--

CREATE TABLE IF NOT EXISTS `evaluacija` (
  `id_evaluacija` int(11) NOT NULL AUTO_INCREMENT,
  `klient_id` int(11) NOT NULL,
  `period` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datum` date NOT NULL,
  `evaluiral` int(11) DEFAULT NULL,
  `planirani_celi` text NOT NULL,
  `ostvareni_celi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `narativen_izvestaj` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `novi_celi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `preporaki` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_evaluacija`),
  KEY `klient_id` (`klient_id`),
  KEY `evaluiral` (`evaluiral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE IF NOT EXISTS `evenement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`id`, `title`, `start`, `end`) VALUES
(1, 'dsdas', '2014-01-01 00:00:00', '0000-00-00 00:00:00'),
(2, 'matej', '2014-01-08 00:00:00', '0000-00-00 00:00:00'),
(3, 'sof00000', '2013-12-31 00:00:00', '2013-12-31 00:00:00'),
(4, 'kj', '2014-01-07 00:00:00', '2014-01-07 00:00:00'),
(5, 'yitiijoij', '2014-01-10 08:30:00', '2014-01-10 09:00:00'),
(6, 'matej e najubav', '2013-12-30 02:00:00', '2013-12-30 02:30:00'),
(7, 'proveka dali raboti', '2014-01-07 09:00:00', '2014-01-07 13:30:00'),
(8, 'proverka dali e all day', '2014-01-06 08:00:00', '2014-01-06 08:30:00'),
(9, 'Gluposti', '2014-01-06 09:00:00', '2014-01-06 09:30:00'),
(10, 'a', '2014-01-06 08:00:00', '2014-01-06 08:30:00'),
(50, 'aaa', '2014-01-17 09:00:00', '2014-01-17 09:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `firma`
--

CREATE TABLE IF NOT EXISTS `firma` (
  `id_firma` int(11) NOT NULL AUTO_INCREMENT,
  `ime_firma` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_firma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `institucija`
--

CREATE TABLE IF NOT EXISTS `institucija` (
  `id_institucija` int(11) NOT NULL AUTO_INCREMENT,
  `ime_institucija` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_institucija`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `institucija`
--

INSERT INTO `institucija` (`id_institucija`, `ime_institucija`) VALUES
(1, 'Завод за рехабилитација'),
(2, 'Установа за психички напредок'),
(3, 'Институција која помага');

-- --------------------------------------------------------

--
-- Table structure for table `klient`
--

CREATE TABLE IF NOT EXISTS `klient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime_prezime` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_raganje` date DEFAULT NULL,
  `pol` tinyint(4) DEFAULT NULL,
  `adresa` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `majka` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `zanimanje_m` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vraboten_m` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_m` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tatko` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `zanimanje_t` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vraboten_t` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_t` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tip_poseta` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tip_obrazovanie` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_prva_poseta` date DEFAULT NULL,
  `upaten_od` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `primen_od` int(11) DEFAULT NULL,
  `procenka_napravil` int(11) DEFAULT NULL,
  `plan_napravil` int(11) DEFAULT NULL,
  `datum_plan` date DEFAULT NULL,
  `raboti_so` int(11) DEFAULT NULL,
  `nastavnik` int(11) DEFAULT NULL,
  `odgovoren_firma` int(11) DEFAULT NULL,
  `motorika` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `kognitivni_spos` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `govor_komunikacija` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `pismenost` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `odnesuvanje` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rizici` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `opkruzuvanje` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `interesi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `kompjuterski_vestini` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dolgorocni_celi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `kratkorocni_celi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `uredi_softver` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `metodi_frekvencija` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ocekuvani_rezultati` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `planirana_evaluacija_postaveni_celi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ocekuvanja_klient` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ocekuvanja_roditel` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `komentar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `datum_na_procenka` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plan_napravil_index` (`plan_napravil`) COMMENT 'povrzuvanje na klientot so vraboteniot koj go napravil negoviot plan',
  KEY `tip_poseta` (`tip_poseta`),
  KEY `tip_obrazovanie` (`tip_obrazovanie`),
  KEY `nastavnik` (`nastavnik`),
  KEY `odgovoren_firma` (`odgovoren_firma`),
  KEY `primen_od` (`primen_od`),
  KEY `raboti_so` (`raboti_so`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` (`id`, `ime_prezime`, `datum_raganje`, `pol`, `adresa`, `majka`, `zanimanje_m`, `vraboten_m`, `tel_m`, `tatko`, `zanimanje_t`, `vraboten_t`, `tel_t`, `tip_poseta`, `tip_obrazovanie`, `datum_prva_poseta`, `upaten_od`, `primen_od`, `procenka_napravil`, `plan_napravil`, `datum_plan`, `raboti_so`, `nastavnik`, `odgovoren_firma`, `motorika`, `kognitivni_spos`, `govor_komunikacija`, `pismenost`, `odnesuvanje`, `rizici`, `opkruzuvanje`, `interesi`, `kompjuterski_vestini`, `dolgorocni_celi`, `kratkorocni_celi`, `uredi_softver`, `metodi_frekvencija`, `ocekuvani_rezultati`, `planirana_evaluacija_postaveni_celi`, `ocekuvanja_klient`, `ocekuvanja_roditel`, `komentar`, `datum_na_procenka`) VALUES
(1, 'matej petrov', '1961-02-02', 0, 'Moskovska 7/3-6', 'Elena Mitreva', 'доктор', 'тука', '070862369', 'goran petrov', 'car', 'tuka', '789456123', 'континуирани', 'високо', NULL, 'mene', 2, 1, 1, '0000-00-00', 1, NULL, NULL, 'motorika ', 'kognitivni sposobnosti 1', 'govor/komunikacija 1', 'pismenost 1', 'odnesuvanje 1', 'rizici 1', 'opkruzivanje 1', 'interesi 1', 'kompjuterski vestini 1', 'dolgorocni celi 1', 'kratkorocni celi 1', 'asistivni uredi i softver 1', 'metodi i frekvencija 1', 'ocekuvani rezultati 1', 'planirana evaluacija na postavenite celi 1', 'golemo', 'golemo', 'no comment', '2014-01-20'),
(2, 'Игор Петров', '1962-02-02', 0, 'Moskovska 7/3-6', 'Elena Mitreva', 'доктор', 'тука', '070862369', 'goran petrov', 'car', 'tuka', '789456123', 'континуирани', 'високо', NULL, 'тебе', 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'големо', 'големо', 'убав коментар', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `klient_terapevt`
--

CREATE TABLE IF NOT EXISTS `klient_terapevt` (
  `id_klient` int(11) NOT NULL,
  `id_terapevt` int(11) NOT NULL,
  PRIMARY KEY (`id_klient`,`id_terapevt`),
  KEY `id_terapevt` (`id_terapevt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `klient_terapevt`
--

INSERT INTO `klient_terapevt` (`id_klient`, `id_terapevt`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik_poprecenost`
--

CREATE TABLE IF NOT EXISTS `korisnik_poprecenost` (
  `klient_id` int(11) NOT NULL,
  `tip_poprecenost` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`klient_id`,`tip_poprecenost`),
  KEY `korisnik_id` (`klient_id`,`tip_poprecenost`),
  KEY `tip_poprecenost` (`tip_poprecenost`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik_poprecenost`
--

INSERT INTO `korisnik_poprecenost` (`klient_id`, `tip_poprecenost`) VALUES
(2, 'аутизам'),
(2, 'оштетување на вид');

-- --------------------------------------------------------

--
-- Table structure for table `nastavnik`
--

CREATE TABLE IF NOT EXISTS `nastavnik` (
  `id_nastavnik` int(11) NOT NULL AUTO_INCREMENT,
  `nastavnik_ime_prezime` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uciliste` int(11) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_nastavnik`),
  KEY `uciliste` (`uciliste`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nastavnik`
--

INSERT INTO `nastavnik` (`id_nastavnik`, `nastavnik_ime_prezime`, `uciliste`, `mail`, `telefon`) VALUES
(1, 'Ирена Пантова', 1, 'irena.panotva@gmail.com', NULL),
(2, 'Билјана Пеоска', 2, 'biba.p@gmail.com', '071587456');

-- --------------------------------------------------------

--
-- Table structure for table `odgovoren_firma`
--

CREATE TABLE IF NOT EXISTS `odgovoren_firma` (
  `id_odgovoren` int(11) NOT NULL AUTO_INCREMENT,
  `odgovoren_ime_prezime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firma` int(11) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_odgovoren`),
  KEY `firma` (`firma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poseta`
--

CREATE TABLE IF NOT EXISTS `poseta` (
  `id_poseta` int(11) NOT NULL AUTO_INCREMENT,
  `klient_id` int(11) NOT NULL,
  `cel` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `realizacija` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postignuvanja` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `poteskotii` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `plan_naredna_poseta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kategorija` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_poseta`),
  KEY `klient_id` (`klient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `terapevt`
--

CREATE TABLE IF NOT EXISTS `terapevt` (
  `id_terapevt` int(11) NOT NULL AUTO_INCREMENT,
  `terapevt_ime_prezime` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `institucija` int(11) DEFAULT NULL,
  `mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefon` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_terapevt`),
  KEY `institucija` (`institucija`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `terapevt`
--

INSERT INTO `terapevt` (`id_terapevt`, `terapevt_ime_prezime`, `institucija`, `mail`, `telefon`) VALUES
(1, 'Александра Трајкова', 1, 'a.trajkova@gmail.com', '070654321'),
(2, 'Маја Сапунова', 2, 'maja.sapunova@gmail.com', '070963456'),
(3, 'Ангел Станковски', 3, 'angel.s@yahoo.com', '070123789');

-- --------------------------------------------------------

--
-- Table structure for table `tip_obrazovanie`
--

CREATE TABLE IF NOT EXISTS `tip_obrazovanie` (
  `tip_obrazovanie` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tip_obrazovanie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tip_obrazovanie`
--

INSERT INTO `tip_obrazovanie` (`tip_obrazovanie`) VALUES
('високо'),
('основно-посебно'),
('основно-редовно'),
('предучилишно'),
('средно-посебно'),
('средно-редовно');

-- --------------------------------------------------------

--
-- Table structure for table `tip_poprecenost`
--

CREATE TABLE IF NOT EXISTS `tip_poprecenost` (
  `tip_poprecenost` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tip_poprecenost`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tip_poprecenost`
--

INSERT INTO `tip_poprecenost` (`tip_poprecenost`) VALUES
('аутизам'),
('интелектуална'),
('оштетување на вид'),
('оштетување на слух'),
('потешкотии во учење'),
('телесна');

-- --------------------------------------------------------

--
-- Table structure for table `tip_poseta`
--

CREATE TABLE IF NOT EXISTS `tip_poseta` (
  `tip_poseta` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tip_poseta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tip_poseta`
--

INSERT INTO `tip_poseta` (`tip_poseta`) VALUES
('континуирани'),
('по потреба'),
('повремени');

-- --------------------------------------------------------

--
-- Table structure for table `uciliste`
--

CREATE TABLE IF NOT EXISTS `uciliste` (
  `id_uciliste` int(11) NOT NULL AUTO_INCREMENT,
  `ime_uciliste` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_uciliste`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `uciliste`
--

INSERT INTO `uciliste` (`id_uciliste`, `ime_uciliste`) VALUES
(1, 'ОУ Јан Амос Коменски'),
(2, 'СУГС Георги Димитров'),
(3, 'ОУ Кочо Рацин');

-- --------------------------------------------------------

--
-- Table structure for table `vraboten`
--

CREATE TABLE IF NOT EXISTS `vraboten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime_prezime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vraboten`
--

INSERT INTO `vraboten` (`id`, `ime_prezime`, `username`, `password`, `slika`) VALUES
(1, 'Matej Petrov', 'matejpetrov', 'matej', 'no_image.gif'),
(2, 'Igor Petrov', 'igorpetrov', 'igor', 'no_image.gif'),
(5, 'Goran Petrov', 'goranpetrov', 'goran', 'matejGuitarBirdsEyeView.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `evaluacija`
--
ALTER TABLE `evaluacija`
  ADD CONSTRAINT `evaluacija_za_klient` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evauliral_vraboten` FOREIGN KEY (`evaluiral`) REFERENCES `vraboten` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `nastavnik` FOREIGN KEY (`nastavnik`) REFERENCES `nastavnik` (`id_nastavnik`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `odgovoren` FOREIGN KEY (`odgovoren_firma`) REFERENCES `odgovoren_firma` (`id_odgovoren`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `plan_napravil_index` FOREIGN KEY (`plan_napravil`) REFERENCES `vraboten` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `primen_od` FOREIGN KEY (`primen_od`) REFERENCES `vraboten` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `raboti_so` FOREIGN KEY (`raboti_so`) REFERENCES `vraboten` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tip_na_obrazovanie` FOREIGN KEY (`tip_obrazovanie`) REFERENCES `tip_obrazovanie` (`tip_obrazovanie`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tip_na_poseta` FOREIGN KEY (`tip_poseta`) REFERENCES `tip_poseta` (`tip_poseta`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `klient_terapevt`
--
ALTER TABLE `klient_terapevt`
  ADD CONSTRAINT `klient_terapevt_ibfk_1` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `klient_terapevt_ibfk_2` FOREIGN KEY (`id_terapevt`) REFERENCES `terapevt` (`id_terapevt`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `korisnik_poprecenost`
--
ALTER TABLE `korisnik_poprecenost`
  ADD CONSTRAINT `poprecenist_za_klient` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tip_poprecenost` FOREIGN KEY (`tip_poprecenost`) REFERENCES `tip_poprecenost` (`tip_poprecenost`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nastavnik`
--
ALTER TABLE `nastavnik`
  ADD CONSTRAINT `ucilisten_na_nastavnik` FOREIGN KEY (`uciliste`) REFERENCES `uciliste` (`id_uciliste`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `odgovoren_firma`
--
ALTER TABLE `odgovoren_firma`
  ADD CONSTRAINT `firma_na_odgovoren` FOREIGN KEY (`firma`) REFERENCES `firma` (`id_firma`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `poseta`
--
ALTER TABLE `poseta`
  ADD CONSTRAINT `poseta_na_klient` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `terapevt`
--
ALTER TABLE `terapevt`
  ADD CONSTRAINT `institucija_na_terapevt` FOREIGN KEY (`institucija`) REFERENCES `institucija` (`id_institucija`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
