/*
 Navicat Premium Data Transfer

 Source Server         : MyLocalhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : testdb

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 29/06/2024 12:38:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hobi
-- ----------------------------
DROP TABLE IF EXISTS `hobi`;
CREATE TABLE `hobi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int NULL DEFAULT NULL,
  `hobi` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hobi
-- ----------------------------
INSERT INTO `hobi` VALUES (1, 1, 'Futsal');
INSERT INTO `hobi` VALUES (2, 1, 'Soccer');
INSERT INTO `hobi` VALUES (3, 1, 'Tenis Meja');
INSERT INTO `hobi` VALUES (4, 2, 'Basket');
INSERT INTO `hobi` VALUES (5, 2, 'Renang');
INSERT INTO `hobi` VALUES (6, 3, 'Futsal');
INSERT INTO `hobi` VALUES (7, 3, 'Membaca');
INSERT INTO `hobi` VALUES (8, 3, 'Renang');
INSERT INTO `hobi` VALUES (9, 3, 'Game');
INSERT INTO `hobi` VALUES (10, 4, 'Renang');
INSERT INTO `hobi` VALUES (11, 5, 'Jalan-Jalan');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (1, 'coba', 'cobafdsfd');
INSERT INTO `person` VALUES (2, 'ana 5', 'arab');
INSERT INTO `person` VALUES (3, 'Tari', 'Dakota');
INSERT INTO `person` VALUES (4, 'Cak Gembul x', 'Surabaya gg gg hhhhhh');
INSERT INTO `person` VALUES (5, 'Mc Greg x', 'Ujung Berung y');
INSERT INTO `person` VALUES (6, 'SENTOT xx', 'Bandung yhhh');
INSERT INTO `person` VALUES (7, 'Ni Made vv ff', 'Ujung Berung');
INSERT INTO `person` VALUES (8, 'Nama1 xx g', 'Alamat1 yy fg');
INSERT INTO `person` VALUES (9, 'Nama12', 'Alamat14');
INSERT INTO `person` VALUES (10, 'ANNAA', 'Jakarta');
INSERT INTO `person` VALUES (11, 'ANNA', 'Jakartaaa');
INSERT INTO `person` VALUES (12, 'xx', 'zzz');
INSERT INTO `person` VALUES (13, 'dika1', 'Bandung');
INSERT INTO `person` VALUES (14, 'nama', 'Bandung 123');
INSERT INTO `person` VALUES (15, '', 'Bandung');
INSERT INTO `person` VALUES (16, 'ANNA 1', 'Jakarta 1');
INSERT INTO `person` VALUES (17, 'ANNA 3', 'Jakarta 3');
INSERT INTO `person` VALUES (18, 'SENTOT 1234', 'Bandung 123');
INSERT INTO `person` VALUES (19, 'ANNAA', 'Jakarta');
INSERT INTO `person` VALUES (20, 'Mc Greg 123', 'USA 123');
INSERT INTO `person` VALUES (21, 'SENTOT', 'Bandung');
INSERT INTO `person` VALUES (22, 'Ni Made 1', 'Bali 1');
INSERT INTO `person` VALUES (23, 'Ni Made', 'Bali');
INSERT INTO `person` VALUES (24, 'Cak Gembul', 'Surabaya');
INSERT INTO `person` VALUES (25, 'Cak Gembul', 'Surabaya');
INSERT INTO `person` VALUES (26, 'SENTOT', 'Bandung');
INSERT INTO `person` VALUES (27, 'Cak Gembul', 'Surabaya 5');
INSERT INTO `person` VALUES (28, 'ANNAA', 'Jakarta xx');
INSERT INTO `person` VALUES (29, 'mk', 'mk');
INSERT INTO `person` VALUES (30, 'judi', 'bandung');
INSERT INTO `person` VALUES (31, 'judi x', 'bandung');
INSERT INTO `person` VALUES (32, 'maman', 'cimahi');
INSERT INTO `person` VALUES (33, 'ana 5g', 'arab xx vg');
INSERT INTO `person` VALUES (34, 'Cak Gembul x', 'Surabaya b');
INSERT INTO `person` VALUES (35, 'Muhammad Kemal Ilyasa Margana ', '1');
INSERT INTO `person` VALUES (36, 'azx', 'xx');
INSERT INTO `person` VALUES (37, 'test 2', 'terdddddddasdasd');
INSERT INTO `person` VALUES (38, '', '');
INSERT INTO `person` VALUES (39, 'Tari', 'Dakota');
INSERT INTO `person` VALUES (40, 'Mc Greg', 'USA');
INSERT INTO `person` VALUES (41, 'Ni Made vv', 'Bali');
INSERT INTO `person` VALUES (42, 'Ni Made vv', 'Bali');
INSERT INTO `person` VALUES (43, 'Ni Made vv', 'Bali');
INSERT INTO `person` VALUES (44, 'Ni Made vv', 'Bali');
INSERT INTO `person` VALUES (45, 'Ni Made vv', 'Bali');
INSERT INTO `person` VALUES (46, 'Mc Greg', 'USA');
INSERT INTO `person` VALUES (47, 'Cak Gembul', 'Surabaya');
INSERT INTO `person` VALUES (48, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (49, 'Tari', 'Dakota');
INSERT INTO `person` VALUES (50, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (51, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (52, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (53, 'nama yx', 'alamat yx');
INSERT INTO `person` VALUES (54, 'Cak Gembul', 'Surabaya');
INSERT INTO `person` VALUES (55, 'nama yx', 'alamat yx');
INSERT INTO `person` VALUES (56, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (57, '', '');
INSERT INTO `person` VALUES (58, '', '');
INSERT INTO `person` VALUES (59, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (60, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (61, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (62, 'Nama1 xx g', 'Alamat1 yy fg');
INSERT INTO `person` VALUES (63, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (64, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (65, 'Mc Greg', 'USA');
INSERT INTO `person` VALUES (66, 'nama yx', 'alamat yx');
INSERT INTO `person` VALUES (67, 'Mc Greg', 'USA');
INSERT INTO `person` VALUES (68, 'ANNAA', 'Jakarta');
INSERT INTO `person` VALUES (69, 'ana 5', 'arab xx v');
INSERT INTO `person` VALUES (70, 'YAMAN NUR M', 'BALI');
INSERT INTO `person` VALUES (71, 'Fulan', 'Fulan');
INSERT INTO `person` VALUES (72, '', '');
INSERT INTO `person` VALUES (73, '', '');
INSERT INTO `person` VALUES (74, 'Yaman', 'Mnur');
INSERT INTO `person` VALUES (75, '', '');
INSERT INTO `person` VALUES (76, '', '');
INSERT INTO `person` VALUES (77, 'ERWIN', 'BANDUNG');
INSERT INTO `person` VALUES (78, 'ERWIN', 'BANDUNG');
INSERT INTO `person` VALUES (79, 'SOLEH', 'JAWA');
INSERT INTO `person` VALUES (80, 'Siapakah', 'Dimanakah');
INSERT INTO `person` VALUES (81, 'Cak Gembul x ydg', 'Surabaya gg');
INSERT INTO `person` VALUES (82, 'Test Nama', 'Test Alamat');
INSERT INTO `person` VALUES (83, 'New Nama', 'New Alamat');
INSERT INTO `person` VALUES (84, 'Levi', 'Paradise');
INSERT INTO `person` VALUES (85, 'Eren', 'Paradise');
INSERT INTO `person` VALUES (86, 'Mikasa', 'Paradis');
INSERT INTO `person` VALUES (87, 'Cak Gembul x yd f', 'Surabaya gg gg');
INSERT INTO `person` VALUES (88, 'Mahdy', 'Cimahi');

SET FOREIGN_KEY_CHECKS = 1;
