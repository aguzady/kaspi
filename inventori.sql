-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2019 at 10:05 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Table structure for table `tmbarang`
--

CREATE TABLE `tmbarang` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmbarang`
--

INSERT INTO `tmbarang` (`id`, `kode`, `nama`, `id_kategori`, `satuan`, `stok`) VALUES
(20, '1001', 'Indomie Sedaap Goreng', 1, 'PCS', 49),
(21, '1002', 'Indomie Sedaap Kuah', 1, 'PCS', 39),
(22, '1003', 'Teh Pucuk Botol', 2, 'BOTOL', 58),
(23, '1004', 'Pocari Sweet', 2, 'BOTOL', 50),
(24, '1005', 'Soklin Lantai', 3, 'BGKS', 0),
(25, '1006', 'Daia Deterjen', 3, 'BGKS', 0),
(26, '1007', 'Paramex', 4, 'TABLT', 0),
(27, '1008', 'Bodrex Flu Batuk', 4, 'TABLT', 0),
(29, '1009', 'Roti', 1, 'PCS', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tmkategori`
--

CREATE TABLE `tmkategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_rak` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmkategori`
--

INSERT INTO `tmkategori` (`id`, `nama`, `no_rak`) VALUES
(1, 'Makanan', 1),
(2, 'Minuman', 2),
(3, 'Perlengkapan Rumah Tangga', 6),
(4, 'Obat', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tmpelanggan`
--

CREATE TABLE `tmpelanggan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmpelanggan`
--

INSERT INTO `tmpelanggan` (`id`, `kode`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'P001', 'Rudi', 'Jl. Pahlawan Surabaya', '022234433'),
(2, 'P002', 'Sodiq', 'Jl. kenjeran', '0872727727'),
(3, 'P003', 'Fauzi', 'Jl. Pandegiling', '08929292'),
(4, 'P004', 'agus', 'Jl. Dukuh Kupang', '083851708787');

-- --------------------------------------------------------

--
-- Table structure for table `tmpetugas`
--

CREATE TABLE `tmpetugas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmpetugas`
--

INSERT INTO `tmpetugas` (`id`, `nama`, `username`, `password`, `status`) VALUES
(2, 'Agus Adi Santoso', 'admin', '80f5414f8bda805dd0484569dc7be9573807c65f', 'aktif'),
(3, 'adi', 'kasir', 'ac3406c23ff0ff5b9a682b7d5cb662204459ada2', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tmsupplier`
--

CREATE TABLE `tmsupplier` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmsupplier`
--

INSERT INTO `tmsupplier` (`id`, `kode`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'S008', 'Budi', 'Jl. Kertajaya 80, Surabaya', '08126354746'),
(3, 'S005', 'Fadil', 'Jl. Pasar Turi, Surabaya', '08975755354'),
(4, 'S002', 'Fendi', 'malang', '027362836'),
(5, 'S004', 'Ali', 'Bandung', '028362756'),
(6, 'S006', 'Jodi', 'Jl. Sumatra', '0232343242');

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_keluar`
--

CREATE TABLE `trbarang_keluar` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_keluar`
--

INSERT INTO `trbarang_keluar` (`id`, `tgl`, `id_petugas`, `id_pelanggan`, `alamat`) VALUES
(1, '2016-12-19', 2, 1, ''),
(2, '2016-12-19', 2, 1, ''),
(3, '2016-12-19', 2, 1, ''),
(4, '2016-12-19', 2, 1, ''),
(5, '2016-12-19', 2, 2, ''),
(6, '2016-12-22', 2, 1, ''),
(8, '2019-07-12', 0, 1, ''),
(10, '2019-07-12', 0, 1, 'DKI Jakarta, Jakarta Utara, Penjaringan, Kamal Muara, 14470'),
(11, '2019-07-12', 2, 1, 'Jawa Timur, Surabaya, Dukuh Pakis, Dukuh Kupang, 60255');

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_keluar_detail`
--

CREATE TABLE `trbarang_keluar_detail` (
  `id` int(11) NOT NULL,
  `id_barang_keluar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_keluar_detail`
--

INSERT INTO `trbarang_keluar_detail` (`id`, `id_barang_keluar`, `id_barang`, `jumlah`) VALUES
(1, 1, 14, 10),
(2, 1, 15, 11),
(3, 2, 14, 5),
(4, 2, 15, 6),
(5, 3, 14, 5),
(6, 3, 15, 6),
(7, 4, 14, 10),
(8, 4, 15, 11),
(9, 5, 16, 10),
(10, 5, 17, 11),
(11, 6, 13, 10),
(12, 6, 18, 12),
(13, 7, 5, 15),
(14, 8, 20, 1),
(15, 10, 22, 1),
(16, 11, 29, 50);

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_masuk`
--

CREATE TABLE `trbarang_masuk` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_masuk`
--

INSERT INTO `trbarang_masuk` (`id`, `tgl`, `id_petugas`, `id_supplier`) VALUES
(3, '2016-12-17', 2, 1),
(4, '2016-12-19', 2, 1),
(5, '2016-12-19', 2, 1),
(6, '2016-12-19', 2, 5),
(7, '2016-12-22', 2, 1),
(8, '2019-07-09', 2, 1),
(9, '2019-07-09', 2, 3),
(10, '2019-07-12', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_masuk_detail`
--

CREATE TABLE `trbarang_masuk_detail` (
  `id` int(11) NOT NULL,
  `id_barang_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_masuk_detail`
--

INSERT INTO `trbarang_masuk_detail` (`id`, `id_barang_masuk`, `id_barang`, `jumlah`) VALUES
(5, 3, 14, 5),
(6, 3, 15, 6),
(7, 4, 14, 10),
(8, 4, 15, 11),
(9, 5, 14, 20),
(10, 5, 15, 25),
(11, 6, 16, 5),
(12, 6, 17, 6),
(13, 7, 14, 4),
(14, 7, 15, 5),
(15, 8, 20, 50),
(16, 8, 21, 40),
(17, 9, 22, 60),
(18, 9, 23, 50),
(19, 10, 29, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tmbarang`
--
ALTER TABLE `tmbarang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myKey` (`id_kategori`);

--
-- Indexes for table `tmkategori`
--
ALTER TABLE `tmkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmpelanggan`
--
ALTER TABLE `tmpelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmpetugas`
--
ALTER TABLE `tmpetugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmsupplier`
--
ALTER TABLE `tmsupplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_keluar`
--
ALTER TABLE `trbarang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_keluar_detail`
--
ALTER TABLE `trbarang_keluar_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_masuk`
--
ALTER TABLE `trbarang_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_masuk_detail`
--
ALTER TABLE `trbarang_masuk_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tmbarang`
--
ALTER TABLE `tmbarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tmkategori`
--
ALTER TABLE `tmkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tmpelanggan`
--
ALTER TABLE `tmpelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tmpetugas`
--
ALTER TABLE `tmpetugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tmsupplier`
--
ALTER TABLE `tmsupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `trbarang_keluar`
--
ALTER TABLE `trbarang_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `trbarang_keluar_detail`
--
ALTER TABLE `trbarang_keluar_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `trbarang_masuk`
--
ALTER TABLE `trbarang_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `trbarang_masuk_detail`
--
ALTER TABLE `trbarang_masuk_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tmbarang`
--
ALTER TABLE `tmbarang`
  ADD CONSTRAINT `myKey` FOREIGN KEY (`id_kategori`) REFERENCES `tmkategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
