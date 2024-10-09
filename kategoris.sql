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

 Date: 09/10/2024 08:52:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
