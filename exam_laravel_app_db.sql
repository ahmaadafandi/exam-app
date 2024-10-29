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

 Date: 29/10/2024 13:02:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------
INSERT INTO `cache` VALUES ('0dBiZbP2Z4MmCbu8', 's:7:\"forever\";', 2045285518);
INSERT INTO `cache` VALUES ('0xx78W81E1RvNJSj', 's:7:\"forever\";', 2044326257);
INSERT INTO `cache` VALUES ('1W2TLSSQ7eFMxFg4', 's:7:\"forever\";', 2045115503);
INSERT INTO `cache` VALUES ('24mXzHtuxuM7rJc6', 's:7:\"forever\";', 2043759269);
INSERT INTO `cache` VALUES ('2bdJBmlpMjQ7eoO0', 's:7:\"forever\";', 2044326300);
INSERT INTO `cache` VALUES ('2BsH1ZggGNxkPHFb', 's:7:\"forever\";', 2044324229);
INSERT INTO `cache` VALUES ('2rHRXwMWhCVJIZv2', 's:7:\"forever\";', 2044600663);
INSERT INTO `cache` VALUES ('2wdQS18ts0jb2SlR', 's:7:\"forever\";', 2045115819);
INSERT INTO `cache` VALUES ('4I8fsO6CLpVegbi0', 's:7:\"forever\";', 2045005475);
INSERT INTO `cache` VALUES ('4NFKFlF3yeF1OpR5', 's:7:\"forever\";', 2044402987);
INSERT INTO `cache` VALUES ('4qneWMpIx8RR0OIU', 's:7:\"forever\";', 2043236634);
INSERT INTO `cache` VALUES ('5Jfsyx8bOUiDULOq', 's:7:\"forever\";', 2043627782);
INSERT INTO `cache` VALUES ('6aMScy1m7pLueVRC', 's:7:\"forever\";', 2044324337);
INSERT INTO `cache` VALUES ('6okF8DcsnQOwPsgB', 's:7:\"forever\";', 2043304375);
INSERT INTO `cache` VALUES ('7E8GP4ObSDKbebhm', 's:7:\"forever\";', 2043759795);
INSERT INTO `cache` VALUES ('7LqpYOSb641vSUHB', 's:7:\"forever\";', 2044260890);
INSERT INTO `cache` VALUES ('8DBFWMg6O1VSkUf2', 's:7:\"forever\";', 2043759051);
INSERT INTO `cache` VALUES ('8s1KMcIIqyR5aQ69', 's:7:\"forever\";', 2044259039);
INSERT INTO `cache` VALUES ('9rkFTflV4x1baULU', 's:7:\"forever\";', 2044324088);
INSERT INTO `cache` VALUES ('aoUeYCwSREexIceW', 's:7:\"forever\";', 2044260820);
INSERT INTO `cache` VALUES ('B9FavAkLe9IBwQTV', 's:7:\"forever\";', 2045009325);
INSERT INTO `cache` VALUES ('BaGs5qo2cbB70S5R', 's:7:\"forever\";', 2043759953);
INSERT INTO `cache` VALUES ('c5BEMDeDTHjXHl5n', 's:7:\"forever\";', 2043759143);
INSERT INTO `cache` VALUES ('cbWjJXJbJYDcfQne', 's:7:\"forever\";', 2043375538);
INSERT INTO `cache` VALUES ('CFsBW2XvoRL5ucex', 's:7:\"forever\";', 2043759242);
INSERT INTO `cache` VALUES ('CgJq7u0yCKUifiyx', 's:7:\"forever\";', 2044517111);
INSERT INTO `cache` VALUES ('CquCIXP1fZWEZEwG', 's:7:\"forever\";', 2044577641);
INSERT INTO `cache` VALUES ('D887kazYGKiSuntu', 's:7:\"forever\";', 2043759158);
INSERT INTO `cache` VALUES ('ddxGUKvj6CejHeiF', 's:7:\"forever\";', 2043758164);
INSERT INTO `cache` VALUES ('e3bNwsTsIjZIKLXI', 's:7:\"forever\";', 2045448480);
INSERT INTO `cache` VALUES ('ekB0AtA67QqZJEXC', 's:7:\"forever\";', 2043759254);
INSERT INTO `cache` VALUES ('f4r0KBdeAsJxMZSs', 's:7:\"forever\";', 2043238620);
INSERT INTO `cache` VALUES ('f6t55hVtvqco8S3d', 's:7:\"forever\";', 2044260847);
INSERT INTO `cache` VALUES ('FDFS3ExScp2SOZML', 's:7:\"forever\";', 2045279629);
INSERT INTO `cache` VALUES ('Fp2xqHd2bLCK21ut', 's:7:\"forever\";', 2044431782);
INSERT INTO `cache` VALUES ('gFcuziGKgUuVh0xy', 's:7:\"forever\";', 2044324311);
INSERT INTO `cache` VALUES ('gzVELrHMTVeAnMq1', 's:7:\"forever\";', 2043795470);
INSERT INTO `cache` VALUES ('hce0fho6kzDrlL7D', 's:7:\"forever\";', 2044487670);
INSERT INTO `cache` VALUES ('HqO9FB08otzvDrpl', 's:7:\"forever\";', 2043753061);
INSERT INTO `cache` VALUES ('iJGmHoFz7daqYOrv', 's:7:\"forever\";', 2045459743);
INSERT INTO `cache` VALUES ('iJOSmlrjCy423Eft', 's:7:\"forever\";', 2043627628);
INSERT INTO `cache` VALUES ('imNuYmSHRRndtJsu', 's:7:\"forever\";', 2043761693);
INSERT INTO `cache` VALUES ('IMxeSlf0m9G9cNZ5', 's:7:\"forever\";', 2043759019);
INSERT INTO `cache` VALUES ('jmWnM6StLnr5vsgv', 's:7:\"forever\";', 2044434036);
INSERT INTO `cache` VALUES ('jpkOECtMT3pDcsU2', 's:7:\"forever\";', 2043626169);
INSERT INTO `cache` VALUES ('JT4KLHOlarPa63ZJ', 's:7:\"forever\";', 2044428105);
INSERT INTO `cache` VALUES ('kg1KSKU9i7nUWhLY', 's:7:\"forever\";', 2044344400);
INSERT INTO `cache` VALUES ('KL2p7C0f5bv6VBuN', 's:7:\"forever\";', 2044583614);
INSERT INTO `cache` VALUES ('LHb1WOGAwZuWsyby', 's:7:\"forever\";', 2043759781);
INSERT INTO `cache` VALUES ('m6qywx9UvmYbxIQm', 's:7:\"forever\";', 2043237545);
INSERT INTO `cache` VALUES ('MbdEyt59oyu8X9uH', 's:7:\"forever\";', 2043759642);
INSERT INTO `cache` VALUES ('MKOBsJOTHDCwbfBq', 's:7:\"forever\";', 2044517137);
INSERT INTO `cache` VALUES ('mnDVwxhr4y3BsWts', 's:7:\"forever\";', 2043753007);
INSERT INTO `cache` VALUES ('mQk3mdXZxBHtXQgz', 's:7:\"forever\";', 2044344436);
INSERT INTO `cache` VALUES ('MqOXuT3fwlvcmCCr', 's:7:\"forever\";', 2043759007);
INSERT INTO `cache` VALUES ('n0Ye3cABvp2w1L6i', 's:7:\"forever\";', 2043759503);
INSERT INTO `cache` VALUES ('NJFdvbW7fEhvXENk', 's:7:\"forever\";', 2044324075);
INSERT INTO `cache` VALUES ('NMv7ZQAD1XOtMKSV', 's:7:\"forever\";', 2043760151);
INSERT INTO `cache` VALUES ('NumAMeyLgKGapOd5', 's:7:\"forever\";', 2044573041);
INSERT INTO `cache` VALUES ('O0IkjrhuYq6VFPce', 's:7:\"forever\";', 2044600810);
INSERT INTO `cache` VALUES ('ODhETxEuQbIEKre0', 's:7:\"forever\";', 2043752994);
INSERT INTO `cache` VALUES ('ogIZQ72xlSWaBYuO', 's:7:\"forever\";', 2044600861);
INSERT INTO `cache` VALUES ('oOnnscht8ZdBhcew', 's:7:\"forever\";', 2044496906);
INSERT INTO `cache` VALUES ('oQOBSCqN7NJyN5Wa', 's:7:\"forever\";', 2044509056);
INSERT INTO `cache` VALUES ('oW97yBeDEYj50k5W', 's:7:\"forever\";', 2045115876);
INSERT INTO `cache` VALUES ('oX72HKiXl6S2J9b9', 's:7:\"forever\";', 2045459804);
INSERT INTO `cache` VALUES ('oxqK5GUuo0frjvwQ', 's:7:\"forever\";', 2043759625);
INSERT INTO `cache` VALUES ('p06dqJm9y32CDnwS', 's:7:\"forever\";', 2043759940);
INSERT INTO `cache` VALUES ('pBVlbGOsKL19XKiX', 's:7:\"forever\";', 2044259827);
INSERT INTO `cache` VALUES ('PmJYSBOtseMhm9Jq', 's:7:\"forever\";', 2045281715);
INSERT INTO `cache` VALUES ('pmoEdqOjuR1Rz7om', 's:7:\"forever\";', 2043630525);
INSERT INTO `cache` VALUES ('pVZpcQHhiNzJ7Srh', 's:7:\"forever\";', 2044601999);
INSERT INTO `cache` VALUES ('qbhhVsUa3GBdOSeO', 's:7:\"forever\";', 2043761201);
INSERT INTO `cache` VALUES ('QctP1TLfZ8pQ3v2c', 's:7:\"forever\";', 2045116103);
INSERT INTO `cache` VALUES ('Qga7dXicaVUVEM9M', 's:7:\"forever\";', 2043760142);
INSERT INTO `cache` VALUES ('qQ2KWO1NoNlyJFCj', 's:7:\"forever\";', 2043759496);
INSERT INTO `cache` VALUES ('R3CVlj6b0B37LcDH', 's:7:\"forever\";', 2043759382);
INSERT INTO `cache` VALUES ('rM4hJdYxHtK80tsq', 's:7:\"forever\";', 2044335668);
INSERT INTO `cache` VALUES ('rnUojqYQcqgncfwF', 's:7:\"forever\";', 2045009277);
INSERT INTO `cache` VALUES ('rWlK2mwuLpQcgPFW', 's:7:\"forever\";', 2044262052);
INSERT INTO `cache` VALUES ('snPniYFojOQIdBHX', 's:7:\"forever\";', 2043627733);
INSERT INTO `cache` VALUES ('SSCyqEWkONUBYsha', 's:7:\"forever\";', 2044607956);
INSERT INTO `cache` VALUES ('SxFhlzM6K7cmsluV', 's:7:\"forever\";', 2044609457);
INSERT INTO `cache` VALUES ('sYd13k6M2Yjm51TB', 's:7:\"forever\";', 2045279601);
INSERT INTO `cache` VALUES ('TgrEGw2puC3jdIdk', 's:7:\"forever\";', 2044515814);
INSERT INTO `cache` VALUES ('tJRKpAQdsIhcCBhe', 's:7:\"forever\";', 2044341513);
INSERT INTO `cache` VALUES ('trCfjvyIuyeeg7m1', 's:7:\"forever\";', 2045115971);
INSERT INTO `cache` VALUES ('TWmLJ5HNvWwxQWoY', 's:7:\"forever\";', 2045115850);
INSERT INTO `cache` VALUES ('txgYKWakC3MpGdXt', 's:7:\"forever\";', 2044600871);
INSERT INTO `cache` VALUES ('udukbhJ6h5H5SoTm', 's:7:\"forever\";', 2044324059);
INSERT INTO `cache` VALUES ('UFRbVLaoUgDJOLAa', 's:7:\"forever\";', 2043795484);
INSERT INTO `cache` VALUES ('UGu3Nt6mEmZuh86l', 's:7:\"forever\";', 2044491343);
INSERT INTO `cache` VALUES ('uhx2Apf3LXkU288G', 's:7:\"forever\";', 2043759034);
INSERT INTO `cache` VALUES ('vI5kvILQuskzxVci', 's:7:\"forever\";', 2044422898);
INSERT INTO `cache` VALUES ('vp7tR07sjNTtw4I6', 's:7:\"forever\";', 2044326207);
INSERT INTO `cache` VALUES ('wb3wcck0inCzoXpo', 's:7:\"forever\";', 2044500584);
INSERT INTO `cache` VALUES ('wn9tu0ivwpHxdkdB', 's:7:\"forever\";', 2043626119);
INSERT INTO `cache` VALUES ('wuZAiGoPyb7qtLQy', 's:7:\"forever\";', 2044262086);
INSERT INTO `cache` VALUES ('xj7oI0KSUDcq4dtd', 's:7:\"forever\";', 2045526444);
INSERT INTO `cache` VALUES ('ygo9TXqVIU3OX6PS', 's:7:\"forever\";', 2045459810);
INSERT INTO `cache` VALUES ('yqdOnZdxhyai2gCK', 's:7:\"forever\";', 2044601970);
INSERT INTO `cache` VALUES ('YWdsULGeHSwjBuA3', 's:7:\"forever\";', 2043752768);
INSERT INTO `cache` VALUES ('YzoDqxmNgh9NxCUZ', 's:7:\"forever\";', 2043759089);
INSERT INTO `cache` VALUES ('zaujgEsKkg9HVRZm', 's:7:\"forever\";', 2044259014);
INSERT INTO `cache` VALUES ('zJUQb4kLFnnGS4Sg', 's:7:\"forever\";', 2044583533);
INSERT INTO `cache` VALUES ('Zp2LDEjweOrthQzO', 's:7:\"forever\";', 2045116003);

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jawabans
-- ----------------------------
DROP TABLE IF EXISTS `jawabans`;
CREATE TABLE `jawabans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ujian_id` bigint UNSIGNED NOT NULL,
  `soal_id` bigint UNSIGNED NOT NULL,
  `jawaban` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jawabans
-- ----------------------------
INSERT INTO `jawabans` VALUES (1, 1, 1, 'C', '2024-10-23 02:28:41', '2024-10-23 02:28:41');
INSERT INTO `jawabans` VALUES (2, 1, 2, 'B', '2024-10-23 02:28:41', '2024-10-23 02:28:41');
INSERT INTO `jawabans` VALUES (3, 1, 3, 'A', '2024-10-23 02:28:41', '2024-10-23 02:28:41');
INSERT INTO `jawabans` VALUES (4, 1, 8, 'B', '2024-10-23 02:28:41', '2024-10-23 02:28:41');
INSERT INTO `jawabans` VALUES (5, 1, 9, 'C', '2024-10-23 02:28:41', '2024-10-23 02:28:41');
INSERT INTO `jawabans` VALUES (6, 2, 1, 'C', '2024-10-24 05:38:07', '2024-10-24 05:38:07');
INSERT INTO `jawabans` VALUES (7, 2, 2, 'D', '2024-10-24 05:38:07', '2024-10-24 05:38:07');
INSERT INTO `jawabans` VALUES (8, 2, 3, 'A', '2024-10-24 05:38:07', '2024-10-24 05:38:07');
INSERT INTO `jawabans` VALUES (9, 2, 8, 'B', '2024-10-24 05:38:07', '2024-10-24 05:38:07');
INSERT INTO `jawabans` VALUES (10, 2, 9, 'A', '2024-10-24 05:38:07', '2024-10-24 05:38:07');
INSERT INTO `jawabans` VALUES (11, 3, 1, 'C', '2024-10-26 05:16:17', '2024-10-26 05:16:17');
INSERT INTO `jawabans` VALUES (12, 3, 2, 'B', '2024-10-26 05:16:17', '2024-10-26 05:16:17');
INSERT INTO `jawabans` VALUES (13, 3, 3, 'D', '2024-10-26 05:16:17', '2024-10-26 05:16:17');
INSERT INTO `jawabans` VALUES (14, 3, 8, 'B', '2024-10-26 05:16:17', '2024-10-26 05:16:17');
INSERT INTO `jawabans` VALUES (15, 3, 9, 'D', '2024-10-26 05:16:17', '2024-10-26 05:16:17');
INSERT INTO `jawabans` VALUES (16, 4, 1, 'C', '2024-10-28 07:19:15', '2024-10-28 07:19:15');
INSERT INTO `jawabans` VALUES (17, 4, 2, 'A', '2024-10-28 07:19:15', '2024-10-28 07:19:15');
INSERT INTO `jawabans` VALUES (18, 4, 3, 'B', '2024-10-28 07:19:15', '2024-10-28 07:19:15');
INSERT INTO `jawabans` VALUES (19, 4, 8, 'B', '2024-10-28 07:19:15', '2024-10-28 07:19:15');
INSERT INTO `jawabans` VALUES (20, 4, 9, 'B', '2024-10-28 07:19:15', '2024-10-28 07:19:15');
INSERT INTO `jawabans` VALUES (21, 5, 1, 'A', '2024-10-28 08:28:19', '2024-10-28 08:28:19');
INSERT INTO `jawabans` VALUES (22, 5, 2, '', '2024-10-28 08:28:19', '2024-10-28 08:28:19');
INSERT INTO `jawabans` VALUES (23, 5, 3, '', '2024-10-28 08:28:19', '2024-10-28 08:28:19');
INSERT INTO `jawabans` VALUES (24, 5, 8, 'D', '2024-10-28 08:28:19', '2024-10-28 08:28:19');
INSERT INTO `jawabans` VALUES (25, 5, 9, '', '2024-10-28 08:28:19', '2024-10-28 08:28:19');
INSERT INTO `jawabans` VALUES (26, 6, 1, 'C', '2024-10-28 08:34:57', '2024-10-28 08:34:57');
INSERT INTO `jawabans` VALUES (27, 6, 2, 'B', '2024-10-28 08:34:57', '2024-10-28 08:34:57');
INSERT INTO `jawabans` VALUES (28, 6, 3, 'B', '2024-10-28 08:34:57', '2024-10-28 08:34:57');
INSERT INTO `jawabans` VALUES (29, 6, 8, 'E', '2024-10-28 08:34:57', '2024-10-28 08:34:57');
INSERT INTO `jawabans` VALUES (30, 6, 9, 'D', '2024-10-28 08:34:57', '2024-10-28 08:34:57');

-- ----------------------------
-- Table structure for jenis
-- ----------------------------
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `jenis` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jenis
-- ----------------------------
INSERT INTO `jenis` VALUES (1, 1, 'Pancasila', '2024-10-09 08:47:18', '2024-10-09 08:47:21');
INSERT INTO `jenis` VALUES (2, 1, 'UUD 1945', '2024-10-09 08:47:34', '2024-10-09 08:47:37');
INSERT INTO `jenis` VALUES (3, 1, 'Bhinneka Tunggal Ika', '2024-10-09 08:47:52', '2024-10-09 08:47:55');
INSERT INTO `jenis` VALUES (4, 1, 'Negara Kesatuan Republik Indonesia (NKRI)', '2024-10-09 08:48:09', '2024-10-09 08:48:12');
INSERT INTO `jenis` VALUES (5, 2, 'Kemampuan Verbal', '2024-10-09 08:48:26', '2024-10-09 08:48:29');
INSERT INTO `jenis` VALUES (6, 2, 'Kemampuan Numerik', '2024-10-09 08:48:43', '2024-10-09 08:48:47');
INSERT INTO `jenis` VALUES (7, 2, 'Kemampuan Logika', '2024-10-09 08:49:07', '2024-10-09 08:49:09');
INSERT INTO `jenis` VALUES (8, 3, 'Integritas', '2024-10-09 08:49:22', '2024-10-09 08:49:25');
INSERT INTO `jenis` VALUES (9, 3, 'Semangat Berprestasi', '2024-10-09 08:49:43', '2024-10-09 08:49:46');
INSERT INTO `jenis` VALUES (10, 3, 'Kreativitas dan Inovasi', '2024-10-09 08:50:04', '2024-10-09 08:50:07');
INSERT INTO `jenis` VALUES (11, 3, 'Orientasi pada Pelayanan', '2024-10-09 08:50:22', '2024-10-09 08:50:24');
INSERT INTO `jenis` VALUES (12, 3, 'Kemampuan Beradaptasi', '2024-10-09 08:50:40', '2024-10-09 08:50:42');
INSERT INTO `jenis` VALUES (13, 3, 'Kemampuan Mengendalikan Diri', '2024-10-09 08:50:58', '2024-10-09 08:51:01');
INSERT INTO `jenis` VALUES (14, 3, 'Kemampuan Bekerja Mandiri dan Tuntas', '2024-10-09 08:51:16', '2024-10-09 08:51:19');
INSERT INTO `jenis` VALUES (15, 3, 'Kemauan dan Kemampuan Belajar Berkelanjutan', '2024-10-09 08:51:41', '2024-10-09 08:51:44');
INSERT INTO `jenis` VALUES (16, 3, 'Kemampuan Bekerja Sama dalam Kelompok', '2024-10-09 08:51:58', '2024-10-09 08:52:01');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kategoris
-- ----------------------------
DROP TABLE IF EXISTS `kategoris`;
CREATE TABLE `kategoris`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategoris
-- ----------------------------
INSERT INTO `kategoris` VALUES (1, 'TWK', '2024-10-09 08:44:59', '2024-10-09 08:45:02');
INSERT INTO `kategoris` VALUES (2, 'TIU', '2024-10-09 08:45:11', '2024-10-09 08:45:14');
INSERT INTO `kategoris` VALUES (3, 'TKP', '2024-10-09 08:45:24', '2024-10-09 08:45:27');

-- ----------------------------
-- Table structure for kunci_jawabans
-- ----------------------------
DROP TABLE IF EXISTS `kunci_jawabans`;
CREATE TABLE `kunci_jawabans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `soal_id` bigint UNSIGNED NOT NULL,
  `jawaban` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kunci_jawabans
-- ----------------------------
INSERT INTO `kunci_jawabans` VALUES (18, 3, 'B', 5, '2024-10-14 08:26:11', '2024-10-14 08:26:11');
INSERT INTO `kunci_jawabans` VALUES (35, 1, 'C', 5, '2024-10-14 08:56:15', '2024-10-14 08:56:15');
INSERT INTO `kunci_jawabans` VALUES (38, 2, 'A', 5, '2024-10-14 10:35:05', '2024-10-14 10:35:05');
INSERT INTO `kunci_jawabans` VALUES (39, 8, 'B', 5, '2024-10-18 01:17:41', '2024-10-18 01:17:41');
INSERT INTO `kunci_jawabans` VALUES (40, 9, 'B', 5, '2024-10-18 01:28:31', '2024-10-18 01:28:31');
INSERT INTO `kunci_jawabans` VALUES (41, 10, 'D', 5, '2024-10-18 01:30:28', '2024-10-18 01:30:28');
INSERT INTO `kunci_jawabans` VALUES (42, 11, 'E', 5, '2024-10-18 01:36:21', '2024-10-18 01:36:21');
INSERT INTO `kunci_jawabans` VALUES (43, 12, 'A', 5, '2024-10-18 02:29:07', '2024-10-18 02:29:07');
INSERT INTO `kunci_jawabans` VALUES (44, 13, 'C', 5, '2024-10-18 02:43:55', '2024-10-18 02:43:55');
INSERT INTO `kunci_jawabans` VALUES (45, 14, 'E', 5, '2024-10-18 04:11:11', '2024-10-18 04:11:11');
INSERT INTO `kunci_jawabans` VALUES (46, 15, 'C', 5, '2024-10-18 04:11:22', '2024-10-18 04:11:22');
INSERT INTO `kunci_jawabans` VALUES (47, 16, 'A', 5, '2024-10-18 04:11:38', '2024-10-18 04:11:38');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_10_02_010956_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_10_02_013154_laratrust_setup_tables', 1);
INSERT INTO `migrations` VALUES (22, '2024_10_07_033443_create_soals_table', 2);
INSERT INTO `migrations` VALUES (23, '2024_10_07_034007_create_kunci_jawabans_table', 2);
INSERT INTO `migrations` VALUES (24, '2024_10_07_035422_create_paket_tos_table', 2);
INSERT INTO `migrations` VALUES (25, '2024_10_07_035904_create_pelaksanaan_tos_table', 2);
INSERT INTO `migrations` VALUES (26, '2024_10_07_083000_create_kategoris_table', 2);
INSERT INTO `migrations` VALUES (27, '2024_10_09_013556_create_jenis_table', 2);
INSERT INTO `migrations` VALUES (30, '2024_10_16_010919_create_ujians_table', 3);
INSERT INTO `migrations` VALUES (31, '2024_10_16_011320_create_jawabans_table', 3);

-- ----------------------------
-- Table structure for paket_tos
-- ----------------------------
DROP TABLE IF EXISTS `paket_tos`;
CREATE TABLE `paket_tos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `paket` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlh_soal` int NOT NULL,
  `waktu` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paket_tos
-- ----------------------------
INSERT INTO `paket_tos` VALUES (1, 'level 1', 5, '100', '2024-10-09 08:54:37', '2024-10-26 05:49:11');
INSERT INTO `paket_tos` VALUES (2, 'level 2', 100, '100', '2024-10-09 08:54:51', '2024-10-14 03:37:38');
INSERT INTO `paket_tos` VALUES (3, 'level 3', 100, '100', '2024-10-09 08:55:02', '2024-10-14 03:08:59');
INSERT INTO `paket_tos` VALUES (5, 'level 4', 100, '100', '2024-10-14 03:34:41', '2024-10-14 03:34:59');
INSERT INTO `paket_tos` VALUES (6, 'level 5', 110, '110', '2024-10-14 03:35:21', '2024-10-14 03:35:21');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `permission_role_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (1, 2);
INSERT INTO `permission_role` VALUES (2, 1);
INSERT INTO `permission_role` VALUES (2, 2);
INSERT INTO `permission_role` VALUES (3, 1);
INSERT INTO `permission_role` VALUES (3, 2);
INSERT INTO `permission_role` VALUES (4, 1);
INSERT INTO `permission_role` VALUES (4, 2);
INSERT INTO `permission_role` VALUES (5, 1);
INSERT INTO `permission_role` VALUES (6, 1);
INSERT INTO `permission_role` VALUES (7, 1);
INSERT INTO `permission_role` VALUES (8, 1);
INSERT INTO `permission_role` VALUES (9, 1);
INSERT INTO `permission_role` VALUES (9, 2);
INSERT INTO `permission_role` VALUES (9, 3);
INSERT INTO `permission_role` VALUES (10, 1);
INSERT INTO `permission_role` VALUES (10, 2);
INSERT INTO `permission_role` VALUES (10, 3);

-- ----------------------------
-- Table structure for permission_user
-- ----------------------------
DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE `permission_user`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`, `permission_id`, `user_type`) USING BTREE,
  INDEX `permission_user_permission_id_foreign`(`permission_id`) USING BTREE,
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_user
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'users-create', 'Create Users', 'Create Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (2, 'users-read', 'Read Users', 'Read Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (3, 'users-update', 'Update Users', 'Update Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (4, 'users-delete', 'Delete Users', 'Delete Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (5, 'payments-create', 'Create Payments', 'Create Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (6, 'payments-read', 'Read Payments', 'Read Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (7, 'payments-update', 'Update Payments', 'Update Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (9, 'profile-read', 'Read Profile', 'Read Profile', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `permissions` VALUES (10, 'profile-update', 'Update Profile', 'Update Profile', '2024-10-02 02:36:19', '2024-10-02 02:36:19');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`, `user_type`) USING BTREE,
  INDEX `role_user_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (2, 5, 'App\\Models\\User');
INSERT INTO `role_user` VALUES (3, 13, 'App\\Models\\User');
INSERT INTO `role_user` VALUES (3, 14, 'App\\Models\\User');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `roles` VALUES (2, 'administrator', 'Administrator', 'Administrator', '2024-10-02 02:36:19', '2024-10-02 02:36:19');
INSERT INTO `roles` VALUES (3, 'user', 'User', 'User', '2024-10-02 02:36:19', '2024-10-02 02:36:19');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('6ibIZLJJUlegNqmdCdJt7AbQi9kJyEStQXLUjlHX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1JCVHhjRVJSV3dLck9PaWJOVGRKeDg1QkZmQTVod1VoOEVNVE5nSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375026);
INSERT INTO `sessions` VALUES ('aUQMepcVkSkohutrzmgQVciJ1RB4VbKZk7qix6x6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUElzeDRxU0Q5TjJjZ0k1MW5oaWhya2tCcUkwcHZYbndMWHI2S2l3QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375733);
INSERT INTO `sessions` VALUES ('dcNXADeSuCHChVuuYOkrR77rvR9rwc0hJtMoe1EE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjFFVXd1a0VYS2xOUGpiSTEybHNhelFIUGJJZEoxbURhZHd5SzhrdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727862824);
INSERT INTO `sessions` VALUES ('H1sb1bJqaJIrgl8DBdeEWCStOsKrdg41qmZlYiGQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHZxTHVTM2FEenEzZGdGRkxZREdRa0ZJZmZuTm5vVnNSM0JRTHM4biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375370);
INSERT INTO `sessions` VALUES ('hGof33NRYQiDMVm7eChc5kkkAVcHUMF5zJGpWbZS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWZrZXV0YTlyd1FKVGVJZEw0UmJsYjRrMkJUeVVRd3hsY3NaZjd1OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375064);
INSERT INTO `sessions` VALUES ('ktnNnmrqhaAZwjaSZifyNbK1RROaKbFSsbaTH2m8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkhtSUFNMkZYRnVGYVJZenRvU2tERDNyZGJ6cEl2R1I2SHkwd2RPaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375339);
INSERT INTO `sessions` VALUES ('mCbW25dISIYpnt50blfAkVmrOCVBw9rX3LeJPPtm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0dkeDM1NGpGVzBvb2twVk1rNHY3N2JkUm1maWNlRGJ0UzRaYXBOeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727872017);
INSERT INTO `sessions` VALUES ('n00ETlGmQyXgaF6z9kHQZ6GFUCRdt7RxKZiyIB5S', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmRHeDJ3Wm13Nmh5a2dkRWN6NFBwZ3dYRFFuclJqTkFIN0x5bVJmUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375899);
INSERT INTO `sessions` VALUES ('uVPXLiHsFaTgjpN6ItRd4vlJII922kif7gxHeZBq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXUwdXd3THVCUmZIc0pRRG0xTm1mYjE0eE81ZnVPM2o5cEluZFRzMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375008);
INSERT INTO `sessions` VALUES ('W17oA6aGNLJNpC0gM2A2xyXlaNQPFlGmMj9RsjPQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm0wWDhaY1djU1lhT1JXUnhJSWUzQzVPR2dTVEo2THhkdHlHSHd6biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728375969);
INSERT INTO `sessions` VALUES ('YA8hUXr2zNEQhzvi1hxCxbC0oLbY4p8nF2CgNDAH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTVJRklvemp0T084cm1qdkNPRDVURzRIbHNmSmdhcWN0VW9sNDBBRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728376009);
INSERT INTO `sessions` VALUES ('yutFXrqxwBFhOVa2k1hLaIOYU1ntGt8yoYqYBolz', NULL, '127.0.0.1', 'PostmanRuntime/7.42.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXZ4czNFc0c5OTVqU1RQajNMOWdrRG5nYVZKRlZYWndBUFNhTkxTVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727863087);
INSERT INTO `sessions` VALUES ('zfCRKbvVQYwqBNSyHR9vbmYxEQ6t9kv9pEQZpw3u', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUJIcUZDWGtMaGRIWWdObkV1VzhHYXcydjk0ODZNa2tlZGNaVEJlTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727872034);

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

-- ----------------------------
-- Table structure for ujians
-- ----------------------------
DROP TABLE IF EXISTS `ujians`;
CREATE TABLE `ujians`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `paket_to_id` bigint UNSIGNED NOT NULL,
  `jlh_soal` int NOT NULL,
  `waktu_pengerjaan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ujians
-- ----------------------------
INSERT INTO `ujians` VALUES (1, 13, 1, 5, '00:00:53', '2024-10-23 02:28:41', '2024-10-23 02:28:41');
INSERT INTO `ujians` VALUES (2, 13, 1, 5, '00:00:39', '2024-10-24 05:38:07', '2024-10-24 05:38:07');
INSERT INTO `ujians` VALUES (3, 13, 1, 5, '00:01:00', '2024-10-26 05:16:17', '2024-10-26 05:16:17');
INSERT INTO `ujians` VALUES (4, 13, 1, 5, '00:00:42', '2024-10-28 07:19:15', '2024-10-28 07:19:15');
INSERT INTO `ujians` VALUES (5, 13, 1, 5, '00:00:10', '2024-10-28 08:28:19', '2024-10-28 08:28:19');
INSERT INTO `ujians` VALUES (6, 13, 1, 5, '00:05:00', '2024-10-28 08:34:57', '2024-10-28 08:34:57');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, 'ahmad afandi', 'fandi@mail.com', NULL, '$2y$12$6zBnuu2zlGhA5FFC5q/9.ur51KX.6YVCgOEsYra4DuIXRRaDMGS3i', '1728374484_219988.png', NULL, '2024-10-04 04:25:43', '2024-10-14 09:08:32');
INSERT INTO `users` VALUES (13, 'Monalisa', 'monalisa@mail.com', NULL, '$2y$12$bp/JmCzxSNazMscBE9aACu.usMmUsNfdyuWfRq72xqpSF79R6a9.C', '1728401673_219969.png', NULL, '2024-10-04 09:22:28', '2024-10-29 01:47:17');
INSERT INTO `users` VALUES (14, 'Zahira Khalisa', 'zahira@mail.com', NULL, '$2y$12$TIgRNKG7BmEmVdn2sEfN1eMbcLD4p/dRFJATiq.1h4NCsqfNBye72', '1729755844_219969.png', NULL, '2024-10-24 07:39:02', '2024-10-24 07:44:04');

SET FOREIGN_KEY_CHECKS = 1;
