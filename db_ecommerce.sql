/*
 Navicat Premium Data Transfer

 Source Server         : ubuntu
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35-0ubuntu0.20.04.1)
 Source Host           : localhost:3306
 Source Schema         : db_ecommerce

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35-0ubuntu0.20.04.1)
 File Encoding         : 65001

 Date: 25/01/2024 17:46:55
*/
CREATE DATABASES
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT 1,
  `updated_by` int NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (1, 'iphone', 'iphone', 'iphone.jpg', 'qưd', 'qưd', 1, 1, 1, '2023-10-06 01:19:20', '2023-10-17 10:51:19');
INSERT INTO `brands` VALUES (5, 'samsung', 'samsung', 'samsung.webp', 'qdwwdq', '123', 1, NULL, 1, '2023-10-17 15:19:31', '2023-10-17 15:19:31');
INSERT INTO `brands` VALUES (6, 'oppo', 'oppo', 'oppo.webp', 'ưdqwd', 'ưqdwq', 1, NULL, 1, '2023-10-17 15:25:21', '2023-10-17 15:25:21');
INSERT INTO `brands` VALUES (7, 'asus', 'asus', 'asus.webp', 'qưdqwd', 'qdwqw', 1, NULL, 1, '2023-10-17 15:27:23', '2023-10-17 15:27:23');
INSERT INTO `brands` VALUES (8, 'apple', 'apple', 'apple.webp', 'qưdqwd', 'qưd', 1, NULL, 1, '2023-10-17 15:42:17', '2023-10-17 15:42:17');
INSERT INTO `brands` VALUES (9, 'lenovo', 'lenovo', 'lenovo.webp', 'qưdqwd', 'qưdqwdqưd', 1, NULL, 1, '2023-10-19 10:47:24', '2023-10-19 10:47:24');
INSERT INTO `brands` VALUES (10, 'Xiaomi', 'xiaomi', 'xiaomi.webp', 'hjgfyhgf', 'gvjhgf', 1, NULL, 1, '2023-10-19 11:12:21', '2023-10-19 11:12:21');
INSERT INTO `brands` VALUES (11, 'AirPods', 'airpods', 'airpods.webp', 'fgdfgd', 'ghgfkjg', 1, NULL, 1, '2023-10-19 11:19:17', '2023-10-19 11:19:17');
INSERT INTO `brands` VALUES (12, 'Chuột  máy tính', 'chuot-may-tinh', 'chuot-may-tinh.webp', 'kghjfh', 'gdjfhkjh', 1, NULL, 1, '2023-10-19 11:23:42', '2023-10-19 11:23:42');
INSERT INTO `brands` VALUES (13, 'Iphone', 'iphone', 'iphone.webp', 'gdfgdf', 'zdvfsg', 1, NULL, 1, '2023-10-19 11:52:55', '2023-10-19 11:52:55');
INSERT INTO `brands` VALUES (14, 'Samsung', 'samsung', 'samsung.webp', 'dhgfjh', 'sFdgdfgh', 1, NULL, 1, '2023-10-19 11:53:32', '2023-10-19 11:53:32');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED NOT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT 1,
  `updated_by` int NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Laptops', 'laptops', 'laptops.webp', 0, 'laptops,notebooks', 'Laptop computers including MacBook, Dell, HP', 1, 1, 1, NULL, '2023-10-17 16:56:05');
INSERT INTO `categories` VALUES (2, 'Tablets', 'tablets', 'tablets.webp', 0, 'tablets,ipad', 'Tablet computers like iPad and Samsung Galaxy Tab', 1, 1, 1, NULL, '2023-10-17 16:55:40');
INSERT INTO `categories` VALUES (3, 'Smartphones', 'smartphones', 'smartphones.webp', 0, 'smartphones,iphone', 'Smartphone models from brands like iPhone, Samsung Galaxy, Google Pixel', 1, 1, 1, NULL, '2023-10-17 16:56:51');
INSERT INTO `categories` VALUES (4, 'Smart Watches', 'smart-watches', 'smart-watches.webp', 0, 'smartwatches, apple watch', 'Smart watch models including Apple Watch, Samsung Gear', 1, 1, 1, NULL, '2023-10-17 16:59:47');
INSERT INTO `categories` VALUES (5, 'Desktop PCs', 'desktop-pcs', 'desktop-pcs.webp', 0, 'desktop computers, all in one', 'Desktop computer models from HP, Dell, Apple iMac', 1, 1, 1, NULL, '2023-10-17 16:58:56');
INSERT INTO `categories` VALUES (18, 'Tivi', 'tivi', 'tivi.webp', 0, 'fdxgsd', 'sfdsf', 1, NULL, 1, '2023-10-19 11:03:05', '2023-10-19 11:03:05');
INSERT INTO `categories` VALUES (19, 'Phụ kiện', 'phu-kien', 'phu-kien.webp', 0, 'fdgdfg', 'dsgdfg', 1, NULL, 1, '2023-10-19 11:17:13', '2023-10-19 11:17:13');
INSERT INTO `categories` VALUES (20, 'Camera', 'camera', 'camera.webp', 1, 'gdfgdfg', 'sgdrfghdf', 1, NULL, 1, '2023-10-19 11:45:00', '2023-10-19 11:45:00');
INSERT INTO `categories` VALUES (21, 'Ốp điện thoại', 'op-dien-thoai', 'op-dien-thoai.webp', 0, 'ghfgjgh', 'dgdfhd', 1, NULL, 1, '2023-10-19 11:52:36', '2023-10-20 16:50:41');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, 'qưdqwd', 'qưdwqd', 'ưqdwqd', 'qưdqwd', 'qdqwdq', 1, NULL, NULL);

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8, 2) NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------

-- ----------------------------
-- Table structure for discounts
-- ----------------------------
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount_percent` decimal(5, 0) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discounts
-- ----------------------------
INSERT INTO `discounts` VALUES (1, 30, '%', '2023-10-17 22:58:03', '2023-10-25 22:58:05', '2023-10-17 22:58:09', NULL);
INSERT INTO `discounts` VALUES (2, 18, 'ư', '2023-10-17 22:58:53', '2023-10-18 22:58:56', '2023-10-17 22:58:59', NULL);
INSERT INTO `discounts` VALUES (3, 25, 'qd', '2023-10-17 22:59:13', '2023-10-17 22:59:15', '2023-10-17 22:59:18', NULL);
INSERT INTO `discounts` VALUES (4, 40, 'dqw', '2023-10-17 22:59:28', '2023-11-02 22:59:30', '2023-10-17 22:59:33', NULL);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE `invoice_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoices_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` double(8, 2) NOT NULL,
  `amount` double(8, 2) NOT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invoice_details_invoice_id_foreign`(`invoices_id` ASC) USING BTREE,
  INDEX `invoice_details_product_id_foreign`(`product_id` ASC) USING BTREE,
  CONSTRAINT `invoice_details_invoice_id_foreign` FOREIGN KEY (`invoices_id`) REFERENCES `invoices` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_details
-- ----------------------------
INSERT INTO `invoice_details` VALUES (19, 25, 53, 123, 123.00, 15129.00, 1, '2023-10-20 04:54:36', '2023-10-20 04:54:36', 1);
INSERT INTO `invoice_details` VALUES (20, 25, 49, 123, 11.00, 1353.00, 1, '2023-10-20 04:54:36', '2023-10-20 04:54:36', 1);

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT 1,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES (25, 'tets', 'nhap1', 1, NULL, '2023-10-20 04:54:36', '2023-10-20 04:54:36');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort_order` int NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `table_id` int NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Home', '/', 4, 0, 'mainmenu', 1, 'customer', '2023-10-20 10:24:08', '2023-11-16 06:19:42', 1, NULL, 1);
INSERT INTO `menu` VALUES (2, 'shop', '/categories', 3, 0, 'mainmenu', 1, 'customer', '2023-10-20 10:26:11', '2023-11-06 14:49:27', 1, NULL, 1);
INSERT INTO `menu` VALUES (3, 'blog', '/blog', 5, 0, 'mainmenu', 1, 'customer', '2023-10-20 10:26:40', '2023-11-06 14:05:25', 1, NULL, 1);
INSERT INTO `menu` VALUES (4, 'Contact Us', '/contact', 3, 0, 'mainmenu', 1, 'page', '2023-10-20 10:27:36', '2023-11-16 06:19:47', 1, NULL, 1);
INSERT INTO `menu` VALUES (1710, 'Tablets', '/categories/tablets', 1, 0, 'mainmenu', 2, 'categories', '2023-11-06 16:09:38', '2023-11-06 16:09:38', NULL, NULL, 1);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (28, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (29, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (30, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (31, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (32, '2023_09_07_160617_create_categories_table', 1);
INSERT INTO `migrations` VALUES (33, '2023_09_07_160751_create_brands_table', 1);
INSERT INTO `migrations` VALUES (34, '2023_09_07_161544_create_products_table', 1);
INSERT INTO `migrations` VALUES (35, '2023_09_07_162700_create_product_images_table', 1);
INSERT INTO `migrations` VALUES (36, '2023_09_08_064943_create_product_reviews_table', 1);
INSERT INTO `migrations` VALUES (37, '2023_09_08_065658_create_orders_table', 1);
INSERT INTO `migrations` VALUES (38, '2023_09_08_065712_create_shippings_table', 1);
INSERT INTO `migrations` VALUES (39, '2023_09_08_065713_create_order_details_table', 1);
INSERT INTO `migrations` VALUES (40, '2023_09_08_070358_create_contacts_table', 1);
INSERT INTO `migrations` VALUES (41, '2023_09_08_074116_create_topics_table', 1);
INSERT INTO `migrations` VALUES (42, '2023_09_08_074129_create_posts_table', 1);
INSERT INTO `migrations` VALUES (43, '2023_09_08_075546_create_coupons_table', 1);
INSERT INTO `migrations` VALUES (44, '2023_09_10_082836_create_discounts_table', 1);
INSERT INTO `migrations` VALUES (45, '2023_09_10_082837_create_product_discounts_table', 1);
INSERT INTO `migrations` VALUES (46, '2023_09_10_090624_create_settings_table', 1);
INSERT INTO `migrations` VALUES (47, '2023_09_22_032044_create_brand_categories_table', 1);
INSERT INTO `migrations` VALUES (48, '2023_10_05_175417_create_suppliers_table', 1);
INSERT INTO `migrations` VALUES (49, '2023_10_05_175440_create_invoices_table', 1);
INSERT INTO `migrations` VALUES (50, '2023_10_05_175648_create_invoice_details_table', 1);
INSERT INTO `migrations` VALUES (51, '2023_10_05_180131_create_shipments_table', 1);
INSERT INTO `migrations` VALUES (52, '2023_10_05_180218_create_shipments_details_table', 1);
INSERT INTO `migrations` VALUES (53, '2023_10_05_180312_create_attributes_table', 1);
INSERT INTO `migrations` VALUES (54, '2023_10_05_180350_create_attributes_values_table', 1);
INSERT INTO `migrations` VALUES (55, '2016_06_01_000001_create_oauth_auth_codes_table', 2);
INSERT INTO `migrations` VALUES (56, '2016_06_01_000002_create_oauth_access_tokens_table', 2);
INSERT INTO `migrations` VALUES (57, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2);
INSERT INTO `migrations` VALUES (58, '2016_06_01_000004_create_oauth_clients_table', 2);
INSERT INTO `migrations` VALUES (59, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('02a9c73bd1ad3570c5306c7d242b97237311508c2e07bfb1530705c4d9c15afe4e4113c211fddac0', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-23 15:21:12', '2023-12-23 15:21:12', '2024-06-23 15:21:12');
INSERT INTO `oauth_access_tokens` VALUES ('02f1a535d37f4b661f42b2ca30916cc5a00299b31b549616a6b69c56373a41703a78637b3b246660', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:50:32', '2023-12-15 15:50:32', '2024-06-15 15:50:32');
INSERT INTO `oauth_access_tokens` VALUES ('03998a022d1356438905a93a591acaf13dcd6908c41de9375aa46ec58d35b84405ba5986d2935891', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-20 08:47:48', '2023-12-20 08:47:48', '2024-06-20 08:47:48');
INSERT INTO `oauth_access_tokens` VALUES ('07d37170817d1dcf6c3fa6fcaaee853901e5a7252409d28e6159174d18d263643b70022227dac5d2', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:46:56', '2023-12-15 15:46:56', '2024-06-15 15:46:56');
INSERT INTO `oauth_access_tokens` VALUES ('086021f2299e5b26eef04615faed3c2cecc5a47ea99647ab180f02ff7493a9f7e54f2fc35a7206a7', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:54:45', '2023-12-15 15:54:45', '2024-06-15 15:54:45');
INSERT INTO `oauth_access_tokens` VALUES ('087cd38f5cdda83a4f9a6073f0e42fbf36018d2cbee91cc3ac19445c474035cccde3f19c6531a0db', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 06:13:48', '2023-12-16 06:13:48', '2024-06-16 06:13:48');
INSERT INTO `oauth_access_tokens` VALUES ('1008aef5b811c5dcf5e09c2cb3d0166c82a79721aaa18c56a439b4a0365072765193db95086b2a1f', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-17 07:13:20', '2023-12-17 07:13:20', '2024-06-17 07:13:20');
INSERT INTO `oauth_access_tokens` VALUES ('14dc84dc648cd40701e63f2ee325658c31d0038ed07b41903835f992dc237ce376300df4cc81d85e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-17 06:27:44', '2023-12-17 06:27:44', '2024-06-17 06:27:44');
INSERT INTO `oauth_access_tokens` VALUES ('165536573d344abfb8d545d3e18cec8d9374e1f9394c5754f2612ab0bd7a840ec660dc5403c382d0', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 17:59:18', '2023-12-19 17:59:18', '2024-06-19 17:59:18');
INSERT INTO `oauth_access_tokens` VALUES ('1923dde68b98f509bc12e7a8fb88ac62b7ce0b94fbbefea66e318a3c4b737aca0430b91c9e1aff69', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:07:31', '2023-12-15 17:07:31', '2024-06-15 17:07:31');
INSERT INTO `oauth_access_tokens` VALUES ('1a1597f1f1eae95f64625bec7d4b38d9100141ad1eff621a6d7f8b6efc4c593db6b573df76cb1d8e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-20 06:12:00', '2023-12-20 06:12:00', '2024-06-20 06:12:00');
INSERT INTO `oauth_access_tokens` VALUES ('1b344a8f4311da8e2feb38a65be49c2d7290bfaa236e093005ea63a1b7f3ed32a51a32d2ea821dd9', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 06:43:42', '2023-12-16 06:43:42', '2024-06-16 06:43:42');
INSERT INTO `oauth_access_tokens` VALUES ('1be0f816291ac5c759ad3b6e07d13887037d4a4fdbf8e0eeca8dc0b8b040a90b25bfba6d3f5c99c4', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-08 11:57:01', '2024-01-08 11:57:01', '2024-07-08 11:57:01');
INSERT INTO `oauth_access_tokens` VALUES ('1ff4516d3b652253c0eb449f19c42d9c221983174ec44091e6412f2b374b8a182b64d4495ada571f', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:49:38', '2023-12-15 17:49:38', '2024-06-15 17:49:38');
INSERT INTO `oauth_access_tokens` VALUES ('2b1c43cedd8fe33def58c0b3bbb05a0af10c3187b28cfddf0515944bde64f1a2b07c3453d980ae60', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 17:43:49', '2023-12-19 17:43:50', '2024-06-19 17:43:49');
INSERT INTO `oauth_access_tokens` VALUES ('2b8eef7659dae56fe3622374ca1e718ab46b7643f1e5c0b36d69c4acda6d27a02f87ca8519e0b0dd', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 04:59:08', '2023-12-16 04:59:08', '2024-06-16 04:59:08');
INSERT INTO `oauth_access_tokens` VALUES ('30e25785f492969eff23b50285f1b9a616cc7bdc515d523182e26fba6674843acb619a6f2ed4de1e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:50:47', '2023-12-15 15:50:47', '2024-06-15 15:50:47');
INSERT INTO `oauth_access_tokens` VALUES ('31dae31906f4391a03977d466de08e6d04c19859bfec9021e6dd90687dee86ea17baaf6de4a14fb9', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-22 10:04:59', '2024-01-22 10:04:59', '2024-07-22 10:04:59');
INSERT INTO `oauth_access_tokens` VALUES ('32e2fd13813290682f9a59df458dcfa5b50f5b1c07e978329d0d15c858e6b61e35f79ba8a9e4eaf1', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:12:19', '2023-12-15 16:12:19', '2024-06-15 16:12:19');
INSERT INTO `oauth_access_tokens` VALUES ('3896000ff5d46cf14c397d918a17d1e2c574b945bc1cfc4382c68594a1c88156a9165618a2d62795', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-22 18:04:56', '2023-12-22 18:04:56', '2024-06-22 18:04:56');
INSERT INTO `oauth_access_tokens` VALUES ('3a116ca0a6a52bd23725ff08548e0bfd50af06876096b8a02287af2f5849153f1663c9440cd0aba5', 2, 1, 'Personal Access Token', '[]', 0, '2023-12-24 05:27:28', '2023-12-24 05:27:28', '2024-06-24 05:27:28');
INSERT INTO `oauth_access_tokens` VALUES ('40b1b130c17a936b55c38d77e59b7c830a6be66fe6bad858f7444bc3ca5c94f070508bd42d3c64b6', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-22 07:15:16', '2024-01-22 07:15:17', '2024-07-22 07:15:16');
INSERT INTO `oauth_access_tokens` VALUES ('41c07b1c278bf3cc494c1b7dfbb5178db5a2e6b05a39f567b6c8833dd30b1571fc0866cffc99f2fe', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:51:25', '2023-12-15 16:51:25', '2024-06-15 16:51:25');
INSERT INTO `oauth_access_tokens` VALUES ('429741596730f435dc942f7f49239b6e1b5f0340f2787de55df8e6c47f07ec6b273bb72c1a721797', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:38:37', '2023-12-15 16:38:37', '2024-06-15 16:38:37');
INSERT INTO `oauth_access_tokens` VALUES ('435577b4d64bcf3bd3fbcce9ee8967019030534266b8841977eb79665d41644b5d80b25d8ee6c96e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:47:25', '2023-12-15 15:47:25', '2024-06-15 15:47:25');
INSERT INTO `oauth_access_tokens` VALUES ('44fd5daf275eefd96d70f308a0ff377f746f8e9a731a5a2d1ab23c5ad3b91a3397411d3e0b747cbd', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:55:13', '2023-12-15 17:55:13', '2024-06-15 17:55:13');
INSERT INTO `oauth_access_tokens` VALUES ('4757f222bc84e2d25a022935b0e385babb48194d6e98b9e6f6a8bd831efc721186213369f9d25417', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 04:53:26', '2023-12-16 04:53:26', '2024-06-16 04:53:26');
INSERT INTO `oauth_access_tokens` VALUES ('4cf08a95f02c71269bcdbf6bc73563827d3ce3aea115110409677f82ba1123de764e758118ae6381', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:50:32', '2023-12-15 15:50:32', '2024-06-15 15:50:32');
INSERT INTO `oauth_access_tokens` VALUES ('4e4d4ece6c2e968d21776b6468e3579e956f12603e358b7344e947279e07dddee7677068bb266a2e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:50:31', '2023-12-15 15:50:31', '2024-06-15 15:50:31');
INSERT INTO `oauth_access_tokens` VALUES ('54effd042cf54966b9f5679a9c6ecb8529c13eefcf5018e2817631f3c41cfd951883265b33664786', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:50:32', '2023-12-15 15:50:32', '2024-06-15 15:50:32');
INSERT INTO `oauth_access_tokens` VALUES ('58387b4989f910127deb749e91a6554a8ff794d81808c74690816d6bf9b548f055c1ea873d1ab223', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 05:03:38', '2023-12-16 05:03:38', '2024-06-16 05:03:38');
INSERT INTO `oauth_access_tokens` VALUES ('586e7c9572fe6dc982cdc797d60ff1e0a4b96ff2d1bc2a2e0d1f28f9e9552473a7b2d58c9da382aa', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:41:55', '2023-12-15 16:41:55', '2024-06-15 16:41:55');
INSERT INTO `oauth_access_tokens` VALUES ('5e583d806d01e7e0838b986157ad3268417d1b0aaff650062955999ab74245d787984d85e8f1ba2a', 2, 1, 'Personal Access Token', '[]', 0, '2023-11-05 15:51:34', '2023-11-05 15:51:34', '2024-05-05 15:51:34');
INSERT INTO `oauth_access_tokens` VALUES ('5eebf3dd39a1ca9bb65759fa6825df5aeb5ccf0abb4fc9d6d641bf74bbe2d138027a981f5dec05fc', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-24 14:04:09', '2023-12-24 14:04:09', '2024-06-24 14:04:09');
INSERT INTO `oauth_access_tokens` VALUES ('5f6a59d16671b5cb7ec797afbe57679bf7d5741522301769c83aed07ed3b0c41bb18c4e3a6b3447c', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-17 08:34:41', '2023-12-17 08:34:41', '2024-06-17 08:34:41');
INSERT INTO `oauth_access_tokens` VALUES ('63629a1a88b75a5e1cd37ff4cbfbe0e99991fbda240d13d1eed947753499136c30b8cbad2170618f', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-24 05:30:23', '2023-12-24 05:30:23', '2024-06-24 05:30:23');
INSERT INTO `oauth_access_tokens` VALUES ('66bd314dcd040a4f62e91465ee617525c65b0fe15c7557f89b7d599212fb28d6a957090f78dc57dd', 11, 1, 'Personal Access Token', '[]', 0, '2024-01-22 10:51:24', '2024-01-22 10:51:24', '2024-07-22 10:51:24');
INSERT INTO `oauth_access_tokens` VALUES ('6726802b8afd3d0ed705d9654cfdf75d2ba287a91344a2fe578ed059b340acb1125ea1e2646b5de7', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:51:41', '2023-12-15 16:51:41', '2024-06-15 16:51:41');
INSERT INTO `oauth_access_tokens` VALUES ('6a45f539b4b6d928a6c4b1e7fd21e72cfe0b90cb9fa5ed1ec73fc79a5dbb38b49e3d266cb016ef5e', 4, 1, 'Personal Access Token', '[]', 0, '2023-10-18 14:21:42', '2023-10-18 14:21:42', '2024-04-18 14:21:42');
INSERT INTO `oauth_access_tokens` VALUES ('6d1c87274ab0f6314a2b07251182eb3dceb01f43d7c340c2aac067baf9ffa86fea40f339e2253412', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:43', '2023-12-15 15:49:43', '2024-06-15 15:49:43');
INSERT INTO `oauth_access_tokens` VALUES ('6f0cf223b607963b76c79527276dbe5cad537735b4d9c6a1121f75fb83de5510d23c8a4cf2e2edef', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 11:40:45', '2023-12-19 11:40:45', '2024-06-19 11:40:45');
INSERT INTO `oauth_access_tokens` VALUES ('728c6be4ec8f987df2625b8e5d91ea46755004b3600b2bb3cdcb922a3c17280d00b584ff9d34617f', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-24 14:22:13', '2023-12-24 14:22:13', '2024-06-24 14:22:13');
INSERT INTO `oauth_access_tokens` VALUES ('765c5abf2ec16336cc878d3c0b28f835ef36a354e1035623c976d40335e3b7a718c157b2e131ac32', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-14 03:09:45', '2024-01-14 03:09:46', '2024-07-14 03:09:45');
INSERT INTO `oauth_access_tokens` VALUES ('78151ca0df5101762e959b544f18c9952b4e256bc994f981254891f8c75abeb9efff10d3bbb4f2ef', 9, 1, 'Personal Access Token', '[]', 0, '2023-10-27 14:52:36', '2023-10-27 14:52:36', '2024-04-27 14:52:36');
INSERT INTO `oauth_access_tokens` VALUES ('787a2e98f685d270012ae664000b44d071996cc7e727d4840d5e9b4a280454bf709791a1d56043aa', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-24 14:20:44', '2023-12-24 14:20:44', '2024-06-24 14:20:44');
INSERT INTO `oauth_access_tokens` VALUES ('7f64e84593422f9b0bd78b78bfd2c390ed07bf8ad9f5826cd07f9b7f3cec9dea90dae7a8caee2cf5', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-17 06:30:08', '2023-12-17 06:30:08', '2024-06-17 06:30:08');
INSERT INTO `oauth_access_tokens` VALUES ('80f3836b49fcfc5ba732b3afd77f114821ddda6f586237e17e532a281abf46658f80945af94df6af', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:48', '2023-12-15 15:49:48', '2024-06-15 15:49:48');
INSERT INTO `oauth_access_tokens` VALUES ('8367dd35374003c53404283fb68c278687ac4a5586cebeb3b2c0c113b70abf0f7b8c485a928575f8', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-17 04:46:42', '2023-12-17 04:46:43', '2024-06-17 04:46:42');
INSERT INTO `oauth_access_tokens` VALUES ('86092b66e7fde69256379e97553e056020456c2769f24b5c4981a60309c1ec9eba9d60b73bdfd43e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 06:13:59', '2023-12-16 06:13:59', '2024-06-16 06:13:59');
INSERT INTO `oauth_access_tokens` VALUES ('870d92c41fcfaa32df87aae0522ea0d0387a8330986c232862d9ff207b591bcd79e5ea5cef912503', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:55:43', '2023-12-15 15:55:43', '2024-06-15 15:55:43');
INSERT INTO `oauth_access_tokens` VALUES ('8745eb3289ae3412d3c3a1d0ee6442619cf38dd962815dcab4c0349d1b70254f1d34a96bd9fd8386', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-20 08:49:02', '2023-12-20 08:49:02', '2024-06-20 08:49:02');
INSERT INTO `oauth_access_tokens` VALUES ('8e35bdad027303e4fd14d565a80a7d3eb45e57204d87b45fa316b60cfcc029e8c3504fe0975063c2', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:42', '2023-12-15 15:49:42', '2024-06-15 15:49:42');
INSERT INTO `oauth_access_tokens` VALUES ('8f61d5744bb7e95cb3ee723ac042290559f4934f9330c1181b2d93c675ea9bd7d33f351e84c05574', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-20 09:17:31', '2023-12-20 09:17:31', '2024-06-20 09:17:31');
INSERT INTO `oauth_access_tokens` VALUES ('8fee4a1b4996ea547c1353ba979adfefb2a5e69e0eea0a4bbe02c852b8eab125c7914e5ccd2f1868', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 04:46:31', '2023-12-16 04:46:31', '2024-06-16 04:46:31');
INSERT INTO `oauth_access_tokens` VALUES ('91f8061f861781c319e12b09a30b743bb7131895ca8fdd40ec2cc974f0c03834cd1740141dc3d207', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:51:01', '2023-12-15 15:51:01', '2024-06-15 15:51:01');
INSERT INTO `oauth_access_tokens` VALUES ('935d7b8767506182d0c0ad7db99dace9ac9ce80f1fce758a8a4c1fe52d9c2e3c550a95d30fb367e0', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:13:10', '2023-12-15 16:13:10', '2024-06-15 16:13:10');
INSERT INTO `oauth_access_tokens` VALUES ('9a830615cfebbf7dae094b57a541f78067848cad5f8241f994ee804025ea0e2aaf024680c889a501', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 04:45:12', '2023-12-16 04:45:13', '2024-06-16 04:45:12');
INSERT INTO `oauth_access_tokens` VALUES ('9ac7810c2c0a17cd51ce3ac51c5efd324c2222af556045ba00ab05df06bf34ea6bd89952dadd50c9', 11, 1, 'Personal Access Token', '[]', 0, '2024-01-22 10:50:23', '2024-01-22 10:50:23', '2024-07-22 10:50:23');
INSERT INTO `oauth_access_tokens` VALUES ('9ced2797b1493e42ffcfff95b839e2b4cc7a63622e4b594e3bc805628a7c37bb2f2f25475f153a88', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:48', '2023-12-15 15:49:48', '2024-06-15 15:49:48');
INSERT INTO `oauth_access_tokens` VALUES ('9f45ab2fb7ced8248bdc02376a2fa55def2abcd8489cdd19a700809099bba71242135fde3926bc0c', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-22 17:21:13', '2023-12-22 17:21:13', '2024-06-22 17:21:13');
INSERT INTO `oauth_access_tokens` VALUES ('9f9bcd4b7b530550f8ec4080bb9047781ef3f2ad82d5bf49800116069200b727dd42f5aac056daf1', 12, 1, 'Personal Access Token', '[]', 0, '2024-01-22 10:55:09', '2024-01-22 10:55:09', '2024-07-22 10:55:09');
INSERT INTO `oauth_access_tokens` VALUES ('9fa1ee23c250b2a35a2774d11d4c35969cc2d46485400c732e94f914e4db3710240770aadadb43c9', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 11:55:32', '2023-12-19 11:55:32', '2024-06-19 11:55:32');
INSERT INTO `oauth_access_tokens` VALUES ('a071299d13c70101c14ba541adf2a2d56beda1b27408e2c5f1b3cf76227737a8c096d73164e3eda8', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-22 11:17:33', '2024-01-22 11:17:33', '2024-07-22 11:17:33');
INSERT INTO `oauth_access_tokens` VALUES ('a51d69a85a0ff90a4472ee76286f5dc23cc522a34be3ed42cc4ff58f77c6a4fd270146361f2386a6', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 09:04:25', '2023-12-19 09:04:25', '2024-06-19 09:04:25');
INSERT INTO `oauth_access_tokens` VALUES ('acaac1fe889b7afa76b799090f65f7164893df01a900a56d8558dd4828a29c16d7870aabb1f27b6d', 10, 1, 'Personal Access Token', '[]', 0, '2023-11-04 09:16:20', '2023-11-04 09:16:20', '2024-05-04 09:16:20');
INSERT INTO `oauth_access_tokens` VALUES ('b080fa5dece102e71cd33387df7ce68ccb9c72c3b24a2f73cf447c0d86278c507a4ca4bede10ceee', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:50:56', '2023-12-15 17:50:56', '2024-06-15 17:50:56');
INSERT INTO `oauth_access_tokens` VALUES ('b28208ea0a04bec2de047669050836abaee4a47fdd2db91049c6c927b48a37a586d6c2fea351b3ba', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:57:29', '2023-12-15 15:57:29', '2024-06-15 15:57:29');
INSERT INTO `oauth_access_tokens` VALUES ('b2f948b366dab7d28050bc8d62a10e89a8112a98fc740bf6141ebe661d030a669c1ceed838aff8f9', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:08:33', '2023-12-15 16:08:33', '2024-06-15 16:08:33');
INSERT INTO `oauth_access_tokens` VALUES ('b31463f0cbfd2e4845105b6752ec2c7e12eaa997075b28c7a170ed8fc5c14f4ba8f04181947a22ac', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 11:10:26', '2023-12-19 11:10:26', '2024-06-19 11:10:26');
INSERT INTO `oauth_access_tokens` VALUES ('b3a3dc25c21d5322e63aba904156b4476398c1f9faf8994446dced8cf9c6c282ba96951ba9999f80', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:48', '2023-12-15 15:49:49', '2024-06-15 15:49:48');
INSERT INTO `oauth_access_tokens` VALUES ('b4550ae8360b622e694a479f5864f716469b0d9c4c7b637a8c627f575d574b3d5cca5683c34edf1c', 8, 1, 'Personal Access Token', '[]', 0, '2023-10-18 14:45:07', '2023-10-18 14:45:07', '2024-04-18 14:45:07');
INSERT INTO `oauth_access_tokens` VALUES ('bc731617041482c04f40eca876132aa35586e880e0ece0a8c59f6a8bcaea54014648fe63ef2f694e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:11:12', '2023-12-15 16:11:12', '2024-06-15 16:11:12');
INSERT INTO `oauth_access_tokens` VALUES ('bcc032ec37b6baa82161cf9b17760365da9744b0b1883db850ad4a637d75714a12a86bf23c056d69', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:50:16', '2023-12-15 15:50:16', '2024-06-15 15:50:16');
INSERT INTO `oauth_access_tokens` VALUES ('bd5029da01ddcd8d8143144eb3ada01fa35bbab505a7c393059f998a4273e55e3176e4a6e1d076fe', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:11:08', '2023-12-15 16:11:08', '2024-06-15 16:11:08');
INSERT INTO `oauth_access_tokens` VALUES ('bf736405df1268167a563b31d8807c522bba8a7d5e194cfd110c77c038585032ea85066de7a3b3bc', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-22 07:17:08', '2024-01-22 07:17:08', '2024-07-22 07:17:08');
INSERT INTO `oauth_access_tokens` VALUES ('c1919a495ea59a30c47c6215bc7a0d28c373770cc9d1c715ce6b8dcf5e871a531b41c1982e0ed977', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-23 05:03:03', '2023-12-23 05:03:03', '2024-06-23 05:03:03');
INSERT INTO `oauth_access_tokens` VALUES ('c77f31118343cdb57bff8cf8a40e91b63d0064abdc7e55470300297dd209bcedb1c9fbc9767cf953', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:47', '2023-12-15 15:49:47', '2024-06-15 15:49:47');
INSERT INTO `oauth_access_tokens` VALUES ('cb9d7783dccd8ddeed52fa78430c4bab17d3bf0f4f5fdd717c69f7e22081dd18d936962ee567b7be', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:29', '2023-12-15 15:49:29', '2024-06-15 15:49:29');
INSERT INTO `oauth_access_tokens` VALUES ('ce0f84397f913b265482eb2d57d004e72f5fa6280881fde5f12c01d0a25adc1549f88e5c4272a3bf', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 11:10:39', '2023-12-19 11:10:39', '2024-06-19 11:10:39');
INSERT INTO `oauth_access_tokens` VALUES ('d1481ffeed34b3efffa268292e75c294a7a16941552f204add5097d738f4308514454a7586bb11a8', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:57:24', '2023-12-15 15:57:24', '2024-06-15 15:57:24');
INSERT INTO `oauth_access_tokens` VALUES ('d291d29b4cc08a7cca82054816e1fdc7d4245c58f772c75bc613fa7d0565191034d342e494dfc02e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:55:47', '2023-12-15 15:55:47', '2024-06-15 15:55:47');
INSERT INTO `oauth_access_tokens` VALUES ('d2a2e7aa7d8eb0d634fd513fa961cf2941d812643f57d2c98de1b805df90e537c730b3859de83ba7', 3, 1, 'Personal Access Token', '[]', 0, '2024-01-22 10:56:55', '2024-01-22 10:56:55', '2024-07-22 10:56:55');
INSERT INTO `oauth_access_tokens` VALUES ('d3f06b04bc470a0a4b14e5599ef959d244cf80ad65eb3f4f9a5c3d159001a5a0a71cd3115cf769c1', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:50:34', '2023-12-15 16:50:34', '2024-06-15 16:50:34');
INSERT INTO `oauth_access_tokens` VALUES ('d9bd06664613cc58e7f9fa1da7497b1bbcf95ff6328c040b1ff71bb49fd087726c212b076435c3f5', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 05:21:35', '2023-12-16 05:21:35', '2024-06-16 05:21:35');
INSERT INTO `oauth_access_tokens` VALUES ('db5d25eb8861576f032110471e32ab435740ea76ee8b798e8e6ca3b0cac6d20beb0be04b6e498bcf', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 11:10:30', '2023-12-19 11:10:30', '2024-06-19 11:10:30');
INSERT INTO `oauth_access_tokens` VALUES ('dd991c5ce745c116ebc9229c3c62c46ec7a2c30a5703b420e595e87cc8588877c446ba11bdfad26e', 6, 1, 'Personal Access Token', '[]', 0, '2023-10-18 14:34:51', '2023-10-18 14:34:51', '2024-04-18 14:34:51');
INSERT INTO `oauth_access_tokens` VALUES ('dfbff86f870bf44d7129f5d270bc701cc4787196d1259e5d0f180b6832e219f6d14cada3b4e9e770', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-17 05:59:23', '2023-12-17 05:59:23', '2024-06-17 05:59:23');
INSERT INTO `oauth_access_tokens` VALUES ('e0da78c6046ba52e76acd5464631425a19a3b8933c89df94080f772e7ef8543b4a1aa17d2d7c110f', 5, 1, 'Personal Access Token', '[]', 0, '2023-10-18 14:32:05', '2023-10-18 14:32:05', '2024-04-18 14:32:05');
INSERT INTO `oauth_access_tokens` VALUES ('e0fee675179a0a63832cc98d6bc44e6050eddb947ed613afde52325a62bfeb850c53e01f670c5244', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:39:55', '2023-12-15 15:39:55', '2024-06-15 15:39:55');
INSERT INTO `oauth_access_tokens` VALUES ('e399989bbfea940b1cc8f1de316211cb703370e505d92a0e21fe504f04c367104f502be5e9af3f3c', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-22 10:09:36', '2024-01-22 10:09:36', '2024-07-22 10:09:36');
INSERT INTO `oauth_access_tokens` VALUES ('e401a51548cf8c61a78f1c982abca36ce1b5ac2cf5932c47f4ef0ffd832d62f61760ab4ec70a18b9', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:47', '2023-12-15 15:49:47', '2024-06-15 15:49:47');
INSERT INTO `oauth_access_tokens` VALUES ('e5a5e33a50734edff3edb0776aa66e7f2b10b6406fce716b12d5dea5e7dda61f5e4d797f83ce379d', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:35:55', '2023-12-15 17:35:55', '2024-06-15 17:35:55');
INSERT INTO `oauth_access_tokens` VALUES ('e5f2184e4b4b17ff88235923f0477be32ff1edc3d69f22fa0ebd3553107b88a565b8f70b3844d5c4', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-19 11:54:33', '2023-12-19 11:54:33', '2024-06-19 11:54:33');
INSERT INTO `oauth_access_tokens` VALUES ('e6f75e98cb9aea527d4f736f3aadfff3aed831975427f721d5c2d430ff6e6c0d5ffe688c1cd7425f', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:48', '2023-12-15 15:49:48', '2024-06-15 15:49:48');
INSERT INTO `oauth_access_tokens` VALUES ('e715e1fffa07314b568f0ac6f303b7991ee524fa525fef0911d4e36e9581e23616ff4732ab567ebb', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-17 16:46:22', '2024-01-17 16:46:22', '2024-07-17 16:46:22');
INSERT INTO `oauth_access_tokens` VALUES ('e7bae4a8c2ceab85ca7f709ade9cb271ec783a7c256d70d6041cd07a6e7d939d3d78c0130957695f', 9, 1, 'Personal Access Token', '[]', 0, '2023-10-27 14:52:06', '2023-10-27 14:52:06', '2024-04-27 14:52:06');
INSERT INTO `oauth_access_tokens` VALUES ('eb435fd77e8c8a778091f016f632b74ed4b9dce027b92b40dfc386e857ab2d9d68fa1e02f1641572', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 16:39:48', '2023-12-15 16:39:48', '2024-06-15 16:39:48');
INSERT INTO `oauth_access_tokens` VALUES ('ed710966b988ffb39c54004e990c0a2981041846e6ce0d5592ea9faf633d1d1d76458155a81797a2', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-22 08:14:28', '2024-01-22 08:14:28', '2024-07-22 08:14:28');
INSERT INTO `oauth_access_tokens` VALUES ('ef4c04ee4438ad30363e169f2ac69f7d8054581fd9dfa7ff86c57f2ac74be4d0b1569dddae50242c', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:53:09', '2023-12-15 17:53:09', '2024-06-15 17:53:09');
INSERT INTO `oauth_access_tokens` VALUES ('efd00f8fb7761f018c6a24365889c1cfc9e3017b5140cc978d3cbbec15ab2dbccd928f5f0b4852da', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:46:02', '2023-12-15 17:46:02', '2024-06-15 17:46:02');
INSERT INTO `oauth_access_tokens` VALUES ('f105fe1072ae04165a91f4d0e37427af9aeea2261a1f27c4f26439496ff9bc888370117e27119d64', 2, 1, 'Personal Access Token', '[]', 0, '2023-12-24 05:37:03', '2023-12-24 05:37:03', '2024-06-24 05:37:03');
INSERT INTO `oauth_access_tokens` VALUES ('f245d360470d9b7b20923d07fbfdc1cab8389284ef448797c1c3427f032db6ff124b9d994e5242fd', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:41:44', '2023-12-15 15:41:44', '2024-06-15 15:41:44');
INSERT INTO `oauth_access_tokens` VALUES ('f627bd2f4fb19bf4b1f1d395cf10d4ab3980a4d5469ee411a0970d877261eadd00908ec9badc3721', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:50:32', '2023-12-15 15:50:32', '2024-06-15 15:50:32');
INSERT INTO `oauth_access_tokens` VALUES ('f797dbcb9822379593fa477d492c8159265251aadb6373ab4e8983240a465ee6e47286c87d15f003', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 17:08:01', '2023-12-15 17:08:01', '2024-06-15 17:08:01');
INSERT INTO `oauth_access_tokens` VALUES ('faba7e2793de406608e12f7f62c66010611d0edba44bfebb988c499df60f329ccbf8d520e265b45e', 2, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:39:17', '2023-12-15 15:39:17', '2024-06-15 15:39:17');
INSERT INTO `oauth_access_tokens` VALUES ('fb0844da12dd6c5ff05923ac7aff33c41da3c19b7945714472e393d45495362f4f9992ee42e10c3e', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-15 15:49:41', '2023-12-15 15:49:41', '2024-06-15 15:49:41');
INSERT INTO `oauth_access_tokens` VALUES ('fcfeedbb5f7e47b612bc6cd96daa52fe60f242e7903c6b9b277d04c6ed371f27be2707d59b7b6e84', 1, 1, 'Personal Access Token', '[]', 0, '2024-01-17 15:01:05', '2024-01-17 15:01:05', '2024-07-17 15:01:05');
INSERT INTO `oauth_access_tokens` VALUES ('fd054f17d28aeba408c305aff0365146723c8a40f97658a08de08e9abeb573a903c871655147de45', 1, 1, 'Personal Access Token', '[]', 0, '2023-12-16 06:12:03', '2023-12-16 06:12:03', '2024-06-16 06:12:03');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'ZwxB8Uhsm3QbmbnpsaoFHCuQIVCx4DVJ2XPQzhuE', NULL, 'http://localhost', 1, 0, 0, '2023-10-06 17:25:44', '2023-10-06 17:25:44');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'bMpJjmiFcjkFP9padVBSQnR9GeAPgichSzgaCtm6', 'users', 'http://localhost', 0, 1, 0, '2023-10-06 17:25:44', '2023-10-06 17:25:44');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2023-10-06 17:25:44', '2023-10-06 17:25:44');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for option_values
-- ----------------------------
DROP TABLE IF EXISTS `option_values`;
CREATE TABLE `option_values`  (
  `value_id` int NOT NULL AUTO_INCREMENT,
  `option_id` int NULL DEFAULT NULL,
  `value_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`value_id`) USING BTREE,
  INDEX `option_id`(`option_id` ASC) USING BTREE,
  CONSTRAINT `option_values_ibfk_1` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of option_values
-- ----------------------------
INSERT INTO `option_values` VALUES (1, 1, 'Xám');
INSERT INTO `option_values` VALUES (2, 1, 'Bạc');
INSERT INTO `option_values` VALUES (3, 2, '8GB');
INSERT INTO `option_values` VALUES (4, 2, '16GB');
INSERT INTO `option_values` VALUES (5, 3, '512GB');
INSERT INTO `option_values` VALUES (6, 3, '1TB');
INSERT INTO `option_values` VALUES (7, 4, '13 inch');
INSERT INTO `option_values` VALUES (8, 4, '15 inch');

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `option_id` int NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`option_id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES (3, 'Dung lượng lưu trữ');
INSERT INTO `options` VALUES (2, 'Dung lượng RAM');
INSERT INTO `options` VALUES (4, 'Kích thước màn hình');
INSERT INTO `options` VALUES (1, 'Màu sắc');

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `shipping_id` bigint UNSIGNED NULL DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `discount` double NULL DEFAULT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_details_product_id_foreign`(`product_id` ASC) USING BTREE,
  INDEX `order_details_order_id_foreign`(`order_id` ASC) USING BTREE,
  INDEX `order_details_shipping_id_foreign`(`shipping_id` ASC) USING BTREE,
  CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_details_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (15, 21, 15, 1, 2, 1999, NULL, 3998);
INSERT INTO `order_details` VALUES (16, 22, 15, 1, 1, 2999, NULL, 2999);
INSERT INTO `order_details` VALUES (17, 51, 16, 1, 2, 790, NULL, 1580);
INSERT INTO `order_details` VALUES (18, 53, 16, 1, 1, 129, NULL, 129);
INSERT INTO `order_details` VALUES (19, 44, 17, 1, 1, 678907897, NULL, 678907897);
INSERT INTO `order_details` VALUES (21, 50, 19, 1, 1, 650, NULL, 650);
INSERT INTO `order_details` VALUES (22, 49, 19, 1, 3, 1450, NULL, 4350);
INSERT INTO `order_details` VALUES (23, 46, 19, 1, 1, 340, NULL, 340);
INSERT INTO `order_details` VALUES (24, 50, 20, 1, 1, 650, NULL, 650);
INSERT INTO `order_details` VALUES (25, 49, 20, 1, 3, 1450, NULL, 4350);
INSERT INTO `order_details` VALUES (26, 46, 20, 1, 1, 340, NULL, 340);
INSERT INTO `order_details` VALUES (27, 31, 20, 1, 1, 239, NULL, 239);
INSERT INTO `order_details` VALUES (28, 29, 21, 1, 2, 447, NULL, 894);
INSERT INTO `order_details` VALUES (29, 34, 21, 1, 1, 179, NULL, 179);
INSERT INTO `order_details` VALUES (30, 21, 21, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (31, 29, 22, 1, 2, 447, NULL, 894);
INSERT INTO `order_details` VALUES (32, 34, 22, 1, 1, 179, NULL, 179);
INSERT INTO `order_details` VALUES (33, 21, 22, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (40, 48, 25, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (41, 29, 25, 1, 1, 447, NULL, 447);
INSERT INTO `order_details` VALUES (42, 33, 25, 1, 1, 453, NULL, 453);
INSERT INTO `order_details` VALUES (43, 48, 26, 1, 13, 400, NULL, 5200);
INSERT INTO `order_details` VALUES (44, 48, 27, 1, 6, 400, NULL, 2400);
INSERT INTO `order_details` VALUES (45, 53, 28, 1, 20, 129, NULL, 2580);
INSERT INTO `order_details` VALUES (46, 21, 29, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (47, 22, 30, 1, 2, 210, NULL, 420);
INSERT INTO `order_details` VALUES (48, 52, 30, 1, 1, 1350, NULL, 1350);
INSERT INTO `order_details` VALUES (49, 26, 30, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (50, 24, 30, 1, 1, 975, NULL, 975);
INSERT INTO `order_details` VALUES (51, 23, 30, 1, 1, 567, NULL, 567);
INSERT INTO `order_details` VALUES (52, 22, 31, 1, 5, 210, NULL, 1050);
INSERT INTO `order_details` VALUES (53, 22, 32, 1, 5, 210, NULL, 1050);
INSERT INTO `order_details` VALUES (54, 22, 33, 1, 5, 210, NULL, 1050);
INSERT INTO `order_details` VALUES (55, 22, 34, 1, 5, 210, NULL, 1050);
INSERT INTO `order_details` VALUES (56, 22, 35, 1, 5, 210, NULL, 1050);
INSERT INTO `order_details` VALUES (57, 22, 36, 1, 5, 210, NULL, 1050);
INSERT INTO `order_details` VALUES (58, 22, 37, 1, 5, 210, NULL, 1050);
INSERT INTO `order_details` VALUES (59, 25, 38, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (60, 26, 38, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (61, 21, 39, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (62, 22, 39, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (63, 53, 39, 1, 1, 129, NULL, 129);
INSERT INTO `order_details` VALUES (64, 21, 40, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (65, 22, 40, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (66, 21, 41, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (67, 22, 41, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (68, 21, 42, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (69, 22, 42, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (70, 21, 43, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (71, 22, 43, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (72, 21, 44, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (73, 22, 44, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (74, 33, 44, 1, 1, 453, NULL, 453);
INSERT INTO `order_details` VALUES (75, 32, 44, 1, 1, 896, NULL, 896);
INSERT INTO `order_details` VALUES (76, 21, 45, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (77, 32, 45, 1, 1, 896, NULL, 896);
INSERT INTO `order_details` VALUES (78, 25, 46, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (79, 26, 46, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (80, 43, 46, 1, 1, 798006, NULL, 798006);
INSERT INTO `order_details` VALUES (81, 25, 47, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (82, 25, 48, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (83, 22, 48, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (84, 25, 49, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (85, 26, 49, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (86, 47, 50, 1, 1, 309, NULL, 309);
INSERT INTO `order_details` VALUES (87, 47, 51, 1, 1, 309, NULL, 309);
INSERT INTO `order_details` VALUES (88, 47, 52, 1, 1, 309, NULL, 309);
INSERT INTO `order_details` VALUES (89, 47, 53, 1, 1, 309, NULL, 309);
INSERT INTO `order_details` VALUES (90, 25, 54, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (91, 26, 54, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (92, 26, 55, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (93, 26, 56, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (94, 36, 57, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (95, 36, 58, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (96, 36, 59, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (97, 36, 60, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (98, 36, 61, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (99, 36, 62, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (100, 25, 63, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (101, 22, 64, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (102, 22, 65, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (103, 21, 66, 1, 1, 400, NULL, 400);
INSERT INTO `order_details` VALUES (104, 36, 67, 1, 3, 123, NULL, 369);
INSERT INTO `order_details` VALUES (105, 32, 68, 1, 1, 896, NULL, 896);
INSERT INTO `order_details` VALUES (106, 36, 69, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (107, 22, 70, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (110, 25, 73, 1, 1, 564, NULL, 564);
INSERT INTO `order_details` VALUES (111, 26, 73, 1, 1, 369, NULL, 369);
INSERT INTO `order_details` VALUES (112, 22, 74, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (113, 22, 75, 1, 1, 210, NULL, 210);
INSERT INTO `order_details` VALUES (114, 27, 76, 1, 1, 342, NULL, 342);
INSERT INTO `order_details` VALUES (115, 46, 77, 1, 1, 340, NULL, 340);
INSERT INTO `order_details` VALUES (116, 34, 77, 1, 1, 179, NULL, 179);
INSERT INTO `order_details` VALUES (117, 34, 78, 1, 1, 179, NULL, 179);
INSERT INTO `order_details` VALUES (118, 36, 79, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (119, 36, 80, 1, 1, 123, NULL, 123);
INSERT INTO `order_details` VALUES (120, 34, 81, 1, 1, 179, NULL, 179);
INSERT INTO `order_details` VALUES (121, 36, 81, 1, 1, 123, NULL, 123);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `firstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (15, 1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St, City, Country', 'This is a test order', 1, '2023-10-20 05:52:54', '2023-10-20 05:52:54');
INSERT INTO `orders` VALUES (16, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-10-20 06:20:06', '2023-10-20 06:20:06');
INSERT INTO `orders` VALUES (17, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-10-20 15:34:46', '2023-10-20 15:34:46');
INSERT INTO `orders` VALUES (19, 1, 'hi2dqqwd', 'adminưqd', 'vuvandinh203@gmail.com', '12313', 'dqwqdưqdwd', NULL, 1, '2023-10-20 15:37:18', '2023-10-20 15:37:18');
INSERT INTO `orders` VALUES (20, 2, 'Nguyễn', 'Dương', 'hjdinh@gmail.com', '+84972208951', 'Xã Hà Đông', NULL, 1, '2023-10-20 16:39:28', '2023-10-20 16:39:28');
INSERT INTO `orders` VALUES (21, 2, 'vu van', 'dinh', 'hjdinh@gmail.com', '123', 'qưdqwwqd', NULL, 1, '2023-10-22 01:22:23', '2023-10-22 01:22:23');
INSERT INTO `orders` VALUES (22, 2, 'vu van23', 'dinh123', 'hjdinh@gmail.com', '123', '2eqwdqwd', NULL, 1, '2023-10-22 01:23:37', '2023-10-22 01:23:37');
INSERT INTO `orders` VALUES (25, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-03 05:52:04', '2023-11-03 05:52:04');
INSERT INTO `orders` VALUES (26, 1, 'hi', 'test123', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-04 09:02:53', '2023-11-04 09:02:53');
INSERT INTO `orders` VALUES (27, 10, 'Nguyễn', 'Dương', 'test@gmail.com', '23456789', '234567890', NULL, 1, '2023-11-04 09:17:10', '2023-11-04 09:17:10');
INSERT INTO `orders` VALUES (28, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-04 16:37:01', '2023-11-04 16:37:01');
INSERT INTO `orders` VALUES (29, 1, 'chó', 'láo', 'matdai@gmail.com', '19001000', 'nhà mặc phố, bố làm to, tao đây không ngán một ai', NULL, 1, '2023-11-04 16:43:37', '2023-11-04 16:43:37');
INSERT INTO `orders` VALUES (30, 1, 'vũ', 'định', 'vuvandinh203@gmail.com', '0333583800', 'ho chi minh', NULL, 1, '2023-11-05 11:11:05', '2023-11-05 11:11:05');
INSERT INTO `orders` VALUES (31, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-05 18:31:37', '2023-11-05 18:31:37');
INSERT INTO `orders` VALUES (32, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-05 18:33:46', '2023-11-05 18:33:46');
INSERT INTO `orders` VALUES (33, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-05 18:34:31', '2023-11-05 18:34:31');
INSERT INTO `orders` VALUES (34, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-05 18:34:34', '2023-11-05 18:34:34');
INSERT INTO `orders` VALUES (35, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-05 18:34:35', '2023-11-05 18:34:35');
INSERT INTO `orders` VALUES (36, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-05 18:34:36', '2023-11-05 18:34:36');
INSERT INTO `orders` VALUES (37, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', NULL, 1, '2023-11-05 18:34:53', '2023-11-05 18:34:53');
INSERT INTO `orders` VALUES (38, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'da pal', '', 1, '2023-12-22 17:22:47', '2023-12-22 17:22:47');
INSERT INTO `orders` VALUES (39, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'da pal', '', 1, '2023-12-22 17:24:52', '2023-12-22 17:24:52');
INSERT INTO `orders` VALUES (40, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'da pal', '', 1, '2023-12-22 17:44:50', '2023-12-22 17:44:50');
INSERT INTO `orders` VALUES (41, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'da pal', '', 1, '2023-12-22 17:45:40', '2023-12-22 17:45:40');
INSERT INTO `orders` VALUES (42, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'da pal', '', 1, '2023-12-22 17:47:06', '2023-12-22 17:47:06');
INSERT INTO `orders` VALUES (43, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'da pal', '', 1, '2023-12-22 17:48:21', '2023-12-22 17:48:21');
INSERT INTO `orders` VALUES (44, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'da pal', '', 1, '2023-12-22 17:54:54', '2023-12-22 17:54:54');
INSERT INTO `orders` VALUES (45, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '456', 'Ggg Gg', '', 1, '2023-12-22 17:58:33', '2023-12-22 17:58:33');
INSERT INTO `orders` VALUES (46, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 05:04:42', '2023-12-23 05:04:42');
INSERT INTO `orders` VALUES (47, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 05:49:15', '2023-12-23 05:49:15');
INSERT INTO `orders` VALUES (48, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 05:55:02', '2023-12-23 05:55:02');
INSERT INTO `orders` VALUES (49, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 06:59:15', '2023-12-23 06:59:15');
INSERT INTO `orders` VALUES (50, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 07:01:06', '2023-12-23 07:01:06');
INSERT INTO `orders` VALUES (51, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 07:02:35', '2023-12-23 07:02:35');
INSERT INTO `orders` VALUES (52, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 07:09:12', '2023-12-23 07:09:12');
INSERT INTO `orders` VALUES (53, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-23 07:10:52', '2023-12-23 07:10:52');
INSERT INTO `orders` VALUES (54, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 15:51:20', '2023-12-23 15:51:20');
INSERT INTO `orders` VALUES (55, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 15:53:51', '2023-12-23 15:53:51');
INSERT INTO `orders` VALUES (56, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 15:58:15', '2023-12-23 15:58:15');
INSERT INTO `orders` VALUES (57, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 16:00:39', '2023-12-23 16:00:39');
INSERT INTO `orders` VALUES (58, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 16:06:56', '2023-12-23 16:06:56');
INSERT INTO `orders` VALUES (59, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 16:09:45', '2023-12-23 16:09:45');
INSERT INTO `orders` VALUES (60, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 16:17:40', '2023-12-23 16:17:40');
INSERT INTO `orders` VALUES (61, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 16:21:59', '2023-12-23 16:21:59');
INSERT INTO `orders` VALUES (62, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-23 16:24:18', '2023-12-23 16:24:18');
INSERT INTO `orders` VALUES (63, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-24 05:05:27', '2023-12-24 05:05:27');
INSERT INTO `orders` VALUES (64, 2, 'vu van', 'dinh', 'vudinh.01633583800@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-24 05:29:14', '2023-12-24 05:29:14');
INSERT INTO `orders` VALUES (65, 2, 'vu van', 'dinh', 'vudinh.01633583800@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-24 05:39:14', '2023-12-24 05:39:14');
INSERT INTO `orders` VALUES (66, 2, 'vu van', 'dinh', 'vudinh.01633583800@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-24 05:41:48', '2023-12-24 05:41:48');
INSERT INTO `orders` VALUES (67, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-24 14:23:47', '2023-12-24 14:23:47');
INSERT INTO `orders` VALUES (68, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2023-12-25 12:10:36', '2023-12-25 12:10:36');
INSERT INTO `orders` VALUES (69, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-25 13:08:20', '2023-12-25 13:08:20');
INSERT INTO `orders` VALUES (70, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2023-12-25 13:11:15', '2023-12-25 13:11:15');
INSERT INTO `orders` VALUES (71, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', '', 1, '2024-01-17 15:01:17', '2024-01-17 15:01:17');
INSERT INTO `orders` VALUES (72, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '12313', 'dqwqd', '', 1, '2024-01-17 15:01:30', '2024-01-17 15:01:30');
INSERT INTO `orders` VALUES (73, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2024-01-22 07:36:49', '2024-01-22 07:36:49');
INSERT INTO `orders` VALUES (74, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2024-01-22 07:55:31', '2024-01-22 07:55:31');
INSERT INTO `orders` VALUES (75, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2024-01-22 08:03:25', '2024-01-22 08:03:25');
INSERT INTO `orders` VALUES (76, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2024-01-22 08:09:15', '2024-01-22 08:09:15');
INSERT INTO `orders` VALUES (77, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2024-01-22 08:11:42', '2024-01-22 08:11:42');
INSERT INTO `orders` VALUES (78, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2024-01-22 10:05:49', '2024-01-22 10:05:49');
INSERT INTO `orders` VALUES (79, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2024-01-22 10:07:20', '2024-01-22 10:07:20');
INSERT INTO `orders` VALUES (80, 3, 'vu van', 'dinh', 'vudinh@gmail.com', '0979164975', '209 Phường Tăng Nhơn Phú Phước Long B Quận 9 Thành phố Thủ Đức', '', 1, '2024-01-22 10:58:43', '2024-01-22 10:58:43');
INSERT INTO `orders` VALUES (81, 1, 'hi', 'admin', 'vuvandinh203@gmail.com', '0333583800', 'Thôn Xuân Thới Thượng Xã Đạ Pal Huyện Đạ Tẻh  Tỉnh lâm đồng', '', 1, '2024-01-22 11:18:26', '2024-01-22 11:18:26');

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
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\User', 1, 'MyApp', '11f4b39699f6ddd8c9f439d05b8d42a8dbf186220cee0b7f056161041886d1d9', '[\"*\"]', NULL, NULL, '2023-10-06 16:59:28', '2023-10-06 16:59:28');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'MyApp', '58c8e6224f6ffd198f6592201d3bf6aaf25a268c4e4c40b3d481f092db277ce0', '[\"*\"]', NULL, NULL, '2023-10-06 17:03:25', '2023-10-06 17:03:25');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 1, 'MyApp', 'c99b7f600be16ea5515fc87e40cf2db0f9cff0374a05db926c8fbfa841a455a9', '[\"*\"]', NULL, NULL, '2023-10-06 17:03:32', '2023-10-06 17:03:32');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 1, 'MyApp', 'd9a29f582b4aca05e717da57f509e7e2ff1c5c78f1c67beea31645fab21388b4', '[\"*\"]', NULL, NULL, '2023-10-06 17:03:36', '2023-10-06 17:03:36');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 1, 'MyApp', '6b0761fb19b7ae0c55aed1d7fc62512e236708dd160bdf02620007bcb584833d', '[\"*\"]', NULL, NULL, '2023-10-06 17:18:19', '2023-10-06 17:18:19');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'MyApp', 'cc05db53513e2a1d78e1a4fdfd7e870f49bf23fdf08f48e8a63354d42e564e7c', '[\"*\"]', NULL, NULL, '2023-10-06 17:18:20', '2023-10-06 17:18:20');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 1, 'MyApp', '55997bf467f1a1227472499ad18d1d3c1fcc968473574acf65c3026bfa3433b5', '[\"*\"]', NULL, NULL, '2023-10-06 17:18:36', '2023-10-06 17:18:36');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 1, 'MyApp', '8faa25acae6a8636d0de4854d5578da483724f1031e7e21c817a9fb2623e39ac', '[\"*\"]', NULL, NULL, '2023-10-06 17:18:39', '2023-10-06 17:18:39');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `compact` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int UNSIGNED NULL DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posts_topic_id_foreign`(`topic_id` ASC) USING BTREE,
  CONSTRAINT `posts_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (3, 'How to quickly download and install applications on iPhone without the App Store', 2, '', 'viewsonic-td1655-5.jpg.webp', 'Although, Apple has designed the App Store system to help \"Apple Fans\" download applications as they like. However, in some special cases users will want to download the app outside the system. So is there any way? It\'s good that you read this article. Because Hoang Ha Mobile will guide you on how to download applications on iPhone extremely safely and quickly.', 'Although, Apple has designed the App Store system to help \"Apple Fans\" download applications as they like. However, in some special cases users will want to download the app outside the system. So is there any way? It\'s good that you read this article. Because Hoang Ha Mobile will guide you on how to download applications on iPhone extremely safely and quickly.\r\n\r\nWhat is the App Store?\r\nThe App Store is a digital distribution service for applications and games for Apple mobile devices and computers. It will include iPhone, iPad, Macbook, Apple Watch and Apple TV. This will be where users can download and install applications, games, software and other content to use on their devices.\r\n\r\nAccordingly, the App Store is managed and operated by Apple Inc. In this store there are thousands of different applications and games. In particular, the apps are classified and ranked according to different categories. For example, you can easily find apps for social applications, entertainment, work, education and many other forms.\r\n\r\nhow-to-use-on-iphone-1\r\n\r\nMore specifically, the App Store also provides opportunities for developers to distribute products through this platform. If you have great ideas for online applications, you can build them. And link with the App Store to be known and used by many people.\r\n\r\nTo download apps or games from the App Store, users typically need to create an Apple ID account and connect to a payment facility. You can then browse through the store, searching for the app you want to download. However, these operations are sometimes quite cumbersome for some people. Instead, take a few minutes to read this article to learn how to download applications on iPhone without going to the App Store.\r\n\r\nIn cases where downloading applications on iPhone does not require the App Store\r\nIn fact, there are many cases where users choose to download apps on iPhone via another method, instead of using the App Store. More specifically, we will have 2 main reasons below. However, these reasons are for reference only. Because each person will have their own needs and purposes when using their device.\r\n\r\nDownload paid apps for free\r\nUploading apps directly to iPhone without using the App Store mainly involves jailbreaking the device. For those of you who don\'t know, Jailbreak is the process of removing Apple constraints on iOS devices. From there, it allows users to install applications without going through the \"Apple\" store. \r\n\r\nhow-to-use-on-iphone-2\r\n\r\nOr in other words, for people who love mobile games but don\'t want to pay extra on the App Store. Then they can take advantage of some other platforms to download games and experience them. For example, they can use Cydia software to download paid applications without spending any money. In case you see Cydia charging a fee, this price is much softer than the price listed on Apple\'s app store. \r\n\r\nHowever, jailbreaking the device can easily lead to many unexpected consequences. The most special thing is the security and information safety factor for users. If you accidentally download malware, there is a high possibility that your data will be stolen.\r\n\r\nReplace default iPhone applications\r\nAnother case where many users find ways to download applications on iPhone without using the App Store. That is, they want to replace the available, default apps on their devices. When we buy a new genuine iPhone, it has some background applications installed by default. Therefore, even though you do not need to use them, you cannot delete them.\r\n\r\nhow-to-use-on-iphone-3\r\n\r\nSo the best way is to replace these applications with other apps that have more outstanding features. By downloading software from outside another system to your phone device. And of course, users should also carefully evaluate each application before downloading, including whether it is in the App Store or not. The best way is to read other people\'s reviews first. Because, you cannot predict how unofficial applications will work. Nor do we know how they operate and use our information.\r\n\r\nShould I download apps on iPhone without the App Store?\r\nInstalling iPhone apps without going through the App Store can bring a number of benefits, as well as various risks. Before going to instructions on how to download the application, users need to read this information. Depending on your needs, make the wisest decision. And to become a smart iPhone user, you should not ignore the important information below.\r\n\r\nBenefits of downloading applications without the App Store\r\nWe all know that the iOS operating system is developed with a lot of unique software. And only iOS users can use them. As for software outside of this operating system, it cannot be downloaded or installed on the device. Therefore, if you want to discover more new apps, you can practice how to download applications on iPhone without the App Store.\r\n\r\nhow-to-use-on-iphone-4\r\n\r\nIn particular, developers can share test or beta apps with users outside the App Store. Let these applications run demo before integrating into the system. And if you are a technology lover and know what \"seed\" projects are like, you can try it out. Then, provide feedback to the provider so they can develop the app better.\r\n\r\nAdditionally, by installing apps from external sources, you can customize your iPhone in ways that Apple does not allow. This may include installing native apps or changing the interface.\r\n\r\nRisks of downloading applications without the App Store\r\nBesides some of the benefits we just saw above, users need to be aware of the additional risks you will encounter. For applications from unreliable sources, you cannot 100% accurately verify its safety. Instead, Apple has a technical team dedicated to surveying and evaluating applications before integrating it into the platform. Just as Apple does not encourage its users to use unorthodox ways to download applications on iPhone without an Apple ID . From there, helping App Store users limit many disadvantages related to technology security issues.\r\n\r\nhow-to-use-on-iphone-5\r\n\r\nAt the same time, applications that are not tested and approved can cause unexpected problems for the device. Or there are many cases where the user\'s iPhone will lose performance quickly after downloading external applications. Therefore, please review and study the applications carefully.\r\n\r\nAbove all, you need to know that Apple does not provide support for applications installed from untrusted sources. Therefore, if you face any problem with these applications. Then you will be responsible for your own actions.\r\n\r\nHow to safely download applications on iPhone without App Store\r\nAlthough downloading external applications will have some significant disadvantages. However, with this iPhone tip, Hoang Ha Mobile only guides you on how to download applications without accessing the App Store using the official method. So users can rest assured to do it safely. At the same time, users do not need to access any untrusted sources. Instead, you will take advantage of the iPhone\'s features directly.\r\n\r\nStep 1: First, at the main screen interface of the \"phone\", users should swipe the screen from top to bottom. You will then see Apple\'s \"Search\" and \"Siri Suggestions\" functions. In the search box, enter the keyword of the application you want to download.\r\n\r\nhow-to-use-on-iphone-6\r\n\r\nStep 2: Next, the user will click the download button as shown in the image. Then, you wait until the download button becomes the \"Open\" button and you have successfully downloaded the application on iPhone .\r\n\r\nhow-to-use-on-iphone-7\r\n\r\nDownloading this application is done extremely simply. In just two steps, you can directly access applications on Apple without going to the App Store. However, this method only applies to some operating systems before iOS 16.\r\n\r\nhow-to-use-on-iphone-8\r\n\r\nAnd if you are using iOS 16 or higher, the search bar will be right on the main interface. Therefore, you can also click on the search button and perform the same operation as instructed above.\r\n\r\nHow to quickly download applications on iPhone without Apple ID\r\nNext, Hoang Ha Mobile will expand knowledge so that users know more useful tips on how to download iPhone applications. Specifically, you do not need to use an Apple ID but can still download the app quickly to your phone. \r\n\r\nStep 1: First, users should access the \"Settings\" category on the phone. Then, select the \"Apple ID\" section and add the \"Media & Purchases\" section.\r\n\r\nhow-to-use-on-iphone-9\r\n\r\nStep 2: A tool panel appears, users should select the \"Set password\" button. Then, in the \"Free Download\" section, turn off the password request function. Finally, click the \"Done\" button and the operation will be saved.\r\n\r\nhow-to-use-on-iphone-10\r\n\r\nNote: This method only applies to applications downloaded for free on Apple systems. As for paid applications, you must choose one of two options: always ask for a password or ask after 15 minutes.\r\n\r\nConclude\r\nThus, Hoang Ha Mobile has shared with you quick instructions on how to download applications on iPhone without needing Apple. Hopefully, users can apply in a safe way. In particular, we do not encourage you to download outside applications because all decisions are up to you.', 1, NULL, 1, '2023-10-14 08:41:28', '2023-10-14 08:41:28', 'post');
INSERT INTO `posts` VALUES (4, 'Compare Xiaomi 13T and 12T: Reasons to immediately choose Xiaomi\'s latest masterpiece', 2, 'hello', 'maxresdefault-1.jpeg.webp', 'Following the success of Xiaomi 12T, the Chinese technology giant continues to launch a new generation of products, Xiaomi 13T. With a more impressive configuration, design and outstanding improvements, Xiaomi 13T has become an extremely hot product. If you are wondering whether or not you should upgrade to Xiaomi\'s latest generation, this article will answer your questions.', 'Compare Xiaomi 13T and 12T: Should you upgrade to Xiaomi\'s latest version?\r\nDesign\r\nDesign is the first factor to see the difference between Xiaomi 13T and 12T. If Xiaomi 13T has a glossy glass back, Xiaomi 12T has a matte glass back version.\r\n\r\nIt is known that the glass back of the 13T has a thickness of 8.62 mm and weighs only 193g. The glass back version of the phone when used has encountered a lot of fingerprints, so if you want your phone to always be clean and beautiful, you will probably have to clean it regularly. In addition, the phone also has a frame made from durable metal and gently curved corners, providing a light, comfortable feeling every time you hold it.\r\n\r\nxiaomi-13t-and-12t-1\r\nXiaomi 13T design\r\n \r\n\r\nAs for Xiaomi 12T, the phone only has one matte glass version with a thickness of 8.1 mm and a weight of 202g. Thanks to the rough glass material, the 12T does not get fingerprints or sweat on the surface. Therefore, the phone is always clean, beautiful and luxurious even after being used for a long time.\r\n\r\nxiaomi-13t-and-12t-2\r\nDesign of 12T\r\nAnother difference in the design of the 13T and 12T is the camera cluster. In the 13T, the phone is equipped with a squarer, thicker and more aggressive rear camera cluster compared to the thin and light rectangular design of the 12T. The camera design of 13T gives us a much stronger feeling. As for 12T, it is a bit gentle and soft.\r\n\r\nAbility to work on Xiaomi 13T and 12T\r\nPerformance\r\nPerformance is definitely the comparison factor that many users are most interested in on the 13T and 12T. Accordingly, both phones are equipped with MediaTek\'s Dimensity processor. The 13T phone possesses power from the Dimensity 8200 Ultra chip, while the 12T owns the Dimensity 8100 Ultra chip, the predecessor of the 8200 Ultra.\r\n\r\nIn terms of structure, Dimensity 8200 Ultra is developed based on the 4nm process with 4 Cortex A78 cores for outstanding performance and 4 Cortex A55 cores to help save energy. Thanks to these equipment, the Dimensity 8200 Ultra chip scored quite high in performance tests. At the same time, it brings users a smooth experience, without any lag when users play high-configuration games.\r\n\r\nxiaomi-13t-and-12t-3\r\n13T possesses powerful performance\r\nAs for the Dimensity 8100 Ultra chip on 12T, it is manufactured based on the modern 5nm process. Besides, it possesses a configuration with 4 Cortex A78 cores and 4 Cortex A55 cores. With this configuration, it is clear that the 8100 Ultra will be slightly inferior to its 8200 Ultra brother. When comparing scores in tests, Xiaomi 12T also scored lower than 13T. However, the phone still ensures good performance in tasks from basic to advanced, while entertaining and playing games smoothly.\r\n\r\nxiaomi-13t-and-12t-4\r\n12T can still fully meet the necessary needs\r\nMemory\r\nXiaomi 13T launched with 2 RAM options 8GB and 12GB, accompanied by 256GB internal memory, allowing users to comfortably store data as well as smooth touch operations on the phone. Although released first, the 12T is no less competitive when it comes to 8GB RAM and internal memory options including 128GB and 256GB. With this option, users can choose a capacity that suits their needs\r\n\r\nxiaomi-13t-and-12t-5\r\nBoth phones have outstanding memory\r\nOverall, in terms of performance and memory, the 13T has slightly better parameters than the 12T. But both still possess quite good and smooth performance, capable of providing perfect experiences for users.\r\n\r\nDisplay screen of Xiaomi 13T and 12T\r\nIn terms of display capabilities, the 13T completely outperforms its brother by offering a series of extremely impressive parameters. Specifically, the spacious 6.67-inch AMOLED screen comes with a resolution of up to 1.5K and a pixel density of 446 ppi, producing outstandingly sharp images. The 13T\'s screen-to-body ratio is 87.5%, 0.8% higher than the 12T\'s 86.7% screen ratio.\r\n\r\nphone-6\r\n13T also has an extremely smooth and stable 144Hz refresh rate\r\nBesides, the 13T also has an extremely smooth and stable 144Hz refresh rate, far exceeding the 120Hz on the 12T. Users can also use the phone outdoors more comfortably with a brightness of up to 2600 nits, far exceeding the 900 nits of its predecessor.\r\n\r\nQuality cameras\r\nIn the new generation, Xiaomi has cooperated with famous camera brand, Leica, to bring a 50MP main camera with integrated OIS anti-shake technology. Although the resolution on the 13T is only 8192×6144 px, lower than the 12032×9204 resolution of the 12T, the new generation phone possesses 2x optical zoom capability and a 50MP telephoto lens, large aperture. degrees f/1.9.\r\n\r\nphone-7\r\nThe new generation phone possesses 2x optical zoom capability and a 50MP telephoto lens\r\n \r\n\r\nIn general, the cameras on Xiaomi 13T and 12T both possess different outstanding parameters and the common point of both is that they can bring quality photos to users.\r\n\r\nphone-8\r\nThe cameras on Xiaomi 13T and 12T both possess different outstanding parameters\r\nCharging capacity and battery on Xiaomi 13T and 12T\r\nUntil now, there are still many questions about the fact that Xiaomi only supports 67W fast charging on the 13T, while the 12T has fast charging up to 120W. With a 5000 mAh battery, the 13T takes 42 minutes to fully charge, while the 12T only needs 19 minutes.\r\n\r\nxiaomi-13t-and-12t-9\r\n13T has lower charging support than 12T\r\nBesides, the 12T also provides longer web surfing and video viewing times with the time for these two tasks being 11 hours 33 minutes and 13 hours 36 minutes respectively. For the same task, the 13T only provided 9 hours and 27 minutes of web surfing and 13 hours and 26 minutes of watching videos. However, the Xiaomi 13T delivers 5 hours and 26 minutes of continuous gaming, 26 minutes faster than the 12T.\r\n\r\nxiaomi-13t-and-12t-10\r\n12T supports faster charging\r\nConclusion\r\nThrough the above comparisons, it can be seen that Xiaomi 13T has strong upgrades in performance, screen and design compared to 12T. Only the charging speed is downgraded compared to its predecessor. However, the 13T is still a phone worth upgrading and experiencing.\r\n\r\nSee more  Xiaomi 14 may launch on October 27, what\'s worth waiting for?\r\n\r\nDon\'t miss the latest videos of Hoang Ha Channel !', 1, NULL, 1, '2023-10-19 22:19:38', NULL, 'post');
INSERT INTO `posts` VALUES (5, 'Leaked information of Realme GT5 Pro', 2, 'hello2', 'Realme-GT5-Pro.jpg.webp', 'When it comes to smartphone brands, Realme is always at the top when it comes to pushing its products beyond the limits of a regular phone. Realme GT5 Pro will certainly not be an exception. This phone is a \"big brother\" in the GT5 series that is expected to be launched in the coming weeks. Recently, in a Weibo post by Digital Chat Station (a famous technology tipster), this account gave people many interesting insights into what this phone promises to possess when released. releasing already.', 'When it comes to smartphone brands, Realme is always at the top when it comes to pushing its products beyond the limits of a regular phone. Realme GT5 Pro will certainly not be an exception. This phone is a \"big brother\" in the GT5 series that is expected to be launched in the coming weeks. Recently, in a Weibo post by Digital Chat Station (a famous technology tipster), this account gave people many interesting insights into what this phone promises to possess when released. releasing already.\r\n\r\nSo what notable features will Realme GT5 Pro possess? Does it deserve to be one of Realme\'s most impressive phones in the segment? Let\'s find out with Hoang Ha Mobile in the article below.\r\n\r\nWhat does Realme GT5 Pro have?\r\nAccording to leaked information, Realme GT5 Pro will have an extremely beautiful design and can captivate users right from the first meeting.\r\n\r\nCamera\r\nThe back of this phone will be equipped with a large circular module in the center. Inside it will be the cameras and LED flash. This design will create more attraction for users when it comes with a back made of artificial leather. Therefore, many users think that this will be a phone that is not only strong in performance but also highly aesthetic.\r\n\r\nRealme-GT5-Pro-3\r\n\r\nOne of the most notable points on Realme GT5 Pro is the camera system. Specifically, this phone will be equipped with a completely new Sony IMX966 OIS sensor that allows users to take photos with outstanding quality. To further enhance the user\'s photography experience, Realme also equips the GT5 Pro with OmniVision\'s OV64B OIS 3X telephoto lens. This combination will make many phone photography enthusiasts happy.\r\n\r\nPerformance\r\nBesides impressive photography capabilities, Realme GT5 Pro also boasts a configuration that delivers top performance. In particular, this phone will possess a new curved screen from BOE with a resolution of up to 2K extremely sharp. Thanks to that, GT5 Pro can bring users vivid audio-visual experiences.\r\n\r\nRealme-GT5-Pro-2\r\n\r\nThe \"heart\" of Realme GT5 Pro will be the Snapdragon 8 Gen 3 chipset - the latest chip from Qualcomm that was recently launched. Surely, with this chip, GT5 Pro will give users fast and effective performance whether studying, working or entertaining.\r\n\r\nOther notable parameters of Realme GT5 Pro\r\nPowering this phone will be a pretty huge battery with a capacity of up to 5,400 mAh that supports 100W wired fast charging and 50W wireless charging. Thanks to that, you can use this phone for a long day and fully charge it quickly without having to worry too much about this.\r\n\r\nRealme-GT5-Pro-1\r\n\r\nWith a central frame made of metal and a VC 10,000 cooling system; Realme ensures that the GT5 Pro maintains a stable temperature over long periods of use. Therefore, users absolutely do not need to worry about this phone overheating when in use.\r\n\r\nRefer to other articles on the same topic:', 1, NULL, 1, '2023-10-19 22:25:14', NULL, 'post');
INSERT INTO `posts` VALUES (6, 'The Galaxy S24 Ultra camera will still retain 100x digital zoom even though the periscope lens has been downgraded', 2, 'sa', 'Galaxy-S23-Ultra-in-green-1.jpeg.webp', 'According to Ice Universe last month, Samsung will downgrade the 10x optical zoom capability on the Galaxy S24 Ultra camera and replace it with 5x optical zoom. This rumor has made many users think that the 100x digital zoom capability will also suffer the same \"fate\". But according to consultant RGcloudS (via Wccftech), although the Galaxy S24 Ultra downgrades the optical zoom, the 100x digital zoom capability will still be retained.', '100x technical zoom will still appear on Galaxy S24 Ultra\r\nSurely many readers are wondering why Samsung switched from 10x optical zoom to 5x for the periscope lens on the Galaxy S24 Ultra camera. And it\'s not just you who has this question, many international users also ask the same question.\r\n\r\nWith the above questions, Jon McCormack, Vice President of Camera Software Engineering from Apple, replaced Samsung and gave the answer: \"You may remember in an article we  wrote about the Tetraprism lens on iPhone 15 Pro Max , we noted that the phone only has 5x optical zoom due to the inability to stabilize the camera at 10x optical zoom.” He also added: “If you use a 10x zoom, you have to hold your hand very steady or have a tripod, otherwise it\'s really difficult to use.”\r\n\r\ncamera-galaxy-s24-ultra-1\r\n100x technical zoom will still appear on Galaxy S24 Ultra\r\nWith the above explanation, it can be understood that removing the 10x optical zoom on the  Galaxy S24 Ultra camera will be able to give users greater stability. Thanks to the use of software tricks, the Galaxy S24 Ultra camera can still provide 100x technical zoom even though the periscope lens has been replaced with 5x optical zoom instead of 10x optical zoom. This means that the digital side of the equation will have to carry more of the heavy lifting in order for the camera to reach 100x digital zoom.\r\n\r\nThe Galaxy S24 Ultra camera will have a 200MP main sensor\r\nThe fact that the camera on the S24 Ultra can still provide 100x digital zoom even with the new camera configuration is not too surprising. As tipster @RGcloudS posted on time. Again, much depends on the software used on the phone.\r\n\r\ncamera-galaxy-s24-ultra-2\r\nThe Galaxy S24 Ultra camera will have a 200MP main sensor\r\nBesides the above information, the leaker also said that the Galaxy S24 Ultra camera system will include:\r\n\r\n200MP HP2SX 1/1.3″ main sensor with 0.6μm pixel size.\r\nUltra-wide Sony IMX564 1/2.55″ 12MP sensor has 1.4μm pixel size.\r\n3x Telephoto 10MP Sony IMX754+ 1/3.52″ sensor with 1.12μm pixel size.\r\n5x Telephoto 48MP GMU 1/2.25″ sensor with 0.8μm pixel size\r\nThis person added that the Galaxy S25 Ultra will likely be equipped with 4x and 6x optical zoom. And the Galaxy S24 generation will be launched in January next year, 2024.\r\n\r\nBesides the Galaxy S24 Ultra camera, there are also other leaked information\r\nBesides information about the Galaxy S24 Ultra camera, we also know more about other specifications. Specifically, this phone will own a powerful Qualcomm Snapdragon 8 Gen 3 chip with excellent performance. Besides, it also comes with 8GB or 12GB RAM options. Another advantage on the S24 Ultra is that it will offer up to 2TB of internal memory. With this capacity, users will comfortably store their high-quality photos.', 1, NULL, 1, '2023-10-19 22:26:44', NULL, 'post');
INSERT INTO `posts` VALUES (8, 'Introducing VVD Store', 1, 'introducing-vvd-store', NULL, '<p>Hoang Ha Construction and Trading Investment Joint Stock Company owns the Hoang Ha Mobile store chain - a leading retailer, specializing in providing genuine technology products in the Vietnamese market. In 1996, Hoang Ha Mobile was established, gradually becoming a trusted address for Vietnamese consumers. With the slogan \" If we don\'t have something, it means you don\'t need it \", we have been and will continue to strive to bring diverse and abundant genuine technology products with the best prices. serve the needs of customers.&nbsp;</p>', '<p dir=\"ltr\"><strong>General introduction</strong></p>\r\n<p dir=\"ltr\"><span>Hoang Ha Construction and Trading Investment Joint Stock Company owns the Hoang Ha Mobile store chain - a leading retailer, specializing in providing genuine technology products in the Vietnamese market. In 1996, Hoang Ha Mobile was established, gradually becoming a trusted address for Vietnamese consumers. With the slogan \" </span><span>If we don\'t have something, it means you don\'t need it </span><span>\", we have been and will continue to strive to bring diverse and abundant genuine technology products with the best prices. serve the needs of customers.&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>After more than 20 years of development, Hoang Ha Mobile has become a name that is no longer unfamiliar to domestic consumers. Currently, we own a network of more than 100 branches nationwide, including two warranty centers in Hanoi and one warranty center in Ho Chi Minh City. Coming to Hoang Ha Mobile\'s chain of stores, you can be completely assured of the reputation and quality of products at prices about 15-20% cheaper than the market price. Along with that, we also always strive to provide the best service experience for customers.&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>Important milestones</span></p>\r\n<ul>\r\n<li dir=\"ltr\">\r\n<p dir=\"ltr\" role=\"presentation\"><span>1996 </span><span>: Established the first Hoang Ha Mobile store located on a busy street of Hanoi Capital at 194 Le Duan.</span></p>\r\n</li>\r\n<li dir=\"ltr\">\r\n<p dir=\"ltr\" role=\"presentation\"><span>2000 </span><span>: Hoang Ha Mobile officially became a genuine mobile phone distributor cooperating with many leading brands such as Samsung, OPPO, Nokia, Huawei,...</span></p>\r\n</li>\r\n<li dir=\"ltr\">\r\n<p dir=\"ltr\" role=\"presentation\"><span>2006 </span><span>: With 10 years of experience in the retail field, Hoang Ha Mobile developed strongly and continuously opened many new branches.</span></p>\r\n</li>\r\n<li dir=\"ltr\">\r\n<p dir=\"ltr\" role=\"presentation\"><span>2016 </span><span>: Celebrating 20 years of operation in the field of retail technology products, Hoang Ha Mobile has affirmed a solid foothold in the market as well as in the minds of consumers.</span></p>\r\n</li>\r\n<li dir=\"ltr\">\r\n<p dir=\"ltr\" role=\"presentation\"><span>2019 </span><span>: Hoang Ha Mobile officially cooperated with telecommunications giant MobiFone Vietnam to open a chain of affiliated sales branches, bringing the total number of branches to more than 60, simultaneously covering 30 provinces and cities nationwide. Since then, Hoang Ha Mobile has continuously accompanied MobiFone to organize large and small events.&nbsp;</span></p>\r\n</li>\r\n<li dir=\"ltr\">\r\n<p dir=\"ltr\" role=\"presentation\"><span>2020 </span><span>: Hoang Ha Mobile is proud to become an official Apple authorized retailer in Vietnam. Genuine Apple VN/A products distributed by Apple Vietnam are sold at Hoang Ha Mobile system with the best prices in the market and a reputable warranty.&nbsp;</span></p>\r\n</li>\r\n</ul>\r\n<p dir=\"ltr\"><span>Operational principles&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>Hoang Ha Mobile always operates based on the principle of putting customers at the center, making every effort to achieve the highest goal of satisfying users through provided products and customer service. Hoang Ha Mobile is gradually building outstanding customer service, worthy of being the leading retailer in Vietnam. The trust and enthusiastic support of customers at the branch chain has partly affirmed the operational efficiency of Hoang Ha Mobile staff.&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>For our customers, we always put our heart first, working with a spirit of seriousness, honesty and responsibility, to bring the best service experience.&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>For colleagues, we promote a culture of learning, solidarity, and mutual support, creating a respectful - fair - civilized working environment for employees in the company.&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>For partners, Hoang Ha Mobile always works based on the principle of respect, co-creating value for the community and sustainable development.&nbsp;&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>vision and mission</span></p>\r\n<p dir=\"ltr\"><span>Over the years, we have continuously improved services at branches and customer support through online channels. Hoang Ha Mobile is committed to providing quality products and a reputable warranty, ready to support customers in the fastest time.</span></p>\r\n<p dir=\"ltr\"><span>In the future, Hoang Ha Mobile will continue to expand its branch system, aiming to be present in 63 provinces and cities nationwide. At the same time, improve service quality, limit risks, listen and absorb customer feedback to bring the best experience when shopping at Hoang Ha Mobile.&nbsp;</span></p>\r\n<p dir=\"ltr\"><span>Finally, Hoang Ha Mobile hopes to become a pioneer in bringing the latest technology products to users as soon as possible, creating a modern life where technology connects people, technology serves people.</span></p>', 9, NULL, 1, '2023-10-27 17:24:11', '2023-10-27 17:24:11', 'page');
INSERT INTO `posts` VALUES (9, 'hello', 1, 'hello', '/tmp/phpzHvWQe', '<p>No data !</p>', '<p>No data !</p>', 1, NULL, 1, '2023-11-06 10:33:05', '2023-11-06 10:33:05', 'page');

-- ----------------------------
-- Table structure for product_discounts
-- ----------------------------
DROP TABLE IF EXISTS `product_discounts`;
CREATE TABLE `product_discounts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `discount_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_discounts_product_id_foreign`(`product_id` ASC) USING BTREE,
  INDEX `product_discounts_discount_id_foreign`(`discount_id` ASC) USING BTREE,
  CONSTRAINT `product_discounts_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_discounts
-- ----------------------------
INSERT INTO `product_discounts` VALUES (1, 21, 1);
INSERT INTO `product_discounts` VALUES (2, 22, 2);
INSERT INTO `product_discounts` VALUES (3, 29, 3);
INSERT INTO `product_discounts` VALUES (4, 34, 4);

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `image_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_images_product_id_foreign`(`product_id` ASC) USING BTREE,
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO `product_images` VALUES (15, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009089390.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (16, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009249741.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (17, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009290222.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (18, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009336133.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (19, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009377754.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (20, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009423015.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (21, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009463096.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (22, 21, 'iphone-15-pro-max-256gb-chinh-hang-vna202310171514009496057.webp', '2023-10-17 15:14:00', '2023-10-17 15:14:00');
INSERT INTO `product_images` VALUES (23, 22, 'iphone-15-plus-512gb-chinh-hang-vna202310171516557112240.webp', '2023-10-17 15:16:55', '2023-10-17 15:16:55');
INSERT INTO `product_images` VALUES (24, 22, 'iphone-15-plus-512gb-chinh-hang-vna202310171516557158501.webp', '2023-10-17 15:16:55', '2023-10-17 15:16:55');
INSERT INTO `product_images` VALUES (25, 22, 'iphone-15-plus-512gb-chinh-hang-vna202310171516557183962.webp', '2023-10-17 15:16:55', '2023-10-17 15:16:55');
INSERT INTO `product_images` VALUES (26, 22, 'iphone-15-plus-512gb-chinh-hang-vna202310171516557220973.webp', '2023-10-17 15:16:55', '2023-10-17 15:16:55');
INSERT INTO `product_images` VALUES (27, 22, 'iphone-15-plus-512gb-chinh-hang-vna202310171516557250184.webp', '2023-10-17 15:16:55', '2023-10-17 15:16:55');
INSERT INTO `product_images` VALUES (28, 23, 'samsung-galaxy-z-fold5-12gb-256gb202310171521004180680.webp', '2023-10-17 15:21:00', '2023-10-17 15:21:00');
INSERT INTO `product_images` VALUES (29, 23, 'samsung-galaxy-z-fold5-12gb-256gb202310171521004223621.webp', '2023-10-17 15:21:00', '2023-10-17 15:21:00');
INSERT INTO `product_images` VALUES (30, 23, 'samsung-galaxy-z-fold5-12gb-256gb202310171521004257902.webp', '2023-10-17 15:21:00', '2023-10-17 15:21:00');
INSERT INTO `product_images` VALUES (31, 24, 'samsung-galaxy-s23-ultra-12gb-1tb202310171522458302020.webp', '2023-10-17 15:22:45', '2023-10-17 15:22:45');
INSERT INTO `product_images` VALUES (32, 24, 'samsung-galaxy-s23-ultra-12gb-1tb202310171522458347341.webp', '2023-10-17 15:22:45', '2023-10-17 15:22:45');
INSERT INTO `product_images` VALUES (33, 24, 'samsung-galaxy-s23-ultra-12gb-1tb202310171522458375562.webp', '2023-10-17 15:22:45', '2023-10-17 15:22:45');
INSERT INTO `product_images` VALUES (34, 24, 'samsung-galaxy-s23-ultra-12gb-1tb202310171522458408753.webp', '2023-10-17 15:22:45', '2023-10-17 15:22:45');
INSERT INTO `product_images` VALUES (35, 25, 'samsung-galaxy-m34-5g-8gb-128gb202310171524393323490.webp', '2023-10-17 15:24:39', '2023-10-17 15:24:39');
INSERT INTO `product_images` VALUES (36, 25, 'samsung-galaxy-m34-5g-8gb-128gb202310171524393382801.webp', '2023-10-17 15:24:39', '2023-10-17 15:24:39');
INSERT INTO `product_images` VALUES (37, 25, 'samsung-galaxy-m34-5g-8gb-128gb202310171524393449172.webp', '2023-10-17 15:24:39', '2023-10-17 15:24:39');
INSERT INTO `product_images` VALUES (38, 26, 'oppo-reno820231017152612118670.webp', '2023-10-17 15:26:12', '2023-10-17 15:26:12');
INSERT INTO `product_images` VALUES (39, 26, 'oppo-reno820231017152612163071.webp', '2023-10-17 15:26:12', '2023-10-17 15:26:12');
INSERT INTO `product_images` VALUES (40, 26, 'oppo-reno820231017152612196582.webp', '2023-10-17 15:26:12', '2023-10-17 15:26:12');
INSERT INTO `product_images` VALUES (41, 27, 'laptop-asus-vivobook-15-oled-a1505va-l1114w202310171528327172620.webp', '2023-10-17 15:28:32', '2023-10-17 15:28:32');
INSERT INTO `product_images` VALUES (42, 27, 'laptop-asus-vivobook-15-oled-a1505va-l1114w202310171528327207701.webp', '2023-10-17 15:28:32', '2023-10-17 15:28:32');
INSERT INTO `product_images` VALUES (43, 27, 'laptop-asus-vivobook-15-oled-a1505va-l1114w202310171528327251692.webp', '2023-10-17 15:28:32', '2023-10-17 15:28:32');
INSERT INTO `product_images` VALUES (44, 27, 'laptop-asus-vivobook-15-oled-a1505va-l1114w202310171528327280703.webp', '2023-10-17 15:28:32', '2023-10-17 15:28:32');
INSERT INTO `product_images` VALUES (45, 28, 'laptop-asus-tuf-gaming-f15-fx506he-hn377w202310171529521717560.webp', '2023-10-17 15:29:52', '2023-10-17 15:29:52');
INSERT INTO `product_images` VALUES (46, 28, 'laptop-asus-tuf-gaming-f15-fx506he-hn377w202310171529521757261.webp', '2023-10-17 15:29:52', '2023-10-17 15:29:52');
INSERT INTO `product_images` VALUES (47, 28, 'laptop-asus-tuf-gaming-f15-fx506he-hn377w202310171529521792242.webp', '2023-10-17 15:29:52', '2023-10-17 15:29:52');
INSERT INTO `product_images` VALUES (48, 29, 'laptop-asus-zenbook-up5401za-kn005w202310171541239346490.webp', '2023-10-17 15:41:23', '2023-10-17 15:41:23');
INSERT INTO `product_images` VALUES (49, 29, 'laptop-asus-zenbook-up5401za-kn005w202310171541239422201.webp', '2023-10-17 15:41:23', '2023-10-17 15:41:23');
INSERT INTO `product_images` VALUES (50, 29, 'laptop-asus-zenbook-up5401za-kn005w202310171541239448822.webp', '2023-10-17 15:41:23', '2023-10-17 15:41:23');
INSERT INTO `product_images` VALUES (55, 31, 'apple-macbook-air-m1-256gb-2020-i-chinh-hang-apple-viet-nam202310171544291418650.webp', '2023-10-17 15:44:29', '2023-10-17 15:44:29');
INSERT INTO `product_images` VALUES (56, 31, 'apple-macbook-air-m1-256gb-2020-i-chinh-hang-apple-viet-nam202310171544291462211.webp', '2023-10-17 15:44:29', '2023-10-17 15:44:29');
INSERT INTO `product_images` VALUES (57, 32, 'laptop-asus-zenbook-um3402ya-km074w20231017154813100370.webp', '2023-10-17 15:48:13', '2023-10-17 15:48:13');
INSERT INTO `product_images` VALUES (58, 32, 'laptop-asus-zenbook-um3402ya-km074w20231017154813139921.webp', '2023-10-17 15:48:13', '2023-10-17 15:48:13');
INSERT INTO `product_images` VALUES (59, 33, 'ipad-102-2021-wifi-64gb-chinh-hang-apple-viet-nam202310171549583702230.webp', '2023-10-17 15:49:58', '2023-10-17 15:49:58');
INSERT INTO `product_images` VALUES (60, 33, 'ipad-102-2021-wifi-64gb-chinh-hang-apple-viet-nam202310171549583748881.webp', '2023-10-17 15:49:58', '2023-10-17 15:49:58');
INSERT INTO `product_images` VALUES (61, 34, 'ipad-pro-11-inch-2022-m2-wifi-128gb-i-chinh-hang-apple-viet-nam202310171551071512250.webp', '2023-10-17 15:51:07', '2023-10-17 15:51:07');
INSERT INTO `product_images` VALUES (62, 34, 'ipad-pro-11-inch-2022-m2-wifi-128gb-i-chinh-hang-apple-viet-nam202310171551071571301.webp', '2023-10-17 15:51:07', '2023-10-17 15:51:07');
INSERT INTO `product_images` VALUES (63, 35, 'ipad-gen-10-109-inch-2022-wifi-64gb-i-chinh-hang-apple-viet-nam202310171551597690460.webp', '2023-10-17 15:51:59', '2023-10-17 15:51:59');
INSERT INTO `product_images` VALUES (64, 35, 'ipad-gen-10-109-inch-2022-wifi-64gb-i-chinh-hang-apple-viet-nam202310171551597718941.webp', '2023-10-17 15:51:59', '2023-10-17 15:51:59');
INSERT INTO `product_images` VALUES (65, 36, 'laptop-lenovo-ideapad-slim-5-14iah8-83bf002nvn202310191048218762970.webp', '2023-10-19 10:48:21', '2023-10-19 10:48:21');
INSERT INTO `product_images` VALUES (66, 36, 'laptop-lenovo-ideapad-slim-5-14iah8-83bf002nvn202310191048218790491.webp', '2023-10-19 10:48:21', '2023-10-19 10:48:21');
INSERT INTO `product_images` VALUES (67, 36, 'laptop-lenovo-ideapad-slim-5-14iah8-83bf002nvn202310191048218817692.webp', '2023-10-19 10:48:21', '2023-10-19 10:48:21');
INSERT INTO `product_images` VALUES (68, 37, 'laptop-lenovo-gaming-legion-5-15arh7-82re002vvn202310191058486025770.webp', '2023-10-19 10:58:48', '2023-10-19 10:58:48');
INSERT INTO `product_images` VALUES (69, 37, 'laptop-lenovo-gaming-legion-5-15arh7-82re002vvn202310191058486093971.webp', '2023-10-19 10:58:48', '2023-10-19 10:58:48');
INSERT INTO `product_images` VALUES (70, 37, 'laptop-lenovo-gaming-legion-5-15arh7-82re002vvn202310191058486127052.webp', '2023-10-19 10:58:48', '2023-10-19 10:58:48');
INSERT INTO `product_images` VALUES (71, 38, 'vong-deo-tay-thong-minh-xiaomi-mi-band-8202310191101397242090.webp', '2023-10-19 11:01:39', '2023-10-19 11:01:39');
INSERT INTO `product_images` VALUES (72, 38, 'vong-deo-tay-thong-minh-xiaomi-mi-band-8202310191101397273341.webp', '2023-10-19 11:01:39', '2023-10-19 11:01:39');
INSERT INTO `product_images` VALUES (73, 38, 'vong-deo-tay-thong-minh-xiaomi-mi-band-8202310191101397290222.webp', '2023-10-19 11:01:39', '2023-10-19 11:01:39');
INSERT INTO `product_images` VALUES (74, 38, 'vong-deo-tay-thong-minh-xiaomi-mi-band-8202310191101397304323.webp', '2023-10-19 11:01:39', '2023-10-19 11:01:39');
INSERT INTO `product_images` VALUES (75, 39, 'dong-ho-thong-minh-huawei-watch-gt4-46mm-day-composite202310191105123772150.webp', '2023-10-19 11:05:12', '2023-10-19 11:05:12');
INSERT INTO `product_images` VALUES (76, 39, 'dong-ho-thong-minh-huawei-watch-gt4-46mm-day-composite202310191105123803921.webp', '2023-10-19 11:05:12', '2023-10-19 11:05:12');
INSERT INTO `product_images` VALUES (77, 39, 'dong-ho-thong-minh-huawei-watch-gt4-46mm-day-composite202310191105123833742.webp', '2023-10-19 11:05:12', '2023-10-19 11:05:12');
INSERT INTO `product_images` VALUES (78, 39, 'dong-ho-thong-minh-huawei-watch-gt4-46mm-day-composite202310191105123853493.webp', '2023-10-19 11:05:12', '2023-10-19 11:05:12');
INSERT INTO `product_images` VALUES (79, 40, 'apple-watch-series-8-41mm-gps-vien-nhom-chinh-hang-vna20231019110630599470.webp', '2023-10-19 11:06:30', '2023-10-19 11:06:30');
INSERT INTO `product_images` VALUES (80, 40, 'apple-watch-series-8-41mm-gps-vien-nhom-chinh-hang-vna20231019110630621171.webp', '2023-10-19 11:06:30', '2023-10-19 11:06:30');
INSERT INTO `product_images` VALUES (81, 40, 'apple-watch-series-8-41mm-gps-vien-nhom-chinh-hang-vna20231019110630643532.webp', '2023-10-19 11:06:30', '2023-10-19 11:06:30');
INSERT INTO `product_images` VALUES (82, 40, 'apple-watch-series-8-41mm-gps-vien-nhom-chinh-hang-vna20231019110630662953.webp', '2023-10-19 11:06:30', '2023-10-19 11:06:30');
INSERT INTO `product_images` VALUES (83, 41, 'android-tivi-xiaomi-p1-43-inch202310191112531540810.webp', '2023-10-19 11:12:53', '2023-10-19 11:12:53');
INSERT INTO `product_images` VALUES (84, 41, 'android-tivi-xiaomi-p1-43-inch202310191112531564061.webp', '2023-10-19 11:12:53', '2023-10-19 11:12:53');
INSERT INTO `product_images` VALUES (85, 41, 'android-tivi-xiaomi-p1-43-inch202310191112531586582.webp', '2023-10-19 11:12:53', '2023-10-19 11:12:53');
INSERT INTO `product_images` VALUES (86, 42, 'smart-tivi-coocaa-fhd-43-inch-wifi-43s3u202310191114369802250.webp', '2023-10-19 11:14:36', '2023-10-19 11:14:36');
INSERT INTO `product_images` VALUES (87, 42, 'smart-tivi-coocaa-fhd-43-inch-wifi-43s3u202310191114369823381.webp', '2023-10-19 11:14:36', '2023-10-19 11:14:36');
INSERT INTO `product_images` VALUES (88, 42, 'smart-tivi-coocaa-fhd-43-inch-wifi-43s3u202310191114369852212.webp', '2023-10-19 11:14:36', '2023-10-19 11:14:36');
INSERT INTO `product_images` VALUES (89, 43, 'smart-tivi-lg-4k-65-inch-65uq7550psf202310191116043055790.webp', '2023-10-19 11:16:04', '2023-10-19 11:16:04');
INSERT INTO `product_images` VALUES (90, 43, 'smart-tivi-lg-4k-65-inch-65uq7550psf202310191116043078211.webp', '2023-10-19 11:16:04', '2023-10-19 11:16:04');
INSERT INTO `product_images` VALUES (91, 43, 'smart-tivi-lg-4k-65-inch-65uq7550psf202310191116043105992.webp', '2023-10-19 11:16:04', '2023-10-19 11:16:04');
INSERT INTO `product_images` VALUES (92, 44, 'hop-dung-tai-nghe-airpods-3-uniq-lino-hybrid-liquid-silicon202310191120144491170.webp', '2023-10-19 11:20:14', '2023-10-19 11:20:14');
INSERT INTO `product_images` VALUES (93, 44, 'hop-dung-tai-nghe-airpods-3-uniq-lino-hybrid-liquid-silicon202310191120144510861.webp', '2023-10-19 11:20:14', '2023-10-19 11:20:14');
INSERT INTO `product_images` VALUES (94, 44, 'hop-dung-tai-nghe-airpods-3-uniq-lino-hybrid-liquid-silicon202310191120144533972.webp', '2023-10-19 11:20:14', '2023-10-19 11:20:14');
INSERT INTO `product_images` VALUES (95, 44, 'hop-dung-tai-nghe-airpods-3-uniq-lino-hybrid-liquid-silicon202310191120144560713.webp', '2023-10-19 11:20:14', '2023-10-19 11:20:14');
INSERT INTO `product_images` VALUES (96, 44, 'hop-dung-tai-nghe-airpods-3-uniq-lino-hybrid-liquid-silicon202310191120144583404.webp', '2023-10-19 11:20:14', '2023-10-19 11:20:14');
INSERT INTO `product_images` VALUES (97, 45, 'chuot-khong-day-logitech-pebble-m350202310191125064740210.webp', '2023-10-19 11:25:06', '2023-10-19 11:25:06');
INSERT INTO `product_images` VALUES (98, 45, 'chuot-khong-day-logitech-pebble-m350202310191125064766801.webp', '2023-10-19 11:25:06', '2023-10-19 11:25:06');
INSERT INTO `product_images` VALUES (99, 45, 'chuot-khong-day-logitech-pebble-m350202310191125064792762.webp', '2023-10-19 11:25:06', '2023-10-19 11:25:06');
INSERT INTO `product_images` VALUES (100, 45, 'chuot-khong-day-logitech-pebble-m350202310191125064816673.webp', '2023-10-19 11:25:06', '2023-10-19 11:25:06');
INSERT INTO `product_images` VALUES (101, 45, 'chuot-khong-day-logitech-pebble-m350202310191125064834344.webp', '2023-10-19 11:25:06', '2023-10-19 11:25:06');
INSERT INTO `product_images` VALUES (102, 46, 'chuot-khong-day-logitech-m331202310191127012945910.webp', '2023-10-19 11:27:01', '2023-10-19 11:27:01');
INSERT INTO `product_images` VALUES (103, 46, 'chuot-khong-day-logitech-m331202310191127012980251.webp', '2023-10-19 11:27:01', '2023-10-19 11:27:01');
INSERT INTO `product_images` VALUES (104, 46, 'chuot-khong-day-logitech-m331202310191127013006862.webp', '2023-10-19 11:27:01', '2023-10-19 11:27:01');
INSERT INTO `product_images` VALUES (105, 47, 'chuot-co-day-gaming-dareu-em908-rgb20231019112832179510.webp', '2023-10-19 11:28:32', '2023-10-19 11:28:32');
INSERT INTO `product_images` VALUES (106, 47, 'chuot-co-day-gaming-dareu-em908-rgb20231019112832204931.webp', '2023-10-19 11:28:32', '2023-10-19 11:28:32');
INSERT INTO `product_images` VALUES (107, 47, 'chuot-co-day-gaming-dareu-em908-rgb20231019112832240742.webp', '2023-10-19 11:28:32', '2023-10-19 11:28:32');
INSERT INTO `product_images` VALUES (108, 48, 'chuot-co-day-gaming-logitech-g203-lightsync202310191129564752640.webp', '2023-10-19 11:29:56', '2023-10-19 11:29:56');
INSERT INTO `product_images` VALUES (109, 48, 'chuot-co-day-gaming-logitech-g203-lightsync202310191129564779291.webp', '2023-10-19 11:29:56', '2023-10-19 11:29:56');
INSERT INTO `product_images` VALUES (110, 48, 'chuot-co-day-gaming-logitech-g203-lightsync202310191129564800012.webp', '2023-10-19 11:29:56', '2023-10-19 11:29:56');
INSERT INTO `product_images` VALUES (111, 48, 'chuot-co-day-gaming-logitech-g203-lightsync202310191129564829703.webp', '2023-10-19 11:29:56', '2023-10-19 11:29:56');
INSERT INTO `product_images` VALUES (112, 49, 'chuot-apple-magic-mouse-2021-mk2e3-chinh-hang-apple-viet-nam202310191132155030430.webp', '2023-10-19 11:32:15', '2023-10-19 11:32:15');
INSERT INTO `product_images` VALUES (113, 49, 'chuot-apple-magic-mouse-2021-mk2e3-chinh-hang-apple-viet-nam202310191132155066831.webp', '2023-10-19 11:32:15', '2023-10-19 11:32:15');
INSERT INTO `product_images` VALUES (114, 49, 'chuot-apple-magic-mouse-2021-mk2e3-chinh-hang-apple-viet-nam202310191132155100382.webp', '2023-10-19 11:32:15', '2023-10-19 11:32:15');
INSERT INTO `product_images` VALUES (115, 50, 'camera-xiaomi-mi-home-security-c200-bhr6766gl202310191147511563760.webp', '2023-10-19 11:47:51', '2023-10-19 11:47:51');
INSERT INTO `product_images` VALUES (116, 50, 'camera-xiaomi-mi-home-security-c200-bhr6766gl202310191147511589491.webp', '2023-10-19 11:47:51', '2023-10-19 11:47:51');
INSERT INTO `product_images` VALUES (117, 51, 'camera-ip-wifi-ngoai-troi-ezviz-h3c-1080p-full-color202310191149595289370.webp', '2023-10-19 11:49:59', '2023-10-19 11:49:59');
INSERT INTO `product_images` VALUES (118, 51, 'camera-ip-wifi-ngoai-troi-ezviz-h3c-1080p-full-color202310191149595323711.webp', '2023-10-19 11:49:59', '2023-10-19 11:49:59');
INSERT INTO `product_images` VALUES (119, 51, 'camera-ip-wifi-ngoai-troi-ezviz-h3c-1080p-full-color202310191149595345152.webp', '2023-10-19 11:49:59', '2023-10-19 11:49:59');
INSERT INTO `product_images` VALUES (120, 52, 'camera-ip-imou-s21ftp-2mp-dung-sim-4g202310191151295112720.webp', '2023-10-19 11:51:29', '2023-10-19 11:51:29');
INSERT INTO `product_images` VALUES (121, 52, 'camera-ip-imou-s21ftp-2mp-dung-sim-4g202310191151295140481.webp', '2023-10-19 11:51:29', '2023-10-19 11:51:29');
INSERT INTO `product_images` VALUES (122, 53, 'op-lung-iphone-14-pro-trong-suot-jinya-ho-tro-sac-magsafe20231019115621937280.webp', '2023-10-19 11:56:21', '2023-10-19 11:56:21');
INSERT INTO `product_images` VALUES (123, 53, 'op-lung-iphone-14-pro-trong-suot-jinya-ho-tro-sac-magsafe20231019115621982861.webp', '2023-10-19 11:56:21', '2023-10-19 11:56:21');
INSERT INTO `product_images` VALUES (124, 53, 'op-lung-iphone-14-pro-trong-suot-jinya-ho-tro-sac-magsafe202310191156211014282.webp', '2023-10-19 11:56:21', '2023-10-19 11:56:21');

-- ----------------------------
-- Table structure for product_options
-- ----------------------------
DROP TABLE IF EXISTS `product_options`;
CREATE TABLE `product_options`  (
  `product_id` bigint UNSIGNED NOT NULL,
  `option_id` int NULL DEFAULT NULL,
  INDEX `option_id`(`option_id` ASC) USING BTREE,
  INDEX `idx_product_option`(`product_id` ASC, `option_id` ASC) USING BTREE,
  CONSTRAINT `product_options_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_options_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `options` (`option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_options
-- ----------------------------
INSERT INTO `product_options` VALUES (21, 1);
INSERT INTO `product_options` VALUES (21, 2);
INSERT INTO `product_options` VALUES (22, 1);
INSERT INTO `product_options` VALUES (22, 3);
INSERT INTO `product_options` VALUES (22, 3);
INSERT INTO `product_options` VALUES (22, 4);
INSERT INTO `product_options` VALUES (23, 1);
INSERT INTO `product_options` VALUES (23, 2);
INSERT INTO `product_options` VALUES (23, 3);
INSERT INTO `product_options` VALUES (23, 4);
INSERT INTO `product_options` VALUES (24, 2);

-- ----------------------------
-- Table structure for product_reviews
-- ----------------------------
DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE `product_reviews`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_reviews_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `product_reviews_product_id_foreign`(`product_id` ASC) USING BTREE,
  CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_reviews
-- ----------------------------

-- ----------------------------
-- Table structure for product_variants
-- ----------------------------
DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants`  (
  `variant_id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `sku_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`variant_id`) USING BTREE,
  UNIQUE INDEX `sku_id`(`sku_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_variants
-- ----------------------------
INSERT INTO `product_variants` VALUES (1, 21, 'LAP001');
INSERT INTO `product_variants` VALUES (2, 21, 'LAP002');
INSERT INTO `product_variants` VALUES (3, 22, 'IPH001');
INSERT INTO `product_variants` VALUES (4, 22, 'IPH002');
INSERT INTO `product_variants` VALUES (5, 23, 'TAB001');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `retail_price` double NOT NULL,
  `wholesale_price` double NOT NULL,
  `detail` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility_home` int NOT NULL DEFAULT 1,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int UNSIGNED NULL DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_category_id_foreign`(`category_id` ASC) USING BTREE,
  INDEX `products_brand_id_foreign`(`brand_id` ASC) USING BTREE,
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (21, 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 3, 1, 'iphone-15-pro-max-256gb-chinh-hang-vna', 'Mới, đầy đủ phụ kiện từ nhà sản xuất\r\n1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính', 400, 35999000, 44999000, 'ĐẶC ĐIỂM NỔI BẬT\r\nThiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 2, 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 1, NULL, 1, '2023-10-17 15:14:00', '2023-10-17 15:14:05', 20);
INSERT INTO `products` VALUES (22, 'iPhone 15 Plus 512GB | Chính hãng VN/A', 3, 1, 'iphone-15-plus-512gb-chinh-hang-vna', 'fewfwef', 210, 1239098, 1320001, 'ưefwfwef', 'qưdqwdqw', 2, '1111', 'qưdqdqdqwd', 1, NULL, 1, '2023-10-17 15:16:55', '2023-10-17 15:16:55', 12);
INSERT INTO `products` VALUES (23, 'Samsung Galaxy Z Fold5 12GB 256GB', 3, 5, 'samsung-galaxy-z-fold5-12gb-256gb', '124effwewe', 567, 12312, 1234234, 'fwefwef', 'qưdqwdqw', 2, 'ádasd', 'qưdqwdqd', 1, NULL, 1, '2023-10-17 15:21:00', '2023-10-17 15:21:00', 12);
INSERT INTO `products` VALUES (24, 'Samsung Galaxy S23 Ultra 12GB 1TB', 3, 5, 'samsung-galaxy-s23-ultra-12gb-1tb', 'sffdsdf', 975, 1231341, 123241, 'sdfsdf', 'qưqwd', 2, 'qưdqwdwq', 'ưqdqwd', 1, NULL, 1, '2023-10-17 15:22:45', '2023-10-17 15:22:45', 7);
INSERT INTO `products` VALUES (25, 'Samsung Galaxy M34 5G 8GB 128GB', 3, 5, 'samsung-galaxy-m34-5g-8gb-128gb', 'sừewef', 564, 32412312, 123324, 'ewfwef', 'qdqw', 1, 'qưdqwdqw', 'ưqdqwdqwdq', 1, NULL, 1, '2023-10-17 15:24:39', '2023-10-17 15:24:39', 56);
INSERT INTO `products` VALUES (26, 'OPPO Reno8', 3, 6, 'oppo-reno8', 'OPPO Reno8', 369, 23423, 123123, 'OPPO Reno8', 'qưdq', 1, 'dqwdqw', 'ưdqwd', 1, NULL, 1, '2023-10-17 15:26:12', '2023-10-17 15:26:12', 199);
INSERT INTO `products` VALUES (27, 'Laptop Asus VivoBook 15 OLED A1505VA-L1114W', 1, 7, 'laptop-asus-vivobook-15-oled-a1505va-l1114w', 'Laptop Asus VivoBook 15 OLED A1505VA-L1114W', 342, 2123123, 12313, 'Laptop Asus VivoBook 15 OLED A1505VA-L1114W', 'qdqwd', 2, 'ưqdqwd', 'qưdqwd', 1, NULL, 1, '2023-10-17 15:28:32', '2023-10-17 15:28:32', 23);
INSERT INTO `products` VALUES (28, 'Laptop Asus TUF Gaming F15 FX506HE-HN377W', 1, 7, 'laptop-asus-tuf-gaming-f15-fx506he-hn377w', '12qw', 348, 232342, 12312, 'Laptop Asus TUF Gaming F15 FX506HE-HN377W', 'qưdqwd', 3, 'qưdqwdq', 'ưqdwqdqwdq', 1, NULL, 1, '2023-10-17 15:29:52', '2023-10-17 15:29:52', 1208);
INSERT INTO `products` VALUES (29, 'Laptop ASUS ZenBook UP5401ZA-KN005W', 1, 7, 'laptop-asus-zenbook-up5401za-kn005w', 'ưdwdqwd', 447, 3123123, 12312, 'qưdqwd', 'eqeqw', 2, 'eqweqwe', 'ưqeqw', 1, NULL, 1, '2023-10-17 15:41:23', '2023-10-17 15:41:23', 66);
INSERT INTO `products` VALUES (31, 'Apple MacBook Air M1 256GB 2020 I Chính hãng Apple Việt Nam', 1, 8, 'apple-macbook-air-m1-256gb-2020-i-chinh-hang-apple-viet-nam', '12wqđ', 239, 1312, 23412, 'dưqdqwd', '1e12', 2, 'qưdqwd', 'qưdqwd', 1, NULL, 1, '2023-10-17 15:44:29', '2023-10-17 15:44:29', 33);
INSERT INTO `products` VALUES (32, 'Laptop ASUS ZenBook UM3402YA-KM074W', 1, 7, 'laptop-asus-zenbook-um3402ya-km074w', 'ưdqwd', 896, 312312, 432131, 'qdqwd', 'qưdqwd', 3, 'qưdqwd', 'ưqdwq', 1, NULL, 1, '2023-10-17 15:48:13', '2023-10-17 15:48:13', 123);
INSERT INTO `products` VALUES (33, 'iPad 10.2 2021 WiFi 64GB | Chính hãng Apple Việt Nam', 2, 8, 'ipad-102-2021-wifi-64gb-chinh-hang-apple-viet-nam', 'ưdqdw', 453, 3123123, 12312, 'qưdqwd', 'qưqwd', 3, 'qưdqwd', 'ưdqwdqwd', 1, NULL, 1, '2023-10-17 15:49:58', '2023-10-17 15:49:58', 133);
INSERT INTO `products` VALUES (34, 'iPad Pro 11 inch 2022 M2 Wifi 128GB I Chính hãng Apple Việt Nam', 2, 8, 'ipad-pro-11-inch-2022-m2-wifi-128gb-i-chinh-hang-apple-viet-nam', '234234', 179, 3423423, 1231234, 'qưdwqdwqd', 'qưqwd', 1, 'đưqwd', 'qưdqw', 1, NULL, 1, '2023-10-17 15:51:07', '2023-10-17 15:51:07', 21);
INSERT INTO `products` VALUES (35, 'iPad Gen 10 10.9 inch 2022 Wifi 64GB I Chính hãng Apple Việt Nam', 2, 8, 'ipad-gen-10-109-inch-2022-wifi-64gb-i-chinh-hang-apple-viet-nam', 'iPad Gen 10 10.9 inch 2022 Wifi 64GB I Chính hãng Apple Việt Nam', 634, 323123, 4121, 'iPad Gen 10 10.9 inch 2022 Wifi 64GB I Chính hãng Apple Việt Nam', 'qưdqwdqưd', 3, 'qưdqwd', 'qưdqw', 1, NULL, 1, '2023-10-17 15:51:59', '2023-10-17 15:51:59', 222);
INSERT INTO `products` VALUES (36, 'Laptop Lenovo Ideapad Slim 5 14IAH8 83BF002NVN', 1, 9, 'laptop-lenovo-ideapad-slim-5-14iah8-83bf002nvn', 'âfasas', 123, 13123, 243, 'đâsda', 'qdwqd', 1, 'qưdqwd', 'qưdwqd', 1, NULL, 1, '2023-10-19 10:48:21', '2023-10-19 10:48:21', 1234);
INSERT INTO `products` VALUES (37, 'Laptop Lenovo Gaming Legion 5 15ARH7 82RE002VVN', 1, 9, 'laptop-lenovo-gaming-legion-5-15arh7-82re002vvn', 'sdfgh', 8995, 123, 46584, 'dsfds', 'dsgfdsg', 1, 'dgadsg', 'sdgsdg', 1, NULL, 1, '2023-10-19 10:58:48', '2023-10-19 10:58:48', 454);
INSERT INTO `products` VALUES (38, 'Vòng đeo tay thông minh Xiaomi Mi Band 8', 4, 8, 'vong-deo-tay-thong-minh-xiaomi-mi-band-8', 'sfdghj', 2342, 1234, 3435, 'stef', 'dfds', 3, 'dsfsdf', 'sdfsdf', 1, NULL, 1, '2023-10-19 11:01:39', '2023-10-19 11:01:39', 54);
INSERT INTO `products` VALUES (39, 'Đồng hồ thông minh Huawei Watch GT4 46mm dây Composite', 4, 8, 'dong-ho-thong-minh-huawei-watch-gt4-46mm-day-composite', 'dgdfg', 1343, 245324, 24545, 'dfgdfg', 'dfhgfh', 1, 'gfhgfh', 'gfhfgh', 1, NULL, 1, '2023-10-19 11:05:12', '2023-10-19 11:05:12', 23);
INSERT INTO `products` VALUES (40, 'Apple Watch Series 8 41mm GPS viền nhôm | Chính hãng VN/A', 4, 8, 'apple-watch-series-8-41mm-gps-vien-nhom-chinh-hang-vna', 'dxgdf', 243, 243, 321, 'dfgdf', 'gdhdf', 1, 'dfhdg', 'hdg', 1, NULL, 1, '2023-10-19 11:06:30', '2023-10-19 11:08:05', 5);
INSERT INTO `products` VALUES (41, 'Android Tivi Xiaomi P1 43 inch', 18, 10, 'android-tivi-xiaomi-p1-43-inch', 'vcbgcj', 8707856, 4351, 12321, 'fdhdfhdf', 'gtdfhdf', 1, 'dghdh', 'hdgfhdg', 1, NULL, 1, '2023-10-19 11:12:53', '2023-10-19 11:12:53', 23);
INSERT INTO `products` VALUES (42, 'Smart Tivi Coocaa FHD 43 inch Wifi 43S3U', 18, 10, 'smart-tivi-coocaa-fhd-43-inch-wifi-43s3u', 'bvn gdf', 3790000, 42343, 1213, 'dgdfgd', 'fdhhdj', 2, 'gfhfgh', 'gfhfh', 1, NULL, 1, '2023-10-19 11:14:36', '2023-10-19 11:14:36', 52);
INSERT INTO `products` VALUES (43, 'Smart Tivi LG 4K 65 inch 65UQ7550PSF', 18, 10, 'smart-tivi-lg-4k-65-inch-65uq7550psf', 'vchgcj', 798006, 42412, 213123, 'hjfgjdfj', 'fhggf', 1, 'fdgdfg', 'dfgdfgdf', 1, NULL, 1, '2023-10-19 11:16:04', '2023-10-19 11:16:04', 234);
INSERT INTO `products` VALUES (44, 'Hộp đựng tai nghe AirPods 3 Uniq Lino Hybrid Liquid Silicon', 19, 11, 'hop-dung-tai-nghe-airpods-3-uniq-lino-hybrid-liquid-silicon', 'czgdfhd', 678907897, 24112453, 65345, 'dsgsfd', 'dfhgfj', 3, 'dfgfdg', 'gfjghj', 1, NULL, 1, '2023-10-19 11:20:14', '2023-10-19 11:20:14', 53);
INSERT INTO `products` VALUES (45, 'Chuột không dây Logitech Pebble M350', 19, 12, 'chuot-khong-day-logitech-pebble-m350', 'hgkgh', 1233, 121, 120, 'cxvcb', 'bnkgfj', 2, 'dsgsdf', 'dfgdsg', 1, NULL, 1, '2023-10-19 11:25:06', '2023-10-19 11:25:06', 23);
INSERT INTO `products` VALUES (46, 'Chuột không dây Logitech M331', 19, 12, 'chuot-khong-day-logitech-m331', 'vdfsgs', 340, 120, 250, 'sdgdsgf', 'hvjfgjg', 1, 'dfhd', 'gfgjfj', 1, NULL, 1, '2023-10-19 11:27:01', '2023-10-19 11:27:01', 53);
INSERT INTO `products` VALUES (47, 'Chuột có dây Gaming Dareu EM908 RGB', 19, 12, 'chuot-co-day-gaming-dareu-em908-rgb', 'xcbcv', 309, 150, 200, 'vbcnc', 'zgdfg', 3, 'fdhdh', 'fhdh', 1, NULL, 1, '2023-10-19 11:28:32', '2023-10-19 11:28:32', 456);
INSERT INTO `products` VALUES (48, 'Chuột có dây Gaming Logitech G203 Lightsync', 19, 12, 'chuot-co-day-gaming-logitech-g203-lightsync', 'dzvgfdg', 400, 500, 200, 'dsgsdf', 'xdgsf', 2, 'khjlkj', 'fdhfgkjg', 1, NULL, 1, '2023-10-19 11:29:56', '2023-10-19 11:29:56', 7);
INSERT INTO `products` VALUES (49, 'Chuột Apple Magic Mouse 2021 MK2E3 | Chính hãng Apple Việt Nam', 19, 12, 'chuot-apple-magic-mouse-2021-mk2e3-chinh-hang-apple-viet-nam', 'gđggddg', 1450, 11500, 1400, 'adgfdg', 'dsgds', 2, 'ádfsaf', 'dsfdsf', 1, NULL, 1, '2023-10-19 11:32:15', '2023-10-19 11:32:15', 34);
INSERT INTO `products` VALUES (50, 'Camera Xiaomi MI Home Security C200 (BHR6766GL)', 20, 10, 'camera-xiaomi-mi-home-security-c200-bhr6766gl', 'dsfsg', 650, 700, 600, 'dsfdsfds', 'dsgdff', 1, 'gdfgd', 'dgdgd', 1, NULL, 1, '2023-10-19 11:47:51', '2023-10-19 11:47:51', 23);
INSERT INTO `products` VALUES (51, 'Camera IP Wifi ngoài trời EZVIZ H3C 1080P Full Color', 20, 8, 'camera-ip-wifi-ngoai-troi-ezviz-h3c-1080p-full-color', 'dgfdxhg', 790, 850, 700, 'hgfjfgf', 'fdhggfhjgh', 3, 'dfjfdj', 'gfjgdj', 1, NULL, 1, '2023-10-19 11:49:59', '2023-10-19 11:49:59', 56);
INSERT INTO `products` VALUES (52, 'Camera IP IMOU S21FTP 2MP dùng SIM 4G', 20, 10, 'camera-ip-imou-s21ftp-2mp-dung-sim-4g', 'dsvsdgfsd', 1350, 1400, 1300, 'sdgfds', 'XCxzxz', 1, 'hgfhgf', 'czbcvnfh', 1, NULL, 1, '2023-10-19 11:51:29', '2023-10-19 11:51:29', 35);
INSERT INTO `products` VALUES (53, 'Ốp lưng iPhone 14 Pro trong suốt Jinya hỗ trợ sạc MagSafe', 21, 13, 'op-lung-iphone-14-pro-trong-suot-jinya-ho-tro-sac-magsafe', 'sfdghjkl;', 129, 139, 120, 'dfghjkl;\'', 'vbnm,.', 1, 'dfghjkl;\'', 'sdfghjkl;\'', 1, NULL, 1, '2023-10-19 11:56:21', '2023-10-19 11:56:21', 56);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'qdwq', 'qưdqwd', 'ưqdqwd', 'qưdqw', 'ưdqwd', 'ưqdqw', NULL, NULL);
INSERT INTO `settings` VALUES (2, '1312', 'qưdqwd', 'ưqdqwd', 'qưdqw', 'ưdqwd', 'ưqdqw', '2023-10-14 09:03:39', '2023-10-14 09:03:39');

-- ----------------------------
-- Table structure for shipments
-- ----------------------------
DROP TABLE IF EXISTS `shipments`;
CREATE TABLE `shipments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shipments
-- ----------------------------

-- ----------------------------
-- Table structure for shipments_details
-- ----------------------------
DROP TABLE IF EXISTS `shipments_details`;
CREATE TABLE `shipments_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shipments_details
-- ----------------------------

-- ----------------------------
-- Table structure for shippings
-- ----------------------------
DROP TABLE IF EXISTS `shippings`;
CREATE TABLE `shippings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8, 2) NOT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shippings
-- ----------------------------
INSERT INTO `shippings` VALUES (1, 'giao nhanh', 12.00, 1, '2023-10-20 09:37:18', NULL);

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT 1,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (1, 'apple', 'ưefwef', 1, 1, NULL, NULL, 1, 'qưdqw');

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES (1, 'page', 'page', 1, NULL, 1, '2023-10-28 00:09:25', NULL);
INSERT INTO `topics` VALUES (2, 'technology', 'technology', 1, NULL, 1, '2023-10-14 08:37:30', '2023-10-14 08:37:30');
INSERT INTO `topics` VALUES (3, 'news', 'news', 1, NULL, 1, '2023-10-19 23:54:11', NULL);
INSERT INTO `topics` VALUES (4, 'sport', 'sport', 1, NULL, 1, '2023-10-19 23:54:57', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 1,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  UNIQUE INDEX `users_api_token_unique`(`api_token` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'hi', 'vuvandinh203@gmail.com', '2023-10-06 09:18:47', '$2y$10$dv1AWVh9i0K.n0W3ccBXN.HTL9NlqjTM6t95qb./thyZPpm6V7lEe', NULL, 'fwef', '12313', 'dqwqd', 1, 1, NULL, '2023-10-06 09:19:05', '2024-01-22 11:17:20');
INSERT INTO `users` VALUES (2, 'dinh', 'vu van', 'vudinh.01633583800@gmail.com', '2023-10-14 10:02:33', '$2y$10$NgF8Us5VAMFYZKz5PmD.qOYWKuUybJ9NCE6yDECg4VGfncUkmIudK', '', 'qd', '123', NULL, 0, 1, NULL, '2023-10-14 10:03:05', '2023-12-24 05:27:03');
INSERT INTO `users` VALUES (3, 'dinh', 'vu van', 'vudinh@gmail.com', NULL, '$2y$10$QpTLiGfDByJvTWXkeJ5BhOZf.NUjLClRuFE38Rzhwft0mapnlDgge', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-10-18 14:11:45', '2023-10-18 14:11:45');
INSERT INTO `users` VALUES (4, 'ccc', 'hj idnh', 'vudinh999@gmail.com', NULL, '$2y$10$qw.z9ayGEOQ6Ld.kfS8J3uta7Si5DHVFY6gz0PqCwvmjty2mDPyLe', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-10-18 14:21:42', '2023-10-18 14:21:42');
INSERT INTO `users` VALUES (5, 'Dương', 'Nguyễn', 'demo@evershop.io', NULL, '$2y$10$TM118sDess8YiisoMEAD5eP3Azyk5Yj2Yqs695Aux04zTL1o3TxYe', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-10-18 14:32:05', '2023-10-18 14:32:05');
INSERT INTO `users` VALUES (6, 'Dương', 'Nguyễn', 'hello@gmail.com', NULL, '$2y$10$dME4a.OgeG/.WKoQonZoGuc9z2tO.N.LCMyPhNcQPmlDcxfrYMWQy', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-10-18 14:34:51', '2023-10-18 14:34:51');
INSERT INTO `users` VALUES (7, 'Dương', 'Nguyễn', 'hjdinh12@gmail.com', NULL, '$2y$10$..ISAOkOx4sDhf/3kcB/bOO7S6KOyGKdOMOw4xHewdGv60zgOqNLG', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-10-18 14:37:37', '2023-10-18 14:37:37');
INSERT INTO `users` VALUES (8, 'ccc', 'hj idnh', 'vudinh999@gmail.com1', NULL, '$2y$10$c7KWtw9uQCTEo3xDHv3efuy4vi4wK8YI3qDTap5/39.E5qMhdYDIa', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-10-18 14:45:06', '2023-10-18 14:45:06');
INSERT INTO `users` VALUES (9, 'Dương', 'Nguyễn', 'vuvandinh203@gmail.com1', NULL, '$2y$10$0vMgy1G1CiGxPG3kpD/enuFlxl9Z4Bp.UpXxEiLpN/35GjQe4UEcC', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-10-18 14:54:06', '2023-10-18 14:54:06');
INSERT INTO `users` VALUES (10, 'Dương', 'Nguyễn', 'test@gmail.com', NULL, '$2y$10$lJOG8oPBRQwvfPmw2.m1eOf8YgDEjR61QIuKREafyNKVlHepQqC8G', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-11-04 09:16:20', '2023-11-04 09:16:20');

-- ----------------------------
-- Table structure for variant_values
-- ----------------------------
DROP TABLE IF EXISTS `variant_values`;
CREATE TABLE `variant_values`  (
  `product_id` bigint UNSIGNED NOT NULL,
  `variant_id` int NULL DEFAULT NULL,
  `option_id` int NULL DEFAULT NULL,
  `value_id` int NULL DEFAULT NULL,
  INDEX `product_id`(`product_id` ASC, `variant_id` ASC) USING BTREE,
  INDEX `product_id_2`(`product_id` ASC, `option_id` ASC) USING BTREE,
  INDEX `option_id`(`option_id` ASC, `value_id` ASC) USING BTREE,
  CONSTRAINT `variant_values_ibfk_1` FOREIGN KEY (`product_id`, `variant_id`) REFERENCES `product_variants` (`product_id`, `variant_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `variant_values_ibfk_2` FOREIGN KEY (`product_id`, `option_id`) REFERENCES `product_options` (`product_id`, `option_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `variant_values_ibfk_3` FOREIGN KEY (`option_id`, `value_id`) REFERENCES `option_values` (`option_id`, `value_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of variant_values
-- ----------------------------
INSERT INTO `variant_values` VALUES (21, 1, 1, 2);
INSERT INTO `variant_values` VALUES (21, 2, 2, 4);

SET FOREIGN_KEY_CHECKS = 1;
