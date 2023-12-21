-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2023 pada 13.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crafted_merch`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cart`
--

CREATE TABLE `tb_cart` (
  `id_cart` varchar(40) NOT NULL,
  `id_customer` varchar(40) NOT NULL,
  `id_product` varchar(40) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `status` enum('cart','pay','sent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_cart`
--

INSERT INTO `tb_cart` (`id_cart`, `id_customer`, `id_product`, `color`, `size`, `qty`, `biaya`, `status`) VALUES
('CRT-23/12/000001', 'CUS-23/12/000006', 'PRD-23/12/000002', 'Blue', 'Medium', 90, 2250000, 'cart'),
('CRT-23/12/000003', 'CUS-23/12/000006', 'PRD-23/12/000001', 'Black', 'Small', 97, 4850000, 'cart');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id_customer` varchar(40) NOT NULL,
  `name` varchar(45) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `tgl_buat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_customer`
--

INSERT INTO `tb_customer` (`id_customer`, `name`, `user`, `pass`, `phone`, `tgl_buat`) VALUES
('CUS-23/12/000002', 'Robi', 'robi', '123', '0889375716858', '2023-12-20 11:59:33'),
('CUS-23/12/000006', 'tes', 'tes', 'tes', '84628', '2023-12-20 18:35:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_user` int(11) NOT NULL,
  `nm_user` varchar(15) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_user`, `nm_user`, `user_id`, `pass`) VALUES
(1, 'Maulana', 'admin', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `id_product` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`id_product`, `name`, `kategori`, `size`, `color`, `description`, `price`, `qty`, `status`, `created_at`, `foto`) VALUES
('PRD-23/12/000001', ' New States Apparel Premium Cotton T-shirt ', 'T-Shirt', 'Small', 'Black | Blue | Green | Orange | Pink | Red', 'This graphic t-shirt which is perfect for any occasion. Crafted from a soft and\r\n\r\n\r\n\r\nbreathable fabric, it offers superior comfort and style.\r\n\r\n', 50000, 40, 2, '2023-12-14 12:12:00', 'image/product/kaospanjang1-1.png | image/product/kaospanjang3.png | image/product/kaospanjang1-1.png | image/product/product-2.png '),
('PRD-23/12/000002', 'Totebag', 'Totebag', 'Medium', 'Blue | Green | Orange', 'Quill Snow is a free, open source Quill Editor built for the modern web. With its modular architecture and expressive API, it is completely customizable to fit any need.\r\n\r\n\r\nWrite text select and edit with multiple options.\r\nThis is quill snow editor.\r\nEasy to customize and flexible.\r\n\r\n\r\nQuill officially supports a standard toolbar theme \"Snow\" and a floating tooltip theme \"Bubble\"', 25000, 23, 1, '2023-12-15 11:00:00', 'image/product/Totebag1-1.png | image/product/Totebag2.png | image/product/Totebag3.png | image/product/totebaggg.jpg | ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_cart`
--
ALTER TABLE `tb_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
