/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : e_vote

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 17/11/2019 02:09:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id_admin` tinyint(1) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_admin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'admin', 'administrator', '$2y$10$5ok3rcIOv/yNIlPIGo49a.cXRAiA5ZsnxbpijFoyy5EuuYyVrZetu');

-- ----------------------------
-- Table structure for t_kandidat
-- ----------------------------
DROP TABLE IF EXISTS `t_kandidat`;
CREATE TABLE `t_kandidat`  (
  `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT,
  `nama_calon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `visi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `misi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `suara` smallint(4) NOT NULL DEFAULT 0,
  `periode` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kandidat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_kandidat
-- ----------------------------
INSERT INTO `t_kandidat` VALUES (9, 'KOCAK', '0.17168300 1484094684(1).jpg', '123', '123', 6, '2019/2020');
INSERT INTO `t_kandidat` VALUES (10, 'HEBAT', '0.96363900 1540548201(1).png', '123', '123', 0, '2019/2020');
INSERT INTO `t_kandidat` VALUES (11, 'BASAH', '0.58092200 1573926840.jpg', '123', '123', 0, '2019/2020');

-- ----------------------------
-- Table structure for t_kelas
-- ----------------------------
DROP TABLE IF EXISTS `t_kelas`;
CREATE TABLE `t_kelas`  (
  `id_kelas` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kelas` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_kelas
-- ----------------------------
INSERT INTO `t_kelas` VALUES ('K01', '2017');

-- ----------------------------
-- Table structure for t_pemilih
-- ----------------------------
DROP TABLE IF EXISTS `t_pemilih`;
CREATE TABLE `t_pemilih`  (
  `nis` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `periode` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pemilih
-- ----------------------------
INSERT INTO `t_pemilih` VALUES ('081314427098', '2019/2020');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id_user` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kelas` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jk` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pemilih` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('081314427098', 'Julian D Ibrahim', 'K01', 'L', 'Y');
INSERT INTO `t_user` VALUES ('083891211000', 'Afif Mumtadz', 'K01', 'L', 'Y');
INSERT INTO `t_user` VALUES ('08558083420', 'Ihsan Ramdhan', 'K01', 'L', 'Y');
INSERT INTO `t_user` VALUES ('089614895128', 'Kharis Wibisono', 'K01', 'L', 'Y');
INSERT INTO `t_user` VALUES ('089634191059', 'Ragil Odriansyah', 'K01', 'L', 'Y');

SET FOREIGN_KEY_CHECKS = 1;
