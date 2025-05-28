/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : service_2025_16

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 28/05/2025 16:59:27
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
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000003_create_ms_barang_table', 1);
INSERT INTO `migrations` VALUES (4, '0001_01_01_000004_create_ms_cabang_table', 1);
INSERT INTO `migrations` VALUES (5, '0001_01_01_000005_create_ms_pelanggan_table', 1);
INSERT INTO `migrations` VALUES (6, '0001_01_01_000006_create_ms_gudang_table', 1);
INSERT INTO `migrations` VALUES (7, '0001_01_01_000006_create_ms_rak_table', 1);
INSERT INTO `migrations` VALUES (8, '0001_01_01_000006_create_tr_faktur_header_table', 1);
INSERT INTO `migrations` VALUES (9, '0001_01_01_000007_create_ms_pegawai_table', 1);
INSERT INTO `migrations` VALUES (10, '0001_01_01_000007_create_ms_rak_kategori_table', 1);
INSERT INTO `migrations` VALUES (11, '0001_01_01_000009_create_tr_pemesanan_penjualan_polimorf_table', 1);
INSERT INTO `migrations` VALUES (12, '0001_01_01_000011_create_tr_sp_ambil_rak_polimorf_table', 1);
INSERT INTO `migrations` VALUES (13, '0001_01_01_000013_create_tr_sp_ambil_rak_header_table', 1);
INSERT INTO `migrations` VALUES (14, '0001_01_01_000014_create_tr_sp_ambil_rak_detail_table', 1);
INSERT INTO `migrations` VALUES (15, '0001_01_01_000015_create_tr_sp_kerja_header_table', 1);
INSERT INTO `migrations` VALUES (16, '0001_01_01_000016_create_tr_sp_kerja_detail_table', 1);
INSERT INTO `migrations` VALUES (17, '0001_01_01_000017_create_tr_sp_kirim_header_table', 1);
INSERT INTO `migrations` VALUES (18, '0001_01_01_000018_create_tr_sp_kirim_detail_table', 1);
INSERT INTO `migrations` VALUES (19, '0001_01_01_000019_create_tr_sp_mutasi_gudang_header_table', 1);
INSERT INTO `migrations` VALUES (20, '0001_01_01_000020_create_tr_sp_mutasi_gudang_detail_table', 1);
INSERT INTO `migrations` VALUES (21, '0001_01_01_000021_create_tr_sp_mutasi_gudang_kirim_header_table', 1);
INSERT INTO `migrations` VALUES (22, '0001_01_01_000022_create_tr_sp_mutasi_gudang_kirim_detail_table', 1);
INSERT INTO `migrations` VALUES (23, '0001_01_01_000023_create_tr_sp_mutasi_gudang_terima_header_table', 1);
INSERT INTO `migrations` VALUES (24, '0001_01_01_000024_create_tr_sp_mutasi_gudang_terima_detail_table', 1);
INSERT INTO `migrations` VALUES (25, '0001_01_01_000025_create_tr_sp_pindah_rak_header_table', 1);
INSERT INTO `migrations` VALUES (26, '0001_01_01_000026_create_tr_sp_pindah_rak_detail_table', 1);
INSERT INTO `migrations` VALUES (27, '0001_01_01_000027_create_tr_tanda_terima_service_header_table', 1);
INSERT INTO `migrations` VALUES (28, '0001_01_01_000028_create_tr_tanda_terima_service_detail_table', 1);
INSERT INTO `migrations` VALUES (29, '0001_01_01_000029_create_tr_sp_service_header_table', 1);
INSERT INTO `migrations` VALUES (30, '0001_01_01_000030_create_tr_sp_service_detail_table', 1);
INSERT INTO `migrations` VALUES (31, '0001_01_01_000031_create_tr_sp_simpan_rak_header_table', 1);
INSERT INTO `migrations` VALUES (32, '0001_01_01_000032_create_tr_sp_simpan_rak_detail_table', 1);
INSERT INTO `migrations` VALUES (33, '0001_01_01_000033_create_tr_sp_simpan_rak_polimorf_table', 1);
INSERT INTO `migrations` VALUES (34, '0001_01_01_000035_create_users_table', 1);

-- ----------------------------
-- Table structure for ms_barang
-- ----------------------------
DROP TABLE IF EXISTS `ms_barang`;
CREATE TABLE `ms_barang`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sync_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ms_barang_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `ms_barang_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `ms_barang_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_barang
-- ----------------------------
INSERT INTO `ms_barang` VALUES ('08bded8d-aa88-466b-a8f2-80d53d373e3b', NULL, 'Smart Plug', 12, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('1a48d00e-9733-4689-9ef4-0a3b77022c93', NULL, 'Steam Iron', 9, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('20622679-c60f-4e53-ba9a-740437487edb', NULL, 'Hand Mixer', 5, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('29224c4c-7893-4024-af79-82999b7c74fc', NULL, 'Meat Grinder', 14, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('2e149ceb-1bec-4157-9b62-89d73f14a363', NULL, 'Humidifier', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('2fd403d3-36fb-4c8d-aa74-30b639e59652', NULL, 'Air Fryer', 13, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('531ef9bf-b119-424d-99cb-d7e9837b7ad6', NULL, 'Electric Shaver', 8, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('5c84968d-4f38-4d33-bdac-002e5b2bbd72', NULL, 'Induction Stove', 15, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('5e28ed32-b100-498e-8160-e97b8503ae2e', NULL, 'Portable Heater', 18, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('5f9ba8c3-e27b-4886-823f-3eb85ed5247d', NULL, 'Slow Cooker', 16, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('950dc3c1-f278-4a2d-9158-ea18c6e4d8b2', NULL, 'Robotic Vacuum', 10, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('9bc026e2-b542-4c9a-9d14-1f956b1b6054', NULL, 'Bread Maker', 6, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('ad8381ed-2f11-4a96-9584-bcd1a54b9688', NULL, 'Dehumidifier', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('b2e6ec89-216f-42a0-9a03-d24624c3787c', NULL, 'Hair Dryer', 7, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('b92c492c-901f-4421-ba50-c74fc34da59d', NULL, 'Ceiling Fan', 20, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('bcafb47d-2d78-4171-a78c-9297b94c4e71', NULL, 'Electric Kettle', 4, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('cd675ad9-be6e-46c0-bec5-d7cf884a7e60', NULL, 'Electric Blanket', 19, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('ceded74a-b2d9-4c10-af6a-2606fb358f64', NULL, 'Pressure Cooker', 17, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('fb504f29-0cae-48e4-b04b-8f442cdc45aa', NULL, 'Smart Light', 11, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_barang` VALUES ('fea9e2bf-0baa-4435-be17-335fe6ffac0b', NULL, 'Dishwasher', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');

-- ----------------------------
-- Table structure for ms_cabang
-- ----------------------------
DROP TABLE IF EXISTS `ms_cabang`;
CREATE TABLE `ms_cabang`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ms_cabang_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `ms_cabang_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `ms_cabang_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_cabang
-- ----------------------------
INSERT INTO `ms_cabang` VALUES ('0a13da3d-8ffa-494e-a620-c4fe4749ee4e', 'Cabang Kalimantan Timur', 8, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('14db4067-7977-4f08-bca2-d30b093a33b3', 'Cabang Banten', 6, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('2ecf9299-81d1-4ae4-b947-f9eaed87b44e', 'Cabang Riau', 10, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('708bc72f-f0b7-4b9b-a986-8aa3c5460d9d', 'Cabang DKI Jakarta', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('7168430a-0f72-4631-8505-3d4882ff5ac2', 'Cabang Sumatera Utara', 4, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('77d7f8b2-a9f9-40d2-8cd3-18b3c179a0d6', 'Cabang Jawa Barat', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('7e7e2fa6-6e2a-42d4-9fdd-37d38189d545', 'Cabang Bali', 5, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('95b35dd1-391f-433c-98cb-c311f6e24290', 'Cabang Sulawesi Selatan', 7, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('c60b3002-b1b1-44a9-8ed4-1530a4060d61', 'Cabang Jawa Timur', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_cabang` VALUES ('ed6a09f4-9e27-4506-9d38-24cf72e9efa8', 'Cabang Yogyakarta', 9, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');

-- ----------------------------
-- Table structure for ms_gudang
-- ----------------------------
DROP TABLE IF EXISTS `ms_gudang`;
CREATE TABLE `ms_gudang`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ms_gudang_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `ms_gudang_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `ms_gudang_status_index`(`status` ASC) USING BTREE,
  INDEX `ms_gudang_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `ms_gudang_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_gudang
-- ----------------------------
INSERT INTO `ms_gudang` VALUES ('0af223e9-17ad-48cc-a688-ea843320aa2c', '7e7e2fa6-6e2a-42d4-9fdd-37d38189d545', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('1517570c-56ae-4d4c-8b82-9d5f3490b9b4', '14db4067-7977-4f08-bca2-d30b093a33b3', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('162b6c49-8c71-4643-b4c3-d338307948b5', '7e7e2fa6-6e2a-42d4-9fdd-37d38189d545', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('2ceb1113-49fb-48d2-9188-73a559d7e8cc', '95b35dd1-391f-433c-98cb-c311f6e24290', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('2de96834-c7d9-4539-80f7-c8e0a9ae66c4', '77d7f8b2-a9f9-40d2-8cd3-18b3c179a0d6', 'Gudang C', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('39be3a92-f3a0-4397-9655-6cb4dcc757f0', 'c60b3002-b1b1-44a9-8ed4-1530a4060d61', 'Gudang C', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('4557104c-d8c1-4f48-91d5-46669b02dccf', '77d7f8b2-a9f9-40d2-8cd3-18b3c179a0d6', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('543afb86-12b6-44ce-8695-7fe6388dfe92', '0a13da3d-8ffa-494e-a620-c4fe4749ee4e', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('581f3aa3-59d9-4582-9011-3b7b2eda832b', '7168430a-0f72-4631-8505-3d4882ff5ac2', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('615a1fef-3611-47b3-beab-4fd617aac59d', '2ecf9299-81d1-4ae4-b947-f9eaed87b44e', 'Gudang C', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('618d254b-a85b-439a-948c-e8ce3c26109a', '2ecf9299-81d1-4ae4-b947-f9eaed87b44e', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('6b93ed33-88ca-4a6d-98c6-0ed7d3fa329d', '0a13da3d-8ffa-494e-a620-c4fe4749ee4e', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('6d4e151e-aac6-4ca6-8c63-861e930d4928', 'ed6a09f4-9e27-4506-9d38-24cf72e9efa8', 'Gudang C', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('6ff30b11-96fb-4d4e-8615-34e26194526f', '7e7e2fa6-6e2a-42d4-9fdd-37d38189d545', 'Gudang C', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('73134a96-86d0-47f2-979a-29d434b45e09', 'c60b3002-b1b1-44a9-8ed4-1530a4060d61', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('75595104-b87c-4e06-afdb-80f5fd0126a8', '7168430a-0f72-4631-8505-3d4882ff5ac2', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('75737e9c-bf6a-4f39-9e41-967933955599', '95b35dd1-391f-433c-98cb-c311f6e24290', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('7aa1551a-17c0-44a3-a95a-095d488e9995', '14db4067-7977-4f08-bca2-d30b093a33b3', 'Gudang C', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('81297da4-79be-4011-89c8-478b9d029f9d', '2ecf9299-81d1-4ae4-b947-f9eaed87b44e', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('863c1886-0b34-42d6-8b55-0c882fcf677f', '14db4067-7977-4f08-bca2-d30b093a33b3', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('88965085-c2ea-43f7-bc19-ef92a72ed5b1', '708bc72f-f0b7-4b9b-a986-8aa3c5460d9d', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('ada5ed02-8699-4f78-9b75-943b8bd98165', 'ed6a09f4-9e27-4506-9d38-24cf72e9efa8', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('b25f745b-8ec8-482e-b49e-8747ee6aae5b', '7168430a-0f72-4631-8505-3d4882ff5ac2', 'Gudang C', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('c19b8c39-57ec-4d43-a351-6beea1ec9f84', 'ed6a09f4-9e27-4506-9d38-24cf72e9efa8', 'Gudang A', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('d95ed53a-6f95-4dec-8e95-58063ef62281', 'c60b3002-b1b1-44a9-8ed4-1530a4060d61', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('dfb381eb-3a2f-4ae4-bab0-0c3459b02568', '77d7f8b2-a9f9-40d2-8cd3-18b3c179a0d6', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_gudang` VALUES ('f0b6d778-6167-4070-9dfa-2bb50183f2d4', '708bc72f-f0b7-4b9b-a986-8aa3c5460d9d', 'Gudang B', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');

-- ----------------------------
-- Table structure for ms_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `ms_pegawai`;
CREATE TABLE `ms_pegawai`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ms_pegawai_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `ms_pegawai_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `ms_pegawai_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_pegawai
-- ----------------------------
INSERT INTO `ms_pegawai` VALUES ('176d3fd8-6c72-4b33-996f-9473e1b3d520', 'Galih Rahman', 7, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('196af772-4341-46ff-a7ea-e4a423ecbc1c', 'Qori Pratama', 17, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('1e01cb7a-0c1c-46a4-80f9-79d516d4c692', 'Putri Anggraini', 16, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('235c63e6-fcd9-4d0c-ab0f-e95aa1e66138', 'Rizki Maulana', 18, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('24d6b66b-0c97-4f5d-a8ed-3dc3e2ceb2a3', 'Andi Saputra', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('317e2a01-539d-4735-98a7-4cafe1ba87b5', 'Citra Dewi', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('366e7a8b-05a5-4f34-88f8-61af7b8db776', 'Budi Santoso', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('3c5439a0-92dc-4605-8432-76bd9a7f53ac', 'Hendra Wijaya', 8, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('433a602d-1979-4141-bd35-db50215b943c', 'Maya Sari', 13, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('43c98c25-22c2-4994-b88f-25190ab28a00', 'Fajar Nugroho', 6, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('4e57fde5-25db-4718-8f7b-b21cb82036b2', 'Dewi Lestari', 4, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('60088747-982c-437a-9414-3b60076f6f74', 'Joko Susilo', 10, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('add74b7a-9a86-432e-be17-3802396e673c', 'Niko Hartono', 14, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('d115bce1-e249-45d0-bd6e-c975881d5389', 'Kirana Putri', 11, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('d29de013-80fb-4e49-8155-6de752065a1c', 'Sari Melati', 19, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('d81a4e2c-a86c-43b0-bb07-2abe5675a051', 'Eko Prasetyo', 5, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('dcc150bb-1aa4-43c3-97eb-808870b257da', 'Oki Kurniawan', 15, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('ddaea855-e9ef-44a7-b725-c0b60100688f', 'Lia Amalia', 12, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('e29a8c64-f8ba-4517-8f29-21b3c22bebcd', 'Teguh Wibowo', 20, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pegawai` VALUES ('f40f44c8-64dc-43ef-8436-3e9e91565f55', 'Indah Permata', 9, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');

-- ----------------------------
-- Table structure for ms_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `ms_pelanggan`;
CREATE TABLE `ms_pelanggan`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ms_pelanggan_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `ms_pelanggan_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `ms_pelanggan_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_pelanggan
-- ----------------------------
INSERT INTO `ms_pelanggan` VALUES ('0441fa45-bd7c-4101-9962-8151d0f97811', 'Ahmad Fauzi', '081234567890', 'Jl. Merdeka No. 1, Jakarta', 'ahmadfauzi@gmail.com', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('0dbb7f44-bbe4-45e4-ace4-3aa3e7f94d28', 'Yosef Ramadhan', '083456789987', 'Jl. Raya Timur No. 23, Jakarta', 'yoseframadhan@gmail.com', 23, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('110cee0d-dad7-46bc-a29d-dd213e300e40', 'Meli Anggraini', '096789012345', 'Jl. Jendral Sudirman No. 36, Bandung', 'melianggraini@gmail.com', 36, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('2f0b64b5-74a0-4d89-9e3b-60c069b54bc0', 'Wawan Prasetyo', '081234567123', 'Jl. Kenangan No. 21, Surabaya', 'wawanprasetyofirst@gmail.com', 21, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('453b3011-0066-44e3-bf40-dc00216f7bf4', 'Lina Binti Nisa', '095678901234', 'Jl. Taman No. 35, Semarang', 'linabnisa@gmail.com', 35, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('5deebc00-7451-41de-b66d-8565992998f2', 'Nia Yuliana', '097890123456', 'Jl. Anggrek No. 37, Surabaya', 'niayuliana@gmail.com', 37, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('61f9984d-944e-4d76-9f4f-10dcf4dd9849', 'Aulia Safira', '084567890876', 'Jl. Merpati No. 24, Bandung', 'aulia.safira@gmail.com', 24, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('69b39bc1-864f-40e8-a6d4-ed7ec90ca455', 'Benedictus Lionel', '085678901234', 'Jl. Sukabumi No. 25, Surabaya', 'benedictusl@gmail.com', 25, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('6b99b59c-1aa7-4f7b-bec4-9898c1e41ace', 'Carla Wijaya', '086789012345', 'Jl. Raya Selatan No. 26, Medan', 'carlawijaya@gmail.com', 26, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('7de562a7-2af7-4217-9a09-448dc036ca79', 'Oktavianus Arief', '098901234567', 'Jl. Pahlawan No. 38, Palembang', 'oktavianusarief@gmail.com', 38, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('7e8c6083-c3a2-4031-9649-beeaf2ff49be', 'Ilham Putra', '092345678901', 'Jl. Merpati No. 32, Surakarta', 'ilhamputra@gmail.com', 32, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('80a0c828-efd5-4a1a-8c3a-e9f26acce017', 'Hilda Sembiring', '091234567890', 'Jl. Anggrek No. 31, Malang', 'hildasem@gmail.com', 31, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('8164bca6-cf29-46ca-b019-2978078eb973', 'Kevin Fakhri', '094567890123', 'Jl. Seroja No. 34, Jakarta', 'kevinfakhri@gmail.com', 34, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('9bdee6a3-b98b-4085-88e6-feca7f81a941', 'Farah Najwa', '089012345678', 'Jl. Bali No. 29, Bali', 'farahnajwa@gmail.com', 29, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('c334b04a-c027-4235-a691-a03a3580479d', 'Jasmine Putri', '093456789012', 'Jl. Kemuning No. 33, Surabaya', 'jasmineputri@gmail.com', 33, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('e0309af9-d966-4a7d-811d-c373156f9c25', 'Gilang Hermawan', '090123456789', 'Jl. Maju Jaya No. 30, Palembang', 'gilanghermawan@gmail.com', 30, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('ea5960d7-22f3-408d-9f43-ab576fbe4afc', 'Diana Kirana', '087890123456', 'Jl. Merdeka No. 27, Surabaya', 'dianakirana@gmail.com', 27, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('f97b05e5-9131-4dcc-88f4-f6ddb6205bf0', 'Zainab Ibrahim', '082345671234', 'Jl. Suka Cita No. 22, Malang', 'zainabibrahim@gmail.com', 22, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_pelanggan` VALUES ('fe8ba52f-b98d-48c7-815a-c27d6ad1ac11', 'Eko Prasetyo', '088901234567', 'Jl. Jendral Sudirman No. 28, Yogyakarta', 'ekoprasetyo@gmail.com', 28, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');

-- ----------------------------
-- Table structure for ms_rak
-- ----------------------------
DROP TABLE IF EXISTS `ms_rak`;
CREATE TABLE `ms_rak`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_gudang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ms_rak_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `ms_rak_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `ms_rak_status_index`(`status` ASC) USING BTREE,
  INDEX `ms_rak_ms_gudang_id_foreign`(`ms_gudang_id` ASC) USING BTREE,
  CONSTRAINT `ms_rak_ms_gudang_id_foreign` FOREIGN KEY (`ms_gudang_id`) REFERENCES `ms_gudang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_rak
-- ----------------------------
INSERT INTO `ms_rak` VALUES ('00c3ca96-e010-4e19-865c-cf58a81da1a5', '1517570c-56ae-4d4c-8b82-9d5f3490b9b4', 'Rak 13', 13, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('042c2360-88b6-4076-ae1a-cd561b397bf2', 'c19b8c39-57ec-4d43-a351-6beea1ec9f84', 'Rak 14', 14, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('05c71439-ebf6-42a1-906f-e2db4bbe43b2', '4557104c-d8c1-4f48-91d5-46669b02dccf', 'Rak 19', 19, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('145f7fc2-f51a-4f40-89ba-f469a712e281', '618d254b-a85b-439a-948c-e8ce3c26109a', 'Rak 20', 20, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('149ca3d2-1208-468a-9c55-7c021eddaa48', '6ff30b11-96fb-4d4e-8615-34e26194526f', 'Rak 12', 12, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('2fc8bdc9-b3f6-4075-ba82-4299fc52ee8e', 'f0b6d778-6167-4070-9dfa-2bb50183f2d4', 'Rak 11', 11, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('3534bc87-bb6e-462b-8ce0-9daa56d2351a', '543afb86-12b6-44ce-8695-7fe6388dfe92', 'Rak 15', 15, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('4185e30f-eaba-46a3-a5ee-4fb3563c986e', '0af223e9-17ad-48cc-a688-ea843320aa2c', 'Rak 18', 18, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('4998c9a0-94a9-43a2-85fc-8d87ba91ed40', '39be3a92-f3a0-4397-9655-6cb4dcc757f0', 'Rak 17', 17, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('4e3e602e-f8ea-45e0-9956-837db6afab55', '4557104c-d8c1-4f48-91d5-46669b02dccf', 'Rak 9', 9, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('52b734ac-0521-4be5-8d39-fd1a859b307a', '73134a96-86d0-47f2-979a-29d434b45e09', 'Rak 8', 8, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('ac6ccd89-347c-46b3-ad23-cafffa0cf8f0', '2ceb1113-49fb-48d2-9188-73a559d7e8cc', 'Rak 10', 10, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('b99977b8-d2fe-44fe-95b7-93162b47c46a', '2de96834-c7d9-4539-80f7-c8e0a9ae66c4', 'Rak 4', 4, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('bb965a66-5693-4160-b7d8-45b5c632817b', '39be3a92-f3a0-4397-9655-6cb4dcc757f0', 'Rak 2', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('d3e6b7ec-adc8-4e91-98b1-ecccfcb6af66', 'ada5ed02-8699-4f78-9b75-943b8bd98165', 'Rak 5', 5, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('db01c759-d3f4-4f38-b93c-22349f5dfc9d', 'd95ed53a-6f95-4dec-8e95-58063ef62281', 'Rak 3', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('dec3f504-4d48-4849-b157-302de1492127', 'd95ed53a-6f95-4dec-8e95-58063ef62281', 'Rak 7', 7, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('e6ce131f-8ad6-4598-956f-8b5d7102dc6c', '75595104-b87c-4e06-afdb-80f5fd0126a8', 'Rak 6', 6, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('ee1d48a1-aeeb-4a9a-b782-d8701a968f32', 'b25f745b-8ec8-482e-b49e-8747ee6aae5b', 'Rak 16', 16, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak` VALUES ('f49be00b-7998-40d7-856b-cf17deb29d00', '6d4e151e-aac6-4ca6-8c63-861e930d4928', 'Rak 1', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');

-- ----------------------------
-- Table structure for ms_rak_kategori
-- ----------------------------
DROP TABLE IF EXISTS `ms_rak_kategori`;
CREATE TABLE `ms_rak_kategori`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ms_rak_kategori_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  INDEX `ms_rak_kategori_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `ms_rak_kategori_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `ms_rak_kategori_status_index`(`status` ASC) USING BTREE,
  CONSTRAINT `ms_rak_kategori_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ms_rak_kategori
-- ----------------------------
INSERT INTO `ms_rak_kategori` VALUES ('16ed6326-80bb-4890-96b7-88e7bd5e193f', 'e6ce131f-8ad6-4598-956f-8b5d7102dc6c', 'Kategori 7', 7, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('2588fab0-3e98-418d-bb39-85d6476f2f8d', 'dec3f504-4d48-4849-b157-302de1492127', 'Kategori 3', 3, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('3dc446eb-2328-4d51-b0ce-789a4a6be8e6', 'f49be00b-7998-40d7-856b-cf17deb29d00', 'Kategori 10', 10, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('4546b195-e1bc-4f4e-80b2-4240754b739d', '00c3ca96-e010-4e19-865c-cf58a81da1a5', 'Kategori 1', 1, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('4edee477-ce13-49dc-ae6b-ab727d449491', 'ac6ccd89-347c-46b3-ad23-cafffa0cf8f0', 'Kategori 4', 4, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('5fe0e231-6cff-4e67-afdb-c4f5c5d035e3', '145f7fc2-f51a-4f40-89ba-f469a712e281', 'Kategori 9', 9, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('6a5d4b6f-face-4420-8f55-88e1bebd77ec', 'f49be00b-7998-40d7-856b-cf17deb29d00', 'Kategori 13', 13, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('6a8ee750-9850-477a-ba7a-907cbbcb7504', '4998c9a0-94a9-43a2-85fc-8d87ba91ed40', 'Kategori 16', 16, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('7b08f5e9-18eb-49d6-95a6-7e722b6d97ad', '05c71439-ebf6-42a1-906f-e2db4bbe43b2', 'Kategori 11', 11, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('87297c92-f035-4ae9-8bc0-5440ed00bec1', '4998c9a0-94a9-43a2-85fc-8d87ba91ed40', 'Kategori 12', 12, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('9b5b8727-b1d5-49c5-a2f4-6bac5f3afbd2', '4998c9a0-94a9-43a2-85fc-8d87ba91ed40', 'Kategori 2', 2, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('a0ac8e03-146b-4973-91c7-772c213b6d5d', '52b734ac-0521-4be5-8d39-fd1a859b307a', 'Kategori 18', 18, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('a67cbc94-c1d7-4348-90cb-1124f312a277', '4998c9a0-94a9-43a2-85fc-8d87ba91ed40', 'Kategori 8', 8, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('a7d824f4-b65a-48a5-91fa-ca1d9323e5ad', 'db01c759-d3f4-4f38-b93c-22349f5dfc9d', 'Kategori 17', 17, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('ad859b0a-5f91-4df4-96eb-84b9f5772788', '2fc8bdc9-b3f6-4075-ba82-4299fc52ee8e', 'Kategori 6', 6, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('adc0446c-2736-4285-a596-ffbbc543aeac', '2fc8bdc9-b3f6-4075-ba82-4299fc52ee8e', 'Kategori 20', 20, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('c22e8bb3-2be5-4f79-adba-5911dffe24ab', 'ac6ccd89-347c-46b3-ad23-cafffa0cf8f0', 'Kategori 5', 5, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('c295611a-5dcd-435d-8657-262de7d5f73e', 'd3e6b7ec-adc8-4e91-98b1-ecccfcb6af66', 'Kategori 15', 15, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('c3e7d339-f065-411f-8b59-3e38fd927705', 'b99977b8-d2fe-44fe-95b7-93162b47c46a', 'Kategori 14', 14, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');
INSERT INTO `ms_rak_kategori` VALUES ('d89a622a-7d53-41e1-ab5f-1c2cbf3a2d29', '00c3ca96-e010-4e19-865c-cf58a81da1a5', 'Kategori 19', 19, 'admin', 'admin', '2025-05-28 07:09:47', '2025-05-28 07:09:47', 'aktif');

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
INSERT INTO `sessions` VALUES ('7ZsDTSkEUZKQ0lbfwhWrhexkdMAcCw9ErnkFN2Az', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXJWRTFkOXlWcTV3VDdNWVBsazYyWE9iWHFGTnp0WW1UNk13U1UwQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wZWxhbmdnYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjIyOiJtYXJ5LXNpZGViYXItY29sbGFwc2VkIjtzOjU6ImZhbHNlIjt9', 1748426147);

-- ----------------------------
-- Table structure for tr_faktur_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_faktur_header`;
CREATE TABLE `tr_faktur_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_faktur_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_faktur_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_faktur_header_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_faktur_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_pemesanan_penjualan_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_pemesanan_penjualan_polimorf`;
CREATE TABLE `tr_pemesanan_penjualan_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_pemesanan_penjualan_polimorf_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_pemesanan_penjualan_polimorf_tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_pemesanan_penjualan_polimorf_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_pemesanan_penjualan_polimorf_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_pemesanan_penjualan_polimorf_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_pemesanan_penjualan_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_ambil_rak_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_ambil_rak_detail`;
CREATE TABLE `tr_sp_ambil_rak_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_sp_ambil_rak_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_ambil_rak_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_ambil_rak_detail_id`(`tr_sp_ambil_rak_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_ambil_rak_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_ambil_rak_detail_id` FOREIGN KEY (`tr_sp_ambil_rak_detail_id`) REFERENCES `tr_sp_ambil_rak_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_ambil_rak_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_ambil_rak_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_ambil_rak_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_ambil_rak_header`;
CREATE TABLE `tr_sp_ambil_rak_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_ambil_rak_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_ambil_rak_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_ambil_rak_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_ambil_rak_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_ambil_rak_polimorf`;
CREATE TABLE `tr_sp_ambil_rak_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_sp_ambil_rak_polimorf_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_sp_ambil_rak_polimorf_tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_ambil_rak_polimorf_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_polimorf_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_ambil_rak_polimorf_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_ambil_rak_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_kerja_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_kerja_detail`;
CREATE TABLE `tr_sp_kerja_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_sp_kerja_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_kerja_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_kerja_detail_id`(`tr_sp_kerja_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_kerja_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kerja_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kerja_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_kerja_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_kerja_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_kerja_detail_id` FOREIGN KEY (`tr_sp_kerja_detail_id`) REFERENCES `tr_sp_kerja_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_kerja_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_kerja_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kerja_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kerja_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_kerja_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_kerja_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `tr_sp_kirim_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_kirim_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_kirim_detail_id`(`tr_sp_kirim_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_kirim_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kirim_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kirim_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_kirim_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_kirim_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_kirim_detail_id` FOREIGN KEY (`tr_sp_kirim_detail_id`) REFERENCES `tr_sp_kirim_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_kirim_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_kirim_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kirim_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_kirim_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_kirim_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_kirim_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `tr_sp_mutasi_gudang_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_mutasi_gudang_detail_id`(`tr_sp_mutasi_gudang_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_mutasi_gudang_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_mutasi_gudang_detail_id` FOREIGN KEY (`tr_sp_mutasi_gudang_detail_id`) REFERENCES `tr_sp_mutasi_gudang_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_mutasi_gudang_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_mutasi_gudang_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `tr_sp_mutasi_gudang_kirim_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_mutasi_gudang_kirim_detail_id`(`tr_sp_mutasi_gudang_kirim_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_mutasi_gudang_kirim_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_mutasi_gudang_kirim_detail_id` FOREIGN KEY (`tr_sp_mutasi_gudang_kirim_detail_id`) REFERENCES `tr_sp_mutasi_gudang_kirim_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_mutasi_gudang_kirim_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_pelanggan_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_kirim_header_ms_pelanggan_id_foreign`(`ms_pelanggan_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_mutasi_gudang_kirim_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_mutasi_gudang_kirim_header_ms_pelanggan_id_foreign` FOREIGN KEY (`ms_pelanggan_id`) REFERENCES `ms_pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `tr_sp_mutasi_gudang_terima_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_mutasi_gudang_terima_detail_id`(`tr_sp_mutasi_gudang_terima_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_mutasi_gudang_terima_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_mutasi_gudang_terima_detail_id` FOREIGN KEY (`tr_sp_mutasi_gudang_terima_detail_id`) REFERENCES `tr_sp_mutasi_gudang_terima_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_mutasi_gudang_terima_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_mutasi_gudang_terima_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_mutasi_gudang_terima_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `tr_sp_pindah_rak_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_pindah_rak_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_pindah_rak_detail_id`(`tr_sp_pindah_rak_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_pindah_rak_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_pindah_rak_detail_id` FOREIGN KEY (`tr_sp_pindah_rak_detail_id`) REFERENCES `tr_sp_pindah_rak_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_pindah_rak_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_pindah_rak_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_pindah_rak_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_pindah_rak_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_sp_service_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_service_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_service_detail_id`(`tr_sp_service_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_service_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_service_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_service_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_service_detail_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  INDEX `tr_sp_service_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_service_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_service_detail_id` FOREIGN KEY (`tr_sp_service_detail_id`) REFERENCES `tr_sp_service_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_service_detail_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_service_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_tanda_terima_service_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_pelanggan_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_tr_sp_service_header`(`tr_tanda_terima_service_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_service_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_service_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_service_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_service_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  INDEX `tr_sp_service_header_ms_pelanggan_id_foreign`(`ms_pelanggan_id` ASC) USING BTREE,
  CONSTRAINT `fk_tr_sp_service_header` FOREIGN KEY (`tr_tanda_terima_service_detail_id`) REFERENCES `tr_tanda_terima_service_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_service_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_service_header_ms_pelanggan_id_foreign` FOREIGN KEY (`ms_pelanggan_id`) REFERENCES `ms_pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `tr_sp_simpan_rak_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_simpan_rak_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_sp_simpan_rak_detail`(`tr_sp_simpan_rak_detail_id` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_simpan_rak_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_sp_simpan_rak_detail` FOREIGN KEY (`tr_sp_simpan_rak_detail_id`) REFERENCES `tr_sp_simpan_rak_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_sp_simpan_rak_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_simpan_rak_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_simpan_rak_header
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_simpan_rak_header`;
CREATE TABLE `tr_sp_simpan_rak_header`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_simpan_rak_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  CONSTRAINT `tr_sp_simpan_rak_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_simpan_rak_header
-- ----------------------------

-- ----------------------------
-- Table structure for tr_sp_simpan_rak_polimorf
-- ----------------------------
DROP TABLE IF EXISTS `tr_sp_simpan_rak_polimorf`;
CREATE TABLE `tr_sp_simpan_rak_polimorf`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_sp_simpan_rak_polimorf_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_sp_simpan_rak_polimorf_tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_sp_simpan_rak_polimorf_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_polimorf_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_sp_simpan_rak_polimorf_status_index`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tr_sp_simpan_rak_polimorf
-- ----------------------------

-- ----------------------------
-- Table structure for tr_tanda_terima_service_detail
-- ----------------------------
DROP TABLE IF EXISTS `tr_tanda_terima_service_detail`;
CREATE TABLE `tr_tanda_terima_service_detail`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_tanda_terima_service_detail_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_barang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_rak_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int NOT NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_tanda_terima_service_detail_ms_barang_id_foreign`(`ms_barang_id` ASC) USING BTREE,
  INDEX `fk_tr_tanda_terima_service_detail`(`tr_tanda_terima_service_detail_id` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_detail_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_detail_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_detail_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_detail_ms_rak_id_foreign`(`ms_rak_id` ASC) USING BTREE,
  CONSTRAINT `tr_tanda_terima_service_detail_ms_barang_id_foreign` FOREIGN KEY (`ms_barang_id`) REFERENCES `ms_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tr_tanda_terima_service_detail` FOREIGN KEY (`tr_tanda_terima_service_detail_id`) REFERENCES `tr_tanda_terima_service_header` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_tanda_terima_service_detail_ms_rak_id_foreign` FOREIGN KEY (`ms_rak_id`) REFERENCES `ms_rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `ms_cabang_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_pelanggan_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int NOT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dibuat_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diupdate_oleh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_dibuat` timestamp NOT NULL,
  `tgl_diupdate` timestamp NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tr_tanda_terima_service_header_dibuat_oleh_index`(`dibuat_oleh` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_header_diupdate_oleh_index`(`diupdate_oleh` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_header_status_index`(`status` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_header_ms_cabang_id_foreign`(`ms_cabang_id` ASC) USING BTREE,
  INDEX `tr_tanda_terima_service_header_ms_pelanggan_id_foreign`(`ms_pelanggan_id` ASC) USING BTREE,
  CONSTRAINT `tr_tanda_terima_service_header_ms_cabang_id_foreign` FOREIGN KEY (`ms_cabang_id`) REFERENCES `ms_cabang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tr_tanda_terima_service_header_ms_pelanggan_id_foreign` FOREIGN KEY (`ms_pelanggan_id`) REFERENCES `ms_pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
