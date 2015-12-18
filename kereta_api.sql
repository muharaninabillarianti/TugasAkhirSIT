-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2015 at 01:40 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kereta_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE IF NOT EXISTS `daftar` (
  `no_ka` varchar(200) NOT NULL,
  `nama_kereta` varchar(200) NOT NULL,
  `stasiun_keberangkatan` varchar(200) NOT NULL,
  `waktu_keberangkatan` varchar(200) NOT NULL,
  `stasiun_kedatangan` varchar(200) NOT NULL,
  `waktu_kedatangan` varchar(200) NOT NULL,
  `waktu_yang_ditempuh` varchar(200) NOT NULL,
  `id_kelas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`no_ka`, `nama_kereta`, `stasiun_keberangkatan`, `waktu_keberangkatan`, `stasiun_kedatangan`, `waktu_kedatangan`, `waktu_yang_ditempuh`, `id_kelas`) VALUES
('1', 'Argo Bromo Anggrek Pagi', 'Surabaya Pasarturi (SBI)', '08.00', 'Gambir (GMR)', '17.00', '09 jam', '1'),
('2', 'Argo Bromo Anggrek Pagi', 'Gambir (GMR)', '09.30', 'Surabaya Pasarturi (SBI)', '18.30', '09 jam', '1'),
('3', 'Argo Bromo Anggrek Malam', 'Surabaya Pasarturi (SBI)', '20.00', 'Gambir (GMR)', '04.57', '08 jam 57 menit', '1'),
('4', 'Argo Bromo Anggrek Malam', 'Gambir (GMR)', '21.30', 'Surabaya Pasarturi (SBI)', '06.30', '09 jam', '1'),
('5', 'Argo Wilis', 'Surabaya Gubeng (SGU)', '07.00', 'Bandung (BD)', '19.06', '12 jam 06 menit', '1'),
('6', 'Argo Wilis', 'Bandung (BD)', '08.30', 'Surabaya Gubeng (SGU)', '20.19', '11 jam 45 menit', '1'),
('7', 'Argo Lawu', 'Solo Balapan (SLO)', '08.00', 'Gambir (GMR)', '16.22', '08 jam 22 menit', '1'),
('8', 'Argo Lawu', 'Gambir (GMR)', '20.15', 'Solo Balapan (SLO)', '04.45', '08 jam 30 menit', '1'),
('9', 'Argo Dwipangga', 'Solo Balapan (SLO)', '20.00', 'Gambir (GMR)', '04.28', '08 jam 28 menit', '1'),
('10', 'Argo Dwipangga', 'Gambir (GMR)', '08.00', 'Solo Balapan (SLO)', '16.35', '08 jam 35 menit', '1'),
('11', 'Argo Sindoro', 'Semarang Tawang (SMT)', '06.00', 'Gambir (GMR)', '11.59', '05 jam 59 menit', '1'),
('12', 'Argo Sindoro', 'Gambir (GMR)', '16.15', 'Semarang Tawang (SMT)', '22.15', '06 jam', '1'),
('13', 'Argo Muria', 'Semarang Tawang (SMT)', '16.00', 'Gambir (GMR)', '22.06', '06 jam 06 menit', '1'),
('14', 'Argo Muria', 'Gambir (GMR)', '07.00', 'Semarang Tawang (SMT)', '13.00', '06 jam', '1'),
('15', 'Argo Jati', 'Cirebon (CN)', '05.45', 'Gambir (GMR)', '08.36', '02 jam 51 menit', '1'),
('16', 'Argo Jati', 'Gambir (GMR)', '09.10', 'Cirebon (CN)', '11.55', '02 jam 45 menit', '1'),
('17', 'Argo Jati', 'Cirebon (CN)', '14.00', 'Gambir (GMR)', '16.48', '02 jam 48 menit', '1'),
('18', 'Argo Jati', 'Gambir (GMR)', '17.15', 'Cirebon (CN)', '19.58', '02 jam 43 menit', '1'),
('19', 'Argo Parahyangan', 'Bandung (BD)', '05.00', 'Gambir (GMR)', '08.04', '03 jam 04 menit', '4'),
('20', 'Argo Parahyangan', 'Gambir (GMR)', '05.00', 'Bandung (BD)', '08.34', '03 jam 34 menit', '4'),
('21', 'Argo Parahyangan (Eksekutif-Bisnis)', 'Bandung (BD)', '06.30', 'Gambir (GMR)', '09.40', '03 jam 10 menit', '4'),
('22', 'Argo Parahyangan', 'Gambir (GMR)', '08.30', 'Bandung (BD)', '11.59', '03 jam 29 menit', '4'),
('23', 'Argo Parahyangan', 'Bandung (BD)', '11.50', 'Gambir (GMR)', '14.57', '03 jam 07 menit', '4'),
('24', 'Argo Parahyangan (Eksekutif-Bisnis)', 'Gambir (GMR)', '10.15', 'Bandung (BD)', '13.35', '03 jam 20 menit', '4'),
('25', 'Argo Parahyangan', 'Bandung (BD)', '14.30', 'Gambir (GMR)', '17.47', '03 jam 17 menit', '4'),
('26', 'Argo Parahyangan', 'Gambir (GMR)', '15.30', 'Bandung (BD)', '18.28', '02 jam 58 menit', '4'),
('27', 'Argo Parahyangan (Eksekutif-Bisnis)', 'Bandung (BD)', '16.15', 'Gambir (GMR)', '19.31', '03 jam 16 menit', '4'),
('28', 'Argo Parahyangan', 'Gambir (GMR)', '18.15', 'Bandung (BD)', '21.27', '03 jam 12 menit', '4'),
('29', 'Argo Parahyangan', 'Bandung (BD)', '19.25', 'Gambir (GMR)', '22.34', '03 jam 09 menit', '4'),
('30', 'Argo Parahyangan (Eksekutif-Bisnis)', 'Gambir (GMR)', '20.00', 'Bandung (BD)', '23.12', '03 jam 12 menit', '4'),
('31', 'Argo Parahyangan (Eksekutif-Bisnis)*)', 'Bandung (BD)', '07.35', 'Gambir (GMR)', '10.56', '03 jam 21 menit', '4'),
('32', 'Argo Parahyangan (Eksekutif-Bisnis)*)', 'Gambir (GMR)', '11.45', 'Bandung (BD)', '14.57', '03 jam 12 menit', '4'),
('33', 'Argo Parahyangan', 'Bandung (BD)', '08.35', 'Gambir (GMR)', '11.48', '03 jam 13 menit', '4'),
('34', 'Argo Parahyangan', 'Gambir (GMR)', '12.45', 'Bandung (BD)', '15.47', '03 jam 02 menit', '4'),
('35F', 'Argo Parahyangan (Tambahan)**)', 'Bandung (BD)', '11.00', 'Gambir (GMR)', '14.08', '03 jam 08 menit', '4'),
('36F', 'Argo Parahyangan (Tambahan)**)', 'Gambir (GMR)', '06.30', 'Bandung (BD)', '09.52', '03 jam 22 menit', '4'),
('37F', 'Argo Parahyangan Fakultatif (Eksekutif-Bisnis)***)', 'Bandung (BD)', '04.00', 'Gambir (GMR)', '06.53', '02 jam 53 menit', '4'),
('38F', 'Argo Parahyangan Fakultatif (Eksekutif-Bisnis)***)', 'Gambir (GMR)', '07.15', 'Bandung (BD)', '10.25', '03 jam 10 menit', '4'),
('39F', 'Argo Jati Fakultatif**)', 'Cirebon (CN)', '12.30', 'Gambir (GMR)', '15.22', '02 jam 52 menit', '1'),
('40F', 'Argo Jati Fakultatif**)', 'Gambir (GMR)', '07.30', 'Cirebon (CN)', '10.18', '02 jam 48 menit', '1'),
('41', 'Gajayana', 'Malang (ML)', '13.30', 'Gambir (GMR)', '04.03', '14 jam 33 menit', '1'),
('42', 'Gajayana', 'Gambir (GMR)', '17.45', 'Malang (ML)', '09.20', '15 jam 35 menit', '1'),
('43/46', 'Bima', 'Malang (ML)', '14.25', 'Gambir (GMR)', '05.29', '15 jam 03 menit', '1'),
('44/45', 'Bima', 'Gambir (GMR)', '16.45', 'Malang (ML)', '08.10', '15 jam 25 menit', '1'),
('47', 'Sembrani', 'Surabaya Pasarturi (SBI)', '17.50', 'Gambir (GMR)', '04.16', '10 jam 26 menit', '1'),
('48', 'Sembrani', 'Gambir (GMR)', '19.15', 'Surabaya Pasarturi (SBI)', '05.35', '10 jam 20 menit', '1'),
('49', 'Turangga', 'Surabaya Gubeng (SGU)', '16.30', 'Bandung (BD)', '05.21', '12 jam 51 menit', '1'),
('50', 'Turangga', 'Bandung (BD)', '19.30', 'Surabaya Gubeng (SGU)', '08.12', '12 jam 42 menit', '1'),
('51', 'Taksaka Pagi', 'Yogyakarta (YK)', '08.00', 'Gambir (GMR)', '15.33', '07 jam 33 menit', '1'),
('52', 'Taksaka Pagi', 'Gambir (GMR)', '08.50', 'Yogyakarta (YK)', '16.32', '07 jam 42 menit', '1'),
('53', 'Taksaka Malam', 'Yogyakarta (YK)', '20.00', 'Gambir (GMR)', '03.42', '07 jam 42 menit', '1'),
('54', 'Taksaka Malam', 'Gambir (GMR)', '20.45', 'Yogyakarta (YK)', '04.20', '07 jam 35 menit', '1'),
('55', 'Bangunkarta', 'Surabaya Gubeng (SGU)', '16.00', 'Gambir (GMR)', '04.46', '12 jam 46 menit', '1'),
('56', 'Bangunkarta', 'Gambir (GMR)', '15.00', 'Surabaya Gubeng (SGU)', '03.46', '12 jam 46 menit', '1'),
('57/60', 'Purwojaya', 'Cilacap (CP)', '14.30', 'Gambir (GMR)', '21.23', '06 jam 57 menit', '4'),
('58/59', 'Purwojaya', 'Gambir (GMR)', '22.15', 'Cilacap (CP)', '05.15', '07 jam', '4'),
('61', 'Cirebon Ekspres', 'Cirebon (CN)', '06.15', 'Gambir (GMR)', '09.25', '03 jam 10 menit', '4'),
('62', 'Cirebon Ekspres', 'Gambir (GMR)', '06.00', 'Cirebon (CN)', '09.04', '03 jam 04 menit', '4'),
('63', 'Tegal Bahari', 'Tegal (TG)', '06.00', 'Gambir (GMR)', '10.43', '04 jam 43 menit', '4'),
('64', 'Cirebon Ekspres', 'Gambir (GMR)', '10.00', 'Cirebon (CN)', '13.04', '03 jam 04 menit', '4'),
('65', 'Cirebon Ekspres', 'Cirebon (CN)', '10.00', 'Gambir (GMR)', '13.02', '03 jam 02 menit', '4'),
('66', 'Tegal Bahari', 'Gambir (GMR)', '11.15', 'Tegal (TG)', '15.42', '04 jam 27 menit', '4'),
('67', 'Cirebon Ekspres', 'Cirebon (CN)', '15.15', 'Gambir (GMR)', '18.12', '02 jam 57 menit', '4'),
('68', 'Cirebon Ekspres', 'Gambir (GMR)', '13.45', 'Cirebon (CN)', '16.48', '03 jam 03 menit', '4'),
('69', 'Tegal Bahari', 'Tegal (TG)', '16.40', 'Gambir (GMR)', '21.38', '04 jam 58 menit', '4'),
('70', 'Tegal Bahari', 'Gambir (GMR)', '18.45', 'Tegal (TG)', '23.28', '04 jam 43 menit', '4'),
('71F', 'Cirebon Ekspres Fakultatif****)', 'Cirebon (CN)', '19.20', 'Gambir (GMR)', '22.23', '03 jam 03 menit', '4'),
('72F', 'Cirebon Ekspres Fakultatif****)', 'Gambir (GMR)', '22.45', 'Cirebon (CN)', '01.48', '03 jam 03 menit', '4'),
('73/76', 'Harina', 'Surabaya Pasarturi (SBI)', '16.15', 'Bandung (BD)', '04.26', '12 jam 11 menit', '4'),
('75/74', 'Harina', 'Bandung (BD)', '21.25', 'Surabaya Pasarturi (SBI)', '09.57', '12 jam 32 menit', '4'),
('77', 'Gumarang', 'Surabaya Pasarturi (SBI)', '15.30', 'Pasar Senen (PSE)', '02.58', '11 jam 28 menit', '4'),
('78', 'Gumarang', 'Pasar Senen (PSE)', '15.45', 'Surabaya Pasarturi (SBI)', '03.20', '11 jam 35 menit', '4'),
('79', 'Lodaya Pagi', 'Solo Balapan (SLO)', '07.00', 'Bandung (BD)', '16.00', '09 jam', '4'),
('80', 'Lodaya Pagi', 'Bandung (BD)', '07.20', 'Solo Balapan (SLO)', '16.15', '08 jam 55 menit', '4'),
('81', 'Lodaya Malam', 'Solo Balapan (SLO)', '19.00', 'Bandung (BD)', '04.18', '09 jam 18 menit', '4'),
('82', 'Lodaya Malam', 'Bandung (BD)', '18.55', 'Solo Balapan (SLO)', '04.00', '09 jam 05 menit', '4'),
('83', 'Sancaka Pagi', 'Surabaya Gubeng (SGU)', '07.30', 'Yogyakarta (YK)', '12.55', '05 jam 25 menit', '4'),
('84', 'Sancaka Pagi', 'Yogyakarta (YK)', '06.45', 'Surabaya Gubeng (SGU)', '11.40', '04 jam 55 menit', '4'),
('85', 'Sancaka Sore', 'Surabaya Gubeng (SGU)', '17.25', 'Yogyakarta (YK)', '22.32', '05 jam 07 menit', '4'),
('86', 'Sancaka Sore', 'Yogyakarta (YK)', '16.30', 'Surabaya Gubeng (SGU)', '21.51', '05 jam 21 menit', '4'),
('87', 'Mutiara Timur Siang', 'Surabaya Gubeng (SGU)', '09.00', 'Banyuwangi Baru (BW)', '15.30', '06 jam 30 menit', '4'),
('88', 'Mutiara Timur Siang', 'Banyuwangi Baru (BW)', '09.00', 'Surabaya Gubeng (SGU)', '15.28', '06 jam 28 menit', '4'),
('89', 'Mutiara Timur Malam', 'Surabaya Gubeng (SGU)', '22.00', 'Banyuwangi Baru (BW)', '04.25', '06 jam 25 menit', '4'),
('90', 'Mutiara Timur Malam', 'Banyuwangi Baru (BW)', '22.00', 'Surabaya Gubeng (SGU)', '04.26', '06 jam 26 menit', '4'),
('91/94', 'Ciremai Ekspres', 'Cirebon (CN)', '05.00', 'Bandung (BD)', '09.08', '04 jam 08 menit', '4'),
('93/92', 'Ciremai Ekspres', 'Bandung (BD)', '09.55', 'Cirebon (CN)', '14.05', '04 jam 10 menit', '4'),
('95/98', 'Ciremai Ekspres', 'Cirebon (CN)', '15.00', 'Bandung (BD)', '19.08', '04 jam 08 menit', '4'),
('97/96', 'Ciremai Ekspres', 'Bandung (BD)', '19.45', 'Cirebon (CN)', '23.50', '04 jam 05 menit', '4'),
('99', 'Malabar', 'Malang (ML)', '16.00', 'Bandung (BD)', '08.25', '16 jam 25 menit', '5'),
('100', 'Malabar', 'Bandung (BD)', '16.50', 'Malang (ML)', '09.01', '16 jam 11 menit', '5'),
('101', 'Malioboro Ekspres', 'Malang (ML)', '08.25', 'Yogyakarta (YK)', '15.40', '07 jam 15 menit', '6'),
('102', 'Malioboro Ekspres', 'Yogyakarta (YK)', '07.30', 'Malang (ML)', '15.37', '08 jam 07 menit', '6'),
('103', 'Malioboro Ekspres', 'Malang (ML)', '20.15', 'Yogyakarta (YK)', '03.57', '07 jam 42 menit', '6'),
('104', 'Malioboro Ekspres', 'Yogyakarta (YK)', '20.45', 'Malang (ML)', '04.00', '07 jam 15 menit', '6'),
('111', 'Pangrango/Siliwangi', 'Sukabumi (SI)', '05.00', 'Bogor (BOO)', '07.03', '02 jam 03 menit', '6'),
('112', 'Pangrango/Siliwangi', 'Sukabumi (SI)', '05.45', 'Cianjur (CJ)', '07.08', '01 jam 23 menit', '6'),
('113', 'Pangrango/Siliwangi', 'Cianjur (CJ)', '08.15', 'Bogor (BOO)', '12.08', '03 jam 53 menit', '6'),
('114', 'Pangrango/Siliwangi', 'Bogor (BOO)', '07.55', 'Cianjur (CJ)', '11.43', '03 jam 48 menit', '6'),
('115', 'Pangrango/Siliwangi', 'Cianjur (CJ)', '13.50', 'Bogor (BOO)', '17.48', '03 jam 58 menit', '6'),
('116', 'Pangrango/Siliwangi', 'Bogor (BOO)', '13.25', 'Cianjur (CJ)', '17.13', '03 jam 48 menit', '6'),
('117', 'Pangrango/Siliwangi', 'Cianjur (CJ)', '18.15', 'Sukabumi (SI)', '19.38', '01 jam 23 menit', '6'),
('118', 'Pangrango/Siliwangi', 'Bogor (BOO)', '18.30', 'Sukabumi (SI)', '20.34', '02 jam 04 menit', '6'),
('131', 'Mutiara Selatan', 'Surabaya Gubeng (SGU)', '19.00', 'Bandung (BD)', '09.59', '14 jam 59 menit', '2'),
('132', 'Mutiara Selatan', 'Bandung (BD)', '15.45', 'Surabaya Gubeng (SGU)', '05.31', '13 jam 46 menit', '2'),
('133', 'Senja Utama Solo', 'Solo Balapan (SLO)', '17.30', 'Pasar Senen (PSE)', '03.12', '09 jam 42 menit', '2'),
('134', 'Senja Utama Solo', 'Pasar Senen (PSE)', '22.00', 'Solo Balapan (SLO)', '06.58', '08 jam 58 menit', '2'),
('135', 'Fajar Utama Yogya', 'Yogyakarta (YK)', '07.00', 'Pasar Senen (PSE)', '15.06', '08 jam 06 menit', '2'),
('136', 'Fajar Utama Yogya', 'Pasar Senen (PSE)', '06.15', 'Yogyakarta (YK)', '14.40', '08 jam 25 menit', '2'),
('137', 'Senja Utama Yogya', 'Yogyakarta (YK)', '17.45', 'Pasar Senen (PSE)', '02.02', '08 jam 17 menit', '2'),
('138', 'Senja Utama Yogya', 'Pasar Senen (PSE)', '19.00', 'Yogyakarta (YK)', '03.16', '08 jam 16 menit', '2'),
('139', 'Sawunggalih Pagi (Eksekutif-Bisnis)', 'Kutoarjo (KTA)', '07.00', 'Pasar Senen (PSE)', '14.18', '07 jam 18 menit', '4'),
('140', 'Sawunggalih Pagi', 'Pasar Senen (PSE)', '08.15', 'Kutoarjo (KTA)', '15.26', '07 jam 11 menit', '4'),
('141', 'Sawunggalih Malam', 'Kutoarjo (KTA)', '19.00', 'Pasar Senen (PSE)', '02.31', '07 jam 31 menit', '4'),
('142', 'Sawunggalih Malam (Eksekutif-Bisnis)', 'Pasar Senen (PSE)', '18.00', 'Kutoarjo (KTA)', '01.34', '07 jam 34 menit', '4'),
('143', 'Sarangan Ekspres', 'Surabaya Gubeng (SGU)', '09.35', 'Madiun (MN)', '12.37', '03 jam 02 menit', '2'),
('144', 'Sarangan Ekspres', 'Madiun (MN)', '13.30', 'Surabaya Gubeng (SGU)', '16.55', '03 jam 25 menit', '2'),
('145F', 'Sidomukti*****)', 'Solo Balapan (SLO)', '10.00', 'Yogyakarta (YK)', '11.02', '01 jam 02 menit', '2'),
('146F', 'Sidomukti*****)', 'Yogyakarta (YK)', '11.45', 'Solo Balapan (SLO)', '12.50', '01 jam 05 menit', '2'),
('149', 'Majapahit', 'Malang (ML)', '18.20', 'Pasar Senen (PSE)', '09.54', '15 jam 34 menit', '3'),
('150', 'Majapahit', 'Pasar Senen (PSE)', '18.30', 'Malang (ML)', '09.55', '15 jam 25 menit', '3'),
('151/154', 'Jayabaya', 'Malang (ML)', '11.45', 'Pasar Senen (PSE)', '01.16', '13 jam 36 menit', '3'),
('152/153', 'Jayabaya', 'Pasar Senen (PSE)', '12.00', 'Malang (ML)', '01.17', '13 jam 17 menit', '3'),
('155', 'Jaka Tingkir', 'Purwosari (PWS)', '15.45', 'Pasar Senen (PSE)', '00.59', '09 jam 14 menit', '3'),
('156', 'Jaka Tingkir', 'Pasar Senen (PSE)', '12.30', 'Purwosari (PWS)', '21.52', '09 jam 22 menit', '3'),
('157', 'Menoreh', 'Semarang Tawang (SMT)', '08.00', 'Pasar Senen (PSE)', '14.36', '06 jam 36 menit', '3'),
('158', 'Menoreh', 'Pasar Senen (PSE)', '19.45', 'Semarang Tawang (SMT)', '02.16', '06 jam 31 menit', '3'),
('159', 'Menoreh', 'Semarang Tawang (SMT)', '21.00', 'Pasar Senen (PSE)', '03.30', '06 jam 30 menit', '3'),
('160', 'Menoreh', 'Pasar Senen (PSE)', '07.15', 'Semarang Tawang (SMT)', '13.43', '06 jam 28 menit', '3'),
('161', 'Bogowonto', 'Lempuyangan (LPN)', '09.00', 'Pasar Senen (PSE)', '17.22', '08 jam 22 menit', '3'),
('162', 'Bogowonto', 'Pasar Senen (PSE)', '21.45', 'Lempuyangan (LPN)', '05.55', '08 jam 10 menit', '3'),
('163', 'Gajah Wong', 'Lempuyangan (LPN)', '18.00', 'Pasar Senen (PSE)', '02.41', '08 jam 41 menit', '3'),
('164', 'Gajah Wong', 'Pasar Senen (PSE)', '06.45', 'Lempuyangan (LPN)', '15.05', '08 jam 20 menit', '3'),
('165/168', 'Krakatau', 'Kediri (KD)', '07.45', 'Merak (MER)', '02.07', '18 jam 17 menit', '3'),
('166/167', 'Krakatau', 'Merak (MER)', '09.15', 'Kediri (KD)', '02.35', '17 jam 20 menit', '3'),
('171', 'Matarmaja', 'Malang (ML)', '17.00', 'Pasar Senen (PSE)', '09.45', '16 jam 45 menit', '3'),
('172', 'Matarmaja', 'Pasar Senen (PSE)', '15.15', 'Malang (ML)', '07.50', '16 jam 35 menit', '3'),
('173', 'Gaya Baru Malam Selatan', 'Surabaya Gubeng (SGU)', '12.00', 'Pasar Senen (PSE)', '01.48', '13 jam 48 menit', '3'),
('174', 'Gaya Baru Malam Selatan', 'Pasar Senen (PSE)', '10.30', 'Surabaya Gubeng (SGU)', '01.25', '14 jam 55 menit', '3'),
('175', 'Brantas', 'Kediri (KD)', '13.00', 'Pasar Senen (PSE)', '02.14', '13 jam 14 menit', '3'),
('176', 'Brantas', 'Pasar Senen (PSE)', '16.00', 'Kediri (KD)', '06.36', '14 jam 36 menit', '3'),
('177', 'Kertajaya', 'Surabaya Pasar Turi (SBI)', '21.00', 'Pasar Senen (PSE)', '08.23', '11 jam 23 menit', '3'),
('178', 'Kertajaya', 'Pasar Senen (PSE)', '14.00', 'Surabaya Pasar Turi (SBI)', '01.30', '11 jam 30 menit', '3'),
('179', 'Pasundan', 'Surabaya Gubeng (SGU)', '08.15', 'Kiaracondong (KAC)', '23.19', '15 jam 04 menit', '3'),
('180', 'Pasundan', 'Kiaracondong (KAC)', '05.20', 'Surabaya Gubeng (SGU)', '21.36', '16 jam 16 menit', '3'),
('181', 'Kahuripan', 'Kediri (KD)', '13.40', 'Kiaracondong (KAC)', '03.32', '13 jam 52 menit', '3'),
('182', 'Kahuripan', 'Kiaracondong (KAC)', '20.00', 'Kediri (KD)', '09.43', '13 jam 43 menit', '3'),
('183', 'Bengawan', 'Purwosari (PWS)', '14.30', 'Pasar Senen (PSE)', '23.58', '09 jam 28 menit', '3'),
('184', 'Bengawan', 'Pasar Senen (PSE)', '11.30', 'Purwosari (PWS)', '20.45', '09 jam 15 menit', '3'),
('185', 'Progo', 'Lempuyangan (LPN)', '14.30', 'Pasar Senen (PSE)', '23.27', '08 jam 57 menit', '3'),
('186', 'Progo', 'Pasar Senen (PSE)', '22.30', 'Lempuyangan (LPN)', '06.55', '08 jam 25 menit', '3'),
('188/189', 'Logawa', 'Purwokerto (PWT)', '05.30', 'Jember (JR)', '19.25', '13 jam 55 menit', '3'),
('190/187', 'Logawa', 'Jember (JR)', '05.00', 'Purwokerto (PWT)', '18.18', '13 jam 18 menit', '3'),
('191', 'Kutojaya Utara', 'Kutoarjo (KTA)', '17.00', 'Pasar Senen (PSE)', '00.41', '07 jam 41 menit', '3'),
('192', 'Kutojaya Utara', 'Pasar Senen (PSE)', '05.30', 'Kutoarjo (KTA)', '13.18', '07 jam 48 menit', '3'),
('194/195', 'Sri Tanjung', 'Lempuyangan (LPN)', '07.15', 'Banyuwangi Baru (BW)', '21.15', '14 jam', '3'),
('196/193', 'Sri Tanjung', 'Banyuwangi Baru (BW)', '06.30', 'Lempuyangan (LPN)', '19.30', '13 jam', '3'),
('201', 'Tawang Jaya', 'Semarang Poncol (SMC)', '14.00', 'Pasar Senen (PSE)', '20.38', '06 jam 06 menit', '3'),
('202', 'Tawang Jaya', 'Pasar Senen (PSE)', '23.00', 'Semarang Poncol (SMC)', '05.52', '06 jam 52 menit', '3'),
('203', 'Kutojaya Selatan', 'Kutoarjo (KTA)', '09.20', 'Kiaracondong (KAC)', '16.38', '07 jam 18 menit', '3'),
('204', 'Kutojaya Selatan', 'Kiaracondong (KAC)', '21.00', 'Kutoarjo (KTA)', '04.30', '07 jam 30 menit', '3'),
('205', 'Tegal Arum', 'Tegal (TG)', '06.30', 'Pasar Senen (PSE)', '11.18', '05 jam 48 menit', '3'),
('206', 'Tegal Arum', 'Pasar Senen (PSE)', '16.30', 'Tegal (TG)', '21.18', '05 jam 48 menit', '3'),
('208/209', 'Tawang Alun', 'Banyuwangi Baru (BW)', '05.00', 'Malang Kotalama (MLK)', '13.06', '08 jam 06 menit', '3'),
('210/207', 'Tawang Alun', 'Malang Kotalama (MLK)', '15.45', 'Banyuwangi Baru (BW)', '23.30', '07 jam 45 menit', '3'),
('211', 'Tegal Ekspres', 'Tegal (TG)', '14.30', 'Pasar Senen (PSE)', '19.22', '04 jam 52 menit', '3'),
('212', 'Tegal Ekspres', 'Pasar Senen (PSE)', '07.45', 'Tegal (TG)', '13.19', '05 jam 34 menit', '3'),
('213', 'Maharani', 'Surabaya Pasarturi (SBI)', '06.00', 'Semarang Poncol (SMC)', '10.45', '04 jam 45 menit', '3'),
('214', 'Maharani', 'Semarang Poncol (SMC)', '11.40', 'Surabaya Pasarturi (SBI)', '16.26', '04 jam 46 menit', '3'),
('215/218', 'Kalijaga', 'Purwosari (PWS)', '05.15', 'Semarang Poncol (SMC)', '08.15', '03 jam', '3'),
('216/217', 'Kalijaga', 'Semarang Poncol (SMC)', '08.45', 'Purwosari (PWS)', '11.45', '03 jam', '3'),
('219', 'Probowangi', 'Surabaya Kota (SB)', '04.15', 'Banyuwangi Baru (BW)', '11.45', '07 jam 30 menit', '3'),
('220', 'Probowangi', 'Banyuwangi Baru (BW)', '13.30', 'Surabaya Kota (SB)', '21.01', '07 jam 31 menit', '3'),
('221/224', 'Serayu Pagi', 'Purwokerto (PWT)', '06.30', 'Pasar Senen (PSE)', '17.12', '10 jam 42 menit', '3'),
('222/223', 'Serayu Pagi', 'Pasar Senen (PSE)', '09.00', 'Purwokerto (PWT)', '19.50', '10 jam 50 menit', '3'),
('225/228', 'Serayu Malam', 'Purwokerto (PWT)', '16.30', 'Pasar Senen (PSE)', '04.39', '12 jam 09 menit', '3'),
('226/227', 'Serayu Malam', 'Pasar Senen (PSE)', '21.00', 'Purwokerto (PWT)', '07.33', '10 jam 33 menit', '3'),
('229/232', 'Kamandaka', 'Purwokerto (PWT)', '05.00', 'Semarang Tawang (SMT)', '09.45', '04 jam 45 menit', '3'),
('230/231', 'Kamandaka', 'Semarang Tawang (SMT)', '11.00', 'Purwokerto (PWT)', '16.19', '05 jam 19 menit', '3'),
('233/236', 'Kamandaka', 'Purwokerto (PWT)', '11.00', 'Semarang Tawang (SMT)', '15.49', '04 jam 49 menit', '3'),
('234/235', 'Kamandaka', 'Semarang Tawang (SMT)', '05.00', 'Purwokerto (PWT)', '09.42', '04 jam 42 menit', '3'),
('237/240', 'Kamandaka', 'Purwokerto (PWT)', '17.30', 'Semarang Tawang (SMT)', '22.52', '05 jam 22 menit', '3'),
('238/239', 'Kamandaka', 'Semarang Tawang (SMT)', '17.30', 'Purwokerto (PWT)', '22.10', '04 jam 40 menit', '3'),
('10195', 'Joglokerto', 'Solo Balapan (SLO)', '06.15', 'Purwokerto (PWT)', '10.01', '03 jam 46 menit', '3'),
('10256', 'Joglokerto', 'Purwokerto (PWT)', '10.38', 'Solo Balapan (SLO)', '14.46', '04 jam 08 menit', '3'),
('U43', 'Sribilah', 'Rantauprapat (RAP)', '08.40', 'Medan (MDN)', '14.25', '05 jam 45 menit', '4'),
('U44', 'Sribilah', 'Medan (MDN)', '08.40', 'Rantauprapat (RAP)', '14.27', '05 jam 27 menit', '4'),
('U45', 'Sribilah', 'Rantauprapat (RAP)', '15.30', 'Medan (MDN)', '21.12', '05 jam 42 menit', '4'),
('U46', 'Sribilah', 'Medan (MDN)', '10.37', 'Rantauprapat (RAP)', '16.14', '05 jam 37 menit', '4'),
('U47', 'Sribilah', 'Rantauprapat (RAP)', '17.30', 'Medan (MDN)', '23.00', '05 jam 30 menit', '4'),
('U48', 'Sribilah', 'Medan (MDN)', '15.37', 'Rantauprapat (RAP)', '21.19', '05 jam 42 menit', '4'),
('U49', 'Sribilah', 'Rantauprapat (RAP)', '23.10', 'Medan (MDN)', '04.25', '05 jam 15 menit', '4'),
('U50', 'Sribilah', 'Medan (MDN)', '22.35', 'Rantauprapat (RAP)', '03.44', '05 jam 09 menit', '4'),
('U51', 'Putri Deli', 'Tanjung Balai (TNB)', '08.55', 'Medan (MDN)', '13.25', '04 jam 30 menit', '3'),
('U52', 'Putri Deli', 'Medan (MDN)', '07.35', 'Tanjung Balai (TNB)', '11.45', '04 jam 10 menit', '3'),
('U53', 'Putri Deli', 'Tanjung Balai (TNB)', '14.35', 'Medan (MDN)', '18.55', '04 jam 20 menit', '3'),
('U54', 'Putri Deli', 'Medan (MDN)', '12.32', 'Tanjung Balai (TNB)', '16.45', '04 jam 13 menit', '3'),
('U55', 'Putri Deli', 'Tanjung Balai (TNB)', '19.40', 'Medan (MDN)', '23.53', '04 jam 13 menit', '3'),
('U56', 'Putri Deli', 'Medan (MDN)', '17.55', 'Tanjung Balai (TNB)', '22.25', '04 jam 30 menit', '3'),
('U57', 'Siantar Ekspres', 'Siantar (SIR)', '07.25', 'Medan (MDN)', '11.20', '03 jam 55 menit', '3'),
('U58', 'Siantar Ekspres', 'Medan (MDN)', '13.27', 'Siantar (SIR)', '16.47', '03 jam 20 menit', '3'),
('B1', 'Sibinuang', 'Pariaman (PMN)', '05.45', 'Padang (PD)', '07.11', '01 jam 26 menit', '3'),
('B2', 'Sibinuang', 'Padang (PD)', '06.00', 'Pariaman (PMN)', '07.29', '01 jam 29 menit', '3'),
('B3', 'Sibinuang', 'Pariaman (PMN)', '08.50', 'Padang (PD)', '10.18', '01 jam 28 menit', '3'),
('B4', 'Sibinuang', 'Padang (PD)', '09.10', 'Pariaman (PMN)', '10.38', '01 jam 28 menit', '3'),
('B5', 'Sibinuang', 'Pariaman (PMN)', '14.15', 'Padang (PD)', '15.46', '01 jam 31 menit', '3'),
('B6', 'Sibinuang', 'Padang (PD)', '14.00', 'Pariaman (PMN)', '15.26', '01 jam 26 menit', '3'),
('B7', 'Sibinuang', 'Pariaman (PMN)', '16.20', 'Padang (PD)', '17.47', '01 jam 27 menit', '3'),
('B8', 'Sibinuang', 'Padang (PD)', '16.40', 'Pariaman (PMN)', '18.10', '01 jam 30 menit', '3'),
('S1', 'Sriwijaya', 'Kertapati (KPT)', '21.00', 'Tanjung Karang (TNK)', '09.05', '12 jam 05 menit', '4'),
('S2', 'Sriwijaya', 'Tanjung Karang (TNK)', '19.00', 'Kertapati (KPT)', '03.27', '08 jam 27 menit', '4'),
('S3', 'Sindang Marga', 'Kertapati (KPT)', '20.00', 'Lubuk Linggau (LLG)', '03.25', '07 jam 25 menit', '4'),
('S4', 'Sindang Marga', 'Lubuk Linggau (LLG)', '20.00', 'Kertapati (KPT)', '04.02', '08 jam 02 menit', '4'),
('S5', 'Serelo/Bukit Serelo/Buser', 'Kertapati (KPT)', '09.30', 'Lubuk Linggau (LLG)', '16.30', '07 jam', '3'),
('S6', 'Serelo/Bukit Serelo/Buser', 'Lubuk Linggau (LLG)', '09.30', 'Kertapati (KPT)', '16.40', '07 jam 10 menit', '3'),
('S7', 'Rajabasa', 'Kertapati (KPT)', '08.30', 'Tanjung Karang (TNK)', '19.41', '11 jam 11 menit', '3'),
('S8', 'Rajabasa', 'Tanjung Karang (TNK)', '08.30', 'Kertapati (KPT)', '18.15', '9 jam 45 menit', '3');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(100) NOT NULL,
  `kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 'Eksekutif'),
(2, 'Bisnis AC'),
(3, 'Ekonomi AC'),
(4, 'Eksekutif dan Bisnis AC\r\n'),
(5, 'Eksekutif, Bisnis, dan Ekonomi AC\r\n'),
(6, 'Eksekutif dan Ekonomi AC\r\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
