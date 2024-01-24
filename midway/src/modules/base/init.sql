/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80100 (8.1.0)
 Source Host           : localhost:6666
 Source Schema         : teacher

 Target Server Type    : MySQL
 Target Server Version : 80100 (8.1.0)
 File Encoding         : 65001

 Date: 24/01/2024 15:42:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_sys_conf
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_conf`;
CREATE TABLE `base_sys_conf`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `cKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置键',
  `cValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_9be195d27767b4485417869c3a`(`cKey` ASC) USING BTREE,
  INDEX `IDX_905208f206a3ff9fd513421971`(`createTime` ASC) USING BTREE,
  INDEX `IDX_4c6f27f6ecefe51a5a196a047a`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_conf
-- ----------------------------
INSERT INTO `base_sys_conf` VALUES (1, '2021-02-25 14:23:26.810981', '2021-02-25 14:23:26.810981', 'logKeep', '31');

-- ----------------------------
-- Table structure for base_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_department`;
CREATE TABLE `base_sys_department`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `parentId` bigint NULL DEFAULT NULL COMMENT '上级部门ID',
  `orderNum` int NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_be4c53cd671384fa588ca9470a`(`createTime` ASC) USING BTREE,
  INDEX `IDX_ca1473a793961ec55bc0c8d268`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_department
-- ----------------------------
INSERT INTO `base_sys_department` VALUES (1, '2021-02-24 21:17:11.971397', '2023-03-07 00:39:53.000000', 'COOL', NULL, 0);
INSERT INTO `base_sys_department` VALUES (11, '2021-02-26 14:17:06.690613', '2023-03-07 00:39:53.000000', '开发', 12, 2);
INSERT INTO `base_sys_department` VALUES (12, '2021-02-26 14:17:11.576369', '2023-03-07 00:39:53.000000', '测试', 1, 1);
INSERT INTO `base_sys_department` VALUES (13, '2021-02-26 14:28:59.685177', '2023-03-07 00:39:53.000000', '游客', 1, 3);

-- ----------------------------
-- Table structure for base_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_log`;
CREATE TABLE `base_sys_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `ipAddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `params` json NULL COMMENT '参数',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '行为',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_51a2caeb5713efdfcb343a8772`(`userId` ASC) USING BTREE,
  INDEX `IDX_a03a27f75cf8d502b3060823e1`(`ipAddr` ASC) USING BTREE,
  INDEX `IDX_c9382b76219a1011f7b8e7bcd1`(`createTime` ASC) USING BTREE,
  INDEX `IDX_bfd44e885b470da43bcc39aaa7`(`updateTime` ASC) USING BTREE,
  INDEX `IDX_24e18767659f8c7142580893f2`(`ip` ASC) USING BTREE,
  INDEX `IDX_938f886fb40e163db174b7f6c3`(`action` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3555 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_log
-- ----------------------------
INSERT INTO `base_sys_log` VALUES (96, '2024-01-14 15:06:28.456404', '2024-01-14 15:06:28.456404', NULL, '本机地址', '{\"password\": \"123456\", \"username\": \"admin\", \"captchaId\": \"3c822d20-b2ab-11ee-8f28-afd0a0dfabc2\", \"verifyCode\": \"8952\"}', '127.0.0.1', '/admin/base/open/login');
INSERT INTO `base_sys_log` VALUES (97, '2024-01-14 15:06:28.506077', '2024-01-14 15:06:28.506077', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (98, '2024-01-14 15:06:28.520417', '2024-01-14 15:06:28.520417', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (99, '2024-01-14 15:06:28.521231', '2024-01-14 15:06:28.521231', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (100, '2024-01-14 15:07:29.417591', '2024-01-14 15:07:29.417591', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (101, '2024-01-14 15:07:29.423204', '2024-01-14 15:07:29.423204', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (102, '2024-01-14 15:07:29.721558', '2024-01-14 15:07:29.721558', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (103, '2024-01-14 15:07:34.069302', '2024-01-14 15:07:34.069302', 1, '本机地址', '{\"ids\": [562]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (104, '2024-01-14 15:07:34.111800', '2024-01-14 15:07:34.111800', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (105, '2024-01-14 15:07:34.317452', '2024-01-14 15:07:34.317452', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (106, '2024-01-14 15:07:37.860396', '2024-01-14 15:07:37.860396', 1, '本机地址', '{\"ids\": [447]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (107, '2024-01-14 15:07:37.927545', '2024-01-14 15:07:37.927545', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (108, '2024-01-14 15:07:38.131915', '2024-01-14 15:07:38.131915', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (109, '2024-01-14 15:07:42.193412', '2024-01-14 15:07:42.193412', 1, '本机地址', '{\"ids\": [240]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (110, '2024-01-14 15:07:42.352022', '2024-01-14 15:07:42.352022', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (111, '2024-01-14 15:07:42.469629', '2024-01-14 15:07:42.469629', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (112, '2024-01-14 15:07:45.218594', '2024-01-14 15:07:45.218594', 1, '本机地址', '{\"ids\": [233]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (113, '2024-01-14 15:07:45.303703', '2024-01-14 15:07:45.303703', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (114, '2024-01-14 15:07:45.416024', '2024-01-14 15:07:45.416024', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (115, '2024-01-14 15:07:50.309820', '2024-01-14 15:07:50.309820', 1, '本机地址', '{\"ids\": [260]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (116, '2024-01-14 15:07:50.342189', '2024-01-14 15:07:50.342189', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (117, '2024-01-14 15:07:50.449604', '2024-01-14 15:07:50.449604', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (118, '2024-01-14 15:07:54.289905', '2024-01-14 15:07:54.289905', 1, '本机地址', '{\"ids\": [84]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (119, '2024-01-14 15:07:54.450620', '2024-01-14 15:07:54.450620', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (120, '2024-01-14 15:07:54.522950', '2024-01-14 15:07:54.522950', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (121, '2024-01-14 15:07:57.892631', '2024-01-14 15:07:57.892631', 1, '本机地址', '{\"ids\": [47]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (122, '2024-01-14 15:07:58.036171', '2024-01-14 15:07:58.036171', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (123, '2024-01-14 15:07:58.145791', '2024-01-14 15:07:58.145791', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (124, '2024-01-14 15:08:05.917859', '2024-01-14 15:08:05.917859', 1, '本机地址', '{\"id\": 78, \"isShow\": false}', '127.0.0.1', '/admin/base/sys/menu/update');
INSERT INTO `base_sys_log` VALUES (125, '2024-01-14 15:08:08.222043', '2024-01-14 15:08:08.222043', 1, '本机地址', '{\"id\": 97, \"isShow\": false}', '127.0.0.1', '/admin/base/sys/menu/update');
INSERT INTO `base_sys_log` VALUES (126, '2024-01-14 15:08:09.902313', '2024-01-14 15:08:09.902313', 1, '本机地址', '{\"id\": 22, \"isShow\": false}', '127.0.0.1', '/admin/base/sys/menu/update');
INSERT INTO `base_sys_log` VALUES (127, '2024-01-14 15:08:11.839354', '2024-01-14 15:08:11.839354', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (128, '2024-01-14 15:08:11.924677', '2024-01-14 15:08:11.924677', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (129, '2024-01-14 15:08:17.948029', '2024-01-14 15:08:17.948029', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (130, '2024-01-14 15:08:18.008044', '2024-01-14 15:08:18.008044', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (131, '2024-01-14 15:08:18.037819', '2024-01-14 15:08:18.037819', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (132, '2024-01-14 15:08:20.189707', '2024-01-14 15:08:20.189707', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 19}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (133, '2024-01-14 15:08:20.208611', '2024-01-14 15:08:20.208611', 1, '本机地址', '{\"types\": [\"brand\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (134, '2024-01-14 15:08:23.941446', '2024-01-14 15:08:23.941446', 1, '本机地址', '{\"ids\": [19]}', '127.0.0.1', '/admin/dict/type/delete');
INSERT INTO `base_sys_log` VALUES (135, '2024-01-14 15:08:23.958812', '2024-01-14 15:08:23.958812', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (136, '2024-01-14 15:08:23.981999', '2024-01-14 15:08:23.981999', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 19}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (137, '2024-01-14 15:08:23.995397', '2024-01-14 15:08:23.995397', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (138, '2024-01-14 15:08:24.010414', '2024-01-14 15:08:24.010414', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (139, '2024-01-14 15:08:24.026356', '2024-01-14 15:08:24.026356', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (140, '2024-01-14 15:08:24.960891', '2024-01-14 15:08:24.960891', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 20}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (141, '2024-01-14 15:08:24.985095', '2024-01-14 15:08:24.985095', 1, '本机地址', '{\"types\": [\"occupation\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (142, '2024-01-14 15:08:29.511128', '2024-01-14 15:08:29.511128', 1, '本机地址', '{\"ids\": [20]}', '127.0.0.1', '/admin/dict/type/delete');
INSERT INTO `base_sys_log` VALUES (143, '2024-01-14 15:08:29.529115', '2024-01-14 15:08:29.529115', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (144, '2024-01-14 15:08:29.562347', '2024-01-14 15:08:29.562347', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 20}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (145, '2024-01-14 15:08:29.567475', '2024-01-14 15:08:29.567475', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (146, '2024-01-14 15:08:29.597574', '2024-01-14 15:08:29.597574', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (147, '2024-01-14 15:08:29.605901', '2024-01-14 15:08:29.605901', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (148, '2024-01-14 15:08:30.526696', '2024-01-14 15:08:30.526696', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (149, '2024-01-14 15:08:30.549416', '2024-01-14 15:08:30.549416', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (150, '2024-01-14 15:08:31.251926', '2024-01-14 15:08:31.251926', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (151, '2024-01-14 15:08:31.280642', '2024-01-14 15:08:31.280642', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (152, '2024-01-14 15:08:34.246973', '2024-01-14 15:08:34.246973', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/info/page');
INSERT INTO `base_sys_log` VALUES (153, '2024-01-14 15:08:36.605623', '2024-01-14 15:08:36.605623', 1, '本机地址', '{\"page\": 1, \"size\": 100}', '127.0.0.1', '/admin/task/info/page');
INSERT INTO `base_sys_log` VALUES (154, '2024-01-14 15:08:37.577277', '2024-01-14 15:08:37.577277', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/space/type/page');
INSERT INTO `base_sys_log` VALUES (155, '2024-01-14 15:08:43.178201', '2024-01-14 15:08:43.178201', 1, '本机地址', '{\"id\": 117, \"isShow\": false}', '127.0.0.1', '/admin/base/sys/menu/update');
INSERT INTO `base_sys_log` VALUES (156, '2024-01-14 15:08:46.104014', '2024-01-14 15:08:46.104014', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (157, '2024-01-14 15:08:46.172298', '2024-01-14 15:08:46.172298', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (158, '2024-01-14 15:09:34.458952', '2024-01-14 15:09:34.458952', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (159, '2024-01-14 15:09:44.410891', '2024-01-14 15:09:44.410891', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (160, '2024-01-14 15:09:48.269440', '2024-01-14 15:09:48.269440', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (161, '2024-01-14 15:09:48.767455', '2024-01-14 15:09:48.767455', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (162, '2024-01-14 15:09:48.810880', '2024-01-14 15:09:48.810880', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (163, '2024-01-14 15:09:48.863124', '2024-01-14 15:09:48.863124', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (164, '2024-01-14 15:09:48.968384', '2024-01-14 15:09:48.968384', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (165, '2024-01-14 15:09:49.289258', '2024-01-14 15:09:49.289258', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/space/type/page');
INSERT INTO `base_sys_log` VALUES (166, '2024-01-14 21:33:41.750840', '2024-01-14 21:33:41.750840', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsInJvbGVJZHMiOlsiMSJdLCJ1c2VybmFtZSI6ImFkbWluIiwidXNlcklkIjoxLCJwYXNzd29yZFZlcnNpb24iOjcsImlhdCI6MTcwNTIxNTk4OCwiZXhwIjoxNzA2NTExOTg4fQ.NPOAz4vCwKRLUiFeQCxp0AQoBCu2sUmxnKdllRKxedY\"}', '127.0.0.1', '/admin/base/open/refreshToken');
INSERT INTO `base_sys_log` VALUES (167, '2024-01-14 21:33:41.767841', '2024-01-14 21:33:41.767841', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/info/page');
INSERT INTO `base_sys_log` VALUES (168, '2024-01-14 21:33:57.131189', '2024-01-14 21:33:57.131189', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (169, '2024-01-14 21:33:57.135339', '2024-01-14 21:33:57.135339', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (170, '2024-01-14 21:33:57.306446', '2024-01-14 21:33:57.306446', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (171, '2024-01-14 21:33:58.189139', '2024-01-14 21:33:58.189139', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (172, '2024-01-14 21:34:14.074990', '2024-01-14 21:34:14.074990', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (173, '2024-01-14 21:34:14.158600', '2024-01-14 21:34:14.158600', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (174, '2024-01-14 21:34:27.144243', '2024-01-14 21:34:27.144243', 1, '本机地址', '{\"icon\": \"icon-dict\", \"name\": \"课程管理\", \"type\": 1, \"entity\": [\"teacher\", \"_class\"], \"isShow\": true, \"module\": \"user\", \"prefix\": \"/admin/teacher/_class\", \"router\": \"/teacher/_class\", \"viewPath\": \"modules/user/views/teacher/_class.vue\", \"keepAlive\": true, \"isCreateFile\": 1}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (175, '2024-01-14 21:34:27.173453', '2024-01-14 21:34:27.173453', 1, '本机地址', '[{\"name\": \"删除\", \"type\": 2, \"perms\": \"teacher:_class:delete\", \"parentId\": 625}, {\"name\": \"修改\", \"type\": 2, \"perms\": \"teacher:_class:update,teacher:_class:info\", \"parentId\": 625}, {\"name\": \"单个信息\", \"type\": 2, \"perms\": \"teacher:_class:info\", \"parentId\": 625}, {\"name\": \"列表查询\", \"type\": 2, \"perms\": \"teacher:_class:list\", \"parentId\": 625}, {\"name\": \"分页查询\", \"type\": 2, \"perms\": \"teacher:_class:page\", \"parentId\": 625}, {\"name\": \"新增\", \"type\": 2, \"perms\": \"teacher:_class:add\", \"parentId\": 625}]', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (176, '2024-01-14 21:34:27.222306', '2024-01-14 21:34:27.222306', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (177, '2024-01-14 21:34:27.410638', '2024-01-14 21:34:27.410638', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (178, '2024-01-14 21:34:27.590991', '2024-01-14 21:34:27.590991', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (179, '2024-01-14 21:34:28.125858', '2024-01-14 21:34:28.125858', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (180, '2024-01-14 21:34:28.230881', '2024-01-14 21:34:28.230881', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (181, '2024-01-14 21:34:28.276037', '2024-01-14 21:34:28.276037', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (182, '2024-01-14 21:34:28.393650', '2024-01-14 21:34:28.393650', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (183, '2024-01-14 21:34:28.677156', '2024-01-14 21:34:28.677156', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (184, '2024-01-14 21:34:28.696758', '2024-01-14 21:34:28.696758', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (185, '2024-01-14 21:34:28.932174', '2024-01-14 21:34:28.932174', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (186, '2024-01-14 21:34:46.524755', '2024-01-14 21:34:46.524755', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (187, '2024-01-14 21:34:47.174194', '2024-01-14 21:34:47.174194', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (188, '2024-01-14 21:34:47.180488', '2024-01-14 21:34:47.180488', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (189, '2024-01-14 21:34:47.190196', '2024-01-14 21:34:47.190196', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (190, '2024-01-14 21:34:47.408904', '2024-01-14 21:34:47.408904', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (191, '2024-01-14 21:35:45.802983', '2024-01-14 21:35:45.802983', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (192, '2024-01-14 21:35:46.479030', '2024-01-14 21:35:46.479030', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (193, '2024-01-14 21:35:46.610167', '2024-01-14 21:35:46.610167', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (194, '2024-01-14 21:35:46.647456', '2024-01-14 21:35:46.647456', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (195, '2024-01-14 21:35:46.735970', '2024-01-14 21:35:46.735970', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (196, '2024-01-14 21:35:55.281184', '2024-01-14 21:35:55.281184', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (197, '2024-01-14 21:35:55.901579', '2024-01-14 21:35:55.901579', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (198, '2024-01-14 21:35:56.008177', '2024-01-14 21:35:56.008177', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (199, '2024-01-14 21:35:56.015793', '2024-01-14 21:35:56.015793', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (200, '2024-01-14 21:35:56.142399', '2024-01-14 21:35:56.142399', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (201, '2024-01-14 21:36:04.419066', '2024-01-14 21:36:04.419066', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (202, '2024-01-14 21:36:05.463100', '2024-01-14 21:36:05.463100', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (203, '2024-01-14 21:36:05.472786', '2024-01-14 21:36:05.472786', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (204, '2024-01-14 21:36:05.481810', '2024-01-14 21:36:05.481810', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (205, '2024-01-14 21:36:05.678583', '2024-01-14 21:36:05.678583', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (206, '2024-01-14 21:36:12.148817', '2024-01-14 21:36:12.148817', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (207, '2024-01-14 21:36:12.773996', '2024-01-14 21:36:12.773996', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (208, '2024-01-14 21:36:12.855048', '2024-01-14 21:36:12.855048', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (209, '2024-01-14 21:36:12.860504', '2024-01-14 21:36:12.860504', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (210, '2024-01-14 21:36:12.963961', '2024-01-14 21:36:12.963961', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (211, '2024-01-14 21:37:10.500477', '2024-01-14 21:37:10.500477', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (212, '2024-01-14 21:37:11.210135', '2024-01-14 21:37:11.210135', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (213, '2024-01-14 21:37:11.220628', '2024-01-14 21:37:11.220628', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (214, '2024-01-14 21:37:11.229003', '2024-01-14 21:37:11.229003', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (215, '2024-01-14 21:37:11.427450', '2024-01-14 21:37:11.427450', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (216, '2024-01-14 21:37:12.102534', '2024-01-14 21:37:12.102534', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/department/list');
INSERT INTO `base_sys_log` VALUES (217, '2024-01-14 21:37:12.223630', '2024-01-14 21:37:12.223630', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\", \"departmentIds\": [1, 12, 11, 13]}', '127.0.0.1', '/admin/base/sys/user/page');
INSERT INTO `base_sys_log` VALUES (218, '2024-01-14 21:37:17.393381', '2024-01-14 21:37:17.393381', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (219, '2024-01-14 21:37:17.398637', '2024-01-14 21:37:17.398637', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (220, '2024-01-14 21:37:17.564075', '2024-01-14 21:37:17.564075', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (221, '2024-01-14 21:37:18.699513', '2024-01-14 21:37:18.699513', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (222, '2024-01-14 21:38:30.143714', '2024-01-14 21:38:30.143714', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (223, '2024-01-14 21:38:30.227111', '2024-01-14 21:38:30.227111', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (224, '2024-01-14 21:41:07.459391', '2024-01-14 21:41:07.459391', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (225, '2024-01-14 21:44:08.835842', '2024-01-14 21:44:08.835842', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (226, '2024-01-14 21:44:11.451402', '2024-01-14 21:44:11.451402', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (227, '2024-01-14 21:44:11.847109', '2024-01-14 21:44:11.847109', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (228, '2024-01-14 21:44:11.922606', '2024-01-14 21:44:11.922606', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (229, '2024-01-14 21:44:11.936871', '2024-01-14 21:44:11.936871', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (230, '2024-01-14 21:44:12.094351', '2024-01-14 21:44:12.094351', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (231, '2024-01-14 21:44:12.426921', '2024-01-14 21:44:12.426921', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (232, '2024-01-14 21:44:12.442359', '2024-01-14 21:44:12.442359', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (233, '2024-01-14 21:44:12.635399', '2024-01-14 21:44:12.635399', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (234, '2024-01-14 21:44:13.448162', '2024-01-14 21:44:13.448162', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (235, '2024-01-14 21:44:15.844365', '2024-01-14 21:44:15.844365', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (236, '2024-01-14 21:44:15.914351', '2024-01-14 21:44:15.914351', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (237, '2024-01-14 21:44:26.716207', '2024-01-14 21:44:26.716207', 1, '本机地址', '{\"icon\": \"icon-dict\", \"name\": \"班级管理\", \"type\": 1, \"entity\": [\"teacher\", \"_class\"], \"isShow\": true, \"module\": \"user\", \"prefix\": \"/admin/teacher/_class\", \"router\": \"/teacher/_class\", \"viewPath\": \"modules/user/views/teacher/_class.vue\", \"keepAlive\": true, \"isCreateFile\": 1}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (238, '2024-01-14 21:44:26.747251', '2024-01-14 21:44:26.747251', 1, '本机地址', '[{\"name\": \"删除\", \"type\": 2, \"perms\": \"teacher:_class:delete\", \"parentId\": 632}, {\"name\": \"修改\", \"type\": 2, \"perms\": \"teacher:_class:update,teacher:_class:info\", \"parentId\": 632}, {\"name\": \"单个信息\", \"type\": 2, \"perms\": \"teacher:_class:info\", \"parentId\": 632}, {\"name\": \"列表查询\", \"type\": 2, \"perms\": \"teacher:_class:list\", \"parentId\": 632}, {\"name\": \"分页查询\", \"type\": 2, \"perms\": \"teacher:_class:page\", \"parentId\": 632}, {\"name\": \"新增\", \"type\": 2, \"perms\": \"teacher:_class:add\", \"parentId\": 632}]', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (239, '2024-01-14 21:44:26.830465', '2024-01-14 21:44:26.830465', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (240, '2024-01-14 21:44:26.999052', '2024-01-14 21:44:26.999052', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (241, '2024-01-14 21:44:27.095400', '2024-01-14 21:44:27.095400', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (242, '2024-01-14 21:44:27.560965', '2024-01-14 21:44:27.560965', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (243, '2024-01-14 21:44:27.565424', '2024-01-14 21:44:27.565424', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (244, '2024-01-14 21:44:27.663826', '2024-01-14 21:44:27.663826', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (245, '2024-01-14 21:44:27.759566', '2024-01-14 21:44:27.759566', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (246, '2024-01-14 21:44:28.060149', '2024-01-14 21:44:28.060149', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (247, '2024-01-14 21:44:28.078430', '2024-01-14 21:44:28.078430', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (248, '2024-01-14 21:44:28.310029', '2024-01-14 21:44:28.310029', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (249, '2024-01-14 21:49:49.455305', '2024-01-14 21:49:49.455305', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (250, '2024-01-14 21:49:50.247260', '2024-01-14 21:49:50.247260', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (251, '2024-01-14 21:49:50.253203', '2024-01-14 21:49:50.253203', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (252, '2024-01-14 21:49:50.264764', '2024-01-14 21:49:50.264764', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (253, '2024-01-14 21:49:50.433989', '2024-01-14 21:49:50.433989', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (254, '2024-01-14 21:49:52.751445', '2024-01-14 21:49:52.751445', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/department/list');
INSERT INTO `base_sys_log` VALUES (255, '2024-01-14 21:49:52.870489', '2024-01-14 21:49:52.870489', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\", \"departmentIds\": [1, 12, 11, 13]}', '127.0.0.1', '/admin/base/sys/user/page');
INSERT INTO `base_sys_log` VALUES (256, '2024-01-14 21:51:15.682500', '2024-01-14 21:51:15.682500', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (257, '2024-01-14 21:51:16.347359', '2024-01-14 21:51:16.347359', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (258, '2024-01-14 21:51:16.372327', '2024-01-14 21:51:16.372327', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (259, '2024-01-14 21:51:16.380457', '2024-01-14 21:51:16.380457', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (260, '2024-01-14 21:51:16.540851', '2024-01-14 21:51:16.540851', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (261, '2024-01-14 21:51:17.241094', '2024-01-14 21:51:17.241094', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/department/list');
INSERT INTO `base_sys_log` VALUES (262, '2024-01-14 21:51:17.352147', '2024-01-14 21:51:17.352147', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\", \"departmentIds\": [1, 12, 11, 13]}', '127.0.0.1', '/admin/base/sys/user/page');
INSERT INTO `base_sys_log` VALUES (263, '2024-01-14 21:51:24.528323', '2024-01-14 21:51:24.528323', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (264, '2024-01-14 21:51:24.536646', '2024-01-14 21:51:24.536646', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (265, '2024-01-14 21:51:24.711434', '2024-01-14 21:51:24.711434', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (266, '2024-01-14 21:51:26.446964', '2024-01-14 21:51:26.446964', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (267, '2024-01-14 21:51:35.407756', '2024-01-14 21:51:35.407756', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (268, '2024-01-14 21:51:35.484981', '2024-01-14 21:51:35.484981', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (269, '2024-01-14 21:51:49.849608', '2024-01-14 21:51:49.849608', 1, '本机地址', '{\"icon\": \"icon-dict\", \"name\": \"test\", \"type\": 1, \"entity\": [\"user\", \"_class\"], \"isShow\": true, \"module\": \"user\", \"prefix\": \"/admin/user/_class\", \"router\": \"/user/_class\", \"viewPath\": \"modules/user/views/_class.vue\", \"keepAlive\": true, \"isCreateFile\": 1}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (270, '2024-01-14 21:51:49.925953', '2024-01-14 21:51:49.925953', 1, '本机地址', '[{\"name\": \"删除\", \"type\": 2, \"perms\": \"user:_class:delete\", \"parentId\": 639}, {\"name\": \"修改\", \"type\": 2, \"perms\": \"user:_class:update,user:_class:info\", \"parentId\": 639}, {\"name\": \"单个信息\", \"type\": 2, \"perms\": \"user:_class:info\", \"parentId\": 639}, {\"name\": \"列表查询\", \"type\": 2, \"perms\": \"user:_class:list\", \"parentId\": 639}, {\"name\": \"分页查询\", \"type\": 2, \"perms\": \"user:_class:page\", \"parentId\": 639}, {\"name\": \"新增\", \"type\": 2, \"perms\": \"user:_class:add\", \"parentId\": 639}]', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (271, '2024-01-14 21:51:49.997203', '2024-01-14 21:51:49.997203', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (272, '2024-01-14 21:51:50.267296', '2024-01-14 21:51:50.267296', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (273, '2024-01-14 21:51:50.434047', '2024-01-14 21:51:50.434047', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (274, '2024-01-14 21:51:50.935933', '2024-01-14 21:51:50.935933', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (275, '2024-01-14 21:51:50.946012', '2024-01-14 21:51:50.946012', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (276, '2024-01-14 21:51:50.960881', '2024-01-14 21:51:50.960881', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (277, '2024-01-14 21:51:51.185929', '2024-01-14 21:51:51.185929', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (278, '2024-01-14 21:51:51.457175', '2024-01-14 21:51:51.457175', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (279, '2024-01-14 21:51:51.478395', '2024-01-14 21:51:51.478395', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (280, '2024-01-14 21:51:51.679038', '2024-01-14 21:51:51.679038', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (281, '2024-01-14 21:51:52.901924', '2024-01-14 21:51:52.901924', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (282, '2024-01-14 21:51:55.036059', '2024-01-14 21:51:55.036059', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (283, '2024-01-14 22:06:23.326528', '2024-01-14 22:06:23.326528', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (284, '2024-01-14 22:06:26.182632', '2024-01-14 22:06:26.182632', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (285, '2024-01-14 22:06:27.133287', '2024-01-14 22:06:27.133287', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (286, '2024-01-14 22:06:27.165517', '2024-01-14 22:06:27.165517', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (287, '2024-01-14 22:06:27.273150', '2024-01-14 22:06:27.273150', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (288, '2024-01-14 22:06:27.380518', '2024-01-14 22:06:27.380518', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (289, '2024-01-14 22:06:27.674190', '2024-01-14 22:06:27.674190', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (290, '2024-01-14 22:06:27.683555', '2024-01-14 22:06:27.683555', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (291, '2024-01-14 22:06:27.704886', '2024-01-14 22:06:27.704886', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (292, '2024-01-14 22:06:27.789563', '2024-01-14 22:06:27.789563', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (293, '2024-01-14 22:06:28.020808', '2024-01-14 22:06:28.020808', 1, '本机地址', '{\"types\": [\"brand\", \"type\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (294, '2024-01-14 22:06:28.060250', '2024-01-14 22:06:28.060250', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (295, '2024-01-14 22:06:28.662379', '2024-01-14 22:06:28.662379', 1, '本机地址', '{\"types\": [\"brand\", \"type\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (296, '2024-01-14 22:06:28.678980', '2024-01-14 22:06:28.678980', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (297, '2024-01-14 22:06:35.904227', '2024-01-14 22:06:35.904227', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (298, '2024-01-14 22:06:35.911005', '2024-01-14 22:06:35.911005', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (299, '2024-01-14 22:06:36.089413', '2024-01-14 22:06:36.089413', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (300, '2024-01-14 22:06:39.484467', '2024-01-14 22:06:39.484467', 1, '本机地址', '{\"ids\": [639]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (301, '2024-01-14 22:06:39.596912', '2024-01-14 22:06:39.596912', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (302, '2024-01-14 22:06:39.799204', '2024-01-14 22:06:39.799204', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (303, '2024-01-14 22:06:41.052362', '2024-01-14 22:06:41.052362', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (304, '2024-01-14 22:06:44.185304', '2024-01-14 22:06:44.185304', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (305, '2024-01-14 22:06:44.282283', '2024-01-14 22:06:44.282283', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (306, '2024-01-14 22:07:00.692010', '2024-01-14 22:07:00.692010', 1, '本机地址', '{\"icon\": \"icon-dict\", \"name\": \"班级管理\", \"type\": 1, \"entity\": [\"teacher\", \"_class\"], \"isShow\": true, \"module\": \"user\", \"prefix\": \"/admin/teacher/_class\", \"router\": \"/teacher/_class\", \"viewPath\": \"modules/user/views/teacher/_class.vue\", \"keepAlive\": true, \"isCreateFile\": 1}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (307, '2024-01-14 22:07:00.771054', '2024-01-14 22:07:00.771054', 1, '本机地址', '[{\"name\": \"删除\", \"type\": 2, \"perms\": \"teacher:_class:delete\", \"parentId\": 646}, {\"name\": \"修改\", \"type\": 2, \"perms\": \"teacher:_class:update,teacher:_class:info\", \"parentId\": 646}, {\"name\": \"单个信息\", \"type\": 2, \"perms\": \"teacher:_class:info\", \"parentId\": 646}, {\"name\": \"列表查询\", \"type\": 2, \"perms\": \"teacher:_class:list\", \"parentId\": 646}, {\"name\": \"分页查询\", \"type\": 2, \"perms\": \"teacher:_class:page\", \"parentId\": 646}, {\"name\": \"新增\", \"type\": 2, \"perms\": \"teacher:_class:add\", \"parentId\": 646}]', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (308, '2024-01-14 22:07:00.880694', '2024-01-14 22:07:00.880694', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (309, '2024-01-14 22:07:01.109393', '2024-01-14 22:07:01.109393', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (310, '2024-01-14 22:07:01.287048', '2024-01-14 22:07:01.287048', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (311, '2024-01-14 22:07:01.858796', '2024-01-14 22:07:01.858796', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (312, '2024-01-14 22:07:01.867567', '2024-01-14 22:07:01.867567', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (313, '2024-01-14 22:07:01.896794', '2024-01-14 22:07:01.896794', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (314, '2024-01-14 22:07:02.123446', '2024-01-14 22:07:02.123446', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (315, '2024-01-14 22:07:02.404678', '2024-01-14 22:07:02.404678', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (316, '2024-01-14 22:07:02.420220', '2024-01-14 22:07:02.420220', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (317, '2024-01-14 22:07:02.679338', '2024-01-14 22:07:02.679338', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (318, '2024-01-14 22:09:18.312893', '2024-01-14 22:09:18.312893', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (319, '2024-01-14 22:09:18.744516', '2024-01-14 22:09:18.744516', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (320, '2024-01-14 22:09:18.777987', '2024-01-14 22:09:18.777987', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (321, '2024-01-14 22:09:18.787257', '2024-01-14 22:09:18.787257', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (322, '2024-01-14 22:09:18.932662', '2024-01-14 22:09:18.932662', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (323, '2024-01-14 22:09:21.109571', '2024-01-14 22:09:21.109571', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/department/list');
INSERT INTO `base_sys_log` VALUES (324, '2024-01-14 22:09:21.218651', '2024-01-14 22:09:21.218651', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\", \"departmentIds\": [1, 12, 11, 13]}', '127.0.0.1', '/admin/base/sys/user/page');
INSERT INTO `base_sys_log` VALUES (325, '2024-01-14 22:09:24.018815', '2024-01-14 22:09:24.018815', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (326, '2024-01-14 22:09:24.024686', '2024-01-14 22:09:24.024686', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (327, '2024-01-14 22:09:24.171616', '2024-01-14 22:09:24.171616', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (328, '2024-01-14 22:09:27.085710', '2024-01-14 22:09:27.085710', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (329, '2024-01-14 22:09:35.728898', '2024-01-14 22:09:35.728898', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (330, '2024-01-14 22:09:45.035889', '2024-01-14 22:09:45.035889', 1, '本机地址', '{\"name\": \"删除\", \"type\": 2, \"perms\": \"user:info:delete\", \"parentId\": 454}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (331, '2024-01-14 22:09:45.042031', '2024-01-14 22:09:45.042031', 1, '本机地址', '{\"name\": \"修改\", \"type\": 2, \"perms\": \"user:info:update\", \"parentId\": 454}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (332, '2024-01-14 22:09:45.082151', '2024-01-14 22:09:45.082151', 1, '本机地址', '{\"name\": \"新增\", \"type\": 2, \"perms\": \"user:info:add\", \"parentId\": 454}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (333, '2024-01-14 22:09:45.089898', '2024-01-14 22:09:45.089898', 1, '本机地址', '{\"name\": \"分页查询\", \"type\": 2, \"perms\": \"user:info:page\", \"parentId\": 454}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (334, '2024-01-14 22:09:45.109190', '2024-01-14 22:09:45.109190', 1, '本机地址', '{\"name\": \"单个信息\", \"type\": 2, \"perms\": \"user:info:info\", \"parentId\": 454}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (335, '2024-01-14 22:09:45.111145', '2024-01-14 22:09:45.111145', 1, '本机地址', '{\"name\": \"列表查询\", \"type\": 2, \"perms\": \"user:info:list\", \"parentId\": 454}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (336, '2024-01-14 22:09:45.253904', '2024-01-14 22:09:45.253904', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (337, '2024-01-14 22:09:45.387526', '2024-01-14 22:09:45.387526', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (338, '2024-01-14 22:09:50.349089', '2024-01-14 22:09:50.349089', 1, '本机地址', '{\"id\": \"454\"}', '127.0.0.1', '/admin/base/sys/menu/info');
INSERT INTO `base_sys_log` VALUES (339, '2024-01-14 22:09:50.353404', '2024-01-14 22:09:50.353404', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (340, '2024-01-14 22:09:52.866399', '2024-01-14 22:09:52.866399', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (341, '2024-01-14 22:10:13.551036', '2024-01-14 22:10:13.551036', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (342, '2024-01-14 22:10:18.413247', '2024-01-14 22:10:18.413247', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (343, '2024-01-14 22:10:22.175479', '2024-01-14 22:10:22.175479', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (344, '2024-01-14 22:10:22.283203', '2024-01-14 22:10:22.283203', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (345, '2024-01-14 22:10:39.072685', '2024-01-14 22:10:39.072685', 1, '本机地址', '{\"icon\": \"icon-user\", \"name\": \"用户管理\", \"type\": 1, \"entity\": [\"user\", \"info\"], \"isShow\": true, \"module\": \"user\", \"prefix\": \"/admin/user/info\", \"router\": \"/user/info\", \"parentId\": 454, \"viewPath\": \"modules/user/views/info.vue\", \"keepAlive\": true, \"isCreateFile\": 1}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (346, '2024-01-14 22:10:39.164164', '2024-01-14 22:10:39.164164', 1, '本机地址', '[{\"name\": \"删除\", \"type\": 2, \"perms\": \"user:info:delete\", \"parentId\": 659}, {\"name\": \"修改\", \"type\": 2, \"perms\": \"user:info:update,user:info:info\", \"parentId\": 659}, {\"name\": \"单个信息\", \"type\": 2, \"perms\": \"user:info:info\", \"parentId\": 659}, {\"name\": \"列表查询\", \"type\": 2, \"perms\": \"user:info:list\", \"parentId\": 659}, {\"name\": \"分页查询\", \"type\": 2, \"perms\": \"user:info:page\", \"parentId\": 659}, {\"name\": \"新增\", \"type\": 2, \"perms\": \"user:info:add\", \"parentId\": 659}]', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (347, '2024-01-14 22:10:39.236819', '2024-01-14 22:10:39.236819', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (348, '2024-01-14 22:10:39.413859', '2024-01-14 22:10:39.413859', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (349, '2024-01-14 22:10:39.497642', '2024-01-14 22:10:39.497642', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (350, '2024-01-14 22:10:39.899260', '2024-01-14 22:10:39.899260', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (351, '2024-01-14 22:10:39.913503', '2024-01-14 22:10:39.913503', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (352, '2024-01-14 22:10:39.991983', '2024-01-14 22:10:39.991983', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (353, '2024-01-14 22:10:40.094751', '2024-01-14 22:10:40.094751', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (354, '2024-01-14 22:10:40.421232', '2024-01-14 22:10:40.421232', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (355, '2024-01-14 22:10:40.436219', '2024-01-14 22:10:40.436219', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (356, '2024-01-14 22:10:40.645011', '2024-01-14 22:10:40.645011', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (357, '2024-01-14 22:10:53.187798', '2024-01-14 22:10:53.187798', 1, '本机地址', '{\"ids\": [654, 653, 655, 656, 657, 658]}', '127.0.0.1', '/admin/base/sys/menu/delete');
INSERT INTO `base_sys_log` VALUES (358, '2024-01-14 22:10:53.282060', '2024-01-14 22:10:53.282060', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (359, '2024-01-14 22:10:53.400088', '2024-01-14 22:10:53.400088', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (360, '2024-01-14 22:10:55.338505', '2024-01-14 22:10:55.338505', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/info/page');
INSERT INTO `base_sys_log` VALUES (361, '2024-01-14 22:11:04.720174', '2024-01-14 22:11:04.720174', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (362, '2024-01-14 22:11:07.130601', '2024-01-14 22:11:07.130601', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (363, '2024-01-14 22:11:11.063182', '2024-01-14 22:11:11.063182', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (364, '2024-01-14 22:11:11.171255', '2024-01-14 22:11:11.171255', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (365, '2024-01-14 22:11:24.599859', '2024-01-14 22:11:24.599859', 1, '本机地址', '{\"icon\": \"icon-dict\", \"name\": \"班级管理\", \"type\": 1, \"entity\": [\"user\", \"_class\"], \"isShow\": true, \"module\": \"user\", \"prefix\": \"/admin/user/_class\", \"router\": \"/user/_class\", \"viewPath\": \"modules/user/views/_class.vue\", \"keepAlive\": true, \"isCreateFile\": 1}', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (366, '2024-01-14 22:11:24.705249', '2024-01-14 22:11:24.705249', 1, '本机地址', '[{\"name\": \"删除\", \"type\": 2, \"perms\": \"user:_class:delete\", \"parentId\": 666}, {\"name\": \"修改\", \"type\": 2, \"perms\": \"user:_class:update,user:_class:info\", \"parentId\": 666}, {\"name\": \"单个信息\", \"type\": 2, \"perms\": \"user:_class:info\", \"parentId\": 666}, {\"name\": \"列表查询\", \"type\": 2, \"perms\": \"user:_class:list\", \"parentId\": 666}, {\"name\": \"分页查询\", \"type\": 2, \"perms\": \"user:_class:page\", \"parentId\": 666}, {\"name\": \"新增\", \"type\": 2, \"perms\": \"user:_class:add\", \"parentId\": 666}]', '127.0.0.1', '/admin/base/sys/menu/add');
INSERT INTO `base_sys_log` VALUES (367, '2024-01-14 22:11:24.762633', '2024-01-14 22:11:24.762633', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (368, '2024-01-14 22:11:24.770090', '2024-01-14 22:11:24.770090', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (369, '2024-01-14 22:11:25.048454', '2024-01-14 22:11:25.048454', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (370, '2024-01-14 22:11:25.206881', '2024-01-14 22:11:25.206881', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (371, '2024-01-14 22:11:25.612197', '2024-01-14 22:11:25.612197', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (372, '2024-01-14 22:11:25.622582', '2024-01-14 22:11:25.622582', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (373, '2024-01-14 22:11:25.629440', '2024-01-14 22:11:25.629440', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (374, '2024-01-14 22:11:25.797277', '2024-01-14 22:11:25.797277', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (375, '2024-01-14 22:11:26.114257', '2024-01-14 22:11:26.114257', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (376, '2024-01-14 22:11:26.133636', '2024-01-14 22:11:26.133636', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (377, '2024-01-14 22:11:26.328698', '2024-01-14 22:11:26.328698', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (378, '2024-01-14 22:11:27.178287', '2024-01-14 22:11:27.178287', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (379, '2024-01-14 22:11:52.460944', '2024-01-14 22:11:52.460944', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (380, '2024-01-14 22:11:53.516974', '2024-01-14 22:11:53.516974', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (381, '2024-01-14 22:11:53.525364', '2024-01-14 22:11:53.525364', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (382, '2024-01-14 22:11:53.533036', '2024-01-14 22:11:53.533036', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (383, '2024-01-14 22:11:53.721615', '2024-01-14 22:11:53.721615', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (384, '2024-01-14 22:11:55.000461', '2024-01-14 22:11:55.000461', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (385, '2024-01-14 22:12:25.815328', '2024-01-14 22:12:25.815328', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (386, '2024-01-14 22:12:25.998732', '2024-01-14 22:12:25.998732', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (387, '2024-01-14 22:12:30.820568', '2024-01-14 22:12:30.820568', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (388, '2024-01-14 22:12:32.098137', '2024-01-14 22:12:32.098137', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (389, '2024-01-14 22:12:32.142250', '2024-01-14 22:12:32.142250', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (390, '2024-01-14 22:12:32.185994', '2024-01-14 22:12:32.185994', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (391, '2024-01-14 22:12:41.319776', '2024-01-14 22:12:41.319776', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (392, '2024-01-14 22:12:41.350892', '2024-01-14 22:12:41.350892', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (393, '2024-01-14 22:12:42.558267', '2024-01-14 22:12:42.558267', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (394, '2024-01-14 22:12:42.586875', '2024-01-14 22:12:42.586875', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (395, '2024-01-14 22:12:42.779263', '2024-01-14 22:12:42.779263', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (396, '2024-01-14 22:12:42.810931', '2024-01-14 22:12:42.810931', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (397, '2024-01-14 22:12:44.968003', '2024-01-14 22:12:44.968003', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (398, '2024-01-14 22:12:44.997458', '2024-01-14 22:12:44.997458', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (399, '2024-01-14 22:12:45.133227', '2024-01-14 22:12:45.133227', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (400, '2024-01-14 22:12:45.163648', '2024-01-14 22:12:45.163648', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (401, '2024-01-14 22:12:59.132443', '2024-01-14 22:12:59.132443', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (402, '2024-01-14 22:12:59.341057', '2024-01-14 22:12:59.341057', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (403, '2024-01-14 22:13:01.938367', '2024-01-14 22:13:01.938367', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (404, '2024-01-14 22:16:12.356621', '2024-01-14 22:16:12.356621', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (405, '2024-01-14 22:16:12.595451', '2024-01-14 22:16:12.595451', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (406, '2024-01-14 22:17:51.702648', '2024-01-14 22:17:51.702648', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (407, '2024-01-14 22:17:51.918017', '2024-01-14 22:17:51.918017', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (408, '2024-01-14 22:17:59.266287', '2024-01-14 22:17:59.266287', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (409, '2024-01-14 22:17:59.298326', '2024-01-14 22:17:59.298326', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (410, '2024-01-14 22:17:59.451091', '2024-01-14 22:17:59.451091', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (411, '2024-01-14 22:17:59.479290', '2024-01-14 22:17:59.479290', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (412, '2024-01-14 22:18:16.238865', '2024-01-14 22:18:16.238865', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (413, '2024-01-14 22:18:16.316663', '2024-01-14 22:18:16.316663', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (414, '2024-01-14 22:18:21.971394', '2024-01-14 22:18:21.971394', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (415, '2024-01-14 22:18:49.939481', '2024-01-14 22:18:49.939481', 1, '本机地址', '{\"brand\": \"math_computer\", \"gradeName\": 2022}', '127.0.0.1', '/admin/user/_class/add');
INSERT INTO `base_sys_log` VALUES (416, '2024-01-14 22:18:49.987425', '2024-01-14 22:18:49.987425', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (417, '2024-01-14 22:25:03.966884', '2024-01-14 22:25:03.966884', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (418, '2024-01-14 22:25:04.224361', '2024-01-14 22:25:04.224361', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (419, '2024-01-14 22:25:04.342617', '2024-01-14 22:25:04.342617', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (420, '2024-01-14 22:26:13.972828', '2024-01-14 22:26:13.972828', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (421, '2024-01-14 22:26:14.054237', '2024-01-14 22:26:14.054237', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (422, '2024-01-14 22:26:14.231282', '2024-01-14 22:26:14.231282', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (423, '2024-01-14 22:26:36.976970', '2024-01-14 22:26:36.976970', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (424, '2024-01-14 22:26:37.022838', '2024-01-14 22:26:37.022838', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (425, '2024-01-14 22:26:43.549492', '2024-01-14 22:26:43.549492', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (426, '2024-01-14 22:26:47.316919', '2024-01-14 22:26:47.316919', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (427, '2024-01-14 22:27:32.029748', '2024-01-14 22:27:32.029748', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (428, '2024-01-14 22:27:32.212013', '2024-01-14 22:27:32.212013', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (429, '2024-01-14 22:28:36.395181', '2024-01-14 22:28:36.395181', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (430, '2024-01-14 22:28:36.568701', '2024-01-14 22:28:36.568701', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (431, '2024-01-14 22:33:40.118087', '2024-01-14 22:33:40.118087', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (432, '2024-01-14 22:33:40.294176', '2024-01-14 22:33:40.294176', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (433, '2024-01-14 22:33:40.500349', '2024-01-14 22:33:40.500349', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (434, '2024-01-14 22:34:36.723415', '2024-01-14 22:34:36.723415', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (435, '2024-01-14 22:34:36.957590', '2024-01-14 22:34:36.957590', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (436, '2024-01-14 22:34:49.128444', '2024-01-14 22:34:49.128444', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (437, '2024-01-14 22:34:49.348570', '2024-01-14 22:34:49.348570', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (438, '2024-01-14 22:35:04.599007', '2024-01-14 22:35:04.599007', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (439, '2024-01-14 22:35:04.801220', '2024-01-14 22:35:04.801220', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (440, '2024-01-14 22:35:54.105476', '2024-01-14 22:35:54.105476', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (441, '2024-01-14 22:35:54.297810', '2024-01-14 22:35:54.297810', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (442, '2024-01-14 22:36:42.683933', '2024-01-14 22:36:42.683933', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (443, '2024-01-14 22:36:42.758058', '2024-01-14 22:36:42.758058', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (444, '2024-01-14 22:36:42.916484', '2024-01-14 22:36:42.916484', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (445, '2024-01-14 22:37:02.582286', '2024-01-14 22:37:02.582286', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (446, '2024-01-14 22:37:02.697350', '2024-01-14 22:37:02.697350', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (447, '2024-01-14 22:37:06.958228', '2024-01-14 22:37:06.958228', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (448, '2024-01-14 22:37:07.051875', '2024-01-14 22:37:07.051875', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (449, '2024-01-14 22:37:08.799796', '2024-01-14 22:37:08.799796', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (450, '2024-01-14 22:37:09.526663', '2024-01-14 22:37:09.526663', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (451, '2024-01-14 22:37:09.552224', '2024-01-14 22:37:09.552224', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (452, '2024-01-14 22:37:09.574774', '2024-01-14 22:37:09.574774', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (453, '2024-01-14 22:37:09.727343', '2024-01-14 22:37:09.727343', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (454, '2024-01-14 22:37:10.555936', '2024-01-14 22:37:10.555936', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (455, '2024-01-14 22:37:41.249818', '2024-01-14 22:37:41.249818', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (456, '2024-01-14 22:37:41.368202', '2024-01-14 22:37:41.368202', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (457, '2024-01-14 22:37:41.528444', '2024-01-14 22:37:41.528444', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (458, '2024-01-14 22:38:11.411272', '2024-01-14 22:38:11.411272', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (459, '2024-01-14 22:38:11.494473', '2024-01-14 22:38:11.494473', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (460, '2024-01-14 22:38:11.634371', '2024-01-14 22:38:11.634371', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (461, '2024-01-14 22:38:15.882441', '2024-01-14 22:38:15.882441', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (462, '2024-01-14 22:38:16.579177', '2024-01-14 22:38:16.579177', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (463, '2024-01-14 22:38:16.683893', '2024-01-14 22:38:16.683893', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (464, '2024-01-14 22:38:16.693928', '2024-01-14 22:38:16.693928', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (465, '2024-01-14 22:38:16.793481', '2024-01-14 22:38:16.793481', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (466, '2024-01-14 22:38:17.600032', '2024-01-14 22:38:17.600032', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (467, '2024-01-14 22:47:13.357633', '2024-01-14 22:47:13.357633', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (468, '2024-01-14 22:48:57.726629', '2024-01-14 22:48:57.726629', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (469, '2024-01-14 22:48:57.912994', '2024-01-14 22:48:57.912994', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (470, '2024-01-14 22:49:16.479013', '2024-01-14 22:49:16.479013', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (471, '2024-01-14 22:49:16.544425', '2024-01-14 22:49:16.544425', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (472, '2024-01-14 22:49:16.706665', '2024-01-14 22:49:16.706665', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (473, '2024-01-14 22:49:22.552912', '2024-01-14 22:49:22.552912', 1, '本机地址', '{\"ids\": [1]}', '127.0.0.1', '/admin/user/_class/delete');
INSERT INTO `base_sys_log` VALUES (474, '2024-01-14 22:49:22.592595', '2024-01-14 22:49:22.592595', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (475, '2024-01-14 22:49:38.068058', '2024-01-14 22:49:38.068058', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (476, '2024-01-14 22:49:38.293862', '2024-01-14 22:49:38.293862', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (477, '2024-01-14 22:52:46.261461', '2024-01-14 22:52:46.261461', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (478, '2024-01-14 22:52:46.450019', '2024-01-14 22:52:46.450019', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (479, '2024-01-14 22:53:31.426469', '2024-01-14 22:53:31.426469', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (480, '2024-01-14 22:53:31.596959', '2024-01-14 22:53:31.596959', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (481, '2024-01-14 22:58:02.107800', '2024-01-14 22:58:02.107800', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (482, '2024-01-14 22:58:02.187094', '2024-01-14 22:58:02.187094', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (483, '2024-01-14 22:58:02.358626', '2024-01-14 22:58:02.358626', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (484, '2024-01-14 22:58:31.324922', '2024-01-14 22:58:31.324922', 1, '本机地址', '{\"gradeName\": 2021, \"majorName\": \"111\", \"collegeName\": \"big_data\"}', '127.0.0.1', '/admin/user/_class/add');
INSERT INTO `base_sys_log` VALUES (485, '2024-01-14 22:58:31.364141', '2024-01-14 22:58:31.364141', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (486, '2024-01-14 23:01:56.792129', '2024-01-14 23:01:56.792129', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (487, '2024-01-14 23:06:03.006079', '2024-01-14 23:06:03.006079', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (488, '2024-01-14 23:06:04.144917', '2024-01-14 23:06:04.144917', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (489, '2024-01-14 23:06:13.332410', '2024-01-14 23:06:13.332410', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (490, '2024-01-14 23:06:14.313947', '2024-01-14 23:06:14.313947', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (491, '2024-01-14 23:06:42.744482', '2024-01-14 23:06:42.744482', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (492, '2024-01-14 23:06:53.233653', '2024-01-14 23:06:53.233653', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (493, '2024-01-14 23:06:55.764344', '2024-01-14 23:06:55.764344', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (494, '2024-01-14 23:07:02.391715', '2024-01-14 23:07:02.391715', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (495, '2024-01-14 23:09:05.335186', '2024-01-14 23:09:05.335186', NULL, '本机地址', '{\"iv\": \"yHWruruD6G6XZ+H9Z4BuzA==\", \"code\": \"0a3aCjFa1M7JJG0MaWFa1RTkVO2aCjF2\", \"rawData\": \"{\\\"nickName\\\":\\\"微信用户\\\",\\\"gender\\\":0,\\\"language\\\":\\\"\\\",\\\"city\\\":\\\"\\\",\\\"province\\\":\\\"\\\",\\\"country\\\":\\\"\\\",\\\"avatarUrl\\\":\\\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\\\",\\\"is_demote\\\":true}\", \"signature\": \"4761e084ce3930745bbdb13a9c566da5bf53f320\", \"encryptedData\": \"TA1xU9L0lf8ioXuS/IPjovWaCTjUeyUW1wggvEP28IFzVkus8IW4pR8dQV/3b3HWN588uqh+bwlreI+CtylHuDAjU7ZwLUz4TNIi8D9d7eb0MawJY/O97FwqjN2bFnpq8P8VQul3htbCw5jggIu4z6UElE8mnt7rKwTEipa1XmzopvE76a0s9Hz/ftWAC2rWdxY6UnMrae6PidZI/yOOJl/bh39IkPx3HT+SIrheXCdOmhBKeoBqIRxJUKIhecd5Pcpj4PCXeMrBG43G7VnO/dp9U9XJWv1TXt2A8nV0Yk5DT8g84assOl27BD4cWbwfVazyfeTTfAZIHNlTW/vYqFl9B5V7zoWPKZEmwwTjEbpBwen+vPFWloW1f0I3Tcty3XiiP0OeLVqPRwsEbstwc5fJ3p9j3unp0KTdzKq0khdDcaL8uJ1e4LpIe3m7Ctx/\"}', '127.0.0.1', '/app/user/login/mini');
INSERT INTO `base_sys_log` VALUES (496, '2024-01-14 23:09:05.957440', '2024-01-14 23:09:05.957440', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (497, '2024-01-14 23:09:43.387544', '2024-01-14 23:09:43.387544', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (498, '2024-01-14 23:14:52.256891', '2024-01-14 23:14:52.256891', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (499, '2024-01-14 23:33:49.253387', '2024-01-14 23:33:49.253387', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (500, '2024-01-14 23:33:50.862325', '2024-01-14 23:33:50.862325', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (501, '2024-01-14 23:34:09.428686', '2024-01-14 23:34:09.428686', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (502, '2024-01-14 23:34:09.561687', '2024-01-14 23:34:09.561687', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (503, '2024-01-14 23:35:22.736230', '2024-01-14 23:35:22.736230', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (504, '2024-01-14 23:35:22.832599', '2024-01-14 23:35:22.832599', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (505, '2024-01-14 23:35:22.891160', '2024-01-14 23:35:22.891160', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (506, '2024-01-14 23:35:27.426845', '2024-01-14 23:35:27.426845', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (507, '2024-01-14 23:35:30.547930', '2024-01-14 23:35:30.547930', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (508, '2024-01-14 23:36:16.888811', '2024-01-14 23:36:16.888811', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (509, '2024-01-14 23:36:38.057721', '2024-01-14 23:36:38.057721', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (510, '2024-01-14 23:37:19.622696', '2024-01-14 23:37:19.622696', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (511, '2024-01-14 23:37:37.621221', '2024-01-14 23:37:37.621221', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (512, '2024-01-14 23:37:37.711949', '2024-01-14 23:37:37.711949', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (513, '2024-01-14 23:37:37.760079', '2024-01-14 23:37:37.760079', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (514, '2024-01-14 23:37:48.253998', '2024-01-14 23:37:48.253998', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (515, '2024-01-14 23:37:48.349937', '2024-01-14 23:37:48.349937', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (516, '2024-01-14 23:37:48.427782', '2024-01-14 23:37:48.427782', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (517, '2024-01-14 23:37:53.335287', '2024-01-14 23:37:53.335287', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (518, '2024-01-14 23:38:11.669914', '2024-01-14 23:38:11.669914', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (519, '2024-01-14 23:38:18.536943', '2024-01-14 23:38:18.536943', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (520, '2024-01-14 23:38:56.001096', '2024-01-14 23:38:56.001096', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (521, '2024-01-14 23:38:56.088571', '2024-01-14 23:38:56.088571', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (522, '2024-01-14 23:38:56.138883', '2024-01-14 23:38:56.138883', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (523, '2024-01-14 23:39:15.667675', '2024-01-14 23:39:15.667675', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (524, '2024-01-14 23:39:15.750255', '2024-01-14 23:39:15.750255', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (525, '2024-01-14 23:39:15.807120', '2024-01-14 23:39:15.807120', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (526, '2024-01-14 23:39:18.701393', '2024-01-14 23:39:18.701393', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (527, '2024-01-14 23:39:20.200009', '2024-01-14 23:39:20.200009', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (528, '2024-01-14 23:40:49.906324', '2024-01-14 23:40:49.906324', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (529, '2024-01-14 23:40:49.980150', '2024-01-14 23:40:49.980150', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (530, '2024-01-14 23:40:50.047839', '2024-01-14 23:40:50.047839', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (531, '2024-01-14 23:40:50.164600', '2024-01-14 23:40:50.164600', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (532, '2024-01-14 23:40:50.368169', '2024-01-14 23:40:50.368169', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (533, '2024-01-14 23:40:51.300940', '2024-01-14 23:40:51.300940', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (534, '2024-01-14 23:40:53.184667', '2024-01-14 23:40:53.184667', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (535, '2024-01-14 23:40:56.322969', '2024-01-14 23:40:56.322969', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (536, '2024-01-14 23:41:05.834585', '2024-01-14 23:41:05.834585', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (537, '2024-01-14 23:41:05.964393', '2024-01-14 23:41:05.964393', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (538, '2024-01-14 23:41:05.970861', '2024-01-14 23:41:05.970861', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (539, '2024-01-14 23:41:06.070885', '2024-01-14 23:41:06.070885', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (540, '2024-01-14 23:41:06.250894', '2024-01-14 23:41:06.250894', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (541, '2024-01-14 23:41:33.410718', '2024-01-14 23:41:33.410718', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (542, '2024-01-14 23:41:33.474793', '2024-01-14 23:41:33.474793', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (543, '2024-01-14 23:41:33.535082', '2024-01-14 23:41:33.535082', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (544, '2024-01-14 23:42:50.814885', '2024-01-14 23:42:50.814885', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (545, '2024-01-14 23:43:52.095156', '2024-01-14 23:43:52.095156', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (546, '2024-01-14 23:44:03.559839', '2024-01-14 23:44:03.559839', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (547, '2024-01-14 23:44:03.565853', '2024-01-14 23:44:03.565853', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (548, '2024-01-14 23:44:03.640435', '2024-01-14 23:44:03.640435', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (549, '2024-01-14 23:44:03.722451', '2024-01-14 23:44:03.722451', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (550, '2024-01-14 23:44:03.886239', '2024-01-14 23:44:03.886239', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (551, '2024-01-14 23:44:04.089803', '2024-01-14 23:44:04.089803', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (552, '2024-01-14 23:45:53.965957', '2024-01-14 23:45:53.965957', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (553, '2024-01-14 23:45:54.112624', '2024-01-14 23:45:54.112624', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (554, '2024-01-14 23:45:54.295704', '2024-01-14 23:45:54.295704', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (555, '2024-01-15 09:35:11.446259', '2024-01-15 09:35:11.446259', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (556, '2024-01-15 09:40:23.894717', '2024-01-15 09:40:23.894717', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (557, '2024-01-15 09:41:12.271302', '2024-01-15 09:41:12.271302', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (558, '2024-01-15 09:41:17.124901', '2024-01-15 09:41:17.124901', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (559, '2024-01-15 09:44:31.891811', '2024-01-15 09:44:31.891811', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (560, '2024-01-15 09:44:36.200319', '2024-01-15 09:44:36.200319', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (561, '2024-01-15 09:44:40.672098', '2024-01-15 09:44:40.672098', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (562, '2024-01-15 09:44:41.649216', '2024-01-15 09:44:41.649216', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (563, '2024-01-15 09:44:41.684206', '2024-01-15 09:44:41.684206', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsInJvbGVJZHMiOlsiMSJdLCJ1c2VybmFtZSI6ImFkbWluIiwidXNlcklkIjoxLCJwYXNzd29yZFZlcnNpb24iOjcsImlhdCI6MTcwNTIzOTIyMSwiZXhwIjoxNzA2NTM1MjIxfQ.8wrzM-C0EztPNKTz-Lv2RHG1khLUuy7VnaEhJirYYcs\"}', '127.0.0.1', '/admin/base/open/refreshToken');
INSERT INTO `base_sys_log` VALUES (564, '2024-01-15 09:44:42.207644', '2024-01-15 09:44:42.207644', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (565, '2024-01-15 09:44:42.231600', '2024-01-15 09:44:42.231600', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (566, '2024-01-15 09:44:42.309983', '2024-01-15 09:44:42.309983', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (567, '2024-01-15 09:44:42.564235', '2024-01-15 09:44:42.564235', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (568, '2024-01-15 09:45:45.344799', '2024-01-15 09:45:45.344799', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (569, '2024-01-15 09:45:45.574165', '2024-01-15 09:45:45.574165', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (570, '2024-01-15 09:45:45.686556', '2024-01-15 09:45:45.686556', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (571, '2024-01-15 09:46:36.662475', '2024-01-15 09:46:36.662475', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (572, '2024-01-15 09:46:36.849530', '2024-01-15 09:46:36.849530', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (573, '2024-01-15 09:46:44.532747', '2024-01-15 09:46:44.532747', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (574, '2024-01-15 09:46:44.621840', '2024-01-15 09:46:44.621840', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (575, '2024-01-15 09:46:44.813875', '2024-01-15 09:46:44.813875', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (576, '2024-01-15 09:47:13.924092', '2024-01-15 09:47:13.924092', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (577, '2024-01-15 09:47:14.054076', '2024-01-15 09:47:14.054076', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (578, '2024-01-15 09:47:14.221633', '2024-01-15 09:47:14.221633', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (579, '2024-01-15 09:47:29.959220', '2024-01-15 09:47:29.959220', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (580, '2024-01-15 09:47:30.064182', '2024-01-15 09:47:30.064182', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (581, '2024-01-15 09:47:30.214517', '2024-01-15 09:47:30.214517', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (582, '2024-01-15 09:47:34.695062', '2024-01-15 09:47:34.695062', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (583, '2024-01-15 09:47:34.760292', '2024-01-15 09:47:34.760292', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (584, '2024-01-15 09:47:34.888453', '2024-01-15 09:47:34.888453', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (585, '2024-01-15 09:48:45.955187', '2024-01-15 09:48:45.955187', 1, '本机地址', '{\"id\": \"2\"}', '127.0.0.1', '/admin/user/_class/info');
INSERT INTO `base_sys_log` VALUES (586, '2024-01-15 10:01:51.138208', '2024-01-15 10:01:51.138208', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (587, '2024-01-15 10:05:25.185827', '2024-01-15 10:05:25.185827', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (588, '2024-01-15 10:05:25.250623', '2024-01-15 10:05:25.250623', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (589, '2024-01-15 10:05:25.285564', '2024-01-15 10:05:25.285564', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (590, '2024-01-15 10:06:07.570824', '2024-01-15 10:06:07.570824', 1, '本机地址', '{\"key\": \"course_info\", \"name\": \"课程信息\"}', '127.0.0.1', '/admin/dict/type/add');
INSERT INTO `base_sys_log` VALUES (591, '2024-01-15 10:06:07.599757', '2024-01-15 10:06:07.599757', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (592, '2024-01-15 10:06:07.634336', '2024-01-15 10:06:07.634336', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (593, '2024-01-15 10:06:07.656571', '2024-01-15 10:06:07.656571', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (594, '2024-01-15 10:06:10.056405', '2024-01-15 10:06:10.056405', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 21}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (595, '2024-01-15 10:06:10.077721', '2024-01-15 10:06:10.077721', 1, '本机地址', '{\"types\": [\"course_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (596, '2024-01-15 10:06:21.187904', '2024-01-15 10:06:21.187904', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (597, '2024-01-15 10:06:21.223034', '2024-01-15 10:06:21.223034', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (598, '2024-01-15 10:06:21.940196', '2024-01-15 10:06:21.940196', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 21}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (599, '2024-01-15 10:06:21.959583', '2024-01-15 10:06:21.959583', 1, '本机地址', '{\"types\": [\"course_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (600, '2024-01-15 10:06:23.201030', '2024-01-15 10:06:23.201030', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (601, '2024-01-15 10:06:23.229257', '2024-01-15 10:06:23.229257', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (602, '2024-01-15 10:06:23.919195', '2024-01-15 10:06:23.919195', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (603, '2024-01-15 10:06:23.949140', '2024-01-15 10:06:23.949140', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (604, '2024-01-15 10:06:24.928576', '2024-01-15 10:06:24.928576', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (605, '2024-01-15 10:06:24.959737', '2024-01-15 10:06:24.959737', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (606, '2024-01-15 10:06:25.574222', '2024-01-15 10:06:25.574222', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 21}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (607, '2024-01-15 10:06:25.595825', '2024-01-15 10:06:25.595825', 1, '本机地址', '{\"types\": [\"course_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (608, '2024-01-15 10:06:48.820743', '2024-01-15 10:06:48.820743', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (609, '2024-01-15 10:06:48.830271', '2024-01-15 10:06:48.830271', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (610, '2024-01-15 10:06:49.017389', '2024-01-15 10:06:49.017389', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (611, '2024-01-15 10:09:44.026008', '2024-01-15 10:09:44.026008', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (612, '2024-01-15 10:09:47.179516', '2024-01-15 10:09:47.179516', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (613, '2024-01-15 10:10:33.130267', '2024-01-15 10:10:33.130267', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (614, '2024-01-15 10:10:36.410156', '2024-01-15 10:10:36.410156', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (615, '2024-01-15 10:11:40.420017', '2024-01-15 10:11:40.420017', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (616, '2024-01-15 10:11:43.568011', '2024-01-15 10:11:43.568011', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (617, '2024-01-15 10:11:48.403570', '2024-01-15 10:11:48.403570', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (618, '2024-01-15 10:11:49.511815', '2024-01-15 10:11:49.511815', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (619, '2024-01-15 10:11:51.309213', '2024-01-15 10:11:51.309213', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (620, '2024-01-15 10:13:01.748143', '2024-01-15 10:13:01.748143', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (621, '2024-01-15 10:13:04.656908', '2024-01-15 10:13:04.656908', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (622, '2024-01-15 10:13:51.896118', '2024-01-15 10:13:51.896118', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (623, '2024-01-15 10:14:04.882782', '2024-01-15 10:14:04.882782', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (624, '2024-01-15 10:14:56.129502', '2024-01-15 10:14:56.129502', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (625, '2024-01-15 10:15:35.600574', '2024-01-15 10:15:35.600574', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (626, '2024-01-15 10:16:10.931425', '2024-01-15 10:16:10.931425', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (627, '2024-01-15 10:16:28.607479', '2024-01-15 10:16:28.607479', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (628, '2024-01-15 10:17:36.234339', '2024-01-15 10:17:36.234339', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (629, '2024-01-15 10:18:09.470967', '2024-01-15 10:18:09.470967', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (630, '2024-01-15 10:19:03.171221', '2024-01-15 10:19:03.171221', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (631, '2024-01-15 10:20:19.985282', '2024-01-15 10:20:19.985282', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (632, '2024-01-15 10:20:33.724132', '2024-01-15 10:20:33.724132', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (633, '2024-01-15 10:21:15.657268', '2024-01-15 10:21:15.657268', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (634, '2024-01-15 10:21:28.653057', '2024-01-15 10:21:28.653057', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (635, '2024-01-15 10:21:57.656260', '2024-01-15 10:21:57.656260', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (636, '2024-01-15 10:22:17.661678', '2024-01-15 10:22:17.661678', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (637, '2024-01-15 10:22:29.341010', '2024-01-15 10:22:29.341010', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (638, '2024-01-15 10:22:54.401115', '2024-01-15 10:22:54.401115', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (639, '2024-01-15 10:23:29.883858', '2024-01-15 10:23:29.883858', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (640, '2024-01-15 10:24:02.456167', '2024-01-15 10:24:02.456167', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (641, '2024-01-15 10:25:37.199223', '2024-01-15 10:25:37.199223', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (642, '2024-01-15 10:27:32.063490', '2024-01-15 10:27:32.063490', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (643, '2024-01-15 10:27:42.240728', '2024-01-15 10:27:42.240728', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (644, '2024-01-15 10:27:49.509169', '2024-01-15 10:27:49.509169', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (645, '2024-01-15 10:27:50.964190', '2024-01-15 10:27:50.964190', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (646, '2024-01-15 10:27:51.980384', '2024-01-15 10:27:51.980384', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (647, '2024-01-15 10:27:53.135367', '2024-01-15 10:27:53.135367', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (648, '2024-01-15 10:28:13.137391', '2024-01-15 10:28:13.137391', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (649, '2024-01-15 10:28:31.447907', '2024-01-15 10:28:31.447907', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (650, '2024-01-15 10:29:05.087535', '2024-01-15 10:29:05.087535', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (651, '2024-01-15 10:29:07.267874', '2024-01-15 10:29:07.267874', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (652, '2024-01-15 10:29:18.229005', '2024-01-15 10:29:18.229005', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (653, '2024-01-15 10:29:43.246455', '2024-01-15 10:29:43.246455', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (654, '2024-01-15 10:29:45.372833', '2024-01-15 10:29:45.372833', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (655, '2024-01-15 10:29:46.319550', '2024-01-15 10:29:46.319550', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (656, '2024-01-15 10:30:03.374904', '2024-01-15 10:30:03.374904', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (657, '2024-01-15 10:30:05.630563', '2024-01-15 10:30:05.630563', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (658, '2024-01-15 10:30:06.434693', '2024-01-15 10:30:06.434693', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (659, '2024-01-15 10:30:21.003567', '2024-01-15 10:30:21.003567', 1, '本机地址', '{\"ids\": [21]}', '127.0.0.1', '/admin/dict/type/delete');
INSERT INTO `base_sys_log` VALUES (660, '2024-01-15 10:30:21.027790', '2024-01-15 10:30:21.027790', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (661, '2024-01-15 10:30:21.046371', '2024-01-15 10:30:21.046371', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 21}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (662, '2024-01-15 10:30:21.053432', '2024-01-15 10:30:21.053432', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (663, '2024-01-15 10:30:21.076789', '2024-01-15 10:30:21.076789', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (664, '2024-01-15 10:30:21.106419', '2024-01-15 10:30:21.106419', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (665, '2024-01-15 10:30:22.650780', '2024-01-15 10:30:22.650780', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (666, '2024-01-15 10:31:09.300405', '2024-01-15 10:31:09.300405', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (667, '2024-01-15 10:34:30.949497', '2024-01-15 10:34:30.949497', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (668, '2024-01-15 10:34:32.018680', '2024-01-15 10:34:32.018680', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (669, '2024-01-15 10:34:33.251099', '2024-01-15 10:34:33.251099', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (670, '2024-01-15 10:34:34.095508', '2024-01-15 10:34:34.095508', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (671, '2024-01-15 10:35:11.038696', '2024-01-15 10:35:11.038696', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (672, '2024-01-15 10:35:13.154048', '2024-01-15 10:35:13.154048', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (673, '2024-01-15 10:35:44.183471', '2024-01-15 10:35:44.183471', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (674, '2024-01-15 10:35:46.479606', '2024-01-15 10:35:46.479606', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (675, '2024-01-15 10:35:47.293513', '2024-01-15 10:35:47.293513', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (676, '2024-01-15 10:38:01.363708', '2024-01-15 10:38:01.363708', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (677, '2024-01-15 10:38:03.518455', '2024-01-15 10:38:03.518455', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (678, '2024-01-15 10:38:04.258307', '2024-01-15 10:38:04.258307', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (679, '2024-01-15 10:42:06.645922', '2024-01-15 10:42:06.645922', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (680, '2024-01-15 10:42:08.857519', '2024-01-15 10:42:08.857519', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (681, '2024-01-15 10:42:12.672174', '2024-01-15 10:42:12.672174', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (682, '2024-01-15 10:43:07.429763', '2024-01-15 10:43:07.429763', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (683, '2024-01-15 10:43:07.954261', '2024-01-15 10:43:07.954261', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (684, '2024-01-15 10:43:09.636438', '2024-01-15 10:43:09.636438', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (685, '2024-01-15 10:43:29.218655', '2024-01-15 10:43:29.218655', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (686, '2024-01-15 10:43:36.302195', '2024-01-15 10:43:36.302195', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (687, '2024-01-15 10:45:49.590692', '2024-01-15 10:45:49.590692', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (688, '2024-01-15 10:45:53.029282', '2024-01-15 10:45:53.029282', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (689, '2024-01-15 10:50:15.330362', '2024-01-15 10:50:15.330362', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (690, '2024-01-15 10:50:15.528556', '2024-01-15 10:50:15.528556', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (691, '2024-01-15 10:50:17.715150', '2024-01-15 10:50:17.715150', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (692, '2024-01-15 10:59:18.694189', '2024-01-15 10:59:18.694189', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (693, '2024-01-15 10:59:19.043767', '2024-01-15 10:59:19.043767', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (694, '2024-01-15 10:59:19.115806', '2024-01-15 10:59:19.115806', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (695, '2024-01-15 11:00:56.587272', '2024-01-15 11:00:56.587272', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (696, '2024-01-15 11:00:58.316043', '2024-01-15 11:00:58.316043', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (697, '2024-01-15 11:01:09.520245', '2024-01-15 11:01:09.520245', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (698, '2024-01-15 11:01:12.731657', '2024-01-15 11:01:12.731657', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (699, '2024-01-15 11:01:20.238497', '2024-01-15 11:01:20.238497', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (700, '2024-01-15 11:02:02.123121', '2024-01-15 11:02:02.123121', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (701, '2024-01-15 11:02:02.221590', '2024-01-15 11:02:02.221590', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (702, '2024-01-15 11:02:02.357340', '2024-01-15 11:02:02.357340', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (703, '2024-01-15 11:02:02.456166', '2024-01-15 11:02:02.456166', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (704, '2024-01-15 11:02:02.706023', '2024-01-15 11:02:02.706023', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (705, '2024-01-15 11:02:02.770177', '2024-01-15 11:02:02.770177', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (706, '2024-01-15 11:02:07.565483', '2024-01-15 11:02:07.565483', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (707, '2024-01-15 11:02:41.190834', '2024-01-15 11:02:41.190834', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (708, '2024-01-15 11:02:41.257612', '2024-01-15 11:02:41.257612', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (709, '2024-01-15 11:02:41.340811', '2024-01-15 11:02:41.340811', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (710, '2024-01-15 11:02:43.563009', '2024-01-15 11:02:43.563009', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (711, '2024-01-15 11:02:43.724240', '2024-01-15 11:02:43.724240', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (712, '2024-01-15 11:03:01.646503', '2024-01-15 11:03:01.646503', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (713, '2024-01-15 11:03:01.705250', '2024-01-15 11:03:01.705250', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (714, '2024-01-15 11:09:08.252919', '2024-01-15 11:09:08.252919', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (715, '2024-01-15 11:09:08.267448', '2024-01-15 11:09:08.267448', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (716, '2024-01-15 11:09:31.620425', '2024-01-15 11:09:31.620425', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (717, '2024-01-15 11:09:31.634813', '2024-01-15 11:09:31.634813', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (718, '2024-01-15 11:10:00.293643', '2024-01-15 11:10:00.293643', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (719, '2024-01-15 11:10:00.393604', '2024-01-15 11:10:00.393604', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (720, '2024-01-15 11:10:23.377376', '2024-01-15 11:10:23.377376', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (721, '2024-01-15 11:10:23.396579', '2024-01-15 11:10:23.396579', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (722, '2024-01-15 11:11:50.386815', '2024-01-15 11:11:50.386815', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (723, '2024-01-15 11:11:50.481393', '2024-01-15 11:11:50.481393', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (724, '2024-01-15 11:12:35.172545', '2024-01-15 11:12:35.172545', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (725, '2024-01-15 11:12:35.261295', '2024-01-15 11:12:35.261295', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (726, '2024-01-15 11:15:28.473158', '2024-01-15 11:15:28.473158', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (727, '2024-01-15 11:15:28.518959', '2024-01-15 11:15:28.518959', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (728, '2024-01-15 11:15:28.597513', '2024-01-15 11:15:28.597513', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (729, '2024-01-15 11:15:30.742603', '2024-01-15 11:15:30.742603', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (730, '2024-01-15 11:15:30.917904', '2024-01-15 11:15:30.917904', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (731, '2024-01-15 11:15:55.507015', '2024-01-15 11:15:55.507015', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (732, '2024-01-15 11:15:55.721864', '2024-01-15 11:15:55.721864', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (733, '2024-01-15 11:16:00.410058', '2024-01-15 11:16:00.410058', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (734, '2024-01-15 11:16:00.483518', '2024-01-15 11:16:00.483518', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (735, '2024-01-15 11:16:00.518867', '2024-01-15 11:16:00.518867', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (736, '2024-01-15 11:16:02.561366', '2024-01-15 11:16:02.561366', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (737, '2024-01-15 11:16:02.710789', '2024-01-15 11:16:02.710789', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (738, '2024-01-15 11:16:16.884152', '2024-01-15 11:16:16.884152', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (739, '2024-01-15 11:16:16.942676', '2024-01-15 11:16:16.942676', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (740, '2024-01-15 11:16:17.045540', '2024-01-15 11:16:17.045540', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (741, '2024-01-15 11:16:19.269475', '2024-01-15 11:16:19.269475', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (742, '2024-01-15 11:16:19.420324', '2024-01-15 11:16:19.420324', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (743, '2024-01-15 11:17:42.919551', '2024-01-15 11:17:42.919551', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (744, '2024-01-15 11:17:42.992481', '2024-01-15 11:17:42.992481', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (745, '2024-01-15 11:17:43.049502', '2024-01-15 11:17:43.049502', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (746, '2024-01-15 11:17:45.185428', '2024-01-15 11:17:45.185428', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (747, '2024-01-15 11:17:45.371682', '2024-01-15 11:17:45.371682', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (748, '2024-01-15 11:22:08.072996', '2024-01-15 11:22:08.072996', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (749, '2024-01-15 11:22:08.139453', '2024-01-15 11:22:08.139453', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (750, '2024-01-15 11:22:08.233986', '2024-01-15 11:22:08.233986', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (751, '2024-01-15 11:22:10.371780', '2024-01-15 11:22:10.371780', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (752, '2024-01-15 11:22:10.554372', '2024-01-15 11:22:10.554372', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (753, '2024-01-15 11:22:30.080524', '2024-01-15 11:22:30.080524', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (754, '2024-01-15 11:22:30.152320', '2024-01-15 11:22:30.152320', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (755, '2024-01-15 11:22:30.233581', '2024-01-15 11:22:30.233581', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (756, '2024-01-15 11:22:32.597307', '2024-01-15 11:22:32.597307', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (757, '2024-01-15 11:22:32.820772', '2024-01-15 11:22:32.820772', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (758, '2024-01-15 11:22:35.989612', '2024-01-15 11:22:35.989612', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (759, '2024-01-15 11:22:36.066937', '2024-01-15 11:22:36.066937', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (760, '2024-01-15 11:22:36.106956', '2024-01-15 11:22:36.106956', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (761, '2024-01-15 11:22:43.907458', '2024-01-15 11:22:43.907458', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (762, '2024-01-15 11:22:43.970931', '2024-01-15 11:22:43.970931', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (763, '2024-01-15 11:22:44.013373', '2024-01-15 11:22:44.013373', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (764, '2024-01-15 11:23:12.095066', '2024-01-15 11:23:12.095066', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (765, '2024-01-15 11:23:12.227613', '2024-01-15 11:23:12.227613', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (766, '2024-01-15 11:23:34.115723', '2024-01-15 11:23:34.115723', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (767, '2024-01-15 11:23:34.180579', '2024-01-15 11:23:34.180579', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (768, '2024-01-15 11:23:34.270916', '2024-01-15 11:23:34.270916', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (769, '2024-01-15 11:23:36.640673', '2024-01-15 11:23:36.640673', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (770, '2024-01-15 11:23:36.828183', '2024-01-15 11:23:36.828183', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (771, '2024-01-15 11:23:54.758326', '2024-01-15 11:23:54.758326', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (772, '2024-01-15 11:23:54.819013', '2024-01-15 11:23:54.819013', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (773, '2024-01-15 11:23:54.897338', '2024-01-15 11:23:54.897338', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (774, '2024-01-15 11:23:57.200708', '2024-01-15 11:23:57.200708', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (775, '2024-01-15 11:23:57.380661', '2024-01-15 11:23:57.380661', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (776, '2024-01-15 11:24:47.941973', '2024-01-15 11:24:47.941973', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (777, '2024-01-15 11:24:48.007386', '2024-01-15 11:24:48.007386', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (778, '2024-01-15 11:24:48.081620', '2024-01-15 11:24:48.081620', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (779, '2024-01-15 11:24:50.343915', '2024-01-15 11:24:50.343915', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (780, '2024-01-15 11:24:50.524482', '2024-01-15 11:24:50.524482', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (781, '2024-01-15 11:25:13.766034', '2024-01-15 11:25:13.766034', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (782, '2024-01-15 11:25:13.833032', '2024-01-15 11:25:13.833032', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (783, '2024-01-15 11:25:13.890388', '2024-01-15 11:25:13.890388', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (784, '2024-01-15 11:25:16.028507', '2024-01-15 11:25:16.028507', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (785, '2024-01-15 11:25:16.208242', '2024-01-15 11:25:16.208242', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (786, '2024-01-15 11:25:25.366031', '2024-01-15 11:25:25.366031', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (787, '2024-01-15 11:25:25.450626', '2024-01-15 11:25:25.450626', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (788, '2024-01-15 11:25:25.503860', '2024-01-15 11:25:25.503860', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (789, '2024-01-15 11:25:27.648493', '2024-01-15 11:25:27.648493', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (790, '2024-01-15 11:25:27.822442', '2024-01-15 11:25:27.822442', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (791, '2024-01-15 11:26:52.470879', '2024-01-15 11:26:52.470879', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (792, '2024-01-15 11:26:52.479008', '2024-01-15 11:26:52.479008', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (793, '2024-01-15 11:26:52.514942', '2024-01-15 11:26:52.514942', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (794, '2024-01-15 11:26:52.580293', '2024-01-15 11:26:52.580293', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (795, '2024-01-15 11:26:52.621376', '2024-01-15 11:26:52.621376', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (796, '2024-01-15 11:26:53.121521', '2024-01-15 11:26:53.121521', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (797, '2024-01-15 11:26:53.507128', '2024-01-15 11:26:53.507128', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (798, '2024-01-15 11:27:15.419500', '2024-01-15 11:27:15.419500', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (799, '2024-01-15 11:27:15.481857', '2024-01-15 11:27:15.481857', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (800, '2024-01-15 11:27:15.779856', '2024-01-15 11:27:15.779856', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (801, '2024-01-15 11:27:16.115699', '2024-01-15 11:27:16.115699', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (802, '2024-01-15 11:27:28.286459', '2024-01-15 11:27:28.286459', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (803, '2024-01-15 11:27:28.425846', '2024-01-15 11:27:28.425846', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (804, '2024-01-15 11:29:00.542017', '2024-01-15 11:29:00.542017', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (805, '2024-01-15 11:29:00.609057', '2024-01-15 11:29:00.609057', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (806, '2024-01-15 11:29:00.953766', '2024-01-15 11:29:00.953766', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (807, '2024-01-15 11:29:08.140613', '2024-01-15 11:29:08.140613', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (808, '2024-01-15 11:29:08.274122', '2024-01-15 11:29:08.274122', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (809, '2024-01-15 11:29:21.062358', '2024-01-15 11:29:21.062358', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (810, '2024-01-15 11:29:25.397533', '2024-01-15 11:29:25.397533', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (811, '2024-01-15 11:29:26.746446', '2024-01-15 11:29:26.746446', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (812, '2024-01-15 11:29:48.321714', '2024-01-15 11:29:48.321714', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (813, '2024-01-15 11:29:48.380585', '2024-01-15 11:29:48.380585', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (814, '2024-01-15 11:29:48.712764', '2024-01-15 11:29:48.712764', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (815, '2024-01-15 11:29:58.206783', '2024-01-15 11:29:58.206783', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (816, '2024-01-15 11:29:58.271118', '2024-01-15 11:29:58.271118', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (817, '2024-01-15 11:29:58.518387', '2024-01-15 11:29:58.518387', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (818, '2024-01-15 11:30:10.707516', '2024-01-15 11:30:10.707516', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (819, '2024-01-15 11:30:10.772160', '2024-01-15 11:30:10.772160', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (820, '2024-01-15 11:30:10.980687', '2024-01-15 11:30:10.980687', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (821, '2024-01-15 11:38:20.598512', '2024-01-15 11:38:20.598512', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (822, '2024-01-15 11:41:45.689720', '2024-01-15 11:41:45.689720', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (823, '2024-01-15 11:41:45.711244', '2024-01-15 11:41:45.711244', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (824, '2024-01-15 11:41:45.739185', '2024-01-15 11:41:45.739185', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (825, '2024-01-15 11:41:45.759775', '2024-01-15 11:41:45.759775', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (826, '2024-01-15 11:41:45.816342', '2024-01-15 11:41:45.816342', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (827, '2024-01-15 11:41:45.848670', '2024-01-15 11:41:45.848670', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (828, '2024-01-15 11:41:46.231199', '2024-01-15 11:41:46.231199', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (829, '2024-01-15 11:41:46.528320', '2024-01-15 11:41:46.528320', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (830, '2024-01-15 11:41:47.004771', '2024-01-15 11:41:47.004771', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (831, '2024-01-15 11:41:52.103639', '2024-01-15 11:41:52.103639', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (832, '2024-01-15 11:41:52.159960', '2024-01-15 11:41:52.159960', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (833, '2024-01-15 11:41:52.366597', '2024-01-15 11:41:52.366597', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (834, '2024-01-15 11:41:56.819414', '2024-01-15 11:41:56.819414', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (835, '2024-01-15 11:42:01.471350', '2024-01-15 11:42:01.471350', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (836, '2024-01-15 11:42:01.607529', '2024-01-15 11:42:01.607529', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (837, '2024-01-15 11:42:05.146960', '2024-01-15 11:42:05.146960', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (838, '2024-01-15 11:42:06.654272', '2024-01-15 11:42:06.654272', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (839, '2024-01-15 11:43:03.819413', '2024-01-15 11:43:03.819413', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (840, '2024-01-15 11:43:03.828241', '2024-01-15 11:43:03.828241', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (841, '2024-01-15 11:43:03.900960', '2024-01-15 11:43:03.900960', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (842, '2024-01-15 11:43:04.313778', '2024-01-15 11:43:04.313778', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (843, '2024-01-15 11:43:04.423130', '2024-01-15 11:43:04.423130', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (844, '2024-01-15 11:43:04.647970', '2024-01-15 11:43:04.647970', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (845, '2024-01-15 11:43:04.675963', '2024-01-15 11:43:04.675963', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (846, '2024-01-15 11:43:04.968052', '2024-01-15 11:43:04.968052', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (847, '2024-01-15 11:43:23.492179', '2024-01-15 11:43:23.492179', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (848, '2024-01-15 11:43:23.656314', '2024-01-15 11:43:23.656314', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (849, '2024-01-15 11:43:25.711510', '2024-01-15 11:43:25.711510', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (850, '2024-01-15 11:43:34.059130', '2024-01-15 11:43:34.059130', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (851, '2024-01-15 11:43:34.311379', '2024-01-15 11:43:34.311379', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (852, '2024-01-15 11:43:40.781973', '2024-01-15 11:43:40.781973', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (853, '2024-01-15 11:43:41.865863', '2024-01-15 11:43:41.865863', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (854, '2024-01-15 11:43:41.998999', '2024-01-15 11:43:41.998999', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (855, '2024-01-15 11:43:48.110615', '2024-01-15 11:43:48.110615', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (856, '2024-01-15 11:43:48.244557', '2024-01-15 11:43:48.244557', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (857, '2024-01-15 11:44:02.619696', '2024-01-15 11:44:02.619696', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (858, '2024-01-15 11:44:37.267431', '2024-01-15 11:44:37.267431', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (859, '2024-01-15 11:44:37.328401', '2024-01-15 11:44:37.328401', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (860, '2024-01-15 11:44:37.497327', '2024-01-15 11:44:37.497327', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (861, '2024-01-15 11:44:41.814992', '2024-01-15 11:44:41.814992', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (862, '2024-01-15 11:44:41.970852', '2024-01-15 11:44:41.970852', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (863, '2024-01-15 11:44:47.129144', '2024-01-15 11:44:47.129144', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (864, '2024-01-15 11:44:47.196069', '2024-01-15 11:44:47.196069', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (865, '2024-01-15 11:44:47.248854', '2024-01-15 11:44:47.248854', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (866, '2024-01-15 11:44:49.431134', '2024-01-15 11:44:49.431134', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (867, '2024-01-15 11:44:49.558465', '2024-01-15 11:44:49.558465', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (868, '2024-01-15 11:44:52.405920', '2024-01-15 11:44:52.405920', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (869, '2024-01-15 11:45:02.508100', '2024-01-15 11:45:02.508100', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (870, '2024-01-15 11:45:27.232646', '2024-01-15 11:45:27.232646', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (871, '2024-01-15 11:45:27.298703', '2024-01-15 11:45:27.298703', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (872, '2024-01-15 11:45:27.384663', '2024-01-15 11:45:27.384663', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (873, '2024-01-15 11:45:29.606767', '2024-01-15 11:45:29.606767', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (874, '2024-01-15 11:46:14.224191', '2024-01-15 11:46:14.224191', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (875, '2024-01-15 11:46:14.291775', '2024-01-15 11:46:14.291775', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (876, '2024-01-15 11:46:14.370038', '2024-01-15 11:46:14.370038', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (877, '2024-01-15 11:46:16.618108', '2024-01-15 11:46:16.618108', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (878, '2024-01-15 11:46:20.516758', '2024-01-15 11:46:20.516758', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (879, '2024-01-15 11:46:27.329614', '2024-01-15 11:46:27.329614', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (880, '2024-01-15 11:46:27.394563', '2024-01-15 11:46:27.394563', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (881, '2024-01-15 11:46:27.448321', '2024-01-15 11:46:27.448321', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (882, '2024-01-15 11:46:29.578137', '2024-01-15 11:46:29.578137', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (883, '2024-01-15 11:46:32.184760', '2024-01-15 11:46:32.184760', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (884, '2024-01-15 11:46:43.868803', '2024-01-15 11:46:43.868803', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (885, '2024-01-15 11:47:04.880483', '2024-01-15 11:47:04.880483', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (886, '2024-01-15 11:47:04.953195', '2024-01-15 11:47:04.953195', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (887, '2024-01-15 11:47:05.029098', '2024-01-15 11:47:05.029098', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (888, '2024-01-15 11:47:06.536278', '2024-01-15 11:47:06.536278', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (889, '2024-01-15 11:47:07.560471', '2024-01-15 11:47:07.560471', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (890, '2024-01-15 11:47:07.649760', '2024-01-15 11:47:07.649760', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (891, '2024-01-15 11:47:10.629711', '2024-01-15 11:47:10.629711', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (892, '2024-01-15 11:47:49.944064', '2024-01-15 11:47:49.944064', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (893, '2024-01-15 11:47:50.013267', '2024-01-15 11:47:50.013267', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (894, '2024-01-15 11:47:50.103296', '2024-01-15 11:47:50.103296', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (895, '2024-01-15 11:47:52.324945', '2024-01-15 11:47:52.324945', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (896, '2024-01-15 11:47:56.401762', '2024-01-15 11:47:56.401762', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (897, '2024-01-15 11:48:16.979885', '2024-01-15 11:48:16.979885', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (898, '2024-01-15 11:48:17.049169', '2024-01-15 11:48:17.049169', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (899, '2024-01-15 11:48:17.190274', '2024-01-15 11:48:17.190274', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (900, '2024-01-15 11:48:21.050542', '2024-01-15 11:48:21.050542', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (901, '2024-01-15 11:48:22.533998', '2024-01-15 11:48:22.533998', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (902, '2024-01-15 11:48:25.121551', '2024-01-15 11:48:25.121551', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (903, '2024-01-15 11:48:54.061693', '2024-01-15 11:48:54.061693', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (904, '2024-01-15 11:48:54.126550', '2024-01-15 11:48:54.126550', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (905, '2024-01-15 11:48:54.228663', '2024-01-15 11:48:54.228663', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (906, '2024-01-15 11:48:56.401327', '2024-01-15 11:48:56.401327', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (907, '2024-01-15 11:48:59.490299', '2024-01-15 11:48:59.490299', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (908, '2024-01-15 11:49:02.699134', '2024-01-15 11:49:02.699134', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (909, '2024-01-15 11:52:51.765526', '2024-01-15 11:52:51.765526', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (910, '2024-01-15 11:52:51.827413', '2024-01-15 11:52:51.827413', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (911, '2024-01-15 11:52:51.919843', '2024-01-15 11:52:51.919843', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (912, '2024-01-15 11:52:54.126272', '2024-01-15 11:52:54.126272', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (913, '2024-01-15 11:52:55.418279', '2024-01-15 11:52:55.418279', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (914, '2024-01-15 11:53:15.102893', '2024-01-15 11:53:15.102893', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (915, '2024-01-15 11:53:15.163093', '2024-01-15 11:53:15.163093', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (916, '2024-01-15 11:53:15.239729', '2024-01-15 11:53:15.239729', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (917, '2024-01-15 11:53:17.420717', '2024-01-15 11:53:17.420717', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (918, '2024-01-15 11:53:18.355429', '2024-01-15 11:53:18.355429', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (919, '2024-01-15 11:53:23.660797', '2024-01-15 11:53:23.660797', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (920, '2024-01-15 11:54:34.155595', '2024-01-15 11:54:34.155595', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (921, '2024-01-15 11:54:34.285119', '2024-01-15 11:54:34.285119', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (922, '2024-01-15 11:54:36.409159', '2024-01-15 11:54:36.409159', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (923, '2024-01-15 11:54:37.503052', '2024-01-15 11:54:37.503052', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (924, '2024-01-15 11:54:42.089636', '2024-01-15 11:54:42.089636', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (925, '2024-01-15 11:54:53.051379', '2024-01-15 11:54:53.051379', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (926, '2024-01-15 11:54:53.109596', '2024-01-15 11:54:53.109596', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (927, '2024-01-15 11:54:53.223193', '2024-01-15 11:54:53.223193', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (928, '2024-01-15 11:54:55.388871', '2024-01-15 11:54:55.388871', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (929, '2024-01-15 11:54:57.126970', '2024-01-15 11:54:57.126970', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (930, '2024-01-15 11:55:00.877616', '2024-01-15 11:55:00.877616', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (931, '2024-01-15 11:55:24.875253', '2024-01-15 11:55:24.875253', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (932, '2024-01-15 11:55:24.935086', '2024-01-15 11:55:24.935086', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (933, '2024-01-15 11:55:25.041862', '2024-01-15 11:55:25.041862', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (934, '2024-01-15 11:55:27.164931', '2024-01-15 11:55:27.164931', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (935, '2024-01-15 11:55:28.771779', '2024-01-15 11:55:28.771779', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (936, '2024-01-15 11:56:14.156122', '2024-01-15 11:56:14.156122', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (937, '2024-01-15 11:57:11.736059', '2024-01-15 11:57:11.736059', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (938, '2024-01-15 11:57:11.858978', '2024-01-15 11:57:11.858978', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (939, '2024-01-15 11:57:14.022693', '2024-01-15 11:57:14.022693', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (940, '2024-01-15 11:58:01.891616', '2024-01-15 11:58:01.891616', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (941, '2024-01-15 11:58:02.012403', '2024-01-15 11:58:02.012403', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (942, '2024-01-15 11:58:04.283807', '2024-01-15 11:58:04.283807', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (943, '2024-01-15 11:58:05.196106', '2024-01-15 11:58:05.196106', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (944, '2024-01-15 11:58:05.329454', '2024-01-15 11:58:05.329454', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (945, '2024-01-15 11:59:25.241635', '2024-01-15 11:59:25.241635', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (946, '2024-01-15 11:59:25.383569', '2024-01-15 11:59:25.383569', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (947, '2024-01-15 11:59:27.774239', '2024-01-15 11:59:27.774239', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (948, '2024-01-15 12:04:51.556209', '2024-01-15 12:04:51.556209', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (949, '2024-01-15 12:04:51.580681', '2024-01-15 12:04:51.580681', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (950, '2024-01-15 12:25:35.834159', '2024-01-15 12:25:35.834159', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (951, '2024-01-15 14:20:06.098388', '2024-01-15 14:20:06.098388', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (952, '2024-01-15 14:26:28.775114', '2024-01-15 14:26:28.775114', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (953, '2024-01-15 14:45:50.281979', '2024-01-15 14:45:50.281979', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (954, '2024-01-15 14:46:38.802181', '2024-01-15 14:46:38.802181', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (955, '2024-01-15 14:46:38.881789', '2024-01-15 14:46:38.881789', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (956, '2024-01-15 14:46:39.086491', '2024-01-15 14:46:39.086491', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (957, '2024-01-15 14:46:42.691563', '2024-01-15 14:46:42.691563', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (958, '2024-01-15 14:46:49.372749', '2024-01-15 14:46:49.372749', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (959, '2024-01-15 14:46:52.242149', '2024-01-15 14:46:52.242149', NULL, '本机地址', '{\"classIDs\": [2], \"collegeID\": \"big_data\", \"teacherName\": \"123\", \"teacherTitle\": \"432\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (960, '2024-01-15 14:47:14.175130', '2024-01-15 14:47:14.175130', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (961, '2024-01-15 14:47:14.230036', '2024-01-15 14:47:14.230036', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (962, '2024-01-15 14:47:14.369307', '2024-01-15 14:47:14.369307', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (963, '2024-01-15 14:47:16.518591', '2024-01-15 14:47:16.518591', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (964, '2024-01-15 14:47:21.049786', '2024-01-15 14:47:21.049786', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (965, '2024-01-15 14:47:23.317507', '2024-01-15 14:47:23.317507', NULL, '本机地址', '{\"classIDs\": [2], \"collegeID\": \"big_data\", \"teacherName\": \"12\", \"teacherTitle\": \"3\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (966, '2024-01-15 14:49:32.195556', '2024-01-15 14:49:32.195556', NULL, '本机地址', '{\"classIDs\": [2], \"collegeID\": \"big_data\", \"teacherName\": \"12\", \"teacherTitle\": \"3\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (967, '2024-01-15 14:49:54.238402', '2024-01-15 14:49:54.238402', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (968, '2024-01-15 14:49:54.291202', '2024-01-15 14:49:54.291202', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (969, '2024-01-15 14:49:54.370799', '2024-01-15 14:49:54.370799', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (970, '2024-01-15 14:49:56.492114', '2024-01-15 14:49:56.492114', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (971, '2024-01-15 14:49:58.094973', '2024-01-15 14:49:58.094973', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (972, '2024-01-15 14:50:01.388198', '2024-01-15 14:50:01.388198', NULL, '本机地址', '{\"classIDs\": [2], \"collegeID\": \"\", \"teacherName\": \"\", \"teacherTitle\": \"\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (973, '2024-01-15 14:50:28.346589', '2024-01-15 14:50:28.346589', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (974, '2024-01-15 14:50:28.431371', '2024-01-15 14:50:28.431371', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (975, '2024-01-15 14:50:28.527278', '2024-01-15 14:50:28.527278', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (976, '2024-01-15 14:50:33.411759', '2024-01-15 14:50:33.411759', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (977, '2024-01-15 14:50:39.722091', '2024-01-15 14:50:39.722091', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (978, '2024-01-15 14:50:42.279433', '2024-01-15 14:50:42.279433', NULL, '本机地址', '{\"classIDs\": \"2\", \"collegeID\": \"big_data\", \"teacherName\": \"test\", \"teacherTitle\": \"test\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (979, '2024-01-15 14:51:45.468952', '2024-01-15 14:51:45.468952', NULL, '本机地址', '{\"classIDs\": \"2\", \"collegeID\": \"big_data\", \"teacherName\": \"test\", \"teacherTitle\": \"test\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (980, '2024-01-15 14:55:38.129253', '2024-01-15 14:55:38.129253', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (981, '2024-01-15 15:05:46.664165', '2024-01-15 15:05:46.664165', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (982, '2024-01-15 16:31:24.195495', '2024-01-15 16:31:24.195495', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (983, '2024-01-15 17:00:00.218050', '2024-01-15 17:00:00.218050', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (984, '2024-01-15 19:28:46.499119', '2024-01-15 19:28:46.499119', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (985, '2024-01-15 19:29:17.382968', '2024-01-15 19:29:17.382968', NULL, '本机地址', '{\"classIDs\": \"2\", \"collegeID\": \"big_data\", \"teacherName\": \"test\", \"teacherTitle\": \"test\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (986, '2024-01-15 19:30:26.463057', '2024-01-15 19:30:26.463057', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (987, '2024-01-15 19:30:26.544412', '2024-01-15 19:30:26.544412', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (988, '2024-01-15 19:30:26.562100', '2024-01-15 19:30:26.562100', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (989, '2024-01-15 19:30:26.774394', '2024-01-15 19:30:26.774394', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (990, '2024-01-15 19:30:29.095525', '2024-01-15 19:30:29.095525', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (991, '2024-01-15 19:30:32.424350', '2024-01-15 19:30:32.424350', NULL, '本机地址', '{\"classIDs\": \"\", \"collegeID\": \"\", \"teacherName\": \"\", \"teacherTitle\": \"\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (992, '2024-01-15 19:30:51.932685', '2024-01-15 19:30:51.932685', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (993, '2024-01-15 19:31:51.952102', '2024-01-15 19:31:51.952102', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (994, '2024-01-15 19:31:52.015624', '2024-01-15 19:31:52.015624', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (995, '2024-01-15 19:31:52.096347', '2024-01-15 19:31:52.096347', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (996, '2024-01-15 19:31:52.880783', '2024-01-15 19:31:52.880783', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (997, '2024-01-15 19:31:54.653918', '2024-01-15 19:31:54.653918', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (998, '2024-01-15 19:31:57.782346', '2024-01-15 19:31:57.782346', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (999, '2024-01-15 19:32:02.812016', '2024-01-15 19:32:02.812016', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1000, '2024-01-15 19:32:04.439893', '2024-01-15 19:32:04.439893', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (1001, '2024-01-15 19:32:18.862217', '2024-01-15 19:32:18.862217', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (1002, '2024-01-15 19:33:05.530938', '2024-01-15 19:33:05.530938', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1003, '2024-01-15 19:33:05.600274', '2024-01-15 19:33:05.600274', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1004, '2024-01-15 19:33:05.671412', '2024-01-15 19:33:05.671412', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1005, '2024-01-15 19:33:07.781975', '2024-01-15 19:33:07.781975', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1006, '2024-01-15 19:36:14.108244', '2024-01-15 19:36:14.108244', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1007, '2024-01-15 19:36:14.116872', '2024-01-15 19:36:14.116872', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1008, '2024-01-15 19:36:14.292418', '2024-01-15 19:36:14.292418', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1009, '2024-01-15 19:36:14.444907', '2024-01-15 19:36:14.444907', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1010, '2024-01-15 19:36:14.571260', '2024-01-15 19:36:14.571260', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1011, '2024-01-15 19:36:16.543440', '2024-01-15 19:36:16.543440', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (1012, '2024-01-15 19:36:30.722209', '2024-01-15 19:36:30.722209', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1013, '2024-01-15 19:36:30.840231', '2024-01-15 19:36:30.840231', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1014, '2024-01-15 19:36:33.100961', '2024-01-15 19:36:33.100961', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1015, '2024-01-15 19:38:27.949615', '2024-01-15 19:38:27.949615', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1016, '2024-01-15 19:38:28.015436', '2024-01-15 19:38:28.015436', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1017, '2024-01-15 19:38:28.092771', '2024-01-15 19:38:28.092771', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1018, '2024-01-15 19:38:29.249382', '2024-01-15 19:38:29.249382', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1019, '2024-01-15 19:38:30.467457', '2024-01-15 19:38:30.467457', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1020, '2024-01-15 19:38:31.196334', '2024-01-15 19:38:31.196334', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (1021, '2024-01-15 19:39:18.148337', '2024-01-15 19:39:18.148337', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1022, '2024-01-15 19:39:18.207575', '2024-01-15 19:39:18.207575', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1023, '2024-01-15 19:39:18.287683', '2024-01-15 19:39:18.287683', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1024, '2024-01-15 19:39:20.695506', '2024-01-15 19:39:20.695506', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1025, '2024-01-15 19:39:21.605093', '2024-01-15 19:39:21.605093', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (1026, '2024-01-15 19:39:26.810510', '2024-01-15 19:39:26.810510', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1027, '2024-01-15 19:39:33.246404', '2024-01-15 19:39:33.246404', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1028, '2024-01-15 19:39:56.309446', '2024-01-15 19:39:56.309446', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1029, '2024-01-15 19:39:56.364842', '2024-01-15 19:39:56.364842', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1030, '2024-01-15 19:39:56.453011', '2024-01-15 19:39:56.453011', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1031, '2024-01-15 19:39:58.500087', '2024-01-15 19:39:58.500087', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1032, '2024-01-15 19:40:06.641623', '2024-01-15 19:40:06.641623', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1033, '2024-01-15 19:40:06.701834', '2024-01-15 19:40:06.701834', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1034, '2024-01-15 19:40:06.789565', '2024-01-15 19:40:06.789565', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1035, '2024-01-15 19:40:08.779475', '2024-01-15 19:40:08.779475', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1036, '2024-01-15 19:40:11.759585', '2024-01-15 19:40:11.759585', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1037, '2024-01-15 19:40:11.816530', '2024-01-15 19:40:11.816530', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1038, '2024-01-15 19:40:11.889290', '2024-01-15 19:40:11.889290', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1039, '2024-01-15 19:40:13.786124', '2024-01-15 19:40:13.786124', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1040, '2024-01-15 19:40:23.055492', '2024-01-15 19:40:23.055492', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1041, '2024-01-15 19:40:23.112714', '2024-01-15 19:40:23.112714', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1042, '2024-01-15 19:40:23.201350', '2024-01-15 19:40:23.201350', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1043, '2024-01-15 19:40:25.227485', '2024-01-15 19:40:25.227485', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1044, '2024-01-15 19:40:30.817717', '2024-01-15 19:40:30.817717', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1045, '2024-01-15 19:40:30.874497', '2024-01-15 19:40:30.874497', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1046, '2024-01-15 19:40:30.922921', '2024-01-15 19:40:30.922921', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1047, '2024-01-15 19:40:32.791700', '2024-01-15 19:40:32.791700', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1048, '2024-01-15 19:40:55.942689', '2024-01-15 19:40:55.942689', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1049, '2024-01-15 19:40:55.997427', '2024-01-15 19:40:55.997427', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1050, '2024-01-15 19:40:56.090935', '2024-01-15 19:40:56.090935', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1051, '2024-01-15 19:40:58.251738', '2024-01-15 19:40:58.251738', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1052, '2024-01-15 19:41:15.650405', '2024-01-15 19:41:15.650405', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1053, '2024-01-15 19:41:15.708222', '2024-01-15 19:41:15.708222', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1054, '2024-01-15 19:41:15.803477', '2024-01-15 19:41:15.803477', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1055, '2024-01-15 19:41:17.829439', '2024-01-15 19:41:17.829439', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1056, '2024-01-15 19:41:29.696929', '2024-01-15 19:41:29.696929', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1057, '2024-01-15 19:41:29.756457', '2024-01-15 19:41:29.756457', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1058, '2024-01-15 19:41:29.880669', '2024-01-15 19:41:29.880669', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1059, '2024-01-15 19:41:31.896420', '2024-01-15 19:41:31.896420', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1060, '2024-01-15 19:42:25.793048', '2024-01-15 19:42:25.793048', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1061, '2024-01-15 19:42:25.801369', '2024-01-15 19:42:25.801369', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1062, '2024-01-15 19:42:25.861365', '2024-01-15 19:42:25.861365', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1063, '2024-01-15 19:42:26.785845', '2024-01-15 19:42:26.785845', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1064, '2024-01-15 19:42:29.214100', '2024-01-15 19:42:29.214100', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1065, '2024-01-15 19:42:30.296997', '2024-01-15 19:42:30.296997', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1066, '2024-01-15 19:43:00.624322', '2024-01-15 19:43:00.624322', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1067, '2024-01-15 19:43:00.632213', '2024-01-15 19:43:00.632213', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1068, '2024-01-15 19:43:00.696541', '2024-01-15 19:43:00.696541', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1069, '2024-01-15 19:43:01.040926', '2024-01-15 19:43:01.040926', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1070, '2024-01-15 19:43:02.200683', '2024-01-15 19:43:02.200683', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1071, '2024-01-15 19:43:03.374787', '2024-01-15 19:43:03.374787', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1072, '2024-01-15 19:43:09.385830', '2024-01-15 19:43:09.385830', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1073, '2024-01-15 19:43:09.435524', '2024-01-15 19:43:09.435524', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1074, '2024-01-15 19:43:09.497077', '2024-01-15 19:43:09.497077', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1075, '2024-01-15 19:43:11.431483', '2024-01-15 19:43:11.431483', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1076, '2024-01-15 19:43:23.688990', '2024-01-15 19:43:23.688990', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1077, '2024-01-15 19:43:23.738422', '2024-01-15 19:43:23.738422', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1078, '2024-01-15 19:43:23.814331', '2024-01-15 19:43:23.814331', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1079, '2024-01-15 19:43:25.825569', '2024-01-15 19:43:25.825569', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1080, '2024-01-15 19:43:28.886792', '2024-01-15 19:43:28.886792', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1081, '2024-01-15 19:43:29.009466', '2024-01-15 19:43:29.009466', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1082, '2024-01-15 19:43:29.045859', '2024-01-15 19:43:29.045859', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1083, '2024-01-15 19:43:31.043798', '2024-01-15 19:43:31.043798', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1084, '2024-01-15 19:44:00.850188', '2024-01-15 19:44:00.850188', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1085, '2024-01-15 19:44:00.899994', '2024-01-15 19:44:00.899994', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1086, '2024-01-15 19:44:01.196757', '2024-01-15 19:44:01.196757', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1087, '2024-01-15 19:44:03.431413', '2024-01-15 19:44:03.431413', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1088, '2024-01-15 19:44:05.175424', '2024-01-15 19:44:05.175424', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1089, '2024-01-15 19:44:05.225752', '2024-01-15 19:44:05.225752', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1090, '2024-01-15 19:44:05.278326', '2024-01-15 19:44:05.278326', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1091, '2024-01-15 19:44:07.266737', '2024-01-15 19:44:07.266737', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1092, '2024-01-15 19:45:13.457184', '2024-01-15 19:45:13.457184', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1093, '2024-01-15 19:45:13.625598', '2024-01-15 19:45:13.625598', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1094, '2024-01-15 19:45:13.809557', '2024-01-15 19:45:13.809557', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1095, '2024-01-15 19:46:00.852993', '2024-01-15 19:46:00.852993', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1096, '2024-01-15 19:46:00.913900', '2024-01-15 19:46:00.913900', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1097, '2024-01-15 19:46:00.997673', '2024-01-15 19:46:00.997673', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1098, '2024-01-15 19:46:03.050790', '2024-01-15 19:46:03.050790', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1099, '2024-01-15 19:49:02.467435', '2024-01-15 19:49:02.467435', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1100, '2024-01-15 19:49:02.529490', '2024-01-15 19:49:02.529490', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1101, '2024-01-15 19:49:02.610188', '2024-01-15 19:49:02.610188', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1102, '2024-01-15 19:49:04.728360', '2024-01-15 19:49:04.728360', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1103, '2024-01-15 20:24:58.718215', '2024-01-15 20:24:58.718215', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1104, '2024-01-15 20:24:58.740493', '2024-01-15 20:24:58.740493', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1105, '2024-01-15 20:25:21.057048', '2024-01-15 20:25:21.057048', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (1106, '2024-01-15 20:25:25.600623', '2024-01-15 20:25:25.600623', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (1107, '2024-01-15 20:25:32.558676', '2024-01-15 20:25:32.558676', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (1108, '2024-01-15 20:27:28.800158', '2024-01-15 20:27:28.800158', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1109, '2024-01-15 20:27:36.847981', '2024-01-15 20:27:36.847981', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1110, '2024-01-15 20:27:36.855184', '2024-01-15 20:27:36.855184', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1111, '2024-01-15 20:27:36.936083', '2024-01-15 20:27:36.936083', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1112, '2024-01-15 20:27:37.094359', '2024-01-15 20:27:37.094359', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1113, '2024-01-15 20:27:39.431085', '2024-01-15 20:27:39.431085', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1114, '2024-01-15 20:27:59.546741', '2024-01-15 20:27:59.546741', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1115, '2024-01-15 20:27:59.604047', '2024-01-15 20:27:59.604047', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1116, '2024-01-15 20:27:59.678626', '2024-01-15 20:27:59.678626', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1117, '2024-01-15 20:28:00.672906', '2024-01-15 20:28:00.672906', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1118, '2024-01-15 20:28:01.986608', '2024-01-15 20:28:01.986608', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1119, '2024-01-15 20:28:17.441701', '2024-01-15 20:28:17.441701', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1120, '2024-01-15 20:28:17.494801', '2024-01-15 20:28:17.494801', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1121, '2024-01-15 20:28:17.574718', '2024-01-15 20:28:17.574718', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1122, '2024-01-15 20:28:19.803110', '2024-01-15 20:28:19.803110', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1123, '2024-01-15 20:29:31.286950', '2024-01-15 20:29:31.286950', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1124, '2024-01-15 20:30:13.686410', '2024-01-15 20:30:13.686410', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1125, '2024-01-15 20:30:13.693163', '2024-01-15 20:30:13.693163', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1126, '2024-01-15 20:30:13.784716', '2024-01-15 20:30:13.784716', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1127, '2024-01-15 20:30:13.846235', '2024-01-15 20:30:13.846235', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1128, '2024-01-15 20:30:16.020444', '2024-01-15 20:30:16.020444', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1129, '2024-01-15 20:30:37.043790', '2024-01-15 20:30:37.043790', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1130, '2024-01-15 20:30:37.104159', '2024-01-15 20:30:37.104159', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1131, '2024-01-15 20:30:37.195078', '2024-01-15 20:30:37.195078', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1132, '2024-01-15 20:30:39.275182', '2024-01-15 20:30:39.275182', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1133, '2024-01-15 20:30:42.772428', '2024-01-15 20:30:42.772428', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1134, '2024-01-15 20:30:44.062991', '2024-01-15 20:30:44.062991', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1135, '2024-01-15 20:30:53.457744', '2024-01-15 20:30:53.457744', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1136, '2024-01-15 20:31:12.404823', '2024-01-15 20:31:12.404823', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1137, '2024-01-15 20:31:19.900487', '2024-01-15 20:31:19.900487', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1138, '2024-01-15 20:31:36.211597', '2024-01-15 20:31:36.211597', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1139, '2024-01-15 20:31:36.268616', '2024-01-15 20:31:36.268616', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1140, '2024-01-15 20:31:36.441132', '2024-01-15 20:31:36.441132', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1141, '2024-01-15 20:31:38.791960', '2024-01-15 20:31:38.791960', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1142, '2024-01-15 20:31:43.517117', '2024-01-15 20:31:43.517117', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1143, '2024-01-15 20:31:43.639366', '2024-01-15 20:31:43.639366', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1144, '2024-01-15 20:31:45.776580', '2024-01-15 20:31:45.776580', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1145, '2024-01-15 20:32:11.870128', '2024-01-15 20:32:11.870128', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1146, '2024-01-15 20:32:11.934984', '2024-01-15 20:32:11.934984', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1147, '2024-01-15 20:32:12.027032', '2024-01-15 20:32:12.027032', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1148, '2024-01-15 20:32:14.435023', '2024-01-15 20:32:14.435023', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1149, '2024-01-15 20:32:29.509609', '2024-01-15 20:32:29.509609', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1150, '2024-01-15 20:32:29.558304', '2024-01-15 20:32:29.558304', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1151, '2024-01-15 20:32:29.624677', '2024-01-15 20:32:29.624677', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1152, '2024-01-15 20:32:31.705830', '2024-01-15 20:32:31.705830', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1153, '2024-01-15 20:33:50.688307', '2024-01-15 20:33:50.688307', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1154, '2024-01-15 20:33:50.768398', '2024-01-15 20:33:50.768398', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1155, '2024-01-15 20:33:50.866615', '2024-01-15 20:33:50.866615', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1156, '2024-01-15 20:33:53.071566', '2024-01-15 20:33:53.071566', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1157, '2024-01-15 20:36:28.158028', '2024-01-15 20:36:28.158028', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1158, '2024-01-15 20:36:28.298164', '2024-01-15 20:36:28.298164', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1159, '2024-01-15 20:36:28.492679', '2024-01-15 20:36:28.492679', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1160, '2024-01-15 20:36:30.897595', '2024-01-15 20:36:30.897595', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1161, '2024-01-16 20:09:06.543939', '2024-01-16 20:09:06.543939', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1162, '2024-01-16 20:37:55.139636', '2024-01-16 20:37:55.139636', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1163, '2024-01-16 20:43:02.739689', '2024-01-16 20:43:02.739689', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1164, '2024-01-16 20:43:05.529610', '2024-01-16 20:43:05.529610', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsImlkIjoxLCJpYXQiOjE3MDUyNDQ5NDUsImV4cCI6MTcwNzgzNjk0NX0.hhLKBTl6KcSXfh7A8CUyV_wcrnYVsMgvhYqvs8skLDA\"}', '127.0.0.1', '/app/user/login/refreshToken');
INSERT INTO `base_sys_log` VALUES (1165, '2024-01-16 20:43:05.663222', '2024-01-16 20:43:05.663222', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1166, '2024-01-16 20:46:41.302985', '2024-01-16 20:46:41.302985', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1167, '2024-01-16 20:46:42.344130', '2024-01-16 20:46:42.344130', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (1168, '2024-01-16 20:46:50.950690', '2024-01-16 20:46:50.950690', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1169, '2024-01-16 20:56:02.042217', '2024-01-16 20:56:02.042217', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1170, '2024-01-16 21:00:53.232700', '2024-01-16 21:00:53.232700', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (1171, '2024-01-16 21:01:03.267315', '2024-01-16 21:01:03.267315', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1172, '2024-01-16 21:01:03.507191', '2024-01-16 21:01:03.507191', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1173, '2024-01-16 21:01:03.533554', '2024-01-16 21:01:03.533554', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1174, '2024-01-16 21:01:50.944170', '2024-01-16 21:01:50.944170', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1175, '2024-01-16 21:01:51.034368', '2024-01-16 21:01:51.034368', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1176, '2024-01-16 21:01:51.133294', '2024-01-16 21:01:51.133294', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1177, '2024-01-16 21:01:53.723544', '2024-01-16 21:01:53.723544', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1178, '2024-01-16 21:01:59.633404', '2024-01-16 21:01:59.633404', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1179, '2024-01-16 21:01:59.710379', '2024-01-16 21:01:59.710379', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1180, '2024-01-16 21:01:59.785977', '2024-01-16 21:01:59.785977', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1181, '2024-01-16 21:02:02.026094', '2024-01-16 21:02:02.026094', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1182, '2024-01-16 21:02:02.307470', '2024-01-16 21:02:02.307470', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1183, '2024-01-16 21:05:34.384457', '2024-01-16 21:05:34.384457', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1184, '2024-01-16 21:05:34.475744', '2024-01-16 21:05:34.475744', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1185, '2024-01-16 21:05:34.673842', '2024-01-16 21:05:34.673842', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1186, '2024-01-16 21:05:37.052157', '2024-01-16 21:05:37.052157', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1187, '2024-01-16 21:05:37.230530', '2024-01-16 21:05:37.230530', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1188, '2024-01-16 21:06:33.250488', '2024-01-16 21:06:33.250488', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1189, '2024-01-16 21:06:33.324786', '2024-01-16 21:06:33.324786', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1190, '2024-01-16 21:06:33.440949', '2024-01-16 21:06:33.440949', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1191, '2024-01-16 21:06:36.004974', '2024-01-16 21:06:36.004974', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1192, '2024-01-16 21:06:36.200579', '2024-01-16 21:06:36.200579', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1193, '2024-01-16 21:07:15.296539', '2024-01-16 21:07:15.296539', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1194, '2024-01-16 21:07:15.370364', '2024-01-16 21:07:15.370364', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1195, '2024-01-16 21:07:15.472700', '2024-01-16 21:07:15.472700', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1196, '2024-01-16 21:07:17.923411', '2024-01-16 21:07:17.923411', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1197, '2024-01-16 21:07:18.131236', '2024-01-16 21:07:18.131236', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1198, '2024-01-16 21:07:50.249873', '2024-01-16 21:07:50.249873', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1199, '2024-01-16 21:07:50.317248', '2024-01-16 21:07:50.317248', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1200, '2024-01-16 21:07:50.449231', '2024-01-16 21:07:50.449231', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1201, '2024-01-16 21:07:52.810273', '2024-01-16 21:07:52.810273', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1202, '2024-01-16 21:07:52.993743', '2024-01-16 21:07:52.993743', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1203, '2024-01-16 21:10:19.709041', '2024-01-16 21:10:19.709041', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1204, '2024-01-16 21:10:19.770909', '2024-01-16 21:10:19.770909', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1205, '2024-01-16 21:10:19.916012', '2024-01-16 21:10:19.916012', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1206, '2024-01-16 21:10:22.463644', '2024-01-16 21:10:22.463644', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1207, '2024-01-16 21:10:22.629291', '2024-01-16 21:10:22.629291', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1208, '2024-01-16 21:13:04.518632', '2024-01-16 21:13:04.518632', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1209, '2024-01-16 21:13:04.596355', '2024-01-16 21:13:04.596355', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1210, '2024-01-16 21:13:04.684712', '2024-01-16 21:13:04.684712', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1211, '2024-01-16 21:13:07.148862', '2024-01-16 21:13:07.148862', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1212, '2024-01-16 21:13:07.344030', '2024-01-16 21:13:07.344030', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1213, '2024-01-16 21:13:29.573010', '2024-01-16 21:13:29.573010', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1214, '2024-01-16 21:13:29.634968', '2024-01-16 21:13:29.634968', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1215, '2024-01-16 21:13:29.815237', '2024-01-16 21:13:29.815237', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1216, '2024-01-16 21:13:32.125722', '2024-01-16 21:13:32.125722', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1217, '2024-01-16 21:13:32.331062', '2024-01-16 21:13:32.331062', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1218, '2024-01-16 21:13:37.018571', '2024-01-16 21:13:37.018571', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1219, '2024-01-16 21:13:37.151779', '2024-01-16 21:13:37.151779', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1220, '2024-01-16 21:14:22.782220', '2024-01-16 21:14:22.782220', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1221, '2024-01-16 21:14:22.845054', '2024-01-16 21:14:22.845054', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1222, '2024-01-16 21:14:22.987482', '2024-01-16 21:14:22.987482', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1223, '2024-01-16 21:14:25.269512', '2024-01-16 21:14:25.269512', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1224, '2024-01-16 21:14:25.480978', '2024-01-16 21:14:25.480978', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1225, '2024-01-16 21:15:52.863881', '2024-01-16 21:15:52.863881', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1226, '2024-01-16 21:15:53.031332', '2024-01-16 21:15:53.031332', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1227, '2024-01-16 21:25:02.000317', '2024-01-16 21:25:02.000317', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1228, '2024-01-16 21:25:02.160892', '2024-01-16 21:25:02.160892', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1229, '2024-01-16 21:25:02.364078', '2024-01-16 21:25:02.364078', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1230, '2024-01-16 21:25:24.540111', '2024-01-16 21:25:24.540111', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1231, '2024-01-16 21:25:24.760390', '2024-01-16 21:25:24.760390', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1232, '2024-01-16 21:26:07.949967', '2024-01-16 21:26:07.949967', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1233, '2024-01-16 21:26:08.102332', '2024-01-16 21:26:08.102332', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1234, '2024-01-16 21:26:26.028704', '2024-01-16 21:26:26.028704', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1235, '2024-01-16 21:26:26.315214', '2024-01-16 21:26:26.315214', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1236, '2024-01-16 21:30:27.734114', '2024-01-16 21:30:27.734114', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1237, '2024-01-16 21:30:27.798028', '2024-01-16 21:30:27.798028', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1238, '2024-01-16 21:30:27.937527', '2024-01-16 21:30:27.937527', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1239, '2024-01-16 21:32:12.422452', '2024-01-16 21:32:12.422452', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1240, '2024-01-16 21:32:12.607243', '2024-01-16 21:32:12.607243', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1241, '2024-01-16 21:32:55.540558', '2024-01-16 21:32:55.540558', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1242, '2024-01-16 21:32:55.726550', '2024-01-16 21:32:55.726550', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1243, '2024-01-16 21:33:28.370693', '2024-01-16 21:33:28.370693', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1244, '2024-01-16 21:33:28.441212', '2024-01-16 21:33:28.441212', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1245, '2024-01-16 21:33:28.543739', '2024-01-16 21:33:28.543739', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1246, '2024-01-16 21:33:42.165870', '2024-01-16 21:33:42.165870', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1247, '2024-01-16 21:33:42.222142', '2024-01-16 21:33:42.222142', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1248, '2024-01-16 21:33:42.303520', '2024-01-16 21:33:42.303520', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1249, '2024-01-16 21:34:01.558925', '2024-01-16 21:34:01.558925', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1250, '2024-01-16 21:34:01.616745', '2024-01-16 21:34:01.616745', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1251, '2024-01-16 21:34:01.741626', '2024-01-16 21:34:01.741626', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1252, '2024-01-16 21:34:04.221891', '2024-01-16 21:34:04.221891', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1253, '2024-01-16 21:34:04.407229', '2024-01-16 21:34:04.407229', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1254, '2024-01-16 21:35:03.329295', '2024-01-16 21:35:03.329295', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1255, '2024-01-16 21:35:03.392126', '2024-01-16 21:35:03.392126', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1256, '2024-01-16 21:35:03.546469', '2024-01-16 21:35:03.546469', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1257, '2024-01-16 21:35:05.948874', '2024-01-16 21:35:05.948874', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1258, '2024-01-16 21:35:06.141849', '2024-01-16 21:35:06.141849', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1259, '2024-01-16 21:35:28.863827', '2024-01-16 21:35:28.863827', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1260, '2024-01-16 21:35:28.927471', '2024-01-16 21:35:28.927471', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1261, '2024-01-16 21:35:29.065268', '2024-01-16 21:35:29.065268', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1262, '2024-01-16 21:35:31.746678', '2024-01-16 21:35:31.746678', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1263, '2024-01-16 21:35:31.957855', '2024-01-16 21:35:31.957855', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1264, '2024-01-16 21:36:52.924997', '2024-01-16 21:36:52.924997', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1265, '2024-01-16 21:36:53.092817', '2024-01-16 21:36:53.092817', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1266, '2024-01-16 21:36:55.705461', '2024-01-16 21:36:55.705461', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1267, '2024-01-16 21:36:55.948680', '2024-01-16 21:36:55.948680', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1268, '2024-01-16 21:40:59.285228', '2024-01-16 21:40:59.285228', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1269, '2024-01-16 21:41:32.778344', '2024-01-16 21:41:32.778344', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1270, '2024-01-16 21:41:32.829218', '2024-01-16 21:41:32.829218', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1271, '2024-01-16 21:41:32.969592', '2024-01-16 21:41:32.969592', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1272, '2024-01-16 21:41:34.350656', '2024-01-16 21:41:34.350656', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1273, '2024-01-16 21:41:35.557968', '2024-01-16 21:41:35.557968', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1274, '2024-01-16 21:41:35.787411', '2024-01-16 21:41:35.787411', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1275, '2024-01-16 21:43:41.614234', '2024-01-16 21:43:41.614234', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1276, '2024-01-16 21:43:41.667084', '2024-01-16 21:43:41.667084', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1277, '2024-01-16 21:43:41.835138', '2024-01-16 21:43:41.835138', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1278, '2024-01-16 21:43:44.471280', '2024-01-16 21:43:44.471280', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1279, '2024-01-16 21:43:44.704586', '2024-01-16 21:43:44.704586', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1280, '2024-01-16 21:44:12.083767', '2024-01-16 21:44:12.083767', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1281, '2024-01-16 21:44:12.160685', '2024-01-16 21:44:12.160685', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1282, '2024-01-16 21:44:12.291703', '2024-01-16 21:44:12.291703', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1283, '2024-01-16 21:44:14.930771', '2024-01-16 21:44:14.930771', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1284, '2024-01-16 21:44:15.159316', '2024-01-16 21:44:15.159316', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1285, '2024-01-16 21:44:47.567955', '2024-01-16 21:44:47.567955', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1286, '2024-01-16 21:44:47.758909', '2024-01-16 21:44:47.758909', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1287, '2024-01-16 21:44:52.508380', '2024-01-16 21:44:52.508380', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1288, '2024-01-16 21:44:52.559852', '2024-01-16 21:44:52.559852', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1289, '2024-01-16 21:44:52.635466', '2024-01-16 21:44:52.635466', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1290, '2024-01-16 21:44:54.874449', '2024-01-16 21:44:54.874449', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1291, '2024-01-16 21:44:55.086419', '2024-01-16 21:44:55.086419', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1292, '2024-01-16 21:45:04.173965', '2024-01-16 21:45:04.173965', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1293, '2024-01-16 21:45:04.226679', '2024-01-16 21:45:04.226679', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1294, '2024-01-16 21:45:04.321617', '2024-01-16 21:45:04.321617', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1295, '2024-01-16 21:45:06.838448', '2024-01-16 21:45:06.838448', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1296, '2024-01-16 21:45:07.064106', '2024-01-16 21:45:07.064106', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1297, '2024-01-16 21:45:10.514961', '2024-01-16 21:45:10.514961', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1298, '2024-01-16 21:45:10.565597', '2024-01-16 21:45:10.565597', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1299, '2024-01-16 21:45:10.647855', '2024-01-16 21:45:10.647855', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1300, '2024-01-16 21:45:12.847330', '2024-01-16 21:45:12.847330', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1301, '2024-01-16 21:45:13.091754', '2024-01-16 21:45:13.091754', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1302, '2024-01-16 21:45:45.523397', '2024-01-16 21:45:45.523397', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1303, '2024-01-16 21:45:45.579348', '2024-01-16 21:45:45.579348', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1304, '2024-01-16 21:45:45.706989', '2024-01-16 21:45:45.706989', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1305, '2024-01-16 21:45:48.239664', '2024-01-16 21:45:48.239664', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1306, '2024-01-16 21:45:48.471094', '2024-01-16 21:45:48.471094', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1307, '2024-01-16 21:45:57.107469', '2024-01-16 21:45:57.107469', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1308, '2024-01-16 21:45:57.185507', '2024-01-16 21:45:57.185507', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1309, '2024-01-16 21:45:57.308493', '2024-01-16 21:45:57.308493', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1310, '2024-01-16 21:45:59.774720', '2024-01-16 21:45:59.774720', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1311, '2024-01-16 21:45:59.995603', '2024-01-16 21:45:59.995603', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1312, '2024-01-16 21:46:08.896511', '2024-01-16 21:46:08.896511', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1313, '2024-01-16 21:46:08.952075', '2024-01-16 21:46:08.952075', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1314, '2024-01-16 21:46:09.044201', '2024-01-16 21:46:09.044201', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1315, '2024-01-16 21:46:11.442030', '2024-01-16 21:46:11.442030', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1316, '2024-01-16 21:46:11.679522', '2024-01-16 21:46:11.679522', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1317, '2024-01-16 21:46:26.334737', '2024-01-16 21:46:26.334737', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1318, '2024-01-16 21:46:26.393121', '2024-01-16 21:46:26.393121', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1319, '2024-01-16 21:46:26.472609', '2024-01-16 21:46:26.472609', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1320, '2024-01-16 21:46:28.821531', '2024-01-16 21:46:28.821531', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1321, '2024-01-16 21:46:29.012433', '2024-01-16 21:46:29.012433', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1322, '2024-01-16 21:47:11.743429', '2024-01-16 21:47:11.743429', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1323, '2024-01-16 21:47:11.815163', '2024-01-16 21:47:11.815163', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1324, '2024-01-16 21:47:11.957030', '2024-01-16 21:47:11.957030', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1325, '2024-01-16 21:47:14.411046', '2024-01-16 21:47:14.411046', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1326, '2024-01-16 21:47:14.614482', '2024-01-16 21:47:14.614482', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1327, '2024-01-16 21:47:48.046274', '2024-01-16 21:47:48.046274', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1328, '2024-01-16 21:47:48.091389', '2024-01-16 21:47:48.091389', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1329, '2024-01-16 21:47:48.244294', '2024-01-16 21:47:48.244294', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1330, '2024-01-16 21:47:50.696417', '2024-01-16 21:47:50.696417', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1331, '2024-01-16 21:47:50.962285', '2024-01-16 21:47:50.962285', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1332, '2024-01-16 21:48:19.257636', '2024-01-16 21:48:19.257636', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1333, '2024-01-16 21:48:19.324744', '2024-01-16 21:48:19.324744', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1334, '2024-01-16 21:48:19.441309', '2024-01-16 21:48:19.441309', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1335, '2024-01-16 21:48:21.990363', '2024-01-16 21:48:21.990363', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1336, '2024-01-16 21:48:22.215661', '2024-01-16 21:48:22.215661', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1337, '2024-01-16 21:48:44.537593', '2024-01-16 21:48:44.537593', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1338, '2024-01-16 21:48:44.594276', '2024-01-16 21:48:44.594276', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1339, '2024-01-16 21:48:44.731812', '2024-01-16 21:48:44.731812', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1340, '2024-01-16 21:48:47.224335', '2024-01-16 21:48:47.224335', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1341, '2024-01-16 21:48:47.463122', '2024-01-16 21:48:47.463122', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1342, '2024-01-16 21:49:25.043947', '2024-01-16 21:49:25.043947', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1343, '2024-01-16 21:49:25.100516', '2024-01-16 21:49:25.100516', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1344, '2024-01-16 21:49:25.233510', '2024-01-16 21:49:25.233510', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1345, '2024-01-16 21:49:27.703616', '2024-01-16 21:49:27.703616', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1346, '2024-01-16 21:49:27.920124', '2024-01-16 21:49:27.920124', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1347, '2024-01-16 21:49:48.016586', '2024-01-16 21:49:48.016586', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1348, '2024-01-16 21:49:48.203008', '2024-01-16 21:49:48.203008', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1349, '2024-01-16 21:49:50.611646', '2024-01-16 21:49:50.611646', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1350, '2024-01-16 21:49:50.780559', '2024-01-16 21:49:50.780559', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1351, '2024-01-16 21:50:22.677221', '2024-01-16 21:50:22.677221', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1352, '2024-01-16 21:50:22.735852', '2024-01-16 21:50:22.735852', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1353, '2024-01-16 21:50:22.870494', '2024-01-16 21:50:22.870494', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1354, '2024-01-16 21:50:25.385702', '2024-01-16 21:50:25.385702', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1355, '2024-01-16 21:50:25.544680', '2024-01-16 21:50:25.544680', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1356, '2024-01-16 21:51:01.658178', '2024-01-16 21:51:01.658178', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1357, '2024-01-16 21:51:01.722634', '2024-01-16 21:51:01.722634', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1358, '2024-01-16 21:51:01.874273', '2024-01-16 21:51:01.874273', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1359, '2024-01-16 21:51:04.527154', '2024-01-16 21:51:04.527154', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1360, '2024-01-16 21:51:04.763028', '2024-01-16 21:51:04.763028', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1361, '2024-01-16 21:54:39.842292', '2024-01-16 21:54:39.842292', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1362, '2024-01-16 21:54:39.896192', '2024-01-16 21:54:39.896192', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1363, '2024-01-16 21:54:40.055957', '2024-01-16 21:54:40.055957', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1364, '2024-01-16 21:54:42.575639', '2024-01-16 21:54:42.575639', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1365, '2024-01-16 21:54:42.804911', '2024-01-16 21:54:42.804911', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1366, '2024-01-16 21:54:54.169708', '2024-01-16 21:54:54.169708', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1367, '2024-01-16 21:54:54.226210', '2024-01-16 21:54:54.226210', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1368, '2024-01-16 21:54:54.328291', '2024-01-16 21:54:54.328291', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1369, '2024-01-16 21:54:56.754686', '2024-01-16 21:54:56.754686', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1370, '2024-01-16 21:54:57.018231', '2024-01-16 21:54:57.018231', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1371, '2024-01-16 21:56:35.305038', '2024-01-16 21:56:35.305038', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1372, '2024-01-16 21:56:35.378427', '2024-01-16 21:56:35.378427', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1373, '2024-01-16 21:56:35.518020', '2024-01-16 21:56:35.518020', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1374, '2024-01-16 21:56:38.116560', '2024-01-16 21:56:38.116560', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1375, '2024-01-16 21:56:38.366879', '2024-01-16 21:56:38.366879', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1376, '2024-01-16 21:57:09.606171', '2024-01-16 21:57:09.606171', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1377, '2024-01-16 21:57:09.664149', '2024-01-16 21:57:09.664149', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1378, '2024-01-16 21:57:09.831359', '2024-01-16 21:57:09.831359', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1379, '2024-01-16 21:57:12.321221', '2024-01-16 21:57:12.321221', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1380, '2024-01-16 21:57:12.549882', '2024-01-16 21:57:12.549882', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1381, '2024-01-16 21:57:31.555280', '2024-01-16 21:57:31.555280', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1382, '2024-01-16 21:57:31.609637', '2024-01-16 21:57:31.609637', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1383, '2024-01-16 21:57:31.748143', '2024-01-16 21:57:31.748143', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1384, '2024-01-16 21:57:34.121296', '2024-01-16 21:57:34.121296', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1385, '2024-01-16 21:57:34.396075', '2024-01-16 21:57:34.396075', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1386, '2024-01-16 21:57:52.088689', '2024-01-16 21:57:52.088689', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1387, '2024-01-16 21:57:52.146043', '2024-01-16 21:57:52.146043', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1388, '2024-01-16 21:57:52.251712', '2024-01-16 21:57:52.251712', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1389, '2024-01-16 21:57:54.644697', '2024-01-16 21:57:54.644697', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1390, '2024-01-16 21:57:54.878476', '2024-01-16 21:57:54.878476', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1391, '2024-01-16 21:58:14.489143', '2024-01-16 21:58:14.489143', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1392, '2024-01-16 21:58:14.546083', '2024-01-16 21:58:14.546083', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1393, '2024-01-16 21:58:14.694769', '2024-01-16 21:58:14.694769', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1394, '2024-01-16 21:58:17.176490', '2024-01-16 21:58:17.176490', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1395, '2024-01-16 21:58:17.431938', '2024-01-16 21:58:17.431938', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1396, '2024-01-16 21:58:43.120752', '2024-01-16 21:58:43.120752', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1397, '2024-01-16 21:58:43.131115', '2024-01-16 21:58:43.131115', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1398, '2024-01-16 21:58:43.789820', '2024-01-16 21:58:43.789820', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1399, '2024-01-16 21:58:43.937178', '2024-01-16 21:58:43.937178', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1400, '2024-01-16 21:58:45.326369', '2024-01-16 21:58:45.326369', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1401, '2024-01-16 21:58:46.615872', '2024-01-16 21:58:46.615872', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1402, '2024-01-16 21:58:46.857104', '2024-01-16 21:58:46.857104', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1403, '2024-01-16 21:58:51.321953', '2024-01-16 21:58:51.321953', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1404, '2024-01-16 21:58:51.381535', '2024-01-16 21:58:51.381535', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1405, '2024-01-16 21:58:51.481923', '2024-01-16 21:58:51.481923', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1406, '2024-01-16 21:58:53.620326', '2024-01-16 21:58:53.620326', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1407, '2024-01-16 21:58:53.833628', '2024-01-16 21:58:53.833628', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1408, '2024-01-16 21:59:01.763454', '2024-01-16 21:59:01.763454', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1409, '2024-01-16 21:59:01.832855', '2024-01-16 21:59:01.832855', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1410, '2024-01-16 21:59:01.916470', '2024-01-16 21:59:01.916470', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1411, '2024-01-16 21:59:04.326025', '2024-01-16 21:59:04.326025', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1412, '2024-01-16 21:59:04.540987', '2024-01-16 21:59:04.540987', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1413, '2024-01-16 21:59:32.499813', '2024-01-16 21:59:32.499813', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1414, '2024-01-16 21:59:32.553867', '2024-01-16 21:59:32.553867', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1415, '2024-01-16 21:59:32.718948', '2024-01-16 21:59:32.718948', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1416, '2024-01-16 21:59:35.101318', '2024-01-16 21:59:35.101318', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1417, '2024-01-16 21:59:35.290790', '2024-01-16 21:59:35.290790', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1418, '2024-01-16 21:59:44.705572', '2024-01-16 21:59:44.705572', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1419, '2024-01-16 21:59:44.757458', '2024-01-16 21:59:44.757458', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1420, '2024-01-16 21:59:44.841743', '2024-01-16 21:59:44.841743', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1421, '2024-01-16 21:59:46.177259', '2024-01-16 21:59:46.177259', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1422, '2024-01-16 21:59:47.162448', '2024-01-16 21:59:47.162448', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1423, '2024-01-16 21:59:47.331632', '2024-01-16 21:59:47.331632', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1424, '2024-01-16 21:59:55.376065', '2024-01-16 21:59:55.376065', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1425, '2024-01-16 21:59:55.449376', '2024-01-16 21:59:55.449376', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1426, '2024-01-16 21:59:55.517448', '2024-01-16 21:59:55.517448', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1427, '2024-01-16 21:59:57.674266', '2024-01-16 21:59:57.674266', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1428, '2024-01-16 21:59:57.939929', '2024-01-16 21:59:57.939929', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1429, '2024-01-16 22:01:15.708628', '2024-01-16 22:01:15.708628', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1430, '2024-01-16 22:01:15.757035', '2024-01-16 22:01:15.757035', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1431, '2024-01-16 22:01:15.948212', '2024-01-16 22:01:15.948212', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1432, '2024-01-16 22:01:18.418718', '2024-01-16 22:01:18.418718', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1433, '2024-01-16 22:01:18.646010', '2024-01-16 22:01:18.646010', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1434, '2024-01-16 22:01:34.472620', '2024-01-16 22:01:34.472620', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1435, '2024-01-16 22:01:34.514368', '2024-01-16 22:01:34.514368', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1436, '2024-01-16 22:01:34.671632', '2024-01-16 22:01:34.671632', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1437, '2024-01-16 22:01:37.811238', '2024-01-16 22:01:37.811238', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1438, '2024-01-16 22:01:38.033377', '2024-01-16 22:01:38.033377', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1439, '2024-01-16 22:01:38.788837', '2024-01-16 22:01:38.788837', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1440, '2024-01-16 22:01:38.925002', '2024-01-16 22:01:38.925002', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1441, '2024-01-16 22:01:53.637656', '2024-01-16 22:01:53.637656', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1442, '2024-01-16 22:01:53.710207', '2024-01-16 22:01:53.710207', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1443, '2024-01-16 22:01:53.846533', '2024-01-16 22:01:53.846533', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1444, '2024-01-16 22:01:57.276378', '2024-01-16 22:01:57.276378', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1445, '2024-01-16 22:01:57.483947', '2024-01-16 22:01:57.483947', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1446, '2024-01-16 22:07:54.058704', '2024-01-16 22:07:54.058704', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1447, '2024-01-16 22:07:54.145760', '2024-01-16 22:07:54.145760', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1448, '2024-01-16 22:07:54.339560', '2024-01-16 22:07:54.339560', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1449, '2024-01-16 22:07:57.168603', '2024-01-16 22:07:57.168603', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1450, '2024-01-16 22:07:57.372069', '2024-01-16 22:07:57.372069', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1451, '2024-01-16 22:08:29.769766', '2024-01-16 22:08:29.769766', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1452, '2024-01-16 22:08:29.832722', '2024-01-16 22:08:29.832722', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1453, '2024-01-16 22:08:29.972134', '2024-01-16 22:08:29.972134', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1454, '2024-01-16 22:08:32.490411', '2024-01-16 22:08:32.490411', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1455, '2024-01-16 22:08:32.679822', '2024-01-16 22:08:32.679822', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1456, '2024-01-16 22:08:37.104940', '2024-01-16 22:08:37.104940', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1457, '2024-01-16 22:08:37.160862', '2024-01-16 22:08:37.160862', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1458, '2024-01-16 22:08:37.243778', '2024-01-16 22:08:37.243778', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1459, '2024-01-16 22:08:39.406144', '2024-01-16 22:08:39.406144', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1460, '2024-01-16 22:08:39.687882', '2024-01-16 22:08:39.687882', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1461, '2024-01-16 22:09:21.443423', '2024-01-16 22:09:21.443423', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1462, '2024-01-16 22:09:21.496603', '2024-01-16 22:09:21.496603', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1463, '2024-01-16 22:09:21.672879', '2024-01-16 22:09:21.672879', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1464, '2024-01-16 22:09:24.115303', '2024-01-16 22:09:24.115303', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1465, '2024-01-16 22:09:24.350968', '2024-01-16 22:09:24.350968', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1466, '2024-01-16 22:09:59.066857', '2024-01-16 22:09:59.066857', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1467, '2024-01-16 22:09:59.298041', '2024-01-16 22:09:59.298041', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1468, '2024-01-16 22:10:39.214887', '2024-01-16 22:10:39.214887', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1469, '2024-01-16 22:10:39.268287', '2024-01-16 22:10:39.268287', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1470, '2024-01-16 22:10:39.401386', '2024-01-16 22:10:39.401386', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1471, '2024-01-16 22:10:41.252403', '2024-01-16 22:10:41.252403', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1472, '2024-01-16 22:10:41.834840', '2024-01-16 22:10:41.834840', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1473, '2024-01-16 22:10:42.106544', '2024-01-16 22:10:42.106544', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1474, '2024-01-16 22:11:13.341269', '2024-01-16 22:11:13.341269', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1475, '2024-01-16 22:11:13.406896', '2024-01-16 22:11:13.406896', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1476, '2024-01-16 22:11:13.541128', '2024-01-16 22:11:13.541128', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1477, '2024-01-16 22:11:15.979891', '2024-01-16 22:11:15.979891', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1478, '2024-01-16 22:11:16.191995', '2024-01-16 22:11:16.191995', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1479, '2024-01-16 22:12:14.918063', '2024-01-16 22:12:14.918063', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1480, '2024-01-16 22:12:14.994158', '2024-01-16 22:12:14.994158', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1481, '2024-01-16 22:12:15.101008', '2024-01-16 22:12:15.101008', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1482, '2024-01-16 22:12:17.603165', '2024-01-16 22:12:17.603165', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1483, '2024-01-16 22:12:17.841244', '2024-01-16 22:12:17.841244', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1484, '2024-01-16 22:13:26.100028', '2024-01-16 22:13:26.100028', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1485, '2024-01-16 22:13:26.167193', '2024-01-16 22:13:26.167193', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1486, '2024-01-16 22:13:26.301660', '2024-01-16 22:13:26.301660', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1487, '2024-01-16 22:13:28.813247', '2024-01-16 22:13:28.813247', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1488, '2024-01-16 22:13:29.162496', '2024-01-16 22:13:29.162496', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1489, '2024-01-16 22:15:48.918966', '2024-01-16 22:15:48.918966', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1490, '2024-01-16 22:15:49.003373', '2024-01-16 22:15:49.003373', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1491, '2024-01-16 22:15:49.102934', '2024-01-16 22:15:49.102934', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1492, '2024-01-16 22:15:51.617382', '2024-01-16 22:15:51.617382', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1493, '2024-01-16 22:15:51.877158', '2024-01-16 22:15:51.877158', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1494, '2024-01-16 22:16:13.784330', '2024-01-16 22:16:13.784330', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1495, '2024-01-16 22:16:13.830850', '2024-01-16 22:16:13.830850', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1496, '2024-01-16 22:16:13.930920', '2024-01-16 22:16:13.930920', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1497, '2024-01-16 22:16:16.289506', '2024-01-16 22:16:16.289506', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1498, '2024-01-16 22:16:16.522286', '2024-01-16 22:16:16.522286', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1499, '2024-01-16 22:16:42.452734', '2024-01-16 22:16:42.452734', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1500, '2024-01-16 22:16:42.509175', '2024-01-16 22:16:42.509175', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1501, '2024-01-16 22:16:42.592148', '2024-01-16 22:16:42.592148', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1502, '2024-01-16 22:16:44.936312', '2024-01-16 22:16:44.936312', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1503, '2024-01-16 22:16:45.169738', '2024-01-16 22:16:45.169738', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1504, '2024-01-16 22:16:48.473937', '2024-01-16 22:16:48.473937', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1505, '2024-01-16 22:16:48.608297', '2024-01-16 22:16:48.608297', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1506, '2024-01-16 22:17:33.633612', '2024-01-16 22:17:33.633612', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1507, '2024-01-16 22:17:33.692046', '2024-01-16 22:17:33.692046', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1508, '2024-01-16 22:17:33.814810', '2024-01-16 22:17:33.814810', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1509, '2024-01-16 22:17:36.523281', '2024-01-16 22:17:36.523281', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1510, '2024-01-16 22:17:36.759378', '2024-01-16 22:17:36.759378', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1511, '2024-01-16 22:17:53.221887', '2024-01-16 22:17:53.221887', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1512, '2024-01-16 22:17:53.279966', '2024-01-16 22:17:53.279966', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1513, '2024-01-16 22:17:53.445037', '2024-01-16 22:17:53.445037', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1514, '2024-01-16 22:17:55.960127', '2024-01-16 22:17:55.960127', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1515, '2024-01-16 22:17:56.288130', '2024-01-16 22:17:56.288130', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1516, '2024-01-16 22:18:28.047974', '2024-01-16 22:18:28.047974', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1517, '2024-01-16 22:18:28.110127', '2024-01-16 22:18:28.110127', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1518, '2024-01-16 22:18:28.276769', '2024-01-16 22:18:28.276769', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1519, '2024-01-16 22:18:30.759016', '2024-01-16 22:18:30.759016', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1520, '2024-01-16 22:18:30.943715', '2024-01-16 22:18:30.943715', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1521, '2024-01-16 22:18:36.288690', '2024-01-16 22:18:36.288690', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1522, '2024-01-16 22:18:36.355377', '2024-01-16 22:18:36.355377', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1523, '2024-01-16 22:18:36.474279', '2024-01-16 22:18:36.474279', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1524, '2024-01-16 22:18:38.692602', '2024-01-16 22:18:38.692602', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1525, '2024-01-16 22:18:38.910525', '2024-01-16 22:18:38.910525', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1526, '2024-01-16 22:18:49.518298', '2024-01-16 22:18:49.518298', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1527, '2024-01-16 22:18:49.580754', '2024-01-16 22:18:49.580754', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1528, '2024-01-16 22:18:49.692857', '2024-01-16 22:18:49.692857', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1529, '2024-01-16 22:18:52.150321', '2024-01-16 22:18:52.150321', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1530, '2024-01-16 22:18:52.358730', '2024-01-16 22:18:52.358730', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1531, '2024-01-16 22:19:10.670444', '2024-01-16 22:19:10.670444', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1532, '2024-01-16 22:19:10.716336', '2024-01-16 22:19:10.716336', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1533, '2024-01-16 22:19:10.906656', '2024-01-16 22:19:10.906656', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1534, '2024-01-16 22:19:13.330191', '2024-01-16 22:19:13.330191', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1535, '2024-01-16 22:19:13.573881', '2024-01-16 22:19:13.573881', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1536, '2024-01-16 22:19:57.890225', '2024-01-16 22:19:57.890225', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1537, '2024-01-16 22:19:57.947287', '2024-01-16 22:19:57.947287', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1538, '2024-01-16 22:19:58.138224', '2024-01-16 22:19:58.138224', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1539, '2024-01-16 22:20:00.690914', '2024-01-16 22:20:00.690914', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1540, '2024-01-16 22:20:00.859814', '2024-01-16 22:20:00.859814', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1541, '2024-01-16 22:20:10.033678', '2024-01-16 22:20:10.033678', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1542, '2024-01-16 22:20:10.088078', '2024-01-16 22:20:10.088078', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1543, '2024-01-16 22:20:10.172574', '2024-01-16 22:20:10.172574', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1544, '2024-01-16 22:20:12.594213', '2024-01-16 22:20:12.594213', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1545, '2024-01-16 22:20:12.796697', '2024-01-16 22:20:12.796697', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1546, '2024-01-16 22:20:24.346981', '2024-01-16 22:20:24.346981', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1547, '2024-01-16 22:20:24.403441', '2024-01-16 22:20:24.403441', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1548, '2024-01-16 22:20:24.572941', '2024-01-16 22:20:24.572941', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1549, '2024-01-16 22:20:27.066504', '2024-01-16 22:20:27.066504', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1550, '2024-01-16 22:20:27.285989', '2024-01-16 22:20:27.285989', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1551, '2024-01-16 22:23:48.402304', '2024-01-16 22:23:48.402304', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1552, '2024-01-16 22:23:48.458411', '2024-01-16 22:23:48.458411', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1553, '2024-01-16 22:23:48.652846', '2024-01-16 22:23:48.652846', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1554, '2024-01-16 22:24:16.966060', '2024-01-16 22:24:16.966060', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1555, '2024-01-16 22:24:17.029678', '2024-01-16 22:24:17.029678', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1556, '2024-01-16 22:24:17.329955', '2024-01-16 22:24:17.329955', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1557, '2024-01-16 22:24:25.128384', '2024-01-16 22:24:25.128384', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1558, '2024-01-16 22:24:25.323863', '2024-01-16 22:24:25.323863', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1559, '2024-01-16 22:24:53.977208', '2024-01-16 22:24:53.977208', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1560, '2024-01-16 22:24:54.042390', '2024-01-16 22:24:54.042390', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1561, '2024-01-16 22:24:54.215867', '2024-01-16 22:24:54.215867', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1562, '2024-01-16 22:25:48.384087', '2024-01-16 22:25:48.384087', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1563, '2024-01-16 22:25:48.433729', '2024-01-16 22:25:48.433729', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1564, '2024-01-16 22:25:48.622335', '2024-01-16 22:25:48.622335', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1565, '2024-01-16 22:25:50.932654', '2024-01-16 22:25:50.932654', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1566, '2024-01-16 22:25:51.149205', '2024-01-16 22:25:51.149205', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1567, '2024-01-16 22:26:12.066929', '2024-01-16 22:26:12.066929', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1568, '2024-01-16 22:26:12.121037', '2024-01-16 22:26:12.121037', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1569, '2024-01-16 22:26:12.272271', '2024-01-16 22:26:12.272271', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1570, '2024-01-16 22:26:14.680282', '2024-01-16 22:26:14.680282', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1571, '2024-01-16 22:26:15.030552', '2024-01-16 22:26:15.030552', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1572, '2024-01-16 22:26:24.064146', '2024-01-16 22:26:24.064146', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1573, '2024-01-16 22:26:24.116623', '2024-01-16 22:26:24.116623', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1574, '2024-01-16 22:26:24.218499', '2024-01-16 22:26:24.218499', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1575, '2024-01-16 22:26:26.341398', '2024-01-16 22:26:26.341398', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1576, '2024-01-16 22:26:26.604498', '2024-01-16 22:26:26.604498', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1577, '2024-01-16 22:27:13.356489', '2024-01-16 22:27:13.356489', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1578, '2024-01-16 22:27:13.421136', '2024-01-16 22:27:13.421136', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1579, '2024-01-16 22:27:13.575987', '2024-01-16 22:27:13.575987', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1580, '2024-01-16 22:27:15.972160', '2024-01-16 22:27:15.972160', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1581, '2024-01-16 22:27:16.303237', '2024-01-16 22:27:16.303237', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1582, '2024-01-16 22:28:41.541930', '2024-01-16 22:28:41.541930', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1583, '2024-01-16 22:28:41.599293', '2024-01-16 22:28:41.599293', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1584, '2024-01-16 22:28:41.758500', '2024-01-16 22:28:41.758500', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1585, '2024-01-16 22:28:44.371024', '2024-01-16 22:28:44.371024', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1586, '2024-01-16 22:28:44.609435', '2024-01-16 22:28:44.609435', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1587, '2024-01-16 22:29:03.374978', '2024-01-16 22:29:03.374978', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1588, '2024-01-16 22:29:03.559853', '2024-01-16 22:29:03.559853', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1589, '2024-01-16 22:29:06.082657', '2024-01-16 22:29:06.082657', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1590, '2024-01-16 22:29:06.409474', '2024-01-16 22:29:06.409474', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1591, '2024-01-16 22:31:44.312350', '2024-01-16 22:31:44.312350', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1592, '2024-01-16 22:31:44.363736', '2024-01-16 22:31:44.363736', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1593, '2024-01-16 22:31:44.497465', '2024-01-16 22:31:44.497465', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1594, '2024-01-16 22:31:46.800009', '2024-01-16 22:31:46.800009', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1595, '2024-01-16 22:31:47.063021', '2024-01-16 22:31:47.063021', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1596, '2024-01-16 22:32:07.007714', '2024-01-16 22:32:07.007714', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1597, '2024-01-16 22:32:07.062799', '2024-01-16 22:32:07.062799', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1598, '2024-01-16 22:32:07.187869', '2024-01-16 22:32:07.187869', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1599, '2024-01-16 22:32:24.933515', '2024-01-16 22:32:24.933515', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1600, '2024-01-16 22:32:24.985779', '2024-01-16 22:32:24.985779', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1601, '2024-01-16 22:32:25.099433', '2024-01-16 22:32:25.099433', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1602, '2024-01-16 22:32:27.512517', '2024-01-16 22:32:27.512517', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1603, '2024-01-16 22:32:27.819478', '2024-01-16 22:32:27.819478', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1604, '2024-01-16 22:32:33.050146', '2024-01-16 22:32:33.050146', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1605, '2024-01-16 22:32:33.112333', '2024-01-16 22:32:33.112333', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1606, '2024-01-16 22:32:33.199470', '2024-01-16 22:32:33.199470', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1607, '2024-01-16 22:32:35.346928', '2024-01-16 22:32:35.346928', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1608, '2024-01-16 22:32:35.543085', '2024-01-16 22:32:35.543085', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1609, '2024-01-16 22:34:00.015155', '2024-01-16 22:34:00.015155', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1610, '2024-01-16 22:34:00.081412', '2024-01-16 22:34:00.081412', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1611, '2024-01-16 22:34:00.199962', '2024-01-16 22:34:00.199962', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1612, '2024-01-16 22:34:02.897714', '2024-01-16 22:34:02.897714', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1613, '2024-01-16 22:34:03.143087', '2024-01-16 22:34:03.143087', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1614, '2024-01-16 22:34:23.167475', '2024-01-16 22:34:23.167475', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1615, '2024-01-16 22:34:23.233266', '2024-01-16 22:34:23.233266', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1616, '2024-01-16 22:34:23.369094', '2024-01-16 22:34:23.369094', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1617, '2024-01-16 22:34:25.668782', '2024-01-16 22:34:25.668782', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1618, '2024-01-16 22:34:25.927507', '2024-01-16 22:34:25.927507', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1619, '2024-01-16 22:34:44.988528', '2024-01-16 22:34:44.988528', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1620, '2024-01-16 22:34:45.042742', '2024-01-16 22:34:45.042742', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1621, '2024-01-16 22:34:45.192383', '2024-01-16 22:34:45.192383', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1622, '2024-01-16 22:34:47.406384', '2024-01-16 22:34:47.406384', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1623, '2024-01-16 22:34:47.681122', '2024-01-16 22:34:47.681122', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1624, '2024-01-16 22:35:28.107839', '2024-01-16 22:35:28.107839', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1625, '2024-01-16 22:35:28.177895', '2024-01-16 22:35:28.177895', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1626, '2024-01-16 22:35:28.354596', '2024-01-16 22:35:28.354596', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1627, '2024-01-16 22:35:30.662777', '2024-01-16 22:35:30.662777', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1628, '2024-01-16 22:35:30.884620', '2024-01-16 22:35:30.884620', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1629, '2024-01-16 22:35:48.059404', '2024-01-16 22:35:48.059404', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1630, '2024-01-16 22:35:48.128352', '2024-01-16 22:35:48.128352', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1631, '2024-01-16 22:35:48.253021', '2024-01-16 22:35:48.253021', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1632, '2024-01-16 22:35:50.504795', '2024-01-16 22:35:50.504795', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1633, '2024-01-16 22:35:50.797100', '2024-01-16 22:35:50.797100', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1634, '2024-01-16 22:36:01.571865', '2024-01-16 22:36:01.571865', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1635, '2024-01-16 22:36:01.620421', '2024-01-16 22:36:01.620421', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1636, '2024-01-16 22:36:01.745760', '2024-01-16 22:36:01.745760', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1637, '2024-01-16 22:36:03.990874', '2024-01-16 22:36:03.990874', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1638, '2024-01-16 22:36:04.315919', '2024-01-16 22:36:04.315919', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1639, '2024-01-16 22:36:07.784847', '2024-01-16 22:36:07.784847', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1640, '2024-01-16 22:36:07.840770', '2024-01-16 22:36:07.840770', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1641, '2024-01-16 22:36:07.936432', '2024-01-16 22:36:07.936432', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1642, '2024-01-16 22:36:09.943058', '2024-01-16 22:36:09.943058', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1643, '2024-01-16 22:36:10.236839', '2024-01-16 22:36:10.236839', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1644, '2024-01-16 22:36:24.375598', '2024-01-16 22:36:24.375598', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1645, '2024-01-16 22:36:24.421443', '2024-01-16 22:36:24.421443', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1646, '2024-01-16 22:36:24.605947', '2024-01-16 22:36:24.605947', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1647, '2024-01-16 22:36:26.930520', '2024-01-16 22:36:26.930520', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1648, '2024-01-16 22:36:27.118505', '2024-01-16 22:36:27.118505', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1649, '2024-01-16 22:36:33.720135', '2024-01-16 22:36:33.720135', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1650, '2024-01-16 22:36:33.781048', '2024-01-16 22:36:33.781048', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1651, '2024-01-16 22:36:33.884813', '2024-01-16 22:36:33.884813', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1652, '2024-01-16 22:36:35.967711', '2024-01-16 22:36:35.967711', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1653, '2024-01-16 22:36:36.235922', '2024-01-16 22:36:36.235922', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1654, '2024-01-16 22:37:14.380984', '2024-01-16 22:37:14.380984', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1655, '2024-01-16 22:37:16.748691', '2024-01-16 22:37:16.748691', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1656, '2024-01-16 22:37:17.035216', '2024-01-16 22:37:17.035216', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1657, '2024-01-16 22:37:34.359950', '2024-01-16 22:37:34.359950', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1658, '2024-01-16 22:37:34.406962', '2024-01-16 22:37:34.406962', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1659, '2024-01-16 22:37:34.567884', '2024-01-16 22:37:34.567884', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1660, '2024-01-16 22:37:36.911655', '2024-01-16 22:37:36.911655', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1661, '2024-01-16 22:37:37.138131', '2024-01-16 22:37:37.138131', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1662, '2024-01-16 22:37:55.494687', '2024-01-16 22:37:55.494687', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1663, '2024-01-16 22:37:55.550281', '2024-01-16 22:37:55.550281', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1664, '2024-01-16 22:37:55.715604', '2024-01-16 22:37:55.715604', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1665, '2024-01-16 22:37:58.031608', '2024-01-16 22:37:58.031608', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1666, '2024-01-16 22:37:58.239992', '2024-01-16 22:37:58.239992', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1667, '2024-01-16 22:38:04.745869', '2024-01-16 22:38:04.745869', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1668, '2024-01-16 22:38:04.801270', '2024-01-16 22:38:04.801270', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1669, '2024-01-16 22:38:04.929209', '2024-01-16 22:38:04.929209', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1670, '2024-01-16 22:38:07.033888', '2024-01-16 22:38:07.033888', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1671, '2024-01-16 22:38:07.272627', '2024-01-16 22:38:07.272627', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1672, '2024-01-16 22:38:22.484449', '2024-01-16 22:38:22.484449', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1673, '2024-01-16 22:38:22.527588', '2024-01-16 22:38:22.527588', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1674, '2024-01-16 22:38:22.692290', '2024-01-16 22:38:22.692290', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1675, '2024-01-16 22:38:25.045065', '2024-01-16 22:38:25.045065', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1676, '2024-01-16 22:38:25.245318', '2024-01-16 22:38:25.245318', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1677, '2024-01-16 22:38:37.774885', '2024-01-16 22:38:37.774885', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1678, '2024-01-16 22:38:37.831626', '2024-01-16 22:38:37.831626', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1679, '2024-01-16 22:38:37.927929', '2024-01-16 22:38:37.927929', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1680, '2024-01-16 22:38:40.133126', '2024-01-16 22:38:40.133126', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1681, '2024-01-16 22:38:40.324416', '2024-01-16 22:38:40.324416', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1682, '2024-01-16 22:38:54.298606', '2024-01-16 22:38:54.298606', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1683, '2024-01-16 22:38:54.351340', '2024-01-16 22:38:54.351340', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1684, '2024-01-16 22:38:54.429615', '2024-01-16 22:38:54.429615', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1685, '2024-01-16 22:38:56.662231', '2024-01-16 22:38:56.662231', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1686, '2024-01-16 22:38:56.862549', '2024-01-16 22:38:56.862549', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1687, '2024-01-16 22:39:03.521670', '2024-01-16 22:39:03.521670', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1688, '2024-01-16 22:39:03.581065', '2024-01-16 22:39:03.581065', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1689, '2024-01-16 22:39:03.652591', '2024-01-16 22:39:03.652591', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1690, '2024-01-16 22:39:05.980378', '2024-01-16 22:39:05.980378', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1691, '2024-01-16 22:39:06.201728', '2024-01-16 22:39:06.201728', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1692, '2024-01-16 22:39:11.335405', '2024-01-16 22:39:11.335405', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1693, '2024-01-16 22:39:11.379132', '2024-01-16 22:39:11.379132', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1694, '2024-01-16 22:39:11.478473', '2024-01-16 22:39:11.478473', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1695, '2024-01-16 22:39:13.712847', '2024-01-16 22:39:13.712847', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1696, '2024-01-16 22:39:13.940376', '2024-01-16 22:39:13.940376', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1697, '2024-01-16 22:39:30.612593', '2024-01-16 22:39:30.612593', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1698, '2024-01-16 22:39:30.677421', '2024-01-16 22:39:30.677421', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1699, '2024-01-16 22:39:30.830098', '2024-01-16 22:39:30.830098', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1700, '2024-01-16 22:39:34.354935', '2024-01-16 22:39:34.354935', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1701, '2024-01-16 22:39:34.526128', '2024-01-16 22:39:34.526128', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1702, '2024-01-16 22:39:39.412879', '2024-01-16 22:39:39.412879', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1703, '2024-01-16 22:39:39.474401', '2024-01-16 22:39:39.474401', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1704, '2024-01-16 22:39:39.564905', '2024-01-16 22:39:39.564905', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1705, '2024-01-16 22:39:41.698344', '2024-01-16 22:39:41.698344', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1706, '2024-01-16 22:39:41.891668', '2024-01-16 22:39:41.891668', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1707, '2024-01-16 22:39:49.196017', '2024-01-16 22:39:49.196017', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1708, '2024-01-16 22:39:49.254737', '2024-01-16 22:39:49.254737', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1709, '2024-01-16 22:39:49.345739', '2024-01-16 22:39:49.345739', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1710, '2024-01-16 22:39:51.394615', '2024-01-16 22:39:51.394615', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1711, '2024-01-16 22:39:51.658543', '2024-01-16 22:39:51.658543', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1712, '2024-01-16 22:40:10.988355', '2024-01-16 22:40:10.988355', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1713, '2024-01-16 22:40:11.047814', '2024-01-16 22:40:11.047814', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1714, '2024-01-16 22:40:11.152674', '2024-01-16 22:40:11.152674', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1715, '2024-01-16 22:40:13.421078', '2024-01-16 22:40:13.421078', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1716, '2024-01-16 22:40:13.620172', '2024-01-16 22:40:13.620172', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1717, '2024-01-16 22:40:20.467112', '2024-01-16 22:40:20.467112', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1718, '2024-01-16 22:40:20.532724', '2024-01-16 22:40:20.532724', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1719, '2024-01-16 22:40:20.631470', '2024-01-16 22:40:20.631470', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1720, '2024-01-16 22:40:22.706595', '2024-01-16 22:40:22.706595', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1721, '2024-01-16 22:40:22.896661', '2024-01-16 22:40:22.896661', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1722, '2024-01-16 22:40:33.591316', '2024-01-16 22:40:33.591316', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1723, '2024-01-16 22:40:33.650403', '2024-01-16 22:40:33.650403', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1724, '2024-01-16 22:40:33.718980', '2024-01-16 22:40:33.718980', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1725, '2024-01-16 22:40:35.885185', '2024-01-16 22:40:35.885185', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1726, '2024-01-16 22:40:36.153040', '2024-01-16 22:40:36.153040', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1727, '2024-01-16 22:40:40.524302', '2024-01-16 22:40:40.524302', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1728, '2024-01-16 22:40:40.581348', '2024-01-16 22:40:40.581348', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1729, '2024-01-16 22:40:40.661211', '2024-01-16 22:40:40.661211', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1730, '2024-01-16 22:40:41.512803', '2024-01-16 22:40:41.512803', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1731, '2024-01-16 22:40:42.701542', '2024-01-16 22:40:42.701542', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1732, '2024-01-16 22:40:42.938752', '2024-01-16 22:40:42.938752', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1733, '2024-01-16 22:40:46.227526', '2024-01-16 22:40:46.227526', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1734, '2024-01-16 22:40:46.288506', '2024-01-16 22:40:46.288506', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1735, '2024-01-16 22:40:46.389229', '2024-01-16 22:40:46.389229', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1736, '2024-01-16 22:40:48.381480', '2024-01-16 22:40:48.381480', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1737, '2024-01-16 22:40:48.654611', '2024-01-16 22:40:48.654611', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1738, '2024-01-16 22:41:18.087341', '2024-01-16 22:41:18.087341', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1739, '2024-01-16 22:41:18.141941', '2024-01-16 22:41:18.141941', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1740, '2024-01-16 22:41:18.228298', '2024-01-16 22:41:18.228298', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1741, '2024-01-16 22:41:20.541929', '2024-01-16 22:41:20.541929', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1742, '2024-01-16 22:41:20.774973', '2024-01-16 22:41:20.774973', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1743, '2024-01-16 22:47:06.565574', '2024-01-16 22:47:06.565574', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1744, '2024-01-16 22:47:06.630502', '2024-01-16 22:47:06.630502', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1745, '2024-01-16 22:47:06.742336', '2024-01-16 22:47:06.742336', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1746, '2024-01-16 22:47:09.067779', '2024-01-16 22:47:09.067779', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1747, '2024-01-16 22:47:09.326407', '2024-01-16 22:47:09.326407', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1748, '2024-01-16 22:49:06.399330', '2024-01-16 22:49:06.399330', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1749, '2024-01-16 22:49:06.450184', '2024-01-16 22:49:06.450184', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1750, '2024-01-16 22:49:06.574713', '2024-01-16 22:49:06.574713', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1751, '2024-01-16 22:49:08.879976', '2024-01-16 22:49:08.879976', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1752, '2024-01-16 22:49:09.113200', '2024-01-16 22:49:09.113200', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1753, '2024-01-16 22:49:31.313323', '2024-01-16 22:49:31.313323', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1754, '2024-01-16 22:49:31.387615', '2024-01-16 22:49:31.387615', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1755, '2024-01-16 22:49:31.488579', '2024-01-16 22:49:31.488579', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1756, '2024-01-16 22:49:33.931224', '2024-01-16 22:49:33.931224', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1757, '2024-01-16 22:49:34.170726', '2024-01-16 22:49:34.170726', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1758, '2024-01-16 22:49:46.743671', '2024-01-16 22:49:46.743671', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1759, '2024-01-16 22:49:46.805920', '2024-01-16 22:49:46.805920', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1760, '2024-01-16 22:49:46.931988', '2024-01-16 22:49:46.931988', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1761, '2024-01-16 22:49:49.085080', '2024-01-16 22:49:49.085080', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1762, '2024-01-16 22:49:49.361939', '2024-01-16 22:49:49.361939', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1763, '2024-01-16 22:49:58.820934', '2024-01-16 22:49:58.820934', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1764, '2024-01-16 22:49:58.876517', '2024-01-16 22:49:58.876517', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1765, '2024-01-16 22:49:58.946424', '2024-01-16 22:49:58.946424', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1766, '2024-01-16 22:50:01.133304', '2024-01-16 22:50:01.133304', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1767, '2024-01-16 22:50:01.463990', '2024-01-16 22:50:01.463990', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1768, '2024-01-16 22:50:59.877439', '2024-01-16 22:50:59.877439', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1769, '2024-01-16 22:51:00.064267', '2024-01-16 22:51:00.064267', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1770, '2024-01-16 22:51:02.308849', '2024-01-16 22:51:02.308849', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1771, '2024-01-16 22:51:02.549861', '2024-01-16 22:51:02.549861', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1772, '2024-01-16 22:51:15.472036', '2024-01-16 22:51:15.472036', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1773, '2024-01-16 22:51:15.539012', '2024-01-16 22:51:15.539012', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1774, '2024-01-16 22:51:15.610747', '2024-01-16 22:51:15.610747', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1775, '2024-01-16 22:51:17.963924', '2024-01-16 22:51:17.963924', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1776, '2024-01-16 22:51:18.189107', '2024-01-16 22:51:18.189107', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1777, '2024-01-16 22:51:32.423424', '2024-01-16 22:51:32.423424', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1778, '2024-01-16 22:51:32.475367', '2024-01-16 22:51:32.475367', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1779, '2024-01-16 22:51:32.574163', '2024-01-16 22:51:32.574163', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1780, '2024-01-16 22:51:34.817552', '2024-01-16 22:51:34.817552', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1781, '2024-01-16 22:51:35.097182', '2024-01-16 22:51:35.097182', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1782, '2024-01-16 22:52:12.576566', '2024-01-16 22:52:12.576566', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1783, '2024-01-16 22:52:12.640406', '2024-01-16 22:52:12.640406', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1784, '2024-01-16 22:52:12.773533', '2024-01-16 22:52:12.773533', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1785, '2024-01-16 22:52:13.759358', '2024-01-16 22:52:13.759358', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1786, '2024-01-16 22:52:15.125594', '2024-01-16 22:52:15.125594', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1787, '2024-01-16 22:52:15.416263', '2024-01-16 22:52:15.416263', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1788, '2024-01-16 22:54:11.751614', '2024-01-16 22:54:11.751614', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1789, '2024-01-16 22:54:11.818346', '2024-01-16 22:54:11.818346', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1790, '2024-01-16 22:54:11.949522', '2024-01-16 22:54:11.949522', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1791, '2024-01-16 22:54:14.259432', '2024-01-16 22:54:14.259432', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1792, '2024-01-16 22:54:14.543348', '2024-01-16 22:54:14.543348', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1793, '2024-01-16 22:54:23.870486', '2024-01-16 22:54:23.870486', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1794, '2024-01-16 22:54:23.923140', '2024-01-16 22:54:23.923140', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1795, '2024-01-16 22:54:26.261958', '2024-01-16 22:54:26.261958', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1796, '2024-01-16 22:54:26.542356', '2024-01-16 22:54:26.542356', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1797, '2024-01-16 22:54:49.747751', '2024-01-16 22:54:49.747751', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1798, '2024-01-16 22:54:49.811870', '2024-01-16 22:54:49.811870', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1799, '2024-01-16 22:54:49.894158', '2024-01-16 22:54:49.894158', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1800, '2024-01-16 22:54:52.371869', '2024-01-16 22:54:52.371869', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1801, '2024-01-16 22:54:52.600471', '2024-01-16 22:54:52.600471', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1802, '2024-01-16 22:56:15.939421', '2024-01-16 22:56:15.939421', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1803, '2024-01-16 22:56:16.093612', '2024-01-16 22:56:16.093612', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1804, '2024-01-16 22:57:00.557365', '2024-01-16 22:57:00.557365', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1805, '2024-01-16 22:57:00.607292', '2024-01-16 22:57:00.607292', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1806, '2024-01-16 22:57:00.731899', '2024-01-16 22:57:00.731899', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1807, '2024-01-16 22:57:03.029033', '2024-01-16 22:57:03.029033', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1808, '2024-01-16 22:57:03.210390', '2024-01-16 22:57:03.210390', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1809, '2024-01-16 22:57:11.305174', '2024-01-16 22:57:11.305174', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1810, '2024-01-16 22:57:11.354334', '2024-01-16 22:57:11.354334', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1811, '2024-01-16 22:57:11.451317', '2024-01-16 22:57:11.451317', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1812, '2024-01-16 22:57:13.533020', '2024-01-16 22:57:13.533020', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1813, '2024-01-16 22:57:13.761969', '2024-01-16 22:57:13.761969', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1814, '2024-01-16 22:57:20.225737', '2024-01-16 22:57:20.225737', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1815, '2024-01-16 22:57:20.278242', '2024-01-16 22:57:20.278242', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1816, '2024-01-16 22:57:20.387148', '2024-01-16 22:57:20.387148', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1817, '2024-01-16 22:57:22.676890', '2024-01-16 22:57:22.676890', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1818, '2024-01-16 22:57:22.931365', '2024-01-16 22:57:22.931365', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1819, '2024-01-16 22:57:31.842642', '2024-01-16 22:57:31.842642', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1820, '2024-01-16 22:57:32.387969', '2024-01-16 22:57:32.387969', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1821, '2024-01-16 22:57:32.402173', '2024-01-16 22:57:32.402173', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1822, '2024-01-16 22:57:34.510935', '2024-01-16 22:57:34.510935', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1823, '2024-01-16 22:57:34.714554', '2024-01-16 22:57:34.714554', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1824, '2024-01-16 23:02:12.355104', '2024-01-16 23:02:12.355104', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1825, '2024-01-16 23:02:12.407063', '2024-01-16 23:02:12.407063', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1826, '2024-01-16 23:02:12.539931', '2024-01-16 23:02:12.539931', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1827, '2024-01-16 23:02:14.821923', '2024-01-16 23:02:14.821923', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1828, '2024-01-16 23:02:15.038619', '2024-01-16 23:02:15.038619', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1829, '2024-01-16 23:11:25.484772', '2024-01-16 23:11:25.484772', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1830, '2024-01-16 23:21:22.756642', '2024-01-16 23:21:22.756642', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1831, '2024-01-18 15:35:59.379718', '2024-01-18 15:35:59.379718', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsImlkIjoxLCJpYXQiOjE3MDU0MDg5ODUsImV4cCI6MTcwODAwMDk4NX0.Szp4e5XPwsqCvMCngBw9F0EERj1ffX3YRTddGNvnuGk\"}', '127.0.0.1', '/app/user/login/refreshToken');
INSERT INTO `base_sys_log` VALUES (1832, '2024-01-18 15:35:59.540827', '2024-01-18 15:35:59.540827', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1833, '2024-01-18 15:35:59.558720', '2024-01-18 15:35:59.558720', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1834, '2024-01-18 15:41:46.883423', '2024-01-18 15:41:46.883423', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1835, '2024-01-18 15:41:49.343039', '2024-01-18 15:41:49.343039', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1836, '2024-01-18 15:41:49.664368', '2024-01-18 15:41:49.664368', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1837, '2024-01-18 15:42:14.812355', '2024-01-18 15:42:14.812355', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1838, '2024-01-18 15:42:17.174093', '2024-01-18 15:42:17.174093', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1839, '2024-01-18 15:42:17.470750', '2024-01-18 15:42:17.470750', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1840, '2024-01-18 15:42:33.647126', '2024-01-18 15:42:33.647126', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1841, '2024-01-18 15:44:48.759414', '2024-01-18 15:44:48.759414', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1842, '2024-01-18 15:44:51.293551', '2024-01-18 15:44:51.293551', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1843, '2024-01-18 15:44:51.518888', '2024-01-18 15:44:51.518888', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1844, '2024-01-18 16:00:05.371347', '2024-01-18 16:00:05.371347', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1845, '2024-01-18 16:00:07.798979', '2024-01-18 16:00:07.798979', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1846, '2024-01-18 16:00:08.108077', '2024-01-18 16:00:08.108077', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1847, '2024-01-18 16:00:27.574229', '2024-01-18 16:00:27.574229', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1848, '2024-01-18 16:00:29.961420', '2024-01-18 16:00:29.961420', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1849, '2024-01-18 16:00:30.272510', '2024-01-18 16:00:30.272510', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1850, '2024-01-18 16:01:46.295064', '2024-01-18 16:01:46.295064', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1851, '2024-01-18 16:01:48.763010', '2024-01-18 16:01:48.763010', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1852, '2024-01-18 16:01:49.022105', '2024-01-18 16:01:49.022105', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1853, '2024-01-18 16:08:56.675903', '2024-01-18 16:08:56.675903', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1854, '2024-01-18 16:08:59.184808', '2024-01-18 16:08:59.184808', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1855, '2024-01-18 16:08:59.439685', '2024-01-18 16:08:59.439685', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1856, '2024-01-18 16:09:18.073220', '2024-01-18 16:09:18.073220', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1857, '2024-01-18 16:09:20.372992', '2024-01-18 16:09:20.372992', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1858, '2024-01-18 16:09:20.631063', '2024-01-18 16:09:20.631063', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1859, '2024-01-18 16:10:52.272393', '2024-01-18 16:10:52.272393', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1860, '2024-01-18 16:10:54.957676', '2024-01-18 16:10:54.957676', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1861, '2024-01-18 16:10:55.242728', '2024-01-18 16:10:55.242728', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1862, '2024-01-18 16:13:40.530720', '2024-01-18 16:13:40.530720', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1863, '2024-01-18 16:13:42.881746', '2024-01-18 16:13:42.881746', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1864, '2024-01-18 16:13:43.209072', '2024-01-18 16:13:43.209072', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1865, '2024-01-18 16:14:25.618995', '2024-01-18 16:14:25.618995', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1866, '2024-01-18 16:14:27.980218', '2024-01-18 16:14:27.980218', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1867, '2024-01-18 16:14:28.266471', '2024-01-18 16:14:28.266471', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1868, '2024-01-18 16:15:14.812914', '2024-01-18 16:15:14.812914', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1869, '2024-01-18 16:15:17.344531', '2024-01-18 16:15:17.344531', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1870, '2024-01-18 16:15:17.629498', '2024-01-18 16:15:17.629498', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1871, '2024-01-18 16:16:19.220928', '2024-01-18 16:16:19.220928', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1872, '2024-01-18 16:16:21.432294', '2024-01-18 16:16:21.432294', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1873, '2024-01-18 16:16:21.706618', '2024-01-18 16:16:21.706618', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1874, '2024-01-18 16:19:28.736155', '2024-01-18 16:19:28.736155', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1875, '2024-01-18 16:19:31.213560', '2024-01-18 16:19:31.213560', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1876, '2024-01-18 16:19:31.484597', '2024-01-18 16:19:31.484597', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1877, '2024-01-18 16:19:49.695895', '2024-01-18 16:19:49.695895', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1878, '2024-01-18 16:19:52.006486', '2024-01-18 16:19:52.006486', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1879, '2024-01-18 16:19:52.304733', '2024-01-18 16:19:52.304733', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1880, '2024-01-18 16:20:08.015379', '2024-01-18 16:20:08.015379', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1881, '2024-01-18 16:20:10.279671', '2024-01-18 16:20:10.279671', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1882, '2024-01-18 16:20:10.572804', '2024-01-18 16:20:10.572804', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1883, '2024-01-18 16:23:01.990256', '2024-01-18 16:23:01.990256', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1884, '2024-01-18 16:23:04.424196', '2024-01-18 16:23:04.424196', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1885, '2024-01-18 16:23:04.814249', '2024-01-18 16:23:04.814249', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1886, '2024-01-18 16:24:45.678209', '2024-01-18 16:24:45.678209', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1887, '2024-01-18 16:24:48.122750', '2024-01-18 16:24:48.122750', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1888, '2024-01-18 16:24:48.426282', '2024-01-18 16:24:48.426282', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1889, '2024-01-18 16:24:52.569685', '2024-01-18 16:24:52.569685', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1890, '2024-01-18 16:24:54.773733', '2024-01-18 16:24:54.773733', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1891, '2024-01-18 16:24:55.107296', '2024-01-18 16:24:55.107296', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1892, '2024-01-18 16:27:37.151561', '2024-01-18 16:27:37.151561', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1893, '2024-01-18 16:27:39.800290', '2024-01-18 16:27:39.800290', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1894, '2024-01-18 16:27:40.075632', '2024-01-18 16:27:40.075632', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1895, '2024-01-18 16:32:57.815758', '2024-01-18 16:32:57.815758', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1896, '2024-01-18 16:33:00.200987', '2024-01-18 16:33:00.200987', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1897, '2024-01-18 16:33:00.474786', '2024-01-18 16:33:00.474786', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1898, '2024-01-18 16:33:23.331516', '2024-01-18 16:33:23.331516', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1899, '2024-01-18 16:33:25.649722', '2024-01-18 16:33:25.649722', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1900, '2024-01-18 16:33:25.968086', '2024-01-18 16:33:25.968086', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1901, '2024-01-18 16:33:37.954712', '2024-01-18 16:33:37.954712', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1902, '2024-01-18 16:33:40.351214', '2024-01-18 16:33:40.351214', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1903, '2024-01-18 16:33:40.644610', '2024-01-18 16:33:40.644610', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1904, '2024-01-18 16:35:19.055001', '2024-01-18 16:35:19.055001', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1905, '2024-01-18 16:35:21.378731', '2024-01-18 16:35:21.378731', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1906, '2024-01-18 16:35:21.697228', '2024-01-18 16:35:21.697228', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1907, '2024-01-18 16:36:02.036503', '2024-01-18 16:36:02.036503', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1908, '2024-01-18 16:36:04.377954', '2024-01-18 16:36:04.377954', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1909, '2024-01-18 16:36:04.636536', '2024-01-18 16:36:04.636536', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1910, '2024-01-18 16:36:59.912830', '2024-01-18 16:36:59.912830', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1911, '2024-01-18 16:37:02.315389', '2024-01-18 16:37:02.315389', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1912, '2024-01-18 16:37:02.550431', '2024-01-18 16:37:02.550431', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1913, '2024-01-18 16:37:28.707718', '2024-01-18 16:37:28.707718', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1914, '2024-01-18 16:37:31.114986', '2024-01-18 16:37:31.114986', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1915, '2024-01-18 16:37:31.432959', '2024-01-18 16:37:31.432959', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1916, '2024-01-18 16:39:05.516348', '2024-01-18 16:39:05.516348', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1917, '2024-01-18 16:39:07.994782', '2024-01-18 16:39:07.994782', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1918, '2024-01-18 16:39:08.288998', '2024-01-18 16:39:08.288998', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1919, '2024-01-18 16:42:14.302709', '2024-01-18 16:42:14.302709', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1920, '2024-01-18 16:42:16.648584', '2024-01-18 16:42:16.648584', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1921, '2024-01-18 16:42:16.961417', '2024-01-18 16:42:16.961417', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1922, '2024-01-18 16:44:15.233871', '2024-01-18 16:44:15.233871', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1923, '2024-01-18 16:44:17.725738', '2024-01-18 16:44:17.725738', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1924, '2024-01-18 16:44:18.159407', '2024-01-18 16:44:18.159407', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1925, '2024-01-18 16:44:27.094049', '2024-01-18 16:44:27.094049', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1926, '2024-01-18 16:44:29.440092', '2024-01-18 16:44:29.440092', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1927, '2024-01-18 16:44:29.751792', '2024-01-18 16:44:29.751792', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1928, '2024-01-18 16:45:18.453471', '2024-01-18 16:45:18.453471', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1929, '2024-01-18 16:45:20.921495', '2024-01-18 16:45:20.921495', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1930, '2024-01-18 16:45:21.238871', '2024-01-18 16:45:21.238871', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1931, '2024-01-18 16:46:17.769532', '2024-01-18 16:46:17.769532', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1932, '2024-01-18 16:46:20.168709', '2024-01-18 16:46:20.168709', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1933, '2024-01-18 16:46:20.447436', '2024-01-18 16:46:20.447436', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1934, '2024-01-18 16:47:05.925257', '2024-01-18 16:47:05.925257', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1935, '2024-01-18 16:47:08.373046', '2024-01-18 16:47:08.373046', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1936, '2024-01-18 16:47:08.659526', '2024-01-18 16:47:08.659526', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1937, '2024-01-18 16:49:23.302067', '2024-01-18 16:49:23.302067', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1938, '2024-01-18 16:49:25.860677', '2024-01-18 16:49:25.860677', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1939, '2024-01-18 16:49:26.091161', '2024-01-18 16:49:26.091161', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1940, '2024-01-18 16:50:25.262119', '2024-01-18 16:50:25.262119', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1941, '2024-01-18 16:50:27.660533', '2024-01-18 16:50:27.660533', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1942, '2024-01-18 16:50:27.872568', '2024-01-18 16:50:27.872568', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1943, '2024-01-18 16:50:50.702936', '2024-01-18 16:50:50.702936', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1944, '2024-01-18 16:50:52.985548', '2024-01-18 16:50:52.985548', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1945, '2024-01-18 16:50:53.208984', '2024-01-18 16:50:53.208984', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1946, '2024-01-18 16:51:15.506385', '2024-01-18 16:51:15.506385', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1947, '2024-01-18 16:51:17.730349', '2024-01-18 16:51:17.730349', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1948, '2024-01-18 16:51:17.925662', '2024-01-18 16:51:17.925662', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1949, '2024-01-18 16:51:30.475883', '2024-01-18 16:51:30.475883', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1950, '2024-01-18 16:51:32.745452', '2024-01-18 16:51:32.745452', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1951, '2024-01-18 16:51:32.960051', '2024-01-18 16:51:32.960051', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1952, '2024-01-18 16:51:36.501024', '2024-01-18 16:51:36.501024', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1953, '2024-01-18 16:51:38.819845', '2024-01-18 16:51:38.819845', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1954, '2024-01-18 16:51:39.091340', '2024-01-18 16:51:39.091340', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1955, '2024-01-18 16:53:20.957938', '2024-01-18 16:53:20.957938', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1956, '2024-01-18 16:53:23.202166', '2024-01-18 16:53:23.202166', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1957, '2024-01-18 16:53:23.536511', '2024-01-18 16:53:23.536511', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1958, '2024-01-18 16:53:46.159630', '2024-01-18 16:53:46.159630', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1959, '2024-01-18 16:53:48.389877', '2024-01-18 16:53:48.389877', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1960, '2024-01-18 16:53:48.591506', '2024-01-18 16:53:48.591506', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1961, '2024-01-18 16:54:23.283418', '2024-01-18 16:54:23.283418', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1962, '2024-01-18 16:54:23.964289', '2024-01-18 16:54:23.964289', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1963, '2024-01-18 16:54:26.542035', '2024-01-18 16:54:26.542035', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1964, '2024-01-18 16:54:26.751302', '2024-01-18 16:54:26.751302', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1965, '2024-01-18 16:54:42.640653', '2024-01-18 16:54:42.640653', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1966, '2024-01-18 16:54:44.988304', '2024-01-18 16:54:44.988304', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1967, '2024-01-18 16:54:45.180322', '2024-01-18 16:54:45.180322', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1968, '2024-01-18 16:57:11.757214', '2024-01-18 16:57:11.757214', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1969, '2024-01-18 16:57:14.053403', '2024-01-18 16:57:14.053403', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1970, '2024-01-18 16:57:14.295804', '2024-01-18 16:57:14.295804', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1971, '2024-01-18 16:57:30.139585', '2024-01-18 16:57:30.139585', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1972, '2024-01-18 16:57:32.474724', '2024-01-18 16:57:32.474724', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1973, '2024-01-18 16:57:32.718959', '2024-01-18 16:57:32.718959', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1974, '2024-01-18 16:58:50.241500', '2024-01-18 16:58:50.241500', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1975, '2024-01-18 16:58:52.503784', '2024-01-18 16:58:52.503784', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1976, '2024-01-18 16:58:52.837125', '2024-01-18 16:58:52.837125', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1977, '2024-01-18 16:59:11.531089', '2024-01-18 16:59:11.531089', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1978, '2024-01-18 16:59:13.840359', '2024-01-18 16:59:13.840359', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1979, '2024-01-18 16:59:14.043556', '2024-01-18 16:59:14.043556', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1980, '2024-01-18 16:59:44.117241', '2024-01-18 16:59:44.117241', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1981, '2024-01-18 16:59:47.192580', '2024-01-18 16:59:47.192580', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1982, '2024-01-18 16:59:47.404764', '2024-01-18 16:59:47.404764', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1983, '2024-01-18 17:00:09.525883', '2024-01-18 17:00:09.525883', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1984, '2024-01-18 17:00:11.751248', '2024-01-18 17:00:11.751248', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1985, '2024-01-18 17:00:12.035671', '2024-01-18 17:00:12.035671', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1986, '2024-01-18 17:00:29.469793', '2024-01-18 17:00:29.469793', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1987, '2024-01-18 17:00:31.677190', '2024-01-18 17:00:31.677190', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1988, '2024-01-18 17:00:31.884519', '2024-01-18 17:00:31.884519', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1989, '2024-01-18 17:00:45.501129', '2024-01-18 17:00:45.501129', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1990, '2024-01-18 17:00:47.808256', '2024-01-18 17:00:47.808256', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1991, '2024-01-18 17:00:47.981156', '2024-01-18 17:00:47.981156', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1992, '2024-01-18 17:01:03.264109', '2024-01-18 17:01:03.264109', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1993, '2024-01-18 17:01:05.350703', '2024-01-18 17:01:05.350703', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1994, '2024-01-18 17:01:05.562297', '2024-01-18 17:01:05.562297', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1995, '2024-01-18 17:01:18.590808', '2024-01-18 17:01:18.590808', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1996, '2024-01-18 17:01:20.905365', '2024-01-18 17:01:20.905365', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (1997, '2024-01-18 17:01:21.107392', '2024-01-18 17:01:21.107392', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (1998, '2024-01-18 17:02:51.133042', '2024-01-18 17:02:51.133042', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (1999, '2024-01-18 17:02:53.308536', '2024-01-18 17:02:53.308536', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2000, '2024-01-18 17:02:53.532824', '2024-01-18 17:02:53.532824', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2001, '2024-01-18 17:03:25.632522', '2024-01-18 17:03:25.632522', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2002, '2024-01-18 17:03:31.839969', '2024-01-18 17:03:31.839969', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2003, '2024-01-18 17:03:35.144776', '2024-01-18 17:03:35.144776', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2004, '2024-01-18 17:03:37.763574', '2024-01-18 17:03:37.763574', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2005, '2024-01-18 17:03:41.129543', '2024-01-18 17:03:41.129543', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2006, '2024-01-18 17:04:28.236598', '2024-01-18 17:04:28.236598', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2007, '2024-01-18 17:04:32.388234', '2024-01-18 17:04:32.388234', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2008, '2024-01-18 17:08:09.173299', '2024-01-18 17:08:09.173299', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2009, '2024-01-18 17:08:09.333422', '2024-01-18 17:08:09.333422', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2010, '2024-01-18 17:16:35.254390', '2024-01-18 17:16:35.254390', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2011, '2024-01-18 17:16:37.539695', '2024-01-18 17:16:37.539695', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2012, '2024-01-18 17:16:37.800534', '2024-01-18 17:16:37.800534', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2013, '2024-01-18 17:17:47.117655', '2024-01-18 17:17:47.117655', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2014, '2024-01-18 17:17:49.438969', '2024-01-18 17:17:49.438969', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2015, '2024-01-18 17:17:49.678143', '2024-01-18 17:17:49.678143', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2016, '2024-01-18 17:17:52.082829', '2024-01-18 17:17:52.082829', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2017, '2024-01-18 17:18:10.745383', '2024-01-18 17:18:10.745383', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2018, '2024-01-18 17:18:12.895781', '2024-01-18 17:18:12.895781', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2019, '2024-01-18 17:18:13.269962', '2024-01-18 17:18:13.269962', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2020, '2024-01-18 17:18:55.859755', '2024-01-18 17:18:55.859755', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2021, '2024-01-18 17:18:58.034340', '2024-01-18 17:18:58.034340', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2022, '2024-01-18 17:18:58.298313', '2024-01-18 17:18:58.298313', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2023, '2024-01-18 17:19:05.443661', '2024-01-18 17:19:05.443661', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2024, '2024-01-18 17:22:30.517237', '2024-01-18 17:22:30.517237', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2025, '2024-01-18 17:22:32.785646', '2024-01-18 17:22:32.785646', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2026, '2024-01-18 17:22:33.073798', '2024-01-18 17:22:33.073798', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2027, '2024-01-18 17:22:51.645908', '2024-01-18 17:22:51.645908', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2028, '2024-01-18 17:22:53.937804', '2024-01-18 17:22:53.937804', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2029, '2024-01-18 17:22:54.248647', '2024-01-18 17:22:54.248647', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2030, '2024-01-18 17:23:21.257013', '2024-01-18 17:23:21.257013', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2031, '2024-01-18 17:23:23.546995', '2024-01-18 17:23:23.546995', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2032, '2024-01-18 17:23:23.799633', '2024-01-18 17:23:23.799633', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2033, '2024-01-18 17:24:02.516648', '2024-01-18 17:24:02.516648', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2034, '2024-01-18 17:24:04.817819', '2024-01-18 17:24:04.817819', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2035, '2024-01-18 17:24:05.021214', '2024-01-18 17:24:05.021214', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2036, '2024-01-18 17:24:08.943817', '2024-01-18 17:24:08.943817', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2037, '2024-01-18 17:24:14.207566', '2024-01-18 17:24:14.207566', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2038, '2024-01-18 17:24:32.868099', '2024-01-18 17:24:32.868099', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2039, '2024-01-18 17:24:35.042918', '2024-01-18 17:24:35.042918', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2040, '2024-01-18 17:24:35.345624', '2024-01-18 17:24:35.345624', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2041, '2024-01-18 17:24:37.831383', '2024-01-18 17:24:37.831383', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2042, '2024-01-18 17:24:46.497916', '2024-01-18 17:24:46.497916', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2043, '2024-01-18 17:24:48.967893', '2024-01-18 17:24:48.967893', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2044, '2024-01-18 17:24:49.018688', '2024-01-18 17:24:49.018688', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2045, '2024-01-18 17:24:49.642513', '2024-01-18 17:24:49.642513', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2046, '2024-01-18 17:24:54.600397', '2024-01-18 17:24:54.600397', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2047, '2024-01-18 17:25:37.745631', '2024-01-18 17:25:37.745631', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2048, '2024-01-18 17:25:40.066781', '2024-01-18 17:25:40.066781', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2049, '2024-01-18 17:25:40.295389', '2024-01-18 17:25:40.295389', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2050, '2024-01-18 19:55:32.900227', '2024-01-18 19:55:32.900227', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2051, '2024-01-18 19:56:01.682426', '2024-01-18 19:56:01.682426', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2052, '2024-01-18 19:56:11.320703', '2024-01-18 19:56:11.320703', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2053, '2024-01-18 19:56:31.689543', '2024-01-18 19:56:31.689543', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2054, '2024-01-18 19:56:36.859775', '2024-01-18 19:56:36.859775', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2055, '2024-01-18 19:56:40.274449', '2024-01-18 19:56:40.274449', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2056, '2024-01-18 21:37:25.930821', '2024-01-18 21:37:25.930821', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2057, '2024-01-18 21:37:44.459710', '2024-01-18 21:37:44.459710', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2058, '2024-01-18 21:37:47.413646', '2024-01-18 21:37:47.413646', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2059, '2024-01-18 21:44:17.386891', '2024-01-18 21:44:17.386891', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2060, '2024-01-18 21:44:19.588133', '2024-01-18 21:44:19.588133', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2061, '2024-01-18 21:44:27.414693', '2024-01-18 21:44:27.414693', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2062, '2024-01-18 21:44:28.763462', '2024-01-18 21:44:28.763462', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2063, '2024-01-18 21:44:38.556701', '2024-01-18 21:44:38.556701', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2064, '2024-01-18 21:45:08.984446', '2024-01-18 21:45:08.984446', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2065, '2024-01-18 21:45:11.140377', '2024-01-18 21:45:11.140377', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2066, '2024-01-18 21:45:21.732076', '2024-01-18 21:45:21.732076', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2067, '2024-01-18 21:45:21.939637', '2024-01-18 21:45:21.939637', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2068, '2024-01-18 21:52:03.046832', '2024-01-18 21:52:03.046832', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2069, '2024-01-18 21:52:03.306051', '2024-01-18 21:52:03.306051', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2070, '2024-01-18 21:52:03.344238', '2024-01-18 21:52:03.344238', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2071, '2024-01-18 21:52:27.321202', '2024-01-18 21:52:27.321202', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2072, '2024-01-18 21:52:27.564005', '2024-01-18 21:52:27.564005', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2073, '2024-01-18 21:52:29.940971', '2024-01-18 21:52:29.940971', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2074, '2024-01-18 21:52:30.259006', '2024-01-18 21:52:30.259006', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2075, '2024-01-18 21:52:51.729794', '2024-01-18 21:52:51.729794', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2076, '2024-01-18 21:52:51.927427', '2024-01-18 21:52:51.927427', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2077, '2024-01-18 21:52:54.523145', '2024-01-18 21:52:54.523145', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2078, '2024-01-18 21:53:00.641482', '2024-01-18 21:53:00.641482', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2079, '2024-01-18 21:53:00.915549', '2024-01-18 21:53:00.915549', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2080, '2024-01-18 22:04:29.315143', '2024-01-18 22:04:29.315143', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2081, '2024-01-18 22:04:29.600266', '2024-01-18 22:04:29.600266', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2082, '2024-01-18 22:04:48.394766', '2024-01-18 22:04:48.394766', NULL, '本机地址', '{\"class\": [], \"title\": \"\", \"comments\": [], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2083, '2024-01-18 22:05:06.239716', '2024-01-18 22:05:06.239716', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2084, '2024-01-18 22:05:06.438040', '2024-01-18 22:05:06.438040', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2085, '2024-01-18 22:05:07.410958', '2024-01-18 22:05:07.410958', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2086, '2024-01-18 22:05:07.652605', '2024-01-18 22:05:07.652605', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2087, '2024-01-18 22:05:08.898055', '2024-01-18 22:05:08.898055', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2088, '2024-01-18 22:05:09.170791', '2024-01-18 22:05:09.170791', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2089, '2024-01-18 22:05:59.960612', '2024-01-18 22:05:59.960612', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2090, '2024-01-18 22:06:03.506664', '2024-01-18 22:06:03.506664', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"111\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-14 22:58:31\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"发布标题\", \"comments\": [{\"type\": 0, \"title\": \"单选题\", \"active\": -1, \"options\": [\"a\", \"b\"]}, {\"type\": 1, \"title\": \"多选题\", \"active\": [], \"options\": [\"3\", \"4\"]}, {\"type\": 2, \"title\": \"单独\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"方法\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2091, '2024-01-18 22:07:40.622329', '2024-01-18 22:07:40.622329', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2092, '2024-01-18 22:07:42.520134', '2024-01-18 22:07:42.520134', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2093, '2024-01-18 22:07:50.677856', '2024-01-18 22:07:50.677856', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsInJvbGVJZHMiOlsiMSJdLCJ1c2VybmFtZSI6ImFkbWluIiwidXNlcklkIjoxLCJwYXNzd29yZFZlcnNpb24iOjgsImlhdCI6MTcwNTQ3ODgwMCwiZXhwIjoxNzA2Nzc0ODAwfQ.r9oYUhH1wHwrQJZ8cugdAXT6I57FNf_VRPbnZ30qh_8\"}', '127.0.0.1', '/admin/base/open/refreshToken');
INSERT INTO `base_sys_log` VALUES (2094, '2024-01-18 22:07:50.689272', '2024-01-18 22:07:50.689272', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2095, '2024-01-18 22:08:38.789277', '2024-01-18 22:08:38.789277', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2096, '2024-01-18 22:08:39.345137', '2024-01-18 22:08:39.345137', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2097, '2024-01-18 22:08:39.729371', '2024-01-18 22:08:39.729371', NULL, '本机地址', '{\"color\": \"#2c3142\", \"width\": \"150\", \"height\": \"45\"}', '127.0.0.1', '/admin/base/open/captcha');
INSERT INTO `base_sys_log` VALUES (2098, '2024-01-18 22:08:48.989221', '2024-01-18 22:08:48.989221', NULL, '本机地址', '{\"password\": \"123456\", \"username\": \"admin\", \"captchaId\": \"14582300-b60b-11ee-889d-699d2f5dea37\", \"verifyCode\": \"5770\"}', '127.0.0.1', '/admin/base/open/login');
INSERT INTO `base_sys_log` VALUES (2099, '2024-01-18 22:08:49.039536', '2024-01-18 22:08:49.039536', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (2100, '2024-01-18 22:08:49.060831', '2024-01-18 22:08:49.060831', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (2101, '2024-01-18 22:08:49.061670', '2024-01-18 22:08:49.061670', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2102, '2024-01-18 22:08:49.353163', '2024-01-18 22:08:49.353163', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (2103, '2024-01-18 22:09:31.210959', '2024-01-18 22:09:31.210959', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2104, '2024-01-18 22:09:31.408470', '2024-01-18 22:09:31.408470', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2105, '2024-01-18 22:09:33.882726', '2024-01-18 22:09:33.882726', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2106, '2024-01-18 22:09:40.666949', '2024-01-18 22:09:40.666949', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2107, '2024-01-18 22:09:54.523915', '2024-01-18 22:09:54.523915', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2108, '2024-01-18 22:09:56.410985', '2024-01-18 22:09:56.410985', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2109, '2024-01-18 22:10:06.948459', '2024-01-18 22:10:06.948459', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2110, '2024-01-18 22:10:23.693325', '2024-01-18 22:10:23.693325', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2111, '2024-01-18 22:10:23.935014', '2024-01-18 22:10:23.935014', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2112, '2024-01-18 22:10:29.993071', '2024-01-18 22:10:29.993071', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2113, '2024-01-18 22:10:30.107717', '2024-01-18 22:10:30.107717', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2114, '2024-01-18 22:10:31.497578', '2024-01-18 22:10:31.497578', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2115, '2024-01-18 22:10:32.671837', '2024-01-18 22:10:32.671837', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2116, '2024-01-18 22:10:34.306002', '2024-01-18 22:10:34.306002', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2117, '2024-01-18 22:10:44.851959', '2024-01-18 22:10:44.851959', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2118, '2024-01-18 22:10:44.976536', '2024-01-18 22:10:44.976536', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2119, '2024-01-18 22:10:47.248232', '2024-01-18 22:10:47.248232', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2120, '2024-01-18 22:10:48.590731', '2024-01-18 22:10:48.590731', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2121, '2024-01-18 22:12:51.624752', '2024-01-18 22:12:51.624752', 1, '本机地址', '{\"id\": \"2\"}', '127.0.0.1', '/admin/user/_class/info');
INSERT INTO `base_sys_log` VALUES (2122, '2024-01-18 22:13:08.038428', '2024-01-18 22:13:08.038428', 1, '本机地址', '{\"id\": 2, \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-14 22:58:31\", \"collegeName\": \"big_data\"}', '127.0.0.1', '/admin/user/_class/update');
INSERT INTO `base_sys_log` VALUES (2123, '2024-01-18 22:13:08.075865', '2024-01-18 22:13:08.075865', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (2124, '2024-01-18 22:14:09.145508', '2024-01-18 22:14:09.145508', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2125, '2024-01-18 22:14:45.623068', '2024-01-18 22:14:45.623068', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2126, '2024-01-18 22:14:57.947524', '2024-01-18 22:14:57.947524', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"发烦烦烦\", \"comments\": [{\"type\": 0, \"title\": \"单选\", \"active\": -1, \"options\": [\"342\", \"432\"]}, {\"type\": 1, \"title\": \"多选\", \"active\": [], \"options\": [\"432\", \"543\"]}, {\"type\": 2, \"title\": \"判断\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"4324\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2127, '2024-01-18 22:15:46.743475', '2024-01-18 22:15:46.743475', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"发烦烦烦\", \"comments\": [{\"type\": 0, \"title\": \"单选\", \"active\": 0, \"options\": [\"342\", \"432\"]}, {\"type\": 1, \"title\": \"多选\", \"active\": [0, 1], \"options\": [\"432\", \"543\"]}, {\"type\": 2, \"title\": \"判断\", \"active\": 1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"4324\", \"active\": -1, \"answer\": \"好好\", \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2128, '2024-01-18 22:22:13.907680', '2024-01-18 22:22:13.907680', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2129, '2024-01-18 22:22:15.819046', '2024-01-18 22:22:15.819046', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2130, '2024-01-18 22:23:07.683071', '2024-01-18 22:23:07.683071', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2131, '2024-01-18 22:23:07.854696', '2024-01-18 22:23:07.854696', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2132, '2024-01-18 22:23:10.508343', '2024-01-18 22:23:10.508343', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2133, '2024-01-18 22:23:13.327999', '2024-01-18 22:23:13.327999', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2134, '2024-01-18 22:23:27.125221', '2024-01-18 22:23:27.125221', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2135, '2024-01-18 22:23:30.405207', '2024-01-18 22:23:30.405207', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"234\", \"endTime\": \"2025-01-18\", \"comments\": [{\"type\": 0, \"title\": \"42\", \"active\": -1, \"options\": [\"42\", \"4\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2136, '2024-01-18 22:23:47.499221', '2024-01-18 22:23:47.499221', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2137, '2024-01-18 22:40:47.816353', '2024-01-18 22:40:47.816353', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2138, '2024-01-18 22:40:53.648953', '2024-01-18 22:40:53.648953', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2139, '2024-01-18 22:43:03.857413', '2024-01-18 22:43:03.857413', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"test\", \"endTime\": \"2024-01-18\", \"comments\": [], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2140, '2024-01-18 22:43:20.637271', '2024-01-18 22:43:20.637271', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"test\", \"endTime\": \"2024-01-18\", \"comments\": [], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2141, '2024-01-18 22:50:36.912523', '2024-01-18 22:50:36.912523', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"test\", \"endTime\": \"2024-01-18\", \"comments\": [{\"type\": 0, \"title\": \"312\", \"active\": -1, \"options\": [\"32\", \"321\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2142, '2024-01-18 23:13:18.454164', '2024-01-18 23:13:18.454164', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"test\", \"endTime\": \"2024-01-18\", \"comments\": [{\"type\": 0, \"title\": \"312\", \"active\": -1, \"options\": [\"32\", \"321\"]}, {\"type\": 1, \"title\": \"test\", \"active\": [], \"options\": [\"432\", \"t42\"]}, {\"type\": 2, \"title\": \"423\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"534\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2143, '2024-01-18 23:14:56.799419', '2024-01-18 23:14:56.799419', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"test\", \"endTime\": \"2024-01-18\", \"comments\": [{\"type\": 0, \"title\": \"312\", \"active\": -1, \"options\": [\"32\", \"321\"]}, {\"type\": 1, \"title\": \"test\", \"active\": [], \"options\": [\"432\", \"t42\"]}, {\"type\": 2, \"title\": \"423\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"534\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2144, '2024-01-18 23:15:24.335427', '2024-01-18 23:15:24.335427', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"大数据与智能工程学院\"}], \"title\": \"test\", \"endTime\": \"2024-01-18\", \"comments\": [{\"type\": 0, \"title\": \"312\", \"active\": -1, \"options\": [\"32\", \"321\"]}, {\"type\": 1, \"title\": \"test\", \"active\": [], \"options\": [\"432\", \"t42\"]}, {\"type\": 2, \"title\": \"423\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"534\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2145, '2024-01-19 14:29:08.258014', '2024-01-19 14:29:08.258014', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2146, '2024-01-19 14:29:42.795185', '2024-01-19 14:29:42.795185', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2147, '2024-01-19 14:30:00.549941', '2024-01-19 14:30:00.549941', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2148, '2024-01-19 14:30:08.426190', '2024-01-19 14:30:08.426190', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2149, '2024-01-19 14:30:13.132955', '2024-01-19 14:30:13.132955', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2150, '2024-01-19 14:30:20.754566', '2024-01-19 14:30:20.754566', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2151, '2024-01-19 14:36:47.003822', '2024-01-19 14:36:47.003822', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2152, '2024-01-19 14:36:47.915361', '2024-01-19 14:36:47.915361', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2153, '2024-01-19 14:37:04.204874', '2024-01-19 14:37:04.204874', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2154, '2024-01-19 14:37:06.867099', '2024-01-19 14:37:06.867099', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2155, '2024-01-19 14:37:07.688257', '2024-01-19 14:37:07.688257', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2156, '2024-01-19 14:37:09.052237', '2024-01-19 14:37:09.052237', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2157, '2024-01-19 14:38:54.939390', '2024-01-19 14:38:54.939390', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2158, '2024-01-19 14:40:38.666882', '2024-01-19 14:40:38.666882', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2159, '2024-01-19 14:42:03.269042', '2024-01-19 14:42:03.269042', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2160, '2024-01-19 14:44:29.612103', '2024-01-19 14:44:29.612103', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2161, '2024-01-20 22:02:15.668711', '2024-01-20 22:02:15.668711', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsImlkIjoxLCJpYXQiOjE3MDU1NjMzNTksImV4cCI6MTcwODE1NTM1OX0.1ZQACWtkOLBVHmVeKlsZtO0EGBhUYHXWLhQ5JpvBHoU\"}', '127.0.0.1', '/app/user/login/refreshToken');
INSERT INTO `base_sys_log` VALUES (2162, '2024-01-20 22:02:15.717629', '2024-01-20 22:02:15.717629', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2163, '2024-01-20 22:02:15.751785', '2024-01-20 22:02:15.751785', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2164, '2024-01-20 22:02:15.752184', '2024-01-20 22:02:15.752184', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2165, '2024-01-20 22:02:15.752485', '2024-01-20 22:02:15.752485', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2166, '2024-01-20 22:02:18.000267', '2024-01-20 22:02:18.000267', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2167, '2024-01-20 22:24:31.945689', '2024-01-20 22:24:31.945689', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2168, '2024-01-20 22:24:34.863696', '2024-01-20 22:24:34.863696', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2169, '2024-01-20 22:24:49.173865', '2024-01-20 22:24:49.173865', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2170, '2024-01-20 22:24:49.364720', '2024-01-20 22:24:49.364720', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2171, '2024-01-20 22:25:09.369436', '2024-01-20 22:25:09.369436', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2172, '2024-01-20 22:25:11.729755', '2024-01-20 22:25:11.729755', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2173, '2024-01-20 22:25:11.990306', '2024-01-20 22:25:11.990306', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2174, '2024-01-20 22:25:47.776698', '2024-01-20 22:25:47.776698', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2175, '2024-01-20 22:25:50.215176', '2024-01-20 22:25:50.215176', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2176, '2024-01-20 22:25:50.420944', '2024-01-20 22:25:50.420944', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2177, '2024-01-20 22:38:00.332807', '2024-01-20 22:38:00.332807', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2178, '2024-01-20 22:38:02.725592', '2024-01-20 22:38:02.725592', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2179, '2024-01-20 22:38:02.947688', '2024-01-20 22:38:02.947688', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2180, '2024-01-20 22:38:18.612581', '2024-01-20 22:38:18.612581', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2181, '2024-01-20 22:38:20.970411', '2024-01-20 22:38:20.970411', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2182, '2024-01-20 22:38:21.182701', '2024-01-20 22:38:21.182701', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2183, '2024-01-20 22:54:12.446632', '2024-01-20 22:54:12.446632', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2184, '2024-01-20 23:15:01.789917', '2024-01-20 23:15:01.789917', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2185, '2024-01-20 23:15:05.006934', '2024-01-20 23:15:05.006934', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2186, '2024-01-20 23:15:11.023905', '2024-01-20 23:15:11.023905', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2187, '2024-01-20 23:15:13.947547', '2024-01-20 23:15:13.947547', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2188, '2024-01-20 23:15:18.589214', '2024-01-20 23:15:18.589214', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2189, '2024-01-20 23:15:58.640011', '2024-01-20 23:15:58.640011', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2190, '2024-01-20 23:59:23.604252', '2024-01-20 23:59:23.604252', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2191, '2024-01-20 23:59:28.290773', '2024-01-20 23:59:28.290773', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2192, '2024-01-21 00:41:02.158510', '2024-01-21 00:41:02.158510', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2193, '2024-01-21 00:41:40.524202', '2024-01-21 00:41:40.524202', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2194, '2024-01-21 00:41:44.647327', '2024-01-21 00:41:44.647327', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2195, '2024-01-21 00:41:45.687617', '2024-01-21 00:41:45.687617', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2196, '2024-01-21 00:42:10.243998', '2024-01-21 00:42:10.243998', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2197, '2024-01-21 00:42:20.793666', '2024-01-21 00:42:20.793666', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2198, '2024-01-21 00:42:27.777847', '2024-01-21 00:42:27.777847', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2199, '2024-01-21 00:44:54.334613', '2024-01-21 00:44:54.334613', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2200, '2024-01-21 00:44:54.613651', '2024-01-21 00:44:54.613651', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2201, '2024-01-21 00:44:54.809641', '2024-01-21 00:44:54.809641', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2202, '2024-01-21 00:44:55.116429', '2024-01-21 00:44:55.116429', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2203, '2024-01-21 00:44:55.196465', '2024-01-21 00:44:55.196465', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2204, '2024-01-21 00:45:00.233622', '2024-01-21 00:45:00.233622', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2205, '2024-01-21 00:45:00.637277', '2024-01-21 00:45:00.637277', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2206, '2024-01-21 00:45:02.078881', '2024-01-21 00:45:02.078881', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2207, '2024-01-21 00:45:02.090164', '2024-01-21 00:45:02.090164', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2208, '2024-01-21 00:45:02.625716', '2024-01-21 00:45:02.625716', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2209, '2024-01-21 00:45:02.704246', '2024-01-21 00:45:02.704246', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2210, '2024-01-21 00:45:10.763005', '2024-01-21 00:45:10.763005', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2211, '2024-01-21 00:45:11.033078', '2024-01-21 00:45:11.033078', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2212, '2024-01-21 00:45:13.711432', '2024-01-21 00:45:13.711432', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2213, '2024-01-21 00:45:20.061152', '2024-01-21 00:45:20.061152', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2214, '2024-01-21 00:45:20.313779', '2024-01-21 00:45:20.313779', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2215, '2024-01-21 00:46:44.404847', '2024-01-21 00:46:44.404847', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2216, '2024-01-21 00:46:44.633569', '2024-01-21 00:46:44.633569', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2217, '2024-01-21 00:46:47.160552', '2024-01-21 00:46:47.160552', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2218, '2024-01-21 00:46:47.401623', '2024-01-21 00:46:47.401623', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2219, '2024-01-21 00:46:51.753835', '2024-01-21 00:46:51.753835', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2220, '2024-01-21 00:46:51.878115', '2024-01-21 00:46:51.878115', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2221, '2024-01-21 00:46:54.282994', '2024-01-21 00:46:54.282994', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2222, '2024-01-21 00:46:54.560840', '2024-01-21 00:46:54.560840', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2223, '2024-01-21 00:47:29.030482', '2024-01-21 00:47:29.030482', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2224, '2024-01-21 00:47:29.212219', '2024-01-21 00:47:29.212219', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2225, '2024-01-21 00:47:31.947722', '2024-01-21 00:47:31.947722', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2226, '2024-01-21 00:47:32.171654', '2024-01-21 00:47:32.171654', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2227, '2024-01-21 00:47:37.791467', '2024-01-21 00:47:37.791467', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2228, '2024-01-21 00:47:39.104110', '2024-01-21 00:47:39.104110', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2229, '2024-01-21 00:50:06.909194', '2024-01-21 00:50:06.909194', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2230, '2024-01-21 00:50:06.916263', '2024-01-21 00:50:06.916263', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2231, '2024-01-21 00:50:07.160255', '2024-01-21 00:50:07.160255', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2232, '2024-01-21 00:50:08.448227', '2024-01-21 00:50:08.448227', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2233, '2024-01-21 00:50:09.628341', '2024-01-21 00:50:09.628341', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2234, '2024-01-21 00:58:54.998185', '2024-01-21 00:58:54.998185', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2235, '2024-01-21 00:58:54.998424', '2024-01-21 00:58:54.998424', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2236, '2024-01-21 00:58:55.178329', '2024-01-21 00:58:55.178329', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2237, '2024-01-21 00:58:56.561649', '2024-01-21 00:58:56.561649', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2238, '2024-01-21 00:58:57.781453', '2024-01-21 00:58:57.781453', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2239, '2024-01-21 00:59:03.245413', '2024-01-21 00:59:03.245413', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2240, '2024-01-21 00:59:03.371241', '2024-01-21 00:59:03.371241', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2241, '2024-01-21 00:59:05.598124', '2024-01-21 00:59:05.598124', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2242, '2024-01-21 01:00:39.905234', '2024-01-21 01:00:39.905234', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2243, '2024-01-21 01:00:40.072733', '2024-01-21 01:00:40.072733', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2244, '2024-01-21 01:00:42.423058', '2024-01-21 01:00:42.423058', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2245, '2024-01-21 01:00:43.501965', '2024-01-21 01:00:43.501965', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2246, '2024-01-21 01:12:39.455783', '2024-01-21 01:12:39.455783', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2247, '2024-01-21 01:12:39.629918', '2024-01-21 01:12:39.629918', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2248, '2024-01-21 01:12:42.269443', '2024-01-21 01:12:42.269443', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2249, '2024-01-21 01:13:52.882011', '2024-01-21 01:13:52.882011', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2250, '2024-01-21 01:13:59.864015', '2024-01-21 01:13:59.864015', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2251, '2024-01-21 01:14:45.547849', '2024-01-21 01:14:45.547849', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2252, '2024-01-21 01:14:45.728401', '2024-01-21 01:14:45.728401', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2253, '2024-01-21 01:14:48.071945', '2024-01-21 01:14:48.071945', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2254, '2024-01-21 01:15:22.784418', '2024-01-21 01:15:22.784418', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2255, '2024-01-21 01:15:22.960920', '2024-01-21 01:15:22.960920', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2256, '2024-01-21 01:15:25.368383', '2024-01-21 01:15:25.368383', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2257, '2024-01-21 01:15:41.693078', '2024-01-21 01:15:41.693078', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2258, '2024-01-21 01:15:41.816657', '2024-01-21 01:15:41.816657', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2259, '2024-01-21 01:15:44.130814', '2024-01-21 01:15:44.130814', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2260, '2024-01-21 01:31:01.017195', '2024-01-21 01:31:01.017195', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2261, '2024-01-21 01:31:18.636841', '2024-01-21 01:31:18.636841', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2262, '2024-01-21 01:31:21.726417', '2024-01-21 01:31:21.726417', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2263, '2024-01-21 01:32:08.128018', '2024-01-21 01:32:08.128018', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2264, '2024-01-21 01:32:08.324864', '2024-01-21 01:32:08.324864', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2265, '2024-01-21 01:32:10.636645', '2024-01-21 01:32:10.636645', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2266, '2024-01-21 01:32:11.628705', '2024-01-21 01:32:11.628705', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2267, '2024-01-21 02:02:50.169519', '2024-01-21 02:02:50.169519', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2268, '2024-01-21 02:03:13.037072', '2024-01-21 02:03:13.037072', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2269, '2024-01-21 02:03:13.403212', '2024-01-21 02:03:13.403212', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2270, '2024-01-21 02:03:17.313474', '2024-01-21 02:03:17.313474', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2271, '2024-01-21 02:19:49.811229', '2024-01-21 02:19:49.811229', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2272, '2024-01-21 02:19:52.371962', '2024-01-21 02:19:52.371962', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2273, '2024-01-21 17:55:10.822015', '2024-01-21 17:55:10.822015', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2274, '2024-01-21 17:55:14.222230', '2024-01-21 17:55:14.222230', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2275, '2024-01-21 17:55:15.178514', '2024-01-21 17:55:15.178514', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2276, '2024-01-21 17:55:26.517109', '2024-01-21 17:55:26.517109', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2277, '2024-01-21 17:57:52.253774', '2024-01-21 17:57:52.253774', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2278, '2024-01-21 17:57:54.940769', '2024-01-21 17:57:54.940769', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2279, '2024-01-21 17:57:58.052374', '2024-01-21 17:57:58.052374', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2280, '2024-01-21 17:58:08.161762', '2024-01-21 17:58:08.161762', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2281, '2024-01-21 17:58:13.236942', '2024-01-21 17:58:13.236942', NULL, '本机地址', '{\"name\": \"test\", \"class\": \"{\\\"id\\\":2,\\\"createTime\\\":\\\"2024-01-14 22:58:31\\\",\\\"updateTime\\\":\\\"2024-01-18 22:13:08\\\",\\\"gradeName\\\":\\\"2021\\\",\\\"collegeName\\\":\\\"大数据与智能工程学院\\\",\\\"majorName\\\":\\\"大数据\\\",\\\"classNum\\\":\\\"0\\\",\\\"grade\\\":\\\"2021级\\\"}\", \"collegeID\": \"男\", \"studentNo\": \"\", \"studentSex\": \"\", \"studentName\": \"\", \"teacherTitle\": \"123\"}', '127.0.0.1', '/app/user/student/bindStudent');
INSERT INTO `base_sys_log` VALUES (2282, '2024-01-21 17:59:32.631224', '2024-01-21 17:59:32.631224', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2283, '2024-01-21 17:59:35.279108', '2024-01-21 17:59:35.279108', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2284, '2024-01-21 17:59:37.736938', '2024-01-21 17:59:37.736938', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2285, '2024-01-21 17:59:41.746600', '2024-01-21 17:59:41.746600', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2286, '2024-01-21 17:59:46.238522', '2024-01-21 17:59:46.238522', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2287, '2024-01-21 17:59:52.227730', '2024-01-21 17:59:52.227730', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2288, '2024-01-21 17:59:58.305543', '2024-01-21 17:59:58.305543', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2289, '2024-01-21 18:00:02.154965', '2024-01-21 18:00:02.154965', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2290, '2024-01-21 18:01:07.334919', '2024-01-21 18:01:07.334919', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2291, '2024-01-21 18:01:08.636997', '2024-01-21 18:01:08.636997', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2292, '2024-01-21 18:01:19.814514', '2024-01-21 18:01:19.814514', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2293, '2024-01-21 18:01:22.285765', '2024-01-21 18:01:22.285765', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2294, '2024-01-21 18:01:23.383341', '2024-01-21 18:01:23.383341', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2295, '2024-01-21 18:01:28.297875', '2024-01-21 18:01:28.297875', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2296, '2024-01-21 18:01:53.339952', '2024-01-21 18:01:53.339952', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2297, '2024-01-21 18:01:55.846540', '2024-01-21 18:01:55.846540', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2298, '2024-01-21 18:01:57.634317', '2024-01-21 18:01:57.634317', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2299, '2024-01-21 18:02:19.970893', '2024-01-21 18:02:19.970893', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2300, '2024-01-21 18:02:38.427483', '2024-01-21 18:02:38.427483', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2301, '2024-01-21 18:02:40.739229', '2024-01-21 18:02:40.739229', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2302, '2024-01-21 18:02:45.406593', '2024-01-21 18:02:45.406593', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2303, '2024-01-21 18:02:47.621911', '2024-01-21 18:02:47.621911', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2304, '2024-01-21 18:02:55.871382', '2024-01-21 18:02:55.871382', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2305, '2024-01-21 18:02:58.414652', '2024-01-21 18:02:58.414652', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2306, '2024-01-21 18:03:01.780483', '2024-01-21 18:03:01.780483', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2307, '2024-01-21 18:03:04.030715', '2024-01-21 18:03:04.030715', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2308, '2024-01-21 18:12:22.330784', '2024-01-21 18:12:22.330784', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2309, '2024-01-21 18:12:35.374049', '2024-01-21 18:12:35.374049', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2310, '2024-01-21 18:12:37.701912', '2024-01-21 18:12:37.701912', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2311, '2024-01-21 18:12:38.737675', '2024-01-21 18:12:38.737675', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2312, '2024-01-21 18:12:52.258716', '2024-01-21 18:12:52.258716', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2313, '2024-01-21 18:13:00.373844', '2024-01-21 18:13:00.373844', NULL, '本机地址', '{\"class\": \"[2]\", \"studentNo\": \"123\", \"studentSex\": \"男\", \"studentName\": \"刘明江\"}', '127.0.0.1', '/app/user/student/bindStudent');
INSERT INTO `base_sys_log` VALUES (2314, '2024-01-21 18:13:34.403912', '2024-01-21 18:13:34.403912', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2315, '2024-01-21 18:13:35.601965', '2024-01-21 18:13:35.601965', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2316, '2024-01-21 18:13:36.763769', '2024-01-21 18:13:36.763769', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2317, '2024-01-21 18:13:59.479549', '2024-01-21 18:13:59.479549', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2318, '2024-01-21 18:14:22.323903', '2024-01-21 18:14:22.323903', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2319, '2024-01-21 18:14:38.649172', '2024-01-21 18:14:38.649172', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2320, '2024-01-21 18:14:41.328044', '2024-01-21 18:14:41.328044', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2321, '2024-01-21 18:14:42.461368', '2024-01-21 18:14:42.461368', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2322, '2024-01-21 18:14:54.181122', '2024-01-21 18:14:54.181122', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2323, '2024-01-21 18:14:56.354164', '2024-01-21 18:14:56.354164', NULL, '本机地址', '{\"class\": \"2\", \"studentNo\": \"1234\", \"studentSex\": \"男\", \"studentName\": \"刘明江\"}', '127.0.0.1', '/app/user/student/bindStudent');
INSERT INTO `base_sys_log` VALUES (2324, '2024-01-21 18:15:14.687331', '2024-01-21 18:15:14.687331', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2325, '2024-01-21 18:15:17.188296', '2024-01-21 18:15:17.188296', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2326, '2024-01-21 18:15:36.151646', '2024-01-21 18:15:36.151646', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2327, '2024-01-21 18:15:48.843804', '2024-01-21 18:15:48.843804', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2328, '2024-01-21 18:15:52.055110', '2024-01-21 18:15:52.055110', NULL, '本机地址', '{\"class\": \"[{\\\"id\\\":2,\\\"createTime\\\":\\\"2024-01-14 22:58:31\\\",\\\"updateTime\\\":\\\"2024-01-18 22:13:08\\\",\\\"gradeName\\\":\\\"2021\\\",\\\"collegeName\\\":\\\"大数据与智能工程学院\\\",\\\"majorName\\\":\\\"大数据\\\",\\\"classNum\\\":\\\"0\\\",\\\"grade\\\":\\\"2021级\\\"}]\", \"classID\": \"2\", \"studentNo\": \"20190551106\", \"studentSex\": \"男\", \"studentName\": \"刘明江\"}', '127.0.0.1', '/app/user/student/bindStudent');
INSERT INTO `base_sys_log` VALUES (2329, '2024-01-21 18:17:19.065718', '2024-01-21 18:17:19.065718', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2330, '2024-01-21 18:17:21.475746', '2024-01-21 18:17:21.475746', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2331, '2024-01-21 18:19:40.794944', '2024-01-21 18:19:40.794944', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2332, '2024-01-21 18:19:41.221145', '2024-01-21 18:19:41.221145', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2333, '2024-01-21 18:19:41.304435', '2024-01-21 18:19:41.304435', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2334, '2024-01-21 18:21:04.963300', '2024-01-21 18:21:04.963300', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2335, '2024-01-21 18:21:05.132400', '2024-01-21 18:21:05.132400', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2336, '2024-01-21 18:21:07.585307', '2024-01-21 18:21:07.585307', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2337, '2024-01-21 18:21:08.538075', '2024-01-21 18:21:08.538075', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2338, '2024-01-21 18:21:27.186940', '2024-01-21 18:21:27.186940', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2339, '2024-01-21 18:21:27.377989', '2024-01-21 18:21:27.377989', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2340, '2024-01-21 18:21:29.717220', '2024-01-21 18:21:29.717220', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2341, '2024-01-21 18:21:30.860981', '2024-01-21 18:21:30.860981', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2342, '2024-01-21 18:21:31.357139', '2024-01-21 18:21:31.357139', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2343, '2024-01-21 18:21:31.505708', '2024-01-21 18:21:31.505708', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2344, '2024-01-21 18:22:30.993950', '2024-01-21 18:22:30.993950', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2345, '2024-01-21 18:22:31.190220', '2024-01-21 18:22:31.190220', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2346, '2024-01-21 18:22:33.603561', '2024-01-21 18:22:33.603561', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2347, '2024-01-21 18:22:51.948929', '2024-01-21 18:22:51.948929', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2348, '2024-01-21 18:22:52.066075', '2024-01-21 18:22:52.066075', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2349, '2024-01-21 18:22:52.162289', '2024-01-21 18:22:52.162289', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2350, '2024-01-21 18:22:52.289892', '2024-01-21 18:22:52.289892', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2351, '2024-01-21 18:22:54.495179', '2024-01-21 18:22:54.495179', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2352, '2024-01-21 18:22:55.420585', '2024-01-21 18:22:55.420585', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2353, '2024-01-21 18:22:55.568782', '2024-01-21 18:22:55.568782', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2354, '2024-01-21 18:23:22.893067', '2024-01-21 18:23:22.893067', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2355, '2024-01-21 18:23:23.085785', '2024-01-21 18:23:23.085785', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2356, '2024-01-21 18:23:25.738572', '2024-01-21 18:23:25.738572', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2357, '2024-01-21 18:23:41.590553', '2024-01-21 18:23:41.590553', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2358, '2024-01-21 18:23:41.852337', '2024-01-21 18:23:41.852337', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2359, '2024-01-21 18:23:44.253307', '2024-01-21 18:23:44.253307', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2360, '2024-01-21 18:23:45.972549', '2024-01-21 18:23:45.972549', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2361, '2024-01-21 18:23:46.227663', '2024-01-21 18:23:46.227663', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2362, '2024-01-21 18:28:10.823816', '2024-01-21 18:28:10.823816', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2363, '2024-01-21 18:28:35.770123', '2024-01-21 18:28:35.770123', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2364, '2024-01-21 18:28:40.521444', '2024-01-21 18:28:40.521444', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2365, '2024-01-21 18:28:40.526309', '2024-01-21 18:28:40.526309', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2366, '2024-01-21 18:28:40.727900', '2024-01-21 18:28:40.727900', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2367, '2024-01-21 18:28:43.050761', '2024-01-21 18:28:43.050761', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2368, '2024-01-21 18:28:58.787297', '2024-01-21 18:28:58.787297', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2369, '2024-01-21 18:28:59.000999', '2024-01-21 18:28:59.000999', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2370, '2024-01-21 18:29:01.172616', '2024-01-21 18:29:01.172616', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2371, '2024-01-21 18:29:05.796330', '2024-01-21 18:29:05.796330', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2372, '2024-01-21 18:29:06.028043', '2024-01-21 18:29:06.028043', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2373, '2024-01-21 18:29:32.458512', '2024-01-21 18:29:32.458512', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2374, '2024-01-21 18:29:32.614255', '2024-01-21 18:29:32.614255', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2375, '2024-01-21 18:29:35.120768', '2024-01-21 18:29:35.120768', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2376, '2024-01-21 18:30:27.025764', '2024-01-21 18:30:27.025764', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2377, '2024-01-21 18:30:27.289878', '2024-01-21 18:30:27.289878', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2378, '2024-01-21 18:30:45.030835', '2024-01-21 18:30:45.030835', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2379, '2024-01-21 18:30:45.179795', '2024-01-21 18:30:45.179795', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2380, '2024-01-21 18:30:47.634733', '2024-01-21 18:30:47.634733', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2381, '2024-01-21 18:33:35.447481', '2024-01-21 18:33:35.447481', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2382, '2024-01-21 18:33:35.588959', '2024-01-21 18:33:35.588959', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2383, '2024-01-21 18:33:37.830815', '2024-01-21 18:33:37.830815', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2384, '2024-01-21 18:34:11.689016', '2024-01-21 18:34:11.689016', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2385, '2024-01-21 18:34:11.841004', '2024-01-21 18:34:11.841004', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2386, '2024-01-21 18:34:14.119365', '2024-01-21 18:34:14.119365', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2387, '2024-01-21 18:34:15.306388', '2024-01-21 18:34:15.306388', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2388, '2024-01-21 18:34:15.664479', '2024-01-21 18:34:15.664479', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2389, '2024-01-21 18:34:17.117251', '2024-01-21 18:34:17.117251', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2390, '2024-01-21 18:49:44.648847', '2024-01-21 18:49:44.648847', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2391, '2024-01-21 18:49:44.761200', '2024-01-21 18:49:44.761200', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2392, '2024-01-21 18:50:14.296349', '2024-01-21 18:50:14.296349', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2393, '2024-01-21 18:50:14.404277', '2024-01-21 18:50:14.404277', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2394, '2024-01-21 18:50:40.455112', '2024-01-21 18:50:40.455112', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2395, '2024-01-21 18:50:40.559090', '2024-01-21 18:50:40.559090', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2396, '2024-01-21 18:50:58.937974', '2024-01-21 18:50:58.937974', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2397, '2024-01-21 18:50:59.080494', '2024-01-21 18:50:59.080494', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2398, '2024-01-21 18:52:59.932990', '2024-01-21 18:52:59.932990', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2399, '2024-01-21 18:53:00.052843', '2024-01-21 18:53:00.052843', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2400, '2024-01-21 18:53:49.681415', '2024-01-21 18:53:49.681415', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2401, '2024-01-21 18:53:49.801576', '2024-01-21 18:53:49.801576', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2402, '2024-01-21 18:54:36.881351', '2024-01-21 18:54:36.881351', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2403, '2024-01-21 18:54:37.002013', '2024-01-21 18:54:37.002013', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2404, '2024-01-21 18:55:15.546280', '2024-01-21 18:55:15.546280', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2405, '2024-01-21 18:55:15.688105', '2024-01-21 18:55:15.688105', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2406, '2024-01-21 18:55:35.632340', '2024-01-21 18:55:35.632340', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2407, '2024-01-21 18:55:35.755192', '2024-01-21 18:55:35.755192', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2408, '2024-01-21 18:56:16.513291', '2024-01-21 18:56:16.513291', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2409, '2024-01-21 18:56:16.634799', '2024-01-21 18:56:16.634799', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2410, '2024-01-21 18:57:45.876962', '2024-01-21 18:57:45.876962', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2411, '2024-01-21 18:57:46.017610', '2024-01-21 18:57:46.017610', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2412, '2024-01-21 18:58:35.040543', '2024-01-21 18:58:35.040543', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2413, '2024-01-21 18:58:35.153982', '2024-01-21 18:58:35.153982', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2414, '2024-01-21 19:00:37.848500', '2024-01-21 19:00:37.848500', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2415, '2024-01-21 19:00:38.013339', '2024-01-21 19:00:38.013339', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2416, '2024-01-21 19:03:02.944501', '2024-01-21 19:03:02.944501', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2417, '2024-01-21 19:03:03.056924', '2024-01-21 19:03:03.056924', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2418, '2024-01-21 19:10:48.008464', '2024-01-21 19:10:48.008464', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2419, '2024-01-21 19:10:48.281852', '2024-01-21 19:10:48.281852', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2420, '2024-01-21 19:10:50.554042', '2024-01-21 19:10:50.554042', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2421, '2024-01-21 19:10:50.813535', '2024-01-21 19:10:50.813535', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2422, '2024-01-21 19:11:25.800150', '2024-01-21 19:11:25.800150', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2423, '2024-01-21 19:11:25.806725', '2024-01-21 19:11:25.806725', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2424, '2024-01-21 19:11:25.952028', '2024-01-21 19:11:25.952028', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2425, '2024-01-21 19:11:27.178897', '2024-01-21 19:11:27.178897', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2426, '2024-01-21 19:11:28.275316', '2024-01-21 19:11:28.275316', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2427, '2024-01-21 19:11:28.589487', '2024-01-21 19:11:28.589487', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2428, '2024-01-21 19:11:42.824857', '2024-01-21 19:11:42.824857', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2429, '2024-01-21 19:11:42.946237', '2024-01-21 19:11:42.946237', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2430, '2024-01-21 19:11:45.184678', '2024-01-21 19:11:45.184678', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2431, '2024-01-21 19:11:45.440595', '2024-01-21 19:11:45.440595', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2432, '2024-01-21 19:12:05.605285', '2024-01-21 19:12:05.605285', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2433, '2024-01-21 19:12:05.779635', '2024-01-21 19:12:05.779635', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2434, '2024-01-21 19:12:09.161632', '2024-01-21 19:12:09.161632', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2435, '2024-01-21 19:12:09.327540', '2024-01-21 19:12:09.327540', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2436, '2024-01-21 19:12:27.087620', '2024-01-21 19:12:27.087620', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2437, '2024-01-21 19:12:27.221507', '2024-01-21 19:12:27.221507', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2438, '2024-01-21 19:12:29.568816', '2024-01-21 19:12:29.568816', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2439, '2024-01-21 19:12:29.756490', '2024-01-21 19:12:29.756490', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2440, '2024-01-21 19:13:20.506387', '2024-01-21 19:13:20.506387', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2441, '2024-01-21 19:13:20.646930', '2024-01-21 19:13:20.646930', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2442, '2024-01-21 19:13:21.644492', '2024-01-21 19:13:21.644492', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2443, '2024-01-21 19:14:35.439609', '2024-01-21 19:14:35.439609', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2444, '2024-01-21 19:16:24.061312', '2024-01-21 19:16:24.061312', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2445, '2024-01-21 19:16:24.201865', '2024-01-21 19:16:24.201865', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2446, '2024-01-21 19:16:26.438041', '2024-01-21 19:16:26.438041', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2447, '2024-01-21 19:16:26.646788', '2024-01-21 19:16:26.646788', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2448, '2024-01-21 19:18:11.276706', '2024-01-21 19:18:11.276706', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2449, '2024-01-21 19:18:11.473431', '2024-01-21 19:18:11.473431', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2450, '2024-01-21 19:18:13.804996', '2024-01-21 19:18:13.804996', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2451, '2024-01-21 19:18:14.066848', '2024-01-21 19:18:14.066848', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2452, '2024-01-21 19:18:16.658708', '2024-01-21 19:18:16.658708', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2453, '2024-01-21 19:18:16.813917', '2024-01-21 19:18:16.813917', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2454, '2024-01-21 19:18:42.731956', '2024-01-21 19:18:42.731956', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2455, '2024-01-21 19:18:42.872776', '2024-01-21 19:18:42.872776', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2456, '2024-01-21 19:18:45.164791', '2024-01-21 19:18:45.164791', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2457, '2024-01-21 19:18:45.443686', '2024-01-21 19:18:45.443686', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2458, '2024-01-21 19:18:51.566066', '2024-01-21 19:18:51.566066', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2459, '2024-01-21 19:18:52.780021', '2024-01-21 19:18:52.780021', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2460, '2024-01-21 19:18:53.246400', '2024-01-21 19:18:53.246400', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2461, '2024-01-21 19:18:53.393908', '2024-01-21 19:18:53.393908', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2462, '2024-01-21 19:19:12.376548', '2024-01-21 19:19:12.376548', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2463, '2024-01-21 19:19:12.832168', '2024-01-21 19:19:12.832168', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2464, '2024-01-21 19:19:12.897565', '2024-01-21 19:19:12.897565', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2465, '2024-01-21 19:19:48.194718', '2024-01-21 19:19:48.194718', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2466, '2024-01-21 19:19:48.369814', '2024-01-21 19:19:48.369814', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2467, '2024-01-21 19:19:50.530928', '2024-01-21 19:19:50.530928', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2468, '2024-01-21 19:19:55.483484', '2024-01-21 19:19:55.483484', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2469, '2024-01-21 19:19:55.669539', '2024-01-21 19:19:55.669539', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2470, '2024-01-21 19:19:57.239993', '2024-01-21 19:19:57.239993', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2471, '2024-01-21 19:20:27.955235', '2024-01-21 19:20:27.955235', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2472, '2024-01-21 19:20:28.101305', '2024-01-21 19:20:28.101305', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2473, '2024-01-21 19:20:29.172571', '2024-01-21 19:20:29.172571', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2474, '2024-01-21 19:20:30.504038', '2024-01-21 19:20:30.504038', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2475, '2024-01-21 19:20:34.191015', '2024-01-21 19:20:34.191015', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2476, '2024-01-21 19:20:34.290564', '2024-01-21 19:20:34.290564', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2477, '2024-01-21 19:20:36.253883', '2024-01-21 19:20:36.253883', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2478, '2024-01-21 19:20:40.913560', '2024-01-21 19:20:40.913560', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2479, '2024-01-21 19:20:41.132931', '2024-01-21 19:20:41.132931', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2480, '2024-01-21 19:20:42.574467', '2024-01-21 19:20:42.574467', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2481, '2024-01-21 19:21:00.198256', '2024-01-21 19:21:00.198256', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2482, '2024-01-21 19:21:00.387491', '2024-01-21 19:21:00.387491', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2483, '2024-01-21 19:21:02.580609', '2024-01-21 19:21:02.580609', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2484, '2024-01-21 19:21:07.070827', '2024-01-21 19:21:07.070827', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2485, '2024-01-21 19:21:07.172488', '2024-01-21 19:21:07.172488', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2486, '2024-01-21 19:21:09.249690', '2024-01-21 19:21:09.249690', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2487, '2024-01-21 19:21:14.767752', '2024-01-21 19:21:14.767752', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2488, '2024-01-21 19:21:14.995642', '2024-01-21 19:21:14.995642', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2489, '2024-01-21 19:21:16.321142', '2024-01-21 19:21:16.321142', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2490, '2024-01-21 19:21:18.861563', '2024-01-21 19:21:18.861563', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2491, '2024-01-21 19:23:08.781209', '2024-01-21 19:23:08.781209', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2492, '2024-01-21 19:23:08.974438', '2024-01-21 19:23:08.974438', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2493, '2024-01-21 19:23:11.138430', '2024-01-21 19:23:11.138430', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2494, '2024-01-21 19:23:11.873608', '2024-01-21 19:23:11.873608', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2495, '2024-01-21 19:23:12.078863', '2024-01-21 19:23:12.078863', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2496, '2024-01-21 19:23:13.056989', '2024-01-21 19:23:13.056989', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2497, '2024-01-21 19:23:15.736739', '2024-01-21 19:23:15.736739', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2498, '2024-01-21 19:23:36.616811', '2024-01-21 19:23:36.616811', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2499, '2024-01-21 19:23:36.735817', '2024-01-21 19:23:36.735817', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2500, '2024-01-21 19:23:39.172609', '2024-01-21 19:23:39.172609', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2501, '2024-01-21 19:23:44.767933', '2024-01-21 19:23:44.767933', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2502, '2024-01-21 19:23:44.975543', '2024-01-21 19:23:44.975543', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2503, '2024-01-21 19:23:46.022472', '2024-01-21 19:23:46.022472', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2504, '2024-01-21 19:23:55.622014', '2024-01-21 19:23:55.622014', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2505, '2024-01-21 19:23:55.804784', '2024-01-21 19:23:55.804784', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2506, '2024-01-21 19:23:57.934528', '2024-01-21 19:23:57.934528', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2507, '2024-01-21 19:23:58.817243', '2024-01-21 19:23:58.817243', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2508, '2024-01-21 19:23:59.006917', '2024-01-21 19:23:59.006917', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2509, '2024-01-21 19:24:00.445145', '2024-01-21 19:24:00.445145', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2510, '2024-01-21 19:24:06.267011', '2024-01-21 19:24:06.267011', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2511, '2024-01-21 19:24:38.231313', '2024-01-21 19:24:38.231313', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2512, '2024-01-21 19:24:38.432257', '2024-01-21 19:24:38.432257', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2513, '2024-01-21 19:24:40.675949', '2024-01-21 19:24:40.675949', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2514, '2024-01-21 19:24:58.405142', '2024-01-21 19:24:58.405142', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2515, '2024-01-21 19:24:58.619407', '2024-01-21 19:24:58.619407', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2516, '2024-01-21 19:25:08.037045', '2024-01-21 19:25:08.037045', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2517, '2024-01-21 19:25:08.234610', '2024-01-21 19:25:08.234610', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2518, '2024-01-21 19:25:19.456736', '2024-01-21 19:25:19.456736', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2519, '2024-01-21 19:25:19.632687', '2024-01-21 19:25:19.632687', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2520, '2024-01-21 19:25:21.780557', '2024-01-21 19:25:21.780557', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2521, '2024-01-21 19:25:22.618291', '2024-01-21 19:25:22.618291', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2522, '2024-01-21 19:25:22.883121', '2024-01-21 19:25:22.883121', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2523, '2024-01-21 19:25:23.668461', '2024-01-21 19:25:23.668461', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2524, '2024-01-21 19:25:29.048493', '2024-01-21 19:25:29.048493', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2525, '2024-01-21 19:25:29.166142', '2024-01-21 19:25:29.166142', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2526, '2024-01-21 19:25:31.205628', '2024-01-21 19:25:31.205628', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2527, '2024-01-21 19:25:33.758604', '2024-01-21 19:25:33.758604', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2528, '2024-01-21 19:25:33.954420', '2024-01-21 19:25:33.954420', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2529, '2024-01-21 19:25:35.070144', '2024-01-21 19:25:35.070144', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2530, '2024-01-21 19:25:57.682892', '2024-01-21 19:25:57.682892', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2531, '2024-01-21 19:25:57.873945', '2024-01-21 19:25:57.873945', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2532, '2024-01-21 19:26:00.075760', '2024-01-21 19:26:00.075760', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2533, '2024-01-21 19:26:03.055553', '2024-01-21 19:26:03.055553', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2534, '2024-01-21 19:26:03.156893', '2024-01-21 19:26:03.156893', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2535, '2024-01-21 19:26:05.353990', '2024-01-21 19:26:05.353990', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2536, '2024-01-21 19:26:06.256536', '2024-01-21 19:26:06.256536', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2537, '2024-01-21 19:26:06.468695', '2024-01-21 19:26:06.468695', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2538, '2024-01-21 19:26:07.534875', '2024-01-21 19:26:07.534875', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2539, '2024-01-21 19:26:38.147844', '2024-01-21 19:26:38.147844', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2540, '2024-01-21 19:26:40.871829', '2024-01-21 19:26:40.871829', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2541, '2024-01-21 19:30:55.341810', '2024-01-21 19:30:55.341810', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2542, '2024-01-21 19:31:21.983991', '2024-01-21 19:31:21.983991', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2543, '2024-01-21 19:31:22.120805', '2024-01-21 19:31:22.120805', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2544, '2024-01-21 19:31:24.324243', '2024-01-21 19:31:24.324243', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2545, '2024-01-21 19:32:27.592840', '2024-01-21 19:32:27.592840', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2546, '2024-01-21 19:32:27.601514', '2024-01-21 19:32:27.601514', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2547, '2024-01-21 19:32:27.754146', '2024-01-21 19:32:27.754146', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2548, '2024-01-21 19:32:28.919778', '2024-01-21 19:32:28.919778', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2549, '2024-01-21 19:32:30.110954', '2024-01-21 19:32:30.110954', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2550, '2024-01-21 19:32:33.932321', '2024-01-21 19:32:33.932321', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2551, '2024-01-21 19:32:34.315275', '2024-01-21 19:32:34.315275', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2552, '2024-01-21 19:32:34.323844', '2024-01-21 19:32:34.323844', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2553, '2024-01-21 19:32:35.693855', '2024-01-21 19:32:35.693855', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2554, '2024-01-21 19:32:35.986837', '2024-01-21 19:32:35.986837', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2555, '2024-01-21 19:32:37.570039', '2024-01-21 19:32:37.570039', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2556, '2024-01-21 19:32:38.381795', '2024-01-21 19:32:38.381795', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2557, '2024-01-21 19:34:08.925207', '2024-01-21 19:34:08.925207', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2558, '2024-01-21 19:34:09.713379', '2024-01-21 19:34:09.713379', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2559, '2024-01-21 19:34:09.863675', '2024-01-21 19:34:09.863675', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2560, '2024-01-21 19:34:11.087160', '2024-01-21 19:34:11.087160', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2561, '2024-01-21 19:34:12.208711', '2024-01-21 19:34:12.208711', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2562, '2024-01-21 19:34:28.857915', '2024-01-21 19:34:28.857915', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2563, '2024-01-21 19:35:12.412973', '2024-01-21 19:35:12.412973', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2564, '2024-01-21 19:39:01.969575', '2024-01-21 19:39:01.969575', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2565, '2024-01-21 19:39:02.130074', '2024-01-21 19:39:02.130074', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2566, '2024-01-21 19:39:04.325906', '2024-01-21 19:39:04.325906', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2567, '2024-01-21 19:39:10.546541', '2024-01-21 19:39:10.546541', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2568, '2024-01-21 19:39:11.691462', '2024-01-21 19:39:11.691462', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2569, '2024-01-21 19:39:13.248106', '2024-01-21 19:39:13.248106', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2570, '2024-01-21 19:39:14.162047', '2024-01-21 19:39:14.162047', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2571, '2024-01-21 19:39:54.203741', '2024-01-21 19:39:54.203741', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2572, '2024-01-21 20:03:52.436201', '2024-01-21 20:03:52.436201', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2573, '2024-01-21 20:03:52.601473', '2024-01-21 20:03:52.601473', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2574, '2024-01-21 20:03:55.024758', '2024-01-21 20:03:55.024758', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2575, '2024-01-21 20:04:14.101589', '2024-01-21 20:04:14.101589', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2576, '2024-01-21 20:04:14.387101', '2024-01-21 20:04:14.387101', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2577, '2024-01-21 20:04:16.285527', '2024-01-21 20:04:16.285527', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2578, '2024-01-21 20:04:17.464431', '2024-01-21 20:04:17.464431', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2579, '2024-01-21 20:05:04.331149', '2024-01-21 20:05:04.331149', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2580, '2024-01-21 20:05:04.482053', '2024-01-21 20:05:04.482053', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2581, '2024-01-21 20:05:06.746915', '2024-01-21 20:05:06.746915', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2582, '2024-01-21 20:05:07.516863', '2024-01-21 20:05:07.516863', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2583, '2024-01-21 20:05:07.814405', '2024-01-21 20:05:07.814405', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2584, '2024-01-21 20:05:08.656375', '2024-01-21 20:05:08.656375', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2585, '2024-01-21 20:05:11.120485', '2024-01-21 20:05:11.120485', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2586, '2024-01-21 20:05:12.122786', '2024-01-21 20:05:12.122786', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2587, '2024-01-21 21:07:00.287293', '2024-01-21 21:07:00.287293', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2588, '2024-01-21 21:07:00.491198', '2024-01-21 21:07:00.491198', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2589, '2024-01-21 21:08:59.077698', '2024-01-21 21:08:59.077698', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2590, '2024-01-21 21:08:59.236396', '2024-01-21 21:08:59.236396', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2591, '2024-01-21 21:09:01.611840', '2024-01-21 21:09:01.611840', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2592, '2024-01-21 21:09:04.415298', '2024-01-21 21:09:04.415298', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2593, '2024-01-21 21:09:04.606029', '2024-01-21 21:09:04.606029', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2594, '2024-01-21 21:09:05.935102', '2024-01-21 21:09:05.935102', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2595, '2024-01-21 21:09:06.748588', '2024-01-21 21:09:06.748588', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2596, '2024-01-21 21:10:32.156577', '2024-01-21 21:10:32.156577', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2597, '2024-01-21 21:10:32.312930', '2024-01-21 21:10:32.312930', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2598, '2024-01-21 21:10:34.594485', '2024-01-21 21:10:34.594485', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2599, '2024-01-21 21:11:58.387128', '2024-01-21 21:11:58.387128', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2600, '2024-01-21 21:11:58.532780', '2024-01-21 21:11:58.532780', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2601, '2024-01-21 21:12:00.013355', '2024-01-21 21:12:00.013355', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2602, '2024-01-21 21:12:00.193503', '2024-01-21 21:12:00.193503', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2603, '2024-01-21 21:12:00.888239', '2024-01-21 21:12:00.888239', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2604, '2024-01-21 21:12:02.749113', '2024-01-21 21:12:02.749113', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2605, '2024-01-21 21:12:07.774253', '2024-01-21 21:12:07.774253', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2606, '2024-01-21 21:12:08.083234', '2024-01-21 21:12:08.083234', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2607, '2024-01-21 21:12:09.293390', '2024-01-21 21:12:09.293390', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2608, '2024-01-21 21:12:18.348166', '2024-01-21 21:12:18.348166', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2609, '2024-01-21 21:12:20.787966', '2024-01-21 21:12:20.787966', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2610, '2024-01-21 21:12:49.034272', '2024-01-21 21:12:49.034272', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2611, '2024-01-21 21:13:00.135026', '2024-01-21 21:13:00.135026', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2612, '2024-01-21 21:13:00.309363', '2024-01-21 21:13:00.309363', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2613, '2024-01-21 21:13:01.215432', '2024-01-21 21:13:01.215432', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2614, '2024-01-21 21:13:01.575458', '2024-01-21 21:13:01.575458', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2615, '2024-01-21 21:13:02.628260', '2024-01-21 21:13:02.628260', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2616, '2024-01-21 21:13:04.339552', '2024-01-21 21:13:04.339552', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2617, '2024-01-21 21:13:04.596887', '2024-01-21 21:13:04.596887', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2618, '2024-01-21 21:13:05.843817', '2024-01-21 21:13:05.843817', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2619, '2024-01-21 21:13:06.808395', '2024-01-21 21:13:06.808395', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2620, '2024-01-21 21:14:06.593218', '2024-01-21 21:14:06.593218', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2621, '2024-01-21 21:14:08.914739', '2024-01-21 21:14:08.914739', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2622, '2024-01-21 21:14:09.048702', '2024-01-21 21:14:09.048702', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2623, '2024-01-21 21:14:09.829366', '2024-01-21 21:14:09.829366', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2624, '2024-01-21 21:14:10.735172', '2024-01-21 21:14:10.735172', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2625, '2024-01-21 21:14:39.383259', '2024-01-21 21:14:39.383259', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2626, '2024-01-21 21:14:39.526349', '2024-01-21 21:14:39.526349', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2627, '2024-01-21 21:14:41.859462', '2024-01-21 21:14:41.859462', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2628, '2024-01-21 21:14:46.187035', '2024-01-21 21:14:46.187035', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2629, '2024-01-21 21:14:46.403204', '2024-01-21 21:14:46.403204', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2630, '2024-01-21 21:14:47.169638', '2024-01-21 21:14:47.169638', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2631, '2024-01-21 21:15:10.243983', '2024-01-21 21:15:10.243983', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2632, '2024-01-21 21:15:10.401509', '2024-01-21 21:15:10.401509', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2633, '2024-01-21 21:15:12.804485', '2024-01-21 21:15:12.804485', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2634, '2024-01-21 21:15:13.126418', '2024-01-21 21:15:13.126418', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2635, '2024-01-21 21:15:14.738952', '2024-01-21 21:15:14.738952', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2636, '2024-01-21 21:15:31.728661', '2024-01-21 21:15:31.728661', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2637, '2024-01-21 21:15:31.875152', '2024-01-21 21:15:31.875152', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2638, '2024-01-21 21:15:34.222774', '2024-01-21 21:15:34.222774', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2639, '2024-01-21 21:15:34.454790', '2024-01-21 21:15:34.454790', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2640, '2024-01-21 21:15:35.937285', '2024-01-21 21:15:35.937285', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2641, '2024-01-21 21:15:44.347095', '2024-01-21 21:15:44.347095', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2642, '2024-01-21 21:15:44.482644', '2024-01-21 21:15:44.482644', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2643, '2024-01-21 21:15:46.771990', '2024-01-21 21:15:46.771990', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2644, '2024-01-21 21:15:47.022100', '2024-01-21 21:15:47.022100', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2645, '2024-01-21 21:15:49.314621', '2024-01-21 21:15:49.314621', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2646, '2024-01-21 21:18:05.940313', '2024-01-21 21:18:05.940313', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2647, '2024-01-21 21:18:06.119055', '2024-01-21 21:18:06.119055', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2648, '2024-01-21 21:18:08.279397', '2024-01-21 21:18:08.279397', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2649, '2024-01-21 21:18:08.527966', '2024-01-21 21:18:08.527966', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2650, '2024-01-21 21:18:09.500619', '2024-01-21 21:18:09.500619', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2651, '2024-01-21 21:20:50.499949', '2024-01-21 21:20:50.499949', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2652, '2024-01-21 21:20:50.803675', '2024-01-21 21:20:50.803675', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2653, '2024-01-21 21:20:52.776256', '2024-01-21 21:20:52.776256', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2654, '2024-01-21 21:23:19.194406', '2024-01-21 21:23:19.194406', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2655, '2024-01-21 21:23:19.353498', '2024-01-21 21:23:19.353498', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2656, '2024-01-21 21:23:21.575417', '2024-01-21 21:23:21.575417', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2657, '2024-01-21 21:23:21.882956', '2024-01-21 21:23:21.882956', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2658, '2024-01-21 21:23:24.993284', '2024-01-21 21:23:24.993284', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2659, '2024-01-21 21:23:25.123782', '2024-01-21 21:23:25.123782', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2660, '2024-01-21 21:23:27.393959', '2024-01-21 21:23:27.393959', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2661, '2024-01-21 21:23:27.620103', '2024-01-21 21:23:27.620103', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2662, '2024-01-21 21:23:28.204007', '2024-01-21 21:23:28.204007', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2663, '2024-01-21 21:24:47.212019', '2024-01-21 21:24:47.212019', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2664, '2024-01-21 21:24:47.382321', '2024-01-21 21:24:47.382321', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2665, '2024-01-21 21:24:53.703769', '2024-01-21 21:24:53.703769', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2666, '2024-01-21 21:24:53.880046', '2024-01-21 21:24:53.880046', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2667, '2024-01-21 21:24:54.920964', '2024-01-21 21:24:54.920964', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2668, '2024-01-21 21:25:04.942393', '2024-01-21 21:25:04.942393', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2669, '2024-01-21 21:25:05.091829', '2024-01-21 21:25:05.091829', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2670, '2024-01-21 21:25:07.403256', '2024-01-21 21:25:07.403256', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2671, '2024-01-21 21:25:07.781495', '2024-01-21 21:25:07.781495', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2672, '2024-01-21 21:25:08.642365', '2024-01-21 21:25:08.642365', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2673, '2024-01-21 21:26:25.563235', '2024-01-21 21:26:25.563235', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2674, '2024-01-21 21:26:25.699652', '2024-01-21 21:26:25.699652', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2675, '2024-01-21 21:26:26.747647', '2024-01-21 21:26:26.747647', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2676, '2024-01-21 21:26:27.655295', '2024-01-21 21:26:27.655295', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2677, '2024-01-21 21:26:39.931021', '2024-01-21 21:26:39.931021', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2678, '2024-01-21 21:26:40.111822', '2024-01-21 21:26:40.111822', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2679, '2024-01-21 21:26:43.952541', '2024-01-21 21:26:43.952541', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2680, '2024-01-21 21:26:44.104580', '2024-01-21 21:26:44.104580', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2681, '2024-01-21 21:26:57.680983', '2024-01-21 21:26:57.680983', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2682, '2024-01-21 21:26:57.843471', '2024-01-21 21:26:57.843471', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2683, '2024-01-21 21:27:00.317743', '2024-01-21 21:27:00.317743', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2684, '2024-01-21 21:27:00.611556', '2024-01-21 21:27:00.611556', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2685, '2024-01-21 21:27:01.511826', '2024-01-21 21:27:01.511826', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2686, '2024-01-21 21:27:06.380482', '2024-01-21 21:27:06.380482', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2687, '2024-01-21 21:27:06.692491', '2024-01-21 21:27:06.692491', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2688, '2024-01-21 21:27:12.548316', '2024-01-21 21:27:12.548316', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2689, '2024-01-21 21:27:12.821418', '2024-01-21 21:27:12.821418', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2690, '2024-01-21 21:27:16.309669', '2024-01-21 21:27:16.309669', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2691, '2024-01-21 21:27:16.462403', '2024-01-21 21:27:16.462403', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2692, '2024-01-21 21:27:49.675876', '2024-01-21 21:27:49.675876', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2693, '2024-01-21 21:27:51.178653', '2024-01-21 21:27:51.178653', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2694, '2024-01-21 21:28:02.125122', '2024-01-21 21:28:02.125122', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2695, '2024-01-21 21:28:02.308485', '2024-01-21 21:28:02.308485', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2696, '2024-01-21 21:28:05.753818', '2024-01-21 21:28:05.753818', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2697, '2024-01-21 21:28:05.950527', '2024-01-21 21:28:05.950527', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2698, '2024-01-21 21:28:06.731600', '2024-01-21 21:28:06.731600', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2699, '2024-01-21 21:29:54.226951', '2024-01-21 21:29:54.226951', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2700, '2024-01-21 21:29:54.384257', '2024-01-21 21:29:54.384257', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2701, '2024-01-21 21:29:56.777114', '2024-01-21 21:29:56.777114', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2702, '2024-01-21 21:29:57.102288', '2024-01-21 21:29:57.102288', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2703, '2024-01-21 21:30:32.644221', '2024-01-21 21:30:32.644221', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2704, '2024-01-21 21:30:32.839552', '2024-01-21 21:30:32.839552', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2705, '2024-01-21 21:30:35.283106', '2024-01-21 21:30:35.283106', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2706, '2024-01-21 21:30:35.623621', '2024-01-21 21:30:35.623621', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2707, '2024-01-21 21:30:36.454864', '2024-01-21 21:30:36.454864', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2708, '2024-01-21 21:30:42.009727', '2024-01-21 21:30:42.009727', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2709, '2024-01-21 21:30:42.136424', '2024-01-21 21:30:42.136424', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2710, '2024-01-21 21:30:43.312515', '2024-01-21 21:30:43.312515', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2711, '2024-01-21 21:30:44.510332', '2024-01-21 21:30:44.510332', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2712, '2024-01-21 21:30:59.110975', '2024-01-21 21:30:59.110975', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2713, '2024-01-21 21:30:59.284526', '2024-01-21 21:30:59.284526', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2714, '2024-01-21 21:31:01.566166', '2024-01-21 21:31:01.566166', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2715, '2024-01-21 21:31:01.846984', '2024-01-21 21:31:01.846984', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2716, '2024-01-21 21:31:11.992416', '2024-01-21 21:31:11.992416', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2717, '2024-01-21 21:31:25.941018', '2024-01-21 21:31:25.941018', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2718, '2024-01-21 21:31:45.165067', '2024-01-21 21:31:45.165067', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2719, '2024-01-21 22:21:13.771800', '2024-01-21 22:21:13.771800', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2720, '2024-01-21 22:21:13.903747', '2024-01-21 22:21:13.903747', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2721, '2024-01-21 22:21:16.115680', '2024-01-21 22:21:16.115680', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsImlkIjoxLCJpYXQiOjE3MDU3NTkzMzUsImV4cCI6MTcwODM1MTMzNX0.A5r7OJlEJYTBmF2fwOUFxyPMYRGYdV8iDJL_9lTLL2k\"}', '127.0.0.1', '/app/user/login/refreshToken');
INSERT INTO `base_sys_log` VALUES (2722, '2024-01-21 22:21:16.223081', '2024-01-21 22:21:16.223081', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2723, '2024-01-21 22:21:16.441179', '2024-01-21 22:21:16.441179', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2724, '2024-01-21 22:21:19.531479', '2024-01-21 22:21:19.531479', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2725, '2024-01-21 22:21:19.724132', '2024-01-21 22:21:19.724132', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2726, '2024-01-21 22:21:21.747685', '2024-01-21 22:21:21.747685', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2727, '2024-01-21 22:21:21.966175', '2024-01-21 22:21:21.966175', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2728, '2024-01-21 22:21:22.044190', '2024-01-21 22:21:22.044190', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2729, '2024-01-21 22:22:01.627165', '2024-01-21 22:22:01.627165', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2730, '2024-01-21 22:22:01.783287', '2024-01-21 22:22:01.783287', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2731, '2024-01-21 22:22:04.001060', '2024-01-21 22:22:04.001060', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2732, '2024-01-21 22:22:04.286327', '2024-01-21 22:22:04.286327', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2733, '2024-01-21 22:22:05.406482', '2024-01-21 22:22:05.406482', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2734, '2024-01-21 22:23:30.464217', '2024-01-21 22:23:30.464217', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2735, '2024-01-21 22:23:30.725280', '2024-01-21 22:23:30.725280', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2736, '2024-01-21 22:23:32.994334', '2024-01-21 22:23:32.994334', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2737, '2024-01-21 22:23:33.269204', '2024-01-21 22:23:33.269204', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2738, '2024-01-21 22:24:07.618772', '2024-01-21 22:24:07.618772', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2739, '2024-01-21 22:24:07.775470', '2024-01-21 22:24:07.775470', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2740, '2024-01-21 22:24:10.065483', '2024-01-21 22:24:10.065483', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2741, '2024-01-21 22:24:10.361770', '2024-01-21 22:24:10.361770', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2742, '2024-01-21 22:24:11.234474', '2024-01-21 22:24:11.234474', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2743, '2024-01-21 22:24:16.469912', '2024-01-21 22:24:16.469912', NULL, '本机地址', '{\"commentID\": \"7\", \"answersList\": \"[{\\\"optionID\\\":1,\\\"answer\\\":1},{\\\"optionID\\\":2,\\\"answer\\\":[0,1]},{\\\"optionID\\\":3,\\\"answer\\\":0},{\\\"optionID\\\":4,\\\"answer\\\":\\\"12\\\"}]\"}', '127.0.0.1', '/app/user/student/submitAnswer');
INSERT INTO `base_sys_log` VALUES (2744, '2024-01-21 22:24:49.752870', '2024-01-21 22:24:49.752870', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2745, '2024-01-21 22:24:49.902811', '2024-01-21 22:24:49.902811', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2746, '2024-01-21 22:24:52.057947', '2024-01-21 22:24:52.057947', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2747, '2024-01-21 22:24:52.373974', '2024-01-21 22:24:52.373974', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2748, '2024-01-21 22:24:54.173058', '2024-01-21 22:24:54.173058', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2749, '2024-01-21 22:25:13.376220', '2024-01-21 22:25:13.376220', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2750, '2024-01-21 22:25:13.559343', '2024-01-21 22:25:13.559343', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2751, '2024-01-21 22:25:15.715837', '2024-01-21 22:25:15.715837', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2752, '2024-01-21 22:25:15.989945', '2024-01-21 22:25:15.989945', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2753, '2024-01-21 22:25:17.209691', '2024-01-21 22:25:17.209691', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2754, '2024-01-21 22:25:44.401249', '2024-01-21 22:25:44.401249', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2755, '2024-01-21 22:25:44.550986', '2024-01-21 22:25:44.550986', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2756, '2024-01-21 22:25:46.762998', '2024-01-21 22:25:46.762998', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2757, '2024-01-21 22:25:47.111284', '2024-01-21 22:25:47.111284', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2758, '2024-01-21 22:25:48.346076', '2024-01-21 22:25:48.346076', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2759, '2024-01-21 22:26:14.512615', '2024-01-21 22:26:14.512615', NULL, '本机地址', '{\"commentID\": \"7\", \"answersList\": \"[{\\\"optionID\\\":1,\\\"answer\\\":1},{\\\"optionID\\\":2,\\\"answer\\\":[0,1]},{\\\"optionID\\\":3,\\\"answer\\\":1},{\\\"optionID\\\":4,\\\"answer\\\":\\\"21\\\"}]\"}', '127.0.0.1', '/app/user/student/submitAnswer');
INSERT INTO `base_sys_log` VALUES (2760, '2024-01-21 22:26:27.102608', '2024-01-21 22:26:27.102608', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2761, '2024-01-21 22:26:27.247645', '2024-01-21 22:26:27.247645', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2762, '2024-01-21 22:26:37.281139', '2024-01-21 22:26:37.281139', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2763, '2024-01-21 22:26:37.467675', '2024-01-21 22:26:37.467675', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2764, '2024-01-21 22:26:38.349824', '2024-01-21 22:26:38.349824', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2765, '2024-01-21 22:26:45.574293', '2024-01-21 22:26:45.574293', NULL, '本机地址', '{\"commentID\": \"7\", \"answerList\": \"[{\\\"optionID\\\":1,\\\"answer\\\":0},{\\\"optionID\\\":2,\\\"answer\\\":[0,1]},{\\\"optionID\\\":3,\\\"answer\\\":0},{\\\"optionID\\\":4,\\\"answer\\\":\\\"321\\\"}]\"}', '127.0.0.1', '/app/user/student/submitAnswer');
INSERT INTO `base_sys_log` VALUES (2766, '2024-01-21 22:27:37.785969', '2024-01-21 22:27:37.785969', NULL, '本机地址', '{\"commentID\": \"7\", \"answerList\": \"[{\\\"optionID\\\":1,\\\"answer\\\":0},{\\\"optionID\\\":2,\\\"answer\\\":[0,1]},{\\\"optionID\\\":3,\\\"answer\\\":0},{\\\"optionID\\\":4,\\\"answer\\\":\\\"321\\\"}]\"}', '127.0.0.1', '/app/user/student/submitAnswer');
INSERT INTO `base_sys_log` VALUES (2767, '2024-01-21 22:29:21.040067', '2024-01-21 22:29:21.040067', NULL, '本机地址', '{\"commentID\": \"7\", \"answerList\": \"[{\\\"optionID\\\":1,\\\"answer\\\":0},{\\\"optionID\\\":2,\\\"answer\\\":[0,1]},{\\\"optionID\\\":3,\\\"answer\\\":0},{\\\"optionID\\\":4,\\\"answer\\\":\\\"321\\\"}]\"}', '127.0.0.1', '/app/user/student/submitAnswer');
INSERT INTO `base_sys_log` VALUES (2768, '2024-01-21 22:32:38.062154', '2024-01-21 22:32:38.062154', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2769, '2024-01-21 22:32:38.078461', '2024-01-21 22:32:38.078461', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2770, '2024-01-21 22:33:07.554431', '2024-01-21 22:33:07.554431', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2771, '2024-01-21 22:33:07.733886', '2024-01-21 22:33:07.733886', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2772, '2024-01-21 22:33:09.912639', '2024-01-21 22:33:09.912639', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2773, '2024-01-21 22:33:10.228574', '2024-01-21 22:33:10.228574', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2774, '2024-01-21 22:33:34.158427', '2024-01-21 22:33:34.158427', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2775, '2024-01-21 22:33:34.297511', '2024-01-21 22:33:34.297511', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2776, '2024-01-21 22:33:36.578592', '2024-01-21 22:33:36.578592', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2777, '2024-01-21 22:33:36.805777', '2024-01-21 22:33:36.805777', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2778, '2024-01-21 22:33:50.939836', '2024-01-21 22:33:50.939836', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2779, '2024-01-21 22:33:51.074837', '2024-01-21 22:33:51.074837', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2780, '2024-01-21 22:33:53.304800', '2024-01-21 22:33:53.304800', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2781, '2024-01-21 22:33:53.592772', '2024-01-21 22:33:53.592772', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2782, '2024-01-21 22:33:55.552701', '2024-01-21 22:33:55.552701', NULL, '本机地址', '{\"questionnaireID\": \"7\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (2783, '2024-01-21 22:34:52.461446', '2024-01-21 22:34:52.461446', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2784, '2024-01-21 22:34:52.621238', '2024-01-21 22:34:52.621238', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2785, '2024-01-21 22:34:54.815434', '2024-01-21 22:34:54.815434', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2786, '2024-01-21 22:34:55.180357', '2024-01-21 22:34:55.180357', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2787, '2024-01-21 22:35:00.575586', '2024-01-21 22:35:00.575586', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2788, '2024-01-21 22:35:00.718755', '2024-01-21 22:35:00.718755', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2789, '2024-01-21 22:35:03.940301', '2024-01-21 22:35:03.940301', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2790, '2024-01-21 22:35:04.070502', '2024-01-21 22:35:04.070502', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2791, '2024-01-21 22:35:04.924837', '2024-01-21 22:35:04.924837', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2792, '2024-01-21 22:35:07.318901', '2024-01-21 22:35:07.318901', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2793, '2024-01-21 22:35:10.476949', '2024-01-21 22:35:10.476949', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2794, '2024-01-21 22:35:15.300719', '2024-01-21 22:35:15.300719', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2795, '2024-01-21 22:40:41.366366', '2024-01-21 22:40:41.366366', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2796, '2024-01-21 22:40:44.460780', '2024-01-21 22:40:44.460780', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2797, '2024-01-21 22:40:55.157978', '2024-01-21 22:40:55.157978', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2798, '2024-01-21 22:41:25.721292', '2024-01-21 22:41:25.721292', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2799, '2024-01-21 22:41:27.231206', '2024-01-21 22:41:27.231206', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2800, '2024-01-21 22:42:39.219747', '2024-01-21 22:42:39.219747', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2801, '2024-01-21 22:42:54.872457', '2024-01-21 22:42:54.872457', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2802, '2024-01-21 22:43:29.842737', '2024-01-21 22:43:29.842737', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2803, '2024-01-21 22:52:05.781502', '2024-01-21 22:52:05.781502', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2804, '2024-01-21 22:55:09.572074', '2024-01-21 22:55:09.572074', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2805, '2024-01-21 22:55:09.740576', '2024-01-21 22:55:09.740576', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2806, '2024-01-21 22:55:11.548256', '2024-01-21 22:55:11.548256', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2807, '2024-01-21 22:55:12.496200', '2024-01-21 22:55:12.496200', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2808, '2024-01-21 22:56:42.143543', '2024-01-21 22:56:42.143543', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2809, '2024-01-21 22:56:42.328452', '2024-01-21 22:56:42.328452', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2810, '2024-01-21 22:56:44.327399', '2024-01-21 22:56:44.327399', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2811, '2024-01-21 22:56:44.630520', '2024-01-21 22:56:44.630520', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2812, '2024-01-21 22:56:49.424871', '2024-01-21 22:56:49.424871', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2813, '2024-01-21 22:56:51.174515', '2024-01-21 22:56:51.174515', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2814, '2024-01-21 22:56:52.617911', '2024-01-21 22:56:52.617911', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2815, '2024-01-21 23:00:12.433621', '2024-01-21 23:00:12.433621', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2816, '2024-01-21 23:00:13.540510', '2024-01-21 23:00:13.540510', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2817, '2024-01-21 23:00:14.631005', '2024-01-21 23:00:14.631005', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2818, '2024-01-21 23:03:44.070273', '2024-01-21 23:03:44.070273', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2819, '2024-01-21 23:03:44.232375', '2024-01-21 23:03:44.232375', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2820, '2024-01-21 23:03:46.472931', '2024-01-21 23:03:46.472931', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2821, '2024-01-21 23:03:48.515410', '2024-01-21 23:03:48.515410', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2822, '2024-01-21 23:03:49.763919', '2024-01-21 23:03:49.763919', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2823, '2024-01-21 23:04:03.798764', '2024-01-21 23:04:03.798764', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2824, '2024-01-21 23:04:03.934530', '2024-01-21 23:04:03.934530', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2825, '2024-01-21 23:04:06.101602', '2024-01-21 23:04:06.101602', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2826, '2024-01-21 23:04:09.150836', '2024-01-21 23:04:09.150836', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2827, '2024-01-21 23:04:11.575159', '2024-01-21 23:04:11.575159', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2828, '2024-01-21 23:04:38.414504', '2024-01-21 23:04:38.414504', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2829, '2024-01-21 23:04:38.571461', '2024-01-21 23:04:38.571461', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2830, '2024-01-21 23:04:40.777468', '2024-01-21 23:04:40.777468', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2831, '2024-01-21 23:04:42.593117', '2024-01-21 23:04:42.593117', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2832, '2024-01-21 23:04:43.530155', '2024-01-21 23:04:43.530155', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2833, '2024-01-21 23:04:57.271300', '2024-01-21 23:04:57.271300', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2834, '2024-01-21 23:05:05.636353', '2024-01-21 23:05:05.636353', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2835, '2024-01-21 23:05:10.332969', '2024-01-21 23:05:10.332969', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2836, '2024-01-21 23:05:10.570780', '2024-01-21 23:05:10.570780', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2837, '2024-01-21 23:05:18.214392', '2024-01-21 23:05:18.214392', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2838, '2024-01-21 23:05:21.905258', '2024-01-21 23:05:21.905258', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2839, '2024-01-21 23:05:22.852095', '2024-01-21 23:05:22.852095', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (2840, '2024-01-21 23:05:33.176945', '2024-01-21 23:05:33.176945', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2841, '2024-01-21 23:05:33.457846', '2024-01-21 23:05:33.457846', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2842, '2024-01-21 23:05:35.224010', '2024-01-21 23:05:35.224010', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2843, '2024-01-21 23:05:56.126647', '2024-01-21 23:05:56.126647', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2844, '2024-01-21 23:06:07.146298', '2024-01-21 23:06:07.146298', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2845, '2024-01-21 23:06:50.800558', '2024-01-21 23:06:50.800558', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2846, '2024-01-21 23:06:50.806704', '2024-01-21 23:06:50.806704', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2847, '2024-01-21 23:06:50.843619', '2024-01-21 23:06:50.843619', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2848, '2024-01-21 23:06:50.995321', '2024-01-21 23:06:50.995321', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2849, '2024-01-21 23:06:53.538051', '2024-01-21 23:06:53.538051', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2850, '2024-01-21 23:07:08.809708', '2024-01-21 23:07:08.809708', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2851, '2024-01-21 23:08:32.010358', '2024-01-21 23:08:32.010358', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2852, '2024-01-21 23:08:32.187167', '2024-01-21 23:08:32.187167', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2853, '2024-01-21 23:08:34.354818', '2024-01-21 23:08:34.354818', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2854, '2024-01-21 23:08:35.816984', '2024-01-21 23:08:35.816984', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2855, '2024-01-21 23:08:57.984139', '2024-01-21 23:08:57.984139', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2856, '2024-01-21 23:08:58.148860', '2024-01-21 23:08:58.148860', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2857, '2024-01-21 23:09:00.514322', '2024-01-21 23:09:00.514322', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2858, '2024-01-21 23:09:01.276677', '2024-01-21 23:09:01.276677', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2859, '2024-01-21 23:09:02.469220', '2024-01-21 23:09:02.469220', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2860, '2024-01-21 23:09:39.974324', '2024-01-21 23:09:39.974324', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2861, '2024-01-21 23:09:40.199432', '2024-01-21 23:09:40.199432', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2862, '2024-01-21 23:11:36.234902', '2024-01-21 23:11:36.234902', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2863, '2024-01-21 23:11:47.702937', '2024-01-21 23:11:47.702937', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2864, '2024-01-21 23:11:52.196228', '2024-01-21 23:11:52.196228', NULL, '本机地址', '{\"classIDs\": \"2\", \"collegeID\": \"big_data\", \"teacherName\": \"刘明江\", \"teacherTitle\": \"教授\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (2865, '2024-01-21 23:12:23.585677', '2024-01-21 23:12:23.585677', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2866, '2024-01-21 23:12:23.791683', '2024-01-21 23:12:23.791683', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2867, '2024-01-21 23:12:25.951566', '2024-01-21 23:12:25.951566', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2868, '2024-01-21 23:12:26.255874', '2024-01-21 23:12:26.255874', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2869, '2024-01-21 23:12:29.751766', '2024-01-21 23:12:29.751766', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2870, '2024-01-21 23:12:29.951792', '2024-01-21 23:12:29.951792', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2871, '2024-01-21 23:13:55.795926', '2024-01-21 23:13:55.795926', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2872, '2024-01-21 23:13:56.013523', '2024-01-21 23:13:56.013523', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2873, '2024-01-21 23:14:20.046958', '2024-01-21 23:14:20.046958', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2874, '2024-01-21 23:14:20.292546', '2024-01-21 23:14:20.292546', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2875, '2024-01-21 23:14:39.020537', '2024-01-21 23:14:39.020537', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2876, '2024-01-21 23:14:39.330519', '2024-01-21 23:14:39.330519', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2877, '2024-01-21 23:16:08.997201', '2024-01-21 23:16:08.997201', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2878, '2024-01-21 23:16:09.252475', '2024-01-21 23:16:09.252475', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2879, '2024-01-21 23:16:57.097132', '2024-01-21 23:16:57.097132', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2880, '2024-01-21 23:17:01.156513', '2024-01-21 23:17:01.156513', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2881, '2024-01-21 23:18:36.755586', '2024-01-21 23:18:36.755586', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2882, '2024-01-21 23:18:40.380602', '2024-01-21 23:18:40.380602', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2883, '2024-01-21 23:18:44.843740', '2024-01-21 23:18:44.843740', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2884, '2024-01-21 23:19:14.017204', '2024-01-21 23:19:14.017204', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2885, '2024-01-21 23:23:22.362637', '2024-01-21 23:23:22.362637', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2886, '2024-01-21 23:23:22.823490', '2024-01-21 23:23:22.823490', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (2887, '2024-01-21 23:23:23.115601', '2024-01-21 23:23:23.115601', NULL, '本机地址', '{\"color\": \"#2c3142\", \"width\": \"150\", \"height\": \"45\"}', '127.0.0.1', '/admin/base/open/captcha');
INSERT INTO `base_sys_log` VALUES (2888, '2024-01-21 23:23:29.122821', '2024-01-21 23:23:29.122821', NULL, '本机地址', '{\"password\": \"123456\", \"username\": \"admin\", \"captchaId\": \"03e3a590-b871-11ee-a949-496fd72870a0\", \"verifyCode\": \"1023\"}', '127.0.0.1', '/admin/base/open/login');
INSERT INTO `base_sys_log` VALUES (2889, '2024-01-21 23:23:29.177873', '2024-01-21 23:23:29.177873', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (2890, '2024-01-21 23:23:29.186776', '2024-01-21 23:23:29.186776', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2891, '2024-01-21 23:23:29.191609', '2024-01-21 23:23:29.191609', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (2892, '2024-01-21 23:23:29.492049', '2024-01-21 23:23:29.492049', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (2893, '2024-01-21 23:23:52.055975', '2024-01-21 23:23:52.055975', 1, '本机地址', '{\"gradeName\": 2022, \"majorName\": \"计算机科学与技术1班\", \"collegeName\": \"math_computer\"}', '127.0.0.1', '/admin/user/_class/add');
INSERT INTO `base_sys_log` VALUES (2894, '2024-01-21 23:23:52.094866', '2024-01-21 23:23:52.094866', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (2895, '2024-01-21 23:23:54.013308', '2024-01-21 23:23:54.013308', 1, '本机地址', '{\"id\": \"2\"}', '127.0.0.1', '/admin/user/_class/info');
INSERT INTO `base_sys_log` VALUES (2896, '2024-01-21 23:23:58.683551', '2024-01-21 23:23:58.683551', 1, '本机地址', '{\"id\": 2, \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据1班\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-18 22:13:08\", \"collegeName\": \"big_data\"}', '127.0.0.1', '/admin/user/_class/update');
INSERT INTO `base_sys_log` VALUES (2897, '2024-01-21 23:23:58.722667', '2024-01-21 23:23:58.722667', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (2898, '2024-01-21 23:24:06.357212', '2024-01-21 23:24:06.357212', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2899, '2024-01-21 23:26:55.508799', '2024-01-21 23:26:55.508799', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2900, '2024-01-21 23:26:55.722710', '2024-01-21 23:26:55.722710', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2901, '2024-01-21 23:26:59.654960', '2024-01-21 23:26:59.654960', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2902, '2024-01-21 23:26:59.909836', '2024-01-21 23:26:59.909836', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2903, '2024-01-21 23:27:02.448989', '2024-01-21 23:27:02.448989', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2904, '2024-01-21 23:27:12.309513', '2024-01-21 23:27:12.309513', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getClass');
INSERT INTO `base_sys_log` VALUES (2905, '2024-01-21 23:27:29.615555', '2024-01-21 23:27:29.615555', NULL, '本机地址', '{\"classIDs\": \"2,3\", \"collegeID\": \"big_data\", \"teacherName\": \"刘明江\", \"teacherTitle\": \"教授\"}', '127.0.0.1', '/app/user/teacher/bindTeacher');
INSERT INTO `base_sys_log` VALUES (2906, '2024-01-21 23:27:33.791381', '2024-01-21 23:27:33.791381', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2907, '2024-01-21 23:29:54.824020', '2024-01-21 23:29:54.824020', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2908, '2024-01-21 23:29:55.022327', '2024-01-21 23:29:55.022327', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2909, '2024-01-21 23:29:57.366611', '2024-01-21 23:29:57.366611', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2910, '2024-01-21 23:29:57.652524', '2024-01-21 23:29:57.652524', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2911, '2024-01-21 23:35:04.979152', '2024-01-21 23:35:04.979152', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2912, '2024-01-21 23:35:05.247271', '2024-01-21 23:35:05.247271', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2913, '2024-01-21 23:35:48.815793', '2024-01-21 23:35:48.815793', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2914, '2024-01-21 23:35:49.091456', '2024-01-21 23:35:49.091456', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2915, '2024-01-21 23:36:58.904125', '2024-01-21 23:36:58.904125', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2916, '2024-01-21 23:36:59.202423', '2024-01-21 23:36:59.202423', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2917, '2024-01-21 23:37:35.594931', '2024-01-21 23:37:35.594931', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2918, '2024-01-21 23:37:35.747220', '2024-01-21 23:37:35.747220', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2919, '2024-01-21 23:37:38.117091', '2024-01-21 23:37:38.117091', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2920, '2024-01-21 23:37:38.425981', '2024-01-21 23:37:38.425981', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2921, '2024-01-21 23:38:53.816440', '2024-01-21 23:38:53.816440', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2922, '2024-01-21 23:38:53.967174', '2024-01-21 23:38:53.967174', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2923, '2024-01-21 23:38:56.145801', '2024-01-21 23:38:56.145801', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2924, '2024-01-21 23:38:56.465154', '2024-01-21 23:38:56.465154', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2925, '2024-01-21 23:40:09.193833', '2024-01-21 23:40:09.193833', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2926, '2024-01-21 23:40:09.341588', '2024-01-21 23:40:09.341588', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2927, '2024-01-21 23:40:11.590246', '2024-01-21 23:40:11.590246', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2928, '2024-01-21 23:40:12.113870', '2024-01-21 23:40:12.113870', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2929, '2024-01-21 23:40:13.705934', '2024-01-21 23:40:13.705934', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2930, '2024-01-21 23:41:59.175652', '2024-01-21 23:41:59.175652', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2931, '2024-01-21 23:41:59.184542', '2024-01-21 23:41:59.184542', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2932, '2024-01-21 23:41:59.355210', '2024-01-21 23:41:59.355210', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2933, '2024-01-21 23:42:00.567936', '2024-01-21 23:42:00.567936', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2934, '2024-01-21 23:42:01.856406', '2024-01-21 23:42:01.856406', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2935, '2024-01-21 23:42:02.317814', '2024-01-21 23:42:02.317814', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2936, '2024-01-21 23:42:04.674458', '2024-01-21 23:42:04.674458', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2937, '2024-01-21 23:42:07.233491', '2024-01-21 23:42:07.233491', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2938, '2024-01-21 23:42:10.635082', '2024-01-21 23:42:10.635082', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2939, '2024-01-21 23:43:13.795320', '2024-01-21 23:43:13.795320', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2940, '2024-01-21 23:43:13.946767', '2024-01-21 23:43:13.946767', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2941, '2024-01-21 23:43:17.570225', '2024-01-21 23:43:17.570225', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2942, '2024-01-21 23:43:17.784753', '2024-01-21 23:43:17.784753', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2943, '2024-01-21 23:43:35.019616', '2024-01-21 23:43:35.019616', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2944, '2024-01-21 23:43:41.616571', '2024-01-21 23:43:41.616571', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2945, '2024-01-21 23:46:18.894231', '2024-01-21 23:46:18.894231', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2946, '2024-01-21 23:46:22.712215', '2024-01-21 23:46:22.712215', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2947, '2024-01-21 23:46:23.050651', '2024-01-21 23:46:23.050651', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2948, '2024-01-21 23:46:24.706193', '2024-01-21 23:46:24.706193', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2949, '2024-01-21 23:46:30.930634', '2024-01-21 23:46:30.930634', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2950, '2024-01-21 23:47:13.187060', '2024-01-21 23:47:13.187060', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2951, '2024-01-21 23:47:52.007332', '2024-01-21 23:47:52.007332', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2952, '2024-01-21 23:48:04.279685', '2024-01-21 23:48:04.279685', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2953, '2024-01-21 23:48:04.428275', '2024-01-21 23:48:04.428275', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2954, '2024-01-21 23:48:06.660669', '2024-01-21 23:48:06.660669', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2955, '2024-01-21 23:48:07.062753', '2024-01-21 23:48:07.062753', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2956, '2024-01-21 23:48:09.678949', '2024-01-21 23:48:09.678949', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2957, '2024-01-21 23:48:11.333248', '2024-01-21 23:48:11.333248', NULL, '本机地址', '{\"classID\": \"3\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2958, '2024-01-21 23:48:15.610904', '2024-01-21 23:48:15.610904', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2959, '2024-01-21 23:48:20.895322', '2024-01-21 23:48:20.895322', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2960, '2024-01-21 23:48:23.580808', '2024-01-21 23:48:23.580808', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (2961, '2024-01-21 23:48:23.722358', '2024-01-21 23:48:23.722358', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (2962, '2024-01-21 23:48:25.028475', '2024-01-21 23:48:25.028475', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2963, '2024-01-21 23:48:30.372266', '2024-01-21 23:48:30.372266', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (2964, '2024-01-21 23:48:33.426408', '2024-01-21 23:48:33.426408', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (2965, '2024-01-21 23:48:37.579322', '2024-01-21 23:48:37.579322', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2966, '2024-01-21 23:48:39.081763', '2024-01-21 23:48:39.081763', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2967, '2024-01-21 23:48:43.182646', '2024-01-21 23:48:43.182646', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2968, '2024-01-21 23:48:48.161031', '2024-01-21 23:48:48.161031', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2969, '2024-01-21 23:49:43.032727', '2024-01-21 23:49:43.032727', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2970, '2024-01-21 23:49:47.608746', '2024-01-21 23:49:47.608746', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"userID\": \"1\", \"classID\": \"2\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据1班\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-21 23:23:58\", \"collegeName\": \"大数据与智能工程学院\", \"studentCount\": 1}, {\"id\": 3, \"grade\": \"2022级\", \"userID\": \"1\", \"classID\": \"3\", \"classNum\": \"0\", \"gradeName\": \"2022\", \"majorName\": \"计算机科学与技术1班\", \"createTime\": \"2024-01-21 23:23:52\", \"updateTime\": \"2024-01-21 23:23:52\", \"collegeName\": \"数学与计算机学院\", \"studentCount\": 0}], \"title\": \"测试问卷111\", \"endTime\": \"2024-01-21\", \"comments\": [{\"type\": 0, \"title\": \"这是单选题\", \"active\": -1, \"options\": [\"号的\", \"不好\"]}, {\"type\": 1, \"title\": \"43\", \"active\": [], \"options\": [\"54\", \"543\"]}, {\"type\": 2, \"title\": \"正确吗\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"减速你的问题\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2971, '2024-01-21 23:51:14.227146', '2024-01-21 23:51:14.227146', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"userID\": \"1\", \"classID\": \"2\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据1班\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-21 23:23:58\", \"collegeName\": \"大数据与智能工程学院\", \"studentCount\": 1}, {\"id\": 3, \"grade\": \"2022级\", \"userID\": \"1\", \"classID\": \"3\", \"classNum\": \"0\", \"gradeName\": \"2022\", \"majorName\": \"计算机科学与技术1班\", \"createTime\": \"2024-01-21 23:23:52\", \"updateTime\": \"2024-01-21 23:23:52\", \"collegeName\": \"数学与计算机学院\", \"studentCount\": 0}], \"title\": \"测试问卷111\", \"endTime\": \"2024-01-21\", \"comments\": [{\"type\": 0, \"title\": \"这是单选题\", \"active\": -1, \"options\": [\"号的\", \"不好\"]}, {\"type\": 1, \"title\": \"43\", \"active\": [], \"options\": [\"54\", \"543\"]}, {\"type\": 2, \"title\": \"正确吗\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"减速你的问题\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2972, '2024-01-21 23:51:55.081703', '2024-01-21 23:51:55.081703', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"userID\": \"1\", \"classID\": \"2\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据1班\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-21 23:23:58\", \"collegeName\": \"大数据与智能工程学院\", \"studentCount\": 1}, {\"id\": 3, \"grade\": \"2022级\", \"userID\": \"1\", \"classID\": \"3\", \"classNum\": \"0\", \"gradeName\": \"2022\", \"majorName\": \"计算机科学与技术1班\", \"createTime\": \"2024-01-21 23:23:52\", \"updateTime\": \"2024-01-21 23:23:52\", \"collegeName\": \"数学与计算机学院\", \"studentCount\": 0}], \"title\": \"测试问卷111\", \"endTime\": \"2024-01-21\", \"comments\": [{\"type\": 0, \"title\": \"这是单选题\", \"active\": -1, \"options\": [\"号的\", \"不好\"]}, {\"type\": 1, \"title\": \"43\", \"active\": [], \"options\": [\"54\", \"543\"]}, {\"type\": 2, \"title\": \"正确吗\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"减速你的问题\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2973, '2024-01-21 23:56:03.374476', '2024-01-21 23:56:03.374476', NULL, '本机地址', '{\"class\": [{\"id\": 2, \"grade\": \"2021级\", \"userID\": \"1\", \"classID\": \"2\", \"classNum\": \"0\", \"gradeName\": \"2021\", \"majorName\": \"大数据1班\", \"createTime\": \"2024-01-14 22:58:31\", \"updateTime\": \"2024-01-21 23:23:58\", \"collegeName\": \"大数据与智能工程学院\", \"studentCount\": 1}, {\"id\": 3, \"grade\": \"2022级\", \"userID\": \"1\", \"classID\": \"3\", \"classNum\": \"0\", \"gradeName\": \"2022\", \"majorName\": \"计算机科学与技术1班\", \"createTime\": \"2024-01-21 23:23:52\", \"updateTime\": \"2024-01-21 23:23:52\", \"collegeName\": \"数学与计算机学院\", \"studentCount\": 0}], \"title\": \"测试问卷111\", \"endTime\": \"2024-01-21\", \"comments\": [{\"type\": 0, \"title\": \"这是单选题\", \"active\": -1, \"options\": [\"号的\", \"不好\"]}, {\"type\": 1, \"title\": \"43\", \"active\": [], \"options\": [\"54\", \"543\"]}, {\"type\": 2, \"title\": \"正确吗\", \"active\": -1, \"options\": [\"×\", \"√\"]}, {\"type\": 3, \"title\": \"减速你的问题\", \"active\": -1, \"options\": [\"\", \"\"]}], \"anonymous\": true, \"collegeID\": \"\"}', '127.0.0.1', '/app/user/teacher/publish');
INSERT INTO `base_sys_log` VALUES (2974, '2024-01-21 23:56:27.478123', '2024-01-21 23:56:27.478123', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2975, '2024-01-21 23:57:42.009203', '2024-01-21 23:57:42.009203', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2976, '2024-01-21 23:59:01.283261', '2024-01-21 23:59:01.283261', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2977, '2024-01-22 00:00:44.748668', '2024-01-22 00:00:44.748668', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2978, '2024-01-22 00:01:53.700190', '2024-01-22 00:01:53.700190', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2979, '2024-01-22 00:01:53.870838', '2024-01-22 00:01:53.870838', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2980, '2024-01-22 00:01:56.247663', '2024-01-22 00:01:56.247663', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2981, '2024-01-22 00:01:56.513331', '2024-01-22 00:01:56.513331', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2982, '2024-01-22 00:02:00.633741', '2024-01-22 00:02:00.633741', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2983, '2024-01-22 00:02:02.227616', '2024-01-22 00:02:02.227616', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2984, '2024-01-22 00:02:56.606957', '2024-01-22 00:02:56.606957', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2985, '2024-01-22 00:02:56.865334', '2024-01-22 00:02:56.865334', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2986, '2024-01-22 00:03:18.202150', '2024-01-22 00:03:18.202150', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2987, '2024-01-22 00:03:18.367574', '2024-01-22 00:03:18.367574', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2988, '2024-01-22 00:03:20.978902', '2024-01-22 00:03:20.978902', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2989, '2024-01-22 00:03:21.369038', '2024-01-22 00:03:21.369038', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2990, '2024-01-22 00:03:26.393495', '2024-01-22 00:03:26.393495', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2991, '2024-01-22 00:03:26.545585', '2024-01-22 00:03:26.545585', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2992, '2024-01-22 00:03:28.900330', '2024-01-22 00:03:28.900330', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2993, '2024-01-22 00:03:29.359969', '2024-01-22 00:03:29.359969', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (2994, '2024-01-22 00:03:31.495319', '2024-01-22 00:03:31.495319', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (2995, '2024-01-22 00:03:32.639905', '2024-01-22 00:03:32.639905', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (2996, '2024-01-22 00:04:09.064170', '2024-01-22 00:04:09.064170', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2997, '2024-01-22 00:04:09.263288', '2024-01-22 00:04:09.263288', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (2998, '2024-01-22 00:04:11.629185', '2024-01-22 00:04:11.629185', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (2999, '2024-01-22 00:04:12.030939', '2024-01-22 00:04:12.030939', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3000, '2024-01-22 00:04:14.676202', '2024-01-22 00:04:14.676202', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3001, '2024-01-22 00:04:16.413338', '2024-01-22 00:04:16.413338', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3002, '2024-01-22 00:04:19.474083', '2024-01-22 00:04:19.474083', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3003, '2024-01-22 00:04:41.201770', '2024-01-22 00:04:41.201770', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3004, '2024-01-22 00:04:41.355531', '2024-01-22 00:04:41.355531', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3005, '2024-01-22 00:04:43.830422', '2024-01-22 00:04:43.830422', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3006, '2024-01-22 00:04:44.275563', '2024-01-22 00:04:44.275563', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3007, '2024-01-22 00:04:46.117043', '2024-01-22 00:04:46.117043', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3008, '2024-01-22 00:04:47.566181', '2024-01-22 00:04:47.566181', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3009, '2024-01-22 00:04:53.259470', '2024-01-22 00:04:53.259470', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3010, '2024-01-22 00:04:53.657841', '2024-01-22 00:04:53.657841', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3011, '2024-01-22 00:05:07.481929', '2024-01-22 00:05:07.481929', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3012, '2024-01-22 00:05:08.142370', '2024-01-22 00:05:08.142370', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3013, '2024-01-22 00:05:10.574405', '2024-01-22 00:05:10.574405', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3014, '2024-01-22 00:05:10.819958', '2024-01-22 00:05:10.819958', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3015, '2024-01-22 00:05:14.215004', '2024-01-22 00:05:14.215004', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3016, '2024-01-22 00:05:14.710544', '2024-01-22 00:05:14.710544', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3017, '2024-01-22 00:05:16.784490', '2024-01-22 00:05:16.784490', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3018, '2024-01-22 00:05:17.032019', '2024-01-22 00:05:17.032019', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3019, '2024-01-22 00:05:57.914070', '2024-01-22 00:05:57.914070', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3020, '2024-01-22 00:05:58.634733', '2024-01-22 00:05:58.634733', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3021, '2024-01-22 00:06:00.938036', '2024-01-22 00:06:00.938036', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3022, '2024-01-22 00:06:01.167429', '2024-01-22 00:06:01.167429', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3023, '2024-01-22 00:06:32.681344', '2024-01-22 00:06:32.681344', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3024, '2024-01-22 00:06:33.259395', '2024-01-22 00:06:33.259395', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3025, '2024-01-22 00:06:42.504638', '2024-01-22 00:06:42.504638', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3026, '2024-01-22 00:06:42.651378', '2024-01-22 00:06:42.651378', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3027, '2024-01-22 00:06:44.741898', '2024-01-22 00:06:44.741898', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3028, '2024-01-22 00:06:45.072912', '2024-01-22 00:06:45.072912', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3029, '2024-01-22 00:07:10.288427', '2024-01-22 00:07:10.288427', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3030, '2024-01-22 00:07:10.543672', '2024-01-22 00:07:10.543672', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3031, '2024-01-22 00:07:12.705378', '2024-01-22 00:07:12.705378', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3032, '2024-01-22 00:07:13.122545', '2024-01-22 00:07:13.122545', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3033, '2024-01-22 00:07:40.823810', '2024-01-22 00:07:40.823810', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3034, '2024-01-22 00:07:40.969716', '2024-01-22 00:07:40.969716', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3035, '2024-01-22 00:07:43.148312', '2024-01-22 00:07:43.148312', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3036, '2024-01-22 00:07:43.371411', '2024-01-22 00:07:43.371411', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (3037, '2024-01-22 00:07:43.469916', '2024-01-22 00:07:43.469916', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (3038, '2024-01-22 00:07:43.521947', '2024-01-22 00:07:43.521947', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3039, '2024-01-22 00:07:43.729082', '2024-01-22 00:07:43.729082', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3040, '2024-01-22 00:07:49.273373', '2024-01-22 00:07:49.273373', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3041, '2024-01-22 00:07:49.407768', '2024-01-22 00:07:49.407768', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3042, '2024-01-22 00:07:51.631971', '2024-01-22 00:07:51.631971', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3043, '2024-01-22 00:07:52.013078', '2024-01-22 00:07:52.013078', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3044, '2024-01-22 00:08:14.545496', '2024-01-22 00:08:14.545496', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3045, '2024-01-22 00:08:14.722717', '2024-01-22 00:08:14.722717', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3046, '2024-01-22 00:08:17.027721', '2024-01-22 00:08:17.027721', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3047, '2024-01-22 00:08:17.398829', '2024-01-22 00:08:17.398829', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3048, '2024-01-22 00:08:39.665306', '2024-01-22 00:08:39.665306', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3049, '2024-01-22 00:08:39.816472', '2024-01-22 00:08:39.816472', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3050, '2024-01-22 00:08:42.208517', '2024-01-22 00:08:42.208517', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3051, '2024-01-22 00:08:42.677254', '2024-01-22 00:08:42.677254', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3052, '2024-01-22 00:08:43.485195', '2024-01-22 00:08:43.485195', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3053, '2024-01-22 00:08:43.656329', '2024-01-22 00:08:43.656329', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3054, '2024-01-22 00:08:45.832615', '2024-01-22 00:08:45.832615', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3055, '2024-01-22 00:08:46.474225', '2024-01-22 00:08:46.474225', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3056, '2024-01-22 00:08:54.535593', '2024-01-22 00:08:54.535593', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3057, '2024-01-22 00:08:54.688772', '2024-01-22 00:08:54.688772', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3058, '2024-01-22 00:09:00.254849', '2024-01-22 00:09:00.254849', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3059, '2024-01-22 00:09:00.412196', '2024-01-22 00:09:00.412196', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3060, '2024-01-22 00:09:02.646093', '2024-01-22 00:09:02.646093', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3061, '2024-01-22 00:09:02.970421', '2024-01-22 00:09:02.970421', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3062, '2024-01-22 00:09:03.100465', '2024-01-22 00:09:03.100465', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3063, '2024-01-22 00:09:03.166076', '2024-01-22 00:09:03.166076', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3064, '2024-01-22 00:09:32.942526', '2024-01-22 00:09:32.942526', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3065, '2024-01-22 00:09:34.383616', '2024-01-22 00:09:34.383616', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3066, '2024-01-22 00:09:39.979238', '2024-01-22 00:09:39.979238', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3067, '2024-01-22 00:09:40.948162', '2024-01-22 00:09:40.948162', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (3068, '2024-01-22 00:09:42.894088', '2024-01-22 00:09:42.894088', NULL, '本机地址', '{\"classID\": \"3\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (3069, '2024-01-22 00:09:49.474726', '2024-01-22 00:09:49.474726', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3070, '2024-01-22 00:09:52.988806', '2024-01-22 00:09:52.988806', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3071, '2024-01-22 00:09:54.137815', '2024-01-22 00:09:54.137815', NULL, '本机地址', '{\"classID\": \"3\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (3072, '2024-01-22 00:10:02.569279', '2024-01-22 00:10:02.569279', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3073, '2024-01-22 00:10:03.277312', '2024-01-22 00:10:03.277312', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (3074, '2024-01-22 00:10:06.226726', '2024-01-22 00:10:06.226726', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3075, '2024-01-22 00:10:20.243846', '2024-01-22 00:10:20.243846', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3076, '2024-01-22 00:10:20.424264', '2024-01-22 00:10:20.424264', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3077, '2024-01-22 00:10:22.821482', '2024-01-22 00:10:22.821482', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3078, '2024-01-22 00:10:23.063482', '2024-01-22 00:10:23.063482', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3079, '2024-01-22 00:10:38.114439', '2024-01-22 00:10:38.114439', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3080, '2024-01-22 00:10:38.265327', '2024-01-22 00:10:38.265327', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3081, '2024-01-22 00:10:40.671201', '2024-01-22 00:10:40.671201', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3082, '2024-01-22 00:10:40.928367', '2024-01-22 00:10:40.928367', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3083, '2024-01-22 00:10:48.384679', '2024-01-22 00:10:48.384679', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3084, '2024-01-22 00:10:48.560446', '2024-01-22 00:10:48.560446', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3085, '2024-01-22 00:10:50.800101', '2024-01-22 00:10:50.800101', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3086, '2024-01-22 00:10:51.222958', '2024-01-22 00:10:51.222958', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3087, '2024-01-22 00:10:52.894229', '2024-01-22 00:10:52.894229', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3088, '2024-01-22 00:10:53.028876', '2024-01-22 00:10:53.028876', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3089, '2024-01-22 00:10:55.184377', '2024-01-22 00:10:55.184377', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3090, '2024-01-22 00:10:55.593341', '2024-01-22 00:10:55.593341', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3091, '2024-01-22 00:12:39.309114', '2024-01-22 00:12:39.309114', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3092, '2024-01-22 00:12:39.315035', '2024-01-22 00:12:39.315035', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3093, '2024-01-22 00:12:39.508687', '2024-01-22 00:12:39.508687', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3094, '2024-01-22 00:12:41.926007', '2024-01-22 00:12:41.926007', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3095, '2024-01-22 00:12:42.404665', '2024-01-22 00:12:42.404665', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3096, '2024-01-22 00:12:48.932987', '2024-01-22 00:12:48.932987', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3097, '2024-01-22 00:12:49.099114', '2024-01-22 00:12:49.099114', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3098, '2024-01-22 00:12:51.426083', '2024-01-22 00:12:51.426083', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3099, '2024-01-22 00:12:51.859192', '2024-01-22 00:12:51.859192', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3100, '2024-01-22 00:12:53.352413', '2024-01-22 00:12:53.352413', NULL, '本机地址', '{\"questionnaireID\": \"8\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (3101, '2024-01-22 00:13:08.583552', '2024-01-22 00:13:08.583552', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3102, '2024-01-22 00:13:08.756079', '2024-01-22 00:13:08.756079', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3103, '2024-01-22 00:13:10.948690', '2024-01-22 00:13:10.948690', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3104, '2024-01-22 00:13:11.475771', '2024-01-22 00:13:11.475771', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3105, '2024-01-22 00:30:51.202273', '2024-01-22 00:30:51.202273', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3106, '2024-01-22 00:30:51.391045', '2024-01-22 00:30:51.391045', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3107, '2024-01-22 00:30:53.783318', '2024-01-22 00:30:53.783318', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3108, '2024-01-22 00:30:54.181738', '2024-01-22 00:30:54.181738', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3109, '2024-01-22 00:31:15.752771', '2024-01-22 00:31:15.752771', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3110, '2024-01-22 00:31:15.900485', '2024-01-22 00:31:15.900485', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3111, '2024-01-22 00:31:18.086372', '2024-01-22 00:31:18.086372', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3112, '2024-01-22 00:31:18.756996', '2024-01-22 00:31:18.756996', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3113, '2024-01-22 00:32:32.918171', '2024-01-22 00:32:32.918171', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3114, '2024-01-22 00:32:33.087708', '2024-01-22 00:32:33.087708', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3115, '2024-01-22 00:32:35.603009', '2024-01-22 00:32:35.603009', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3116, '2024-01-22 00:32:35.893265', '2024-01-22 00:32:35.893265', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3117, '2024-01-22 00:32:38.164743', '2024-01-22 00:32:38.164743', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3118, '2024-01-22 00:35:01.167859', '2024-01-22 00:35:01.167859', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3119, '2024-01-22 00:36:29.407019', '2024-01-22 00:36:29.407019', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3120, '2024-01-22 00:37:03.245707', '2024-01-22 00:37:03.245707', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3121, '2024-01-22 00:37:19.024839', '2024-01-22 00:37:19.024839', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (3122, '2024-01-22 00:37:19.228398', '2024-01-22 00:37:19.228398', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (3123, '2024-01-22 00:37:20.981368', '2024-01-22 00:37:20.981368', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3124, '2024-01-22 00:38:22.714886', '2024-01-22 00:38:22.714886', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3125, '2024-01-22 00:38:32.101848', '2024-01-22 00:38:32.101848', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3126, '2024-01-22 00:38:55.311476', '2024-01-22 00:38:55.311476', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3127, '2024-01-22 00:39:01.670895', '2024-01-22 00:39:01.670895', NULL, '本机地址', '{\"questionnaireID\": \"8\"}', '127.0.0.1', '/app/user/student/getQuestionnaireDetail');
INSERT INTO `base_sys_log` VALUES (3128, '2024-01-22 00:39:08.189300', '2024-01-22 00:39:08.189300', NULL, '本机地址', '{\"commentID\": \"8\", \"answerList\": \"[{\\\"optionID\\\":5,\\\"answer\\\":0},{\\\"optionID\\\":7,\\\"answer\\\":[0,1]},{\\\"optionID\\\":9,\\\"answer\\\":0},{\\\"optionID\\\":11,\\\"answer\\\":\\\"haode\\\"}]\"}', '127.0.0.1', '/app/user/student/submitAnswer');
INSERT INTO `base_sys_log` VALUES (3129, '2024-01-22 00:40:01.779459', '2024-01-22 00:40:01.779459', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3130, '2024-01-22 00:40:01.991221', '2024-01-22 00:40:01.991221', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3131, '2024-01-22 00:40:04.492135', '2024-01-22 00:40:04.492135', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3132, '2024-01-22 00:40:04.919166', '2024-01-22 00:40:04.919166', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3133, '2024-01-22 00:40:09.618413', '2024-01-22 00:40:09.618413', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3134, '2024-01-22 00:41:40.694735', '2024-01-22 00:41:40.694735', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3135, '2024-01-22 00:43:15.229813', '2024-01-22 00:43:15.229813', NULL, '本机地址', '{\"commentID\": \"9\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3136, '2024-01-22 00:43:29.843450', '2024-01-22 00:43:29.843450', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3137, '2024-01-22 00:43:38.335593', '2024-01-22 00:43:38.335593', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (3138, '2024-01-22 00:43:38.536540', '2024-01-22 00:43:38.536540', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (3139, '2024-01-22 00:44:55.804280', '2024-01-22 00:44:55.804280', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3140, '2024-01-22 00:45:00.132350', '2024-01-22 00:45:00.132350', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3141, '2024-01-22 00:45:01.183293', '2024-01-22 00:45:01.183293', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3142, '2024-01-22 00:45:02.333896', '2024-01-22 00:45:02.333896', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3143, '2024-01-22 00:54:58.074196', '2024-01-22 00:54:58.074196', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3144, '2024-01-22 00:58:19.354867', '2024-01-22 00:58:19.354867', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3145, '2024-01-22 01:00:15.793876', '2024-01-22 01:00:15.793876', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3146, '2024-01-22 01:00:37.658392', '2024-01-22 01:00:37.658392', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3147, '2024-01-22 10:18:51.666699', '2024-01-22 10:18:51.666699', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3148, '2024-01-22 10:18:51.764604', '2024-01-22 10:18:51.764604', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3149, '2024-01-22 10:18:54.746975', '2024-01-22 10:18:54.746975', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3150, '2024-01-23 00:33:17.991670', '2024-01-23 00:33:17.991670', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3151, '2024-01-23 19:54:44.536709', '2024-01-23 19:54:44.536709', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3152, '2024-01-23 19:55:08.547810', '2024-01-23 19:55:08.547810', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsImlkIjoxLCJpYXQiOjE3MDU4NDY4NzYsImV4cCI6MTcwODQzODg3Nn0.ZBPRzzcHfc9E6cvxjafzKkY3RmvrGduYtu8Htm1HbOY\"}', '127.0.0.1', '/app/user/login/refreshToken');
INSERT INTO `base_sys_log` VALUES (3153, '2024-01-23 19:55:08.996907', '2024-01-23 19:55:08.996907', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3154, '2024-01-23 19:55:09.111395', '2024-01-23 19:55:09.111395', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3155, '2024-01-23 19:55:15.849519', '2024-01-23 19:55:15.849519', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3156, '2024-01-23 19:56:09.021413', '2024-01-23 19:56:09.021413', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3157, '2024-01-23 19:56:12.138493', '2024-01-23 19:56:12.138493', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3158, '2024-01-23 19:56:44.022491', '2024-01-23 19:56:44.022491', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3159, '2024-01-23 19:56:46.521963', '2024-01-23 19:56:46.521963', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3160, '2024-01-23 19:56:46.842470', '2024-01-23 19:56:46.842470', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3161, '2024-01-23 19:56:48.405849', '2024-01-23 19:56:48.405849', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3162, '2024-01-23 19:58:43.541871', '2024-01-23 19:58:43.541871', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3163, '2024-01-23 19:58:44.737452', '2024-01-23 19:58:44.737452', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3164, '2024-01-23 19:58:46.209109', '2024-01-23 19:58:46.209109', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3165, '2024-01-23 19:58:46.529599', '2024-01-23 19:58:46.529599', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3166, '2024-01-23 19:59:11.163798', '2024-01-23 19:59:11.163798', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3167, '2024-01-23 19:59:13.684934', '2024-01-23 19:59:13.684934', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3168, '2024-01-23 19:59:14.030683', '2024-01-23 19:59:14.030683', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3169, '2024-01-23 19:59:14.739926', '2024-01-23 19:59:14.739926', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3170, '2024-01-23 20:01:58.265425', '2024-01-23 20:01:58.265425', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3171, '2024-01-23 20:02:00.560798', '2024-01-23 20:02:00.560798', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3172, '2024-01-23 20:02:01.010331', '2024-01-23 20:02:01.010331', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3173, '2024-01-23 20:02:17.809118', '2024-01-23 20:02:17.809118', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3174, '2024-01-23 20:02:20.203810', '2024-01-23 20:02:20.203810', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3175, '2024-01-23 20:02:20.475648', '2024-01-23 20:02:20.475648', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3176, '2024-01-23 20:02:21.824983', '2024-01-23 20:02:21.824983', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3177, '2024-01-23 20:02:46.443394', '2024-01-23 20:02:46.443394', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3178, '2024-01-23 20:02:48.734488', '2024-01-23 20:02:48.734488', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3179, '2024-01-23 20:02:49.050093', '2024-01-23 20:02:49.050093', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3180, '2024-01-23 20:02:49.792874', '2024-01-23 20:02:49.792874', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3181, '2024-01-23 20:03:16.361873', '2024-01-23 20:03:16.361873', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3182, '2024-01-23 20:03:18.631393', '2024-01-23 20:03:18.631393', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3183, '2024-01-23 20:03:18.918730', '2024-01-23 20:03:18.918730', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3184, '2024-01-23 20:03:19.581003', '2024-01-23 20:03:19.581003', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3185, '2024-01-23 20:03:24.937930', '2024-01-23 20:03:24.937930', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3186, '2024-01-23 20:03:27.336629', '2024-01-23 20:03:27.336629', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3187, '2024-01-23 20:03:27.678680', '2024-01-23 20:03:27.678680', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3188, '2024-01-23 20:03:28.675349', '2024-01-23 20:03:28.675349', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3189, '2024-01-23 20:04:07.725829', '2024-01-23 20:04:07.725829', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3190, '2024-01-23 20:04:09.893388', '2024-01-23 20:04:09.893388', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3191, '2024-01-23 20:04:10.159334', '2024-01-23 20:04:10.159334', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3192, '2024-01-23 20:04:12.251901', '2024-01-23 20:04:12.251901', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3193, '2024-01-23 20:04:41.290280', '2024-01-23 20:04:41.290280', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3194, '2024-01-23 20:04:42.582822', '2024-01-23 20:04:42.582822', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3195, '2024-01-23 20:04:56.110088', '2024-01-23 20:04:56.110088', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3196, '2024-01-23 20:04:58.481222', '2024-01-23 20:04:58.481222', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3197, '2024-01-23 20:04:59.019286', '2024-01-23 20:04:59.019286', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3198, '2024-01-23 20:05:10.030177', '2024-01-23 20:05:10.030177', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3199, '2024-01-23 20:05:12.305140', '2024-01-23 20:05:12.305140', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3200, '2024-01-23 20:05:12.664456', '2024-01-23 20:05:12.664456', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3201, '2024-01-23 20:05:13.323616', '2024-01-23 20:05:13.323616', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3202, '2024-01-23 20:05:54.110386', '2024-01-23 20:05:54.110386', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3203, '2024-01-23 20:05:56.560236', '2024-01-23 20:05:56.560236', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3204, '2024-01-23 20:05:56.784064', '2024-01-23 20:05:56.784064', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3205, '2024-01-23 20:06:03.511038', '2024-01-23 20:06:03.511038', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3206, '2024-01-23 20:06:05.749216', '2024-01-23 20:06:05.749216', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3207, '2024-01-23 20:06:06.002114', '2024-01-23 20:06:06.002114', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3208, '2024-01-23 20:06:06.691901', '2024-01-23 20:06:06.691901', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3209, '2024-01-23 20:06:11.799859', '2024-01-23 20:06:11.799859', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3210, '2024-01-23 20:06:14.036106', '2024-01-23 20:06:14.036106', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3211, '2024-01-23 20:06:14.303373', '2024-01-23 20:06:14.303373', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3212, '2024-01-23 20:06:15.123231', '2024-01-23 20:06:15.123231', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3213, '2024-01-23 20:06:47.710260', '2024-01-23 20:06:47.710260', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3214, '2024-01-23 20:06:48.999236', '2024-01-23 20:06:48.999236', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3215, '2024-01-23 20:06:50.123002', '2024-01-23 20:06:50.123002', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3216, '2024-01-23 20:06:50.413556', '2024-01-23 20:06:50.413556', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3217, '2024-01-23 20:06:54.838933', '2024-01-23 20:06:54.838933', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3218, '2024-01-23 20:06:57.146031', '2024-01-23 20:06:57.146031', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3219, '2024-01-23 20:06:57.684028', '2024-01-23 20:06:57.684028', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3220, '2024-01-23 20:06:59.900304', '2024-01-23 20:06:59.900304', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3221, '2024-01-23 20:07:02.212817', '2024-01-23 20:07:02.212817', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3222, '2024-01-23 20:07:02.497799', '2024-01-23 20:07:02.497799', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3223, '2024-01-23 20:07:03.534432', '2024-01-23 20:07:03.534432', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3224, '2024-01-23 20:07:17.744270', '2024-01-23 20:07:17.744270', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3225, '2024-01-23 20:07:20.027662', '2024-01-23 20:07:20.027662', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3226, '2024-01-23 20:07:20.251297', '2024-01-23 20:07:20.251297', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3227, '2024-01-23 20:07:20.846243', '2024-01-23 20:07:20.846243', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3228, '2024-01-23 20:07:43.006029', '2024-01-23 20:07:43.006029', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3229, '2024-01-23 20:07:45.163669', '2024-01-23 20:07:45.163669', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3230, '2024-01-23 20:07:45.396993', '2024-01-23 20:07:45.396993', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3231, '2024-01-23 20:07:46.397166', '2024-01-23 20:07:46.397166', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3232, '2024-01-23 20:08:25.414348', '2024-01-23 20:08:25.414348', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3233, '2024-01-23 20:08:27.683919', '2024-01-23 20:08:27.683919', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3234, '2024-01-23 20:08:27.900067', '2024-01-23 20:08:27.900067', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3235, '2024-01-23 20:08:28.993230', '2024-01-23 20:08:28.993230', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3236, '2024-01-23 20:09:53.487365', '2024-01-23 20:09:53.487365', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3237, '2024-01-23 20:09:55.704608', '2024-01-23 20:09:55.704608', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3238, '2024-01-23 20:09:55.943990', '2024-01-23 20:09:55.943990', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3239, '2024-01-23 20:09:57.403686', '2024-01-23 20:09:57.403686', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3240, '2024-01-23 20:10:05.814195', '2024-01-23 20:10:05.814195', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3241, '2024-01-23 20:10:08.065030', '2024-01-23 20:10:08.065030', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3242, '2024-01-23 20:10:08.345395', '2024-01-23 20:10:08.345395', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3243, '2024-01-23 20:10:09.920242', '2024-01-23 20:10:09.920242', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3244, '2024-01-23 20:10:51.476889', '2024-01-23 20:10:51.476889', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3245, '2024-01-23 20:10:53.964974', '2024-01-23 20:10:53.964974', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3246, '2024-01-23 20:10:54.281806', '2024-01-23 20:10:54.281806', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3247, '2024-01-23 20:10:56.604034', '2024-01-23 20:10:56.604034', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3248, '2024-01-23 20:11:20.415948', '2024-01-23 20:11:20.415948', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3249, '2024-01-23 20:11:23.230489', '2024-01-23 20:11:23.230489', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3250, '2024-01-23 20:11:23.519995', '2024-01-23 20:11:23.519995', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3251, '2024-01-23 20:11:24.501084', '2024-01-23 20:11:24.501084', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3252, '2024-01-23 20:11:46.824550', '2024-01-23 20:11:46.824550', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3253, '2024-01-23 20:11:49.003483', '2024-01-23 20:11:49.003483', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3254, '2024-01-23 20:11:49.299884', '2024-01-23 20:11:49.299884', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3255, '2024-01-23 20:11:50.144067', '2024-01-23 20:11:50.144067', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3256, '2024-01-23 20:12:26.012883', '2024-01-23 20:12:26.012883', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3257, '2024-01-23 20:12:28.200602', '2024-01-23 20:12:28.200602', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3258, '2024-01-23 20:12:28.422163', '2024-01-23 20:12:28.422163', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3259, '2024-01-23 20:12:41.483209', '2024-01-23 20:12:41.483209', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3260, '2024-01-23 20:12:43.754375', '2024-01-23 20:12:43.754375', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3261, '2024-01-23 20:12:44.058323', '2024-01-23 20:12:44.058323', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3262, '2024-01-23 20:12:44.863663', '2024-01-23 20:12:44.863663', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3263, '2024-01-23 20:13:28.615018', '2024-01-23 20:13:28.615018', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3264, '2024-01-23 20:13:31.073917', '2024-01-23 20:13:31.073917', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3265, '2024-01-23 20:13:31.288581', '2024-01-23 20:13:31.288581', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3266, '2024-01-23 20:13:33.266029', '2024-01-23 20:13:33.266029', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3267, '2024-01-23 20:13:35.523591', '2024-01-23 20:13:35.523591', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3268, '2024-01-23 20:13:35.755922', '2024-01-23 20:13:35.755922', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3269, '2024-01-23 20:13:36.555086', '2024-01-23 20:13:36.555086', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3270, '2024-01-23 20:23:07.771245', '2024-01-23 20:23:07.771245', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3271, '2024-01-23 20:23:10.286536', '2024-01-23 20:23:10.286536', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3272, '2024-01-23 20:23:10.566949', '2024-01-23 20:23:10.566949', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3273, '2024-01-23 20:23:11.936316', '2024-01-23 20:23:11.936316', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3274, '2024-01-23 20:23:58.007675', '2024-01-23 20:23:58.007675', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3275, '2024-01-23 20:24:00.623461', '2024-01-23 20:24:00.623461', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3276, '2024-01-23 20:24:01.000298', '2024-01-23 20:24:01.000298', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3277, '2024-01-23 20:24:08.690065', '2024-01-23 20:24:08.690065', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3278, '2024-01-23 20:27:48.904814', '2024-01-23 20:27:48.904814', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3279, '2024-01-23 20:27:51.192287', '2024-01-23 20:27:51.192287', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3280, '2024-01-23 20:27:51.465626', '2024-01-23 20:27:51.465626', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3281, '2024-01-23 20:29:25.862036', '2024-01-23 20:29:25.862036', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3282, '2024-01-23 20:29:28.292127', '2024-01-23 20:29:28.292127', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3283, '2024-01-23 20:29:28.544890', '2024-01-23 20:29:28.544890', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3284, '2024-01-23 20:29:48.804015', '2024-01-23 20:29:48.804015', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3285, '2024-01-23 20:30:01.607092', '2024-01-23 20:30:01.607092', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3286, '2024-01-23 20:30:03.975043', '2024-01-23 20:30:03.975043', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3287, '2024-01-23 20:30:04.219696', '2024-01-23 20:30:04.219696', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3288, '2024-01-23 20:30:05.236313', '2024-01-23 20:30:05.236313', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3289, '2024-01-23 20:30:31.583954', '2024-01-23 20:30:31.583954', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3290, '2024-01-23 20:30:37.136350', '2024-01-23 20:30:37.136350', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3291, '2024-01-23 20:30:39.188626', '2024-01-23 20:30:39.188626', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3292, '2024-01-23 20:30:40.399775', '2024-01-23 20:30:40.399775', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3293, '2024-01-23 20:33:00.446612', '2024-01-23 20:33:00.446612', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3294, '2024-01-23 20:34:00.720846', '2024-01-23 20:34:00.720846', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3295, '2024-01-23 20:35:51.979605', '2024-01-23 20:35:51.979605', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3296, '2024-01-23 20:36:56.383848', '2024-01-23 20:36:56.383848', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3297, '2024-01-23 20:37:13.029008', '2024-01-23 20:37:13.029008', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3298, '2024-01-23 20:37:15.432074', '2024-01-23 20:37:15.432074', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3299, '2024-01-23 20:37:15.727016', '2024-01-23 20:37:15.727016', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3300, '2024-01-23 20:37:16.823818', '2024-01-23 20:37:16.823818', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3301, '2024-01-23 20:37:59.224255', '2024-01-23 20:37:59.224255', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3302, '2024-01-23 20:38:02.118353', '2024-01-23 20:38:02.118353', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3303, '2024-01-23 20:38:02.464985', '2024-01-23 20:38:02.464985', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3304, '2024-01-23 20:38:26.622712', '2024-01-23 20:38:26.622712', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3305, '2024-01-23 20:38:28.999317', '2024-01-23 20:38:28.999317', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3306, '2024-01-23 20:38:29.409604', '2024-01-23 20:38:29.409604', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3307, '2024-01-23 20:38:30.388163', '2024-01-23 20:38:30.388163', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3308, '2024-01-23 20:40:26.121308', '2024-01-23 20:40:26.121308', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3309, '2024-01-23 20:40:28.668700', '2024-01-23 20:40:28.668700', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3310, '2024-01-23 20:40:28.957180', '2024-01-23 20:40:28.957180', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3311, '2024-01-23 20:40:29.755656', '2024-01-23 20:40:29.755656', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3312, '2024-01-23 20:42:31.802712', '2024-01-23 20:42:31.802712', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3313, '2024-01-23 20:42:34.307808', '2024-01-23 20:42:34.307808', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3314, '2024-01-23 20:42:34.659824', '2024-01-23 20:42:34.659824', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3315, '2024-01-23 20:42:35.300056', '2024-01-23 20:42:35.300056', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3316, '2024-01-23 20:42:47.477312', '2024-01-23 20:42:47.477312', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3317, '2024-01-23 20:42:49.717733', '2024-01-23 20:42:49.717733', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3318, '2024-01-23 20:42:50.056927', '2024-01-23 20:42:50.056927', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3319, '2024-01-23 20:42:51.120236', '2024-01-23 20:42:51.120236', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3320, '2024-01-23 20:42:55.416547', '2024-01-23 20:42:55.416547', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3321, '2024-01-23 20:42:57.694784', '2024-01-23 20:42:57.694784', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3322, '2024-01-23 20:42:58.039053', '2024-01-23 20:42:58.039053', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3323, '2024-01-23 20:42:59.381407', '2024-01-23 20:42:59.381407', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3324, '2024-01-23 20:43:06.236334', '2024-01-23 20:43:06.236334', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3325, '2024-01-23 20:43:08.540756', '2024-01-23 20:43:08.540756', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3326, '2024-01-23 20:43:08.877357', '2024-01-23 20:43:08.877357', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3327, '2024-01-23 20:43:10.006298', '2024-01-23 20:43:10.006298', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3328, '2024-01-23 20:43:34.650117', '2024-01-23 20:43:34.650117', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3329, '2024-01-23 20:43:36.993286', '2024-01-23 20:43:36.993286', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3330, '2024-01-23 20:43:37.294714', '2024-01-23 20:43:37.294714', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3331, '2024-01-23 20:43:38.570927', '2024-01-23 20:43:38.570927', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3332, '2024-01-23 20:43:54.233399', '2024-01-23 20:43:54.233399', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3333, '2024-01-23 20:43:56.663525', '2024-01-23 20:43:56.663525', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3334, '2024-01-23 20:43:56.975697', '2024-01-23 20:43:56.975697', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3335, '2024-01-23 20:43:57.741849', '2024-01-23 20:43:57.741849', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3336, '2024-01-23 20:44:17.728431', '2024-01-23 20:44:17.728431', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3337, '2024-01-23 20:44:20.327919', '2024-01-23 20:44:20.327919', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3338, '2024-01-23 20:44:20.662042', '2024-01-23 20:44:20.662042', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3339, '2024-01-23 20:44:21.346319', '2024-01-23 20:44:21.346319', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3340, '2024-01-23 20:45:01.799689', '2024-01-23 20:45:01.799689', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3341, '2024-01-23 20:45:04.164186', '2024-01-23 20:45:04.164186', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3342, '2024-01-23 20:45:04.272044', '2024-01-23 20:45:04.272044', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3343, '2024-01-23 20:45:04.719370', '2024-01-23 20:45:04.719370', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3344, '2024-01-23 20:45:06.843718', '2024-01-23 20:45:06.843718', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3345, '2024-01-23 20:45:07.209749', '2024-01-23 20:45:07.209749', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3346, '2024-01-23 20:45:07.749668', '2024-01-23 20:45:07.749668', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3347, '2024-01-23 20:45:33.276096', '2024-01-23 20:45:33.276096', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3348, '2024-01-23 20:45:37.130004', '2024-01-23 20:45:37.130004', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3349, '2024-01-23 20:45:37.359334', '2024-01-23 20:45:37.359334', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3350, '2024-01-23 20:45:38.227622', '2024-01-23 20:45:38.227622', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3351, '2024-01-23 20:45:55.817469', '2024-01-23 20:45:55.817469', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3352, '2024-01-23 20:45:58.194660', '2024-01-23 20:45:58.194660', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3353, '2024-01-23 20:45:58.460910', '2024-01-23 20:45:58.460910', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3354, '2024-01-23 20:45:59.733215', '2024-01-23 20:45:59.733215', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3355, '2024-01-23 20:46:09.651646', '2024-01-23 20:46:09.651646', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3356, '2024-01-23 20:46:11.963561', '2024-01-23 20:46:11.963561', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3357, '2024-01-23 20:46:12.211725', '2024-01-23 20:46:12.211725', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3358, '2024-01-23 20:46:13.319663', '2024-01-23 20:46:13.319663', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3359, '2024-01-23 20:46:59.884325', '2024-01-23 20:46:59.884325', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3360, '2024-01-23 20:47:02.259849', '2024-01-23 20:47:02.259849', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3361, '2024-01-23 20:47:02.508601', '2024-01-23 20:47:02.508601', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3362, '2024-01-23 20:47:31.339395', '2024-01-23 20:47:31.339395', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3363, '2024-01-23 20:47:33.653551', '2024-01-23 20:47:33.653551', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3364, '2024-01-23 20:47:34.005172', '2024-01-23 20:47:34.005172', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3365, '2024-01-23 20:47:34.840527', '2024-01-23 20:47:34.840527', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3366, '2024-01-23 20:47:58.177338', '2024-01-23 20:47:58.177338', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3367, '2024-01-23 20:48:00.488396', '2024-01-23 20:48:00.488396', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3368, '2024-01-23 20:48:00.777554', '2024-01-23 20:48:00.777554', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3369, '2024-01-23 20:48:02.711390', '2024-01-23 20:48:02.711390', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3370, '2024-01-23 20:48:42.848654', '2024-01-23 20:48:42.848654', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3371, '2024-01-23 20:48:45.206427', '2024-01-23 20:48:45.206427', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3372, '2024-01-23 20:48:45.532243', '2024-01-23 20:48:45.532243', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3373, '2024-01-23 20:48:46.445596', '2024-01-23 20:48:46.445596', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3374, '2024-01-23 20:49:26.423043', '2024-01-23 20:49:26.423043', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3375, '2024-01-23 20:49:28.688585', '2024-01-23 20:49:28.688585', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3376, '2024-01-23 20:49:28.987944', '2024-01-23 20:49:28.987944', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3377, '2024-01-23 20:50:53.412658', '2024-01-23 20:50:53.412658', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3378, '2024-01-23 20:50:55.761281', '2024-01-23 20:50:55.761281', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3379, '2024-01-23 20:50:56.075170', '2024-01-23 20:50:56.075170', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3380, '2024-01-23 20:50:56.930183', '2024-01-23 20:50:56.930183', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3381, '2024-01-23 20:51:02.384245', '2024-01-23 20:51:02.384245', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3382, '2024-01-23 20:51:04.583275', '2024-01-23 20:51:04.583275', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3383, '2024-01-23 20:51:04.867496', '2024-01-23 20:51:04.867496', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3384, '2024-01-23 20:51:05.965645', '2024-01-23 20:51:05.965645', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3385, '2024-01-23 20:51:35.472063', '2024-01-23 20:51:35.472063', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3386, '2024-01-23 20:51:37.896317', '2024-01-23 20:51:37.896317', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3387, '2024-01-23 20:51:38.221719', '2024-01-23 20:51:38.221719', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3388, '2024-01-23 20:51:39.441292', '2024-01-23 20:51:39.441292', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3389, '2024-01-23 20:51:44.852731', '2024-01-23 20:51:44.852731', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3390, '2024-01-23 20:51:47.174269', '2024-01-23 20:51:47.174269', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3391, '2024-01-23 20:51:47.442955', '2024-01-23 20:51:47.442955', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3392, '2024-01-23 20:51:59.702474', '2024-01-23 20:51:59.702474', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3393, '2024-01-23 20:52:08.909213', '2024-01-23 20:52:08.909213', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3394, '2024-01-23 20:52:11.213608', '2024-01-23 20:52:11.213608', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3395, '2024-01-23 20:52:11.492380', '2024-01-23 20:52:11.492380', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3396, '2024-01-23 20:52:12.381418', '2024-01-23 20:52:12.381418', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3397, '2024-01-23 20:52:51.426524', '2024-01-23 20:52:51.426524', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3398, '2024-01-23 20:53:20.045939', '2024-01-23 20:53:20.045939', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3399, '2024-01-23 20:53:22.385535', '2024-01-23 20:53:22.385535', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3400, '2024-01-23 20:53:22.766847', '2024-01-23 20:53:22.766847', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3401, '2024-01-23 20:57:02.595480', '2024-01-23 20:57:02.595480', NULL, '本机地址', '{\"commentID\": \"9\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3402, '2024-01-23 20:57:59.641024', '2024-01-23 20:57:59.641024', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3403, '2024-01-23 20:58:02.265490', '2024-01-23 20:58:02.265490', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3404, '2024-01-23 20:58:02.547408', '2024-01-23 20:58:02.547408', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3405, '2024-01-23 20:58:03.618898', '2024-01-23 20:58:03.618898', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3406, '2024-01-23 20:58:09.129992', '2024-01-23 20:58:09.129992', NULL, '本机地址', '{\"commentID\": \"9\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3407, '2024-01-23 20:58:56.592815', '2024-01-23 20:58:56.592815', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3408, '2024-01-23 20:58:59.264134', '2024-01-23 20:58:59.264134', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3409, '2024-01-23 20:58:59.611912', '2024-01-23 20:58:59.611912', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3410, '2024-01-23 20:59:00.457252', '2024-01-23 20:59:00.457252', NULL, '本机地址', '{\"commentID\": \"9\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3411, '2024-01-23 20:59:06.090474', '2024-01-23 20:59:06.090474', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3412, '2024-01-23 20:59:34.540654', '2024-01-23 20:59:34.540654', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3413, '2024-01-23 20:59:37.011472', '2024-01-23 20:59:37.011472', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3414, '2024-01-23 20:59:37.344134', '2024-01-23 20:59:37.344134', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3415, '2024-01-23 20:59:38.418015', '2024-01-23 20:59:38.418015', NULL, '本机地址', '{\"commentID\": \"8\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3416, '2024-01-23 20:59:44.381046', '2024-01-23 20:59:44.381046', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3417, '2024-01-23 20:59:45.787070', '2024-01-23 20:59:45.787070', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3418, '2024-01-23 20:59:47.538859', '2024-01-23 20:59:47.538859', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (3419, '2024-01-23 20:59:49.289371', '2024-01-23 20:59:49.289371', NULL, '本机地址', '{\"classID\": \"3\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (3420, '2024-01-23 20:59:58.097096', '2024-01-23 20:59:58.097096', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3421, '2024-01-23 20:59:59.480530', '2024-01-23 20:59:59.480530', NULL, '本机地址', '{\"commentID\": \"9\"}', '127.0.0.1', '/app/user/teacher/getCommentDetail');
INSERT INTO `base_sys_log` VALUES (3422, '2024-01-23 21:00:02.098464', '2024-01-23 21:00:02.098464', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (3423, '2024-01-23 21:00:02.228922', '2024-01-23 21:00:02.228922', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (3424, '2024-01-23 21:00:03.129238', '2024-01-23 21:00:03.129238', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3425, '2024-01-23 21:00:06.965945', '2024-01-23 21:00:06.965945', NULL, '本机地址', '{\"classID\": \"2\"}', '127.0.0.1', '/app/user/student/getStudentList');
INSERT INTO `base_sys_log` VALUES (3426, '2024-01-23 21:00:10.029838', '2024-01-23 21:00:10.029838', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3427, '2024-01-23 21:01:14.788916', '2024-01-23 21:01:14.788916', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3428, '2024-01-23 21:01:16.839229', '2024-01-23 21:01:16.839229', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (3429, '2024-01-23 21:01:17.018305', '2024-01-23 21:01:17.018305', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getStudentInfo');
INSERT INTO `base_sys_log` VALUES (3430, '2024-01-23 21:01:18.204837', '2024-01-23 21:01:18.204837', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3431, '2024-01-23 21:01:35.610131', '2024-01-23 21:01:35.610131', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3432, '2024-01-23 21:01:38.555919', '2024-01-23 21:01:38.555919', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3433, '2024-01-23 21:01:40.450171', '2024-01-23 21:01:40.450171', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3434, '2024-01-23 21:02:19.014574', '2024-01-23 21:02:19.014574', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3435, '2024-01-23 21:02:21.702661', '2024-01-23 21:02:21.702661', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3436, '2024-01-23 21:02:22.094950', '2024-01-23 21:02:22.094950', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3437, '2024-01-23 21:02:24.179949', '2024-01-23 21:02:24.179949', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3438, '2024-01-23 21:02:25.103283', '2024-01-23 21:02:25.103283', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3439, '2024-01-23 21:02:25.245956', '2024-01-23 21:02:25.245956', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3440, '2024-01-23 21:02:26.554067', '2024-01-23 21:02:26.554067', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3441, '2024-01-23 21:02:27.385406', '2024-01-23 21:02:27.385406', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/checkStudent');
INSERT INTO `base_sys_log` VALUES (3442, '2024-01-23 21:02:27.537564', '2024-01-23 21:02:27.537564', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/student/getQuestionnaire');
INSERT INTO `base_sys_log` VALUES (3443, '2024-01-23 21:02:28.644125', '2024-01-23 21:02:28.644125', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3444, '2024-01-23 21:02:29.892166', '2024-01-23 21:02:29.892166', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3445, '2024-01-23 21:02:33.766612', '2024-01-23 21:02:33.766612', NULL, '本机地址', '{\"key\": \"privacyPolicy\"}', '127.0.0.1', '/app/base/comm/param');
INSERT INTO `base_sys_log` VALUES (3446, '2024-01-23 21:02:35.761242', '2024-01-23 21:02:35.761242', NULL, '本机地址', '{\"key\": \"userAgreement\"}', '127.0.0.1', '/app/base/comm/param');
INSERT INTO `base_sys_log` VALUES (3447, '2024-01-23 21:02:42.075571', '2024-01-23 21:02:42.075571', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3448, '2024-01-23 21:03:11.813924', '2024-01-23 21:03:11.813924', NULL, '本机地址', '{\"iv\": \"nrgekesXXy8Y+WcvdoL+yw==\", \"code\": \"0c3H0s200VcXpR1gik200zjhQt3H0s2S\", \"rawData\": \"{\\\"nickName\\\":\\\"微信用户\\\",\\\"gender\\\":0,\\\"language\\\":\\\"\\\",\\\"city\\\":\\\"\\\",\\\"province\\\":\\\"\\\",\\\"country\\\":\\\"\\\",\\\"avatarUrl\\\":\\\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\\\",\\\"is_demote\\\":true}\", \"signature\": \"c8a3aabf5c43068d12073d7dc9d69cc07e044079\", \"encryptedData\": \"vfRAqvul3D8CB3m5L/60ofXmWtNb50dkEN5y+AxLzdfaUSunoNqhRXpc0hmmuCzoP44v5DPDJ4KBnRz//EFSu3hvB5Ttt/eyxzSOJH/hoBCP5tgH70jlhn7asE75LRTjwFqgSyHGCYW0sdW/r14Yb/6uD19VJoz136IReTHfmNXhl2FdMZ0H6kFaR/SVnwXbQvOlu70omCOCpRtUmnco00EurGr0ANIHCq15H7RdccS6WruciBnSS0i9Xt0naP05s5ivVQC0yGXcTf02pxnun5OVgU6o5jdkAsoxwwkD1zsFi8K+3aZr15Q1CeTJ/7koQ6mbJGu5+vhxmu7IlZe7U08gtj52AUY2O0crb1F8UYmJefcnLyd4gXtNchcPNlEhL0uBGUfZvwmrb7+bXt3Hj1Hxe4dwm8F+ZVfOJj3NUSdp31ne1QxBaslz+92wsGrC\"}', '127.0.0.1', '/app/user/login/mini');
INSERT INTO `base_sys_log` VALUES (3449, '2024-01-23 21:03:12.243993', '2024-01-23 21:03:12.243993', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3450, '2024-01-23 21:04:01.202828', '2024-01-23 21:04:01.202828', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3451, '2024-01-23 21:04:03.035501', '2024-01-23 21:04:03.035501', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3452, '2024-01-23 21:04:12.679294', '2024-01-23 21:04:12.679294', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3453, '2024-01-23 21:04:25.266572', '2024-01-23 21:04:25.266572', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3454, '2024-01-23 21:04:27.751022', '2024-01-23 21:04:27.751022', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3455, '2024-01-23 21:04:28.012379', '2024-01-23 21:04:28.012379', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3456, '2024-01-23 21:04:31.053746', '2024-01-23 21:04:31.053746', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3457, '2024-01-23 21:04:36.024318', '2024-01-23 21:04:36.024318', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3458, '2024-01-23 21:04:49.532781', '2024-01-23 21:04:49.532781', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3459, '2024-01-23 21:04:52.132543', '2024-01-23 21:04:52.132543', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3460, '2024-01-23 21:04:52.483517', '2024-01-23 21:04:52.483517', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3461, '2024-01-23 21:05:20.242861', '2024-01-23 21:05:20.242861', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3462, '2024-01-23 21:05:26.020145', '2024-01-23 21:05:26.020145', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3463, '2024-01-23 21:05:26.374278', '2024-01-23 21:05:26.374278', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3464, '2024-01-23 21:05:50.437343', '2024-01-23 21:05:50.437343', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3465, '2024-01-23 21:05:53.094768', '2024-01-23 21:05:53.094768', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3466, '2024-01-23 21:05:53.350555', '2024-01-23 21:05:53.350555', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3467, '2024-01-23 21:06:00.865063', '2024-01-23 21:06:00.865063', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3468, '2024-01-23 21:06:03.011896', '2024-01-23 21:06:03.011896', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3469, '2024-01-23 21:06:29.808175', '2024-01-23 21:06:29.808175', NULL, '本机地址', '{}', '127.0.0.1', '/app/base/comm/eps');
INSERT INTO `base_sys_log` VALUES (3470, '2024-01-23 21:06:32.439267', '2024-01-23 21:06:32.439267', NULL, '本机地址', '{}', '127.0.0.1', '/app/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3471, '2024-01-23 21:06:32.750102', '2024-01-23 21:06:32.750102', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getCommentList');
INSERT INTO `base_sys_log` VALUES (3472, '2024-01-23 21:06:34.633905', '2024-01-23 21:06:34.633905', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3473, '2024-01-23 21:06:35.881268', '2024-01-23 21:06:35.881268', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3474, '2024-01-23 21:06:40.042610', '2024-01-23 21:06:40.042610', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3475, '2024-01-23 21:06:41.908767', '2024-01-23 21:06:41.908767', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3476, '2024-01-23 21:06:49.138733', '2024-01-23 21:06:49.138733', NULL, '本机地址', '{\"iv\": \"BapR0fX5p8MbSxWu1egBaA==\", \"code\": \"0b3w572w3SUx523whC2w3o8i3E3w572S\", \"rawData\": \"{\\\"nickName\\\":\\\"微信用户\\\",\\\"gender\\\":0,\\\"language\\\":\\\"\\\",\\\"city\\\":\\\"\\\",\\\"province\\\":\\\"\\\",\\\"country\\\":\\\"\\\",\\\"avatarUrl\\\":\\\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\\\",\\\"is_demote\\\":true}\", \"signature\": \"c8a3aabf5c43068d12073d7dc9d69cc07e044079\", \"encryptedData\": \"bjfMCmlkfRCc2gkbDliQ0h1yGrCeU0EaHWCMPUHm4GGvMfT5JlVzXBUPjiY1sph66QtFrCQ9LcKCFUPhX5eIm8ME4O4zw6nohaE5Noc5aLcyPHC9wu6lrODiWJZ2sLA8A7lXLTaIptDxpudeGZTSxIh9q1+DFB+TxZL170nHU75Js1lsF6mHJj/NGeFFQCbN6XvDKq9mwhyR1UaAYHa5EH+snZhAyGBRMxgwwYRm6fJ4uNsLm8MOqojAbeOPooO9vqElh69W5RJg4+Rhx6jNdUYE3CzYuWFaaWp91DILxD65bJngAgJb2N2MUsg9/y4Cv7QeSwCKlimR535z9HYTWS9zh7yl5yy5pLcHRSBzZqNHqH0CJOvo49bWNykO7Be4GkF4X8/qqSTsCgCVzCjawXddoOpbDuwqoPJct+jp4LlBbSQ7ygwMmjTy1kZzFkLK\"}', '127.0.0.1', '/app/user/login/mini');
INSERT INTO `base_sys_log` VALUES (3477, '2024-01-23 21:06:49.513596', '2024-01-23 21:06:49.513596', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/info/person');
INSERT INTO `base_sys_log` VALUES (3478, '2024-01-23 21:06:50.462124', '2024-01-23 21:06:50.462124', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/checkTeacher');
INSERT INTO `base_sys_log` VALUES (3479, '2024-01-23 21:06:52.014358', '2024-01-23 21:06:52.014358', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3480, '2024-01-23 21:06:59.149001', '2024-01-23 21:06:59.149001', NULL, '本机地址', '{}', '127.0.0.1', '/app/user/teacher/getTeacherClass');
INSERT INTO `base_sys_log` VALUES (3481, '2024-01-23 21:07:13.562582', '2024-01-23 21:07:13.562582', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3482, '2024-01-23 21:07:16.404547', '2024-01-23 21:07:16.404547', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3483, '2024-01-23 21:07:21.572739', '2024-01-23 21:07:21.572739', NULL, '本机地址', '{\"refreshToken\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc1JlZnJlc2giOnRydWUsInJvbGVJZHMiOlsiMSJdLCJ1c2VybmFtZSI6ImFkbWluIiwidXNlcklkIjoxLCJwYXNzd29yZFZlcnNpb24iOjcsImlhdCI6MTcwNTg1MDYwOSwiZXhwIjoxNzA3MTQ2NjA5fQ.-NCSqUUawofLRPKEoWwpU_atVRsV0sIT9CpunGj81rQ\"}', '127.0.0.1', '/admin/base/open/refreshToken');
INSERT INTO `base_sys_log` VALUES (3484, '2024-01-23 21:07:21.578254', '2024-01-23 21:07:21.578254', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3485, '2024-01-23 21:07:21.776554', '2024-01-23 21:07:21.776554', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (3486, '2024-01-23 21:07:21.781460', '2024-01-23 21:07:21.781460', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (3487, '2024-01-23 21:07:21.846130', '2024-01-23 21:07:21.846130', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3488, '2024-01-23 21:07:24.385873', '2024-01-23 21:07:24.385873', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (3489, '2024-01-23 21:07:29.908902', '2024-01-23 21:07:29.908902', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3490, '2024-01-23 21:07:51.577733', '2024-01-23 21:07:51.577733', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3491, '2024-01-23 21:07:52.460199', '2024-01-23 21:07:52.460199', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3492, '2024-01-23 21:07:52.907343', '2024-01-23 21:07:52.907343', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3493, '2024-01-23 21:07:52.913728', '2024-01-23 21:07:52.913728', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (3494, '2024-01-23 21:07:52.920483', '2024-01-23 21:07:52.920483', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (3495, '2024-01-23 21:07:53.084878', '2024-01-23 21:07:53.084878', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3496, '2024-01-23 21:07:54.353009', '2024-01-23 21:07:54.353009', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (3497, '2024-01-23 21:08:21.313648', '2024-01-23 21:08:21.313648', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3498, '2024-01-23 21:08:22.480767', '2024-01-23 21:08:22.480767', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3499, '2024-01-23 21:08:22.871927', '2024-01-23 21:08:22.871927', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3500, '2024-01-23 21:08:22.880608', '2024-01-23 21:08:22.880608', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (3501, '2024-01-23 21:08:22.888076', '2024-01-23 21:08:22.888076', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (3502, '2024-01-23 21:08:23.106784', '2024-01-23 21:08:23.106784', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3503, '2024-01-23 21:08:23.949527', '2024-01-23 21:08:23.949527', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (3504, '2024-01-23 21:09:06.217107', '2024-01-23 21:09:06.217107', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3505, '2024-01-23 21:09:06.881584', '2024-01-23 21:09:06.881584', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3506, '2024-01-23 21:09:09.564954', '2024-01-23 21:09:09.564954', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3507, '2024-01-23 21:09:09.829957', '2024-01-23 21:09:09.829957', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (3508, '2024-01-23 21:09:09.911132', '2024-01-23 21:09:09.911132', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (3509, '2024-01-23 21:09:10.152291', '2024-01-23 21:09:10.152291', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3510, '2024-01-23 21:09:11.802175', '2024-01-23 21:09:11.802175', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (3511, '2024-01-23 21:09:16.474115', '2024-01-23 21:09:16.474115', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/logout');
INSERT INTO `base_sys_log` VALUES (3512, '2024-01-23 21:09:16.563728', '2024-01-23 21:09:16.563728', NULL, '本机地址', '{\"color\": \"#2c3142\", \"width\": \"150\", \"height\": \"45\"}', '127.0.0.1', '/admin/base/open/captcha');
INSERT INTO `base_sys_log` VALUES (3513, '2024-01-23 21:09:39.540061', '2024-01-23 21:09:39.540061', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3514, '2024-01-23 21:09:48.372560', '2024-01-23 21:09:48.372560', NULL, '本机地址', '{\"password\": \"123456\", \"username\": \"admin\", \"captchaId\": \"9c98e720-b9f0-11ee-83d9-4dcf0217ed56\", \"verifyCode\": \"6473\"}', '127.0.0.1', '/admin/base/open/login');
INSERT INTO `base_sys_log` VALUES (3515, '2024-01-23 21:09:48.419951', '2024-01-23 21:09:48.419951', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (3516, '2024-01-23 21:09:48.424504', '2024-01-23 21:09:48.424504', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3517, '2024-01-23 21:09:48.431234', '2024-01-23 21:09:48.431234', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (3518, '2024-01-23 21:09:48.538688', '2024-01-23 21:09:48.538688', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (3519, '2024-01-23 21:09:51.359100', '2024-01-23 21:09:51.359100', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3520, '2024-01-23 21:09:51.365668', '2024-01-23 21:09:51.365668', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/menu/list');
INSERT INTO `base_sys_log` VALUES (3521, '2024-01-23 21:09:51.569067', '2024-01-23 21:09:51.569067', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (3522, '2024-01-23 21:09:54.116897', '2024-01-23 21:09:54.116897', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (3523, '2024-01-23 21:09:56.668373', '2024-01-23 21:09:56.668373', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (3524, '2024-01-23 21:09:56.717491', '2024-01-23 21:09:56.717491', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (3525, '2024-01-23 21:09:56.745075', '2024-01-23 21:09:56.745075', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3526, '2024-01-23 21:09:58.776104', '2024-01-23 21:09:58.776104', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/info/page');
INSERT INTO `base_sys_log` VALUES (3527, '2024-01-23 21:10:12.102696', '2024-01-23 21:10:12.102696', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3528, '2024-01-23 21:10:12.576109', '2024-01-23 21:10:12.576109', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3529, '2024-01-23 21:10:12.586597', '2024-01-23 21:10:12.586597', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/person');
INSERT INTO `base_sys_log` VALUES (3530, '2024-01-23 21:10:12.687120', '2024-01-23 21:10:12.687120', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/comm/permmenu');
INSERT INTO `base_sys_log` VALUES (3531, '2024-01-23 21:10:12.784131', '2024-01-23 21:10:12.784131', 1, '本机地址', '{}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3532, '2024-01-23 21:10:13.233746', '2024-01-23 21:10:13.233746', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/info/page');
INSERT INTO `base_sys_log` VALUES (3533, '2024-01-23 21:10:41.098219', '2024-01-23 21:10:41.098219', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3534, '2024-01-23 21:10:41.278896', '2024-01-23 21:10:41.278896', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/info/page');
INSERT INTO `base_sys_log` VALUES (3535, '2024-01-23 21:10:46.987221', '2024-01-23 21:10:46.987221', NULL, '本机地址', '{}', '127.0.0.1', '/admin/base/open/eps');
INSERT INTO `base_sys_log` VALUES (3536, '2024-01-23 21:10:47.160172', '2024-01-23 21:10:47.160172', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/info/page');
INSERT INTO `base_sys_log` VALUES (3537, '2024-01-23 21:10:51.830050', '2024-01-23 21:10:51.830050', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"asc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/dict/type/page');
INSERT INTO `base_sys_log` VALUES (3538, '2024-01-23 21:10:51.891571', '2024-01-23 21:10:51.891571', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (3539, '2024-01-23 21:10:51.934765', '2024-01-23 21:10:51.934765', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3540, '2024-01-23 21:10:56.719310', '2024-01-23 21:10:56.719310', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (3541, '2024-01-23 21:10:56.750477', '2024-01-23 21:10:56.750477', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3542, '2024-01-23 21:10:57.091436', '2024-01-23 21:10:57.091436', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 5}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (3543, '2024-01-23 21:10:57.123984', '2024-01-23 21:10:57.123984', 1, '本机地址', '{\"types\": [\"grade_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3544, '2024-01-23 21:10:57.821696', '2024-01-23 21:10:57.821696', 1, '本机地址', '{\"sort\": \"desc\", \"order\": \"orderNum\", \"typeId\": 1}', '127.0.0.1', '/admin/dict/info/list');
INSERT INTO `base_sys_log` VALUES (3545, '2024-01-23 21:10:57.854664', '2024-01-23 21:10:57.854664', 1, '本机地址', '{\"types\": [\"college_info\"]}', '127.0.0.1', '/admin/dict/info/data');
INSERT INTO `base_sys_log` VALUES (3546, '2024-01-23 21:11:06.533522', '2024-01-23 21:11:06.533522', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (3547, '2024-01-23 21:11:10.851267', '2024-01-23 21:11:10.851267', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');
INSERT INTO `base_sys_log` VALUES (3548, '2024-01-23 21:11:12.223409', '2024-01-23 21:11:12.223409', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (3549, '2024-01-23 21:11:24.641600', '2024-01-23 21:11:24.641600', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (3550, '2024-01-23 21:12:22.667488', '2024-01-23 21:12:22.667488', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (3551, '2024-01-23 21:12:24.133189', '2024-01-23 21:12:24.133189', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/recycle/data/page');
INSERT INTO `base_sys_log` VALUES (3552, '2024-01-23 21:12:27.649266', '2024-01-23 21:12:27.649266', 1, '本机地址', '{}', '127.0.0.1', '/admin/base/sys/log/getKeep');
INSERT INTO `base_sys_log` VALUES (3553, '2024-01-23 21:12:27.664760', '2024-01-23 21:12:27.664760', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/base/sys/log/page');
INSERT INTO `base_sys_log` VALUES (3554, '2024-01-23 21:12:29.517566', '2024-01-23 21:12:29.517566', 1, '本机地址', '{\"page\": 1, \"size\": 20, \"sort\": \"desc\", \"order\": \"createTime\"}', '127.0.0.1', '/admin/user/_class/page');

-- ----------------------------
-- Table structure for base_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_menu`;
CREATE TABLE `base_sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `parentId` bigint NULL DEFAULT NULL COMMENT '父菜单ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单地址',
  `perms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `type` tinyint NOT NULL DEFAULT 0 COMMENT '类型 0-目录 1-菜单 2-按钮',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `orderNum` int NOT NULL DEFAULT 0 COMMENT '排序',
  `viewPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视图地址',
  `keepAlive` tinyint NOT NULL DEFAULT 1 COMMENT '路由缓存',
  `isShow` tinyint NOT NULL DEFAULT 1 COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_05e3d6a56604771a6da47ebf8e`(`createTime` ASC) USING BTREE,
  INDEX `IDX_d5203f18daaf7c3fe0ab34497f`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 673 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_menu
-- ----------------------------
INSERT INTO `base_sys_menu` VALUES (2, '2019-09-11 11:14:47.000000', '2023-09-11 14:53:40.149000', NULL, '系统管理', '/sys', NULL, 0, 'icon-system', 2, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (8, '1900-01-20 23:19:57.000000', '2023-09-13 18:12:57.980000', 27, '菜单列表', '/sys/menu', NULL, 1, 'icon-menu', 2, 'modules/base/views/menu/index.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (10, '1900-01-20 00:19:27.325000', '1900-01-20 00:19:27.325000', 8, '新增', NULL, 'base:sys:menu:add', 2, NULL, 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (11, '1900-01-20 00:19:51.101000', '1900-01-20 00:19:51.101000', 8, '删除', NULL, 'base:sys:menu:delete', 2, NULL, 2, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (13, '1900-01-20 00:20:19.341000', '1900-01-20 00:20:19.341000', 8, '查询', NULL, 'base:sys:menu:page,base:sys:menu:list,base:sys:menu:info', 2, NULL, 4, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (22, '2019-09-12 00:34:01.000000', '2024-01-14 15:08:09.901000', 27, '角色列表', '/sys/role', NULL, 1, 'icon-dept', 3, 'cool/modules/base/views/role.vue', 1, 0);
INSERT INTO `base_sys_menu` VALUES (23, '1900-01-20 00:34:23.459000', '1900-01-20 00:34:23.459000', 22, '新增', NULL, 'base:sys:role:add', 2, NULL, 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (24, '1900-01-20 00:34:40.523000', '1900-01-20 00:34:40.523000', 22, '删除', NULL, 'base:sys:role:delete', 2, NULL, 2, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (25, '1900-01-20 00:34:53.306000', '1900-01-20 00:34:53.306000', 22, '修改', NULL, 'base:sys:role:update', 2, NULL, 3, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (26, '1900-01-20 00:35:05.024000', '1900-01-20 00:35:05.024000', 22, '查询', NULL, 'base:sys:role:page,base:sys:role:list,base:sys:role:info', 2, NULL, 4, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (27, '2019-09-12 15:52:44.000000', '2023-09-11 14:52:08.845000', 2, '权限管理', NULL, NULL, 0, 'icon-auth', 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (29, '2019-09-12 17:35:51.000000', '2021-03-08 23:01:39.000000', 105, '请求日志', '/sys/log', NULL, 1, 'icon-log', 1, 'cool/modules/base/views/log.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (30, '2019-09-12 17:37:03.000000', '2021-03-03 10:16:26.000000', 29, '权限', NULL, 'base:sys:log:page,base:sys:log:clear,base:sys:log:getKeep,base:sys:log:setKeep', 2, NULL, 1, NULL, 0, 1);
INSERT INTO `base_sys_menu` VALUES (59, '2019-11-18 16:50:27.000000', '2019-11-18 16:50:27.000000', 97, '部门列表', NULL, 'base:sys:department:list', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (60, '2019-11-18 16:50:45.000000', '2019-11-18 16:50:45.000000', 97, '新增部门', NULL, 'base:sys:department:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (61, '2019-11-18 16:50:59.000000', '2019-11-18 16:50:59.000000', 97, '更新部门', NULL, 'base:sys:department:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (62, '2019-11-18 16:51:13.000000', '2019-11-18 16:51:13.000000', 97, '删除部门', NULL, 'base:sys:department:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (63, '2019-11-18 17:49:35.000000', '2019-11-18 17:49:35.000000', 97, '部门排序', NULL, 'base:sys:department:order', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (65, '2019-11-18 23:59:21.000000', '2019-11-18 23:59:21.000000', 97, '用户转移', NULL, 'base:sys:user:move', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (78, '2019-12-10 13:27:56.000000', '2024-01-14 15:08:05.915000', 2, '参数配置', NULL, NULL, 0, 'icon-params', 3, NULL, 1, 0);
INSERT INTO `base_sys_menu` VALUES (79, '1900-01-20 13:29:33.000000', '2021-03-08 23:01:48.000000', 78, '参数列表', '/sys/param', NULL, 1, 'icon-menu', 0, 'cool/modules/base/views/param.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (80, '1900-01-20 13:29:50.146000', '1900-01-20 13:29:50.146000', 79, '新增', NULL, 'base:sys:param:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (81, '1900-01-20 13:30:10.030000', '1900-01-20 13:30:10.030000', 79, '修改', NULL, 'base:sys:param:info,base:sys:param:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (82, '1900-01-20 13:30:25.791000', '1900-01-20 13:30:25.791000', 79, '删除', NULL, 'base:sys:param:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (83, '1900-01-20 13:30:40.469000', '1900-01-20 13:30:40.469000', 79, '查看', NULL, 'base:sys:param:page,base:sys:param:list,base:sys:param:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (97, '1900-01-20 14:14:02.000000', '2024-01-14 15:08:08.221000', 27, '用户列表', '/sys/user', NULL, 1, 'icon-user', 0, 'modules/base/views/user/index.vue', 1, 0);
INSERT INTO `base_sys_menu` VALUES (98, '1900-01-20 14:14:13.528000', '1900-01-20 14:14:13.528000', 97, '新增', NULL, 'base:sys:user:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (99, '1900-01-20 14:14:22.823000', '1900-01-20 14:14:22.823000', 97, '删除', NULL, 'base:sys:user:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (100, '1900-01-20 14:14:33.973000', '1900-01-20 14:14:33.973000', 97, '修改', NULL, 'base:sys:user:delete,base:sys:user:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (101, '2021-01-12 14:14:51.000000', '2021-01-12 14:14:51.000000', 97, '查询', NULL, 'base:sys:user:page,base:sys:user:list,base:sys:user:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (105, '2021-01-21 10:42:55.000000', '2023-02-17 16:05:19.312000', 2, '监控管理', NULL, NULL, 0, 'icon-monitor', 9, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (117, '2021-03-05 10:58:25.000000', '2024-01-14 15:08:43.176000', NULL, '任务管理', NULL, NULL, 0, 'icon-activity', 97, NULL, 1, 0);
INSERT INTO `base_sys_menu` VALUES (118, '2021-03-05 10:59:42.000000', '2023-02-14 14:05:48.454000', 117, '任务列表', '/task/list', NULL, 1, 'icon-menu', 0, 'modules/task/views/list.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (119, '2021-03-05 11:00:00.000000', '2021-03-05 11:00:00.000000', 118, '权限', NULL, 'task:info:page,task:info:list,task:info:info,task:info:add,task:info:delete,task:info:update,task:info:stop,task:info:start,task:info:once,task:info:log', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (197, '2022-07-05 16:05:27.403000', '2023-09-11 14:50:59.077000', NULL, '字典管理', NULL, NULL, 0, 'icon-dict', 3, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (198, '2022-07-05 16:08:50.307000', '2023-09-11 12:28:11.350000', 197, '字典列表', '/dict/list', NULL, 1, 'icon-menu', 1, 'modules/dict/views/list.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (199, '2022-07-05 16:08:50.748162', '2022-07-05 16:08:50.748162', 198, '删除', NULL, 'dict:info:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (200, '2022-07-05 16:08:50.800623', '2022-07-05 16:08:50.800623', 198, '修改', NULL, 'dict:info:update,dict:info:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (201, '2022-07-05 16:08:50.859141', '2022-07-05 16:08:50.859141', 198, '获得字典数据', NULL, 'dict:info:data', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (202, '2022-07-05 16:08:50.916874', '2022-07-05 16:08:50.916874', 198, '单个信息', NULL, 'dict:info:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (203, '2022-07-05 16:08:50.972783', '2022-07-05 16:08:50.972783', 198, '列表查询', NULL, 'dict:info:list', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (204, '2022-07-05 16:08:51.030928', '2022-07-05 16:08:51.030928', 198, '分页查询', NULL, 'dict:info:page', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (205, '2022-07-05 16:08:51.087883', '2022-07-05 16:08:51.087883', 198, '新增', NULL, 'dict:info:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (206, '2022-07-06 10:41:26.503000', '2022-07-06 10:41:37.000000', 198, '组权限', NULL, 'dict:type:list,dict:type:update,dict:type:delete,dict:type:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (228, '2023-02-13 14:57:10.974000', '2023-09-11 14:58:58.839000', NULL, '数据管理', NULL, NULL, 0, 'icon-data', 3, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (229, '2023-02-13 14:57:47.855000', '2023-02-17 16:04:57.051000', 228, '数据回收站', '/recycle/data', NULL, 1, 'icon-delete', 1, 'modules/recycle/views/data.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (230, '2023-02-13 14:57:48.293292', '2023-02-13 14:57:48.293292', 229, '恢复数据', NULL, 'recycle:data:restore', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (231, '2023-02-13 14:57:48.293292', '2023-02-13 14:57:48.293292', 229, '单个信息', NULL, 'recycle:data:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (232, '2023-02-13 14:57:48.293292', '2023-02-13 14:57:48.293292', 229, '分页查询', NULL, 'recycle:data:page', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (239, '2023-02-15 11:21:16.610000', '2023-09-14 15:11:33.154000', NULL, '文件管理', '/upload/list', NULL, 1, 'icon-log', 97, 'modules/upload/views/list.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (446, '2023-03-06 22:50:24.125000', '2023-03-06 22:50:24.125000', 8, '参数', '/test/aa', NULL, 1, 'icon-goods', 0, 'modules/base/views/info.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (453, '2023-03-15 10:38:43.677000', '2023-03-15 10:38:43.677000', 8, '编辑', NULL, 'base:sys:menu:info,base:sys:menu:update', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (454, '2023-04-16 21:59:16.442000', '2023-09-11 14:53:47.144000', NULL, '用户管理', NULL, NULL, 0, 'icon-user', 8, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (659, '2024-01-14 22:10:39.070000', '2024-01-14 22:10:39.070000', 454, '用户管理', '/user/info', NULL, 1, 'icon-user', 0, 'modules/user/views/info.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (660, '2024-01-14 22:10:39.159000', '2024-01-14 22:10:39.159000', 659, '删除', NULL, 'user:info:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (661, '2024-01-14 22:10:39.159000', '2024-01-14 22:10:39.159000', 659, '修改', NULL, 'user:info:update,user:info:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (662, '2024-01-14 22:10:39.159000', '2024-01-14 22:10:39.159000', 659, '单个信息', NULL, 'user:info:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (663, '2024-01-14 22:10:39.159000', '2024-01-14 22:10:39.159000', 659, '列表查询', NULL, 'user:info:list', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (664, '2024-01-14 22:10:39.159000', '2024-01-14 22:10:39.159000', 659, '分页查询', NULL, 'user:info:page', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (665, '2024-01-14 22:10:39.159000', '2024-01-14 22:10:39.159000', 659, '新增', NULL, 'user:info:add', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (666, '2024-01-14 22:11:24.598000', '2024-01-14 22:11:24.598000', NULL, '班级管理', '/user/_class', NULL, 1, 'icon-dict', 0, 'modules/user/views/_class.vue', 1, 1);
INSERT INTO `base_sys_menu` VALUES (667, '2024-01-14 22:11:24.703000', '2024-01-14 22:11:24.703000', 666, '删除', NULL, 'user:_class:delete', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (668, '2024-01-14 22:11:24.703000', '2024-01-14 22:11:24.703000', 666, '修改', NULL, 'user:_class:update,user:_class:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (669, '2024-01-14 22:11:24.703000', '2024-01-14 22:11:24.703000', 666, '单个信息', NULL, 'user:_class:info', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (670, '2024-01-14 22:11:24.703000', '2024-01-14 22:11:24.703000', 666, '列表查询', NULL, 'user:_class:list', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (671, '2024-01-14 22:11:24.703000', '2024-01-14 22:11:24.703000', 666, '分页查询', NULL, 'user:_class:page', 2, NULL, 0, NULL, 1, 1);
INSERT INTO `base_sys_menu` VALUES (672, '2024-01-14 22:11:24.703000', '2024-01-14 22:11:24.703000', 666, '新增', NULL, 'user:_class:add', 2, NULL, 0, NULL, 1, 1);

-- ----------------------------
-- Table structure for base_sys_param
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_param`;
CREATE TABLE `base_sys_param`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `keyName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据',
  `dataType` tinyint NOT NULL DEFAULT 0 COMMENT '数据类型 0-字符串 1-富文本 2-文件 ',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_cf19b5e52d8c71caa9c4534454`(`keyName` ASC) USING BTREE,
  INDEX `IDX_7bcb57371b481d8e2d66ddeaea`(`createTime` ASC) USING BTREE,
  INDEX `IDX_479122e3bf464112f7a7253dac`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_sys_param
-- ----------------------------
INSERT INTO `base_sys_param` VALUES (1, '2021-02-26 13:53:05.000000', '2023-05-31 10:43:23.312000', 'rich', '富文本参数', '<h3><strong>这是一个富文本</strong></h3><p>xxx</p><p>xxxxxxxxxx</p><p><br></p>', 1, NULL);
INSERT INTO `base_sys_param` VALUES (2, '2021-02-26 13:53:18.000000', '2023-05-30 18:46:28.282000', 'json', 'JSON参数', '{\n  \"code\": 111233\n}', 0, NULL);
INSERT INTO `base_sys_param` VALUES (6, '2023-05-30 18:48:25.371000', '2023-05-31 10:44:25.612000', 'file', '文件', '', 2, NULL);
INSERT INTO `base_sys_param` VALUES (8, '2023-05-31 10:07:53.295000', '2023-05-31 10:46:27.960000', 'text', '测试', '这是一段字符串', 0, NULL);

-- ----------------------------
-- Table structure for base_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_role`;
CREATE TABLE `base_sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色标签',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `relevance` int NOT NULL DEFAULT 1 COMMENT '数据权限是否关联上下级',
  `menuIdList` json NOT NULL COMMENT '菜单权限',
  `departmentIdList` json NOT NULL COMMENT '部门权限',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_469d49a5998170e9550cf113da`(`name` ASC) USING BTREE,
  UNIQUE INDEX `IDX_f3f24fbbccf00192b076e549a7`(`label` ASC) USING BTREE,
  INDEX `IDX_6f01184441dec49207b41bfd92`(`createTime` ASC) USING BTREE,
  INDEX `IDX_d64ca209f3fc52128d9b20e97b`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_role
-- ----------------------------
INSERT INTO `base_sys_role` VALUES (1, '2021-02-24 21:18:39.682358', '2021-02-24 21:18:39.682358', '1', '超管', 'admin', '最高权限的角色', 1, 'null', 'null');
INSERT INTO `base_sys_role` VALUES (10, '2021-02-26 14:15:38.000000', '2021-02-26 14:15:38.000000', '1', '系统管理员', 'admin-sys', NULL, 1, 'null', 'null');
INSERT INTO `base_sys_role` VALUES (11, '2021-02-26 14:16:49.044744', '2021-02-26 14:16:49.044744', '1', '游客', 'visitor', NULL, 0, 'null', 'null');
INSERT INTO `base_sys_role` VALUES (12, '2021-02-26 14:26:51.000000', '2021-02-26 14:32:35.000000', '1', '开发', 'dev', NULL, 0, 'null', 'null');
INSERT INTO `base_sys_role` VALUES (13, '2021-02-26 14:27:58.000000', '2023-02-20 11:01:16.995000', '1', '测试', 'test', NULL, 0, 'null', 'null');

-- ----------------------------
-- Table structure for base_sys_role_department
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_role_department`;
CREATE TABLE `base_sys_role_department`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `roleId` bigint NOT NULL COMMENT '角色ID',
  `departmentId` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_e881a66f7cce83ba431cf20194`(`createTime` ASC) USING BTREE,
  INDEX `IDX_cbf48031efee5d0de262965e53`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_role_department
-- ----------------------------
INSERT INTO `base_sys_role_department` VALUES (1, '2021-02-26 12:00:23.787939', '2021-02-26 12:00:23.787939', 8, 4);
INSERT INTO `base_sys_role_department` VALUES (2, '2021-02-26 12:01:11.525205', '2021-02-26 12:01:11.525205', 9, 1);
INSERT INTO `base_sys_role_department` VALUES (3, '2021-02-26 12:01:11.624266', '2021-02-26 12:01:11.624266', 9, 4);
INSERT INTO `base_sys_role_department` VALUES (4, '2021-02-26 12:01:11.721894', '2021-02-26 12:01:11.721894', 9, 5);
INSERT INTO `base_sys_role_department` VALUES (5, '2021-02-26 12:01:11.823342', '2021-02-26 12:01:11.823342', 9, 8);
INSERT INTO `base_sys_role_department` VALUES (6, '2021-02-26 12:01:11.922873', '2021-02-26 12:01:11.922873', 9, 9);
INSERT INTO `base_sys_role_department` VALUES (23, '2021-02-26 14:32:40.354669', '2021-02-26 14:32:40.354669', 12, 11);
INSERT INTO `base_sys_role_department` VALUES (25, '2021-02-26 14:32:59.726608', '2021-02-26 14:32:59.726608', 10, 1);
INSERT INTO `base_sys_role_department` VALUES (28, '2023-02-20 11:01:23.152883', '2023-02-20 11:01:23.152883', 13, 12);

-- ----------------------------
-- Table structure for base_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_role_menu`;
CREATE TABLE `base_sys_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `roleId` bigint NOT NULL COMMENT '角色ID',
  `menuId` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_3641f81d4201c524a57ce2aa54`(`createTime` ASC) USING BTREE,
  INDEX `IDX_f860298298b26e7a697be36e5b`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 571 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_role_menu
-- ----------------------------
INSERT INTO `base_sys_role_menu` VALUES (1, '2021-02-26 12:00:18.240154', '2021-02-26 12:00:18.240154', 8, 1);
INSERT INTO `base_sys_role_menu` VALUES (2, '2021-02-26 12:00:18.342131', '2021-02-26 12:00:18.342131', 8, 96);
INSERT INTO `base_sys_role_menu` VALUES (3, '2021-02-26 12:00:18.444143', '2021-02-26 12:00:18.444143', 8, 45);
INSERT INTO `base_sys_role_menu` VALUES (4, '2021-02-26 12:00:18.545490', '2021-02-26 12:00:18.545490', 8, 43);
INSERT INTO `base_sys_role_menu` VALUES (5, '2021-02-26 12:00:18.649626', '2021-02-26 12:00:18.649626', 8, 49);
INSERT INTO `base_sys_role_menu` VALUES (6, '2021-02-26 12:00:18.752369', '2021-02-26 12:00:18.752369', 8, 86);
INSERT INTO `base_sys_role_menu` VALUES (7, '2021-02-26 12:00:18.856023', '2021-02-26 12:00:18.856023', 8, 2);
INSERT INTO `base_sys_role_menu` VALUES (8, '2021-02-26 12:00:18.956131', '2021-02-26 12:00:18.956131', 8, 27);
INSERT INTO `base_sys_role_menu` VALUES (9, '2021-02-26 12:00:19.071490', '2021-02-26 12:00:19.071490', 8, 97);
INSERT INTO `base_sys_role_menu` VALUES (10, '2021-02-26 12:00:19.171745', '2021-02-26 12:00:19.171745', 8, 59);
INSERT INTO `base_sys_role_menu` VALUES (11, '2021-02-26 12:00:19.274495', '2021-02-26 12:00:19.274495', 8, 60);
INSERT INTO `base_sys_role_menu` VALUES (12, '2021-02-26 12:00:19.374610', '2021-02-26 12:00:19.374610', 8, 61);
INSERT INTO `base_sys_role_menu` VALUES (13, '2021-02-26 12:00:19.474750', '2021-02-26 12:00:19.474750', 8, 62);
INSERT INTO `base_sys_role_menu` VALUES (14, '2021-02-26 12:00:19.573369', '2021-02-26 12:00:19.573369', 8, 63);
INSERT INTO `base_sys_role_menu` VALUES (15, '2021-02-26 12:00:19.674242', '2021-02-26 12:00:19.674242', 8, 65);
INSERT INTO `base_sys_role_menu` VALUES (16, '2021-02-26 12:00:19.772886', '2021-02-26 12:00:19.772886', 8, 98);
INSERT INTO `base_sys_role_menu` VALUES (17, '2021-02-26 12:00:19.874134', '2021-02-26 12:00:19.874134', 8, 99);
INSERT INTO `base_sys_role_menu` VALUES (18, '2021-02-26 12:00:19.972728', '2021-02-26 12:00:19.972728', 8, 100);
INSERT INTO `base_sys_role_menu` VALUES (19, '2021-02-26 12:00:20.085877', '2021-02-26 12:00:20.085877', 8, 101);
INSERT INTO `base_sys_role_menu` VALUES (20, '2021-02-26 12:00:20.192887', '2021-02-26 12:00:20.192887', 8, 8);
INSERT INTO `base_sys_role_menu` VALUES (21, '2021-02-26 12:00:20.293747', '2021-02-26 12:00:20.293747', 8, 10);
INSERT INTO `base_sys_role_menu` VALUES (22, '2021-02-26 12:00:20.393491', '2021-02-26 12:00:20.393491', 8, 11);
INSERT INTO `base_sys_role_menu` VALUES (23, '2021-02-26 12:00:20.495110', '2021-02-26 12:00:20.495110', 8, 12);
INSERT INTO `base_sys_role_menu` VALUES (24, '2021-02-26 12:00:20.594083', '2021-02-26 12:00:20.594083', 8, 13);
INSERT INTO `base_sys_role_menu` VALUES (25, '2021-02-26 12:00:20.695727', '2021-02-26 12:00:20.695727', 8, 22);
INSERT INTO `base_sys_role_menu` VALUES (26, '2021-02-26 12:00:20.794729', '2021-02-26 12:00:20.794729', 8, 23);
INSERT INTO `base_sys_role_menu` VALUES (27, '2021-02-26 12:00:20.895601', '2021-02-26 12:00:20.895601', 8, 24);
INSERT INTO `base_sys_role_menu` VALUES (28, '2021-02-26 12:00:20.994972', '2021-02-26 12:00:20.994972', 8, 25);
INSERT INTO `base_sys_role_menu` VALUES (29, '2021-02-26 12:00:21.110384', '2021-02-26 12:00:21.110384', 8, 26);
INSERT INTO `base_sys_role_menu` VALUES (30, '2021-02-26 12:00:21.210970', '2021-02-26 12:00:21.210970', 8, 69);
INSERT INTO `base_sys_role_menu` VALUES (31, '2021-02-26 12:00:21.311852', '2021-02-26 12:00:21.311852', 8, 70);
INSERT INTO `base_sys_role_menu` VALUES (32, '2021-02-26 12:00:21.411591', '2021-02-26 12:00:21.411591', 8, 71);
INSERT INTO `base_sys_role_menu` VALUES (33, '2021-02-26 12:00:21.513584', '2021-02-26 12:00:21.513584', 8, 72);
INSERT INTO `base_sys_role_menu` VALUES (34, '2021-02-26 12:00:21.612212', '2021-02-26 12:00:21.612212', 8, 73);
INSERT INTO `base_sys_role_menu` VALUES (35, '2021-02-26 12:00:21.712720', '2021-02-26 12:00:21.712720', 8, 74);
INSERT INTO `base_sys_role_menu` VALUES (36, '2021-02-26 12:00:21.812839', '2021-02-26 12:00:21.812839', 8, 75);
INSERT INTO `base_sys_role_menu` VALUES (37, '2021-02-26 12:00:21.913321', '2021-02-26 12:00:21.913321', 8, 76);
INSERT INTO `base_sys_role_menu` VALUES (38, '2021-02-26 12:00:22.013970', '2021-02-26 12:00:22.013970', 8, 77);
INSERT INTO `base_sys_role_menu` VALUES (39, '2021-02-26 12:00:22.144879', '2021-02-26 12:00:22.144879', 8, 78);
INSERT INTO `base_sys_role_menu` VALUES (40, '2021-02-26 12:00:22.246707', '2021-02-26 12:00:22.246707', 8, 79);
INSERT INTO `base_sys_role_menu` VALUES (41, '2021-02-26 12:00:22.347579', '2021-02-26 12:00:22.347579', 8, 80);
INSERT INTO `base_sys_role_menu` VALUES (42, '2021-02-26 12:00:22.446947', '2021-02-26 12:00:22.446947', 8, 81);
INSERT INTO `base_sys_role_menu` VALUES (43, '2021-02-26 12:00:22.547082', '2021-02-26 12:00:22.547082', 8, 82);
INSERT INTO `base_sys_role_menu` VALUES (44, '2021-02-26 12:00:22.647197', '2021-02-26 12:00:22.647197', 8, 83);
INSERT INTO `base_sys_role_menu` VALUES (45, '2021-02-26 12:00:22.748089', '2021-02-26 12:00:22.748089', 8, 105);
INSERT INTO `base_sys_role_menu` VALUES (46, '2021-02-26 12:00:22.847814', '2021-02-26 12:00:22.847814', 8, 102);
INSERT INTO `base_sys_role_menu` VALUES (47, '2021-02-26 12:00:22.949071', '2021-02-26 12:00:22.949071', 8, 103);
INSERT INTO `base_sys_role_menu` VALUES (48, '2021-02-26 12:00:23.047353', '2021-02-26 12:00:23.047353', 8, 29);
INSERT INTO `base_sys_role_menu` VALUES (49, '2021-02-26 12:00:23.147826', '2021-02-26 12:00:23.147826', 8, 30);
INSERT INTO `base_sys_role_menu` VALUES (50, '2021-02-26 12:00:23.246800', '2021-02-26 12:00:23.246800', 8, 47);
INSERT INTO `base_sys_role_menu` VALUES (51, '2021-02-26 12:00:23.349541', '2021-02-26 12:00:23.349541', 8, 48);
INSERT INTO `base_sys_role_menu` VALUES (52, '2021-02-26 12:00:23.463177', '2021-02-26 12:00:23.463177', 8, 84);
INSERT INTO `base_sys_role_menu` VALUES (53, '2021-02-26 12:00:23.564096', '2021-02-26 12:00:23.564096', 8, 90);
INSERT INTO `base_sys_role_menu` VALUES (54, '2021-02-26 12:00:23.663815', '2021-02-26 12:00:23.663815', 8, 85);
INSERT INTO `base_sys_role_menu` VALUES (55, '2021-02-26 12:01:05.971978', '2021-02-26 12:01:05.971978', 9, 1);
INSERT INTO `base_sys_role_menu` VALUES (56, '2021-02-26 12:01:06.085568', '2021-02-26 12:01:06.085568', 9, 96);
INSERT INTO `base_sys_role_menu` VALUES (57, '2021-02-26 12:01:06.198271', '2021-02-26 12:01:06.198271', 9, 45);
INSERT INTO `base_sys_role_menu` VALUES (58, '2021-02-26 12:01:06.309736', '2021-02-26 12:01:06.309736', 9, 43);
INSERT INTO `base_sys_role_menu` VALUES (59, '2021-02-26 12:01:06.410785', '2021-02-26 12:01:06.410785', 9, 49);
INSERT INTO `base_sys_role_menu` VALUES (60, '2021-02-26 12:01:06.510712', '2021-02-26 12:01:06.510712', 9, 86);
INSERT INTO `base_sys_role_menu` VALUES (61, '2021-02-26 12:01:06.612457', '2021-02-26 12:01:06.612457', 9, 2);
INSERT INTO `base_sys_role_menu` VALUES (62, '2021-02-26 12:01:06.710397', '2021-02-26 12:01:06.710397', 9, 27);
INSERT INTO `base_sys_role_menu` VALUES (63, '2021-02-26 12:01:06.809104', '2021-02-26 12:01:06.809104', 9, 97);
INSERT INTO `base_sys_role_menu` VALUES (64, '2021-02-26 12:01:06.907088', '2021-02-26 12:01:06.907088', 9, 59);
INSERT INTO `base_sys_role_menu` VALUES (65, '2021-02-26 12:01:07.009988', '2021-02-26 12:01:07.009988', 9, 60);
INSERT INTO `base_sys_role_menu` VALUES (66, '2021-02-26 12:01:07.122372', '2021-02-26 12:01:07.122372', 9, 61);
INSERT INTO `base_sys_role_menu` VALUES (67, '2021-02-26 12:01:07.223694', '2021-02-26 12:01:07.223694', 9, 62);
INSERT INTO `base_sys_role_menu` VALUES (68, '2021-02-26 12:01:07.325022', '2021-02-26 12:01:07.325022', 9, 63);
INSERT INTO `base_sys_role_menu` VALUES (69, '2021-02-26 12:01:07.425209', '2021-02-26 12:01:07.425209', 9, 65);
INSERT INTO `base_sys_role_menu` VALUES (70, '2021-02-26 12:01:07.522081', '2021-02-26 12:01:07.522081', 9, 98);
INSERT INTO `base_sys_role_menu` VALUES (71, '2021-02-26 12:01:07.622775', '2021-02-26 12:01:07.622775', 9, 99);
INSERT INTO `base_sys_role_menu` VALUES (72, '2021-02-26 12:01:07.721181', '2021-02-26 12:01:07.721181', 9, 100);
INSERT INTO `base_sys_role_menu` VALUES (73, '2021-02-26 12:01:07.819589', '2021-02-26 12:01:07.819589', 9, 101);
INSERT INTO `base_sys_role_menu` VALUES (74, '2021-02-26 12:01:07.920497', '2021-02-26 12:01:07.920497', 9, 8);
INSERT INTO `base_sys_role_menu` VALUES (75, '2021-02-26 12:01:08.018875', '2021-02-26 12:01:08.018875', 9, 10);
INSERT INTO `base_sys_role_menu` VALUES (76, '2021-02-26 12:01:08.135192', '2021-02-26 12:01:08.135192', 9, 11);
INSERT INTO `base_sys_role_menu` VALUES (77, '2021-02-26 12:01:08.246405', '2021-02-26 12:01:08.246405', 9, 12);
INSERT INTO `base_sys_role_menu` VALUES (78, '2021-02-26 12:01:08.346661', '2021-02-26 12:01:08.346661', 9, 13);
INSERT INTO `base_sys_role_menu` VALUES (79, '2021-02-26 12:01:08.448436', '2021-02-26 12:01:08.448436', 9, 22);
INSERT INTO `base_sys_role_menu` VALUES (80, '2021-02-26 12:01:08.547496', '2021-02-26 12:01:08.547496', 9, 23);
INSERT INTO `base_sys_role_menu` VALUES (81, '2021-02-26 12:01:08.648457', '2021-02-26 12:01:08.648457', 9, 24);
INSERT INTO `base_sys_role_menu` VALUES (82, '2021-02-26 12:01:08.750564', '2021-02-26 12:01:08.750564', 9, 25);
INSERT INTO `base_sys_role_menu` VALUES (83, '2021-02-26 12:01:08.851783', '2021-02-26 12:01:08.851783', 9, 26);
INSERT INTO `base_sys_role_menu` VALUES (84, '2021-02-26 12:01:08.950898', '2021-02-26 12:01:08.950898', 9, 69);
INSERT INTO `base_sys_role_menu` VALUES (85, '2021-02-26 12:01:09.061982', '2021-02-26 12:01:09.061982', 9, 70);
INSERT INTO `base_sys_role_menu` VALUES (86, '2021-02-26 12:01:09.165258', '2021-02-26 12:01:09.165258', 9, 71);
INSERT INTO `base_sys_role_menu` VALUES (87, '2021-02-26 12:01:09.266177', '2021-02-26 12:01:09.266177', 9, 72);
INSERT INTO `base_sys_role_menu` VALUES (88, '2021-02-26 12:01:09.366427', '2021-02-26 12:01:09.366427', 9, 73);
INSERT INTO `base_sys_role_menu` VALUES (89, '2021-02-26 12:01:09.467877', '2021-02-26 12:01:09.467877', 9, 74);
INSERT INTO `base_sys_role_menu` VALUES (90, '2021-02-26 12:01:09.568526', '2021-02-26 12:01:09.568526', 9, 75);
INSERT INTO `base_sys_role_menu` VALUES (91, '2021-02-26 12:01:09.668052', '2021-02-26 12:01:09.668052', 9, 76);
INSERT INTO `base_sys_role_menu` VALUES (92, '2021-02-26 12:01:09.766367', '2021-02-26 12:01:09.766367', 9, 77);
INSERT INTO `base_sys_role_menu` VALUES (93, '2021-02-26 12:01:09.866170', '2021-02-26 12:01:09.866170', 9, 78);
INSERT INTO `base_sys_role_menu` VALUES (94, '2021-02-26 12:01:09.963037', '2021-02-26 12:01:09.963037', 9, 79);
INSERT INTO `base_sys_role_menu` VALUES (95, '2021-02-26 12:01:10.082046', '2021-02-26 12:01:10.082046', 9, 80);
INSERT INTO `base_sys_role_menu` VALUES (96, '2021-02-26 12:01:10.185024', '2021-02-26 12:01:10.185024', 9, 81);
INSERT INTO `base_sys_role_menu` VALUES (97, '2021-02-26 12:01:10.283787', '2021-02-26 12:01:10.283787', 9, 82);
INSERT INTO `base_sys_role_menu` VALUES (98, '2021-02-26 12:01:10.382883', '2021-02-26 12:01:10.382883', 9, 83);
INSERT INTO `base_sys_role_menu` VALUES (99, '2021-02-26 12:01:10.481150', '2021-02-26 12:01:10.481150', 9, 105);
INSERT INTO `base_sys_role_menu` VALUES (100, '2021-02-26 12:01:10.579579', '2021-02-26 12:01:10.579579', 9, 102);
INSERT INTO `base_sys_role_menu` VALUES (101, '2021-02-26 12:01:10.679489', '2021-02-26 12:01:10.679489', 9, 103);
INSERT INTO `base_sys_role_menu` VALUES (102, '2021-02-26 12:01:10.777496', '2021-02-26 12:01:10.777496', 9, 29);
INSERT INTO `base_sys_role_menu` VALUES (103, '2021-02-26 12:01:10.878292', '2021-02-26 12:01:10.878292', 9, 30);
INSERT INTO `base_sys_role_menu` VALUES (104, '2021-02-26 12:01:10.977354', '2021-02-26 12:01:10.977354', 9, 47);
INSERT INTO `base_sys_role_menu` VALUES (105, '2021-02-26 12:01:11.097786', '2021-02-26 12:01:11.097786', 9, 48);
INSERT INTO `base_sys_role_menu` VALUES (106, '2021-02-26 12:01:11.201390', '2021-02-26 12:01:11.201390', 9, 84);
INSERT INTO `base_sys_role_menu` VALUES (107, '2021-02-26 12:01:11.302120', '2021-02-26 12:01:11.302120', 9, 90);
INSERT INTO `base_sys_role_menu` VALUES (108, '2021-02-26 12:01:11.402751', '2021-02-26 12:01:11.402751', 9, 85);
INSERT INTO `base_sys_role_menu` VALUES (161, '2021-02-26 14:16:49.162546', '2021-02-26 14:16:49.162546', 11, 1);
INSERT INTO `base_sys_role_menu` VALUES (162, '2021-02-26 14:16:49.257677', '2021-02-26 14:16:49.257677', 11, 96);
INSERT INTO `base_sys_role_menu` VALUES (163, '2021-02-26 14:16:49.356225', '2021-02-26 14:16:49.356225', 11, 45);
INSERT INTO `base_sys_role_menu` VALUES (164, '2021-02-26 14:16:49.450708', '2021-02-26 14:16:49.450708', 11, 43);
INSERT INTO `base_sys_role_menu` VALUES (165, '2021-02-26 14:16:49.543794', '2021-02-26 14:16:49.543794', 11, 49);
INSERT INTO `base_sys_role_menu` VALUES (166, '2021-02-26 14:16:49.636496', '2021-02-26 14:16:49.636496', 11, 86);
INSERT INTO `base_sys_role_menu` VALUES (167, '2021-02-26 14:16:49.728634', '2021-02-26 14:16:49.728634', 11, 47);
INSERT INTO `base_sys_role_menu` VALUES (168, '2021-02-26 14:16:49.824754', '2021-02-26 14:16:49.824754', 11, 48);
INSERT INTO `base_sys_role_menu` VALUES (169, '2021-02-26 14:16:49.919329', '2021-02-26 14:16:49.919329', 11, 85);
INSERT INTO `base_sys_role_menu` VALUES (170, '2021-02-26 14:16:50.015239', '2021-02-26 14:16:50.015239', 11, 84);
INSERT INTO `base_sys_role_menu` VALUES (290, '2021-02-26 14:32:35.143867', '2021-02-26 14:32:35.143867', 12, 1);
INSERT INTO `base_sys_role_menu` VALUES (291, '2021-02-26 14:32:35.239965', '2021-02-26 14:32:35.239965', 12, 96);
INSERT INTO `base_sys_role_menu` VALUES (292, '2021-02-26 14:32:35.336398', '2021-02-26 14:32:35.336398', 12, 45);
INSERT INTO `base_sys_role_menu` VALUES (293, '2021-02-26 14:32:35.435180', '2021-02-26 14:32:35.435180', 12, 43);
INSERT INTO `base_sys_role_menu` VALUES (294, '2021-02-26 14:32:35.528631', '2021-02-26 14:32:35.528631', 12, 49);
INSERT INTO `base_sys_role_menu` VALUES (295, '2021-02-26 14:32:35.623123', '2021-02-26 14:32:35.623123', 12, 86);
INSERT INTO `base_sys_role_menu` VALUES (296, '2021-02-26 14:32:35.718831', '2021-02-26 14:32:35.718831', 12, 2);
INSERT INTO `base_sys_role_menu` VALUES (297, '2021-02-26 14:32:35.812975', '2021-02-26 14:32:35.812975', 12, 27);
INSERT INTO `base_sys_role_menu` VALUES (298, '2021-02-26 14:32:35.904487', '2021-02-26 14:32:35.904487', 12, 97);
INSERT INTO `base_sys_role_menu` VALUES (299, '2021-02-26 14:32:35.998773', '2021-02-26 14:32:35.998773', 12, 59);
INSERT INTO `base_sys_role_menu` VALUES (300, '2021-02-26 14:32:36.107749', '2021-02-26 14:32:36.107749', 12, 60);
INSERT INTO `base_sys_role_menu` VALUES (301, '2021-02-26 14:32:36.213069', '2021-02-26 14:32:36.213069', 12, 61);
INSERT INTO `base_sys_role_menu` VALUES (302, '2021-02-26 14:32:36.308985', '2021-02-26 14:32:36.308985', 12, 62);
INSERT INTO `base_sys_role_menu` VALUES (303, '2021-02-26 14:32:36.404237', '2021-02-26 14:32:36.404237', 12, 63);
INSERT INTO `base_sys_role_menu` VALUES (304, '2021-02-26 14:32:36.499569', '2021-02-26 14:32:36.499569', 12, 65);
INSERT INTO `base_sys_role_menu` VALUES (305, '2021-02-26 14:32:36.593710', '2021-02-26 14:32:36.593710', 12, 98);
INSERT INTO `base_sys_role_menu` VALUES (306, '2021-02-26 14:32:36.685988', '2021-02-26 14:32:36.685988', 12, 99);
INSERT INTO `base_sys_role_menu` VALUES (307, '2021-02-26 14:32:36.778733', '2021-02-26 14:32:36.778733', 12, 100);
INSERT INTO `base_sys_role_menu` VALUES (308, '2021-02-26 14:32:36.874715', '2021-02-26 14:32:36.874715', 12, 101);
INSERT INTO `base_sys_role_menu` VALUES (309, '2021-02-26 14:32:36.973153', '2021-02-26 14:32:36.973153', 12, 8);
INSERT INTO `base_sys_role_menu` VALUES (310, '2021-02-26 14:32:37.082734', '2021-02-26 14:32:37.082734', 12, 10);
INSERT INTO `base_sys_role_menu` VALUES (311, '2021-02-26 14:32:37.176859', '2021-02-26 14:32:37.176859', 12, 11);
INSERT INTO `base_sys_role_menu` VALUES (312, '2021-02-26 14:32:37.271440', '2021-02-26 14:32:37.271440', 12, 12);
INSERT INTO `base_sys_role_menu` VALUES (313, '2021-02-26 14:32:37.365206', '2021-02-26 14:32:37.365206', 12, 13);
INSERT INTO `base_sys_role_menu` VALUES (314, '2021-02-26 14:32:37.457092', '2021-02-26 14:32:37.457092', 12, 22);
INSERT INTO `base_sys_role_menu` VALUES (315, '2021-02-26 14:32:37.549860', '2021-02-26 14:32:37.549860', 12, 23);
INSERT INTO `base_sys_role_menu` VALUES (316, '2021-02-26 14:32:37.645684', '2021-02-26 14:32:37.645684', 12, 24);
INSERT INTO `base_sys_role_menu` VALUES (317, '2021-02-26 14:32:37.743370', '2021-02-26 14:32:37.743370', 12, 25);
INSERT INTO `base_sys_role_menu` VALUES (318, '2021-02-26 14:32:37.837218', '2021-02-26 14:32:37.837218', 12, 26);
INSERT INTO `base_sys_role_menu` VALUES (319, '2021-02-26 14:32:37.930953', '2021-02-26 14:32:37.930953', 12, 69);
INSERT INTO `base_sys_role_menu` VALUES (320, '2021-02-26 14:32:38.031191', '2021-02-26 14:32:38.031191', 12, 70);
INSERT INTO `base_sys_role_menu` VALUES (321, '2021-02-26 14:32:38.130839', '2021-02-26 14:32:38.130839', 12, 71);
INSERT INTO `base_sys_role_menu` VALUES (322, '2021-02-26 14:32:38.229359', '2021-02-26 14:32:38.229359', 12, 72);
INSERT INTO `base_sys_role_menu` VALUES (323, '2021-02-26 14:32:38.323868', '2021-02-26 14:32:38.323868', 12, 73);
INSERT INTO `base_sys_role_menu` VALUES (324, '2021-02-26 14:32:38.415194', '2021-02-26 14:32:38.415194', 12, 74);
INSERT INTO `base_sys_role_menu` VALUES (325, '2021-02-26 14:32:38.505597', '2021-02-26 14:32:38.505597', 12, 75);
INSERT INTO `base_sys_role_menu` VALUES (326, '2021-02-26 14:32:38.600426', '2021-02-26 14:32:38.600426', 12, 76);
INSERT INTO `base_sys_role_menu` VALUES (327, '2021-02-26 14:32:38.698676', '2021-02-26 14:32:38.698676', 12, 77);
INSERT INTO `base_sys_role_menu` VALUES (328, '2021-02-26 14:32:38.793832', '2021-02-26 14:32:38.793832', 12, 78);
INSERT INTO `base_sys_role_menu` VALUES (329, '2021-02-26 14:32:38.889203', '2021-02-26 14:32:38.889203', 12, 79);
INSERT INTO `base_sys_role_menu` VALUES (330, '2021-02-26 14:32:38.985851', '2021-02-26 14:32:38.985851', 12, 80);
INSERT INTO `base_sys_role_menu` VALUES (331, '2021-02-26 14:32:39.092110', '2021-02-26 14:32:39.092110', 12, 81);
INSERT INTO `base_sys_role_menu` VALUES (332, '2021-02-26 14:32:39.188945', '2021-02-26 14:32:39.188945', 12, 82);
INSERT INTO `base_sys_role_menu` VALUES (333, '2021-02-26 14:32:39.280043', '2021-02-26 14:32:39.280043', 12, 83);
INSERT INTO `base_sys_role_menu` VALUES (334, '2021-02-26 14:32:39.374899', '2021-02-26 14:32:39.374899', 12, 105);
INSERT INTO `base_sys_role_menu` VALUES (335, '2021-02-26 14:32:39.473563', '2021-02-26 14:32:39.473563', 12, 102);
INSERT INTO `base_sys_role_menu` VALUES (336, '2021-02-26 14:32:39.570921', '2021-02-26 14:32:39.570921', 12, 103);
INSERT INTO `base_sys_role_menu` VALUES (337, '2021-02-26 14:32:39.665052', '2021-02-26 14:32:39.665052', 12, 29);
INSERT INTO `base_sys_role_menu` VALUES (338, '2021-02-26 14:32:39.760189', '2021-02-26 14:32:39.760189', 12, 30);
INSERT INTO `base_sys_role_menu` VALUES (339, '2021-02-26 14:32:39.852856', '2021-02-26 14:32:39.852856', 12, 47);
INSERT INTO `base_sys_role_menu` VALUES (340, '2021-02-26 14:32:39.944180', '2021-02-26 14:32:39.944180', 12, 48);
INSERT INTO `base_sys_role_menu` VALUES (341, '2021-02-26 14:32:40.038086', '2021-02-26 14:32:40.038086', 12, 84);
INSERT INTO `base_sys_role_menu` VALUES (342, '2021-02-26 14:32:40.135874', '2021-02-26 14:32:40.135874', 12, 90);
INSERT INTO `base_sys_role_menu` VALUES (343, '2021-02-26 14:32:40.234015', '2021-02-26 14:32:40.234015', 12, 85);
INSERT INTO `base_sys_role_menu` VALUES (355, '2021-02-26 14:32:54.538822', '2021-02-26 14:32:54.538822', 10, 1);
INSERT INTO `base_sys_role_menu` VALUES (356, '2021-02-26 14:32:54.634784', '2021-02-26 14:32:54.634784', 10, 96);
INSERT INTO `base_sys_role_menu` VALUES (357, '2021-02-26 14:32:54.732878', '2021-02-26 14:32:54.732878', 10, 45);
INSERT INTO `base_sys_role_menu` VALUES (358, '2021-02-26 14:32:54.826023', '2021-02-26 14:32:54.826023', 10, 43);
INSERT INTO `base_sys_role_menu` VALUES (359, '2021-02-26 14:32:54.920173', '2021-02-26 14:32:54.920173', 10, 49);
INSERT INTO `base_sys_role_menu` VALUES (360, '2021-02-26 14:32:55.019141', '2021-02-26 14:32:55.019141', 10, 86);
INSERT INTO `base_sys_role_menu` VALUES (361, '2021-02-26 14:32:55.119438', '2021-02-26 14:32:55.119438', 10, 2);
INSERT INTO `base_sys_role_menu` VALUES (362, '2021-02-26 14:32:55.211471', '2021-02-26 14:32:55.211471', 10, 27);
INSERT INTO `base_sys_role_menu` VALUES (363, '2021-02-26 14:32:55.304855', '2021-02-26 14:32:55.304855', 10, 97);
INSERT INTO `base_sys_role_menu` VALUES (364, '2021-02-26 14:32:55.397939', '2021-02-26 14:32:55.397939', 10, 59);
INSERT INTO `base_sys_role_menu` VALUES (365, '2021-02-26 14:32:55.491674', '2021-02-26 14:32:55.491674', 10, 60);
INSERT INTO `base_sys_role_menu` VALUES (366, '2021-02-26 14:32:55.584051', '2021-02-26 14:32:55.584051', 10, 61);
INSERT INTO `base_sys_role_menu` VALUES (367, '2021-02-26 14:32:55.676449', '2021-02-26 14:32:55.676449', 10, 62);
INSERT INTO `base_sys_role_menu` VALUES (368, '2021-02-26 14:32:55.774524', '2021-02-26 14:32:55.774524', 10, 63);
INSERT INTO `base_sys_role_menu` VALUES (369, '2021-02-26 14:32:55.871634', '2021-02-26 14:32:55.871634', 10, 65);
INSERT INTO `base_sys_role_menu` VALUES (370, '2021-02-26 14:32:55.964611', '2021-02-26 14:32:55.964611', 10, 98);
INSERT INTO `base_sys_role_menu` VALUES (371, '2021-02-26 14:32:56.074043', '2021-02-26 14:32:56.074043', 10, 99);
INSERT INTO `base_sys_role_menu` VALUES (372, '2021-02-26 14:32:56.169316', '2021-02-26 14:32:56.169316', 10, 100);
INSERT INTO `base_sys_role_menu` VALUES (373, '2021-02-26 14:32:56.263408', '2021-02-26 14:32:56.263408', 10, 101);
INSERT INTO `base_sys_role_menu` VALUES (374, '2021-02-26 14:32:56.356537', '2021-02-26 14:32:56.356537', 10, 8);
INSERT INTO `base_sys_role_menu` VALUES (375, '2021-02-26 14:32:56.448195', '2021-02-26 14:32:56.448195', 10, 10);
INSERT INTO `base_sys_role_menu` VALUES (376, '2021-02-26 14:32:56.544394', '2021-02-26 14:32:56.544394', 10, 11);
INSERT INTO `base_sys_role_menu` VALUES (377, '2021-02-26 14:32:56.641515', '2021-02-26 14:32:56.641515', 10, 12);
INSERT INTO `base_sys_role_menu` VALUES (378, '2021-02-26 14:32:56.735242', '2021-02-26 14:32:56.735242', 10, 13);
INSERT INTO `base_sys_role_menu` VALUES (379, '2021-02-26 14:32:56.828811', '2021-02-26 14:32:56.828811', 10, 22);
INSERT INTO `base_sys_role_menu` VALUES (380, '2021-02-26 14:32:56.922664', '2021-02-26 14:32:56.922664', 10, 23);
INSERT INTO `base_sys_role_menu` VALUES (381, '2021-02-26 14:32:57.016873', '2021-02-26 14:32:57.016873', 10, 24);
INSERT INTO `base_sys_role_menu` VALUES (382, '2021-02-26 14:32:57.123800', '2021-02-26 14:32:57.123800', 10, 25);
INSERT INTO `base_sys_role_menu` VALUES (383, '2021-02-26 14:32:57.223306', '2021-02-26 14:32:57.223306', 10, 26);
INSERT INTO `base_sys_role_menu` VALUES (384, '2021-02-26 14:32:57.328482', '2021-02-26 14:32:57.328482', 10, 69);
INSERT INTO `base_sys_role_menu` VALUES (385, '2021-02-26 14:32:57.430006', '2021-02-26 14:32:57.430006', 10, 70);
INSERT INTO `base_sys_role_menu` VALUES (386, '2021-02-26 14:32:57.521664', '2021-02-26 14:32:57.521664', 10, 71);
INSERT INTO `base_sys_role_menu` VALUES (387, '2021-02-26 14:32:57.612399', '2021-02-26 14:32:57.612399', 10, 72);
INSERT INTO `base_sys_role_menu` VALUES (388, '2021-02-26 14:32:57.705553', '2021-02-26 14:32:57.705553', 10, 73);
INSERT INTO `base_sys_role_menu` VALUES (389, '2021-02-26 14:32:57.799288', '2021-02-26 14:32:57.799288', 10, 74);
INSERT INTO `base_sys_role_menu` VALUES (390, '2021-02-26 14:32:57.893894', '2021-02-26 14:32:57.893894', 10, 75);
INSERT INTO `base_sys_role_menu` VALUES (391, '2021-02-26 14:32:57.988856', '2021-02-26 14:32:57.988856', 10, 76);
INSERT INTO `base_sys_role_menu` VALUES (392, '2021-02-26 14:32:58.090250', '2021-02-26 14:32:58.090250', 10, 77);
INSERT INTO `base_sys_role_menu` VALUES (393, '2021-02-26 14:32:58.196616', '2021-02-26 14:32:58.196616', 10, 78);
INSERT INTO `base_sys_role_menu` VALUES (394, '2021-02-26 14:32:58.288151', '2021-02-26 14:32:58.288151', 10, 79);
INSERT INTO `base_sys_role_menu` VALUES (395, '2021-02-26 14:32:58.378493', '2021-02-26 14:32:58.378493', 10, 80);
INSERT INTO `base_sys_role_menu` VALUES (396, '2021-02-26 14:32:58.471283', '2021-02-26 14:32:58.471283', 10, 81);
INSERT INTO `base_sys_role_menu` VALUES (397, '2021-02-26 14:32:58.564666', '2021-02-26 14:32:58.564666', 10, 82);
INSERT INTO `base_sys_role_menu` VALUES (398, '2021-02-26 14:32:58.658511', '2021-02-26 14:32:58.658511', 10, 83);
INSERT INTO `base_sys_role_menu` VALUES (399, '2021-02-26 14:32:58.752713', '2021-02-26 14:32:58.752713', 10, 105);
INSERT INTO `base_sys_role_menu` VALUES (400, '2021-02-26 14:32:58.849472', '2021-02-26 14:32:58.849472', 10, 102);
INSERT INTO `base_sys_role_menu` VALUES (401, '2021-02-26 14:32:58.948387', '2021-02-26 14:32:58.948387', 10, 103);
INSERT INTO `base_sys_role_menu` VALUES (402, '2021-02-26 14:32:59.042410', '2021-02-26 14:32:59.042410', 10, 29);
INSERT INTO `base_sys_role_menu` VALUES (403, '2021-02-26 14:32:59.132594', '2021-02-26 14:32:59.132594', 10, 30);
INSERT INTO `base_sys_role_menu` VALUES (404, '2021-02-26 14:32:59.226150', '2021-02-26 14:32:59.226150', 10, 47);
INSERT INTO `base_sys_role_menu` VALUES (405, '2021-02-26 14:32:59.319494', '2021-02-26 14:32:59.319494', 10, 48);
INSERT INTO `base_sys_role_menu` VALUES (406, '2021-02-26 14:32:59.413370', '2021-02-26 14:32:59.413370', 10, 84);
INSERT INTO `base_sys_role_menu` VALUES (407, '2021-02-26 14:32:59.507584', '2021-02-26 14:32:59.507584', 10, 90);
INSERT INTO `base_sys_role_menu` VALUES (408, '2021-02-26 14:32:59.604332', '2021-02-26 14:32:59.604332', 10, 85);
INSERT INTO `base_sys_role_menu` VALUES (517, '2023-02-20 11:01:17.272678', '2023-02-20 11:01:17.272678', 13, 1);
INSERT INTO `base_sys_role_menu` VALUES (518, '2023-02-20 11:01:17.384384', '2023-02-20 11:01:17.384384', 13, 96);
INSERT INTO `base_sys_role_menu` VALUES (519, '2023-02-20 11:01:17.509665', '2023-02-20 11:01:17.509665', 13, 45);
INSERT INTO `base_sys_role_menu` VALUES (520, '2023-02-20 11:01:17.613195', '2023-02-20 11:01:17.613195', 13, 43);
INSERT INTO `base_sys_role_menu` VALUES (521, '2023-02-20 11:01:17.717865', '2023-02-20 11:01:17.717865', 13, 49);
INSERT INTO `base_sys_role_menu` VALUES (522, '2023-02-20 11:01:17.821450', '2023-02-20 11:01:17.821450', 13, 86);
INSERT INTO `base_sys_role_menu` VALUES (523, '2023-02-20 11:01:17.928597', '2023-02-20 11:01:17.928597', 13, 2);
INSERT INTO `base_sys_role_menu` VALUES (524, '2023-02-20 11:01:18.042256', '2023-02-20 11:01:18.042256', 13, 27);
INSERT INTO `base_sys_role_menu` VALUES (525, '2023-02-20 11:01:18.152961', '2023-02-20 11:01:18.152961', 13, 97);
INSERT INTO `base_sys_role_menu` VALUES (526, '2023-02-20 11:01:18.264862', '2023-02-20 11:01:18.264862', 13, 59);
INSERT INTO `base_sys_role_menu` VALUES (527, '2023-02-20 11:01:18.375556', '2023-02-20 11:01:18.375556', 13, 60);
INSERT INTO `base_sys_role_menu` VALUES (528, '2023-02-20 11:01:18.486312', '2023-02-20 11:01:18.486312', 13, 61);
INSERT INTO `base_sys_role_menu` VALUES (529, '2023-02-20 11:01:18.604764', '2023-02-20 11:01:18.604764', 13, 62);
INSERT INTO `base_sys_role_menu` VALUES (530, '2023-02-20 11:01:18.708506', '2023-02-20 11:01:18.708506', 13, 63);
INSERT INTO `base_sys_role_menu` VALUES (531, '2023-02-20 11:01:18.810557', '2023-02-20 11:01:18.810557', 13, 65);
INSERT INTO `base_sys_role_menu` VALUES (532, '2023-02-20 11:01:18.912572', '2023-02-20 11:01:18.912572', 13, 98);
INSERT INTO `base_sys_role_menu` VALUES (533, '2023-02-20 11:01:19.012174', '2023-02-20 11:01:19.012174', 13, 99);
INSERT INTO `base_sys_role_menu` VALUES (534, '2023-02-20 11:01:19.111748', '2023-02-20 11:01:19.111748', 13, 100);
INSERT INTO `base_sys_role_menu` VALUES (535, '2023-02-20 11:01:19.210923', '2023-02-20 11:01:19.210923', 13, 101);
INSERT INTO `base_sys_role_menu` VALUES (536, '2023-02-20 11:01:19.314189', '2023-02-20 11:01:19.314189', 13, 8);
INSERT INTO `base_sys_role_menu` VALUES (537, '2023-02-20 11:01:19.428883', '2023-02-20 11:01:19.428883', 13, 10);
INSERT INTO `base_sys_role_menu` VALUES (538, '2023-02-20 11:01:19.552934', '2023-02-20 11:01:19.552934', 13, 11);
INSERT INTO `base_sys_role_menu` VALUES (539, '2023-02-20 11:01:19.663284', '2023-02-20 11:01:19.663284', 13, 12);
INSERT INTO `base_sys_role_menu` VALUES (540, '2023-02-20 11:01:19.771651', '2023-02-20 11:01:19.771651', 13, 13);
INSERT INTO `base_sys_role_menu` VALUES (541, '2023-02-20 11:01:19.879238', '2023-02-20 11:01:19.879238', 13, 22);
INSERT INTO `base_sys_role_menu` VALUES (542, '2023-02-20 11:01:19.987001', '2023-02-20 11:01:19.987001', 13, 23);
INSERT INTO `base_sys_role_menu` VALUES (543, '2023-02-20 11:01:20.095790', '2023-02-20 11:01:20.095790', 13, 24);
INSERT INTO `base_sys_role_menu` VALUES (544, '2023-02-20 11:01:20.201315', '2023-02-20 11:01:20.201315', 13, 25);
INSERT INTO `base_sys_role_menu` VALUES (545, '2023-02-20 11:01:20.308299', '2023-02-20 11:01:20.308299', 13, 26);
INSERT INTO `base_sys_role_menu` VALUES (546, '2023-02-20 11:01:20.414844', '2023-02-20 11:01:20.414844', 13, 69);
INSERT INTO `base_sys_role_menu` VALUES (547, '2023-02-20 11:01:20.528804', '2023-02-20 11:01:20.528804', 13, 70);
INSERT INTO `base_sys_role_menu` VALUES (548, '2023-02-20 11:01:20.635504', '2023-02-20 11:01:20.635504', 13, 71);
INSERT INTO `base_sys_role_menu` VALUES (549, '2023-02-20 11:01:20.749819', '2023-02-20 11:01:20.749819', 13, 72);
INSERT INTO `base_sys_role_menu` VALUES (550, '2023-02-20 11:01:20.864884', '2023-02-20 11:01:20.864884', 13, 73);
INSERT INTO `base_sys_role_menu` VALUES (551, '2023-02-20 11:01:20.970192', '2023-02-20 11:01:20.970192', 13, 74);
INSERT INTO `base_sys_role_menu` VALUES (552, '2023-02-20 11:01:21.074434', '2023-02-20 11:01:21.074434', 13, 75);
INSERT INTO `base_sys_role_menu` VALUES (553, '2023-02-20 11:01:21.179895', '2023-02-20 11:01:21.179895', 13, 76);
INSERT INTO `base_sys_role_menu` VALUES (554, '2023-02-20 11:01:21.286653', '2023-02-20 11:01:21.286653', 13, 77);
INSERT INTO `base_sys_role_menu` VALUES (555, '2023-02-20 11:01:21.389230', '2023-02-20 11:01:21.389230', 13, 78);
INSERT INTO `base_sys_role_menu` VALUES (556, '2023-02-20 11:01:21.498122', '2023-02-20 11:01:21.498122', 13, 79);
INSERT INTO `base_sys_role_menu` VALUES (557, '2023-02-20 11:01:21.608182', '2023-02-20 11:01:21.608182', 13, 80);
INSERT INTO `base_sys_role_menu` VALUES (558, '2023-02-20 11:01:21.716534', '2023-02-20 11:01:21.716534', 13, 81);
INSERT INTO `base_sys_role_menu` VALUES (559, '2023-02-20 11:01:21.821921', '2023-02-20 11:01:21.821921', 13, 82);
INSERT INTO `base_sys_role_menu` VALUES (560, '2023-02-20 11:01:21.924088', '2023-02-20 11:01:21.924088', 13, 83);
INSERT INTO `base_sys_role_menu` VALUES (561, '2023-02-20 11:01:22.027509', '2023-02-20 11:01:22.027509', 13, 105);
INSERT INTO `base_sys_role_menu` VALUES (562, '2023-02-20 11:01:22.138587', '2023-02-20 11:01:22.138587', 13, 102);
INSERT INTO `base_sys_role_menu` VALUES (563, '2023-02-20 11:01:22.248197', '2023-02-20 11:01:22.248197', 13, 103);
INSERT INTO `base_sys_role_menu` VALUES (564, '2023-02-20 11:01:22.348024', '2023-02-20 11:01:22.348024', 13, 29);
INSERT INTO `base_sys_role_menu` VALUES (565, '2023-02-20 11:01:22.450315', '2023-02-20 11:01:22.450315', 13, 30);
INSERT INTO `base_sys_role_menu` VALUES (566, '2023-02-20 11:01:22.561988', '2023-02-20 11:01:22.561988', 13, 47);
INSERT INTO `base_sys_role_menu` VALUES (567, '2023-02-20 11:01:22.672138', '2023-02-20 11:01:22.672138', 13, 48);
INSERT INTO `base_sys_role_menu` VALUES (568, '2023-02-20 11:01:22.791173', '2023-02-20 11:01:22.791173', 13, 84);
INSERT INTO `base_sys_role_menu` VALUES (569, '2023-02-20 11:01:22.898018', '2023-02-20 11:01:22.898018', 13, 90);
INSERT INTO `base_sys_role_menu` VALUES (570, '2023-02-20 11:01:23.008575', '2023-02-20 11:01:23.008575', 13, 85);

-- ----------------------------
-- Table structure for base_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_user`;
CREATE TABLE `base_sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `departmentId` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `passwordV` int NOT NULL DEFAULT 1 COMMENT '密码版本, 作用是改完密码，让原来的token失效',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `headImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 0:禁用 1：启用',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `socketId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'socketId',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_469ad55973f5b98930f6ad627b`(`username` ASC) USING BTREE,
  INDEX `IDX_0cf944da378d70a94f5fefd803`(`departmentId` ASC) USING BTREE,
  INDEX `IDX_9ec6d7ac6337eafb070e4881a8`(`phone` ASC) USING BTREE,
  INDEX `IDX_ca8611d15a63d52aa4e292e46a`(`createTime` ASC) USING BTREE,
  INDEX `IDX_a0f2f19cee18445998ece93ddd`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_user
-- ----------------------------
INSERT INTO `base_sys_user` VALUES (1, '2021-02-24 21:16:41.525157', '2023-03-08 15:11:51.000000', 1, '超级管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 7, '管理员', 'https://cool-js.com/admin/headimg.jpg', '18000000000', 'team@cool-js.com', 1, '拥有最高权限的用户', NULL);
INSERT INTO `base_sys_user` VALUES (24, '2021-02-26 14:17:38.000000', '2023-03-06 20:18:58.000000', 1, '小白', 'xiaobai', 'e10adc3949ba59abbe56e057f20f883e', 1, '小白', 'https://cool-js.com/admin/headimg.jpg', NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (25, '2021-02-26 14:28:25.000000', '2023-03-06 20:18:53.000000', 1, '小黑', 'xiaohei', 'e10adc3949ba59abbe56e057f20f883e', 1, '小黑', 'https://cool-js.com/admin/headimg.jpg', NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (26, '2021-02-26 14:28:49.000000', '2023-03-06 20:18:48.000000', 1, '小绿', 'xiaolv', 'e10adc3949ba59abbe56e057f20f883e', 1, '小绿', 'https://cool-js.com/admin/headimg.jpg', NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (27, '2021-02-26 14:29:23.000000', '2023-03-07 13:15:00.000000', 1, '小青', 'xiaoqin', 'e10adc3949ba59abbe56e057f20f883e', 1, '小青', 'https://cool-js.com/admin/headimg.jpg', NULL, NULL, 1, NULL, NULL);
INSERT INTO `base_sys_user` VALUES (28, '2021-02-26 14:29:52.000000', '2023-03-06 19:57:46.000000', 1, '神仙都没用', 'icssoa', 'e10adc3949ba59abbe56e057f20f883e', 1, '神仙都没用', 'https://cool-js.com/admin/headimg.jpg', NULL, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for base_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `base_sys_user_role`;
CREATE TABLE `base_sys_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userId` bigint NOT NULL COMMENT '用户ID',
  `roleId` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_fa9555e03e42fce748c9046b1c`(`createTime` ASC) USING BTREE,
  INDEX `IDX_3e36c0d2b1a4c659c6b4fc64b3`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_sys_user_role
-- ----------------------------
INSERT INTO `base_sys_user_role` VALUES (1, '2021-02-24 22:03:11.665805', '2021-02-24 22:03:11.665805', 1, 1);
INSERT INTO `base_sys_user_role` VALUES (2, '2021-02-25 11:03:55.325988', '2021-02-25 11:03:55.325988', 2, 1);
INSERT INTO `base_sys_user_role` VALUES (3, '2021-02-25 14:30:57.295150', '2021-02-25 14:30:57.295150', 3, 1);
INSERT INTO `base_sys_user_role` VALUES (4, '2021-02-25 14:39:32.975014', '2021-02-25 14:39:32.975014', 4, 1);
INSERT INTO `base_sys_user_role` VALUES (5, '2021-02-25 14:40:56.812948', '2021-02-25 14:40:56.812948', 5, 1);
INSERT INTO `base_sys_user_role` VALUES (6, '2021-02-25 14:44:08.436555', '2021-02-25 14:44:08.436555', 6, 1);
INSERT INTO `base_sys_user_role` VALUES (7, '2021-02-25 14:46:17.409232', '2021-02-25 14:46:17.409232', 7, 1);
INSERT INTO `base_sys_user_role` VALUES (8, '2021-02-25 14:47:47.211749', '2021-02-25 14:47:47.211749', 8, 1);
INSERT INTO `base_sys_user_role` VALUES (9, '2021-02-25 14:48:11.734024', '2021-02-25 14:48:11.734024', 9, 1);
INSERT INTO `base_sys_user_role` VALUES (10, '2021-02-25 14:50:48.288616', '2021-02-25 14:50:48.288616', 10, 1);
INSERT INTO `base_sys_user_role` VALUES (11, '2021-02-25 14:51:32.123884', '2021-02-25 14:51:32.123884', 11, 1);
INSERT INTO `base_sys_user_role` VALUES (12, '2021-02-25 15:46:26.356943', '2021-02-25 15:46:26.356943', 12, 1);
INSERT INTO `base_sys_user_role` VALUES (13, '2021-02-25 15:56:43.475155', '2021-02-25 15:56:43.475155', 13, 1);
INSERT INTO `base_sys_user_role` VALUES (14, '2021-02-25 16:03:14.417784', '2021-02-25 16:03:14.417784', 14, 1);
INSERT INTO `base_sys_user_role` VALUES (16, '2021-02-25 16:22:11.200152', '2021-02-25 16:22:11.200152', 16, 1);
INSERT INTO `base_sys_user_role` VALUES (17, '2021-02-25 17:44:37.635550', '2021-02-25 17:44:37.635550', 15, 1);
INSERT INTO `base_sys_user_role` VALUES (19, '2021-02-25 17:51:00.554812', '2021-02-25 17:51:00.554812', 18, 1);
INSERT INTO `base_sys_user_role` VALUES (21, '2021-02-25 17:54:41.375113', '2021-02-25 17:54:41.375113', 17, 1);
INSERT INTO `base_sys_user_role` VALUES (22, '2021-02-25 17:55:49.385301', '2021-02-25 17:55:49.385301', 20, 1);
INSERT INTO `base_sys_user_role` VALUES (24, '2021-02-25 17:58:35.452363', '2021-02-25 17:58:35.452363', 22, 1);
INSERT INTO `base_sys_user_role` VALUES (27, '2021-02-25 21:25:55.005236', '2021-02-25 21:25:55.005236', 19, 1);
INSERT INTO `base_sys_user_role` VALUES (28, '2021-02-26 13:50:05.633242', '2021-02-26 13:50:05.633242', 21, 8);
INSERT INTO `base_sys_user_role` VALUES (29, '2021-02-26 13:50:17.836990', '2021-02-26 13:50:17.836990', 23, 8);
INSERT INTO `base_sys_user_role` VALUES (45, '2023-02-16 19:11:10.029945', '2023-02-16 19:11:10.029945', 29, 10);
INSERT INTO `base_sys_user_role` VALUES (46, '2023-03-06 19:57:46.215729', '2023-03-06 19:57:46.215729', 28, 12);
INSERT INTO `base_sys_user_role` VALUES (47, '2023-03-06 19:57:46.228651', '2023-03-06 19:57:46.228651', 28, 10);
INSERT INTO `base_sys_user_role` VALUES (49, '2023-03-06 20:18:48.992031', '2023-03-06 20:18:48.992031', 26, 13);
INSERT INTO `base_sys_user_role` VALUES (50, '2023-03-06 20:18:53.818567', '2023-03-06 20:18:53.818567', 25, 13);
INSERT INTO `base_sys_user_role` VALUES (51, '2023-03-06 20:18:58.691102', '2023-03-06 20:18:58.691102', 24, 12);
INSERT INTO `base_sys_user_role` VALUES (52, '2023-03-06 20:28:45.169085', '2023-03-06 20:28:45.169085', 30, 11);
INSERT INTO `base_sys_user_role` VALUES (53, '2023-03-07 11:39:57.672383', '2023-03-07 11:39:57.672383', 31, 10);
INSERT INTO `base_sys_user_role` VALUES (54, '2023-03-07 13:15:00.326613', '2023-03-07 13:15:00.326613', 27, 11);

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `majorName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '专业名称',
  `classNum` bigint NULL DEFAULT 0 COMMENT '班级人数',
  `collegeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学院名字',
  `gradeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '年级名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_dab0ba17d6966ffb28043f631e`(`id` ASC) USING BTREE,
  INDEX `IDX_a195e4cc520794702d92f1c9a3`(`createTime` ASC) USING BTREE,
  INDEX `IDX_44fa6800efdc1d20e7fac56a3a`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (2, '2024-01-14 22:58:31.323000', '2024-01-21 23:23:58.679000', '大数据1班', 0, 'big_data', '2021');
INSERT INTO `class_info` VALUES (3, '2024-01-21 23:23:52.054000', '2024-01-21 23:23:52.054000', '计算机科学与技术1班', 0, 'math_computer', '2022');

-- ----------------------------
-- Table structure for comment_answer
-- ----------------------------
DROP TABLE IF EXISTS `comment_answer`;
CREATE TABLE `comment_answer`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userID` bigint NULL DEFAULT NULL COMMENT '所属用户',
  `commentID` bigint NULL DEFAULT NULL COMMENT '所属评价',
  `optionID` bigint NULL DEFAULT NULL COMMENT '所诉选项',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '答案',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_8f4603ef38637ecef6bcb3fc31`(`createTime` ASC) USING BTREE,
  INDEX `IDX_bb95aba506e9fed8d8dfdefe2c`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_answer
-- ----------------------------
INSERT INTO `comment_answer` VALUES (6, '2024-01-22 00:39:08.191940', '2024-01-22 00:39:08.191940', 1, 8, 5, '0');
INSERT INTO `comment_answer` VALUES (7, '2024-01-22 00:39:08.194752', '2024-01-22 00:39:08.194752', 1, 8, 7, '[0,1]');
INSERT INTO `comment_answer` VALUES (8, '2024-01-22 00:39:08.198195', '2024-01-22 00:39:08.198195', 1, 8, 9, '0');
INSERT INTO `comment_answer` VALUES (9, '2024-01-22 00:39:08.200915', '2024-01-22 00:39:08.200915', 1, 8, 11, '\"haode\"');
INSERT INTO `comment_answer` VALUES (10, '2024-01-23 20:31:53.762893', '2024-01-23 20:32:54.614825', 2, 8, 5, '0');
INSERT INTO `comment_answer` VALUES (11, '2024-01-23 20:31:53.770262', '2024-01-23 20:32:54.619660', 2, 8, 7, '[0]');
INSERT INTO `comment_answer` VALUES (12, '2024-01-23 20:31:53.775111', '2024-01-23 20:32:54.623034', 2, 8, 9, '1');
INSERT INTO `comment_answer` VALUES (13, '2024-01-23 20:31:53.777861', '2024-01-23 20:32:54.626363', 2, 8, 11, '\"就离谱\"');

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评价内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评价类型 0-单项选择 1-多项选择 2-判断 3-客观',
  `options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选项',
  `commentID` bigint NULL DEFAULT NULL COMMENT '所属评价',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_494dca0008e9e7979edfbc98aa`(`createTime` ASC) USING BTREE,
  INDEX `IDX_c8add1b0a7815932a158cdfbbc`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
INSERT INTO `comment_info` VALUES (5, '2024-01-21 23:56:03.392957', '2024-01-21 23:56:03.392957', '这是单选题', '0', '[\"号的\",\"不好\"]', 8);
INSERT INTO `comment_info` VALUES (6, '2024-01-21 23:56:03.393837', '2024-01-21 23:56:03.393837', '这是单选题', '0', '[\"号的\",\"不好\"]', 9);
INSERT INTO `comment_info` VALUES (7, '2024-01-21 23:56:03.398649', '2024-01-21 23:56:03.398649', '43', '1', '[\"54\",\"543\"]', 8);
INSERT INTO `comment_info` VALUES (8, '2024-01-21 23:56:03.401152', '2024-01-21 23:56:03.401152', '43', '1', '[\"54\",\"543\"]', 9);
INSERT INTO `comment_info` VALUES (9, '2024-01-21 23:56:03.403243', '2024-01-21 23:56:03.403243', '正确吗', '2', '[\"×\",\"√\"]', 8);
INSERT INTO `comment_info` VALUES (10, '2024-01-21 23:56:03.405799', '2024-01-21 23:56:03.405799', '正确吗', '2', '[\"×\",\"√\"]', 9);
INSERT INTO `comment_info` VALUES (11, '2024-01-21 23:56:03.407756', '2024-01-21 23:56:03.407756', '减速你的问题', '3', '[]', 8);
INSERT INTO `comment_info` VALUES (12, '2024-01-21 23:56:03.409966', '2024-01-21 23:56:03.409966', '减速你的问题', '3', '[]', 9);

-- ----------------------------
-- Table structure for comment_list
-- ----------------------------
DROP TABLE IF EXISTS `comment_list`;
CREATE TABLE `comment_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `teacherID` bigint NULL DEFAULT NULL COMMENT '所属用户',
  `classID` bigint NULL DEFAULT NULL COMMENT '所属班级',
  `endTime` timestamp NULL DEFAULT NULL COMMENT '截至时间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '问卷标题',
  `isAnonymous` tinyint NULL DEFAULT 1 COMMENT '是否匿名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_ebdf247f8f025013410105c921`(`createTime` ASC) USING BTREE,
  INDEX `IDX_f12fa4f3ca111789493dc07573`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_list
-- ----------------------------
INSERT INTO `comment_list` VALUES (8, '2024-01-21 23:56:03.379672', '2024-01-22 00:38:52.510664', 4, 2, '2024-01-26 00:00:00', '测试问卷111', 1);
INSERT INTO `comment_list` VALUES (9, '2024-01-21 23:56:03.380379', '2024-01-27 23:58:54.000000', 4, 3, '2024-01-21 00:00:00', '测试问卷111', 1);

-- ----------------------------
-- Table structure for comment_options
-- ----------------------------
DROP TABLE IF EXISTS `comment_options`;
CREATE TABLE `comment_options`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `commentInfoID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属评价',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选项内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_96b33f3c75dd39d34f9ed42fd3`(`createTime` ASC) USING BTREE,
  INDEX `IDX_4728be5085c740c92ae61a3ad6`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_options
-- ----------------------------

-- ----------------------------
-- Table structure for course_management
-- ----------------------------
DROP TABLE IF EXISTS `course_management`;
CREATE TABLE `course_management`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `teacherID` bigint NULL DEFAULT NULL COMMENT '教师ID',
  `teacherName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '教师姓名',
  `courseName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '课程名称',
  `grade` bigint NULL DEFAULT NULL COMMENT '年级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_12788204cc70eed3cf79c1c725`(`id` ASC) USING BTREE,
  INDEX `IDX_82cabf0e60262ec062aa3681e6`(`createTime` ASC) USING BTREE,
  INDEX `IDX_b0a735a4875ecda49914ad6f29`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_management
-- ----------------------------

-- ----------------------------
-- Table structure for dict_info
-- ----------------------------
DROP TABLE IF EXISTS `dict_info`;
CREATE TABLE `dict_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `typeId` int NOT NULL COMMENT '类型ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '值',
  `orderNum` int NOT NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `parentId` int NULL DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_5c311a4af30de1181a5d7a7cc2`(`createTime` ASC) USING BTREE,
  INDEX `IDX_10362a62adbf120821fff209d8`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dict_info
-- ----------------------------
INSERT INTO `dict_info` VALUES (1, '2024-01-13 20:56:49.141000', '2024-01-13 21:10:39.090000', 1, '大数据与智能工程学院', 'big_data', 1, NULL, NULL);
INSERT INTO `dict_info` VALUES (2, '2024-01-13 20:57:56.875000', '2024-01-13 20:58:36.775000', 1, '数学与计算机学院', 'math_computer', 1, NULL, NULL);
INSERT INTO `dict_info` VALUES (3, '2024-01-13 20:59:17.051000', '2024-01-13 21:02:12.639000', 1, '计算机科学与技术', 'cst', 1, NULL, 2);
INSERT INTO `dict_info` VALUES (4, '2024-01-13 21:01:04.166000', '2024-01-13 21:02:03.455000', 1, '数学与应用数学', 'mam', 1, NULL, 2);
INSERT INTO `dict_info` VALUES (5, '2024-01-13 21:11:38.334000', '2024-01-13 21:11:38.334000', 1, '数据科学与大数据技术', 'data_science', 1, NULL, 1);
INSERT INTO `dict_info` VALUES (11, '2024-01-13 21:27:14.521000', '2024-01-13 21:27:14.521000', 5, '2020级', '2020', 1, NULL, NULL);
INSERT INTO `dict_info` VALUES (12, '2024-01-13 21:27:24.509000', '2024-01-13 21:27:24.509000', 5, '2021级', '2021', 1, NULL, NULL);
INSERT INTO `dict_info` VALUES (13, '2024-01-13 21:27:31.095000', '2024-01-13 21:27:31.095000', 5, '2022级', '2022', 1, NULL, NULL);
INSERT INTO `dict_info` VALUES (14, '2024-01-13 21:27:38.441000', '2024-01-13 21:27:38.442000', 5, '2023级', '2023', 1, NULL, NULL);

-- ----------------------------
-- Table structure for dict_type
-- ----------------------------
DROP TABLE IF EXISTS `dict_type`;
CREATE TABLE `dict_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_69734e5c2d29cc2139d5078f2c`(`createTime` ASC) USING BTREE,
  INDEX `IDX_6cccb2e33846cd354e8dc0e0ef`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dict_type
-- ----------------------------
INSERT INTO `dict_type` VALUES (1, '2024-01-13 15:17:00.219000', '2024-01-13 15:17:00.219000', '学院信息', 'college_info');
INSERT INTO `dict_type` VALUES (5, '2024-01-13 21:26:53.435000', '2024-01-13 21:26:53.435000', '年级信息', 'grade_info');

-- ----------------------------
-- Table structure for query-result-cache
-- ----------------------------
DROP TABLE IF EXISTS `query-result-cache`;
CREATE TABLE `query-result-cache`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` bigint NOT NULL,
  `duration` int NOT NULL,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of query-result-cache
-- ----------------------------

-- ----------------------------
-- Table structure for recycle_data
-- ----------------------------
DROP TABLE IF EXISTS `recycle_data`;
CREATE TABLE `recycle_data`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `entityInfo` json NOT NULL COMMENT '表',
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作人',
  `data` json NOT NULL COMMENT '被删除的数据',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求的接口',
  `params` json NULL COMMENT '请求参数',
  `count` int NOT NULL DEFAULT 1 COMMENT '删除数据条数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_59fc783673f4a322e9c83e0599`(`createTime` ASC) USING BTREE,
  INDEX `IDX_c6a499c4a4fcd37f2930d27816`(`updateTime` ASC) USING BTREE,
  INDEX `IDX_f3ed09ba7090f3eb378cb83b5b`(`userId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recycle_data
-- ----------------------------

-- ----------------------------
-- Table structure for space_info
-- ----------------------------
DROP TABLE IF EXISTS `space_info`;
CREATE TABLE `space_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型',
  `classifyId` bigint NULL DEFAULT NULL COMMENT '分类ID',
  `fileId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件名',
  `size` int NOT NULL COMMENT '文件大小',
  `version` int NOT NULL DEFAULT 1 COMMENT '文档版本',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件位置',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_eb1da2f304c760846b5add09b3`(`createTime` ASC) USING BTREE,
  INDEX `IDX_d7a2539961e9aacba8b353f3c9`(`updateTime` ASC) USING BTREE,
  INDEX `IDX_0975633032bfe6574468b3a4ae`(`fileId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of space_info
-- ----------------------------

-- ----------------------------
-- Table structure for space_type
-- ----------------------------
DROP TABLE IF EXISTS `space_type`;
CREATE TABLE `space_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类别名称',
  `parentId` tinyint NULL DEFAULT NULL COMMENT '父分类ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_6669449501d275f367ca295472`(`createTime` ASC) USING BTREE,
  INDEX `IDX_0749b509b68488caecd4cc2bbc`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of space_type
-- ----------------------------

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userID` bigint NULL DEFAULT NULL COMMENT '所属用户',
  `studentName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `studentNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生学号',
  `studentSex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生性别',
  `classID` int NULL DEFAULT NULL COMMENT '所在班级',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_b99a0fb656053f8d0b3eaa7a85`(`createTime` ASC) USING BTREE,
  INDEX `IDX_5105c919a1d4fba71d6bf23241`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES (4, '2024-01-21 18:15:52.057866', '2024-01-21 18:15:52.057866', 1, '刘明江', '20190551106', '男', 2);

-- ----------------------------
-- Table structure for task_info
-- ----------------------------
DROP TABLE IF EXISTS `task_info`;
CREATE TABLE `task_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `jobId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务ID',
  `repeatConf` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务配置',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'cron',
  `limit` int NULL DEFAULT NULL COMMENT '最大执行次数 不传为无限次',
  `every` int NULL DEFAULT NULL COMMENT '每间隔多少毫秒执行一次 如果cron设置了 这项设置就无效',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 0:停止 1：运行',
  `startDate` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `endDate` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据',
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行的service实例ID',
  `type` tinyint NOT NULL DEFAULT 0 COMMENT '状态 0:系统 1：用户',
  `nextRunTime` datetime NULL DEFAULT NULL COMMENT '下一次执行时间',
  `taskType` tinyint NOT NULL DEFAULT 0 COMMENT '状态 0:cron 1：时间间隔',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_6ced02f467e59bd6306b549bb0`(`createTime` ASC) USING BTREE,
  INDEX `IDX_2adc6f9c241391126f27dac145`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_info
-- ----------------------------

-- ----------------------------
-- Table structure for task_log
-- ----------------------------
DROP TABLE IF EXISTS `task_log`;
CREATE TABLE `task_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `taskId` bigint NULL DEFAULT NULL COMMENT '任务ID',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态 0-失败 1-成功',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '详情描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_b9af0e100be034924b270aab31`(`createTime` ASC) USING BTREE,
  INDEX `IDX_8857d8d43d38bebd7159af1fa6`(`updateTime` ASC) USING BTREE,
  INDEX `IDX_1142dfec452e924b346f060fda`(`taskId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_log
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_class
-- ----------------------------
DROP TABLE IF EXISTS `teacher_class`;
CREATE TABLE `teacher_class`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `userID` bigint NULL DEFAULT NULL COMMENT '用户id',
  `classID` bigint NULL DEFAULT NULL COMMENT '班级id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_4531afbd553b83d1821f2316c8`(`createTime` ASC) USING BTREE,
  INDEX `IDX_09ff38d5c08fad2fd4fddbb149`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_class
-- ----------------------------
INSERT INTO `teacher_class` VALUES (3, '2024-01-21 23:27:29.625114', '2024-01-21 23:27:29.625114', 1, 2);
INSERT INTO `teacher_class` VALUES (4, '2024-01-21 23:27:29.626990', '2024-01-21 23:27:29.626990', 1, 3);

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `teacherName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '教师姓名',
  `status` tinyint NULL DEFAULT 0 COMMENT '审核状态 0-待审核 1-审核通过',
  `teacherTitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '教师职称',
  `userID` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `collegeID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学院',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_9737bae5294883e305acd78c4c`(`id` ASC) USING BTREE,
  UNIQUE INDEX `IDX_3675c72c1f5a97b9c18601f7c4`(`userID` ASC) USING BTREE,
  INDEX `IDX_79b970902910fac88cfc52e760`(`createTime` ASC) USING BTREE,
  INDEX `IDX_fa2977c7bd4c0ef60c42db2da2`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES (4, '2024-01-21 23:27:29.619267', '2024-01-21 23:27:29.619267', '刘明江', 0, '教授', 1, 'big_data');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录唯一ID',
  `avatarUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `gender` int NOT NULL DEFAULT 0 COMMENT '性别 0-未知 1-男 2-女',
  `status` int NOT NULL DEFAULT 1 COMMENT '状态 0-禁用 1-正常',
  `loginType` int NOT NULL DEFAULT 0 COMMENT '登录方式 0-小程序 1-公众号 2-H5',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_6edeceee578056a2c1e493563a`(`unionid` ASC) USING BTREE,
  UNIQUE INDEX `IDX_9234e7bac72991a93b172618e2`(`phone` ASC) USING BTREE,
  INDEX `IDX_e6386e92c288d85dbc43ac53f7`(`createTime` ASC) USING BTREE,
  INDEX `IDX_5271afbb87138d688b6220b589`(`updateTime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '2024-01-14 23:09:05.915970', '2024-01-14 23:09:05.915970', 'oNkwi5dB0Q5n3Ym1659sov97U82E', 'http://127.0.0.1:8001/public/uploads/20240114/dbf2b120-b2ee-11ee-808c-d97e7065d62f.png', '微信用户', NULL, 0, 1, 0);

-- ----------------------------
-- Table structure for user_wx
-- ----------------------------
DROP TABLE IF EXISTS `user_wx`;
CREATE TABLE `user_wx`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信unionid',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '微信openid',
  `avatarUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` int NOT NULL DEFAULT 0 COMMENT '性别 0-未知 1-男 2-女',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '语言',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `type` int NOT NULL DEFAULT 0 COMMENT '类型 0-小程序 1-公众号 2-H5 3-APP',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_e23b473abf5a6b00e44f3fd842`(`createTime` ASC) USING BTREE,
  INDEX `IDX_049adb91204e94c1ede5e6dd23`(`updateTime` ASC) USING BTREE,
  INDEX `IDX_d22b5fa040a01ec1b09e1e181e`(`unionid` ASC) USING BTREE,
  INDEX `IDX_7946849febadd93cf81fc2b53f`(`openid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_wx
-- ----------------------------
INSERT INTO `user_wx` VALUES (1, '2024-01-14 23:09:05.707315', '2024-01-14 23:09:05.707315', NULL, 'oNkwi5dB0Q5n3Ym1659sov97U82E', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '微信用户', 0, '', '', '', '', 0);

SET FOREIGN_KEY_CHECKS = 1;
