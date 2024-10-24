/*
 Navicat Premium Data Transfer

 Source Server         : DB_Local
 Source Server Type    : MySQL
 Source Server Version : 100434
 Source Host           : localhost:3306
 Source Schema         : exam_laravel_app_db

 Target Server Type    : MySQL
 Target Server Version : 100434
 File Encoding         : 65001

 Date: 18/10/2024 18:08:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for soals
-- ----------------------------
DROP TABLE IF EXISTS `soals`;
CREATE TABLE `soals`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `paket_to_id` bigint UNSIGNED NOT NULL,
  `jenis_id` bigint UNSIGNED NOT NULL,
  `soal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soals
-- ----------------------------
INSERT INTO `soals` VALUES (1, 5, 1, 3, '<p>Bhinneka Tunggal Ika merupakan semboyan nasional Indonesia yang berarti berbeda-beda tetapi tetap satu. Nilai-nilai yang dapat diimplementasikan oleh masyarakat dalam semboyan Bhinneka Tunggal Ika adalah…</p>', 'Menyadari pentingnya sikap kedaerahan untuk memperkuat persatuan', 'Mempertahankan kemerdekaan dengan cara berprestasi di berbagai bidang', 'Menerima keberagaman suku dan budaya sebagai kekayaan bangsa dan saling menghargai', 'Mematuhi peraturan demi menciptakan kedamaian dan ketertiban', 'Mengembangkan sikap kebanggaan terhadap budaya sendiri dalam kehidupan bermasyarakat', '2024-10-09 02:41:03', '2024-10-09 08:13:22');
INSERT INTO `soals` VALUES (2, 5, 1, 1, '<p>Pancasila tercantum dalam pembukaan Undang-Undang Dasar (UUD) 1945 pada alinea…</p>', 'Pertama', 'Kedua', 'Ketiga', 'Keempat', 'Ketiga dan keempat', '2024-10-09 11:56:51', '2024-10-09 11:56:51');
INSERT INTO `soals` VALUES (3, 5, 1, 1, '<p>Dalam sumber tata hukum di Indonesia, kedudukan Pancasila sebagai …</p>', 'Hukum tertulis tertinggi di Indonesia', 'Setingkat dengan UUD 1945', 'Sumber dari segala sumber hukum', 'Setingkat dengan Ketetapan Majelis Permusyawaratan Rakyat (Tap MPR)', 'Hukum tertinggi di Indonesia', '2024-10-09 12:06:57', '2024-10-09 12:06:57');
INSERT INTO `soals` VALUES (8, 5, 1, 1, '<p>Paham integralistik yang terkandung dalam Pancasila meletakkan asas kebersamaan hidup, menginginkan keselarasan dalam hubungan, baik antara individu maupun masyarakat. Jika dirinci, maka paham negara integralistik mempunyai pandangan sebagai berikut, kecuali …</p>', 'Negara tidak memihak kepada suatu golongan atau perseorangan.', 'Negara menilai kepentingan seseorang sebagai pusat.', 'Negara tidak hanya menjamin kepentingan seseorang atau golongan tertentu saja.', 'Negara menjamin kepentingan masyarakat seluruhnya sebagai satu kesatuan.', 'Negara menjamin keselamatan hidup bangsa sepenuhnya sebagai satu kesatuan.', '2024-10-18 01:17:04', '2024-10-18 01:17:04');
INSERT INTO `soals` VALUES (9, 5, 1, 2, '<p>Terdapat beberapa perubahan pada UUD 1945 yang memengaruhi sistem politik Indonesia, salah satunya adalah adanya pembatasan masa jabatan presiden. Hal itu diatur dalam UUD 1945 Pasal …</p>', '6A.', '7', '7A', '7B', '7C', '2024-10-18 01:27:59', '2024-10-18 01:27:59');
INSERT INTO `soals` VALUES (10, 5, 1, 2, '<p>Asas dalam negara hukum yang mengutamakan landasan peraturan perundang-undangan, kepatutan, dan keadilan dalam setiap kebijakan penyelenggaraan disebut sebagai asas …</p>', 'Akuntabilitas', 'Profesionalitas', 'Proporsionalitas', 'Kepastian hukum', 'Tertib dalam penyelenggaraan negara', '2024-10-18 01:29:55', '2024-10-18 01:29:55');
INSERT INTO `soals` VALUES (11, 5, 1, 2, '<p>Berdasarkan undang-undang Nomor 48 Tahun 2009 tentang Kekuasaan Kehakiman, disebutkan bahwa pengawasan dalam lembaga peradilan dilakukan oleh dua lembaga. Pengawasan secara internal dilakukan oleh …</p>', 'Menteri Hukum dan HAM.', 'Mahkamah Konstitusi (MK).', 'Komisi Yudisial (KY).', 'Presiden.', 'MA.', '2024-10-18 01:32:39', '2024-10-18 01:38:17');
INSERT INTO `soals` VALUES (12, 5, 1, 4, '<p>Badan Pertimbangan Pendidikan Nasional (BPPN) dibentuk dan anggotanya diangkat oleh presiden sebagai wujud …</p>', 'Lembaga pembantu presiden dalam bidang pendidikan.', 'Pengawasan pemerintah dalam pengendalian kualitas pendidikan.', 'Lembaga non-pemerintah yang bergerak di bidang pendidikan.', 'Institusi non-departemen dalam perumusan kebijakan pendidikan.', 'Lembaga pengawas pendidikan dan kebudayaan.', '2024-10-18 02:28:10', '2024-10-18 02:28:10');
INSERT INTO `soals` VALUES (13, 5, 1, 5, '<p>Departemen Agama seharusnya sanggup menyelenggarakan ibadah haji secara lebih baik. Sesuai dengan peraturan perundang-undangan terbaru, departemen ini tetap menjadi regulator sekaligus operator bahkan ikut menentukan anggota komisi pengawas. Peningkatan kualitas pelayanan diharapkan terjadi melalui pembenahan manajemen. Keluhan mulai muncul saat belum ada perbaikan yang berarti. Lihatlah, baru-baru ini 89 anggota jemaah calon haji dari Jakarta dilaporkan mengalami diare ketika berada di Madinah. Penderitaan mereka diduga akibat makanan basi atau tidak memenuhi standar kesehatan. Insiden seperti itu tidak perlu terjadi seandainya perusahaan katering menjaga kualitas makanan yang disajikan. Kualitas layanan akan terjamin lagi bila tim kesehatan selalu memeriksa dan mengawasi makanan untuk jemaah calon haji. (Tempo, 21 November 2008).</p><p>Pernyataan berikut yang termasuk opini dari teks tersebut, kecuali …</p>', 'Jemaah calon haji Indonesia tidak mendapatkan layanan maksimal dari Departemen Agama', 'Departemen Agama tidak bekerja secara profesional dalam penyelenggaraan ibadah haji', 'Manajemen Departemen Agama lemah, sehingga tidak dapat meningkatkan pelayanan penyelenggaraan ibadah haji', 'Tim kesehatan tidak memeriksa dan mengawasi makanan, sehingga jemaah calon haji makan nasi basi', 'Koordinasi tidak berjalan baik di antara komponen penyelenggara ibadah haji di Departemen Agama', '2024-10-18 02:43:33', '2024-10-18 02:43:33');
INSERT INTO `soals` VALUES (14, 5, 1, 5, '<p>Kalimat efektif terdapat pada pernyataan …</p>', 'Dalam musyawarah itu menghasilkan lima keputusan yang harus dilaksanakan bersama.', 'Dalam pertemuan itu memutuskan bahwa Andi terpilih sebagai ketua koperasi.', 'Kegagalan proyek itu karena perancangan yang tidak baik dan pengawasan yang kurang cermat', 'Walaupun negara Brasil adalah penghasil kapas nomor satu dunia, tetapi harga tekstilnya sangat tinggi', 'Budiman ingin menjadi juara umum di sekolahnya, tetapi dia hanya berhasil menjadi juara ketiga', '2024-10-18 02:50:00', '2024-10-18 02:50:00');
INSERT INTO `soals` VALUES (15, 5, 1, 1, '<p>Nilai instrumental dalam ideologi Pancasila adalah …</p>', 'Saling menghormati.', 'Keadilan', 'Ketuhanan', 'Peraturan-peraturan.', 'Kemanusiaan', '2024-10-18 02:53:48', '2024-10-18 02:53:48');
INSERT INTO `soals` VALUES (16, 5, 1, 4, '<p>Perbedaan sistem pemerintahan kerajaan dan republik, salah satunya adalah …</p>', 'Pengangkatan masa jabatan kepala negara.', 'Jumlah orang yang memegang kekuasaan.', 'Gaya kekuasaan yang dilakukan.', 'Tujuan kekuasaan yang dilaksanakan pemerintah.', 'Usaha-usaha untuk meraih tujuan negara.', '2024-10-18 04:09:18', '2024-10-18 04:09:18');

SET FOREIGN_KEY_CHECKS = 1;
