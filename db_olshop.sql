-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2022 at 03:49 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level_admin` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `level_admin`) VALUES
(1, 'Nabil', 'nabil@admin', 'nabilug1611', 2),
(5, 'Radit', 'admin3', 'radit123', 2),
(7, 'Tuti', 'tuti@owner', 'tuti234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext,
  `gambar` text,
  `berat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`) VALUES
(12, 'Gamis Syari Dijah Pink', 1, 425000, 'Dijah Original bahan gamis bagian dada dan tangan jersey, pinggang karet, fit XL, LD: 115cm PB: 145cm, lebar rok bawah 4,5 meter. Bahan khimar\r\nbabydoll print Mix polos 2 lapis ukuran jumbo bagian tangan di belah dengan lapisan depan model runcing (Panjang bagian depan 135cm panjang bagian belakang 140cm), cocok di pake sehari-hari, umroh/haji, kondangan.', 'dijah_pink.jpg', 1000),
(13, 'Gamis Syari Dijah Biru', 1, 425000, 'Dijah Original bahan gamis bagian dada dan tangan jersey, pinggang karet, fit XL, LD: 115cm PB: 145cm, lebar rok bawah 4,5 meter. Bahan khimar\r\nbabydoll print Mix polos 2 lapis ukuran jumbo bagian tangan di belah dengan lapisan depan model runcing (Panjang bagian depan 135cm panjang bagian belakang 140cm), cocok di pake sehari-hari, umroh/haji, kondangan.', 'dijah_biru.jpg', 1000),
(14, 'Gamis Syari Dijah Coklat Tua', 1, 425000, 'Dijah Original bahan gamis bagian dada dan tangan jersey, pinggang karet, fit XL, LD: 115cm PB: 145cm, lebar rok bawah 4,5 meter. Bahan khimar\r\nbabydoll print Mix polos 2 lapis ukuran jumbo bagian tangan di belah dengan lapisan depan model runcing (Panjang bagian depan 135cm panjang bagian belakang 140cm), cocok di pake sehari-hari, umroh/haji, kondangan.', 'dijah_coklat_tua.jpg', 1000),
(15, 'Gamis Syari Dijah Hijau', 1, 425000, 'Dijah Original bahan gamis bagian dada dan tangan jersey, pinggang karet, fit XL, LD: 115cm PB: 145cm, lebar rok bawah 4,5 meter. Bahan khimar\r\nbabydoll print Mix polos 2 lapis ukuran jumbo bagian tangan di belah dengan lapisan depan model runcing (Panjang bagian depan 135cm panjang bagian belakang 140cm), cocok di pake sehari-hari, umroh/haji, kondangan.', 'dijah_hijau.jpg', 1000),
(16, 'Gamis Syari Dijah Salem', 1, 425000, 'Dijah Original bahan gamis bagian dada dan tangan jersey, pinggang karet, fit XL, LD: 115cm PB: 145cm, lebar rok bawah 4,5 meter. Bahan khimar\r\nbabydoll print Mix polos 2 lapis ukuran jumbo bagian tangan di belah dengan lapisan depan model runcing (Panjang bagian depan 135cm panjang bagian belakang 140cm), cocok di pake sehari-hari, umroh/haji, kondangan.', 'dijah_salem.jpg', 1000),
(17, 'Khimar Thewa Aurora Abu', 1, 150000, 'Thewa Original bahan Ceruty Baby Doll pilihan terbaik, disertakan payet cantik di kepala dan dada, khimar semi jumbo, cocok di pake sehari-hari, umroh/haji, kondangan, jahitan sangat rapi, pilihan warna banyak, Pet Super Soft membentuk mengikuti wajah.', 'thewa_abu.jpg', 500),
(18, 'Khimar Thewa Aurora Ungu', 1, 150000, 'Thewa Original bahan Ceruty Baby Doll pilihan terbaik, disertakan payet cantik di kepala dan dada, khimar semi jumbo, cocok di pake sehari-hari, umroh/haji, kondangan, jahitan sangat rapi, pilihan warna banyak, Pet Super Soft membentuk mengikuti wajah.', 'thewa_ungu.jpg', 500),
(19, 'Khimar Thewa Arini Abu', 1, 150000, 'Thewa Original bahan Ceruty Baby Doll pilihan terbaik, khimar semi jumbo, cocok di pake sehari-hari, umroh/haji, kondangan, jahitan sangat rapi, pilihan warna banyak, Pet Super Soft membentuk mengikuti wajah.', 'thewa_arini_abu.jpg', 500),
(20, 'Khimar Thewa Arini Coklat Susu', 1, 150000, 'Thewa Original bahan Ceruty Baby Doll pilihan terbaik, khimar semi jumbo, cocok di pake sehari-hari, umroh/haji, kondangan, jahitan sangat rapi, pilihan warna banyak, Pet Super Soft membentuk mengikuti wajah.', 'thewa_arini_coklat_susu.jpg', 500),
(21, 'Khimar Thewa Arini Coklat', 1, 150000, 'Thewa Original bahan Ceruty Baby Doll pilihan terbaik, khimar semi jumbo, cocok di pake sehari-hari, umroh/haji, kondangan, jahitan sangat rapi, pilihan warna banyak, Pet Super Soft membentuk mengikuti wajah.', 'thewa_arini_coklat.jpg', 500),
(22, 'Khimar Thewa Arini Kuning', 1, 150000, 'Thewa Original bahan Ceruty Baby Doll pilihan terbaik, khimar semi jumbo, cocok di pake sehari-hari, umroh/haji, kondangan, jahitan sangat rapi, pilihan warna banyak, Pet Super Soft membentuk mengikuti wajah.', 'thewa_arini_kuning.jpg', 500),
(23, 'Khimar Thewa Arini Lavender', 1, 150000, 'Thewa Original bahan Ceruty Baby Doll pilihan terbaik, khimar semi jumbo, cocok di pake sehari-hari, umroh/haji, kondangan, jahitan sangat rapi, pilihan warna banyak, Pet Super Soft membentuk mengikuti wajah.', 'thewa_arini_lavender.jpg', 500),
(24, 'Zoe Backpack Jimshoney Merah', 2, 175000, 'Jims Honey Original bahan tas parasut tebal import, penutup tas resleting, ukuran tas 32cm x 32cm x 13cm.', 'Zoe_Red.jpg', 400),
(25, 'Zoe Backpack Jimshoney Hitam', 2, 175000, 'Jims Honey Original bahan tas parasut tebal import, penutup tas resleting, ukuran tas 32cm x 32cm x 13cm.', 'Zoe_Black.jpg', 480),
(26, 'Zoe Backpack Jimshoney Hijau', 2, 175000, 'Jims Honey Original bahan tas parasut tebal import, penutup tas resleting, ukuran tas 32cm x 32cm x 13cm.', 'Zoe_Green.jpg', 480),
(27, 'Zoe Backpack Jimshoney Navy', 2, 175000, 'Jims Honey Original bahan tas parasut tebal import, penutup tas resleting, ukuran tas 32cm x 32cm x 13cm.', 'Zoe_Navy.jpg', 480),
(28, 'Bantal Print 30cm x 40cm', 3, 60000, 'Bantal print dengan bahan yelvo, ukuran beserta foto bisa request, untuk print bolak balik dengan ukuran 30cm dan 40cm terdapat biaya tambahan sebesar Rp. 15.000.', 'ukuran_30x40.jpg', 500),
(29, 'Bantal Print 40cm x 40cm', 3, 65000, 'Bantal print dengan bahan yelvo, ukuran beserta foto bisa request. ', 'ukuran_40x40.jpg', 500),
(30, 'Bantal Print 50cm x 50cm', 3, 95000, 'Bantal print dengan bahan yelvo, ukuran beserta foto bisa request. ', 'ukuran_50x50.jpg', 500),
(31, 'Bantal Print 60cm x 40cm', 3, 95000, 'Bantal print dengan bahan yelvo, ukuran beserta foto bisa request. ', 'ukuran_60x40.jpg', 500),
(32, 'Bantal Print 85cm x 40cm', 3, 115000, 'Bantal print dengan bahan yelvo, ukuran beserta foto bisa request. ', 'ukuran_85x40.jpg', 500),
(33, 'Cutting Stiker Paket A isi 15', 4, 12000, 'Cutting Stiker Nama tanpa gambar, hanya nama, warna dan gambar bisa memilih sesuai katalog. Jika tidak mencantumkan maka akan disiapkan sesuai dengan yang tersedia. 1 paket hanya berisi 1 nama. Max 7 huruf. Lebar sekitar 1 - 1,5 cm, panjang menyesuaikan, PO maksimal 7 hari kerja. Apabila selesai lebih cepat akan segera dikirimkan. Silahkan tulis pesanan di catatan atau di chat. Tulis nama, tipe, dan warna. \r\nNote : Warna ungu tua kosong. Silahkan pilih warna lain, TULIS JENIS STIKER YANG DIPESAN PADA LIVECHAT BESERTA KIRIM NAMA YANG AKAN DICETAK.', 'paket_A1.jpg', 100),
(34, 'Cutting Stiker Paket A isi 30', 4, 23000, 'Cutting Stiker Nama tanpa gambar, hanya nama, warna dan gambar bisa memilih sesuai katalog. Jika tidak mencantumkan maka akan disiapkan sesuai dengan yang tersedia. 1 paket hanya berisi 1 nama. Max 7 huruf. Lebar sekitar 1 - 1,5 cm, panjang menyesuaikan, PO maksimal 7 hari kerja. Apabila selesai lebih cepat akan segera dikirimkan. Silahkan tulis pesanan di catatan atau di chat. Tulis nama, tipe, dan warna. Note : Warna ungu tua kosong. Silahkan pilih warna lain, TULIS JENIS STIKER YANG DIPESAN PADA LIVECHAT BESERTA KIRIM NAMA YANG AKAN DICETAK.', 'paket_A11.jpg', 100),
(35, 'Cutting Stiker Paket B isi 15', 4, 13000, 'Cutting Stiker Nama tanpa gambar, hanya nama, warna dan gambar bisa memilih sesuai katalog. Jika tidak mencantumkan maka akan disiapkan sesuai dengan yang tersedia. 1 paket hanya berisi 1 nama. Max 7 huruf. Lebar sekitar 1 - 1,5 cm, panjang menyesuaikan, PO maksimal 7 hari kerja. Apabila selesai lebih cepat akan segera dikirimkan. Silahkan tulis pesanan di catatan atau di chat. Tulis nama, tipe, dan warna. Note : Warna ungu tua kosong. Silahkan pilih warna lain, TULIS JENIS STIKER YANG DIPESAN PADA LIVECHAT BESERTA KIRIM NAMA YANG AKAN DICETAK.', 'paket_B1.jpg', 100),
(36, 'Cutting Stiker Paket B isi 30', 4, 25000, 'Cutting Stiker Nama tanpa gambar, hanya nama, warna dan gambar bisa memilih sesuai katalog. Jika tidak mencantumkan maka akan disiapkan sesuai dengan yang tersedia. 1 paket hanya berisi 1 nama. Max 7 huruf. Lebar sekitar 1 - 1,5 cm, panjang menyesuaikan, PO maksimal 7 hari kerja. Apabila selesai lebih cepat akan segera dikirimkan. Silahkan tulis pesanan di catatan atau di chat. Tulis nama, tipe, dan warna. Note : Warna ungu tua kosong. Silahkan pilih warna lain, TULIS JENIS STIKER YANG DIPESAN PADA LIVECHAT BESERTA KIRIM NAMA YANG AKAN DICETAK.', 'paket_B11.jpg', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(64, 12, 'dijah_all', 'dijah_all.jpg'),
(65, 13, 'dijah_all', 'dijah_all1.jpg'),
(66, 14, 'dijah_all', 'dijah_all2.jpg'),
(67, 15, 'dijah_all', 'dijah_all3.jpg'),
(68, 16, 'dijah_all', 'dijah_all4.jpg'),
(69, 17, 'thewa_abu', 'thewa_abu_bahan.jpg'),
(70, 18, 'thewa_ungu', 'thewa_ungu_bahan.jpg'),
(71, 19, 'thewaarini_abu', 'thewa_arini_abu_bahan.jpg'),
(72, 20, 'thewaarini_coksu', 'thewa_arini_coklat_susu_bahan.jpg'),
(73, 21, 'thewaarini_coklat', 'thewa_arini_coklat_bahan.jpg'),
(74, 22, 'thewaarini_kuning', 'thewa_arini_kuning_bahan.jpg'),
(75, 23, 'thewaarini_lavender', 'thewa_arini_lavender_bahan.jpg'),
(76, 24, 'taszoe_desc', 'bahan1_Zoe.jpg'),
(77, 24, 'taszoe2_desc', 'bahan2_Zoe.jpg'),
(78, 25, 'taszoe_desc', 'bahan1_Zoe1.jpg'),
(79, 25, 'taszoe2_desc', 'bahan2_Zoe1.jpg'),
(80, 26, 'taszoe_desc', 'bahan1_Zoe2.jpg'),
(81, 26, 'taszoe2_desc', 'bahan2_Zoe2.jpg'),
(82, 27, 'taszoe_desc', 'bahan1_Zoe3.jpg'),
(83, 27, 'taszoe2_desc', 'bahan2_Zoe3.jpg'),
(84, 33, 'stiker_bahan', 'bahan.jpg'),
(85, 33, 'stiker_paketA1', 'paket_A1.jpg'),
(86, 33, 'stiker_paketA2', 'paket_A2.jpg'),
(87, 33, 'stiker_paketA3', 'paket_A3.jpg'),
(88, 33, 'stiker_paketA4', 'paket_A4.jpg'),
(89, 33, 'harga', 'Nama_Paket.jpg'),
(90, 33, 'warna_stiker', 'warna.jpg'),
(91, 34, 'bahan', 'bahan1.jpg'),
(92, 34, 'stiker_paketA1', 'paket_A11.jpg'),
(93, 34, 'stiker_paketA2', 'paket_A21.jpg'),
(94, 34, 'stiker_paketA3', 'paket_A31.jpg'),
(95, 34, 'stiker_paketA4', 'paket_A41.jpg'),
(96, 34, 'harga', 'Nama_Paket1.jpg'),
(97, 34, 'warna_stiker', 'warna1.jpg'),
(98, 35, 'bahan', 'bahan2.jpg'),
(99, 35, 'stiker_paketB1', 'paket_B1.jpg'),
(100, 35, 'stiker_paketB2', 'paket_B2.jpg'),
(101, 35, 'stiker_paketB3', 'paket_B3.jpg'),
(102, 35, 'harga', 'Nama_Paket2.jpg'),
(103, 35, 'warna_stiker', 'warna2.jpg'),
(104, 36, 'bahan', 'bahan3.jpg'),
(105, 36, 'stiker_paketB1', 'paket_B11.jpg'),
(106, 36, 'stiker_paketB2', 'paket_B21.jpg'),
(107, 36, 'stiker_paketB3', 'paket_B31.jpg'),
(108, 36, 'harga', 'Nama_Paket3.jpg'),
(109, 36, 'warna_stiker', 'warna3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pakaian Muslimah'),
(2, 'Tas'),
(3, 'Bantal'),
(4, 'Stiker');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`) VALUES
(1, 'yasin', 'myasinatsaqib@gmail.com', 'yasin123'),
(2, 'nabil', 'andinabil2001@gmail.com', 'nabil1234'),
(3, 'radit', 'radit@gmail.com', 'radit123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'Bank Central Asia', '0954138280', 'ALIFIA VALDA SYAHPUTRI'),
(2, 'Bank Syariah Mandiri', '7132613577', 'NOOR NISPUJIASTUTI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`) VALUES
(1, '20220513HSY50LMD', 33, 1),
(2, '20220519TKHR3AQI', 35, 1),
(3, '20220520HQDS2IRC', 36, 1),
(4, '20220521XOUJLORH', 34, 1),
(5, '202205234BVGDFMO', 35, 1),
(6, '20220530XSJ24NVP', 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text,
  `no_telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telepon`) VALUES
(1, 'Teha Olshop', 79, 'Jl. Duren IX No.41, Sukaraja, Kec. Sukaraja, Bogor, Jawa Barat 16710, Indonesia.', '081280930441');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(25) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `alamat` text,
  `kode_pos` varchar(8) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(1, 1, '20220513HSY50LMD', '2022-05-13', 'Radit', '081290876547', 'Banten', 'Lebak', 'perumahan griya soka bogor raya blok T-38 sukaraja kab.bogor', '16710', 'tiki', 'REG', '3 Hari', 20000, 100, 12000, 32000, 1, 'Capture001.png', 'Yasin', 'BCA', '5271-1029-01', 3, 'pos0934567'),
(2, 1, '20220519TKHR3AQI', '2022-05-19', 'Lord Kharis', '081290876547', 'DKI Jakarta', 'Jakarta Timur', 'Taman Mini', '16710', 'jne', 'REG', '1-2 Hari', 9000, 100, 13000, 22000, 1, 'ss_bg.JPG', 'Kharismadina', 'BCA', '5982-3012-27', 3, 'JNE0978906'),
(3, 1, '20220520HQDS2IRC', '2022-05-20', 'Yasin', '087773456789', 'Jambi', 'Batang Hari', 'perumahan griya soka bogor raya blok T-38 sukaraja kab.bogor', '16710', 'tiki', 'REG', '3 Hari', 54000, 100, 25000, 79000, 1, 'Capture_21.JPG', 'Yasin', 'BCA', '5982-3012-27', 3, 'pos0934765'),
(4, 1, '20220521XOUJLORH', '2022-05-21', 'Yasin', '087773456789', 'Nanggroe Aceh Darussalam (NAD)', 'Aceh Tenggara', 'perumahan griya soka bogor raya blok T-38 sukaraja kab.aceh', '16219', 'jne', 'OKE', '4-7 Hari', 63000, 100, 23000, 86000, 1, 'Capture_211.JPG', 'Yasinn', 'BCA', '5982-3532-07', 3, 'JNE09789811'),
(5, 1, '202205234BVGDFMO', '2022-05-23', 'Yasin', '081290876987', 'Kalimantan Utara', 'Bulungan (Bulongan)', 'Jl. Raya Bulungan', '18796', 'jne', 'OKE', '5-7 Hari', 61000, 100, 13000, 74000, 1, 'bukti_tf.jpg', 'Yasin', 'BCA', '5982-3532-07', 3, 'JNE0978790'),
(6, 1, '20220530XSJ24NVP', '2022-05-30', 'Yasin', '087773456789', 'Jawa Barat', 'Bogor', 'perumahan bogor raya blok T-41 sukaraja kab.bogor', '19030', 'jne', 'CTC', '1-2 Hari', 9000, 480, 175000, 184000, 1, 'bukti_tf_bca.jpg', 'Yasin', 'BCA', '5271-1029-09', 3, 'JNE0978775');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
