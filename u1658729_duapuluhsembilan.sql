-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 04:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1658729_duapuluhsembilan`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(13, '2023-07-20-081917', 'App\\Database\\Migrations\\TbProduk', 'default', 'App', 1690513521, 1),
(14, '2023-07-20-084755', 'App\\Database\\Migrations\\TbSlider', 'default', 'App', 1690513521, 1),
(15, '2023-07-20-085024', 'App\\Database\\Migrations\\TbProfil', 'default', 'App', 1690513521, 1),
(16, '2023-07-28-035902', 'App\\Database\\Migrations\\TbAktivitas', 'default', 'App', 1690517128, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_aktivitas`
--

CREATE TABLE `tb_aktivitas` (
  `id_aktivitas` int(5) UNSIGNED NOT NULL,
  `nama_aktivitas_in` varchar(200) NOT NULL,
  `nama_aktivitas_en` varchar(200) NOT NULL,
  `foto_aktivitas` varchar(100) NOT NULL,
  `deskripsi_aktivitas_in` text DEFAULT NULL,
  `deskripsi_aktivitas_en` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_aktivitas`
--

INSERT INTO `tb_aktivitas` (`id_aktivitas`, `nama_aktivitas_in`, `nama_aktivitas_en`, `foto_aktivitas`, `deskripsi_aktivitas_in`, `deskripsi_aktivitas_en`) VALUES
(9, 'Thrift Shopping Experience Eksplorasi Gaya dan Keunikan', 'Thrift Shopping Experience Exploration of Style and Uniqueness', 'asdasdsad_asadsd_21082024092659.jpg', '<p>Mengunjungi ThriftWear Indonesia memberikan Anda kesempatan untuk menjelajahi dunia fashion yang penuh dengan keunikan dan gaya. Kami menawarkan pengalaman berbelanja yang berbeda dari toko-toko fashion biasa, di mana setiap item di toko kami dipilih dengan teliti untuk memastikan kualitas dan keaslian. Anda dapat menemukan berbagai pakaian wanita mulai dari dress vintage, blouse elegan, hingga celana dan rok dengan desain yang timeless. Setiap kali Anda berbelanja di ThriftWear Indonesia, Anda tidak hanya mendapatkan pakaian yang stylish tetapi juga berkontribusi pada pengurangan limbah fashion. Aktivitas ini adalah cara yang sempurna untuk menemukan pakaian yang tidak hanya cocok dengan gaya pribadi Anda, tetapi juga mendukung keberlanjutan lingkungan.</p>', '<p>Visiting ThriftWear Indonesia gives you the opportunity to explore the world of fashion which is full of uniqueness and style. We offer a shopping experience that is different from regular fashion stores, where every item in our store is carefully selected to ensure quality and authenticity. You can find various women\'s clothing ranging from vintage dresses, elegant blouses, to trousers and skirts with timeless designs. Every time you shop at ThriftWear Indonesia, you not only get stylish clothes but also contribute to reducing fashion waste. This activity is the perfect way to find clothes that not only match your personal style, but also support environmental sustainability.</p>'),
(12, 'Workshop Fashion Berkelanjutan Edukasi dan Kreasi', 'Educational and Creative Sustainable Fashion Workshop', 'assasd_asdsd_21082024093209.jpg', '<p>Di ThriftWear Indonesia, kami mengadakan workshop rutin yang berfokus pada prinsip-prinsip fashion berkelanjutan. Workshop ini dirancang untuk mengedukasi pelanggan tentang bagaimana memilih dan merawat pakaian dengan cara yang ramah lingkungan. Dalam workshop ini, Anda akan belajar tentang teknik perawatan pakaian yang benar, cara memperbaiki pakaian yang rusak, serta bagaimana mengubah pakaian lama menjadi item yang baru dan modis melalui proyek DIY. Selain itu, workshop ini juga membahas isu-isu global terkait limbah fashion dan bagaimana kita semua bisa mengambil peran dalam mengurangi dampaknya. Aktivitas ini sangat cocok bagi mereka yang ingin mempelajari lebih dalam tentang fashion berkelanjutan sambil mengembangkan keterampilan baru yang berguna.</p>', '<p>At ThriftWear Indonesia, we hold regular workshops that focus on the principles of sustainable fashion. This workshop is designed to educate customers on how to choose and care for clothing in an environmentally friendly manner. In this workshop, you will learn about proper clothing care techniques, how to repair damaged clothing, and how to transform old clothing into new and fashionable items through DIY projects. Apart from that, this workshop also discusses global issues related to fashion waste and how we can all play a role in reducing its impact. This activity is perfect for those who want to learn more about sustainable fashion while developing useful new skills.</p>'),
(13, 'Tukar Pakaian', 'Clothes Swap', 'asdasdsd_asdasdasd_21082024093327.jpg', '<p>Fashion Swap Event adalah salah satu kegiatan yang paling dinantikan di ThriftWear Indonesia. Dalam acara ini, pelanggan dapat membawa pakaian yang tidak lagi mereka pakai dan menukarnya dengan item lain dari koleksi yang tersedia. Ini adalah cara yang inovatif dan menyenangkan untuk memperbarui lemari pakaian Anda tanpa harus membeli barang baru. Dengan mengikuti fashion swap, Anda juga berpartisipasi dalam gerakan untuk mengurangi produksi dan konsumsi pakaian yang berlebihan, yang berdampak besar pada lingkungan. Selain itu, acara ini juga menjadi ajang untuk bertemu dan berinteraksi dengan sesama pecinta fashion berkelanjutan, berbagi tips, dan mendapatkan inspirasi gaya baru.</p>', '<p>The Fashion Swap Event is one of the most anticipated activities at ThriftWear Indonesia. In this event, customers can bring clothes they no longer wear and exchange them for other items from the available collection. This is an innovative and fun way to update your wardrobe without having to buy anything new. By participating in a fashion swap, you are also participating in the movement to reduce excessive clothing production and consumption, which has a huge impact on the environment. Apart from that, this event is also an opportunity to meet and interact with fellow sustainable fashion lovers, share tips, and get new style inspiration.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int(5) UNSIGNED NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `foto_artikel` varchar(255) NOT NULL,
  `deskripsi_artikel` longtext NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`id_artikel`, `judul_artikel`, `foto_artikel`, `deskripsi_artikel`, `created_at`) VALUES
(7, 'Dress Vintage Memadukan Klasik dan Keanggunan', '21082024021650.jpg', '<p>Dress vintage merupakan salah satu kategori paling dicari di ThriftWear Indonesia. Setiap gaun yang kami tawarkan memiliki nilai sejarah tersendiri, membawa kembali keindahan mode dari era yang telah berlalu. Misalnya, gaun A-line yang elegan dan klasik sangat ideal untuk acara formal maupun kasual. Sementara itu, maxi dress yang anggun memberikan sentuhan bohemian yang chic, sempurna untuk wanita yang ingin tampil santai namun tetap stylish.</p>\r\n<p>Setiap dress vintage di koleksi kami dipilih dengan hati-hati untuk memastikan kualitas dan keunikan yang tidak bisa ditemukan di tempat lain. Memakai dress vintage bukan hanya tentang tampil cantik; ini juga tentang menghargai sejarah mode dan membawa kembali gaya-gaya yang telah terbukti bertahan melawan waktu. Selain itu, dengan memilih dress vintage, Anda turut berpartisipasi dalam mengurangi limbah fashion, sebuah langkah kecil yang berdampak besar bagi lingkungan.</p>', '2024-08-21 09:16:50'),
(8, 'Blouse & Top Kombinasi Sempurna antara Elegansi dan Kenyamanan', '21082024021725.jpg', '<p>Blouse dan top dari ThriftWear Indonesia menawarkan berbagai pilihan bagi wanita yang ingin tampil elegan atau kasual. Koleksi blouse sutra kami, misalnya, menghadirkan kelembutan dan kemewahan yang tak tertandingi. Atasan ini dapat dipadukan dengan berbagai jenis bawahan, mulai dari rok hingga celana, menjadikannya pilihan sempurna untuk berbagai kesempatan, baik formal maupun semi-formal.</p>\r\n<p>Sementara itu, bagi mereka yang lebih menyukai gaya kasual, crop top dan tunic kami menawarkan tampilan yang modern dan trendi. Crop top dengan desain yang mencolok, seperti ikatan atau motif yang unik, sangat cocok untuk tampilan yang playful dan penuh energi. Di sisi lain, tunic panjang yang nyaman dapat dengan mudah dipadukan dengan legging atau jeans, menawarkan fleksibilitas dalam gaya tanpa mengorbankan kenyamanan.</p>', '2024-08-21 09:17:25'),
(9, 'Outerwear Memaksimalkan Gaya dengan Lapisan yang Tepat', '21082024021805.jpg', '<p>Tidak ada yang lebih penting dalam fashion selain outerwear yang tepat. Di ThriftWear Indonesia, kami menawarkan berbagai pilihan outerwear yang tidak hanya memberikan kehangatan tetapi juga meningkatkan gaya Anda. Blazer vintage, misalnya, adalah pilihan yang sempurna untuk tampilan profesional yang tetap modis. Blazer ini sering kali hadir dengan pola klasik seperti tartan atau houndstooth yang menambahkan sentuhan elegan pada tampilan Anda.</p>\r\n<p>Jaket denim kami, yang tak lekang oleh waktu, cocok untuk berbagai kesempatan, baik itu acara kasual atau hangout dengan teman-teman. Untuk lapisan yang lebih nyaman dan stylish, cardigan panjang kami menawarkan fleksibilitas dan gaya yang bisa diandalkan. Outerwear dari ThriftWear Indonesia adalah cara terbaik untuk menambahkan dimensi baru pada gaya Anda, memastikan Anda tetap hangat dan modis sepanjang waktu.</p>', '2024-08-21 09:18:05'),
(10, 'Pakaian Formal Gaya Profesional yang Memukau', '21082024021849.jpg', '<p>Bagi wanita yang membutuhkan tampilan formal yang rapi dan elegan, ThriftWear Indonesia menawarkan berbagai pilihan blazer dan setelan yang sempurna untuk lingkungan kerja atau acara resmi. Setelan kami, yang terdiri dari blazer dan celana atau rok, biasanya hadir dalam warna netral dengan pola halus, memastikan Anda tampil profesional tanpa mengorbankan gaya.</p>\r\n<p>Untuk acara-acara malam hari yang lebih mewah, gaun malam kami menawarkan berbagai pilihan yang memukau, dengan detail seperti payet, renda, atau potongan asimetris yang menambah kesan glamor dan elegan. Setiap item dalam koleksi pakaian formal kami dirancang untuk memberikan tampilan yang sophisticated, memastikan Anda tampil terbaik dalam setiap kesempatan.</p>\r\n<h3>&nbsp;</h3>', '2024-08-21 09:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(5) UNSIGNED NOT NULL,
  `nama_produk_in` varchar(200) NOT NULL,
  `nama_produk_en` varchar(200) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk_in` text DEFAULT NULL,
  `deskripsi_produk_en` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk_in`, `nama_produk_en`, `foto_produk`, `deskripsi_produk_in`, `deskripsi_produk_en`) VALUES
(9, 'Dress Vintage', 'Vintage Dresses', 'Vintage Dresses_Dress Vintage_20082024152302.jpg', '<p>Dress vintage adalah salah satu kategori paling populer di ThriftWear Indonesia, menawarkan beragam pilihan gaun yang membawa kembali keindahan fashion dari berbagai era. Setiap dress vintage memiliki cerita tersendiri, dari gaun-gaun dengan potongan A-line yang anggun hingga maxi dress yang elegan dan mengalir. Kami juga menawarkan cocktail dress dengan detail yang menawan, seperti renda, manik-manik, dan bordir, yang sempurna untuk acara spesial. Dengan bahan berkualitas dan desain yang teliti, dress vintage dari ThriftWear Indonesia memberikan tampilan yang unik dan sophisticated, cocok untuk wanita yang ingin tampil berbeda dari yang lain.</p>', '<p>Vintage dresses are one of the most popular categories at ThriftWear Indonesia, offering a wide selection of dresses that bring back the beauty of fashion from various eras. Every vintage dress has its own story, from dresses with graceful A-line cuts to elegant and flowing maxi dresses. We also offer cocktail dresses with charming details, such as lace, beading, and embroidery, that are perfect for special occasions. With quality materials and careful designs, vintage dresses from ThriftWear Indonesia provide a unique and sophisticated appearance, suitable for women who want to look different from the others.</p>'),
(11, 'Blouse Top Elegansi dan Gaya yang Serba Guna', 'Blouse Top Elegance and Versatile Style', 'Blouse Top Elegance and Versatile Style_Blouse Top Elegance and Versatile Style_20082024153537.jpg', '<p>Blouse dan atasan di ThriftWear Indonesia dirancang untuk memenuhi kebutuhan fashion sehari-hari maupun acara formal. Koleksi blouse sutra kami, misalnya, menawarkan kelembutan dan kemewahan yang tak tertandingi, menjadikannya pilihan sempurna untuk dipadukan dengan rok atau celana dalam situasi formal. Di sisi lain, crop top kami memberikan sentuhan modern dan playful, dengan desain yang sering kali menonjolkan detail menarik seperti kancing, ikat, atau motif mencolok. Bagi yang mencari kenyamanan tanpa mengorbankan gaya, tunic panjang kami menawarkan tampilan yang santai namun tetap chic, ideal untuk digunakan dengan legging atau jeans.</p>', '<p>Blouses and tops at ThriftWear Indonesia are designed to meet your daily fashion needs and formal events. Our collection of silk blouses, for example, offers unrivaled softness and luxury, making them the perfect choice to pair with skirts or trousers in formal situations. On the other hand, our crop tops provide a modern, playful touch, with designs that often feature interesting details such as buttons, ties or bold prints. For those looking for comfort without sacrificing style, our long tunics offer a relaxed yet chic look, ideal for wearing with leggings or jeans.</p>'),
(14, 'Outerwear Lapisan Gaya dengan Sentuhan Vintage', 'Stylish Layered Outerwear with a Vintage Touch', 'sdfsdfsf_sfsfsdf_20082024154623.jpg', '<p>Outerwear adalah elemen penting dalam setiap koleksi pakaian wanita, dan ThriftWear Indonesia menawarkan berbagai pilihan jaket, blazer, dan cardigan yang tidak hanya memberikan kehangatan tetapi juga menambahkan dimensi baru pada gaya Anda. Blazer vintage kami, misalnya, menawarkan potongan yang rapi dan struktur yang baik, sering kali dengan pola klasik seperti tartan atau houndstooth yang menambah kesan profesional dan elegan. Untuk tampilan yang lebih kasual, jaket denim kami adalah pilihan yang tak lekang oleh waktu, cocok untuk segala kesempatan. Kami juga memiliki cardigan panjang yang nyaman dan stylish, ideal untuk layering di musim dingin atau sebagai tambahan gaya pada outfit sehari-hari.</p>', '<p>Outerwear is an important element in any women\'s clothing collection, and ThriftWear Indonesia offers a wide selection of jackets, blazers and cardigans that not only provide warmth but also add a new dimension to your style. Our vintage blazers, for example, offer a clean cut and good structure, often with classic patterns like tartan or houndstooth that add a professional, elegant feel. For a more casual look, our denim jackets are a timeless choice, perfect for any occasion. We also have comfortable and stylish long cardigans, ideal for layering in winter or as a stylish addition to an everyday outfit.</p>'),
(16, 'Pakaian Formal Gaya Profesional dengan Sentuhan Elegan', 'Formal Wear Professional Style with a Touch of Elegance', 'sdfsdsdfsfd_sdfsdfsdf_20082024155322.jpg', '<p>Pakaian formal di ThriftWear Indonesia dirancang untuk wanita yang membutuhkan tampilan yang rapi dan elegan dalam situasi profesional atau acara spesial. Kami menawarkan blazer dan setelan yang terdiri dari celana atau rok yang dipadukan dengan blazer, biasanya dalam warna netral atau dengan pola halus, menjadikannya pilihan ideal untuk tampilan profesional. Gaun malam kami, dengan desain yang memukau seperti payet, renda, atau potongan asimetris, menawarkan pilihan yang sempurna untuk acara-acara malam hari yang mewah dan berkelas.</p>', '<p>Formal clothing at ThriftWear Indonesia is designed for women who need a neat and elegant appearance in professional situations or special events. We offer blazers and suits consisting of trousers or a skirt paired with a blazer, usually in neutral colors or with subtle patterns, making them an ideal choice for a professional look. Our evening gowns, with stunning designs such as sequins, lace or asymmetrical cuts, offer the perfect choice for luxurious and sophisticated evening occasions.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(5) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `logo_perusahaan` varchar(100) NOT NULL,
  `deskripsi_perusahaan_in` text DEFAULT NULL,
  `deskripsi_perusahaan_en` text DEFAULT NULL,
  `deskripsi_kontak_in` text DEFAULT NULL,
  `deskripsi_kontak_en` text DEFAULT NULL,
  `link_maps` text DEFAULT NULL,
  `link_whatsapp` text DEFAULT NULL,
  `favicon_website` varchar(100) NOT NULL,
  `title_website` varchar(100) NOT NULL,
  `foto_utama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `teks_footer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `username`, `password`, `nama_perusahaan`, `logo_perusahaan`, `deskripsi_perusahaan_in`, `deskripsi_perusahaan_en`, `deskripsi_kontak_in`, `deskripsi_kontak_en`, `link_maps`, `link_whatsapp`, `favicon_website`, `title_website`, `foto_utama`, `alamat`, `no_hp`, `email`, `teks_footer`) VALUES
(1, 'user', 'user', 'ThriftWear Indonesia', 'Logo_ThriftWear-Indonesia_21082024025202.png', '<p>adalah perusahaan terpercaya yang mengkhususkan diri dalam penjualan produk thrifted pakaian berkualitas tinggi. Dengan penekanan pada keberlanjutan dan gaya yang unik, kami menjadi tujuan utama bagi mereka yang mencari fashion ramah lingkungan sekaligus trendi. Di <strong>ThriftWear Indonesia</strong>, kami bangga menawarkan berbagai pilihan pakaian yang mencakup segala sesuatu mulai dari pakaian kasual hingga busana formal, semuanya dengan kualitas terjaga dan harga yang terjangkau.</p>\r\n<p>Setiap item yang kami tawarkan dipilih dengan cermat, melalui proses seleksi yang ketat untuk memastikan bahwa hanya produk terbaik yang sampai ke tangan pelanggan kami. Kami bekerja sama dengan penyedia pakaian lokal yang telah berpengalaman dalam industri ini, memastikan bahwa setiap potong pakaian memiliki karakter dan nilai estetika yang unik.</p>', '<p>adalah perusahaan terpercaya yang mengkhususkan diri dalam penjualan produk thrifted pakaian berkualitas tinggi. Dengan penekanan pada keberlanjutan dan gaya yang unik, kami menjadi tujuan utama bagi mereka yang mencari fashion ramah lingkungan sekaligus trendi. Di <strong>ThriftWear Indonesia</strong>, kami bangga menawarkan berbagai pilihan pakaian yang mencakup segala sesuatu mulai dari pakaian kasual hingga busana formal, semuanya dengan kualitas terjaga dan harga yang terjangkau.</p>\r\n<p>Setiap item yang kami tawarkan dipilih dengan cermat, melalui proses seleksi yang ketat untuk memastikan bahwa hanya produk terbaik yang sampai ke tangan pelanggan kami. Kami bekerja sama dengan penyedia pakaian lokal yang telah berpengalaman dalam industri ini, memastikan bahwa setiap potong pakaian memiliki karakter dan nilai estetika yang unik.</p>', '<p>Malang</p>', '<p>Malang</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d4046040.312635006!2d108.0530452!3d-7.9771059!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd629c21940f685%3A0xce6adb8a6aba4f5!2sNakam%20Foods%20Indonesia!5e0!3m2!1sid!2sid!4v1691128148640!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://wa.me/+6282131222332', 'Favicon_PT-NAKAM-Foods-Indonesia_22082023083620.png', 'Curated Thrift, Conscious Fashion', '1723449175_500c41a60b6c7f5012d0.jpg', '<p>Malang</p>', '+62 821 3122 2332', 'trifthwear@gmail.com', 'All Rights Reserved. Designed with love by Me');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int(5) UNSIGNED NOT NULL,
  `file_foto_slider` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `file_foto_slider`) VALUES
(7, 'ThriftWear-Indonesia_15082024144503.jpg'),
(8, 'ThriftWear-Indonesia_15082024150200.jpg'),
(9, 'ThriftWear-Indonesia_20082024145752.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_aktivitas`
--
ALTER TABLE `tb_aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`);

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_aktivitas`
--
ALTER TABLE `tb_aktivitas`
  MODIFY `id_aktivitas` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
