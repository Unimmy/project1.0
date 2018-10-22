/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : project

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 20/10/2018 15:18:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pro_imgs
-- ----------------------------
DROP TABLE IF EXISTS `pro_imgs`;
CREATE TABLE `pro_imgs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_url1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pro_imgs
-- ----------------------------
INSERT INTO `pro_imgs` VALUES (1, 'http://127.0.0.1:3000/images/shouban.png', '手办', 'http://127.0.0.1:3000/images/shouban2.png');
INSERT INTO `pro_imgs` VALUES (2, 'http://127.0.0.1:3000/images/gaoda.png', '高达', 'http://127.0.0.1:3000/images/gaoda2.png');
INSERT INTO `pro_imgs` VALUES (3, 'http://127.0.0.1:3000/images/shipin.png', '饰品', 'http://127.0.0.1:3000/images/shipin2.png');
INSERT INTO `pro_imgs` VALUES (4, 'http://127.0.0.1:3000/images/zhongbiao.png', '钟表', 'http://127.0.0.1:3000/images/zhongbiao2.png');
INSERT INTO `pro_imgs` VALUES (5, 'http://127.0.0.1:3000/images/xiangbao.png', '箱包', 'http://127.0.0.1:3000/images/xiangbao2.png');
INSERT INTO `pro_imgs` VALUES (6, 'http://127.0.0.1:3000/images/jiaju.png', '家居', 'http://127.0.0.1:3000/images/jiaju2.png');
INSERT INTO `pro_imgs` VALUES (7, 'http://127.0.0.1:3000/images/shuma.png', '数码', 'http://127.0.0.1:3000/images/shuma2.png');
INSERT INTO `pro_imgs` VALUES (8, 'http://127.0.0.1:3000/images/lingshi.png', '零食', 'http://127.0.0.1:3000/images/lingshi2.png');
INSERT INTO `pro_imgs` VALUES (9, 'http://127.0.0.1:3000/images/cos.png', 'cos', 'http://127.0.0.1:3000/images/cos2.png');
INSERT INTO `pro_imgs` VALUES (10, 'http://127.0.0.1:3000/images/zhuoyou.png', '桌游', 'http://127.0.0.1:3000/images/zhuoyou2.png');
INSERT INTO `pro_imgs` VALUES (11, 'http://127.0.0.1:3000/images/shebei.png', '设备', 'http://127.0.0.1:3000/images/shebei2.png');
INSERT INTO `pro_imgs` VALUES (12, 'http://127.0.0.1:3000/images/qianbao.png', '钱包', 'http://127.0.0.1:3000/images/qianbao2.png');

-- ----------------------------
-- Table structure for pro_news
-- ----------------------------
DROP TABLE IF EXISTS `pro_news`;
CREATE TABLE `pro_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `click` int(11) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_news
-- ----------------------------
INSERT INTO `pro_news` VALUES (1, '123', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:21:12');
INSERT INTO `pro_news` VALUES (2, '123', '123', 0, 'http://127.0.0.1:3000/images/banner2.png', '2018-09-27 22:21:32');
INSERT INTO `pro_news` VALUES (3, '123', '123', 0, 'http://127.0.0.1:3000/images/banner2.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (4, '123', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (5, '124', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (6, '125', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (7, '126', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (8, '127', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (9, '128', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (10, '129', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02');
INSERT INTO `pro_news` VALUES (11, '123', '123', 0, 'http://127.0.0.1:3000/images/banner2.png', '2018-09-27 22:22:12');
INSERT INTO `pro_news` VALUES (12, '123', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');
INSERT INTO `pro_news` VALUES (13, '124', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');
INSERT INTO `pro_news` VALUES (14, '125', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');
INSERT INTO `pro_news` VALUES (15, '126', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');
INSERT INTO `pro_news` VALUES (16, '127', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');
INSERT INTO `pro_news` VALUES (17, '128', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');
INSERT INTO `pro_news` VALUES (18, '129', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');

-- ----------------------------
-- Table structure for pro_products
-- ----------------------------
DROP TABLE IF EXISTS `pro_products`;
CREATE TABLE `pro_products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `p_imgurl` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_imgurl_big` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `p_imgurl_small` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pro_products
-- ----------------------------
INSERT INTO `pro_products` VALUES (1, 1, '../images/index_gaoda_2.jpg', '夏亚专用扎古', 'http://127.0.0.1:3000/images/index_gaoda_2.jpg', 'http://127.0.0.1:3000/images/index_gaoda_2.jpg');
INSERT INTO `pro_products` VALUES (2, 2, '../images/index_gaoda_3.jpg', '报丧女妖爆甲', 'http://127.0.0.1:3000/images/index_gaoda_3.jpg', 'http://127.0.0.1:3000/images/index_gaoda_3.jpg');
INSERT INTO `pro_products` VALUES (3, 3, '../images/index_gaoda_4.jpg', '万代强袭自由', 'http://127.0.0.1:3000/images/index_gaoda_4.jpg', 'http://127.0.0.1:3000/images/index_gaoda_4.jpg');
INSERT INTO `pro_products` VALUES (4, 4, '../images/index_gaoda_5.jpg', '高达00升降机', 'http://127.0.0.1:3000/images/index_gaoda_5.jpg', 'http://127.0.0.1:3000/images/index_gaoda_5.jpg');
INSERT INTO `pro_products` VALUES (5, 5, '../images/index_shouban_1.jpg', '刀剑乱舞小狐丸', 'http://127.0.0.1:3000/images/index_shouban_1.jpg', 'http://127.0.0.1:3000/images/index_shouban_1.jpg');
INSERT INTO `pro_products` VALUES (6, 6, '../images/index_shouban_2.jpg', 'Love Live! 雪人南小鸟', 'http://127.0.0.1:3000/images/index_shouban_2.jpg', 'http://127.0.0.1:3000/images/index_shouban_2.jpg');
INSERT INTO `pro_products` VALUES (7, 7, '../images/index_shouban_3.jpg', '太刃黑岩', 'http://127.0.0.1:3000/images/index_shouban_3.jpg', 'http://127.0.0.1:3000/images/index_shouban_3.jpg');
INSERT INTO `pro_products` VALUES (8, 8, '../images/index_shouban_4.jpg', '初音歌姬计划小红帽', 'http://127.0.0.1:3000/images/index_shouban_4.jpg', 'http://127.0.0.1:3000/images/index_shouban_4.jpg');

-- ----------------------------
-- Table structure for pro_user
-- ----------------------------
DROP TABLE IF EXISTS `pro_user`;
CREATE TABLE `pro_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_user
-- ----------------------------
INSERT INTO `pro_user` VALUES (1, 'tom', 'e10adc3949ba59abbe56e057f20f883e', 'tom@163.com', '13800138000', NULL);
INSERT INTO `pro_user` VALUES (2, 'jerry', 'e10adc3949ba59abbe56e057f20f883e', 'jerry@163.com', '13800138001', NULL);
INSERT INTO `pro_user` VALUES (3, 'dongdong', 'e10adc3949ba59abbe56e057f20f883e', 'dongdong@qq.com', '13800138002', NULL);
INSERT INTO `pro_user` VALUES (4, 'jim', 'e10adc3949ba59abbe56e057f20f883e', 'jim@outlook.com', '13800138003', NULL);
INSERT INTO `pro_user` VALUES (5, 'jane', 'e10adc3949ba59abbe56e057f20f883e', 'jane@sina.com', '13800138004', NULL);

-- ----------------------------
-- Table structure for pro_user_download_res
-- ----------------------------
DROP TABLE IF EXISTS `pro_user_download_res`;
CREATE TABLE `pro_user_download_res`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `liuyan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pro_user_download_res
-- ----------------------------
INSERT INTO `pro_user_download_res` VALUES (1, NULL, '', '', NULL, '');
INSERT INTO `pro_user_download_res` VALUES (2, NULL, '', '', NULL, '');
INSERT INTO `pro_user_download_res` VALUES (3, NULL, '', '', NULL, '');
INSERT INTO `pro_user_download_res` VALUES (4, NULL, '', '', NULL, '');
INSERT INTO `pro_user_download_res` VALUES (5, NULL, '', '', NULL, '');
INSERT INTO `pro_user_download_res` VALUES (6, NULL, '', '', NULL, '');
INSERT INTO `pro_user_download_res` VALUES (7, NULL, '', '', NULL, '');
INSERT INTO `pro_user_download_res` VALUES (8, NULL, '123456497', '1231231231', NULL, 'dasdasdasdas');

SET FOREIGN_KEY_CHECKS = 1;
