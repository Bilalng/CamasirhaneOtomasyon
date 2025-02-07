/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : camasirhane

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 05/12/2024 14:42:54
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
INSERT INTO `cache` VALUES ('33d4b712519ca587be562d38dd21a670c8653294', 'i:1;', 1733062562);
INSERT INTO `cache` VALUES ('33d4b712519ca587be562d38dd21a670c8653294:timer', 'i:1733062562;', 1733062562);
INSERT INTO `cache` VALUES ('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1733049565);
INSERT INTO `cache` VALUES ('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1733049565;', 1733049565);
INSERT INTO `cache` VALUES ('cf0c63bd6dda7699c8f555075b760936d3de63c3', 'i:1;', 1733341734);
INSERT INTO `cache` VALUES ('cf0c63bd6dda7699c8f555075b760936d3de63c3:timer', 'i:1733341734;', 1733341734);
INSERT INTO `cache` VALUES ('filament_navigation', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:1;s:5:\"title\";s:16:\"Genel Görünüm\";s:4:\"icon\";s:15:\"heroicon-m-home\";s:11:\"active_icon\";s:15:\"heroicon-o-home\";s:3:\"uri\";s:1:\"/\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:-1;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:49:09\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:1;s:5:\"title\";s:16:\"Genel Görünüm\";s:4:\"icon\";s:15:\"heroicon-m-home\";s:11:\"active_icon\";s:15:\"heroicon-o-home\";s:3:\"uri\";s:1:\"/\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:-1;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:49:09\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:7;s:5:\"title\";s:14:\"Yurt Yönetimi\";s:4:\"icon\";s:28:\"heroicon-c-building-office-2\";s:11:\"active_icon\";N;s:3:\"uri\";s:8:\"/yonetim\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:-1;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-10-14 13:20:56\";s:10:\"updated_at\";s:19:\"2024-10-14 13:36:11\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:7;s:5:\"title\";s:14:\"Yurt Yönetimi\";s:4:\"icon\";s:28:\"heroicon-c-building-office-2\";s:11:\"active_icon\";N;s:3:\"uri\";s:8:\"/yonetim\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:-1;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-10-14 13:20:56\";s:10:\"updated_at\";s:19:\"2024-10-14 13:36:11\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:2;s:5:\"title\";s:5:\"Admin\";s:4:\"icon\";s:24:\"heroicon-o-document-text\";s:11:\"active_icon\";N;s:3:\"uri\";s:8:\"/yonetim\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:-1;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-14 13:21:03\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:2;s:5:\"title\";s:5:\"Admin\";s:4:\"icon\";s:24:\"heroicon-o-document-text\";s:11:\"active_icon\";N;s:3:\"uri\";s:8:\"/yonetim\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:-1;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-14 13:21:03\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:3;s:5:\"title\";s:14:\"Menü Yönetim\";s:4:\"icon\";s:33:\"heroicon-c-adjustments-horizontal\";s:11:\"active_icon\";s:29:\"heroicon-o-bars-3-bottom-left\";s:3:\"uri\";s:5:\"/menu\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:50:06\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:3;s:5:\"title\";s:14:\"Menü Yönetim\";s:4:\"icon\";s:33:\"heroicon-c-adjustments-horizontal\";s:11:\"active_icon\";s:29:\"heroicon-o-bars-3-bottom-left\";s:3:\"uri\";s:5:\"/menu\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:50:06\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:4;s:5:\"title\";s:14:\"Kullanıcılar\";s:4:\"icon\";s:16:\"heroicon-c-users\";s:11:\"active_icon\";s:15:\"heroicon-o-user\";s:3:\"uri\";s:6:\"/users\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:50:23\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:4;s:5:\"title\";s:14:\"Kullanıcılar\";s:4:\"icon\";s:16:\"heroicon-c-users\";s:11:\"active_icon\";s:15:\"heroicon-o-user\";s:3:\"uri\";s:6:\"/users\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:50:23\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:6;s:5:\"title\";s:8:\"İzinler\";s:4:\"icon\";s:22:\"heroicon-o-lock-closed\";s:11:\"active_icon\";s:22:\"heroicon-o-lock-closed\";s:3:\"uri\";s:12:\"/permissions\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:45:25\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:6;s:5:\"title\";s:8:\"İzinler\";s:4:\"icon\";s:22:\"heroicon-o-lock-closed\";s:11:\"active_icon\";s:22:\"heroicon-o-lock-closed\";s:3:\"uri\";s:12:\"/permissions\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:45:25\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:5;s:5:\"title\";s:6:\"Roller\";s:4:\"icon\";s:21:\"heroicon-o-user-group\";s:11:\"active_icon\";s:21:\"heroicon-o-user-group\";s:3:\"uri\";s:6:\"/roles\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:45:33\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:5;s:5:\"title\";s:6:\"Roller\";s:4:\"icon\";s:21:\"heroicon-o-user-group\";s:11:\"active_icon\";s:21:\"heroicon-o-user-group\";s:3:\"uri\";s:6:\"/roles\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:2;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2024-10-14 12:35:30\";s:10:\"updated_at\";s:19:\"2024-10-15 10:45:33\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:5:\"title\";s:18:\"Öğrenci Yönetim\";s:4:\"icon\";s:23:\"heroicon-c-academic-cap\";s:11:\"active_icon\";N;s:3:\"uri\";s:17:\"/yonetim/ogrencis\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:7;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-10-15 13:52:37\";s:10:\"updated_at\";s:19:\"2024-10-16 17:24:51\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:5:\"title\";s:18:\"Öğrenci Yönetim\";s:4:\"icon\";s:23:\"heroicon-c-academic-cap\";s:11:\"active_icon\";N;s:3:\"uri\";s:17:\"/yonetim/ogrencis\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:7;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2024-10-15 13:52:37\";s:10:\"updated_at\";s:19:\"2024-10-16 17:24:51\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:10;s:5:\"title\";s:10:\"Randevular\";s:4:\"icon\";s:30:\"heroicon-c-calendar-date-range\";s:11:\"active_icon\";N;s:3:\"uri\";s:16:\"/yonetim/randevu\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:7;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-10-17 11:53:10\";s:10:\"updated_at\";s:19:\"2024-10-17 13:21:44\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:10;s:5:\"title\";s:10:\"Randevular\";s:4:\"icon\";s:30:\"heroicon-c-calendar-date-range\";s:11:\"active_icon\";N;s:3:\"uri\";s:16:\"/yonetim/randevu\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:7;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2024-10-17 11:53:10\";s:10:\"updated_at\";s:19:\"2024-10-17 13:21:44\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:51:\"SolutionForest\\FilamentAccessManagement\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"filament_menu\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:8;s:5:\"title\";s:21:\"Çamaşır Makineleri\";s:4:\"icon\";s:23:\"iconpark-washingmachine\";s:11:\"active_icon\";N;s:3:\"uri\";s:16:\"/yonetim/makines\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:7;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-10-14 13:24:03\";s:10:\"updated_at\";s:19:\"2024-10-17 13:21:44\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:8;s:5:\"title\";s:21:\"Çamaşır Makineleri\";s:4:\"icon\";s:23:\"iconpark-washingmachine\";s:11:\"active_icon\";N;s:3:\"uri\";s:16:\"/yonetim/makines\";s:17:\"is_filament_panel\";i:1;s:5:\"badge\";N;s:11:\"badge_color\";N;s:9:\"parent_id\";i:7;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2024-10-14 13:24:03\";s:10:\"updated_at\";s:19:\"2024-10-17 13:21:44\";}s:10:\"\0*\0changes\";a:0:{}s:5:\"casts\";a:1:{s:17:\"is_filament_panel\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:8:\"fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"icon\";i:2;s:11:\"active_icon\";i:3;s:3:\"uri\";i:4;s:17:\"is_filament_panel\";i:5;s:5:\"badge\";i:6;s:11:\"badge_color\";i:7;s:9:\"parent_id\";i:8;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1733351834);

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
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for filament_menu
-- ----------------------------
DROP TABLE IF EXISTS `filament_menu`;
CREATE TABLE `filament_menu`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active_icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_filament_panel` tinyint(1) NOT NULL DEFAULT 0,
  `badge` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `badge_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` bigint NOT NULL DEFAULT -1,
  `order` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of filament_menu
-- ----------------------------
INSERT INTO `filament_menu` VALUES (1, 'Genel Görünüm', 'heroicon-m-home', 'heroicon-o-home', '/', 1, NULL, NULL, -1, 1, '2024-10-14 12:35:30', '2024-10-15 10:49:09');
INSERT INTO `filament_menu` VALUES (2, 'Admin', 'heroicon-o-document-text', NULL, '/yonetim', 1, NULL, NULL, -1, 3, '2024-10-14 12:35:30', '2024-10-14 13:21:03');
INSERT INTO `filament_menu` VALUES (3, 'Menü Yönetim', 'heroicon-c-adjustments-horizontal', 'heroicon-o-bars-3-bottom-left', '/menu', 1, NULL, NULL, 2, 1, '2024-10-14 12:35:30', '2024-10-15 10:50:06');
INSERT INTO `filament_menu` VALUES (4, 'Kullanıcılar', 'heroicon-c-users', 'heroicon-o-user', '/users', 1, NULL, NULL, 2, 2, '2024-10-14 12:35:30', '2024-10-15 10:50:23');
INSERT INTO `filament_menu` VALUES (5, 'Roller', 'heroicon-o-user-group', 'heroicon-o-user-group', '/roles', 1, NULL, NULL, 2, 4, '2024-10-14 12:35:30', '2024-10-15 10:45:33');
INSERT INTO `filament_menu` VALUES (6, 'İzinler', 'heroicon-o-lock-closed', 'heroicon-o-lock-closed', '/permissions', 1, NULL, NULL, 2, 3, '2024-10-14 12:35:30', '2024-10-15 10:45:25');
INSERT INTO `filament_menu` VALUES (7, 'Yurt Yönetimi', 'heroicon-c-building-office-2', NULL, '/yonetim', 1, NULL, NULL, -1, 2, '2024-10-14 13:20:56', '2024-10-14 13:36:11');
INSERT INTO `filament_menu` VALUES (8, 'Çamaşır Makineleri', 'iconpark-washingmachine', NULL, '/yonetim/makines', 1, NULL, NULL, 7, 3, '2024-10-14 13:24:03', '2024-10-17 13:21:44');
INSERT INTO `filament_menu` VALUES (9, 'Öğrenci Yönetim', 'heroicon-c-academic-cap', NULL, '/yonetim/ogrencis', 1, NULL, NULL, 7, 1, '2024-10-15 13:52:37', '2024-10-16 17:24:51');
INSERT INTO `filament_menu` VALUES (10, 'Randevular', 'heroicon-c-calendar-date-range', NULL, '/yonetim/randevu', 1, NULL, NULL, 7, 2, '2024-10-17 11:53:10', '2024-10-17 13:21:44');

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
-- Table structure for makines
-- ----------------------------
DROP TABLE IF EXISTS `makines`;
CREATE TABLE `makines`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of makines
-- ----------------------------
INSERT INTO `makines` VALUES (1, 'MAKİNE1', 1, '2024-10-14 13:25:52', '2024-11-29 20:12:45');
INSERT INTO `makines` VALUES (2, 'MAKİNE2', 1, '2024-10-14 13:48:26', '2024-12-04 22:50:54');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_10_14_123530_create_filament_admin_tables', 2);
INSERT INTO `migrations` VALUES (5, '2024_10_14_123531_upgrade_menu_table', 2);
INSERT INTO `migrations` VALUES (6, '2024_10_14_123821_create_makines_table', 3);
INSERT INTO `migrations` VALUES (7, '2024_10_14_170737_create_ogrencis_table', 4);
INSERT INTO `migrations` VALUES (8, '2024_10_14_171820_create_personal_access_tokens_table', 4);
INSERT INTO `migrations` VALUES (9, '2024_10_16_204843_create_randevus_table', 5);
INSERT INTO `migrations` VALUES (10, '2024_10_19_144950_create_randevu_settings_table', 6);
INSERT INTO `migrations` VALUES (11, '2024_10_19_172100_add_time_for_activation_to_randevu_settings_table', 7);
INSERT INTO `migrations` VALUES (12, '2024_10_29_014347_update_saat', 8);
INSERT INTO `migrations` VALUES (15, '2024_10_29_020224_update_saat_aralik', 9);
INSERT INTO `migrations` VALUES (16, '2024_11_29_185244_add_is_active_to_makines_table', 10);
INSERT INTO `migrations` VALUES (17, '2024_11_30_211846_rename_columns_in_randevu_settings_table', 11);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 3);

-- ----------------------------
-- Table structure for ogrencis
-- ----------------------------
DROP TABLE IF EXISTS `ogrencis`;
CREATE TABLE `ogrencis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blok_ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oda_numarasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ogrencis_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 216 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ogrencis
-- ----------------------------
INSERT INTO `ogrencis` VALUES (2, 'faruk', 'tunç', 'faruktunc@test.com', '$2y$12$fYr6dYlAMf.Zx0tGj.woUuCikdqtr7QQeP7MqTudQ7eMzRqgyXw8O', 'A Blok', '101', '2024-10-14 17:49:38', '2024-10-16 15:57:03');
INSERT INTO `ogrencis` VALUES (3, 'faruk', 'tunç2', 'faruktunc2@test.com', '$2y$12$zQmkrUoOLNkrgBRJdhwZCuShy0ndQLa0NmyJwAaHPjj/DAwc/zlLW', 'B Blok', '105', '2024-10-15 14:13:28', '2024-10-16 15:57:07');
INSERT INTO `ogrencis` VALUES (5, 'Bilal', 'Gökşen', 'bilalgoksen@test.com', '$2y$12$irOccAmGleFZBLXYG95NMOrXoyhPpWdTHquo2BB3f2nMCe2.Q3cRG', 'B Blok', '105', '2024-10-15 14:25:42', '2024-10-16 16:19:43');
INSERT INTO `ogrencis` VALUES (6, 'Ömer Faruk', 'Tunç', 'omerfaruktunc407@gmail.com', '$2y$12$E5ekqiLDJ0Vcjh2DdEEt5uvWZvinBm4CLrnf0sEyk5OfPm5TBMqIC', 'B Blok', '105', '2024-10-16 15:36:04', '2024-10-16 15:57:09');
INSERT INTO `ogrencis` VALUES (114, 'Sinem', 'Karaböcek', 'abaci.ahmet@example.net', '$2y$12$cg5hLatWpXHUzmZdX6J/VO3mftlJiciQ6NvnNfAnjk31FhH3K42A6', 'B Blok', '406', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (115, 'İrem', 'Akaydın', 'samanci.alp@example.com', '$2y$12$EnljF1TbPdip8Zow6jG7eehFFNqziJFEngSgKj1UCxzlKujrg.Gq.', 'C Blok', '427', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (116, 'Ebru', 'Tütüncü', 'esma.kulaksizoglu@example.net', '$2y$12$JpaHBs3R2CzTHO/YfeElWel5Ictd3AVa70lcNxFcSNJOS86B36PnG', 'D Blok', '181', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (117, 'İrem', 'Sadıklar', 'ozkok.ebru@example.org', '$2y$12$l6q47k.L692p9NOevSM21eCRKj9Qa0IZQeVupvWSn5bm5nm8HHEkm', 'A Blok', '220', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (118, 'Ebru', 'Süleymanoğlu', 'tahincioglu.utku@example.com', '$2y$12$vxPxuq4j9yPosuVYsOkOWOuS2MXVy41LJP7swe4z4G.K.4SsgfTFi', 'C Blok', '405', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (119, 'Ümran', 'Ağaoğlu', 'karaduman.emirhan@example.org', '$2y$12$hV7A9Cib0OYA7OB8ivaoI.ObZtSkwvkUQR9I6oIMDSoRI7QEXFTuK', 'A Blok', '154', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (120, 'Ada', 'Ekici', 'sandalci.burcu@example.net', '$2y$12$NGoYCKHKNsu49YJKz0Ba..hvH6Bn4KNQDNbOgey2zYv8vHMC6NbaO', 'A Blok', '253', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (121, 'Ümran', 'Arslanoğlu', 'sadiklar.gorkem@example.com', '$2y$12$7GGQUYRFXK6w3cL7et.c7OiDkj4kR1quhxH/HCZjL15heb7jAAPv6', 'A Blok', '459', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (122, 'Ebru', 'Nalbantoğlu', 'ece.duygulu@example.org', '$2y$12$IWVGPBFGX9qLLKTKaxBD0OtmUVjWWxXRbWTuyI9leTUaHQtDedRHO', 'C Blok', '321', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (123, 'Rüya', 'Bakırcıoğlu', 'ruya.kocabiyik@example.net', '$2y$12$QMFWtG63zW3WXSLnAMK1JefAU3PBiHvkV0feHy7geRubzDmOyQ45a', 'A Blok', '110', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (124, 'Ebru', 'Beşerler', 'balci.cagan@example.com', '$2y$12$Oi2muGPihiTGkoFKI3hCIuHgDDmE6lUx7VQvmKOQY9igWGHEQh..u', 'C Blok', '326', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (125, 'Ebru', 'Bakırcıoğlu', 'oozdenak@example.com', '$2y$12$nRMLVFcym0Wix9Gkw8MLguHDAbuH7pM78V48thmBF8rrgYAY51gvK', 'B Blok', '318', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (126, 'Ada', 'Gümüşpala', 'vkormukcu@example.net', '$2y$12$r1A7NEzYdsab3.kkQPrFB.3JF9nlscrhcu8MH0awiLqsz2AGAaCz6', 'D Blok', '113', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (127, 'Ada', 'Kocabıyık', 'umran.tokatlioglu@example.org', '$2y$12$TE7uGtdEnPlOQ/ird4anvuiRqLOST726uwiBRA3.Tpvic85QaSW3G', 'A Blok', '348', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (128, 'Ada', 'Ertepınar', 'mert64@example.com', '$2y$12$OMgjcClyI7.0ugnSoeq1me7NccoUTItUHrR8p28kPOchMlq57cJ26', 'B Blok', '493', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (129, 'Burcu', 'Mayhoş', 'esma.denkel@example.org', '$2y$12$HTBFn0nWHZ6n2LUuQNXZ..MIBbsCuhijAgkRAO5hgdkwupO7eOryu', 'C Blok', '511', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (130, 'İrem', 'Pektemek', 'ruya14@example.com', '$2y$12$x0gSzAugukiQvG1w/VpeEOOqpQasYoLA8zdjk31EoVotcoRQ6w6AO', 'C Blok', '432', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (131, 'Ebru', 'Önür', 'sakisik@example.net', '$2y$12$xEIZZ7ys058lSJFp.I6fSufIhg24bVOs17nx4i7ISH2jq7DQMATYm', 'A Blok', '414', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (132, 'Şahnur', 'Kıraç', 'xtanrikulu@example.net', '$2y$12$pAugaqGAeu.9ISP7PlnYo.0HhxaryBTGqoRXs5nKw9lHgg.g7gySO', 'C Blok', '432', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (133, 'Ada', 'Erberk', 'tokatlioglu.esma@example.net', '$2y$12$QgD.VWtdXLcHCmgnkL.Yte6/S/U/GnUbRkCyVZkuHMZ.rQ2Bdea0u', 'D Blok', '461', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (134, 'Ece', 'Ozansoy', 'felmastasoglu@example.net', '$2y$12$zJ21VaR36rAdZfQUPD8H1uMJhy48iWYHvzoQ6zAvh1PIrfRHYMuea', 'D Blok', '340', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (135, 'İrem', 'Kıraç', 'emir17@example.org', '$2y$12$K29jKWCOlX2kyK.HGi9SJuncmeUjtoRmlsR1HZqP0meZFH8yVekm.', 'D Blok', '388', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (136, 'İrem', 'Bakırcıoğlu', 'tutuncu.sinem@example.com', '$2y$12$57dJumeoTLg.69V1Gd2Fx.1KpTigKiYO67BJ1uzEZQY/hSZdZqZLy', 'A Blok', '435', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (137, 'Rüya', 'Kılıççı', 'numanoglu.ruya@example.org', '$2y$12$ywxcdYjUUPMd3NadZ69kFeve.u2S8YquKKZu7cv2HQoT0LE.1X6HK', 'D Blok', '159', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (138, 'Rüya', 'Kılıççı', 'gokturk.koc@example.com', '$2y$12$pZngkc2fCsZ5e62Y1Lc9AuaLg7d.URuzoltHdK74VKrRnd/7HeLIe', 'C Blok', '217', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (139, 'Ümran', 'Çapanoğlu', 'babaoglu.berkay@example.org', '$2y$12$xCI16CYsiQIESx1inlgxrOcZTMbaYRmGy7MpovwcapW3cwWMXZswW', 'A Blok', '519', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (140, 'Emel', 'Barbarosoğlu', 'kaplangi.armagan@example.org', '$2y$12$AA29E4qGcWu8alj2gsFhxeAygujdVyDAy1fcNAxce1p7f289Ku74y', 'D Blok', '204', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (141, 'Emel', 'Limoncuoğlu', 'ozkok.esma@example.com', '$2y$12$o50tKQ.OXzQ9qycFjFaipO9k5Hlh8LM2NNYSeXa9T0Mc8FwN79Sgu', 'B Blok', '515', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (142, 'Ümran', 'Eronat', 'xerez@example.net', '$2y$12$1/weoIOanAqBXdmqD7weZeCu1bKm7bTWKU4Tt5W7RUdSXwOaWkoty', 'B Blok', '190', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (143, 'Ece', 'Kunter', 'esma.kutlay@example.com', '$2y$12$ag1QU5Z3IykVOhoNbJ5VjuP1VMTdh3Ax0hvG66g.SQjBjgrfyTDhW', 'D Blok', '543', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (144, 'Burcu', 'Saygıner', 'esma89@example.com', '$2y$12$a2ljfaRZhj3ACjuXxNYVi.1ITYO5QJBYTWodOEx3eEk9czRCjqI0K', 'A Blok', '369', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (145, 'Sinem', 'Adan', 'esma57@example.com', '$2y$12$lPvr5C8YduNoHWQjuql0Bu7G.OSRj5LdrokkA5zgM3Mws6YvZeyji', 'B Blok', '425', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (146, 'Esma', 'Çevik', 'umran11@example.com', '$2y$12$nFqPEfVvvfv1BxcmYhr9sOUFssSoHTqCa4I5J4cPK0n.79X1xA706', 'D Blok', '556', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (147, 'Esma', 'Kahveci', 'hpektemek@example.net', '$2y$12$PSNR59PE0RGzrFntuplKruv/LJZvn1N7Vjg1/o1AGTHkWolklYrYm', 'C Blok', '469', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (148, 'Rüya', 'Elçiboğa', 'sinem89@example.com', '$2y$12$Xi6qZ13GPo8a6.9EJDqP5uBc3LNqD0c00FoWhajB/fUwfXv.YPfma', 'D Blok', '149', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (149, 'Esma', 'Tekelioğlu', 'tunaboylu.mert@example.com', '$2y$12$YQCjJrcq2VBZjeK3ObfLIer0AmBiXv8M77NrcVjkh7fJUoR59gD8G', 'A Blok', '538', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (150, 'Sinem', 'Evliyaoğlu', 'baykac@example.com', '$2y$12$DBn1NHjTHX4F2BJBOXpFw.Q8XGsA5LZMQTc/MngmcP/U7nchiQpJ6', 'D Blok', '216', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (151, 'Burcu', 'Karaduman', 'turkyilmaz.emre@example.net', '$2y$12$LIlVTG9jrI2rQzYoVgWafO3Hdn0YmTtFzoRaUCZcGP7DyiGvt4hn.', 'A Blok', '478', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (152, 'İrem', 'Çevik', 'zbalci@example.net', '$2y$12$8DifxCNPrbyz8vgCP1dcYOaOizHTBMixvb0Zy33jz14/G/JoWIyMC', 'B Blok', '118', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (153, 'Esma', 'Adan', 'bartu13@example.com', '$2y$12$PEGSW1D4zrX3F0vt442cJu0sGTROuhI6mxmVAmRzDiV36SDnMtas.', 'A Blok', '162', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (154, 'Rüya', 'Çetiner', 'gorkem.kocoglu@example.net', '$2y$12$UX6LvDtGJCvBWTQHLY06cOukip.2xkFTZ/WsejrT1WEsXOisEdKNy', 'A Blok', '511', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (155, 'Ada', 'Tekelioğlu', 'odurmaz@example.com', '$2y$12$uYHzTg63hs6BGSt8czRC4u8bygsqqzlF2NefLZdM6mAB15lXIKpHq', 'B Blok', '555', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (156, 'Ece', 'Numanoğlu', 'akay.askin@example.com', '$2y$12$3p/.BL95rhxNJobQ4mjWceAaEBaVqRM2y84Uyqy3loRiKhGmRxx5G', 'A Blok', '549', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (157, 'Şahnur', 'Kaplangı', 'sinem50@example.net', '$2y$12$b6OfeOWqZlYZBUrGgQ7LGeGSt4tz.iUy/LMWj9DBZ80a740xMLtdG', 'D Blok', '591', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (158, 'Ada', 'Özgörkey', 'ekunt@example.org', '$2y$12$3x5ZjKVGswWf8uV/.mrRHO28uCfJDa2/q236ax3ISKpSQcPwR1MqW', 'C Blok', '167', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (159, 'Burcu', 'Korol', 'sahnur42@example.com', '$2y$12$bWZifRz1MyDD4F0YZrOCyuObSgC6ehIXyYHrC4.bYiwhw5FYi5FwG', 'D Blok', '370', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (160, 'Emel', 'Dalkıran', 'yetkiner.ece@example.net', '$2y$12$pV1cb2wa1HLnUWl1Zl1nWuJug30yZ/zJba2TafDfnOt4yuQ1riUge', 'C Blok', '213', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (161, 'Şahnur', 'Özdoğan', 'kocoglu.kutay@example.org', '$2y$12$FvBE23YzJysAXSD8pr3Q7eWemXEETN7V5y7CYzlTQTbADszHBe9s2', 'B Blok', '185', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (162, 'Şahnur', 'Erberk', 'ercetin.koray@example.net', '$2y$12$s3oc7XPFyGiRElgvqCzUReCmGhrsHeZBd/o.jsT4.FX2zzrajFVIu', 'D Blok', '331', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (163, 'Sinem', 'Tekand', 'kavaklioglu.esma@example.org', '$2y$12$rPF8/h126CVr8PWz5HA2D.IHZ.MM45b2roavveSnFKbXGFzxkYl7O', 'C Blok', '371', '2024-10-16 16:29:41', '2024-10-16 16:29:41');
INSERT INTO `ogrencis` VALUES (164, 'TEST', 'ÖĞRENCİ', 'testogrenci@test.com', '$2y$12$XLwZ8iGOrbCKk1nC6rtzNuEDBXi6z/FPKV6FNYdGDI57yx8RmP8yS', 'B Blok', '124', '2024-10-16 16:54:39', '2024-10-16 16:54:39');
INSERT INTO `ogrencis` VALUES (165, 'İrem', 'Alyanak', 'askin61@example.org', '$2y$12$hpqFoV81Y4OOqo9qRSsKFuvsyFCruObc/ZUOw1TKazCliHcdP3jzm', 'A Blok', '598', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (166, 'Emel', 'Dağdaş', 'irem.akal@example.net', '$2y$12$25dLE0jB36ADSCAm1jixhuiNfreKahberdyqmVHW4s9Gwn/aDebKS', 'A Blok', '225', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (167, 'Ece', 'Okur', 'yildizoglu.burcu@example.net', '$2y$12$VcMoWEbOY5WfPPxNGYWBg.7Xzpq9nxLqI8fVxhCi9yJNKShVcxqJu', 'C Blok', '135', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (168, 'Ebru', 'Durmaz', 'tugluk.baran@example.net', '$2y$12$Adl5oh9kkmXTe.8GK6rN0.jX.FPSvUFpPeFnYYf5RudXAsLKxGOh.', 'D Blok', '434', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (169, 'Ece', 'Orbay', 'kececi.ahmet@example.org', '$2y$12$FNbzcV7Uus.bpu/QjF/fu.7DOn/d1ly5EoGhaFYP8RgGpi8Lh06pG', 'D Blok', '519', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (170, 'Sinem', 'Koçoğlu', 'lduygulu@example.com', '$2y$12$PqsjN3AAQWMWDTlcEoANAOMMBo10BylnA2rgOnFCyIBNOlBkpPYRq', 'C Blok', '317', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (171, 'Ebru', 'Özberk', 'cagan06@example.org', '$2y$12$kl9wE45CmjpXEnsrpDBwYOdjm1MevkB53zp0gHv75riZVUNlXPMmu', 'B Blok', '249', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (172, 'Ece', 'Yıldızoğlu', 'sahnur.yesilkaya@example.org', '$2y$12$VCArJIUhiNHvWeHU7cMTreK3hmHsEreuuBIveMM5RLWrBrriR9HaK', 'B Blok', '138', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (173, 'İrem', 'Öymen', 'akoyuncu@example.com', '$2y$12$CkC7B.vV.QHM5EgUwvyfv.eeSeQGNSFxxTrRYtf1TfDh3Gh6NXOhO', 'D Blok', '479', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (174, 'Şahnur', 'Adal', 'faybar@example.net', '$2y$12$JtzQ8VwLTJMT7hohu2Eduu1LJtpyJjvaFuXnG71QKx2.a8cIIaNkC', 'B Blok', '553', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (175, 'Ada', 'Özberk', 'gorkem.ozberk@example.com', '$2y$12$.iMD.O1pl.6h3iyQyaUCLe1h2uk0VaEcxwI3/9RlVJph4P99rkS2i', 'B Blok', '129', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (176, 'Emel', 'Adan', 'irem.karaer@example.org', '$2y$12$aCkoeeJLZirFl05KTpFLUOkDESJAKMrlWrLvxqr9VVWvMpef64vV.', 'D Blok', '300', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (177, 'Ada', 'Özbey', 'xtasci@example.com', '$2y$12$Jn6XMuswo/.HGHtG34MFfO1UmcsbK9IMomFMoqqXPiMvF/RjSeoN6', 'C Blok', '540', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (178, 'Ebru', 'Balcı', 'sinem.erbulak@example.com', '$2y$12$vlxsWOGv.eQlca7EAlCQH.PzPkdRh02LIe/6AYRGfudChdkq5ngcy', 'A Blok', '552', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (179, 'Emel', 'Kocabıyık', 'tanrikulu.atakan@example.com', '$2y$12$LhxJfXuj6zeq0DmxzEvouOEq7E3N6rjskDlMOPfx0tz1Heec//ZTe', 'B Blok', '464', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (180, 'Ada', 'Çevik', 'fdusenkalkar@example.net', '$2y$12$k.xdbE8ujhCnAWdcJ0AviuoqOG/LX.xaIuRmRPLXNVWgv5bLNTlJu', 'B Blok', '425', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (181, 'Rüya', 'Öymen', 'yasikoglu@example.net', '$2y$12$xMRLLS0201kPYMA3O0MaCeKTtm3qUwwGQkgswonH55lsgYXJO4hsu', 'B Blok', '189', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (182, 'Sinem', 'Akbulut', 'vdalkiran@example.com', '$2y$12$tTLPNZG4diZsoOWzHDdB3Owc9lVwpRxKfr1tA/voVc4uPUyyv790W', 'A Blok', '593', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (183, 'Ada', 'Elmastaşoğlu', 'ege.capanoglu@example.com', '$2y$12$qStrrd8m5613XHTT0VQ/tO20rHCxfOoCqnq6g.Bs8pv5G.sZvzkcO', 'A Blok', '361', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (184, 'İrem', 'Baturalp', 'jbicer@example.net', '$2y$12$qd0CBiofBOjOSDSKr7D2c.kYY9l4HzCz6uRgg4gAPrRuNsRFs33.u', 'C Blok', '350', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (185, 'Burcu', 'Öztonga', 'karaer.sahnur@example.org', '$2y$12$BSZuI.sgOlxrKNoP9znC5.cGdaILE3p.U/lBHAFqmGtoBlwPMnUhe', 'D Blok', '367', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (186, 'Burcu', 'Çapanoğlu', 'sahnur.berberoglu@example.net', '$2y$12$MV.OxzUaDVnW5PNtaW9RN.o1I.T03A0glk857/.1lRybuNMZhXKRG', 'B Blok', '336', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (187, 'Ümran', 'Önür', 'sinem67@example.org', '$2y$12$UbnmSswKMwAUh3NMVTRvR.3sL5fcrdq2.mxKjgKciVpYsnZaPnALC', 'B Blok', '426', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (188, 'İrem', 'Kuday', 'ada.bademci@example.org', '$2y$12$KzjwMalwi.EYE33VQn7.GuukvuHhiMjmDV.qAOb64zUetcgxPZ.MC', 'C Blok', '501', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (189, 'Burcu', 'Çörekçi', 'emir.demirbas@example.com', '$2y$12$HFdLWAzUOg95BVGxjNIk2OF7B7iY28QX46CL9PGUGMVuN1pnpXKVy', 'C Blok', '403', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (190, 'Şahnur', 'Özdenak', 'burcu30@example.net', '$2y$12$Y73SHDVgCzxqmMdjL97o3eYd7PnKFnvoGm6hG.kEOzyjrWqMOULTG', 'C Blok', '367', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (191, 'Ece', 'Kahveci', 'ece60@example.net', '$2y$12$OLdp9hvby8pC49yJrdpDQ.X.wqpBMXAIIo90t/zb1rA04KRQNJ0/e', 'B Blok', '220', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (192, 'Sinem', 'Egeli', 'yagiz.pekkan@example.net', '$2y$12$N.tJxOI1.HX4D9Rncv1LWuOCRUMKMuqwMKLT.Ay3iqrScfJ68y5I6', 'D Blok', '264', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (193, 'Emel', 'Yetkiner', 'daghan58@example.com', '$2y$12$Qz.7vssMQIlBIr6S4It8uOejMmBD.7EeK1JddWQuiqmXO1l/fmlqC', 'A Blok', '154', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (194, 'Ümran', 'Akar', 'burcu10@example.net', '$2y$12$rvlZJX2VyVcCN.CHiXPHQOjjiB3vsUa/mgJcHVPW2HbqGVqQSiXCu', 'D Blok', '132', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (195, 'Ebru', 'Eronat', 'emel77@example.net', '$2y$12$fI7zbQHc48Iqj..0teMkzefA9LdVJeCs7DpAq.0MklJz384.7GhUi', 'A Blok', '174', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (196, 'Burcu', 'Alyanak', 'emel.aksit@example.com', '$2y$12$u5WU0Xmwee3h3Wt7qxilr.0iQhzULD3JeWhTexnEQe1/3q2JE1Diq', 'A Blok', '383', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (197, 'Emel', 'Sandalcı', 'burcu.alniacik@example.com', '$2y$12$p.1HULH5/g6paS4MMV6FFekOv7zMpS26TwXYsHkcusCY3rzNLvOPe', 'D Blok', '401', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (198, 'Emel', 'Sepetçi', 'ruya.aclan@example.org', '$2y$12$CT3m.dVQPro5TxO8dpHQFeyeE1TxGisYQ9t4vwDN.NOxfM9VtghlC', 'D Blok', '515', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (199, 'Rüya', 'Dağlaroğlu', 'ruya78@example.net', '$2y$12$zT/0ND5RyGfemmTv9Hj9WuoqEf0GS6PKKIPuk5gbxjg3dPbl/Ir0G', 'C Blok', '306', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (200, 'Ümran', 'Eronat', 'irem.kahveci@example.org', '$2y$12$Fjs8ZBjT0ngthz08SraFNO9JX0xqxAxfU9KPI8/qgeF.FmZqaaifG', 'D Blok', '568', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (201, 'Şahnur', 'Velioğlu', 'ruya49@example.net', '$2y$12$8/s/tN.rqOEDFnIwukXvyOuY8xGPvjLy3JAm5.hR8lCL/YR77.hke', 'C Blok', '479', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (202, 'Şahnur', 'Karaer', 'tsarioglu@example.net', '$2y$12$gT7.epbTD9FgItmEfLeNBux3pMH7Zu4cOcwSmbzkvrLuEYWxn1zQW', 'B Blok', '403', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (203, 'Şahnur', 'Duygulu', 'dogan.berkay@example.com', '$2y$12$1H7tJlw1CVU6WAlEh9j9humqUiUGeJCw9hv7cEegFKiHuYNQegjUC', 'C Blok', '551', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (204, 'Şahnur', 'Yazıcı', 'htekelioglu@example.net', '$2y$12$TL6oq2p960v5Gx5cp2CYZ.bYgrVcr/BtmD6wQvaIcO4gzqUHAFOFO', 'D Blok', '106', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (205, 'Ebru', 'Nebioğlu', 'fahri.esma@example.org', '$2y$12$XGicgnGSy/n7XA1Z3gy6sOPqol7nbgbMxOj0v/oaiiOgXcg6akZF2', 'A Blok', '412', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (206, 'Rüya', 'Özbir', 'uca.meric@example.org', '$2y$12$EBxO.oulZEFLwsFRS0PSjO3YmNGXcRqNmhO2dQu8gtUvWCD78c4MK', 'A Blok', '484', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (207, 'Esma', 'Sandalcı', 'sahnur93@example.net', '$2y$12$EmKPmvmS5kpA8cRNVEnvtOlUQT084DlR.4FBSwh.oBjVtZfRq9Ls.', 'D Blok', '259', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (208, 'Şahnur', 'Kıraç', 'ece.dusenkalkar@example.com', '$2y$12$mVPep7bnl1Yy2KnUvwjrOee.gQzgUsA/2hcRoQzhLhKgkl3qeMGiG', 'A Blok', '191', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (209, 'Ebru', 'Erginsoy', 'ada.basoglu@example.net', '$2y$12$AV3GhMHAGodhwbG9eXhF5.7cHdmDRRFIYEQRj7KNu7klABcyx/gWe', 'C Blok', '385', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (210, 'Burcu', 'Yılmazer', 'efe.akgul@example.com', '$2y$12$bFBLae/pjulsiAu4Fpf7QuIhWgtfBbJwN9KZ9mByu09yVL7kgVAyW', 'B Blok', '544', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (211, 'Emel', 'Çapanoğlu', 'sarp.tuglu@example.com', '$2y$12$lEIIQDooROSJaSzB35.7Y.mjR5I1BusW03KY1am5QAAyU9LYh3i96', 'B Blok', '461', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (212, 'Ece', 'Berberoğlu', 'sorge@example.org', '$2y$12$XHDIEaPWndfyz9lrXNpgS.nN99xonLZygeoC0j1C/T077NyP/jJQq', 'D Blok', '477', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (213, 'Ümran', 'Sadıklar', 'utku.atakol@example.net', '$2y$12$4kOG8LnjAnZj7TAlEKa1JuT5ysT/u0PhzC5.wPx1YX/qd1A7e8DZC', 'A Blok', '132', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (214, 'Sinem', 'Adan', 'berke35@example.org', '$2y$12$hZ7tspi169BwhB6gnXY85.gO9YRUBncRVRTMVXYZ0iWp7WINIh1ay', 'D Blok', '340', '2024-11-28 14:59:45', '2024-11-28 14:59:45');
INSERT INTO `ogrencis` VALUES (215, 'Mami', 'SİNCAR', 'mamili@example.net', '$2y$12$E6HUch1c/Md5F51ZGCYZk.KU8fUn6v9ZBAeqVO6nVp1f..3Hiv6ku', 'B Blok', '303', '2024-12-03 22:48:40', '2024-12-03 22:50:32');

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
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'users.*', 'web', '/admin/users*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (2, 'users.viewAny', 'web', '/admin/users', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (3, 'users.view', 'web', '/admin/users/*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (4, 'users.create', 'web', '/admin/users/create', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (5, 'users.update', 'web', '/admin/users/*/edit', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (6, 'roles.*', 'web', '/admin/roles*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (7, 'roles.viewAny', 'web', '/admin/users', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (8, 'roles.view', 'web', '/admin/users/*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (9, 'roles.create', 'web', '/admin/users/create', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (10, 'roles.update', 'web', '/admin/users/*/edit', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (11, 'permissions.*', 'web', '/admin/permissions*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (12, 'permissions.viewAny', 'web', '/admin/permissions', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (13, 'permissions.view', 'web', '/admin/permissions/*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (14, 'permissions.create', 'web', '/admin/permissions/create', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (15, 'permissions.update', 'web', '/admin/permissions/*/edit', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (16, 'menu.*', 'web', '/admin/menu*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (17, 'menu.viewAny', 'web', '/admin/menu', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (18, 'menu.view', 'web', '/admin/menu/*', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `permissions` VALUES (19, 'menu.create', 'web', '/admin/menu/create', '2024-10-14 12:35:30', '2024-10-14 12:35:30');
INSERT INTO `permissions` VALUES (20, 'menu.update', 'web', '/admin/menu/*/edit', '2024-10-14 12:35:30', '2024-10-14 12:35:30');
INSERT INTO `permissions` VALUES (21, 'anasayfa', 'web', '/admin', '2024-10-14 13:07:40', '2024-10-14 13:09:56');
INSERT INTO `permissions` VALUES (22, 'yonetim.*', 'web', 'admin/yonetim*', '2024-10-14 13:45:54', '2024-10-14 13:45:54');

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\Ogrenci', 2, 'api-token', '381d53036394500c49ec1d828e512fbd209eea920042d4239a53879c773c3688', '[\"*\"]', '2024-11-28 11:18:37', NULL, '2024-10-14 17:50:32', '2024-11-28 11:18:37');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\Ogrenci', 6, 'api-token', 'd4c52f0ff4ea60e591a869a8d689f76da3ec634c3058f3a449a1a36103c312a0', '[\"*\"]', NULL, NULL, '2024-10-16 15:47:35', '2024-10-16 15:47:35');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\Ogrenci', 114, 'api-token', '17ad9b151f5340c899458231f3ae111c699d60d8ea3b3b64c2531015efa745d2', '[\"*\"]', NULL, NULL, '2024-11-30 18:50:19', '2024-11-30 18:50:19');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\Ogrenci', 114, 'api-token', '914ccb1233a54063d8a5587b209bb363a083b2c738ece6f55e130a9cb22e4b6f', '[\"*\"]', NULL, NULL, '2024-11-30 18:52:09', '2024-11-30 18:52:09');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\Ogrenci', 114, 'api-token', '2ef9adbc13ec54d7444098a65a1eb0791e2fb4192b8772e4d8725feca9efcc42', '[\"*\"]', NULL, NULL, '2024-11-30 19:34:04', '2024-11-30 19:34:04');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\Ogrenci', 114, 'api-token', 'f0c5b63c2e6e8285d31206d803ebd578d86da809def9969c7ad1d4baa87bbd50', '[\"*\"]', NULL, NULL, '2024-11-30 19:35:57', '2024-11-30 19:35:57');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\Ogrenci', 114, 'api-token', 'b73fffd04f458565965d136c66fb0a4bee0c760d02ba6cd194c5778f4f0b198d', '[\"*\"]', NULL, NULL, '2024-11-30 19:39:42', '2024-11-30 19:39:42');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\Ogrenci', 114, 'api-token', '6e1469453cd00f938b9e9326ab51876481c7cd17f4a4b12c743b477f9a6893ac', '[\"*\"]', NULL, NULL, '2024-12-02 23:45:30', '2024-12-02 23:45:30');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\Ogrenci', 114, 'api-token', 'e6041322f88c486645cbcd39008a6c7ab35f7ab185b9a8add5a4693ffe69ff76', '[\"*\"]', NULL, NULL, '2024-12-02 23:47:40', '2024-12-02 23:47:40');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\Ogrenci', 114, 'api-token', '28e67b48107964badb00fec13dc75f2ef8f84a4a13fcdb3a74071829bbedd60d', '[\"*\"]', NULL, NULL, '2024-12-02 23:52:57', '2024-12-02 23:52:57');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\Ogrenci', 114, 'api-token', 'ae9b25c4104330debad6bca3375e5ccdb2566b6e9b318319368597f62cbb3979', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:23', '2024-12-02 23:57:23');
INSERT INTO `personal_access_tokens` VALUES (22, 'App\\Models\\Ogrenci', 114, 'api-token', 'b079b68c329e12116ac1b6b96460d4e307752547e7d7a23e02486af8241ccc92', '[\"*\"]', '2024-12-05 09:41:22', NULL, '2024-12-04 15:02:35', '2024-12-05 09:41:22');
INSERT INTO `personal_access_tokens` VALUES (25, 'App\\Models\\Ogrenci', 215, 'api-token', '9ccc079cc74c2a2ec6f48b176fa5afc859409d68bb5b43a313f68feaac473c8f', '[\"*\"]', '2024-12-05 09:43:22', NULL, '2024-12-04 23:21:08', '2024-12-05 09:43:22');

-- ----------------------------
-- Table structure for randevu_settings
-- ----------------------------
DROP TABLE IF EXISTS `randevu_settings`;
CREATE TABLE `randevu_settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `monday` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `tuesday` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `wednesday` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `thursday` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `friday` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `saturday` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `sunday` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_for_activation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of randevu_settings
-- ----------------------------
INSERT INTO `randevu_settings` VALUES (5, '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"12:00:00\",\"end_time\":\"14:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"}]', '[{\"start_time\":\"10:00:00\",\"end_time\":\"11:00:00\"}]', '[]', '[]', '[]', '[]', '2024-10-12 17:25:08', '2024-10-12 17:25:08', '2024-10-13 23:59:59');
INSERT INTO `randevu_settings` VALUES (7, '[]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"}]', '[]', '[]', '[]', '[]', '[]', '2024-10-12 17:26:34', '2024-10-12 17:26:34', '2024-10-13 23:59:59');
INSERT INTO `randevu_settings` VALUES (8, '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"}]', '2024-10-12 17:53:57', '2024-10-12 17:53:57', '2024-10-13 23:59:59');
INSERT INTO `randevu_settings` VALUES (9, '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"}]', '2024-10-19 17:55:08', '2024-10-19 17:55:08', '2024-10-20 23:59:59');
INSERT INTO `randevu_settings` VALUES (10, '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"15:00:00\",\"end_time\":\"17:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"19:00:00\",\"end_time\":\"21:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"},{\"start_time\":\"17:00:00\",\"end_time\":\"19:00:00\"},{\"start_time\":\"21:00:00\",\"end_time\":\"23:00:00\"}]', '[]', '[{\"start_time\":\"08:00:00\",\"end_time\":\"10:00:00\"},{\"start_time\":\"10:00:00\",\"end_time\":\"12:00:00\"},{\"start_time\":\"13:00:00\",\"end_time\":\"15:00:00\"}]', '2024-10-19 18:04:35', '2024-10-19 18:04:35', '2024-10-20 23:59:59');

-- ----------------------------
-- Table structure for randevus
-- ----------------------------
DROP TABLE IF EXISTS `randevus`;
CREATE TABLE `randevus`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `makine_id` bigint UNSIGNED NOT NULL,
  `ogrenci_id` bigint UNSIGNED NOT NULL,
  `tarih` date NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `baslangic_saati` time NOT NULL,
  `bitis_saati` time NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `randevus_makine_id_foreign`(`makine_id` ASC) USING BTREE,
  INDEX `randevus_ogrenci_id_foreign`(`ogrenci_id` ASC) USING BTREE,
  CONSTRAINT `randevus_makine_id_foreign` FOREIGN KEY (`makine_id`) REFERENCES `makines` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `randevus_ogrenci_id_foreign` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrencis` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of randevus
-- ----------------------------
INSERT INTO `randevus` VALUES (22, 2, 184, '2024-11-25', 1, '2024-11-29 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (23, 1, 6, '2024-11-28', 0, '2024-11-28 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (24, 2, 159, '2024-11-29', 0, '2024-11-28 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (26, 2, 122, '2024-11-29', 1, '2024-11-28 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (27, 2, 205, '2024-11-26', 1, '2024-11-28 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (28, 2, 204, '2024-11-27', 1, '2024-11-28 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (29, 2, 183, '2024-11-29', 1, '2024-11-28 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (30, 1, 153, '2024-11-29', 0, '2024-11-28 16:03:04', '2024-11-28 16:03:04', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (31, 1, 145, '2024-11-29', 0, '2024-11-28 16:22:33', '2024-11-28 16:22:33', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (33, 2, 146, '2024-11-29', 1, '2024-11-28 16:22:33', '2024-11-28 16:22:33', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (34, 2, 151, '2024-11-25', 0, '2024-11-28 16:22:33', '2024-11-28 16:22:33', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (35, 2, 192, '2024-11-28', 0, '2024-11-28 16:22:33', '2024-11-28 16:22:33', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (38, 1, 181, '2024-11-27', 1, '2024-11-28 16:22:33', '2024-11-28 16:22:33', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (40, 1, 203, '2024-11-26', 0, '2024-11-28 16:22:33', '2024-11-28 16:22:33', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (42, 2, 147, '2024-11-29', 1, '2024-11-28 16:22:35', '2024-11-28 16:22:35', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (45, 1, 150, '2024-11-27', 1, '2024-11-28 16:22:35', '2024-11-28 16:22:35', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (46, 2, 143, '2024-11-30', 1, '2024-11-28 16:22:35', '2024-11-28 16:22:35', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (47, 2, 143, '2024-11-30', 0, '2024-11-28 16:22:35', '2024-11-28 16:22:35', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (48, 1, 134, '2024-11-19', 0, '2024-11-28 16:22:35', '2024-11-28 16:22:35', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (49, 1, 154, '2024-11-26', 1, '2024-11-28 16:22:35', '2024-11-28 16:22:35', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (50, 2, 206, '2024-11-18', 1, '2024-11-28 16:22:35', '2024-11-28 16:22:35', '08:00:00', '10:00:00');
INSERT INTO `randevus` VALUES (51, 1, 114, '2024-11-30', 0, '2024-11-30 23:20:20', '2024-11-30 23:20:20', '17:00:00', '19:00:00');
INSERT INTO `randevus` VALUES (53, 1, 114, '2024-12-06', 0, NULL, NULL, '21:00:00', '23:00:00');
INSERT INTO `randevus` VALUES (54, 1, 114, '2024-12-04', 0, NULL, NULL, '21:00:00', '23:00:00');
INSERT INTO `randevus` VALUES (55, 1, 215, '2024-12-08', 0, '2024-12-05 09:43:22', '2024-12-05 09:43:22', '10:00:00', '12:00:00');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (21, 2);
INSERT INTO `role_has_permissions` VALUES (22, 2);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'super-admin', 'web', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `roles` VALUES (2, 'mudur', 'web', '2024-10-14 12:39:28', '2024-10-14 12:39:28');

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
INSERT INTO `sessions` VALUES ('Y0mjXcEnTbDq3Epp60sYdUfi72oR8hCAyu4ohZlq', NULL, '192.168.1.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlNLV0hzS0RsUHRyUzFtR2x2ZjBjdEx5ZkFnMXJScjFuRzhGbmJQSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xOTIuMTY4LjEuMTgxOjgwMDAvYWRtaW4vbG9naW4iO319', 1733341871);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@laravel.com', '2024-10-14 12:35:29', '$2y$12$v9HjLJD7/kigaLjIL.m2JuNUuNOJigeaMymx6NlAIQFXmsKHXHvqq', 'FWgLwYkVVRWJGfjlHnl6Tu4L2DndPmd4GglfW9qNhlZbJEgX2UfdLLr8zLxg', '2024-10-14 12:35:29', '2024-10-14 12:35:29');
INSERT INTO `users` VALUES (2, 'faruk', 'faruk@admin.com', NULL, '$2y$12$Cj/X9qYSByzPahvev9AcT./Px5vf9usYustDk6L/fvhaqrir0yena', NULL, '2024-10-14 12:35:56', '2024-10-14 12:35:56');
INSERT INTO `users` VALUES (3, 'testmudur', 'testmudur@laravel.com', NULL, '$2y$12$cH5HGsMlC6xsLd3UJG.GEefjf8tqJ8RMUnIlmsrlaRdvVqTmcPymu', 'mNtZ7eJqxT6ZhdRDLro5sAG3jMG6AoCjZWkG3Ug6cM6J9soYzI4eODAw2acy', '2024-10-14 12:38:56', '2024-10-14 12:38:56');

SET FOREIGN_KEY_CHECKS = 1;
