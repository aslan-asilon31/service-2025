/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : service_2025_14

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 27/05/2025 16:30:09
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

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
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_ms_barang_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000000_create_ms_cabang_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000000_create_ms_customer_table', 1);
INSERT INTO `migrations` VALUES (4, '0001_01_01_000000_create_ms_gudang_table', 1);
INSERT INTO `migrations` VALUES (5, '0001_01_01_000000_create_ms_pegawai_table', 1);
INSERT INTO `migrations` VALUES (6, '0001_01_01_000000_create_ms_rak_table', 1);
INSERT INTO `migrations` VALUES (7, '0001_01_01_000000_create_tr_pemesanan_penjualan_a_header_polimorf_table', 1);
INSERT INTO `migrations` VALUES (8, '0001_01_01_000000_create_tr_pemesanan_penjualan_b_detail_polimorf_table', 1);
INSERT INTO `migrations` VALUES (9, '0001_01_01_000000_create_tr_sp_ambil_rak_01_header_polimorf_table', 1);
INSERT INTO `migrations` VALUES (10, '0001_01_01_000000_create_tr_sp_ambil_rak_02_detail_polimorf_table', 1);
INSERT INTO `migrations` VALUES (11, '0001_01_01_000000_create_tr_sp_ambil_rak_03_header_table', 1);
INSERT INTO `migrations` VALUES (12, '0001_01_01_000000_create_tr_sp_ambil_rak_04_detail_table', 1);
INSERT INTO `migrations` VALUES (13, '0001_01_01_000000_create_tr_sp_kerja_a_header_table', 1);
INSERT INTO `migrations` VALUES (14, '0001_01_01_000000_create_tr_sp_kerja_b_detail_table', 1);
INSERT INTO `migrations` VALUES (15, '0001_01_01_000000_create_tr_sp_kirim_a_header_table', 1);
INSERT INTO `migrations` VALUES (16, '0001_01_01_000000_create_tr_sp_kirim_b_detail_table', 1);
INSERT INTO `migrations` VALUES (17, '0001_01_01_000000_create_tr_sp_mutasi_gudang_a_header_table', 1);
INSERT INTO `migrations` VALUES (18, '0001_01_01_000000_create_tr_sp_mutasi_gudang_b_detail_table', 1);
INSERT INTO `migrations` VALUES (19, '0001_01_01_000000_create_tr_sp_mutasi_gudang_kirim_a_header_table', 1);
INSERT INTO `migrations` VALUES (20, '0001_01_01_000000_create_tr_sp_mutasi_gudang_kirim_b_detail_table', 1);
INSERT INTO `migrations` VALUES (21, '0001_01_01_000000_create_tr_sp_mutasi_gudang_terima_a_header_table', 1);
INSERT INTO `migrations` VALUES (22, '0001_01_01_000000_create_tr_sp_mutasi_gudang_terima_b_detail_table', 1);
INSERT INTO `migrations` VALUES (23, '0001_01_01_000000_create_tr_sp_pindah_rak_a_header_table', 1);
INSERT INTO `migrations` VALUES (24, '0001_01_01_000000_create_tr_sp_pindah_rak_b_detail_table', 1);
INSERT INTO `migrations` VALUES (25, '0001_01_01_000000_create_tr_sp_service_a_header_table', 1);
INSERT INTO `migrations` VALUES (26, '0001_01_01_000000_create_tr_sp_service_b_detail_table', 1);
INSERT INTO `migrations` VALUES (27, '0001_01_01_000000_create_tr_sp_simpan_rak_01_header_polimorf_table', 1);
INSERT INTO `migrations` VALUES (28, '0001_01_01_000000_create_tr_sp_simpan_rak_02_detail_polimorf_table', 1);
INSERT INTO `migrations` VALUES (29, '0001_01_01_000000_create_tr_sp_simpan_rak_03_header_table', 1);
INSERT INTO `migrations` VALUES (30, '0001_01_01_000000_create_tr_sp_simpan_rak_04_detail_table', 1);
INSERT INTO `migrations` VALUES (31, '0001_01_01_000000_create_tr_tanda_terima_service_a_header_table', 1);
INSERT INTO `migrations` VALUES (32, '0001_01_01_000000_create_tr_tanda_terima_service_b_detail_table', 1);
INSERT INTO `migrations` VALUES (33, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (34, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (35, '0001_01_01_000002_create_jobs_table', 1);

-- ----------------------------
-- Table structure for ms_barang
-- ----------------------------
DROP TABLE IF EXISTS `ms_barang`;
CREATE TABLE `ms_barang`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_barang
-- ----------------------------

-- ----------------------------
-- Table structure for ms_cabang
-- ----------------------------
DROP TABLE IF EXISTS `ms_cabang`;
CREATE TABLE `ms_cabang`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_cabang
-- ----------------------------

-- ----------------------------
-- Table structure for ms_customer
-- ----------------------------
DROP TABLE IF EXISTS `ms_customer`;
CREATE TABLE `ms_customer`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_customer
-- ----------------------------

-- ----------------------------
-- Table structure for ms_gudang
-- ----------------------------
DROP TABLE IF EXISTS `ms_gudang`;
CREATE TABLE `ms_gudang`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_gudang
-- ----------------------------

-- ----------------------------
-- Table structure for ms_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `ms_pegawai`;
CREATE TABLE `ms_pegawai`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_pegawai
-- ----------------------------

-- ----------------------------
-- Table structure for ms_rak
-- ----------------------------
DROP TABLE IF EXISTS `ms_rak`;
CREATE TABLE `ms_rak`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_rak
-- ----------------------------

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
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for tr_pemesanan_penjualan_detail_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_pemesanan_penjualan_detail_polimorf`;
CREATE TABLE `tr_pemesanan_penjualan_detail_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemesanan_penjualan_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_pemesanan_penjualan_polimorf_id`(`pemesanan_penjualan_id` ASC) USING BTREE,
  INDEX `tr_pemesanan_penjualan_detail_polimorf_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_pemesanan_penjualan_polimorf_id` FOREIGN KEY (`pemesanan_penjualan_id`) REFERENCES `tr_pemesanan_penjualan_header_polimorf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_pemesanan_penjualan_detail_polimorf_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_pemesanan_penjualan_detail_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_pemesanan_penjualan_header_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_pemesanan_penjualan_header_polimorf`;
CREATE TABLE `tr_pemesanan_penjualan_header_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemesanan_penjualan_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemesanan_penjualan_tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_pemesanan_penjualan_header_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_ambil_rak_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_ambil_rak_detail`;
CREATE TABLE `tr_sp_ambil_rak_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ambil_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ambil_rak_id`(`ambil_rak_id` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_ambil_rak_id` FOREIGN KEY (`ambil_rak_id`) REFERENCES `tr_sp_ambil_rak_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_ambil_rak_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_ambil_rak_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_ambil_rak_detail_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_ambil_rak_detail_polimorf`;
CREATE TABLE `tr_sp_ambil_rak_detail_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ambil_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ambil_rak_polimorf_id`(`ambil_rak_id` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_detail_polimorf_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_ambil_rak_polimorf_id` FOREIGN KEY (`ambil_rak_id`) REFERENCES `tr_sp_ambil_rak_header_polimorf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_ambil_rak_detail_polimorf_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_ambil_rak_detail_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_ambil_rak_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_ambil_rak_header`;
CREATE TABLE `tr_sp_ambil_rak_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ambil_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ambil_rak_header_polimorf_id`(`ambil_rak_id` ASC) USING BTREE,
  CONSTRAINT `fk_ambil_rak_header_polimorf_id` FOREIGN KEY (`ambil_rak_id`) REFERENCES `tr_sp_ambil_rak_header_polimorf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_ambil_rak_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_ambil_rak_header_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_ambil_rak_header_polimorf`;
CREATE TABLE `tr_sp_ambil_rak_header_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ambil_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ambil_rak_tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_ambil_rak_header_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_kerja_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_kerja_detail`;
CREATE TABLE `tr_sp_kerja_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kerja_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_kerja_id`(`kerja_id` ASC) USING BTREE,
  INDEX `tr_sp_kerja_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_kerja_id` FOREIGN KEY (`kerja_id`) REFERENCES `tr_sp_kerja_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_kerja_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_kerja_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_kerja_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_kerja_header`;
CREATE TABLE `tr_sp_kerja_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_kerja_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_kirim_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_kirim_detail`;
CREATE TABLE `tr_sp_kirim_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kirim_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_kirim_id`(`kirim_id` ASC) USING BTREE,
  INDEX `tr_sp_kirim_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_kirim_id` FOREIGN KEY (`kirim_id`) REFERENCES `tr_sp_kirim_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_kirim_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_kirim_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_kirim_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_kirim_header`;
CREATE TABLE `tr_sp_kirim_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_kirim_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_mutasi_gudang_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_mutasi_gudang_detail`;
CREATE TABLE `tr_sp_mutasi_gudang_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutasi_gudang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_mutasi_gudang_id`(`mutasi_gudang_id` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_mutasi_gudang_id` FOREIGN KEY (`mutasi_gudang_id`) REFERENCES `tr_sp_mutasi_gudang_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_mutasi_gudang_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_mutasi_gudang_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_mutasi_gudang_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_mutasi_gudang_header`;
CREATE TABLE `tr_sp_mutasi_gudang_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_mutasi_gudang_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_mutasi_gudang_kirim_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_mutasi_gudang_kirim_detail`;
CREATE TABLE `tr_sp_mutasi_gudang_kirim_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutasi_gudang_kirim_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_mutasi_gudang_kirim_id`(`mutasi_gudang_kirim_id` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_mutasi_gudang_kirim_id` FOREIGN KEY (`mutasi_gudang_kirim_id`) REFERENCES `tr_sp_mutasi_gudang_kirim_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_mutasi_gudang_kirim_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_mutasi_gudang_kirim_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_mutasi_gudang_kirim_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_mutasi_gudang_kirim_header`;
CREATE TABLE `tr_sp_mutasi_gudang_kirim_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_mutasi_gudang_kirim_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_mutasi_gudang_terima_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_mutasi_gudang_terima_detail`;
CREATE TABLE `tr_sp_mutasi_gudang_terima_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutasi_gudang_terima_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_mutasi_gudang_terima_id`(`mutasi_gudang_terima_id` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_mutasi_gudang_terima_id` FOREIGN KEY (`mutasi_gudang_terima_id`) REFERENCES `tr_sp_mutasi_gudang_terima_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_mutasi_gudang_terima_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_mutasi_gudang_terima_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_mutasi_gudang_terima_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_mutasi_gudang_terima_header`;
CREATE TABLE `tr_sp_mutasi_gudang_terima_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_mutasi_gudang_terima_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_pindah_rak_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_pindah_rak_detail`;
CREATE TABLE `tr_sp_pindah_rak_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pindah_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_pindah_rak_id`(`pindah_rak_id` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_pindah_rak_id` FOREIGN KEY (`pindah_rak_id`) REFERENCES `tr_sp_pindah_rak_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_pindah_rak_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_pindah_rak_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_pindah_rak_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_pindah_rak_header`;
CREATE TABLE `tr_sp_pindah_rak_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_pindah_rak_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_service_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_service_detail`;
CREATE TABLE `tr_sp_service_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemesanan_penjualan_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_service_id`(`service_id` ASC) USING BTREE,
  INDEX `fk_pemesanan_penjualan_id`(`pemesanan_penjualan_id` ASC) USING BTREE,
  INDEX `tr_sp_service_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `fk_pemesanan_penjualan_id` FOREIGN KEY (`pemesanan_penjualan_id`) REFERENCES `tr_pemesanan_penjualan_header_polimorf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_service_id` FOREIGN KEY (`service_id`) REFERENCES `tr_sp_service_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_service_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_service_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_service_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_service_header`;
CREATE TABLE `tr_sp_service_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_service_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_simpan_rak_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_simpan_rak_detail`;
CREATE TABLE `tr_sp_simpan_rak_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `simpan_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_simpan_rak_detail_simpan_rak_id_foreign`(`simpan_rak_id` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_simpan_rak_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_simpan_rak_detail_simpan_rak_id_foreign` FOREIGN KEY (`simpan_rak_id`) REFERENCES `tr_sp_simpan_rak_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_simpan_rak_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_simpan_rak_detail_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_simpan_rak_detail_polimorf`;
CREATE TABLE `tr_sp_simpan_rak_detail_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `simpan_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `simpan_rak_tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_simpan_rak_polimorf_id`(`simpan_rak_id` ASC) USING BTREE,
  CONSTRAINT `fk_simpan_rak_polimorf_id` FOREIGN KEY (`simpan_rak_id`) REFERENCES `tr_sp_ambil_rak_header_polimorf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_simpan_rak_detail_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_simpan_rak_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_simpan_rak_header`;
CREATE TABLE `tr_sp_simpan_rak_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `simpan_rak_header_polimorf_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_simpan_rak_header_polimorf_id`(`simpan_rak_header_polimorf_id` ASC) USING BTREE,
  CONSTRAINT `fk_simpan_rak_header_polimorf_id` FOREIGN KEY (`simpan_rak_header_polimorf_id`) REFERENCES `tr_sp_simpan_rak_header_polimorf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_simpan_rak_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_simpan_rak_header_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_simpan_rak_header_polimorf`;
CREATE TABLE `tr_sp_simpan_rak_header_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `simpan_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `simpan_rak_tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_simpan_rak_header_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_tanda_terima_service_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_tanda_terima_service_detail`;
CREATE TABLE `tr_tanda_terima_service_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanda_terima_servide_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_tanda_terima_service_detail_tanda_terima_servide_id_foreign`(`tanda_terima_servide_id` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  CONSTRAINT `tr_tanda_terima_service_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_tanda_terima_service_detail_tanda_terima_servide_id_foreign` FOREIGN KEY (`tanda_terima_servide_id`) REFERENCES `tr_tanda_terima_service_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_tanda_terima_service_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_tanda_terima_service_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_tanda_terima_service_header`;
CREATE TABLE `tr_tanda_terima_service_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dibuat` timestamp NULL DEFAULT NULL,
  `tgl_diupdate` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_tanda_terima_service_header
-- ----------------------------

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
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
