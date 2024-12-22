/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : 29

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 23/12/2024 03:27:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `namespace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (13, '2023-07-20-081917', 'App\\Database\\Migrations\\TbProduk', 'default', 'App', 1690513521, 1);
INSERT INTO `migrations` VALUES (14, '2023-07-20-084755', 'App\\Database\\Migrations\\TbSlider', 'default', 'App', 1690513521, 1);
INSERT INTO `migrations` VALUES (15, '2023-07-20-085024', 'App\\Database\\Migrations\\TbProfil', 'default', 'App', 1690513521, 1);
INSERT INTO `migrations` VALUES (16, '2023-07-28-035902', 'App\\Database\\Migrations\\TbAktivitas', 'default', 'App', 1690517128, 2);

-- ----------------------------
-- Table structure for tb_aktivitas
-- ----------------------------
DROP TABLE IF EXISTS `tb_aktivitas`;
CREATE TABLE `tb_aktivitas`  (
  `id_aktivitas` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_aktivitas_in` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_aktivitas_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foto_aktivitas` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deskripsi_aktivitas_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deskripsi_aktivitas_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `slug_in` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_title_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description_id` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_title_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description_en` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_aktivitas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_aktivitas
-- ----------------------------
INSERT INTO `tb_aktivitas` VALUES (9, 'Thrift Shopping Experience Eksplorasi Gaya dan Keunikan', 'Thrift Shopping Experience Exploration of Style and Uniqueness', 'asdasdsad_asadsd_21082024092659.jpg', '<p>Mengunjungi ThriftWear Indonesia memberikan Anda kesempatan untuk menjelajahi dunia fashion yang penuh dengan keunikan dan gaya. Kami menawarkan pengalaman berbelanja yang berbeda dari toko-toko fashion biasa, di mana setiap item di toko kami dipilih dengan teliti untuk memastikan kualitas dan keaslian. Anda dapat menemukan berbagai pakaian wanita mulai dari dress vintage, blouse elegan, hingga celana dan rok dengan desain yang timeless. Setiap kali Anda berbelanja di ThriftWear Indonesia, Anda tidak hanya mendapatkan pakaian yang stylish tetapi juga berkontribusi pada pengurangan limbah fashion. Aktivitas ini adalah cara yang sempurna untuk menemukan pakaian yang tidak hanya cocok dengan gaya pribadi Anda, tetapi juga mendukung keberlanjutan lingkungan.</p>', '<p>Visiting ThriftWear Indonesia gives you the opportunity to explore the world of fashion which is full of uniqueness and style. We offer a shopping experience that is different from regular fashion stores, where every item in our store is carefully selected to ensure quality and authenticity. You can find various women\'s clothing ranging from vintage dresses, elegant blouses, to trousers and skirts with timeless designs. Every time you shop at ThriftWear Indonesia, you not only get stylish clothes but also contribute to reducing fashion waste. This activity is the perfect way to find clothes that not only match your personal style, but also support environmental sustainability.</p>', 'Thrift Shopping Experience Eksplorasi Gaya dan Keunikan', 'Thrift Shopping Experience Exploration of Style and Uniqueness', 'Thrift Shopping Experience Eksplorasi Gaya dan Keunikan', '<p>Mengunjungi ThriftWear Indonesia memberikan Anda kesempatan untuk menjelajahi dunia fashion yang penuh dengan keunikan dan gaya. Kami menawarkan pengalaman b', 'Thrift Shopping Experience Exploration of Style and Uniqueness', '<p>Visiting ThriftWear Indonesia gives you the opportunity to explore the world of fashion which is full of uniqueness and style. We offer a shopping experience');
INSERT INTO `tb_aktivitas` VALUES (12, 'Workshop Fashion Berkelanjutan Edukasi dan Kreasi', 'Educational and Creative Sustainable Fashion Workshop', 'assasd_asdsd_21082024093209.jpg', '<p>Di ThriftWear Indonesia, kami mengadakan workshop rutin yang berfokus pada prinsip-prinsip fashion berkelanjutan. Workshop ini dirancang untuk mengedukasi pelanggan tentang bagaimana memilih dan merawat pakaian dengan cara yang ramah lingkungan. Dalam workshop ini, Anda akan belajar tentang teknik perawatan pakaian yang benar, cara memperbaiki pakaian yang rusak, serta bagaimana mengubah pakaian lama menjadi item yang baru dan modis melalui proyek DIY. Selain itu, workshop ini juga membahas isu-isu global terkait limbah fashion dan bagaimana kita semua bisa mengambil peran dalam mengurangi dampaknya. Aktivitas ini sangat cocok bagi mereka yang ingin mempelajari lebih dalam tentang fashion berkelanjutan sambil mengembangkan keterampilan baru yang berguna.</p>', '<p>At ThriftWear Indonesia, we hold regular workshops that focus on the principles of sustainable fashion. This workshop is designed to educate customers on how to choose and care for clothing in an environmentally friendly manner. In this workshop, you will learn about proper clothing care techniques, how to repair damaged clothing, and how to transform old clothing into new and fashionable items through DIY projects. Apart from that, this workshop also discusses global issues related to fashion waste and how we can all play a role in reducing its impact. This activity is perfect for those who want to learn more about sustainable fashion while developing useful new skills.</p>', 'Workshop Fashion Berkelanjutan Edukasi dan Kreasi', 'Educational and Creative Sustainable Fashion Workshop', 'Workshop Fashion Berkelanjutan Edukasi dan Kreasi', '<p>Di ThriftWear Indonesia, kami mengadakan workshop rutin yang berfokus pada prinsip-prinsip fashion berkelanjutan. Workshop ini dirancang untuk mengedukasi pe', 'Educational and Creative Sustainable Fashion Workshop', '<p>At ThriftWear Indonesia, we hold regular workshops that focus on the principles of sustainable fashion. This workshop is designed to educate customers on how');
INSERT INTO `tb_aktivitas` VALUES (13, 'Tukar Pakaian', 'Clothes Swap', 'asdasdsd_asdasdasd_21082024093327.jpg', '<p>Fashion Swap Event adalah salah satu kegiatan yang paling dinantikan di ThriftWear Indonesia. Dalam acara ini, pelanggan dapat membawa pakaian yang tidak lagi mereka pakai dan menukarnya dengan item lain dari koleksi yang tersedia. Ini adalah cara yang inovatif dan menyenangkan untuk memperbarui lemari pakaian Anda tanpa harus membeli barang baru. Dengan mengikuti fashion swap, Anda juga berpartisipasi dalam gerakan untuk mengurangi produksi dan konsumsi pakaian yang berlebihan, yang berdampak besar pada lingkungan. Selain itu, acara ini juga menjadi ajang untuk bertemu dan berinteraksi dengan sesama pecinta fashion berkelanjutan, berbagi tips, dan mendapatkan inspirasi gaya baru.</p>', '<p>The Fashion Swap Event is one of the most anticipated activities at ThriftWear Indonesia. In this event, customers can bring clothes they no longer wear and exchange them for other items from the available collection. This is an innovative and fun way to update your wardrobe without having to buy anything new. By participating in a fashion swap, you are also participating in the movement to reduce excessive clothing production and consumption, which has a huge impact on the environment. Apart from that, this event is also an opportunity to meet and interact with fellow sustainable fashion lovers, share tips, and get new style inspiration.</p>', 'Tukar Pakaian', 'Clothes Swap', 'Tukar Pakaian', '<p>Fashion Swap Event adalah salah satu kegiatan yang paling dinantikan di ThriftWear Indonesia. Dalam acara ini, pelanggan dapat membawa pakaian yang tidak lag', 'Clothes Swap', '<p>The Fashion Swap Event is one of the most anticipated activities at ThriftWear Indonesia. In this event, customers can bring clothes they no longer wear and ');

-- ----------------------------
-- Table structure for tb_artikel
-- ----------------------------
DROP TABLE IF EXISTS `tb_artikel`;
CREATE TABLE `tb_artikel`  (
  `id_artikel` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul_artikel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto_artikel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi_artikel` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT current_timestamp,
  `judul_artikel_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi_artikel_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `slug_in` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slug_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_title_in` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_description_in` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_title_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_description_en` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_artikel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_artikel
-- ----------------------------
INSERT INTO `tb_artikel` VALUES (7, 'Dress Vintage Memadukan Klasik dan Keanggunan', '21082024021650.jpg', '<p>Dress vintage merupakan salah satu kategori paling dicari di ThriftWear Indonesia. Setiap gaun yang kami tawarkan memiliki nilai sejarah tersendiri, membawa kembali keindahan mode dari era yang telah berlalu. Misalnya, gaun A-line yang elegan dan klasik sangat ideal untuk acara formal maupun kasual. Sementara itu, maxi dress yang anggun memberikan sentuhan bohemian yang chic, sempurna untuk wanita yang ingin tampil santai namun tetap stylish.</p>\r\n<p>Setiap dress vintage di koleksi kami dipilih dengan hati-hati untuk memastikan kualitas dan keunikan yang tidak bisa ditemukan di tempat lain. Memakai dress vintage bukan hanya tentang tampil cantik; ini juga tentang menghargai sejarah mode dan membawa kembali gaya-gaya yang telah terbukti bertahan melawan waktu. Selain itu, dengan memilih dress vintage, Anda turut berpartisipasi dalam mengurangi limbah fashion, sebuah langkah kecil yang berdampak besar bagi lingkungan.</p>', '2024-08-21 09:16:50', 'Vintage Dresses Combine Classicism and Elegance', '<p>Vintage dresses are one of the most sought after categories at ThriftWear Indonesia. Every dress we offer has its own historical value, bringing back the beauty of fashion from a bygone era. For example, an elegant and classic A-line dress is ideal for both formal and casual events. Meanwhile, the elegant maxi dress gives a touch of bohemian chic, perfect for women who want to look relaxed but still stylish.</p>\r\n<p>Each vintage dress in our collection is carefully selected to ensure quality and uniqueness that cannot be found anywhere else. Wearing a vintage dress isn\'t just about looking beautiful; it\'s also about honoring fashion history and bringing back styles that have proven to stand the test of time. In addition, by choosing a vintage dress, you are participating in reducing fashion waste, a small step that has a big impact on the environment.</p>', 'Dress Vintage Memadukan Klasik dan Keanggunan', 'Vintage Dresses Combine Classicism and Elegance', 'Dress Vintage Memadukan Klasik dan Keanggunan', '<p>Dress vintage merupakan salah satu kategori paling dicari di ThriftWear Indonesia. Setiap gaun yang kami tawarkan memiliki nilai sejarah tersendiri, membawa ', 'Vintage Dresses Combine Classicism and Elegance', '<p>Vintage dresses are one of the most sought after categories at ThriftWear Indonesia. Every dress we offer has its own historical value, bringing back the bea');
INSERT INTO `tb_artikel` VALUES (8, 'Blouse & Top Kombinasi Sempurna antara Elegansi dan Kenyamanan', '21082024021725.jpg', '<p>Blouse dan top dari ThriftWear Indonesia menawarkan berbagai pilihan bagi wanita yang ingin tampil elegan atau kasual. Koleksi blouse sutra kami, misalnya, menghadirkan kelembutan dan kemewahan yang tak tertandingi. Atasan ini dapat dipadukan dengan berbagai jenis bawahan, mulai dari rok hingga celana, menjadikannya pilihan sempurna untuk berbagai kesempatan, baik formal maupun semi-formal.</p>\r\n<p>Sementara itu, bagi mereka yang lebih menyukai gaya kasual, crop top dan tunic kami menawarkan tampilan yang modern dan trendi. Crop top dengan desain yang mencolok, seperti ikatan atau motif yang unik, sangat cocok untuk tampilan yang playful dan penuh energi. Di sisi lain, tunic panjang yang nyaman dapat dengan mudah dipadukan dengan legging atau jeans, menawarkan fleksibilitas dalam gaya tanpa mengorbankan kenyamanan.</p>', '2024-08-21 09:17:25', 'Blouse & Top The Perfect Combination of Elegance and Comfort', '<p>Blouse and tops from ThriftWear Indonesia offer various choices for women who want to look elegant or casual. Our silk blouse collection, for example, delivers unrivaled softness and luxury. This top can be combined with various types of bottoms, from skirts to trousers, making it the perfect choice for various occasions, both formal and semi-formal.</p>\r\n<p>Meanwhile, for those who prefer a casual style, our crop tops and tunics offer a modern and trendy look. Crop tops with striking designs, such as ties or unique motifs, are perfect for a playful and energetic look. On the other hand, a comfortable long tunic can be easily paired with leggings or jeans, offering flexibility in style without sacrificing comfort.</p>', 'Blouse & Top Kombinasi Sempurna antara Elegansi dan Kenyamanan', 'Blouse & Top The Perfect Combination of Elegance and Comfort', 'Blouse & Top Kombinasi Sempurna antara Elegansi dan Kenyamanan', '<p>Blouse dan top dari ThriftWear Indonesia menawarkan berbagai pilihan bagi wanita yang ingin tampil elegan atau kasual. Koleksi blouse sutra kami, misalnya, m', 'Blouse & Top The Perfect Combination of Elegance and Comfort', '<p>Blouse and tops from ThriftWear Indonesia offer various choices for women who want to look elegant or casual. Our silk blouse collection, for example, delive');
INSERT INTO `tb_artikel` VALUES (9, 'Outerwear Memaksimalkan Gaya dengan Lapisan yang Tepat', '21082024021805.jpg', '<p>Tidak ada yang lebih penting dalam fashion selain outerwear yang tepat. Di ThriftWear Indonesia, kami menawarkan berbagai pilihan outerwear yang tidak hanya memberikan kehangatan tetapi juga meningkatkan gaya Anda. Blazer vintage, misalnya, adalah pilihan yang sempurna untuk tampilan profesional yang tetap modis. Blazer ini sering kali hadir dengan pola klasik seperti tartan atau houndstooth yang menambahkan sentuhan elegan pada tampilan Anda.</p>\r\n<p>Jaket denim kami, yang tak lekang oleh waktu, cocok untuk berbagai kesempatan, baik itu acara kasual atau hangout dengan teman-teman. Untuk lapisan yang lebih nyaman dan stylish, cardigan panjang kami menawarkan fleksibilitas dan gaya yang bisa diandalkan. Outerwear dari ThriftWear Indonesia adalah cara terbaik untuk menambahkan dimensi baru pada gaya Anda, memastikan Anda tetap hangat dan modis sepanjang waktu.</p>', '2024-08-21 09:18:05', 'Outerwear Maximizes Style with the Right Layers', '<p>There is nothing more important in fashion than the right outerwear. At ThriftWear Indonesia, we offer a wide selection of outerwear that not only provides warmth but also enhances your style. A vintage blazer, for example, is the perfect choice for a professional look that\'s still fashionable. These blazers often come in classic patterns like tartan or houndstooth that add a touch of elegance to your look.</p>\r\n<p>Our timeless denim jackets are suitable for any occasion, be it a casual event or a hangout with friends. For a more comfortable and stylish layer, our long cardigans offer flexibility and dependable style. Outerwear from ThriftWear Indonesia is a great way to add a new dimension to your style, ensuring you stay warm and fashionable all the time.</p>', 'Outerwear Memaksimalkan Gaya dengan Lapisan yang Tepat', 'Outerwear Maximizes Style with the Right Layers', 'Outerwear Memaksimalkan Gaya dengan Lapisan yang Tepat', '<p>Tidak ada yang lebih penting dalam fashion selain outerwear yang tepat. Di ThriftWear Indonesia, kami menawarkan berbagai pilihan outerwear yang tidak hanya ', 'Outerwear Maximizes Style with the Right Layers', '<p>There is nothing more important in fashion than the right outerwear. At ThriftWear Indonesia, we offer a wide selection of outerwear that not only provides w');
INSERT INTO `tb_artikel` VALUES (10, 'Pakaian Formal Gaya Profesional yang Memukau', '21082024021849.jpg', '<p>Bagi wanita yang membutuhkan tampilan formal yang rapi dan elegan, ThriftWear Indonesia menawarkan berbagai pilihan blazer dan setelan yang sempurna untuk lingkungan kerja atau acara resmi. Setelan kami, yang terdiri dari blazer dan celana atau rok, biasanya hadir dalam warna netral dengan pola halus, memastikan Anda tampil profesional tanpa mengorbankan gaya.</p>\r\n<p>Untuk acara-acara malam hari yang lebih mewah, gaun malam kami menawarkan berbagai pilihan yang memukau, dengan detail seperti payet, renda, atau potongan asimetris yang menambah kesan glamor dan elegan. Setiap item dalam koleksi pakaian formal kami dirancang untuk memberikan tampilan yang sophisticated, memastikan Anda tampil terbaik dalam setiap kesempatan.</p>\r\n<h3>&nbsp;</h3>', '2024-08-21 09:18:49', 'Stunning Professional Style Formal Attire', '<p>For women who need a neat and elegant formal look, ThriftWear Indonesia offers a wide selection of blazers and suits that are perfect for the work environment or formal events. Our suits, consisting of a blazer and trousers or skirt, usually come in neutral colors with subtle patterns, ensuring you look professional without sacrificing style.</p>\r\n<p>For more luxurious evening events, our evening gowns offer a variety of stunning options, with details such as sequins, lace or asymmetrical cuts that add glamor and elegance. Each item in our formal wear collection is designed to provide a sophisticated look, ensuring you look your best on every occasion.</p><h3>&nbsp;</h3>', 'Pakaian Formal Gaya Profesional yang Memukau', 'Stunning Professional Style Formal Attire', 'Pakaian Formal Gaya Profesional yang Memukau', '<p>Bagi wanita yang membutuhkan tampilan formal yang rapi dan elegan, ThriftWear Indonesia menawarkan berbagai pilihan blazer dan setelan yang sempurna untuk li', 'Stunning Professional Style Formal Attire', '<p>For women who need a neat and elegant formal look, ThriftWear Indonesia offers a wide selection of blazers and suits that are perfect for the work environmen');

-- ----------------------------
-- Table structure for tb_meta
-- ----------------------------
DROP TABLE IF EXISTS `tb_meta`;
CREATE TABLE `tb_meta`  (
  `id_seo` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_halaman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_title_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_description_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_title_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `meta_description_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_seo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_meta
-- ----------------------------
INSERT INTO `tb_meta` VALUES (1, 'Beranda', 'Beranda | Competen Company Profile', 'Temukan informasi lengkap tentang perusahaan Competent dan layanan unggulan kami di halaman Beranda.', 'Home | Competen Company Profile', 'Discover complete information about Competent Company and our top services on the Home page.');
INSERT INTO `tb_meta` VALUES (2, 'Tentang Kami', 'Tentang Kami | Competent Company Profile', 'Pelajari lebih lanjut tentang sejarah, visi, misi, dan nilai-nilai perusahaan Competent di halaman T', 'About Us | Competent Company Profile', ' Learn more about the history, vision, mission, and values of Competent Company on the About Us page');
INSERT INTO `tb_meta` VALUES (3, 'Blog', 'Blog | Competent Company Profile', ' Ikuti artikel dan berita terbaru dari perusahaan Competent di halaman Blog kami.', 'Blog | Competent Company Profile', 'Follow the latest articles and news from Competent Company on our Blog page.');
INSERT INTO `tb_meta` VALUES (4, 'Materi Pelatihan', 'Materi Pelatihan | Competent Company Profile', 'Jelajahi berbagai materi pelatihan yang disediakan oleh Competent untuk meningkatkan keterampilan pr', 'Training Materials | Competent Company Profile', 'Explore various training materials provided by Competent to enhance your professional skills.');
INSERT INTO `tb_meta` VALUES (5, 'Klien', 'Klien | Competent Company Profile', 'Lihat daftar klien kami dan studi kasus tentang bagaimana kami telah membantu mereka mencapai kesuks', 'Clients | Competent Company Profile', 'View our client list and case studies on how we have helped them achieve success.');
INSERT INTO `tb_meta` VALUES (6, 'Kontak', 'Kontak | Competent Company Profile', 'Hubungi tim Competent untuk pertanyaan lebih lanjut atau permintaan layanan di halaman Kontak.', 'Contact | Competent Company Profile', 'Contact the Competent team for further inquiries or service requests on the Contact page.');

-- ----------------------------
-- Table structure for tb_produk
-- ----------------------------
DROP TABLE IF EXISTS `tb_produk`;
CREATE TABLE `tb_produk`  (
  `id_produk` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_produk_in` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_produk_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foto_produk` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deskripsi_produk_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deskripsi_produk_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `slug_in` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_title_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description_id` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_title_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description_en` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_produk
-- ----------------------------
INSERT INTO `tb_produk` VALUES (9, 'Dress Vintage', 'Vintage Dresses', 'Vintage Dresses_Dress Vintage_20082024152302.jpg', '<p>Dress vintage adalah salah satu kategori paling populer di ThriftWear Indonesia, menawarkan beragam pilihan gaun yang membawa kembali keindahan fashion dari berbagai era. Setiap dress vintage memiliki cerita tersendiri, dari gaun-gaun dengan potongan A-line yang anggun hingga maxi dress yang elegan dan mengalir. Kami juga menawarkan cocktail dress dengan detail yang menawan, seperti renda, manik-manik, dan bordir, yang sempurna untuk acara spesial. Dengan bahan berkualitas dan desain yang teliti, dress vintage dari ThriftWear Indonesia memberikan tampilan yang unik dan sophisticated, cocok untuk wanita yang ingin tampil berbeda dari yang lain.</p>', '<p>Vintage dresses are one of the most popular categories at ThriftWear Indonesia, offering a wide selection of dresses that bring back the beauty of fashion from various eras. Every vintage dress has its own story, from dresses with graceful A-line cuts to elegant and flowing maxi dresses. We also offer cocktail dresses with charming details, such as lace, beading, and embroidery, that are perfect for special occasions. With quality materials and careful designs, vintage dresses from ThriftWear Indonesia provide a unique and sophisticated appearance, suitable for women who want to look different from the others.</p>', 'Dress Vintage', 'Vintage Dresses', 'Dress Vintage', '<p>Dress vintage adalah salah satu kategori paling populer di ThriftWear Indonesia, menawarkan beragam pilihan gaun yang membawa kembali keindahan fashion dari ', 'Vintage Dresses', '<p>Vintage dresses are one of the most popular categories at ThriftWear Indonesia, offering a wide selection of dresses that bring back the beauty of fashion fr');
INSERT INTO `tb_produk` VALUES (11, 'Blouse Top Elegansi dan Gaya yang Serba Guna', 'Blouse Top Elegance and Versatile Style', 'Blouse Top Elegance and Versatile Style_Blouse Top Elegance and Versatile Style_20082024153537.jpg', '<p>Blouse dan atasan di ThriftWear Indonesia dirancang untuk memenuhi kebutuhan fashion sehari-hari maupun acara formal. Koleksi blouse sutra kami, misalnya, menawarkan kelembutan dan kemewahan yang tak tertandingi, menjadikannya pilihan sempurna untuk dipadukan dengan rok atau celana dalam situasi formal. Di sisi lain, crop top kami memberikan sentuhan modern dan playful, dengan desain yang sering kali menonjolkan detail menarik seperti kancing, ikat, atau motif mencolok. Bagi yang mencari kenyamanan tanpa mengorbankan gaya, tunic panjang kami menawarkan tampilan yang santai namun tetap chic, ideal untuk digunakan dengan legging atau jeans.</p>', '<p>Blouses and tops at ThriftWear Indonesia are designed to meet your daily fashion needs and formal events. Our collection of silk blouses, for example, offers unrivaled softness and luxury, making them the perfect choice to pair with skirts or trousers in formal situations. On the other hand, our crop tops provide a modern, playful touch, with designs that often feature interesting details such as buttons, ties or bold prints. For those looking for comfort without sacrificing style, our long tunics offer a relaxed yet chic look, ideal for wearing with leggings or jeans.</p>', 'Blouse Top Elegansi dan Gaya yang Serba Guna', 'Blouse Top Elegance and Versatile Style', 'Blouse Top Elegansi dan Gaya yang Serba Guna', '<p>Blouse dan atasan di ThriftWear Indonesia dirancang untuk memenuhi kebutuhan fashion sehari-hari maupun acara formal. Koleksi blouse sutra kami, misalnya, me', 'Blouse Top Elegance and Versatile Style', '<p>Blouses and tops at ThriftWear Indonesia are designed to meet your daily fashion needs and formal events. Our collection of silk blouses, for example, offers');
INSERT INTO `tb_produk` VALUES (14, 'Outerwear Lapisan Gaya dengan Sentuhan Vintage', 'Stylish Layered Outerwear with a Vintage Touch', 'sdfsdfsf_sfsfsdf_20082024154623.jpg', '<p>Outerwear adalah elemen penting dalam setiap koleksi pakaian wanita, dan ThriftWear Indonesia menawarkan berbagai pilihan jaket, blazer, dan cardigan yang tidak hanya memberikan kehangatan tetapi juga menambahkan dimensi baru pada gaya Anda. Blazer vintage kami, misalnya, menawarkan potongan yang rapi dan struktur yang baik, sering kali dengan pola klasik seperti tartan atau houndstooth yang menambah kesan profesional dan elegan. Untuk tampilan yang lebih kasual, jaket denim kami adalah pilihan yang tak lekang oleh waktu, cocok untuk segala kesempatan. Kami juga memiliki cardigan panjang yang nyaman dan stylish, ideal untuk layering di musim dingin atau sebagai tambahan gaya pada outfit sehari-hari.</p>', '<p>Outerwear is an important element in any women\'s clothing collection, and ThriftWear Indonesia offers a wide selection of jackets, blazers and cardigans that not only provide warmth but also add a new dimension to your style. Our vintage blazers, for example, offer a clean cut and good structure, often with classic patterns like tartan or houndstooth that add a professional, elegant feel. For a more casual look, our denim jackets are a timeless choice, perfect for any occasion. We also have comfortable and stylish long cardigans, ideal for layering in winter or as a stylish addition to an everyday outfit.</p>', 'Outerwear Lapisan Gaya dengan Sentuhan Vintage', 'Stylish Layered Outerwear with a Vintage Touch', 'Outerwear Lapisan Gaya dengan Sentuhan Vintage', '<p>Outerwear adalah elemen penting dalam setiap koleksi pakaian wanita, dan ThriftWear Indonesia menawarkan berbagai pilihan jaket, blazer, dan cardigan yang ti', 'Stylish Layered Outerwear with a Vintage Touch', '<p>Outerwear is an important element in any women\'s clothing collection, and ThriftWear Indonesia offers a wide selection of jackets, blazers and cardigans that');
INSERT INTO `tb_produk` VALUES (16, 'Pakaian Formal Gaya Profesional dengan Sentuhan Elegan', 'Formal Wear Professional Style with a Touch of Elegance', 'sdfsdsdfsfd_sdfsdfsdf_20082024155322.jpg', '<p>Pakaian formal di ThriftWear Indonesia dirancang untuk wanita yang membutuhkan tampilan yang rapi dan elegan dalam situasi profesional atau acara spesial. Kami menawarkan blazer dan setelan yang terdiri dari celana atau rok yang dipadukan dengan blazer, biasanya dalam warna netral atau dengan pola halus, menjadikannya pilihan ideal untuk tampilan profesional. Gaun malam kami, dengan desain yang memukau seperti payet, renda, atau potongan asimetris, menawarkan pilihan yang sempurna untuk acara-acara malam hari yang mewah dan berkelas.</p>', '<p>Formal clothing at ThriftWear Indonesia is designed for women who need a neat and elegant appearance in professional situations or special events. We offer blazers and suits consisting of trousers or a skirt paired with a blazer, usually in neutral colors or with subtle patterns, making them an ideal choice for a professional look. Our evening gowns, with stunning designs such as sequins, lace or asymmetrical cuts, offer the perfect choice for luxurious and sophisticated evening occasions.</p>', 'Pakaian Formal Gaya Profesional dengan Sentuhan Elegan', 'Formal Wear Professional Style with a Touch of Elegance', 'Pakaian Formal Gaya Profesional dengan Sentuhan Elegan', '<p>Pakaian formal di ThriftWear Indonesia dirancang untuk wanita yang membutuhkan tampilan yang rapi dan elegan dalam situasi profesional atau acara spesial. Ka', 'Formal Wear Professional Style with a Touch of Elegance', '<p>Formal clothing at ThriftWear Indonesia is designed for women who need a neat and elegant appearance in professional situations or special events. We offer b');

-- ----------------------------
-- Table structure for tb_profil
-- ----------------------------
DROP TABLE IF EXISTS `tb_profil`;
CREATE TABLE `tb_profil`  (
  `id_profil` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_perusahaan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_perusahaan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deskripsi_perusahaan_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deskripsi_perusahaan_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deskripsi_kontak_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deskripsi_kontak_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link_maps` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link_whatsapp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `favicon_website` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_website` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foto_utama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alamat` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `no_hp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teks_footer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_profil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_profil
-- ----------------------------
INSERT INTO `tb_profil` VALUES (1, 'user', 'user', 'ThriftWear Indonesia', 'Logo_ThriftWear-Indonesia_17122024070548.jpg', '<p>adalah perusahaan terpercaya yang mengkhususkan diri dalam penjualan produk thrifted pakaian berkualitas tinggi. Dengan penekanan pada keberlanjutan dan gaya yang unik, kami menjadi tujuan utama bagi mereka yang mencari fashion ramah lingkungan sekaligus trendi. Di <strong>ThriftWear Indonesia</strong>, kami bangga menawarkan berbagai pilihan pakaian yang mencakup segala sesuatu mulai dari pakaian kasual hingga busana formal, semuanya dengan kualitas terjaga dan harga yang terjangkau.</p>\r\n<p>Setiap item yang kami tawarkan dipilih dengan cermat, melalui proses seleksi yang ketat untuk memastikan bahwa hanya produk terbaik yang sampai ke tangan pelanggan kami. Kami bekerja sama dengan penyedia pakaian lokal yang telah berpengalaman dalam industri ini, memastikan bahwa setiap potong pakaian memiliki karakter dan nilai estetika yang unik.</p>', '<p>adalah perusahaan terpercaya yang mengkhususkan diri dalam penjualan produk thrifted pakaian berkualitas tinggi. Dengan penekanan pada keberlanjutan dan gaya yang unik, kami menjadi tujuan utama bagi mereka yang mencari fashion ramah lingkungan sekaligus trendi. Di <strong>ThriftWear Indonesia</strong>, kami bangga menawarkan berbagai pilihan pakaian yang mencakup segala sesuatu mulai dari pakaian kasual hingga busana formal, semuanya dengan kualitas terjaga dan harga yang terjangkau.</p>\r\n<p>Setiap item yang kami tawarkan dipilih dengan cermat, melalui proses seleksi yang ketat untuk memastikan bahwa hanya produk terbaik yang sampai ke tangan pelanggan kami. Kami bekerja sama dengan penyedia pakaian lokal yang telah berpengalaman dalam industri ini, memastikan bahwa setiap potong pakaian memiliki karakter dan nilai estetika yang unik.</p>', '<p>Malang</p>', '<p>Malang</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d4046040.312635006!2d108.0530452!3d-7.9771059!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd629c21940f685%3A0xce6adb8a6aba4f5!2sNakam%20Foods%20Indonesia!5e0!3m2!1sid!2sid!4v1691128148640!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://wa.me/+6282131222332', 'Favicon_PT-NAKAM-Foods-Indonesia_22082023083620.png', 'Curated Thrift, Conscious Fashion', '1723449175_500c41a60b6c7f5012d0.jpg', '<p>Malang</p>', '+62 821 3122 2332', 'trifthwear@gmail.com', 'All Rights Reserved. Designed with love by Me');

-- ----------------------------
-- Table structure for tb_slider
-- ----------------------------
DROP TABLE IF EXISTS `tb_slider`;
CREATE TABLE `tb_slider`  (
  `id_slider` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_foto_slider` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_slider`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_slider
-- ----------------------------
INSERT INTO `tb_slider` VALUES (7, 'ThriftWear-Indonesia_15082024144503.jpg');
INSERT INTO `tb_slider` VALUES (8, 'ThriftWear-Indonesia_15082024150200.jpg');
INSERT INTO `tb_slider` VALUES (9, 'ThriftWear-Indonesia_20082024145752.jpg');

SET FOREIGN_KEY_CHECKS = 1;
