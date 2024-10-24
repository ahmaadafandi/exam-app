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

 Date: 18/10/2024 18:08:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, 'ahmad afandi', 'fandi@mail.com', NULL, '$2y$12$6zBnuu2zlGhA5FFC5q/9.ur51KX.6YVCgOEsYra4DuIXRRaDMGS3i', '1728374484_219988.png', NULL, '2024-10-04 04:25:43', '2024-10-14 09:08:32');
INSERT INTO `users` VALUES (13, 'Monalisa', 'monalisa@mail.com', NULL, '$2y$12$9lZ.3CjTc4i/5TinUpdLpuUGCy2ENQgv4quNYqIB1X8aBTXrrbjgC', '1728401673_219969.png', NULL, '2024-10-04 09:22:28', '2024-10-11 08:52:12');

SET FOREIGN_KEY_CHECKS = 1;
