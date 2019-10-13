/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : juanpi

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-10-12 23:41:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sid` int(8) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oldprice` float(10,2) NOT NULL,
  `price` float(10,2) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int(8) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('13344445555', '2095', '搭扣尖头细高跟鞋单鞋', '498.00', '49.00', 'https://goods6.juancdn.com/goods/190830/a/c/5d68dd08b6f8ea715e1da149_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '1', '卡其', '39');
INSERT INTO `car` VALUES ('13344445555', '2086', '尖头平底晚晚鞋女单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190902/7/f/5d6bf60fb6f8ea76be0bca23_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '2', '卡其', '39');
INSERT INTO `car` VALUES ('13344445555', '2091', '帆布鞋女韩版秋鞋', '189.00', '27.00', 'https://goods2.juancdn.com/goods/190925/2/9/5d8b1ae5b6f8ea77d351ba11_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '1', '卡其', '41');
INSERT INTO `car` VALUES ('13762780801', '2086', '尖头平底晚晚鞋女单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190902/7/f/5d6bf60fb6f8ea76be0bca23_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '1', '黑色', '42');
INSERT INTO `car` VALUES ('13762780801', '2095', '搭扣尖头细高跟鞋单鞋', '498.00', '49.00', 'https://goods6.juancdn.com/goods/190830/a/c/5d68dd08b6f8ea715e1da149_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '1', '黑色', '39');
INSERT INTO `car` VALUES ('13762780801', '1926', '秋季百搭简约针织开衫', '249.00', '64.00', 'https://goods4.juancdn.com/goods/190830/7/d/5d687d11b6f8ea715c07c874_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '4', '酒红', '41');

-- ----------------------------
-- Table structure for guanli
-- ----------------------------
DROP TABLE IF EXISTS `guanli`;
CREATE TABLE `guanli` (
  `ming` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guanli
-- ----------------------------
INSERT INTO `guanli` VALUES ('admin', '123456');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `sid` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `oldprice` float(10,2) NOT NULL,
  `price` float(10,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `tempo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('2098', '珍珠细高跟鞋女春单鞋', '598.00', '59.00', 'https://goods7.juancdn.com/goods/190216/c/9/5c67c45933b089348a0d1b79_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2097', '复古奶奶鞋平底女鞋', '298.00', '29.00', 'https://goods4.juancdn.com/goods/190808/7/2/5d4af684b6f8ea36a314f3d9_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2096', '秋季圆头粗高跟女短靴', '398.00', '49.00', 'https://goods2.juancdn.com/goods/190830/2/9/5d68ef2d33b0891bf2250c09_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2095', '搭扣尖头细高跟鞋单鞋', '498.00', '49.00', 'https://goods6.juancdn.com/goods/190830/a/c/5d68dd08b6f8ea715e1da149_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2094', '搭扣尖头网红女秋单鞋', '398.00', '39.00', 'https://goods8.juancdn.com/goods/190830/f/f/5d68e41633b08914c460a3e8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2093', '富贵鸟舒适时尚袜子鞋', '498.00', '149.00', 'https://goods6.juancdn.com/goods/190213/a/b/5c6417fd33b0890fb45a18a4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2092', '百搭搭扣尖头女秋单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190731/7/5/5d41acf233b089176507bbe7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2091', '帆布鞋女韩版秋鞋', '189.00', '27.00', 'https://goods2.juancdn.com/goods/190925/2/9/5d8b1ae5b6f8ea77d351ba11_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2090', '玛丽珍鞋链子平底单鞋', '298.00', '39.00', 'https://goods5.juancdn.com/goods/190731/8/9/5d41b516b6f8ea1bc043b4ef_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2089', '英伦格子低跟女豆豆鞋', '298.00', '29.00', 'https://goods7.juancdn.com/goods/190731/c/b/5d41b41cb6f8ea1e09282c9f_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2088', '韩版百搭布鞋原宿', '189.00', '26.00', 'https://goods4.juancdn.com/goods/190925/6/9/5d8b1365b6f8ea6ddb6573f5_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2087', '富贵鸟增高休闲袜子鞋', '498.00', '149.00', 'https://goods3.juancdn.com/goods/190213/4/3/5c63e0b933b08957d0164fbf_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2086', '尖头平底晚晚鞋女单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190902/7/f/5d6bf60fb6f8ea76be0bca23_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2085', '加绒毛毛鞋平底豆豆鞋', '498.00', '49.00', 'https://goods5.juancdn.com/goods/191002/8/2/5d94b08033b08908632841ef_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2084', '富贵鸟内增高厚底女鞋', '598.00', '179.00', 'https://goods1.juancdn.com/goods/181128/0/e/5bfe7de733b0890bfe494b4e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2083', '蝴蝶结中粗跟女秋单鞋', '498.00', '49.00', 'https://goods8.juancdn.com/goods/190902/e/d/5d6cdddbb6f8ea678a7024f4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2082', '富贵鸟内增高厚底女鞋', '598.00', '179.00', 'https://goods4.juancdn.com/goods/181128/6/6/5bfe7cd433b0893c090ad555_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2081', '富贵鸟加绒休闲运动鞋', '498.00', '138.00', 'https://goods1.juancdn.com/goods/181116/0/b/5bee8217b6f8ea14f71f713c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2080', '尖头酒杯跟高跟鞋单鞋', '498.00', '49.00', 'https://goods6.juancdn.com/goods/190922/a/0/5d879161b6f8ea23c429ef89_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2079', '尖头方根懒人鞋女单鞋', '498.00', '49.00', 'https://goods3.juancdn.com/goods/190830/4/a/5d68df4433b0891d3556e5d5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2078', '富贵鸟网面透气女鞋', '498.00', '119.00', 'https://goods5.juancdn.com/goods/190308/9/4/5c8286f833b0895865653904_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2077', '搭扣奶奶鞋一脚蹬单鞋', '298.00', '29.00', 'https://goods3.juancdn.com/goods/190902/4/a/5d6bf4db33b089085117dc84_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2076', '帆布鞋chic韩风运动鞋', '189.00', '27.00', 'https://goods4.juancdn.com/goods/190925/7/8/5d8b1dfc33b08934af075856_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2075', '富贵鸟牛皮中跟女单鞋', '598.00', '119.00', 'https://goods2.juancdn.com/goods/190309/2/4/5c829e74b6f8ea143e2a8518_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2074', '富贵鸟休闲加绒一脚蹬', '498.00', '98.00', 'https://goods6.juancdn.com/goods/181020/a/2/5bcafbcbb6f8ea7d7d279753_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2073', '富贵鸟飞织休闲运动鞋', '498.00', '119.00', 'https://goods5.juancdn.com/goods/190213/8/3/5c63c0b7b6f8ea75a96f2028_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2072', '拼接方根前拉链女短靴', '598.00', '59.00', 'https://goods7.juancdn.com/goods/190922/d/2/5d87993933b089699669627b_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2071', '富贵鸟百搭飞织运动鞋', '498.00', '119.00', 'https://goods5.juancdn.com/goods/190213/8/4/5c63d14033b089311d0f7930_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2070', '富贵鸟休闲懒人一脚蹬', '498.00', '119.00', 'https://goods2.juancdn.com/goods/190407/3/b/5caa001133b089701c58942c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2069', '粗高跟瘦瘦靴短靴袜靴', '698.00', '69.00', 'https://goods1.juancdn.com/goods/191002/1/e/5d94a70033b089744a7a2180_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2068', '毛球内增高高跟女短靴', '498.00', '49.00', 'https://goods5.juancdn.com/goods/190831/8/a/5d695209b6f8ea678b32ad2b_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2067', '富贵鸟女鞋软底袜子鞋', '398.00', '129.00', 'https://goods6.juancdn.com/goods/190826/b/1/5d63da97b6f8ea6d2468bca3_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2066', '系带内增高短靴马丁靴', '498.00', '49.00', 'https://goods8.juancdn.com/goods/190831/f/7/5d69508133b08912be334fde_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2065', '富贵鸟平底防滑护士鞋', '398.00', '119.00', 'https://goods8.juancdn.com/goods/190507/e/9/5cd1829bb6f8ea278e2c50cf_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2064', '富贵鸟内增高女单鞋', '298.00', '119.00', 'https://goods7.juancdn.com/goods/190507/c/6/5cd1837e33b08925330c88cc_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2063', '后拉链粗高跟裸靴短靴', '598.00', '59.00', 'https://goods5.juancdn.com/goods/191002/8/2/5d94accbb6f8ea430f11d88d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2062', '尖头中筒女马丁靴短靴', '698.00', '69.00', 'https://goods8.juancdn.com/goods/190831/e/9/5d6953cfb6f8ea11541b84e2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2061', '富贵鸟低帮真皮女单鞋', '298.00', '119.00', 'https://goods1.juancdn.com/goods/190507/0/a/5cd1846433b089499c3973c0_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2060', '飞织袜子靴方根女短靴', '798.00', '79.00', 'https://goods7.juancdn.com/goods/191002/d/b/5d94a642b6f8ea3fe44de6a8_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2059', '侧拉链贼增高女马丁靴', '798.00', '79.00', 'https://goods2.juancdn.com/goods/191002/2/9/5d94a49db6f8ea36c03760e7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2058', '高帮百搭学生平底板鞋', '698.00', '69.00', 'https://goods8.juancdn.com/goods/191002/e/4/5d94adeeb6f8ea3fbb523888_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2057', '富贵鸟运动休闲小白鞋', '498.00', '119.00', 'https://goods1.juancdn.com/goods/190818/1/8/5d58f16133b089623747c595_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2056', '富贵鸟厚底增高女鞋', '298.00', '129.00', 'https://goods3.juancdn.com/goods/190826/5/e/5d63e060b6f8ea69845fa6af_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2055', '富贵鸟时尚百搭休闲鞋', '498.00', '119.00', 'https://goods7.juancdn.com/goods/190214/d/3/5c6535e933b089072b6237b4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2054', '富贵鸟百搭休闲拖鞋', '498.00', '119.00', 'https://goods2.juancdn.com/goods/190404/3/e/5ca5c72633b0895e25224a21_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2053', '系带小熊底休闲运动鞋', '398.00', '49.00', 'https://goods5.juancdn.com/goods/190902/9/b/5d6beb0bb6f8ea2323156b14_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2052', '富贵鸟休闲百搭小白鞋', '498.00', '119.00', 'https://goods8.juancdn.com/goods/190818/e/9/5d59110ab6f8ea7d90646f8c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2051', '尖头细高跟裸靴女短靴', '598.00', '59.00', 'https://goods3.juancdn.com/goods/190922/4/7/5d878b56b6f8ea25ee6439b8_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2050', '后拉链细高跟裸靴短靴', '598.00', '59.00', 'https://goods8.juancdn.com/goods/190922/e/8/5d878c37b6f8ea2cfb0e9307_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2049', '富贵鸟百搭休闲小白鞋', '498.00', '119.00', 'https://goods3.juancdn.com/goods/190818/5/4/5d590b5233b08925fa6d9136_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2048', '低跟短靴圆头女秋裸靴', '598.00', '59.00', 'https://goods4.juancdn.com/goods/191002/7/b/5d949f07b6f8ea51ca5c590d_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2047', '富贵鸟休闲百搭小白鞋', '498.00', '119.00', 'https://goods8.juancdn.com/goods/190818/f/2/5d58fadab6f8ea014f7cf60a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2046', '镂空皮面平底小白鞋', '199.00', '69.00', 'https://goods3.juancdn.com/goods/180325/5/8/5ab71a868150a1211d6f73b1_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2045', '透气网面轻便跑步鞋', '199.00', '45.00', 'https://goods7.juancdn.com/goods/180516/d/3/5afbd11eb6f8ea35ff026e62_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2044', '复古绒面中跟粗跟女靴', '199.00', '55.00', 'https://goods5.juancdn.com/goods/180919/8/6/5ba1c279b6f8ea585814f481_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2043', '粗跟高筒弹力过膝女靴', '199.00', '139.00', 'https://goods2.juancdn.com/goods/181103/3/3/5bdd0824b6f8ea0c42175bb2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2042', '镂空系带平底休闲鞋', '199.00', '69.00', 'https://goods3.juancdn.com/goods/180321/5/7/5ab215208150a1766a48170d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2041', '星星镂空系带休闲鞋', '199.00', '45.00', 'https://goods7.juancdn.com/goods/180320/d/9/5ab0c4858150a17e104e612d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2040', '纯色镂空低跟一脚蹬', '199.00', '99.00', 'https://goods8.juancdn.com/goods/180316/e/4/5aab6d17a9fcf845a3467765_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2039', '休闲平底透气小白鞋', '199.00', '89.00', 'https://goods2.juancdn.com/goods/180811/2/9/5b6eb07fb6f8ea6964431aa3_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2038', '绒面低跟弹力过膝靴', '199.00', '109.00', 'https://goods3.juancdn.com/goods/171007/4/7/59d889908150a16ebd67d442_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2037', '真皮浅口镂空豆豆鞋', '99.00', '49.00', 'https://goods6.juancdn.com/goods/190515/a/3/5cdbd02bb6f8ea3b8d4fad89_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2036', '平底粗跟磨砂马丁靴', '199.00', '55.00', 'https://goods1.juancdn.com/goods/180919/1/0/5ba1c83533b08946a0122cf5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2035', '系带休闲厚底老爹鞋', '199.00', '65.00', 'https://goods8.juancdn.com/goods/190219/f/5/5c6b73ea33b089288e5d07b8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2034', '水钻圆头一脚蹬平底鞋', '199.00', '139.00', 'https://goods8.juancdn.com/goods/190121/f/1/5c4588a3b6f8ea7dbe48bbe0_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2033', '百搭系带平底休闲板鞋', '199.00', '35.00', 'https://goods8.juancdn.com/goods/180305/e/2/5a9d0c81a9fcf8509a20a8c9_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2032', '厚底拼色运动鞋老爹鞋', '199.00', '65.00', 'https://goods3.juancdn.com/goods/190219/4/9/5c6b780ab6f8ea12587ae0cc_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2031', '水钻单鞋懒人鞋休闲鞋', '199.00', '139.00', 'https://goods5.juancdn.com/goods/190219/9/0/5c6b6beb33b0891c04123125_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2030', '平底高筒弹力系带女靴', '199.00', '65.00', 'https://goods4.juancdn.com/goods/181103/6/0/5bdd0bbd33b08921243e82f4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2029', '过膝尖头弹力系带女靴', '199.00', '65.00', 'https://goods7.juancdn.com/goods/181103/c/2/5bdd0505b6f8ea347e4fb063_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2028', '纯色镂空套脚乐福鞋', '199.00', '89.00', 'https://goods8.juancdn.com/goods/180318/e/5/5aae3008a9fcf8060c03f927_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2027', '韩版百搭乐福鞋一脚蹬', '199.00', '89.00', 'https://goods6.juancdn.com/goods/180814/b/0/5b724c2733b0894d5f52ee42_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2026', '百搭内增高过膝长靴', '199.00', '129.00', 'https://goods4.juancdn.com/goods/171219/6/1/5a38da7d8150a161860fd914_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2025', '牛皮套脚平底乐福鞋', '199.00', '45.00', 'https://goods1.juancdn.com/goods/180320/1/d/5ab07e43a9fcf80ef7058600_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2024', '纯色系带平底休闲板鞋', '199.00', '35.00', 'https://goods7.juancdn.com/goods/180305/c/3/5a9d09c48150a1111a5e1e3c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2023', '软底百搭舒适低跟单鞋', '199.00', '89.00', 'https://goods8.juancdn.com/goods/180814/e/a/5b727fabb6f8ea4f072d61c6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2022', '简约平底系带休闲板鞋', '199.00', '35.00', 'https://goods4.juancdn.com/goods/180305/6/e/5a9d141e8150a17b64020ba6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2021', '魔术贴厚底内增高单鞋', '199.00', '45.00', 'https://goods7.juancdn.com/goods/180321/c/4/5ab1c755a9fcf86df70eb828_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2020', '圆头系带平底休闲鞋', '199.00', '35.00', 'https://goods2.juancdn.com/goods/180321/2/2/5ab223e6a9fcf80dda4edfc5_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2019', '韩版简约休闲运动板鞋', '199.00', '98.00', 'https://goods4.juancdn.com/goods/170914/7/c/59ba2fb3a9fcf8acef0b918f_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2018', '擦色系带内增高单鞋', '199.00', '45.00', 'https://goods2.juancdn.com/goods/180821/3/f/5b7b7f7f33b089775477b476_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2017', '魔术贴圆头平底小白鞋', '199.00', '69.00', 'https://goods2.juancdn.com/goods/180322/2/3/5ab363d4a9fcf85cd019edd6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2016', '韩版休闲女鞋乐福鞋', '199.00', '89.00', 'https://goods3.juancdn.com/goods/180407/4/b/5ac875198150a1264444a67e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2015', '水钻平底圆头懒人单鞋', '199.00', '55.00', 'https://goods5.juancdn.com/goods/190114/8/3/5c3c4cff33b089212c514e15_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2014', '百搭浅口镂空一脚蹬', '199.00', '99.00', 'https://goods5.juancdn.com/goods/180516/8/6/5afbe833b6f8ea254e1daa25_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2013', '厚底系带内增高休闲鞋', '199.00', '45.00', 'https://goods2.juancdn.com/goods/180321/3/8/5ab1ed518150a168a6184c26_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2012', '厚底透气休闲网鞋', '199.00', '45.00', 'https://goods5.juancdn.com/goods/180515/8/1/5afaaf1233b08930120612da_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2011', '低帮浅口舒适软底单鞋', '199.00', '89.00', 'https://goods7.juancdn.com/goods/180811/c/1/5b6e8f8333b089776c50984b_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2010', '镂空透气平底休闲板鞋', '199.00', '35.00', 'https://goods4.juancdn.com/goods/180516/6/a/5afbd3acb6f8ea3557349878_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('2009', '尖头纯色粗跟套筒短靴', '189.00', '89.00', 'https://goods4.juancdn.com/goods/190908/7/0/5d74b976b6f8ea5482018941_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2008', '粗跟尖头套筒拉链短靴', '189.00', '89.00', 'https://goods2.juancdn.com/goods/190919/3/5/5d831597b6f8ea16514fbac4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2007', '圆头纯色套筒粗跟女靴', '189.00', '79.00', 'https://goods5.juancdn.com/goods/190911/9/5/5d78acc533b08917ce2babd3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2006', '圆头系带内增高高帮鞋', '158.00', '89.90', 'https://goods8.juancdn.com/goods/180916/f/5/5b9e06d833b0893ab3574231_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2005', '圆头粗跟系带拼色短靴', '189.00', '99.00', 'https://goods7.juancdn.com/goods/190919/d/8/5d8317efb6f8ea0d1f039066_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2004', '圆头绒面厚底内增高鞋', '189.00', '89.00', 'https://goods8.juancdn.com/goods/190910/f/b/5d774fc5b6f8ea3991445ae0_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2003', '尖头拉链高跟套筒短靴', '189.00', '89.00', 'https://goods4.juancdn.com/goods/190908/6/0/5d74a03a33b08970fe3a1a3e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2002', '尖头粗跟套筒纯色短靴', '189.00', '89.00', 'https://goods4.juancdn.com/goods/190910/6/5/5d77607433b08967fb5d3939_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2001', '漆皮尖头粗跟高跟短靴', '168.00', '89.90', 'https://goods8.juancdn.com/goods/181107/e/a/5be28adeb6f8ea37490a7d65_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('2000', '千鸟格尖头高跟短靴女', '189.00', '89.00', 'https://goods5.juancdn.com/goods/190908/8/3/5d749c7c33b089776339e305_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1999', '圆头细跟套筒拉链短靴', '189.00', '89.00', 'https://goods6.juancdn.com/goods/190908/b/4/5d7477d533b0897f6b3e8682_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1998', 'pu尖头套筒高跟中筒靴', '189.00', '89.00', 'https://goods6.juancdn.com/goods/190916/b/a/5d7f401e33b08930cf35c3eb_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1997', '圆头套筒纯色简约女靴', '189.00', '79.00', 'https://goods8.juancdn.com/goods/190908/e/3/5d74a71033b089122b55add6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1996', '尖头细跟套脚拉链短靴', '189.00', '89.00', 'https://goods3.juancdn.com/goods/190829/5/5/5d67767ab6f8ea3f3f44cff7_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1995', '圆头纯色拉链粗跟短靴', '189.00', '89.00', 'https://goods3.juancdn.com/goods/190824/5/7/5d60e54ab6f8ea1b5738b259_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1994', '欧美尖头高跟时装靴女', '158.00', '109.00', 'https://goods8.juancdn.com/goods/181208/f/3/5c0b82d0b6f8ea520b3f3eda_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1993', '粗跟纯色拉链套筒短靴', '189.00', '89.00', 'https://goods4.juancdn.com/goods/190915/6/6/5d7dad21b6f8ea4ab24f6c6c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1992', '简约粗跟套筒拼色短靴', '189.00', '89.00', 'https://goods7.juancdn.com/goods/190915/d/f/5d7da60f33b08958d919b0b0_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1991', '厚底网红运动鞋老爹鞋', '199.00', '159.00', 'https://goods6.juancdn.com/goods/190219/a/e/5c6b75f1b6f8ea156f12f93a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1990', '软底透气低帮休闲单鞋', '199.00', '89.00', 'https://goods2.juancdn.com/goods/180814/2/a/5b7282f5b6f8ea503b725fb1_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1989', '真皮透气包头半拖女鞋', '99.00', '49.00', 'https://goods6.juancdn.com/goods/190420/b/1/5cbaf4f1b6f8ea564b49f94b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1988', '镂空外穿包头半拖鞋', '199.00', '89.00', 'https://goods4.juancdn.com/goods/180516/7/5/5afbea6b33b0892545125d58_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1987', '纯色镂空系带休闲单鞋', '199.00', '45.00', 'https://goods2.juancdn.com/goods/180318/2/c/5aae2722a9fcf8025a2dd79b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1986', '平底系带百搭休闲板鞋', '199.00', '35.00', 'https://goods3.juancdn.com/goods/180305/5/b/5a9d1228a9fcf8492e684dd2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1985', '休闲平底系带百搭单鞋', '199.00', '35.00', 'https://goods3.juancdn.com/goods/180305/4/2/5a9d0e87a9fcf8599205d8dc_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1984', '系带镂空平底休闲单鞋', '199.00', '99.00', 'https://goods4.juancdn.com/goods/180316/7/1/5aab6b808150a150595d46da_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1983', '镂空厚底休闲乐福鞋', '199.00', '89.00', 'https://goods5.juancdn.com/goods/180407/8/d/5ac872388150a1231f0f4d5f_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1982', '中跟后绑带过膝长靴', '199.00', '139.00', 'https://goods5.juancdn.com/goods/171220/8/2/5a3a1835a9fcf834c46baf7e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1981', '韩版水钻平底一脚蹬', '199.00', '139.00', 'https://goods5.juancdn.com/goods/190114/8/6/5c3c486633b0891f0c1b4b85_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1980', '加绒真牛皮内增高鞋女', '199.00', '119.00', 'https://goods4.juancdn.com/goods/181115/6/1/5bed1e76b6f8ea61f9352d49_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩3天');
INSERT INTO `shangpin` VALUES ('1979', '粗跟绒面纯色套脚短靴', '189.00', '89.00', 'https://goods4.juancdn.com/goods/190827/6/9/5d64c1a4b6f8ea75fd02c006_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1978', '尖头高跟侧拉链短靴女', '189.00', '99.00', 'https://goods4.juancdn.com/goods/190919/6/d/5d832162b6f8ea760c47d627_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1977', '圆头粗跟套筒系带短靴', '189.00', '89.00', 'https://goods7.juancdn.com/goods/190908/d/2/5d74c291b6f8ea4f2e3333d8_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1976', '尖头酒杯跟拉链马丁靴', '148.00', '79.90', 'https://goods2.juancdn.com/goods/180824/3/e/5b7f7448b6f8ea27c54d3027_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1975', '尖头粗跟纯色高跟短靴', '189.00', '89.00', 'https://goods2.juancdn.com/goods/190816/2/a/5d564a7fb6f8ea42e5140a6e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1974', '方头粗跟拼色套筒女靴', '189.00', '89.00', 'https://goods3.juancdn.com/goods/190808/4/b/5d4bbf5d33b08924213e93c9_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1973', '圆头拉链粗跟套筒女靴', '189.00', '109.00', 'https://goods2.juancdn.com/goods/190910/2/e/5d77673eb6f8ea51664d9655_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1972', '漆皮尖头细跟套筒短靴', '189.00', '109.00', 'https://goods7.juancdn.com/goods/190915/c/e/5d7dda75b6f8ea33f4422ca4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1971', '尖头粗跟套筒系带短靴', '189.00', '89.00', 'https://goods1.juancdn.com/goods/190915/1/5/5d7dd5d4b6f8ea4d2831db6b_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1970', '尖头纯色高跟套脚短靴', '189.00', '89.00', 'https://goods6.juancdn.com/goods/190828/a/e/5d661bfeb6f8ea1fcd624a96_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1969', '吊坠尖头粗跟套脚女靴', '189.00', '89.00', 'https://goods6.juancdn.com/goods/190808/a/8/5d4bcb2eb6f8ea468527240b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1968', '圆头套筒侧拉链短靴女', '189.00', '89.00', 'https://goods5.juancdn.com/goods/190908/9/9/5d74995033b089759d611a49_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1967', '欧美显瘦高跟拼色短靴', '148.00', '79.90', 'https://goods3.juancdn.com/goods/180920/4/2/5ba362a3b6f8ea2f87749abc_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1966', '圆头粗跟套筒简约女靴', '189.00', '89.00', 'https://goods2.juancdn.com/goods/190808/2/0/5d4bd4ec33b0891d00613bde_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1965', '前拉链高筒粗跟长靴女', '158.00', '119.00', 'https://goods6.juancdn.com/goods/181106/a/a/5be13f2733b0897c7f126b37_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1964', '韩版铆钉高跟套脚短靴', '148.00', '89.90', 'https://goods7.juancdn.com/goods/171023/c/1/59ed5fe78150a15cd4393f1a_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1963', '圆头粗跟套筒纯色短靴', '189.00', '89.00', 'https://goods2.juancdn.com/goods/190909/2/f/5d75f28233b08971e757ccf5_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '上新');
INSERT INTO `shangpin` VALUES ('1962', '百搭小白帆布女 253', '165.00', '39.90', 'https://goods5.juancdn.com/goods/190415/8/c/5cb3f4c3b6f8ea4b51076d27_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩2天');
INSERT INTO `shangpin` VALUES ('1961', '珍珠细高跟鞋女鞋单鞋', '698.00', '69.00', 'https://goods3.juancdn.com/goods/190216/5/c/5c67b94533b089373149f3ba_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1960', '金属搭扣尖头平底单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190830/7/6/5d68eb9b33b0891ba2639656_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1959', '尖头超高跟鞋细跟单鞋', '598.00', '59.00', 'https://goods2.juancdn.com/goods/190922/3/2/5d8792fab6f8ea296b7c13b2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1958', '加绒侧拉链低跟女短靴', '498.00', '49.00', 'https://goods2.juancdn.com/goods/190923/3/8/5d879b97b6f8ea03c07e4505_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1957', '高帮皮面厚底休闲板鞋', '398.00', '79.00', 'https://goods3.juancdn.com/goods/190904/4/7/5d6fb7b5b6f8ea6f8308ee05_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1956', '韩版尖头平底皮鞋单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190731/6/7/5d41a136b6f8ea2a33543088_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1955', '平底浅口软底工作鞋', '265.00', '29.90', 'https://goods1.juancdn.com/goods/190903/1/d/5d6db5eeb6f8ea684c17d1d2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1954', '侧拉链细跟裸靴女短靴', '598.00', '59.00', 'https://goods8.juancdn.com/goods/190922/e/1/5d879540b6f8ea2bcf09eb83_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1953', '富贵鸟百搭厚底小白鞋', '498.00', '119.00', 'https://goods7.juancdn.com/goods/190818/c/a/5d58fd5833b0890db137c401_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1952', '前拉链圆头低跟短靴', '398.00', '39.00', 'https://goods8.juancdn.com/goods/190922/e/8/5d8797d1b6f8ea501e152ba2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('1951', '女士加厚慵懒风羊毛衫', '699.00', '79.00', 'https://goods3.juancdn.com/goods/190821/4/1/5d5d4b9eb6f8ea02706fecf4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1950', '中长款过膝双面呢大衣', '2999.00', '399.00', 'https://goods1.juancdn.com/goods/190914/0/9/5d7c5b5f33b08948c26fdf0a_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1949', '阔太太金丝绒两件套裙', '599.00', '169.00', 'https://goods2.juancdn.com/tao/190716/3/f/5d2d5ee6b6f8ea3e1b595925_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1948', '新款韩版宽松羊毛马甲', '699.00', '119.00', 'https://goods7.juancdn.com/goods/190905/c/b/5d708b4cb6f8ea32fa509c15_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1947', '新款席编加厚羊毛衫', '699.00', '89.00', 'https://goods8.juancdn.com/goods/190821/f/6/5d5d421633b08914c620ecc9_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1946', '妈妈秋装长袖格子衬衫', '599.00', '79.00', 'https://goods2.juancdn.com/tao/190808/3/6/5d4bf940b6f8ea321022d5a4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1945', '千鸟格双面羊绒呢大衣', '2899.00', '369.00', 'https://goods8.juancdn.com/goods/190914/f/a/5d7cc96c33b08956c76c40eb_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1944', '一粒扣颗粒羊剪绒大衣', '2999.00', '289.00', 'https://goods2.juancdn.com/goods/190823/3/b/5d5fd01f33b08902b736c9a1_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1943', '40岁50妈妈秋条纹衬衫', '599.00', '69.00', 'https://goods7.juancdn.com/tao/190806/c/d/5d492a6bb6f8ea251a205b92_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1942', '深V领收腰羊毛马甲', '599.00', '89.00', 'https://goods3.juancdn.com/goods/190904/4/c/5d6f82f733b08915d323a4f3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1941', '女士抽条加厚羊毛衫', '599.00', '89.00', 'https://goods6.juancdn.com/goods/190802/a/a/5d442edc33b08942303f8a64_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1940', '妈妈秋装双面休闲外套', '599.00', '129.00', 'https://goods3.juancdn.com/tao/190901/4/f/5d6bb870b6f8ea52435da475_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1939', '中长款连帽千鸟格大衣', '2899.00', '369.00', 'https://goods1.juancdn.com/goods/190914/0/d/5d7c9c0b33b08946367544c0_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1938', '英伦chic针织羊毛坎肩', '699.00', '99.00', 'https://goods8.juancdn.com/goods/190904/f/d/5d6f7d55b6f8ea70e7259118_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1937', '2019新款妈妈装打底衫', '599.00', '49.00', 'https://goods3.juancdn.com/tao/190111/5/8/5c3840e433b08953433ffb94_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1936', '女士高领抽条羊毛衫', '599.00', '59.00', 'https://goods1.juancdn.com/goods/190802/1/a/5d43a76f33b08946af299b86_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1935', '中长款双面呢子大衣', '2999.00', '569.00', 'https://goods8.juancdn.com/goods/190921/e/c/5d85daa133b0896e8e33c486_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1934', '中年妈妈秋装毛呢外套', '599.00', '149.00', 'https://goods2.juancdn.com/tao/190716/2/f/5d2d76c5b6f8ea16540968c3_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1933', '高翻领抽条修身羊毛衫', '599.00', '59.00', 'https://goods1.juancdn.com/goods/190919/1/d/5d837d83b6f8ea53736acda1_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1932', '裂帛V领露肩刺绣毛衣', '599.00', '239.00', 'https://goods6.juancdn.com/goods/190220/a/f/5c6d5e8db6f8ea1ae35d8ba1_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1931', '妈妈春秋装40岁50风衣', '599.00', '159.00', 'https://goods4.juancdn.com/tao/190808/6/6/5d4bbc80b6f8ea1697590ffe_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1930', '裂帛高领宽松长袖毛衣', '799.00', '319.00', 'https://goods2.juancdn.com/goods/181126/3/a/5bfb9591b6f8ea7cda73e133_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1929', '秋装蕾丝连衣裙216137', '499.00', '158.00', 'https://goods7.juancdn.com/tao/190909/c/5/5d760033b6f8ea66b542f377_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1928', '妈妈半袖雪纺大花小衫', '599.00', '89.00', 'https://goods8.juancdn.com/tao/190717/f/0/5d2ebabe33b08946b02a543e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1927', '秋装系带纯色针织衫', '299.00', '60.00', 'https://goods5.juancdn.com/goods/190918/9/5/5d810af5b6f8ea017f298405_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1926', '秋季百搭简约针织开衫', '249.00', '64.00', 'https://goods4.juancdn.com/goods/190830/7/d/5d687d11b6f8ea715c07c874_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1925', '妈妈短款格子小西装', '599.00', '129.00', 'https://goods6.juancdn.com/tao/190806/a/f/5d495d49b6f8ea29ec4403c4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1924', '初秋小香学院风连衣裙', '219.00', '74.00', 'https://goods4.juancdn.com/goods/190829/6/6/5d67c7c7b6f8ea438e560da1_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1923', '秋装条纹宽松针织衫', '319.00', '64.00', 'https://goods2.juancdn.com/goods/190917/2/8/5d80f9b1b6f8ea2e171bb2f6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1922', '妈妈春洋气绣花夹克', '599.00', '119.00', 'https://goods4.juancdn.com/tao/190307/6/8/5c810b4133b089033d6151f6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1921', '撞色针织套装裙两件套', '219.00', '64.00', 'https://goods3.juancdn.com/goods/190831/5/0/5d6a2fb433b08919396d8fe3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1920', '初秋拼接撞色针织毛衣', '299.00', '60.00', 'https://goods6.juancdn.com/goods/190917/a/0/5d8102a2b6f8ea31310022d2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1919', '妈妈春秋大码宽松风衣', '599.00', '139.00', 'https://goods4.juancdn.com/tao/190901/7/7/5d6bd7edb6f8ea4d5f6049c8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1918', '新款镂空蕾丝衬衫上衣', '269.00', '54.00', 'https://goods8.juancdn.com/goods/190831/f/3/5d69dbc133b0891bb427394f_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1917', '拼色菱形宽松开衫', '398.00', '148.00', 'https://goods5.juancdn.com/tao/190805/8/0/5d479ac033b0895c88496230_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1916', '妈妈秋装纯色针织衫', '599.00', '45.00', 'https://goods3.juancdn.com/tao/190806/4/f/5d4923b8b6f8ea167a165b69_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1915', '网红长款纯色口袋开衫', '398.00', '128.00', 'https://goods1.juancdn.com/tao/190805/0/0/5d479637b6f8ea6d22491c5a_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1914', 'V领蕾丝袖气质针织衫', '398.00', '118.00', 'https://goods7.juancdn.com/tao/190831/d/0/5d6a025e33b0891d3150dd68_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1913', '妈妈秋装长袖雪纺小衫', '599.00', '59.00', 'https://goods3.juancdn.com/tao/190901/5/0/5d6bb55cb6f8ea4e8824ea65_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1912', '秋装拼色宽松连帽卫衣', '398.00', '105.00', 'https://goods6.juancdn.com/goods/190903/b/b/5d6e24d9b6f8ea6e6f163728_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1911', '蕾丝娃娃领针织连衣裙', '398.00', '128.00', 'https://goods6.juancdn.com/goods/190903/b/7/5d6ded1433b0892a051ee0b3_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1910', '妈妈秋装薄款连帽风衣', '599.00', '119.00', 'https://goods7.juancdn.com/tao/190804/d/e/5d4642d3b6f8ea40b834f546_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1909', '高领修身打底针织衫', '398.00', '99.00', 'https://goods2.juancdn.com/tao/190827/2/0/5d64ba10b6f8ea6e88514035_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1908', '秋装拼色菱形宽松毛衣', '398.00', '128.00', 'https://goods5.juancdn.com/tao/190916/9/8/5d7e611533b08933f8087db4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1907', '妈妈春秋气质薄外套', '599.00', '119.00', 'https://goods7.juancdn.com/tao/190716/d/1/5d2dedea33b08954e4234c69_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1906', '女士新款堆堆领羊毛衫', '499.00', '69.00', 'https://goods1.juancdn.com/goods/190731/0/5/5d419637b6f8ea6ec546582d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1905', '双面羊绒呢子大衣外套', '2699.00', '299.00', 'https://goods7.juancdn.com/goods/190914/c/c/5d7c5e7db6f8ea4730311840_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1904', '妈妈秋中长款绑带风衣', '599.00', '109.00', 'https://goods6.juancdn.com/tao/190807/a/7/5d4ac227b6f8ea167106f8ff_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1903', '女士加厚新款羊毛衫', '799.00', '79.00', 'https://goods1.juancdn.com/goods/181219/0/6/5c1a545ab6f8ea0fa3363ee6_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1902', '长款双面呢子宽松外套', '2899.00', '399.00', 'https://goods7.juancdn.com/goods/190915/d/d/5d7dae5b33b0895c5e355934_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1901', '妈妈装春时尚绣花外套', '599.00', '119.00', 'https://goods1.juancdn.com/tao/190224/1/c/5c7252c033b08923f46c2a24_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1900', '春秋短款韩版羊毛马甲', '699.00', '99.00', 'https://goods7.juancdn.com/goods/190904/c/a/5d6fb29d33b08940f32b593d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1899', '女士加厚慵懒风羊绒衫', '899.00', '99.00', 'https://goods2.juancdn.com/goods/190108/3/a/5c34ae41b6f8ea103a0c2c36_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1898', '妈妈长袖洋气绣花T恤', '599.00', '59.00', 'https://goods2.juancdn.com/tao/190824/2/d/5d60d8fcb6f8ea088c17306e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1897', '中长款开叉羊毛大衣', '2999.00', '569.00', 'https://goods2.juancdn.com/goods/190922/2/9/5d86e48d33b08953b7381d36_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1896', '纯羊毛双面呢子大衣', '2899.00', '369.00', 'https://goods6.juancdn.com/goods/190913/b/a/5d7bad6db6f8ea4b2b2875db_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1895', '妈妈豹纹纱袖雪纺T恤', '599.00', '59.00', 'https://goods8.juancdn.com/tao/190228/e/9/5c77d38733b089067435b15d_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '剩3天');
INSERT INTO `shangpin` VALUES ('1894', '女士纯羊毛双面呢大衣', '2699.00', '329.00', 'https://goods8.juancdn.com/goods/190913/e/7/5d7b1683b6f8ea4f7763a118_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1893', '中长款双面呢子大衣', '2999.00', '329.00', 'https://goods4.juancdn.com/goods/190922/7/7/5d86d99733b0893fbf330543_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1892', '妈妈装春秋大码女风衣', '598.00', '152.90', 'https://goods7.juancdn.com/goods/190831/d/9/5d69d3c3b6f8ea13952533b1_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1891', '女士新款圆领羊毛衫', '599.00', '69.00', 'https://goods2.juancdn.com/goods/190916/2/6/5d7f919533b0893aaf5769e3_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1890', '女开叉新款V领羊毛衫', '699.00', '79.00', 'https://goods6.juancdn.com/goods/190823/b/2/5d5ff438b6f8ea09b7032c4a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1889', '中老年女装春秋季套装', '598.00', '146.80', 'https://goods2.juancdn.com/goods/190830/2/a/5d69350ab6f8ea03ce1cfb4a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1888', '女士半高领厚羊绒马甲', '699.00', '79.00', 'https://goods1.juancdn.com/goods/181225/0/f/5c22387233b089529c55c9e7_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1887', '羊剪绒皮草外套中长款', '2999.00', '589.00', 'https://goods6.juancdn.com/goods/190908/a/1/5d750eca33b08921272e8c70_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1886', '妈妈装春秋宽松女套装', '598.00', '158.00', 'https://goods8.juancdn.com/goods/190830/f/0/5d68f61b33b0891ba2639658_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1885', 'mschf上衣百搭t恤女', '399.00', '56.00', 'https://goods3.juancdn.com/goods/190611/5/e/5cff9f8b33b089061156b387_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1884', '学生百搭白色t恤上衣', '119.00', '55.00', 'https://goods8.juancdn.com/goods/190715/f/b/5d2c13db33b0890d4176bfff_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1883', '中老年女装春秋季外套', '598.00', '128.00', 'https://goods4.juancdn.com/goods/190829/6/8/5d67bf9233b08977610d8b47_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1882', '夏季上衣夏装2019新款', '199.00', '55.00', 'https://goods5.juancdn.com/tao/190715/8/4/5d2bd80ab6f8ea479b5238b7_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1881', '开叉t恤女宽松五分袖', '399.00', '56.00', 'https://goods2.juancdn.com/tao/190610/2/4/5cfdb7b933b08909163c892b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1880', '妈妈装春秋宽松女外套', '598.00', '132.80', 'https://goods7.juancdn.com/goods/190818/c/2/5d590960b6f8ea1a11613972_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1879', '裂帛翻领撞色拼接外套', '1449.00', '599.00', 'https://goods7.juancdn.com/goods/190919/d/a/5d82f231b6f8ea6f0c45cdb0_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1878', '裂帛V领露肩连衣裙', '649.00', '219.00', 'https://goods7.juancdn.com/goods/190221/d/0/5c6e2ec833b08965357cf263_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1877', '妈妈装春秋装运动套装', '598.00', '178.00', 'https://goods4.juancdn.com/goods/190816/7/6/5d56a91433b08910bc3f9331_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1876', '裂帛刺绣宽松卫衣', '599.00', '239.00', 'https://goods7.juancdn.com/goods/190412/c/6/5cafe433b6f8ea41d83d41f3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1875', '裂帛圆领刺绣长袖毛衣', '649.00', '259.00', 'https://goods4.juancdn.com/goods/180926/6/d/5babab8d33b0890dab34c28e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1874', '奶奶装秋冬宽松呢外套', '598.00', '138.00', 'https://goods8.juancdn.com/goods/190901/e/7/5d6b566833b089533814a050_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1873', '裂帛高领刺绣撞色毛衣', '699.00', '259.00', 'https://goods8.juancdn.com/goods/190919/f/7/5d831122b6f8ea1470342153_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1872', '黑针织T恤打底衫12511', '399.00', '109.00', 'https://goods1.juancdn.com/tao/190909/1/8/5d76001233b0895395392208_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1871', '妈妈装春秋女外套夹克', '598.00', '118.00', 'https://goods8.juancdn.com/goods/190817/e/4/5d57622cb6f8ea62791c1eea_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1870', '12023夏女大码蕾丝裙', '298.00', '69.00', 'https://goods2.juancdn.com/tao/190312/2/d/5c872fac33b0892cb4442b04_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1869', '12022夏大码女蕾丝裙', '298.00', '69.00', 'https://goods4.juancdn.com/tao/190312/6/d/5c872b9433b0892d0a5097a9_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1868', '妈妈装春秋宽松呢外套', '598.00', '192.80', 'https://goods2.juancdn.com/goods/190818/3/8/5d591bb3b6f8ea100325f64f_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1867', '12035夏大码女蕾丝裙', '298.00', '149.00', 'https://goods4.juancdn.com/tao/190312/6/9/5c872b97b6f8ea577f346360_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1866', '2019春新款大码连衣裙', '399.00', '69.00', 'https://goods6.juancdn.com/tao/190304/a/6/5c7ccc6b33b0893c381e2436_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1865', '妈妈装秋冬绣花呢外套', '598.00', '115.80', 'https://goods4.juancdn.com/goods/190818/6/7/5d58f2f9b6f8ea24f1694b28_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1864', '16021夏大码印花t恤女', '198.00', '53.00', 'https://goods1.juancdn.com/tao/190509/0/d/5cd3bdcd33b0891f89269650_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1863', '女装连衣裙mm16090', '429.00', '124.00', 'https://goods3.juancdn.com/tao/190904/5/b/5d6e8e7c33b08926b3146d8a_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1862', '奶奶装秋冬宽松呢外套', '598.00', '158.00', 'https://goods7.juancdn.com/goods/190818/c/a/5d592a5833b0897ade3a1e27_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1861', '短款高腰短袖t恤女ins', '399.00', '56.00', 'https://goods1.juancdn.com/goods/190611/1/6/5cff91eeb6f8ea553f1a022e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1860', '黄色t恤女宽松韩版', '399.00', '55.00', 'https://goods1.juancdn.com/goods/190611/1/8/5cff94a0b6f8ea549c6461be_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1859', '妈妈装春秋夹克衫外套', '598.00', '115.80', 'https://goods6.juancdn.com/goods/190830/b/4/5d68e21433b089774a276e0b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1858', '米子旗bf风宽松T恤女', '399.00', '56.00', 'https://goods7.juancdn.com/goods/190610/d/c/5cfe123633b08924c713182c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1857', '运动休闲两件套17041', '599.00', '194.00', 'https://goods4.juancdn.com/tao/190909/6/1/5d76003633b0895c8467efa7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1856', '妈妈装春秋宽松外套女', '598.00', '108.00', 'https://goods4.juancdn.com/goods/190829/7/5/5d67c138b6f8ea3f0955d58f_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1855', '大码女装裙子12565', '499.00', '158.00', 'https://goods3.juancdn.com/tao/190904/4/4/5d6e8e7733b0892d2d7662e2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1854', '12009夏大码女连衣裙', '298.00', '69.00', 'https://goods3.juancdn.com/tao/190312/5/b/5c874dca33b089733501e7e6_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1853', '妈妈装秋冬宽松针织衫', '598.00', '89.90', 'https://goods7.juancdn.com/goods/190819/d/9/5d5a245b33b08954db0f5943_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1852', '女装条纹针织衫16120', '429.00', '118.00', 'https://goods8.juancdn.com/tao/190904/e/3/5d6e8e5bb6f8ea32d851e78a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1851', '黄色cec短袖中长款t恤', '399.00', '56.00', 'https://goods4.juancdn.com/goods/190611/7/c/5cff6ccd33b0897032641936_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1850', '奶奶装秋冬装宽松套装', '598.00', '125.00', 'https://goods4.juancdn.com/goods/190818/6/2/5d59262a33b0897f9649e87b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1849', '宽松百搭纯棉半袖t恤', '399.00', '56.00', 'https://goods7.juancdn.com/goods/190610/d/9/5cfe484ab6f8ea0da3779677_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1848', '12531针织连衣裙', '489.00', '170.00', 'https://goods2.juancdn.com/tao/190827/2/2/5d64824ab6f8ea3fa25c1e6d_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1847', '妈妈装秋装女外套夹克', '598.00', '132.00', 'https://goods4.juancdn.com/goods/190814/6/6/5d5386ef33b089040e4bea46_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1846', '黄色宽松欧货大版t恤', '399.00', '55.00', 'https://goods4.juancdn.com/goods/190610/7/4/5cfe2e9e33b08923b53c363a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1845', '12026夏大码露肩裙子', '398.00', '69.00', 'https://goods1.juancdn.com/tao/190329/0/f/5c9dd8b8b6f8ea1d270c52c6_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1844', '妈妈装秋装长袖女衬衫', '598.00', '98.90', 'https://goods7.juancdn.com/goods/190814/d/4/5d53f90633b08944bc7c867d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1843', '高腰短款露脐短袖t恤', '399.00', '56.00', 'https://goods1.juancdn.com/goods/190610/0/a/5cfe4f12b6f8ea11ad4112f3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1842', '15003大码波点连衣裙', '298.00', '79.00', 'https://goods1.juancdn.com/tao/190409/1/e/5cabfbb6b6f8ea7444706a07_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1841', '中老年女装秋外套夹克', '598.00', '146.80', 'https://goods4.juancdn.com/goods/190819/7/2/5d5a1714b6f8ea21f161523e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1840', '12127夏大码女连衣裙', '298.00', '69.00', 'https://goods6.juancdn.com/tao/190409/b/a/5cabfbb433b0891b596d8d92_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1839', '欧货大版t恤女2019', '399.00', '56.00', 'https://goods1.juancdn.com/goods/190610/0/5/5cfe607933b0897ee75e8d22_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1838', '妈妈装春秋宽松呢外套', '598.00', '146.80', 'https://goods6.juancdn.com/goods/190818/b/f/5d58fe7b33b089070036c2e6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1837', '短款高腰短袖t恤女ins', '399.00', '56.00', 'https://goods1.juancdn.com/goods/190611/0/7/5cff0aa933b089085261a339_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1836', '17062格子连衣裙', '499.00', '168.00', 'https://goods4.juancdn.com/tao/190827/7/8/5d64829b33b0895f727fd81a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1835', '妈妈装春秋宽松女外套', '598.00', '132.80', 'https://goods7.juancdn.com/goods/190819/c/5/5d5a155ab6f8ea0ee61066a2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1834', '1726娃娃领雪纺连衣裙', '499.00', '184.00', 'https://goods1.juancdn.com/tao/190827/0/5/5d6482a733b08966047ccb3f_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1833', '12536大码初秋长袖t恤', '459.00', '132.00', 'https://goods6.juancdn.com/tao/190827/a/d/5d6482a5b6f8ea437b78e249_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1832', '妈妈装春秋运动两件套', '598.00', '138.00', 'https://goods3.juancdn.com/goods/190814/4/9/5d53fc22b6f8ea28146f5e2a_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1831', '16135长款格子连衣裙', '499.00', '198.00', 'https://goods8.juancdn.com/tao/190827/f/8/5d6482a4b6f8ea444f57eec9_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1830', 't恤女长袖秋装2019潮', '199.00', '69.00', 'https://goods5.juancdn.com/tao/190828/9/5/5d65e2feb6f8ea44670bf25e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1829', '妈妈装春秋长袖女套装', '598.00', '108.00', 'https://goods2.juancdn.com/goods/190225/2/f/5c735e93b6f8ea3de521912f_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1828', '12199夏大码女连衣裙', '298.00', '79.00', 'https://goods7.juancdn.com/tao/190504/d/a/5cccfdebb6f8ea6cde07352f_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1827', '12192夏大码女连衣裙', '298.00', '69.00', 'https://goods1.juancdn.com/tao/190504/1/0/5cccfdedb6f8ea5b972eac4d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1826', '妈妈装秋冬宽松呢外套', '598.00', '132.00', 'https://goods5.juancdn.com/goods/190830/8/0/5d6917c033b0891ea66d2e9c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1825', 't恤女长袖秋装2019潮', '199.00', '69.00', 'https://goods4.juancdn.com/tao/190828/7/1/5d65e414b6f8ea707a0b49c5_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1824', '16112条纹两件套裙子', '298.00', '178.00', 'https://goods5.juancdn.com/tao/190819/9/c/5d5a0c97b6f8ea0c7d71ba13_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1823', '妈妈装春秋PU皮衣外套', '598.00', '158.00', 'https://goods5.juancdn.com/goods/190831/9/e/5d69e66d33b089668c0fda8d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1822', '16029夏大码两件套裙', '298.00', '79.00', 'https://goods1.juancdn.com/tao/190516/0/e/5cdd0f7cb6f8ea525a05a933_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1821', '长袖体女宽松初秋2019', '199.00', '69.00', 'https://goods8.juancdn.com/tao/190828/e/c/5d65e2f5b6f8ea6e6f19b798_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1820', '妈妈装秋冬千鸟格外套', '598.00', '108.00', 'https://goods3.juancdn.com/goods/190819/4/1/5d5a20ff33b0894e8706fda5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1819', '学生韩版中长款黄色t', '99.00', '69.00', 'https://goods3.juancdn.com/tao/190818/4/8/5d592cb9b6f8ea21f2101db7_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1818', '15022夏女碎花连衣裙', '298.00', '79.00', 'https://goods5.juancdn.com/tao/190516/8/b/5cdd0fa133b089475546753f_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1817', '妈妈装秋冬羽绒棉马甲', '598.00', '99.80', 'https://goods6.juancdn.com/goods/190829/a/9/5d67935fb6f8ea2b5b57de52_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1816', '女生上衣百搭中长款潮', '99.00', '69.00', 'https://goods6.juancdn.com/tao/190818/a/0/5d592ca433b08928af48c91e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1815', '16080夏大码时尚套装', '298.00', '79.00', 'https://goods7.juancdn.com/tao/190523/d/2/5ce609a433b08914103620a2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1814', '妈妈装春秋女西装外套', '598.00', '132.80', 'https://goods8.juancdn.com/goods/190829/e/1/5d67964733b0897aaa6600da_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1813', '16109大码宽松t恤女', '198.00', '79.00', 'https://goods2.juancdn.com/tao/190812/2/d/5d50dc6c33b08953ba7b09ef_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1812', 't恤女长袖秋装2019款', '99.00', '69.00', 'https://goods1.juancdn.com/tao/190818/0/a/5d592cf333b089063911e4ba_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1811', '妈妈装加棉加厚呢外套', '598.00', '168.00', 'https://goods8.juancdn.com/goods/181002/f/a/5bb2f03eb6f8ea7c794b87bd_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1810', '16006夏女碎花连衣裙', '298.00', '79.00', 'https://goods6.juancdn.com/tao/190523/a/9/5ce609a933b089118109d0d2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1809', '长袖女初秋装2019新款', '99.00', '69.00', 'https://goods3.juancdn.com/tao/190818/5/5/5d592cacb6f8ea1d892c95ba_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1808', '妈妈装加绒加厚冬棉衣', '598.00', '148.90', 'https://goods7.juancdn.com/goods/181130/c/8/5c00dafd33b08951451191a4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1807', '12206夏女露肩连衣裙', '298.00', '79.00', 'https://goods3.juancdn.com/tao/190523/5/9/5ce609aa33b08914277bdd02_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1806', '12312大码a字连衣裙', '298.00', '179.00', 'https://goods6.juancdn.com/tao/190812/b/0/5d50dbd433b08907270ae959_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1805', '妈妈装秋大码披肩外套', '598.00', '128.00', 'https://goods1.juancdn.com/goods/190818/1/b/5d591e94b6f8ea0dc84423d1_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1804', '圆领套头卫衣春秋薄款', '199.00', '109.00', 'https://goods7.juancdn.com/tao/190828/c/f/5d65e49ab6f8ea77db19f5c4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1803', '12239夏女时尚连衣裙', '298.00', '69.00', 'https://goods4.juancdn.com/tao/190528/7/c/5cec9aef33b08946222fe5a1_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1802', '奶奶装秋冬宽松呢外套', '598.00', '238.00', 'https://goods5.juancdn.com/goods/190829/8/f/5d67c47cb6f8ea2b625a89b9_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1801', '16115大码百搭针织t恤', '198.00', '98.00', 'https://goods2.juancdn.com/tao/190805/3/a/5d47c523b6f8ea187465454c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1800', '12212夏碎花连衣裙女', '298.00', '79.00', 'https://goods7.juancdn.com/tao/190528/c/a/5cece4bbb6f8ea6d733c6e32_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1799', '妈妈装金丝绒春秋套装', '598.00', '139.00', 'https://goods5.juancdn.com/goods/190830/8/7/5d68c4c833b08978bc58585f_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1798', '16103大码碎花衬衫秋', '198.00', '108.00', 'https://goods6.juancdn.com/tao/190805/a/d/5d47c52133b0895bb9781825_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1797', '12372夏波点连衣裙女', '298.00', '89.00', 'https://goods1.juancdn.com/tao/190625/1/5/5d11cc03b6f8ea4aef0988c2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1796', '中老年女装春秋季套装', '598.00', '125.80', 'https://goods6.juancdn.com/goods/190814/a/7/5d5400f1b6f8ea46094bca39_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1795', '韩版长袖上衣2019新款', '199.00', '99.00', 'https://goods7.juancdn.com/tao/190828/c/4/5d65e3f3b6f8ea4e9743343b_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1794', '12380大码蕾丝连衣裙', '298.00', '198.00', 'https://goods4.juancdn.com/tao/190805/7/0/5d47c53b33b0892cc0391df7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1793', '妈妈装秋冬毛衣针织衫', '598.00', '155.00', 'https://goods4.juancdn.com/goods/190830/7/a/5d68bd29b6f8ea154b0914fb_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1792', '圆领春秋季薄款套头潮', '199.00', '99.00', 'https://goods3.juancdn.com/tao/190828/5/4/5d65e49b33b089120c111608_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1791', '无帽卫衣女袖春秋新款', '199.00', '99.00', 'https://goods3.juancdn.com/tao/190809/5/4/5d4cd063b6f8ea56131a274c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1790', '妈妈装春秋宽女呢外套', '598.00', '108.00', 'https://goods1.juancdn.com/goods/190817/0/3/5d576575b6f8ea636f54c28a_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1789', '慵懒风不带帽紫色上衣', '199.00', '99.00', 'https://goods1.juancdn.com/tao/190809/1/7/5d4ccf83b6f8ea62b37b165c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1788', '带领结打底上衣16182', '399.00', '114.00', 'https://goods4.juancdn.com/goods/190917/6/f/5d808a6633b0893dd02831fa_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1787', '妈妈装秋冬时尚呢外套', '598.00', '158.00', 'https://goods7.juancdn.com/goods/190829/d/b/5d67863c33b089797d3e70c7_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1786', '针织吊带连衣裙Q12569', '599.00', '196.00', 'https://goods5.juancdn.com/goods/190917/9/5/5d805491b6f8ea07c95a70b0_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1785', '上衣超火cec拉链外套', '199.00', '149.00', 'https://goods1.juancdn.com/goods/190911/1/3/5d78efec33b0890d78766fc4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1784', '妈妈装春秋宽松女外套', '598.00', '132.80', 'https://goods1.juancdn.com/goods/190817/0/3/5d57acd233b0890bc20ce88a_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1783', '哈伦牛仔裤女裤13109', '369.00', '138.00', 'https://goods4.juancdn.com/goods/190917/7/7/5d80530133b08942cd64babd_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1782', '带帽cec卫衣女红色秋', '199.00', '109.00', 'https://goods3.juancdn.com/tao/190828/5/b/5d65e540b6f8ea76db32f416_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1781', '妈妈装春秋装宽松外套', '598.00', '132.80', 'https://goods7.juancdn.com/goods/190818/c/7/5d58ed3533b089143a6bf288_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1780', '80001韩版波点连衣裙', '298.00', '69.00', 'https://goods8.juancdn.com/tao/190609/f/7/5cfcba9a33b0890b035c1342_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1779', '2019长袖连衣裙16159', '499.00', '192.00', 'https://goods1.juancdn.com/tao/190909/1/5/5d760010b6f8ea66504818e3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1778', '妈妈装秋冬PU皮衣外套', '598.00', '158.00', 'https://goods5.juancdn.com/goods/190831/9/f/5d69e798b6f8ea644b57f8ea_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1777', '16162大码撞色连衣裙', '298.00', '138.00', 'https://goods8.juancdn.com/tao/190812/f/2/5d50dbd2b6f8ea62f433c6f8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1776', '春季连帽长款卫衣女潮', '199.00', '119.00', 'https://goods3.juancdn.com/goods/190819/5/2/5d5a9aba33b089573c196e07_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1775', '妈妈装春秋宽松休闲裤', '598.00', '85.90', 'https://goods8.juancdn.com/goods/190828/e/e/5d65f89833b0890c3a0c0d70_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1774', '12508大码蕾丝连衣裙', '298.00', '158.00', 'https://goods6.juancdn.com/tao/190812/b/9/5d50dbd133b08960717b2ff2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1773', '6013夏女大码两件套装', '298.00', '69.90', 'https://goods3.juancdn.com/tao/190322/4/b/5c94553333b089169b23fdd3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1772', '妈妈装春秋宽松呢外套', '598.00', '158.00', 'https://goods8.juancdn.com/goods/190818/e/d/5d58fd96b6f8ea19db624357_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1771', '韩版套头ins潮外套', '199.00', '105.00', 'https://goods3.juancdn.com/tao/190809/4/7/5d4ccf97b6f8ea5f10316ce9_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1770', '12085夏大码女连衣裙', '298.00', '79.00', 'https://goods1.juancdn.com/tao/190322/1/f/5c94552733b08926332d3d7c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1769', '中老年女装春秋夹克衫', '598.00', '128.00', 'https://goods5.juancdn.com/goods/190816/9/4/5d56864333b0896a322982b7_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1768', '12099夏女大码连衣裙', '298.00', '69.90', 'https://goods4.juancdn.com/tao/190322/6/3/5c945532b6f8ea127f2050a7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1767', '16138大码女印花t恤秋', '198.00', '119.00', 'https://goods7.juancdn.com/tao/190802/d/a/5d43df0333b0890c70581da5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1766', '妈妈装春秋宽松打底衫', '598.00', '96.80', 'https://goods3.juancdn.com/goods/190819/5/f/5d5a0dd2b6f8ea798e4c4b56_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1765', '原宿风上衣韩版外套', '199.00', '105.00', 'https://goods5.juancdn.com/tao/190809/8/5/5d4ccf97b6f8ea5bb57104d8_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1764', '连帽卫衣2019新款女', '199.00', '105.00', 'https://goods5.juancdn.com/tao/190809/9/6/5d4cd05bb6f8ea609d622837_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1763', '妈妈装春秋宽松两件套', '598.00', '158.00', 'https://goods1.juancdn.com/goods/190830/0/3/5d69337833b08974276a0a24_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1762', '1703夏大码格子连衣裙', '298.00', '69.00', 'https://goods6.juancdn.com/tao/190509/a/a/5cd3bdc433b0890a97015df2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1761', '薄款卫衣女2019新款潮', '298.00', '119.00', 'https://goods6.juancdn.com/goods/190630/a/7/5d184a3e33b0891cc91618bb_800x800.gif?imageMogr2/thumbnail/310x310!', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1760', '妈妈装春秋装宽松外套', '598.00', '146.80', 'https://goods7.juancdn.com/goods/190818/d/4/5d590e17b6f8ea16933f71b5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1759', '超火cec外套洋气卫衣', '298.00', '119.00', 'https://goods2.juancdn.com/goods/190626/3/a/5d132bc5b6f8ea6795158984_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1758', '韩版超火cec外套', '199.00', '105.00', 'https://goods2.juancdn.com/tao/190809/3/e/5d4ccf98b6f8ea5f1168f889_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1757', '中老年女装秋冬呢外套', '598.00', '146.80', 'https://goods6.juancdn.com/goods/190818/a/9/5d58cf86b6f8ea67370adf48_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1756', '12230夏条纹两件套装', '298.00', '79.00', 'https://goods8.juancdn.com/tao/190528/f/7/5cece4b933b08955b424db55_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1755', '中长款学院风外套潮女', '149.00', '119.00', 'https://goods3.juancdn.com/goods/190916/5/b/5d7f3a10b6f8ea7f2602b585_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1754', '妈妈装春秋装外套风衣', '598.00', '138.00', 'https://goods4.juancdn.com/goods/190829/7/e/5d6794f5b6f8ea3de10971db_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月09日');
INSERT INTO `shangpin` VALUES ('1753', '1203韩版大码针织T恤', '198.00', '69.00', 'https://goods4.juancdn.com/tao/190712/7/1/5d2822abb6f8ea6dc83a4c4f_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('1752', 'V领针织背心吊带衫', '399.00', '9.90', 'https://goods5.juancdn.com/goods/190723/9/4/5d36b604b6f8ea6759216ffe_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '女装', '10月11日');
INSERT INTO `shangpin` VALUES ('2099', '尖头绑带单鞋春季女鞋', '598.00', '59.00', 'https://goods2.juancdn.com/goods/190210/3/7/5c60334433b0894da42be6ad_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2100', '花朵平底女罗马凉鞋', '298.00', '29.90', 'https://goods6.juancdn.com/goods/190604/a/a/5cf6849433b089351833b8f7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');
INSERT INTO `shangpin` VALUES ('2101', '条纹布面粗高跟鞋单鞋', '498.00', '49.00', 'https://goods6.juancdn.com/goods/190210/b/b/5c6034d7b6f8ea69bd0d63c5_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '鞋子', '剩23小时');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `username` varchar(20) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('13762780801', 'l123456789', '1', '11111111@qq.com');
INSERT INTO `yonghu` VALUES ('18833334444', 'l123456789', '16', 'n15465415@qq.com');
INSERT INTO `yonghu` VALUES ('15648967845', '123456', '7', '16484557@qq.com');
INSERT INTO `yonghu` VALUES ('13344556677', 'l123456789', '8', null);
INSERT INTO `yonghu` VALUES ('13744446666', 'l123456789', '9', null);
INSERT INTO `yonghu` VALUES ('13344446666', 'l123456789', '10', null);
INSERT INTO `yonghu` VALUES ('13345678912', 'l123456789', '11', null);
INSERT INTO `yonghu` VALUES ('13344445555', 'l123456789', '12', null);
INSERT INTO `yonghu` VALUES ('13335555666', 'l123456789', '13', null);
INSERT INTO `yonghu` VALUES ('13366665555', 'l123456789', '14', null);
INSERT INTO `yonghu` VALUES ('13366662222', 'l123456789', '15', null);

-- ----------------------------
-- Table structure for zuji
-- ----------------------------
DROP TABLE IF EXISTS `zuji`;
CREATE TABLE `zuji` (
  `username` varchar(20) DEFAULT NULL,
  `sid` int(8) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `oldprice` float(10,2) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zuji
-- ----------------------------
INSERT INTO `zuji` VALUES ('13762780801', '2092', '百搭搭扣尖头女秋单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190731/7/5/5d41acf233b089176507bbe7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '4');
INSERT INTO `zuji` VALUES ('13762780801', '2096', '秋季圆头粗高跟女短靴', '398.00', '49.00', 'https://goods2.juancdn.com/goods/190830/2/9/5d68ef2d33b0891bf2250c09_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '25');
INSERT INTO `zuji` VALUES ('13762780801', '2095', '搭扣尖头细高跟鞋单鞋', '498.00', '49.00', 'https://goods6.juancdn.com/goods/190830/a/c/5d68dd08b6f8ea715e1da149_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '67');
INSERT INTO `zuji` VALUES ('13762780801', '2094', '搭扣尖头网红女秋单鞋', '398.00', '39.00', 'https://goods8.juancdn.com/goods/190830/f/f/5d68e41633b08914c460a3e8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '7');
INSERT INTO `zuji` VALUES ('13762780801', '2027', '韩版百搭乐福鞋一脚蹬', '199.00', '89.00', 'https://goods6.juancdn.com/goods/180814/b/0/5b724c2733b0894d5f52ee42_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '17');
INSERT INTO `zuji` VALUES ('13762780801', '2065', '富贵鸟平底防滑护士鞋', '398.00', '119.00', 'https://goods8.juancdn.com/goods/190507/e/9/5cd1829bb6f8ea278e2c50cf_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '14');
INSERT INTO `zuji` VALUES ('13762780801', '2091', '帆布鞋女韩版秋鞋', '189.00', '27.00', 'https://goods2.juancdn.com/goods/190925/2/9/5d8b1ae5b6f8ea77d351ba11_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '64');
INSERT INTO `zuji` VALUES ('13762780801', '2086', '尖头平底晚晚鞋女单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190902/7/f/5d6bf60fb6f8ea76be0bca23_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '75');
INSERT INTO `zuji` VALUES ('13762780801', '2097', '复古奶奶鞋平底女鞋', '298.00', '29.00', 'https://goods4.juancdn.com/goods/190808/7/2/5d4af684b6f8ea36a314f3d9_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '24');
INSERT INTO `zuji` VALUES ('13762780801', '2066', '系带内增高短靴马丁靴', '498.00', '49.00', 'https://goods8.juancdn.com/goods/190831/f/7/5d69508133b08912be334fde_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '55');
INSERT INTO `zuji` VALUES ('13344445555', '2013', '厚底系带内增高休闲鞋', '199.00', '45.00', 'https://goods2.juancdn.com/goods/180321/3/8/5ab1ed518150a168a6184c26_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '29');
INSERT INTO `zuji` VALUES ('13344445555', '2096', '秋季圆头粗高跟女短靴', '398.00', '49.00', 'https://goods2.juancdn.com/goods/190830/2/9/5d68ef2d33b0891bf2250c09_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '31');
INSERT INTO `zuji` VALUES ('13344445555', '2094', '搭扣尖头网红女秋单鞋', '398.00', '39.00', 'https://goods8.juancdn.com/goods/190830/f/f/5d68e41633b08914c460a3e8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '32');
INSERT INTO `zuji` VALUES ('13344445555', '2091', '帆布鞋女韩版秋鞋', '189.00', '27.00', 'https://goods2.juancdn.com/goods/190925/2/9/5d8b1ae5b6f8ea77d351ba11_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '40');
INSERT INTO `zuji` VALUES ('13344445555', '2086', '尖头平底晚晚鞋女单鞋', '398.00', '39.00', 'https://goods4.juancdn.com/goods/190902/7/f/5d6bf60fb6f8ea76be0bca23_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '41');
INSERT INTO `zuji` VALUES ('13344445555', '2066', '系带内增高短靴马丁靴', '498.00', '49.00', 'https://goods8.juancdn.com/goods/190831/f/7/5d69508133b08912be334fde_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '35');
INSERT INTO `zuji` VALUES ('13344445555', '2054', '富贵鸟百搭休闲拖鞋', '498.00', '119.00', 'https://goods2.juancdn.com/goods/190404/3/e/5ca5c72633b0895e25224a21_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '36');
INSERT INTO `zuji` VALUES ('13344445555', '2047', '富贵鸟休闲百搭小白鞋', '498.00', '119.00', 'https://goods8.juancdn.com/goods/190818/f/2/5d58fadab6f8ea014f7cf60a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '37');
INSERT INTO `zuji` VALUES ('13344445555', '2095', '搭扣尖头细高跟鞋单鞋', '498.00', '49.00', 'https://goods6.juancdn.com/goods/190830/a/c/5d68dd08b6f8ea715e1da149_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '42');
INSERT INTO `zuji` VALUES ('13762780801', '2050', '后拉链细高跟裸靴短靴', '598.00', '59.00', 'https://goods8.juancdn.com/goods/190922/e/8/5d878c37b6f8ea2cfb0e9307_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '73');
INSERT INTO `zuji` VALUES ('13762780801', '1926', '秋季百搭简约针织开衫', '249.00', '64.00', 'https://goods4.juancdn.com/goods/190830/7/d/5d687d11b6f8ea715c07c874_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '74');
INSERT INTO `zuji` VALUES ('13762780801', '1884', '学生百搭白色t恤上衣', '119.00', '55.00', 'https://goods8.juancdn.com/goods/190715/f/b/5d2c13db33b0890d4176bfff_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '72');
SET FOREIGN_KEY_CHECKS=1;
