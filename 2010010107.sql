-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 02:32 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` int(20) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `harga` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merek`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
(19, 'Daihatsu', 'Vios', '2008', 'B 4', 300000, 'Tersedia'),
(29, 'Lamborghini', 'Veneno', '2015', 'B 15 A', 12000000, 'Tersedia'),
(21, 'Honda', 'Jazz', '2015', 'B 1 RI', 400000, 'Tersedia'),
(17, 'Suzuki', 'Eskudo', '2008', 'B 2', 400000, 'Tersedia'),
(16, 'Toyota', 'Avanza', '2012', 'B 1 ', 300000, 'Tersedia'),
(31, 'VW', 'Combi', '2002', 'B 6', 400000, 'Tersedia'),
(28, 'Mitsubishi', 'Lancer Evo', '2012', 'B 14', 500000, 'Tersedia'),
(30, 'Toyota', 'Alphard', '2015', 'D 3 RY', 500000, 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `nama`, `nik`, `alamat`, `telp`, `email`) VALUES
(14, 'Qori', '2321213213212321', 'Bekasi', '07519400390', 'Qori@gmail.com'),
(10, 'Ismail', '231232312', 'Tasik', '081353666345', 'mail.com'),
(32, 'sda', 'sasd', 'asda', 'sda', 'ads'),
(29, 'wadwa', 'wadw', 'adw', 'wdda', 'adwa'),
(30, 'Alex Ferguso', 'Alex Ferguso', 'Marabahan', '08128821', 'alexfer@gmail.com'),
(31, 'sdads', '21', 'ssad', '21312', 'sfdsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `peminjam` varchar(20) NOT NULL,
  `nopol` varchar(20) DEFAULT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` date DEFAULT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `lama` varchar(10) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  `denda` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`, `denda`) VALUES
(32, 'sdads', 'D 3 RY', '500000', '2023-01-04', '2023-01-17', '13', '6500000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
(6, 'admin', 'admin', 'admin', 'Admin'),
(7, 'staff', 'staff', 'staff', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `id_mobil` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  MODIFY `id_peminjam` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
