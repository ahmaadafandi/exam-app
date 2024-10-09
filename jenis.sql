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

 Date: 09/10/2024 08:53:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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

SET FOREIGN_KEY_CHECKS = 1;
