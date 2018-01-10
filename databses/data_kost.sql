-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jan 2018 pada 03.40
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_kost`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `email`, `alamat`, `status`) VALUES
('A3BfisOYNc', 'kos1-admin', 'a29zMTEyMzQ=', 'kos1@admin.website', 'Jalan danau ranau', 'admin'),
('c5ojRHVyCB', 'BW-admin', 'YncxMjM0NQ==', 'admin@gmail.com', 'sldkfjslkdfjslkdfsdf', 'admin'),
('CfYTfncINM', 'admin', 'YWRtaW4=', 'admin@mail.com', 'asdjaskldjlsakd', 'admin'),
('G64DRRdo8M', 'juarakos', 'anVhcmFrb3MxMjM=', 'juarakos@admin.com', 'lorem ipsum dolor sit amet', 'admin'),
('REjnyNNViZ', 'Angger-#su', 'MTIzcXdlcnR5', 'anggerpenceng10cm@gmail.com', 'Mojokerto', 'Su-admin'),
('vITVCEYppB', 'ifankos', 'MTIzcXdlYXNk', 'ifankos@admin.website', 'lorem ipsum dolor sit amet', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` varchar(10) NOT NULL,
  `nama_fasilitas` text NOT NULL,
  `kondisi` enum('Baru','Pertengahan','Lama') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `image`
--

CREATE TABLE `image` (
  `id_img` int(11) NOT NULL,
  `name_img` text NOT NULL,
  `tmp_img` text NOT NULL,
  `id_kost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` varchar(50) NOT NULL,
  `id_kost` varchar(50) NOT NULL,
  `luas` int(11) NOT NULL,
  `detail_kamar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `id_kost`, `luas`, `detail_kamar`) VALUES
('r1bL2tTNRf', 'rm9vx59HkgMNxcvUnKiB', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
('TRZYM5hsId', 'qvD3FZjsuOWo1dnPPVYd', 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
('wODeaphDCl', '1LlJ6qk9eZ1HCjpYZHW4', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent finibus congue quam et commodo. Nam imperdiet enim sit amet erat tempus malesuada. Nam porttitor nunc arcu, ac iaculis metus feugiat varius. Fusce nisl nulla, faucibus at vehicula a, mollis non quam. Curabitur sit amet neque in metus convallis sollicitudin non nec arcu. Nam finibus magna quis odio porttitor, a maximus tellus viverra. Pellentesque nec efficitur sem. Morbi eu fringilla neque. Etiam sit amet dolor purus. Pellentesque tempor turpis massa. Vivamus condimentum pretium porta. Ut malesuada elementum tempor.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kost`
--

CREATE TABLE `kost` (
  `id_kost` varchar(50) NOT NULL,
  `nama-kost` varchar(100) NOT NULL,
  `alamat-kost` text NOT NULL,
  `harga-kost` int(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `Status` varchar(30) NOT NULL,
  `id_admin` varchar(10) NOT NULL,
  `tgl_perubah` date NOT NULL,
  `jum_kam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kost`
--

INSERT INTO `kost` (`id_kost`, `nama-kost`, `alamat-kost`, `harga-kost`, `deskripsi`, `Status`, `id_admin`, `tgl_perubah`, `jum_kam`) VALUES
('1LlJ6qk9eZ1HCjpYZHW4', 'ivankos', 'lorem ipsum dolor sit amet', 10000000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent finibus congue quam et commodo. Nam imperdiet enim sit amet erat tempus malesuada. Nam porttitor nunc arcu, ac iaculis metus feugiat varius. Fusce nisl nulla, faucibus at vehicula a, mollis non quam. Curabitur sit amet neque in metus convallis sollicitudin non nec arcu. Nam finibus magna quis odio porttitor, a maximus tellus viverra. Pellentesque nec efficitur sem. Morbi eu fringilla neque. Etiam sit amet dolor purus. Pellentesque tempor turpis massa. Vivamus condimentum pretium porta. Ut malesuada elementum tempor.', 'Masih banyak', 'vITVCEYppB', '0000-00-00', 90),
('3PmhbzfjgHEjiOhFIYnb', 'ivankos', 'lorem ipsum dolor sit amet', 10000000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent finibus congue quam et commodo. Nam imperdiet enim sit amet erat tempus malesuada. Nam porttitor nunc arcu, ac iaculis metus feugiat varius. Fusce nisl nulla, faucibus at vehicula a, mollis non quam. Curabitur sit amet neque in metus convallis sollicitudin non nec arcu. Nam finibus magna quis odio porttitor, a maximus tellus viverra. Pellentesque nec efficitur sem. Morbi eu fringilla neque. Etiam sit amet dolor purus. Pellentesque tempor turpis massa. Vivamus condimentum pretium porta. Ut malesuada elementum tempor.', 'Masih banyak', 'vITVCEYppB', '0000-00-00', 90),
('BGHaSdMefs8JXfJhHW3X', 'BW KOST', 'asl;dka;sdlk', 2147483647, 'ajshdaksjdklasd', 'Masih banyak', 'c5ojRHVyCB', '0000-00-00', 0),
('qvD3FZjsuOWo1dnPPVYd', 'JuaraKos.com', 'lorem ipsum dolor sit amet', 800000, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 'G64DRRdo8M', '0000-00-00', 20),
('rm9vx59HkgMNxcvUnKiB', 'Kost berjaya ', 'jalan danau ranau 1', 700000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Available', 'A3BfisOYNc', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` varchar(50) NOT NULL,
  `id_kost` varchar(50) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `id_user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomerhp` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `nomerhp`, `address`, `username`, `password`) VALUES
(18, 'Farhan fitrahtur 123', 'farhan@gmail.com', '029389239', 'malanngt', 'farhan123', 'ZmFyaGFuMTIz'),
(19, 'Yuki inawa', 'yuki@gmail.com', '78328712399', 'jalan lurus', 'yuki-chan', 'MTIzeXVraTEyMw=='),
(21, 'Angger Prataamadhita', 'anggerpenceng10cm@gmail.com', '082299124683', 'Mojokerto kota, kotanya para orang ganteng', 'anggerpw12', 'MTIzcXdlYXNk'),
(23, 'akan hapus dot com', 'hapus@gmail.com', '123123123', 'sjaklsdldded\r\n\r\n            ', 'hapusaja', 'MTIzMTIz'),
(24, 'farhan', 'farhan@gmauil.com', '54564564', 'sdaasd', 'farhan', 'MTIzNDU='),
(25, 'Andrian', 'andrianrch@gmail.com', '082257199987', 'jl. yang sungguh lurus', 'user', 'TVRJek5EVTI='),
(26, 'new input data', 'new@new.com', '882392083', 'lorem ipsum', 'lorem', 'ipsum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `id_kost` (`id_kost`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `id_kost` (`id_kost`);

--
-- Indexes for table `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`id_kost`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_kost` (`id_kost`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_kost`) REFERENCES `kost` (`id_kost`);

--
-- Ketidakleluasaan untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`id_kost`) REFERENCES `kost` (`id_kost`);

--
-- Ketidakleluasaan untuk tabel `kost`
--
ALTER TABLE `kost`
  ADD CONSTRAINT `kost_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `pesan_ibfk_2` FOREIGN KEY (`id_kost`) REFERENCES `kost` (`id_kost`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
