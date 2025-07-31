/*
 Navicat Premium Data Transfer

 Source Server         : MY_LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : akuntansi

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 31/07/2025 11:31:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adonis_schema
-- ----------------------------
DROP TABLE IF EXISTS `adonis_schema`;
CREATE TABLE `adonis_schema`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `batch` int NOT NULL,
  `migration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adonis_schema
-- ----------------------------
INSERT INTO `adonis_schema` VALUES (1, 'database/migrations/1753928888085_create_transactions_table', 1, '2025-07-31 09:30:53');

-- ----------------------------
-- Table structure for adonis_schema_versions
-- ----------------------------
DROP TABLE IF EXISTS `adonis_schema_versions`;
CREATE TABLE `adonis_schema_versions`  (
  `version` int UNSIGNED NOT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adonis_schema_versions
-- ----------------------------
INSERT INTO `adonis_schema_versions` VALUES (2);

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` enum('income','expense') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `amount` decimal(12, 2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (1, 'Buku', 'income', 2.00, '2025-07-31', '2025-07-31 09:54:31', '2025-07-31 03:25:21');
INSERT INTO `transactions` VALUES (2, 'Motor', 'expense', 20.00, '2025-07-31', '2025-07-31 02:59:57', '2025-07-31 02:59:57');
INSERT INTO `transactions` VALUES (3, 'Printer', 'expense', 4.00, '2025-07-01', '2025-07-31 03:00:20', '2025-07-31 03:00:20');
INSERT INTO `transactions` VALUES (4, 'Masako', 'expense', 6.00, '2025-07-01', '2025-07-31 03:00:20', '2025-07-31 03:25:35');
INSERT INTO `transactions` VALUES (5, 'Bawang', 'expense', 4.00, '2025-07-01', '2025-07-31 03:00:20', '2025-07-31 03:00:20');
INSERT INTO `transactions` VALUES (6, 'Laptop', 'expense', 4.00, '2025-07-01', '2025-07-31 03:00:20', '2025-07-31 03:00:20');
INSERT INTO `transactions` VALUES (7, 'Phone Samsung', 'expense', 4.00, '2025-07-01', '2025-07-31 03:00:20', '2025-07-31 03:00:20');
INSERT INTO `transactions` VALUES (8, 'TV21in', 'income', 2.00, '2025-07-31', '2025-07-31 03:23:52', '2025-07-31 03:23:52');
INSERT INTO `transactions` VALUES (9, 'Majalah', 'income', 2.00, '2025-07-31', '2025-07-31 03:30:27', '2025-07-31 03:30:27');

SET FOREIGN_KEY_CHECKS = 1;
