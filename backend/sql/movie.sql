/*
 Navicat Premium Data Transfer

 Source Server         : mysql57
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : movie

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 13/07/2023 09:36:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `votes` int(11) NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `runtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('No.1', '肖申克的救赎', 10, 2882225, '美国', '剧情,犯罪', '1994-09-10(多伦多电影节),1994-10-14(美国)', '142分钟', 'https://movie.douban.com/subject/1292052/');
INSERT INTO `movie` VALUES ('No.10', '盗梦空间', 9, 2050297, '美国,英国', '剧情,科幻,悬疑,冒险', '2010-09-01(中国大陆),2020-08-28(中国大陆重映),2010-07-16(美国)', '148分钟', 'https://movie.douban.com/subject/3541415/');
INSERT INTO `movie` VALUES ('No.100', '唐伯虎点秋香', 9, 1073107, '中国香港', '喜剧,爱情,古装', '1993-07-01(中国香港)', '102 分钟', 'https://movie.douban.com/subject/1306249/');
INSERT INTO `movie` VALUES ('No.101', '7号房的礼物', 9, 554433, '韩国', '剧情,喜剧,家庭', '2013-01-23(韩国)', '127分钟', 'https://movie.douban.com/subject/10777687/');
INSERT INTO `movie` VALUES ('No.102', '被嫌弃的松子的一生', 9, 700627, '日本', '剧情,歌舞', '2006-05-27(日本)', '130 分钟', 'https://movie.douban.com/subject/1787291/');
INSERT INTO `movie` VALUES ('No.103', '请以你的名字呼唤我', 9, 717638, '意大利,法国,巴西,美国', '剧情,爱情,同性', '2017-01-22(圣丹斯电影节),2017-11-24(美国),2018-01-25(意大利)', '132分钟', 'https://movie.douban.com/subject/26799731/');
INSERT INTO `movie` VALUES ('No.104', '断背山', 9, 703880, '美国,加拿大', '剧情,爱情,同性,家庭', '2005-09-02(威尼斯电影节),2006-01-06(加拿大),2006-01-13(美国)', '134分钟', 'https://movie.douban.com/subject/1418834/');
INSERT INTO `movie` VALUES ('No.105', '剪刀手爱德华', 9, 1029338, '美国', '剧情,爱情,奇幻', '1990-12-06(美国)', '105分钟', 'https://movie.douban.com/subject/1292370/');
INSERT INTO `movie` VALUES ('No.106', '爱在黎明破晓前', 9, 678447, '美国,奥地利,瑞士', '剧情,爱情', '1995-01-27(美国)', '101分钟', 'https://movie.douban.com/subject/1296339/');
INSERT INTO `movie` VALUES ('No.107', '入殓师', 9, 662630, '日本', '剧情', '2021-10-29(中国大陆),2008-08-23(蒙特利尔电影节),2008-09-13(日本)', '130分钟', 'https://movie.douban.com/subject/2149806/');
INSERT INTO `movie` VALUES ('No.108', '勇敢的心', 9, 556754, '美国', '剧情,动作,传记,历史,战争', '1995-05-18(西雅图电影节),1995-05-24(美国)', '178分钟', 'https://movie.douban.com/subject/1294639/');
INSERT INTO `movie` VALUES ('No.109', '蝙蝠侠：黑暗骑士崛起', 9, 715001, '美国,英国', '剧情,动作,科幻,惊悚,犯罪', '2012-08-27(中国大陆),2012-07-20(美国)', '165分钟', 'https://movie.douban.com/subject/3395373/');
INSERT INTO `movie` VALUES ('No.11', '楚门的世界', 9, 1695955, '美国', '剧情,科幻', '1998-06-05(美国)', '103分钟', 'https://movie.douban.com/subject/1292064/');
INSERT INTO `movie` VALUES ('No.110', '第六感', 9, 552812, '美国', '剧情,悬疑,惊悚', '1999-08-06(美国)', '107分钟', 'https://movie.douban.com/subject/1297630/');
INSERT INTO `movie` VALUES ('No.111', '重庆森林', 9, 805996, '中国香港', '剧情,爱情', '1994-07-14(中国香港)', '102分钟', 'https://movie.douban.com/subject/1291999/');
INSERT INTO `movie` VALUES ('No.112', '幽灵公主', 9, 521279, '日本', '动画,奇幻,冒险', '1997-07-12(日本)', '134分钟', 'https://movie.douban.com/subject/1297359/');
INSERT INTO `movie` VALUES ('No.113', '超能陆战队', 9, 1005128, '美国', '喜剧,动作,科幻,动画,冒险', '2015-02-28(中国大陆),2020-07-31(中国大陆重映),2014-10-23(东京电影节),2014-11-07(美国)', '102分钟', 'https://movie.douban.com/subject/11026735/');
INSERT INTO `movie` VALUES ('No.114', '爱在日落黄昏时', 9, 556676, '美国,法国', '剧情,爱情', '2004-02-10(柏林电影节),2004-07-30(美国)', '80 分钟', 'https://movie.douban.com/subject/1291990/');
INSERT INTO `movie` VALUES ('No.115', '菊次郎的夏天', 9, 592756, '日本', '剧情,喜剧', '2020-09-25(中国大陆),1999-05-20(戛纳电影节),1999-06-05(日本)', '121分钟', 'https://movie.douban.com/subject/1293359/');
INSERT INTO `movie` VALUES ('No.116', '甜蜜蜜', 9, 548414, '中国香港', '剧情,爱情', '2015-02-13(中国大陆),1996-11-02(中国香港)', '118分钟(中国大陆)', 'https://movie.douban.com/subject/1305164/');
INSERT INTO `movie` VALUES ('No.117', '天使爱美丽', 9, 951875, '法国,德国', '剧情,喜剧,爱情', '2001-04-25(法国),2001-08-16(德国)', '122分钟', 'https://movie.douban.com/subject/1292215/');
INSERT INTO `movie` VALUES ('No.118', '阳光灿烂的日子', 9, 611486, '中国大陆,中国香港', '剧情,爱情', '1995-08-21(中国大陆),1995-06-28(中国香港),1994-09-09(威尼斯电影节)', '134分钟(中国大陆)', 'https://movie.douban.com/subject/1291875/');
INSERT INTO `movie` VALUES ('No.119', '借东西的小人阿莉埃蒂', 9, 550197, '日本', '动画,奇幻,冒险', '2010-07-17(日本)', '94分钟', 'https://movie.douban.com/subject/4202302/');
INSERT INTO `movie` VALUES ('No.12', '忠犬八公的故事', 9, 1393972, '美国,英国', '剧情', '2009-06-13(西雅图电影节),2010-03-12(英国)', '93分钟', 'https://movie.douban.com/subject/3011091/');
INSERT INTO `movie` VALUES ('No.120', '小森林', 9, 423505, '日本', '剧情', '2014-08-30(日本)', '111分钟', 'https://movie.douban.com/subject/25814705/');
INSERT INTO `movie` VALUES ('No.121', '完美的世界', 9, 313297, '美国', '剧情,犯罪', '1993-11-24(美国)', '138分钟', 'https://movie.douban.com/subject/1300992/');
INSERT INTO `movie` VALUES ('No.122', '消失的爱人', 9, 939244, '美国', '剧情,悬疑,惊悚,犯罪', '2014-09-26(纽约电影节),2014-10-03(美国)', '149分钟', 'https://movie.douban.com/subject/21318488/');
INSERT INTO `movie` VALUES ('No.123', '无人知晓', 9, 317340, '日本', '剧情', '2004-05-13(戛纳电影节),2004-08-07(日本)', '141分钟', 'https://movie.douban.com/subject/1292337/');
INSERT INTO `movie` VALUES ('No.124', '倩女幽魂', 9, 733655, '中国香港', '爱情,奇幻,武侠,古装', '2011-04-30(中国大陆),1987-07-18(中国香港)', '98分钟(香港)', 'https://movie.douban.com/subject/1297447/');
INSERT INTO `movie` VALUES ('No.125', '寄生虫', 9, 1361583, '韩国', '剧情', '2019-05-21(戛纳电影节),2019-05-30(韩国)', '132分钟', 'https://movie.douban.com/subject/27010768/');
INSERT INTO `movie` VALUES ('No.126', '时空恋旅人', 9, 664739, '英国', '喜剧,爱情,奇幻', '2013-09-04(英国)', '123分钟', 'https://movie.douban.com/subject/10577869/');
INSERT INTO `movie` VALUES ('No.127', '侧耳倾听', 9, 460012, '日本', '剧情,爱情,动画', '1995-07-15(日本)', '111分钟', 'https://movie.douban.com/subject/1297052/');
INSERT INTO `movie` VALUES ('No.128', '小森林', 9, 377825, '日本', '剧情', '2015-02-14(日本)', '120分钟', 'https://movie.douban.com/subject/25814707/');
INSERT INTO `movie` VALUES ('No.129', '幸福终点站', 9, 566335, '美国', '剧情,喜剧,爱情', '2005-01-14(中国大陆),2004-06-18(美国)', '128分钟', 'https://movie.douban.com/subject/1292274/');
INSERT INTO `movie` VALUES ('No.13', '海上钢琴师', 9, 1670413, '意大利', '剧情,音乐', '2019-11-15(中国大陆),1998-10-28(意大利)', '165分钟', 'https://movie.douban.com/subject/1292001/');
INSERT INTO `movie` VALUES ('No.130', '驯龙高手', 9, 751691, '美国', '动画,奇幻,冒险', '2010-05-14(中国大陆),2010-03-18(俄罗斯),2010-03-26(美国)', '98分钟', 'https://movie.douban.com/subject/2353023/');
INSERT INTO `movie` VALUES ('No.131', '一个叫欧维的男人决定去死', 9, 478216, '瑞典', '剧情', '2015-12-25(瑞典)', '116分钟', 'https://movie.douban.com/subject/26628357/');
INSERT INTO `movie` VALUES ('No.132', '教父3', 9, 371808, '美国', '剧情,犯罪', '1990-12-25(美国)', '162分钟', 'https://movie.douban.com/subject/1294240/');
INSERT INTO `movie` VALUES ('No.133', '未麻的部屋', 9, 329943, '日本', '动画,惊悚,奇幻', '1997-08-05(加拿大奇幻电影节),1998-02-28(日本)', '81 分钟', 'https://movie.douban.com/subject/1395091/');
INSERT INTO `movie` VALUES ('No.134', '萤火之森', 9, 535426, '日本', '剧情,爱情,动画,奇幻', '2011-09-17(日本)', '45分钟', 'https://movie.douban.com/subject/5989818/');
INSERT INTO `movie` VALUES ('No.135', '怪兽电力公司', 9, 665258, '美国', '喜剧,动画,儿童,奇幻,冒险', '2001-11-02(美国),2012-12-19(美国)', '92分钟', 'https://movie.douban.com/subject/1291579/');
INSERT INTO `movie` VALUES ('No.136', '哈利·波特与火焰杯', 9, 653981, '英国,美国', '悬疑,奇幻,冒险', '2005-11-18(中国大陆),2005-11-06(英国)', '157 分钟', 'https://movie.douban.com/subject/1309055/');
INSERT INTO `movie` VALUES ('No.137', '傲慢与偏见', 9, 794985, '法国,英国,美国', '剧情,爱情', '2005-09-16(英国)', '129 分钟', 'https://movie.douban.com/subject/1418200/');
INSERT INTO `movie` VALUES ('No.138', '玩具总动员3', 9, 511705, '美国', '喜剧,动画,奇幻,冒险', '2010-06-16(中国大陆),2010-06-18(美国)', '103分钟', 'https://movie.douban.com/subject/1858711/');
INSERT INTO `movie` VALUES ('No.139', '新世界', 9, 430997, '韩国', '剧情,犯罪', '2013-02-21(韩国)', '134分钟', 'https://movie.douban.com/subject/10437779/');
INSERT INTO `movie` VALUES ('No.14', '三傻大闹宝莱坞', 9, 1850818, '印度', '剧情,喜剧,爱情,歌舞', '2011-12-08(中国大陆),2009-12-25(印度)', '171分钟(印度)', 'https://movie.douban.com/subject/3793023/');
INSERT INTO `movie` VALUES ('No.140', '釜山行', 9, 1191852, '韩国', '动作,惊悚,灾难', '2016-05-13(戛纳电影节),2016-07-20(韩国)', '118分钟', 'https://movie.douban.com/subject/25986180/');
INSERT INTO `movie` VALUES ('No.141', '神偷奶爸', 9, 942562, '美国,法国', '喜剧,动画,冒险', '2010-06-20(莫斯科电影节),2010-07-09(美国)', '95分钟', 'https://movie.douban.com/subject/3287562/');
INSERT INTO `movie` VALUES ('No.142', '被解救的姜戈', 9, 605157, '美国', '剧情,动作,西部,冒险', '2013-05-12(中国大陆),2012-12-25(美国)', '163分钟(中国大陆)', 'https://movie.douban.com/subject/6307447/');
INSERT INTO `movie` VALUES ('No.143', '玛丽和马克思', 9, 420344, '澳大利亚,美国', '剧情,喜剧,动画', '2009-01-15(圣丹斯电影节),2009-04-09(澳大利亚)', '92分钟', 'https://movie.douban.com/subject/3072124/');
INSERT INTO `movie` VALUES ('No.144', '告白', 9, 668687, '日本', '剧情,悬疑', '2010-06-05(日本)', '106分钟', 'https://movie.douban.com/subject/4268598/');
INSERT INTO `movie` VALUES ('No.145', '大鱼', 9, 565837, '美国', '剧情,家庭,奇幻,冒险', '2003-12-04(纽约首映),2004-01-09(美国)', '125 分钟', 'https://movie.douban.com/subject/1291545/');
INSERT INTO `movie` VALUES ('No.146', '哪吒闹海', 9, 257665, '中国大陆', '动画,奇幻,冒险', '1979-05-19(中国大陆)', '65分钟', 'https://movie.douban.com/subject/1307315/');
INSERT INTO `movie` VALUES ('No.147', '射雕英雄传之东成西就', 9, 633241, '中国香港', '喜剧,奇幻,武侠,古装', '1993-02-05(中国香港)', '113分钟(香港)', 'https://movie.douban.com/subject/1316510/');
INSERT INTO `movie` VALUES ('No.148', '茶馆', 10, 143288, '中国大陆', '剧情,历史', '1982(中国大陆)', '118分钟', 'https://movie.douban.com/subject/1461403/');
INSERT INTO `movie` VALUES ('No.149', '喜宴', 9, 359630, '中国台湾,美国', '剧情,喜剧,爱情,同性,家庭', '1993-02(柏林电影节),1993-08-04(美国)', '108分钟', 'https://movie.douban.com/subject/1303037/');
INSERT INTO `movie` VALUES ('No.15', '放牛班的春天', 9, 1304864, '法国,瑞士,德国', '剧情,音乐', '2004-10-16(中国大陆),2022-12-02(中国大陆重映),2004-03-17(法国)', '97分钟', 'https://movie.douban.com/subject/1291549/');
INSERT INTO `movie` VALUES ('No.150', '头号玩家', 9, 1360770, '美国', '动作,科幻,冒险', '2018-03-30(中国大陆),2018-03-11(西南偏南电影节),2018-03-29(美国)', '140分钟', 'https://movie.douban.com/subject/4920389/');
INSERT INTO `movie` VALUES ('No.151', '模仿游戏', 9, 642494, '英国,美国', '剧情,同性,传记,战争', '2015-07-21(中国大陆),2014-08-29(特柳赖德电影节),2014-11-14(英国),2014-12-25(美国)', '114分钟', 'https://movie.douban.com/subject/10463953/');
INSERT INTO `movie` VALUES ('No.152', '九品芝麻官', 9, 673835, '中国香港,中国大陆', '剧情,喜剧,古装', '1994-03-31(中国香港)', '108分钟', 'https://movie.douban.com/subject/1297518/');
INSERT INTO `movie` VALUES ('No.153', '阳光姐妹淘', 9, 588243, '韩国', '剧情,喜剧', '2011-05-04(韩国)', '124分钟', 'https://movie.douban.com/subject/4917726/');
INSERT INTO `movie` VALUES ('No.154', '我是山姆', 9, 336129, '美国', '剧情,家庭', '2001-12-03(美国)', '132 分钟', 'https://movie.douban.com/subject/1306861/');
INSERT INTO `movie` VALUES ('No.155', '色，戒', 9, 801171, '中国台湾,中国大陆,美国,中国香港', '剧情,爱情,情色', '2007-11-01(中国大陆),2007-09-24(中国台湾),2007-09-26(中国香港),2007-08-30(威尼斯电影节),2007-10-26(美国)', '158分钟', 'https://movie.douban.com/subject/1828115/');
INSERT INTO `movie` VALUES ('No.156', '花样年华', 9, 602886, '中国香港', '剧情,爱情', '2000-09-29(中国香港),2000-05-20(戛纳电影节)', '98分钟', 'https://movie.douban.com/subject/1291557/');
INSERT INTO `movie` VALUES ('No.157', '血战钢锯岭', 9, 779180, '澳大利亚,美国', '剧情,传记,历史,战争', '2016-12-08(中国大陆),2016-09-04(威尼斯电影节),2016-11-04(美国)', '139分钟(中国大陆)', 'https://movie.douban.com/subject/26325320/');
INSERT INTO `movie` VALUES ('No.158', '恐怖直播', 9, 648253, '韩国', '剧情,悬疑,犯罪', '2013-07-31(韩国)', '97分钟', 'https://movie.douban.com/subject/21360417/');
INSERT INTO `movie` VALUES ('No.159', '七武士', 9, 196755, '日本', '剧情,动作,冒险', '1954-04-26(日本)', '207分钟', 'https://movie.douban.com/subject/1295399/');
INSERT INTO `movie` VALUES ('No.16', '机器人总动员', 9, 1310028, '美国', '科幻,动画,冒险', '2008-06-27(美国)', '98分钟', 'https://movie.douban.com/subject/2131459/');
INSERT INTO `movie` VALUES ('No.160', '头脑特工队', 9, 607593, '美国', '喜剧,动画,冒险', '2015-10-06(中国大陆),2015-06-19(美国)', '95分钟', 'https://movie.douban.com/subject/10533913/');
INSERT INTO `movie` VALUES ('No.161', '惊魂记', 9, 291364, '美国', '悬疑,惊悚,恐怖', '1960-06-16(纽约首映),1960-09-08(美国)', '109分钟', 'https://movie.douban.com/subject/1293181/');
INSERT INTO `movie` VALUES ('No.162', '黑客帝国3：矩阵革命', 9, 444623, '美国', '动作,科幻', '2003-11-05(美国/中国大陆)', '129 分钟', 'https://movie.douban.com/subject/1302467/');
INSERT INTO `movie` VALUES ('No.163', '你的名字。', 9, 1399327, '日本', '剧情,爱情,动画', '2016-12-02(中国大陆),2016-08-26(日本)', '106分钟', 'https://movie.douban.com/subject/26683290/');
INSERT INTO `movie` VALUES ('No.164', '电锯惊魂', 9, 529200, '美国', '悬疑,惊悚,恐怖', '2004-01-19(圣丹斯电影节),2004-10-29(美国)', '103分钟', 'https://movie.douban.com/subject/1417598/');
INSERT INTO `movie` VALUES ('No.165', '三块广告牌', 9, 816043, '英国,美国', '剧情,犯罪', '2018-03-02(中国大陆),2017-09-04(威尼斯电影节),2017-12-01(美国)', '115分钟', 'https://movie.douban.com/subject/26611804/');
INSERT INTO `movie` VALUES ('No.166', '达拉斯买家俱乐部', 9, 450140, '美国', '剧情,同性,传记', '2013-09-07(多伦多电影节),2013-11-22(美国)', '117分钟', 'https://movie.douban.com/subject/1793929/');
INSERT INTO `movie` VALUES ('No.167', '疯狂原始人', 9, 833987, '美国', '喜剧,动画,冒险', '2013-04-20(中国大陆),2013-02-15(柏林电影节),2013-03-22(美国)', '98分钟', 'https://movie.douban.com/subject/1907966/');
INSERT INTO `movie` VALUES ('No.168', '心迷宫', 9, 517682, '中国大陆', '剧情,悬疑,犯罪', '2015-10-16(中国大陆),2014-07-21(FIRST青年影展),2014-08-28(威尼斯电影节)', '110分钟(中国大陆)', 'https://movie.douban.com/subject/25917973/');
INSERT INTO `movie` VALUES ('No.169', '谍影重重3', 9, 415596, '美国,德国,法国,英国', '动作,悬疑,惊悚', '2007-11-15(中国大陆),2007-08-03(美国)', '115分钟', 'https://movie.douban.com/subject/1578507/');
INSERT INTO `movie` VALUES ('No.17', '无间道', 9, 1356085, '中国香港', '剧情,惊悚,犯罪', '2003-09-05(中国大陆),2002-12-12(中国香港)', '101分钟', 'https://movie.douban.com/subject/1307914/');
INSERT INTO `movie` VALUES ('No.170', '上帝之城', 9, 300203, '巴西,法国', '剧情,犯罪', '2002-05-18(戛纳电影节),2002-08-30(巴西)', '130分钟', 'https://movie.douban.com/subject/1292208/');
INSERT INTO `movie` VALUES ('No.171', '英雄本色', 9, 537708, '中国香港', '剧情,动作,犯罪', '2017-11-17(中国大陆),1986-08-02(中国香港)', '95分钟', 'https://movie.douban.com/subject/1297574/');
INSERT INTO `movie` VALUES ('No.172', '卢旺达饭店', 9, 328053, '英国,南非,意大利,美国', '剧情,传记,历史,战争', '2004-09-11(多伦多电影节),2005-03-04(英国)', '121分钟', 'https://movie.douban.com/subject/1291822/');
INSERT INTO `movie` VALUES ('No.173', '纵横四海', 9, 423193, '中国香港', '剧情,喜剧,动作,犯罪', '1991-02-02(中国香港)', '108分钟', 'https://movie.douban.com/subject/1295409/');
INSERT INTO `movie` VALUES ('No.174', '风之谷', 9, 352931, '日本', '动画,奇幻,冒险', '1992-05(中国大陆),1984-03-11(日本)', '117分钟', 'https://movie.douban.com/subject/1291585/');
INSERT INTO `movie` VALUES ('No.175', '海街日记', 9, 445875, '日本', '剧情,家庭', '2015-05-14(戛纳电影节),2015-06-13(日本)', '127分钟', 'https://movie.douban.com/subject/25895901/');
INSERT INTO `movie` VALUES ('No.176', '爱在午夜降临前', 9, 399431, '美国,希腊', '剧情,爱情', '2013-06-14(美国)', '109分钟', 'https://movie.douban.com/subject/10808442/');
INSERT INTO `movie` VALUES ('No.177', '绿里奇迹', 9, 327291, '美国', '剧情,悬疑,犯罪,奇幻', '1999-12-10(美国)', '189 分钟', 'https://movie.douban.com/subject/1300374/');
INSERT INTO `movie` VALUES ('No.178', '记忆碎片', 9, 596987, '美国', '剧情,悬疑,惊悚,犯罪', '2000-09-05(威尼斯电影节),2000-10-20(英国),2001-05-25(美国)', '113分钟', 'https://movie.douban.com/subject/1304447/');
INSERT INTO `movie` VALUES ('No.179', '岁月神偷', 9, 572370, '中国香港,中国大陆', '剧情,家庭', '2010-04-16(中国大陆),2010-03-11(中国香港),2010-02-14(柏林电影节)', '117分钟', 'https://movie.douban.com/subject/3792799/');
INSERT INTO `movie` VALUES ('No.18', '疯狂动物城', 9, 1921313, '美国', '喜剧,动画,冒险', '2016-03-04(中国大陆/美国),2020-07-24(中国大陆重映)', '109分钟(中国大陆)', 'https://movie.douban.com/subject/25662329/');
INSERT INTO `movie` VALUES ('No.180', '忠犬八公物语', 9, 195001, '日本', '剧情', '2023(中国大陆),1987-08-01(日本)', '107 分钟', 'https://movie.douban.com/subject/1959195/');
INSERT INTO `movie` VALUES ('No.181', '疯狂的石头', 9, 815971, '中国大陆,中国香港', '喜剧,犯罪', '2006-06-30(中国大陆),2006-08-10(中国香港)', '106分钟(香港)', 'https://movie.douban.com/subject/1862151/');
INSERT INTO `movie` VALUES ('No.182', '荒蛮故事', 9, 441435, '阿根廷,西班牙', '剧情,喜剧,犯罪', '2014-05-17(戛纳电影节),2014-08-21(阿根廷)', '122分钟', 'https://movie.douban.com/subject/24750126/');
INSERT INTO `movie` VALUES ('No.183', '雨中曲', 9, 223627, '美国', '喜剧,爱情,歌舞', '1952-04-11(美国)', '103分钟', 'https://movie.douban.com/subject/1293460/');
INSERT INTO `movie` VALUES ('No.184', '小丑', 9, 999231, '美国,加拿大', '剧情,惊悚,犯罪', '2019-08-31(威尼斯电影节),2019-10-04(美国)', '122分钟', 'https://movie.douban.com/subject/27119724/');
INSERT INTO `movie` VALUES ('No.185', '背靠背，脸对脸', 10, 131860, '中国大陆,中国香港', '剧情', '1994-09-10(多伦多电影节)', '148分钟', 'https://movie.douban.com/subject/1307856/');
INSERT INTO `movie` VALUES ('No.186', '2001太空漫游', 9, 325367, '英国,美国', '科幻,惊悚,冒险', '1968-04-02(华盛顿首映),1968-05-12(英国)', '149分钟', 'https://movie.douban.com/subject/1292226/');
INSERT INTO `movie` VALUES ('No.187', '小偷家族', 9, 808789, '日本', '剧情,家庭,犯罪', '2018-08-03(中国大陆),2018-05-13(戛纳电影节),2018-06-08(日本)', '117分钟(中国大陆)', 'https://movie.douban.com/subject/27622447/');
INSERT INTO `movie` VALUES ('No.188', '爆裂鼓手', 9, 584396, '美国', '剧情,音乐', '2014-01-16(圣丹斯电影节),2014-10-10(美国)', '107分钟', 'https://movie.douban.com/subject/25773932/');
INSERT INTO `movie` VALUES ('No.189', '无敌破坏王', 9, 533655, '美国', '喜剧,动画,奇幻,冒险', '2012-11-06(中国大陆),2012-11-02(美国)', '101分钟', 'https://movie.douban.com/subject/6534248/');
INSERT INTO `movie` VALUES ('No.19', '控方证人', 10, 551186, '美国', '剧情,悬疑,犯罪', '1957-12-17(美国)', '116分钟', 'https://movie.douban.com/subject/1296141/');
INSERT INTO `movie` VALUES ('No.190', '无间道2', 9, 474862, '中国香港', '剧情,惊悚,犯罪', '2003-10-17(中国大陆),2003-10-01(中国香港)', '119分钟', 'https://movie.douban.com/subject/1307106/');
INSERT INTO `movie` VALUES ('No.191', '心灵奇旅', 9, 972954, '美国', '动画,音乐,奇幻', '2020-12-25(中国大陆/美国网络),2020-10-11(伦敦电影节)', '101分钟', 'https://movie.douban.com/subject/24733428/');
INSERT INTO `movie` VALUES ('No.192', '贫民窟的百万富翁', 9, 741418, '英国', '剧情,爱情', '2009-03-26(中国大陆),2008-08-30(特柳赖德电影节),2009-01-09(英国)', '120分钟', 'https://movie.douban.com/subject/2209573/');
INSERT INTO `movie` VALUES ('No.193', '冰川时代', 9, 608794, '美国', '喜剧,动画,冒险', '2002-03-15(美国)', '81分钟', 'https://movie.douban.com/subject/1291578/');
INSERT INTO `movie` VALUES ('No.194', '恐怖游轮', 9, 856151, '英国,澳大利亚', '剧情,悬疑,惊悚', '2009-10-16(英国)', '99 分钟', 'https://movie.douban.com/subject/3011051/');
INSERT INTO `movie` VALUES ('No.195', '东邪西毒', 9, 573840, '中国香港,中国台湾', '剧情,动作,爱情,武侠,古装', '1994-09-17(中国大陆),1994-09-12(威尼斯电影节)', '95分钟', 'https://movie.douban.com/subject/1292328/');
INSERT INTO `movie` VALUES ('No.196', '牯岭街少年杀人事件', 9, 297642, '中国台湾', '剧情,犯罪', '1991-07-27(中国台湾)', '237分钟(导演剪辑版)', 'https://movie.douban.com/subject/1292329/');
INSERT INTO `movie` VALUES ('No.197', '魔女宅急便', 9, 456979, '日本', '动画,奇幻,冒险', '1989-07-29(日本)', '103分钟', 'https://movie.douban.com/subject/1307811/');
INSERT INTO `movie` VALUES ('No.198', '遗愿清单', 9, 457504, '美国', '剧情,喜剧,冒险', '2007-12-25(多伦多电影节),2008-01-11(美国)', '97 分钟', 'https://movie.douban.com/subject/1867345/');
INSERT INTO `movie` VALUES ('No.199', '东京教父', 9, 227854, '日本', '剧情,喜剧,动画', '2003-11-08(日本)', '92分钟', 'https://movie.douban.com/subject/1310177/');
INSERT INTO `movie` VALUES ('No.2', '霸王别姬', 10, 2128844, '中国大陆,中国香港', '剧情,爱情,同性', '1993-07-26(中国大陆),1993-01-01(中国香港)', '171分钟', 'https://movie.douban.com/subject/1291546/');
INSERT INTO `movie` VALUES ('No.20', '大话西游之大圣娶亲', 9, 1526510, '中国香港,中国大陆', '喜剧,爱情,奇幻,古装', '2014-10-24(中国大陆),2017-04-13(中国大陆重映),1995-02-04(中国香港)', '95分钟', 'https://movie.douban.com/subject/1292213/');
INSERT INTO `movie` VALUES ('No.200', '你看起来好像很好吃', 9, 331243, '日本', '剧情,动画,儿童', '2010-10-16(日本)', '90分钟', 'https://movie.douban.com/subject/4848115/');
INSERT INTO `movie` VALUES ('No.201', '真爱至上', 9, 728440, '英国,美国,法国', '剧情,喜剧,爱情', '2003-09-07(多伦多电影节),2003-11-06(美国),2003-11-21(英国)', '135分钟', 'https://movie.douban.com/subject/1292401/');
INSERT INTO `movie` VALUES ('No.202', '大佛普拉斯', 9, 453631, '中国台湾', '剧情,喜剧', '2017-10-13(中国台湾),2017-06-29(台北电影节)', '102分钟', 'https://movie.douban.com/subject/27059130/');
INSERT INTO `movie` VALUES ('No.203', '黑天鹅', 9, 775589, '美国', '剧情,惊悚', '2010-09-01(威尼斯电影节),2010-12-17(美国)', '108分钟', 'https://movie.douban.com/subject/1978709/');
INSERT INTO `movie` VALUES ('No.204', '可可西里', 9, 301506, '中国大陆,中国香港', '剧情,犯罪', '2004-10-01(中国大陆),2005-04-21(中国香港)', '85分钟(中国大陆)', 'https://movie.douban.com/subject/1308857/');
INSERT INTO `movie` VALUES ('No.205', '城市之光', 9, 145144, '美国', '剧情,喜剧,爱情', '1931-01-30(洛杉矶首映),1931-03-07(美国)', '87 分钟', 'https://movie.douban.com/subject/1293908/');
INSERT INTO `movie` VALUES ('No.206', '源代码', 9, 830001, '美国,加拿大', '科幻,悬疑,惊悚', '2011-08-30(中国大陆),2011-03-11(西南偏南电影节),2011-04-01(美国)', '93分钟', 'https://movie.douban.com/subject/3075287/');
INSERT INTO `movie` VALUES ('No.207', '雨人', 9, 401560, '美国', '剧情', '1988-12-16(美国)', '133分钟', 'https://movie.douban.com/subject/1291870/');
INSERT INTO `movie` VALUES ('No.208', '海边的曼彻斯特', 9, 533518, '美国', '剧情,家庭', '2017-08-25(中国大陆),2016-01-23(圣丹斯电影节),2016-11-18(美国)', '137分钟', 'https://movie.douban.com/subject/25980443/');
INSERT INTO `movie` VALUES ('No.209', '恋恋笔记本', 9, 666298, '美国', '剧情,爱情', '2004-06-25(美国)', '123分钟', 'https://movie.douban.com/subject/1309163/');
INSERT INTO `movie` VALUES ('No.21', '熔炉', 9, 927220, '韩国', '剧情', '2011-09-22(韩国)', '125分钟', 'https://movie.douban.com/subject/5912992/');
INSERT INTO `movie` VALUES ('No.210', '初恋这件小事', 9, 976432, '泰国', '剧情,喜剧,爱情', '2012-06-05(中国大陆),2010-08-12(泰国)', '118分钟(泰国)', 'https://movie.douban.com/subject/4739952/');
INSERT INTO `movie` VALUES ('No.211', '波西米亚狂想曲', 9, 599858, '英国,美国', '剧情,同性,音乐,传记', '2019-03-22(中国大陆),2018-11-02(美国)', '135分钟', 'https://movie.douban.com/subject/5300054/');
INSERT INTO `movie` VALUES ('No.212', '人工智能', 9, 442852, '美国,英国', '剧情,科幻', '2001-06-29(美国)', '146分钟', 'https://movie.douban.com/subject/1302827/');
INSERT INTO `movie` VALUES ('No.213', '青蛇', 9, 523343, '中国香港,中国大陆', '剧情,爱情,奇幻,古装', '1993-11-04(中国香港)', '99分钟', 'https://movie.douban.com/subject/1303394/');
INSERT INTO `movie` VALUES ('No.214', '虎口脱险', 9, 255209, '法国,英国', '喜剧,战争', '1966-12-08(法国)', '132分钟', 'https://movie.douban.com/subject/1296909/');
INSERT INTO `movie` VALUES ('No.215', '终结者2：审判日', 9, 339873, '美国,法国', '动作,科幻', '1991-07-03(美国),2017-02-17(柏林电影节 3D)', '137分钟', 'https://movie.douban.com/subject/1291844/');
INSERT INTO `movie` VALUES ('No.216', '疯狂的麦克斯4：狂暴之路', 9, 526941, '澳大利亚,美国', '动作,科幻,冒险', '2015-05-14(澳大利亚),2015-05-15(美国)', '120分钟', 'https://movie.douban.com/subject/3592854/');
INSERT INTO `movie` VALUES ('No.217', '罗生门', 9, 312468, '日本', '剧情,悬疑,犯罪', '1950-08-26(日本)', '88分钟', 'https://movie.douban.com/subject/1291879/');
INSERT INTO `movie` VALUES ('No.218', '萤火虫之墓', 9, 403210, '日本', '剧情,动画,战争', '1988-04-16(日本)', '89 分钟', 'https://movie.douban.com/subject/1293318/');
INSERT INTO `movie` VALUES ('No.219', '新龙门客栈', 9, 441635, '中国香港,中国大陆', '动作,爱情,武侠,古装', '2012-02-24(中国大陆),1992-08-27(中国香港)', '88分钟', 'https://movie.douban.com/subject/1292287/');
INSERT INTO `movie` VALUES ('No.22', '教父', 9, 962391, '美国', '剧情,犯罪', '1972-03-15(纽约首映),1972-03-24(美国)', '175 分钟', 'https://movie.douban.com/subject/1291841/');
INSERT INTO `movie` VALUES ('No.220', '千钧一发', 9, 296429, '美国', '剧情,科幻,惊悚', '1997-10-24(美国)', '106分钟', 'https://movie.douban.com/subject/1300117/');
INSERT INTO `movie` VALUES ('No.221', '末路狂花', 9, 252327, '美国,英国,法国', '剧情,惊悚,犯罪', '1991-05-24(美国),1991-05-29(法国)', '130 分钟', 'https://movie.douban.com/subject/1291992/');
INSERT INTO `movie` VALUES ('No.222', '崖上的波妞', 9, 493078, '日本', '动画,奇幻,冒险', '2020-12-31(中国大陆),2008-07-19(日本)', '101分钟', 'https://movie.douban.com/subject/1959877/');
INSERT INTO `movie` VALUES ('No.223', '无耻混蛋', 9, 474034, '德国,美国', '剧情,犯罪', '2009-05-20(戛纳电影节),2009-08-20(德国)', '153分钟', 'https://movie.douban.com/subject/1438652/');
INSERT INTO `movie` VALUES ('No.224', '奇迹男孩', 9, 548618, '美国,中国香港', '剧情,家庭,儿童', '2018-01-19(中国大陆),2017-11-17(美国)', '113分钟', 'https://movie.douban.com/subject/26787574/');
INSERT INTO `movie` VALUES ('No.225', '彗星来的那一夜', 9, 574925, '美国,英国', '科幻,悬疑,惊悚', '2013-09-19(奇幻电影节),2014-08-06(美国)', '89分钟', 'https://movie.douban.com/subject/25807345/');
INSERT INTO `movie` VALUES ('No.226', '二十二', 9, 290107, '中国大陆', '纪录片', '2017-08-14(中国大陆),2015-10-05(釜山电影节),2016-06-25(莫斯科电影节)', '99分钟(公映版)', 'https://movie.douban.com/subject/26430107/');
INSERT INTO `movie` VALUES ('No.227', '花束般的恋爱', 9, 613885, '日本', '剧情,爱情', '2022-02-22(中国大陆),2021-01-29(日本)', '124分钟', 'https://movie.douban.com/subject/34874432/');
INSERT INTO `movie` VALUES ('No.228', '黑客帝国2：重装上阵', 9, 404031, '美国', '动作,科幻', '2003-07-18(中国大陆),2003-05-07(韦斯特伍德首映),2003-05-15(美国)', '138分钟', 'https://movie.douban.com/subject/1304141/');
INSERT INTO `movie` VALUES ('No.229', '爱乐之城', 8, 888631, '美国', '剧情,爱情,歌舞', '2017-02-14(中国大陆),2016-08-31(威尼斯电影节),2016-12-25(美国)', '128分钟', 'https://movie.douban.com/subject/25934014/');
INSERT INTO `movie` VALUES ('No.23', '触不可及', 9, 1106988, '法国', '剧情,喜剧', '2011-11-02(法国)', '112分钟', 'https://movie.douban.com/subject/6786002/');
INSERT INTO `movie` VALUES ('No.230', '血钻', 9, 377671, '美国,德国,英国', '剧情,惊悚,冒险', '2006-12-08(美国)', '143 分钟', 'https://movie.douban.com/subject/1428175/');
INSERT INTO `movie` VALUES ('No.231', '芙蓉镇', 9, 136042, '中国大陆', '剧情,爱情', '1987-03-05(中国大陆上海首映)', '164 分钟', 'https://movie.douban.com/subject/1297880/');
INSERT INTO `movie` VALUES ('No.232', '战争之王', 9, 366472, '法国,德国,美国', '剧情,犯罪', '2005-09-16(美国)', '122 分钟', 'https://movie.douban.com/subject/1419936/');
INSERT INTO `movie` VALUES ('No.233', '房间', 9, 366285, '爱尔兰,加拿大,英国,美国', '剧情,家庭', '2015-09-04(特柳赖德电影节),2015-10-23(多伦多),2016-01-15(爱尔兰/英国),2016-01-22(美国)', '118分钟', 'https://movie.douban.com/subject/25724855/');
INSERT INTO `movie` VALUES ('No.234', '步履不停', 9, 277989, '日本', '剧情,家庭', '2008-06-28(日本)', '115分钟', 'https://movie.douban.com/subject/2222996/');
INSERT INTO `movie` VALUES ('No.235', '魂断蓝桥', 9, 276855, '美国', '剧情,爱情,战争', '1940-05-17(美国)', '108分钟', 'https://movie.douban.com/subject/1293964/');
INSERT INTO `movie` VALUES ('No.236', '哈利·波特与死亡圣器(上)', 9, 568663, '英国,美国', '奇幻,冒险', '2010-11-19(中国大陆/英国)', '146分钟', 'https://movie.douban.com/subject/2051007/');
INSERT INTO `movie` VALUES ('No.237', '火星救援', 9, 721177, '英国,美国,匈牙利,约旦', '剧情,科幻,冒险', '2015-11-25(中国大陆),2015-10-02(美国)', '142分钟', 'https://movie.douban.com/subject/25864085/');
INSERT INTO `movie` VALUES ('No.238', '千年女优', 9, 264808, '日本', '剧情,爱情,动画', '2001-07-28(加拿大奇幻电影节),2002-09-14(日本)', '87 分钟', 'https://movie.douban.com/subject/1307394/');
INSERT INTO `movie` VALUES ('No.239', '谍影重重2', 9, 349956, '美国,德国', '动作,悬疑,惊悚', '2004-11-14(中国大陆),2004-07-15(洛杉矶首映),2004-07-23(美国)', '108分钟', 'https://movie.douban.com/subject/1308767/');
INSERT INTO `movie` VALUES ('No.24', '当幸福来敲门', 9, 1512893, '美国', '剧情,家庭,传记', '2008-01-17(中国大陆),2020-07-20(中国大陆重映),2006-12-15(美国)', '117分钟', 'https://movie.douban.com/subject/1849031/');
INSERT INTO `movie` VALUES ('No.240', '弱点', 9, 305545, '美国', '剧情,家庭,传记,运动', '2009-11-20(美国)', '129分钟', 'https://movie.douban.com/subject/3552028/');
INSERT INTO `movie` VALUES ('No.241', '阿飞正传', 9, 507891, '中国香港', '剧情,爱情,犯罪', '2018-06-25(中国大陆),1990-12-15(中国香港)', '94分钟', 'https://movie.douban.com/subject/1305690/');
INSERT INTO `movie` VALUES ('No.242', '谍影重重', 9, 423035, '美国,德国,捷克', '动作,悬疑,惊悚', '2002-11-21(中国大陆),2002-06-14(美国)', '119分钟', 'https://movie.douban.com/subject/1304102/');
INSERT INTO `movie` VALUES ('No.243', '燃情岁月', 9, 285215, '美国', '剧情,爱情,战争,西部', '1994-12-16(美国)', '133分钟', 'https://movie.douban.com/subject/1295865/');
INSERT INTO `movie` VALUES ('No.244', '白日梦想家', 9, 470731, '美国,英国', '剧情,喜剧,冒险', '2013-12-25(美国)', '114分钟', 'https://movie.douban.com/subject/2133323/');
INSERT INTO `movie` VALUES ('No.245', '朗读者', 9, 451154, '美国,德国', '剧情,爱情', '2008-12-10(纽约首映),2009-01-30(美国),2009-02-26(德国)', '124 分钟', 'https://movie.douban.com/subject/2213597/');
INSERT INTO `movie` VALUES ('No.246', '再次出发之纽约遇见你', 9, 424537, '美国', '喜剧,爱情,音乐', '2015-06-26(中国大陆),2013-09-07(多伦多电影节),2014-07-11(美国)', '104分钟', 'https://movie.douban.com/subject/6874403/');
INSERT INTO `movie` VALUES ('No.247', '哈利·波特与凤凰社', 9, 561672, '英国,美国', '奇幻,冒险', '2007-08-10(中国大陆),2007-07-11(美国)', '138分钟', 'https://movie.douban.com/subject/1457217/');
INSERT INTO `movie` VALUES ('No.248', '蜘蛛侠：平行宇宙', 9, 651711, '美国', '动作,科幻,动画,冒险', '2018-12-21(中国大陆),2018-12-14(美国)', '116分钟(中国大陆)', 'https://movie.douban.com/subject/26374197/');
INSERT INTO `movie` VALUES ('No.249', '香水', 9, 541517, '德国,法国,西班牙,美国,比利时', '剧情,犯罪,奇幻', '2006-09-07(德国),2006-09-14(法国),2006-11-24(西班牙),2007-01-05(美国)', '147分钟', 'https://movie.douban.com/subject/1760622/');
INSERT INTO `movie` VALUES ('No.25', '龙猫', 9, 1260074, '日本', '动画,奇幻,冒险', '2018-12-14(中国大陆),1988-04-16(日本)', '86分钟', 'https://movie.douban.com/subject/1291560/');
INSERT INTO `movie` VALUES ('No.250', '穿越时空的少女', 9, 379649, '日本', '剧情,爱情,科幻,动画', '2006-07-15(日本)', '98分钟', 'https://movie.douban.com/subject/1937946/');
INSERT INTO `movie` VALUES ('No.26', '怦然心动', 9, 1823560, '美国', '剧情,喜剧,爱情', '2010-07-26(好莱坞首映),2010-09-10(美国)', '90分钟', 'https://movie.douban.com/subject/3319755/');
INSERT INTO `movie` VALUES ('No.27', '末代皇帝', 9, 878969, '英国,意大利,中国大陆,法国', '剧情,传记,历史', '1987-10-04(东京国际电影节),1987-10-23(意大利)', '163分钟', 'https://movie.douban.com/subject/1293172/');
INSERT INTO `movie` VALUES ('No.28', '寻梦环游记', 9, 1667460, '美国', '喜剧,动画,音乐,奇幻', '2017-11-24(中国大陆),2020-07-20(中国大陆重映),2017-11-22(美国)', '105分钟', 'https://movie.douban.com/subject/20495023/');
INSERT INTO `movie` VALUES ('No.29', '活着', 9, 839501, '中国大陆,中国香港', '剧情,家庭,历史', '1994-06-30(中国香港),1994-05-17(戛纳电影节)', '132分钟', 'https://movie.douban.com/subject/1292365/');
INSERT INTO `movie` VALUES ('No.3', '阿甘正传', 10, 2150516, '美国', '剧情,爱情', '1994-06-23(洛杉矶首映),1994-07-06(美国)', '142分钟', 'https://movie.douban.com/subject/1292720/');
INSERT INTO `movie` VALUES ('No.30', '蝙蝠侠：黑暗骑士', 9, 1050762, '美国,英国', '剧情,动作,科幻,惊悚,犯罪', '2008-07-14(纽约首映),2008-07-18(美国)', '152分钟', 'https://movie.douban.com/subject/1851857/');
INSERT INTO `movie` VALUES ('No.31', '哈利·波特与魔法石', 9, 1181944, '美国,英国', '奇幻,冒险', '2002-01-26(中国大陆),2020-08-14(中国大陆重映),2001-11-04(英国首映),2001-11-16(美国)', '152分钟', 'https://movie.douban.com/subject/1295038/');
INSERT INTO `movie` VALUES ('No.32', '指环王3：王者无敌', 9, 798108, '美国,新西兰', '剧情,动作,奇幻,冒险', '2004-03-12(中国大陆),2021-05-14(中国大陆重映),2003-12-17(美国)', '201分钟', 'https://movie.douban.com/subject/1291552/');
INSERT INTO `movie` VALUES ('No.33', '乱世佳人', 9, 688261, '美国', '剧情,爱情,历史,战争', '1939-12-15(亚特兰大首映),1940-01-17(美国)', '238分钟', 'https://movie.douban.com/subject/1300267/');
INSERT INTO `movie` VALUES ('No.34', '我不是药神', 9, 2090530, '中国大陆', '剧情,喜剧', '2018-07-05(中国大陆),2018-06-30(大规模点映)', '117分钟', 'https://movie.douban.com/subject/26752088/');
INSERT INTO `movie` VALUES ('No.35', '飞屋环游记', 9, 1317069, '美国', '剧情,喜剧,动画,冒险', '2009-08-04(中国大陆),2009-05-13(戛纳电影节),2009-05-29(美国)', '96分钟', 'https://movie.douban.com/subject/2129039/');
INSERT INTO `movie` VALUES ('No.36', '素媛', 9, 682899, '韩国', '剧情', '2013-10-02(韩国)', '122分钟', 'https://movie.douban.com/subject/21937452/');
INSERT INTO `movie` VALUES ('No.37', '哈尔的移动城堡', 9, 1019191, '日本', '动画,奇幻,冒险', '2004-09-05(威尼斯电影节),2004-11-20(日本)', '119分钟', 'https://movie.douban.com/subject/1308807/');
INSERT INTO `movie` VALUES ('No.38', '十二怒汉', 9, 487156, '美国', '剧情', '1957-04-10(美国)', '96分钟', 'https://movie.douban.com/subject/1293182/');
INSERT INTO `movie` VALUES ('No.39', '何以为家', 9, 1038947, '黎巴嫩,美国,法国,塞浦路斯,卡塔尔,英国', '剧情', '2019-04-29(中国大陆),2018-05-17(戛纳电影节),2018-09-20(黎巴嫩)', '126分钟', 'https://movie.douban.com/subject/30170448/');
INSERT INTO `movie` VALUES ('No.4', '泰坦尼克号', 10, 2177922, '美国,墨西哥', '剧情,爱情,灾难', '1998-04-03(中国大陆),2023-04-03(中国大陆重映),1997-11-01(东京电影节),1997-12-19(美国)', '194分钟', 'https://movie.douban.com/subject/1292722/');
INSERT INTO `movie` VALUES ('No.40', '摔跤吧！爸爸', 9, 1561626, '印度', '剧情,家庭,传记,运动', '2017-05-05(中国大陆),2016-12-23(印度)', '161分钟(印度)', 'https://movie.douban.com/subject/26387939/');
INSERT INTO `movie` VALUES ('No.41', '让子弹飞', 9, 1689792, '中国大陆,中国香港', '剧情,喜剧,动作,西部', '2010-12-16(中国大陆)', '132分钟', 'https://movie.douban.com/subject/3742360/');
INSERT INTO `movie` VALUES ('No.42', '鬼子来了', 9, 623579, '中国大陆', '剧情,喜剧', '2000-05-12(戛纳电影节),2002-04-27(日本)', '139分钟', 'https://movie.douban.com/subject/1291858/');
INSERT INTO `movie` VALUES ('No.43', '天空之城', 9, 866228, '日本', '动画,奇幻,冒险', '1992-05-01(中国大陆),2023-06-01(中国大陆重映),1986-08-02(日本)', '125分钟', 'https://movie.douban.com/subject/1291583/');
INSERT INTO `movie` VALUES ('No.44', '猫鼠游戏', 9, 1016948, '美国,加拿大', '剧情,传记,犯罪', '2003-04-11(中国大陆),2002-12-16(洛杉矶首映),2002-12-25(美国)', '141 分钟', 'https://movie.douban.com/subject/1305487/');
INSERT INTO `movie` VALUES ('No.45', '少年派的奇幻漂流', 9, 1342239, '美国,中国台湾,英国,加拿大', '剧情,奇幻,冒险', '2012-11-22(中国大陆),2012-09-28(纽约电影节),2012-11-21(美国)', '127分钟', 'https://movie.douban.com/subject/1929463/');
INSERT INTO `movie` VALUES ('No.46', '海蒂和爷爷', 9, 606729, '德国,瑞士', '剧情,家庭,冒险', '2019-05-16(中国大陆),2015-12-10(德国)', '111分钟', 'https://movie.douban.com/subject/25958717/');
INSERT INTO `movie` VALUES ('No.47', '钢琴家', 9, 634327, '英国,法国,波兰,德国', '剧情,音乐,传记,战争', '2002-05-24(戛纳电影节),2002-09-25(法国)', '149分钟', 'https://movie.douban.com/subject/1296736/');
INSERT INTO `movie` VALUES ('No.48', '大话西游之月光宝盒', 9, 1215842, '中国香港,中国大陆', '喜剧,爱情,奇幻,古装', '2014-10-24(中国大陆),1995-01-21(中国香港)', '88分钟', 'https://movie.douban.com/subject/1299398/');
INSERT INTO `movie` VALUES ('No.49', '指环王2：双塔奇兵', 9, 748015, '美国,新西兰', '剧情,动作,奇幻,冒险', '2003-04-25(中国大陆),2021-04-23(中国大陆重映),2002-12-05(纽约首映),2002-12-18(美国)', '180分钟', 'https://movie.douban.com/subject/1291572/');
INSERT INTO `movie` VALUES ('No.5', '这个杀手不太冷', 9, 2285872, '法国,美国', '剧情,动作,犯罪', '1994-09-14(法国)', '110分钟(剧场版)', 'https://movie.douban.com/subject/1295644/');
INSERT INTO `movie` VALUES ('No.50', '闻香识女人', 9, 879547, '美国', '剧情', '1992-12-23(美国)', '157 分钟', 'https://movie.douban.com/subject/1298624/');
INSERT INTO `movie` VALUES ('No.51', '罗马假日', 9, 946215, '美国', '剧情,喜剧,爱情', '1953-08-20(威尼斯电影节),1953-09-02(美国)', '118分钟', 'https://movie.douban.com/subject/1293839/');
INSERT INTO `movie` VALUES ('No.52', '天堂电影院', 9, 676343, '意大利,法国', '剧情,爱情', '2021-06-11(中国大陆),1988-11-17(意大利)', '155分钟', 'https://movie.douban.com/subject/1291828/');
INSERT INTO `movie` VALUES ('No.53', '死亡诗社', 9, 720687, '美国', '剧情', '1989-06-02(多伦多首映),1989-06-09(美国)', '128 分钟', 'https://movie.douban.com/subject/1291548/');
INSERT INTO `movie` VALUES ('No.54', '绿皮书', 9, 1638533, '美国,中国大陆', '剧情,喜剧,音乐,传记', '2019-03-01(中国大陆),2018-09-11(多伦多电影节),2018-11-16(美国)', '130分钟', 'https://movie.douban.com/subject/27060077/');
INSERT INTO `movie` VALUES ('No.55', '大闹天宫', 9, 434698, '中国大陆', '剧情,动画,奇幻,古装', '1961(中国大陆),1964(中国大陆),1978(中国大陆)', '113分钟', 'https://movie.douban.com/subject/1418019/');
INSERT INTO `movie` VALUES ('No.56', '黑客帝国', 9, 833648, '美国', '动作,科幻', '2000-01-14(中国大陆),1999-03-31(美国)', '136分钟', 'https://movie.douban.com/subject/1291843/');
INSERT INTO `movie` VALUES ('No.57', '指环王1：护戒使者', 9, 841376, '新西兰,美国', '剧情,动作,奇幻,冒险', '2002-04-04(中国大陆),2021-04-16(中国大陆重映),2001-12-19(美国)', '179分钟', 'https://movie.douban.com/subject/1291571/');
INSERT INTO `movie` VALUES ('No.58', '教父2', 9, 549334, '美国', '剧情,犯罪', '1974-12-12(纽约首映),1974-12-20(美国)', '202分钟', 'https://movie.douban.com/subject/1299131/');
INSERT INTO `movie` VALUES ('No.59', '狮子王', 9, 834482, '美国', '动画,歌舞,冒险', '1995-07-15(中国大陆),1994-06-15(美国),2011-09-16(美国)', '89 分钟', 'https://movie.douban.com/subject/1301753/');
INSERT INTO `movie` VALUES ('No.6', '千与千寻', 9, 2232176, '日本', '剧情,动画,奇幻', '2019-06-21(中国大陆),2001-07-20(日本)', '125分钟', 'https://movie.douban.com/subject/1291561/');
INSERT INTO `movie` VALUES ('No.60', '辩护人', 9, 586393, '韩国', '剧情', '2013-12-18(韩国)', '127分钟', 'https://movie.douban.com/subject/21937445/');
INSERT INTO `movie` VALUES ('No.61', '饮食男女', 9, 617593, '中国台湾,美国', '剧情,家庭', '1994-07-02(中国台湾),1994-05-13(戛纳电影节),1994-08-03(美国)', '124分钟', 'https://movie.douban.com/subject/1291818/');
INSERT INTO `movie` VALUES ('No.62', '搏击俱乐部', 9, 841894, '美国', '剧情,动作,悬疑,惊悚', '1999-09-10(威尼斯电影节),1999-10-15(美国)', '139 分钟', 'https://movie.douban.com/subject/1292000/');
INSERT INTO `movie` VALUES ('No.63', '美丽心灵', 9, 765299, '美国', '剧情,传记', '2001-12-13(加州首映),2002-01-04(美国)', '135分钟', 'https://movie.douban.com/subject/1306029/');
INSERT INTO `movie` VALUES ('No.64', '本杰明·巴顿奇事', 9, 976599, '美国', '剧情,爱情,奇幻', '2008-12-25(美国)', '166分钟', 'https://movie.douban.com/subject/1485260/');
INSERT INTO `movie` VALUES ('No.65', '穿条纹睡衣的男孩', 9, 561185, '英国,美国', '剧情,战争', '2008-08-28(卡内基电影节),2008-09-12(英国),2008-11-07(美国)', '94分钟', 'https://movie.douban.com/subject/3008247/');
INSERT INTO `movie` VALUES ('No.66', '窃听风暴', 9, 561758, '德国', '剧情,悬疑', '2006-03-23(德国)', '137分钟', 'https://movie.douban.com/subject/1900841/');
INSERT INTO `movie` VALUES ('No.67', '情书', 9, 1106463, '日本', '剧情,爱情', '1999-03(中国大陆),2021-05-20(中国大陆重映),1995-03-25(日本)', '117分钟', 'https://movie.douban.com/subject/1292220/');
INSERT INTO `movie` VALUES ('No.68', '两杆大烟枪', 9, 592104, '英国', '剧情,喜剧,犯罪', '1998-08-28(英国)', '107分钟', 'https://movie.douban.com/subject/1293350/');
INSERT INTO `movie` VALUES ('No.69', '西西里的美丽传说', 9, 971015, '意大利,美国', '剧情,情色,战争', '2000-10-27(意大利)', '109 分钟', 'https://movie.douban.com/subject/1292402/');
INSERT INTO `movie` VALUES ('No.7', '美丽人生', 10, 1320668, '意大利', '剧情,喜剧,爱情,战争', '2020-01-03(中国大陆),1997-12-20(意大利)', '116分钟(国际版)', 'https://movie.douban.com/subject/1292063/');
INSERT INTO `movie` VALUES ('No.70', '音乐之声', 9, 598296, '美国', '剧情,爱情,歌舞,传记', '1965-03-02(美国)', '174分钟', 'https://movie.douban.com/subject/1294408/');
INSERT INTO `movie` VALUES ('No.71', '看不见的客人', 9, 1258587, '西班牙', '剧情,悬疑,惊悚,犯罪', '2017-09-15(中国大陆),2016-09-23(奇幻电影节),2017-01-06(西班牙)', '106分钟', 'https://movie.douban.com/subject/26580232/');
INSERT INTO `movie` VALUES ('No.72', '阿凡达', 9, 1413563, '美国', '动作,科幻,冒险', '2010-01-04(中国大陆),2021-03-12(中国大陆重映),2022-12-12(中国大陆重映),2009-12-18(美国)', '162分钟', 'https://movie.douban.com/subject/1652587/');
INSERT INTO `movie` VALUES ('No.73', '拯救大兵瑞恩', 9, 643302, '美国', '剧情,战争', '1998-11-13(中国大陆),1998-07-24(美国)', '169分钟', 'https://movie.douban.com/subject/1292849/');
INSERT INTO `movie` VALUES ('No.74', '飞越疯人院', 9, 544318, '美国', '剧情', '1975-11-19(美国)', '133分钟', 'https://movie.douban.com/subject/1292224/');
INSERT INTO `movie` VALUES ('No.75', '哈利·波特与死亡圣器(下)', 9, 825154, '美国,英国', '奇幻,冒险', '2011-08-04(中国大陆),2011-07-15(美国)', '130分钟', 'https://movie.douban.com/subject/3011235/');
INSERT INTO `movie` VALUES ('No.76', '小鞋子', 9, 409072, '伊朗', '剧情,家庭,儿童', '1997-02-01(曙光旬国际电影节),1999-01-22(美国)', '89分钟', 'https://movie.douban.com/subject/1303021/');
INSERT INTO `movie` VALUES ('No.77', '沉默的羔羊', 9, 883743, '美国', '剧情,惊悚,犯罪', '1991-02-14(美国)', '118分钟', 'https://movie.douban.com/subject/1293544/');
INSERT INTO `movie` VALUES ('No.78', '布达佩斯大饭店', 9, 925754, '美国,德国,英国', '剧情,喜剧,冒险', '2014-02-06(柏林电影节),2014-03-28(美国)', '99分钟', 'https://movie.douban.com/subject/11525673/');
INSERT INTO `movie` VALUES ('No.79', '禁闭岛', 9, 969266, '美国', '剧情,悬疑,惊悚', '2010-02-13(柏林电影节),2010-02-19(美国)', '138 分钟', 'https://movie.douban.com/subject/2334904/');
INSERT INTO `movie` VALUES ('No.8', '辛德勒的名单', 10, 1100617, '美国', '剧情,历史,战争', '1993-11-30(华盛顿首映),1994-02-04(美国)', '195分钟', 'https://movie.douban.com/subject/1295124/');
INSERT INTO `movie` VALUES ('No.80', '蝴蝶效应', 9, 931962, '美国,加拿大', '剧情,科幻,悬疑,惊悚', '2004-01-23(美国)', '113分钟', 'https://movie.douban.com/subject/1292343/');
INSERT INTO `movie` VALUES ('No.81', '致命魔术', 9, 851348, '英国,美国', '剧情,悬疑,惊悚', '2006-10-17(罗马电影节),2006-10-20(美国)', '130分钟', 'https://movie.douban.com/subject/1780330/');
INSERT INTO `movie` VALUES ('No.82', '功夫', 9, 1123161, '中国大陆,中国香港', '喜剧,动作,犯罪,奇幻', '2004-12-23(中国大陆/中国香港),2015-01-15(中国大陆3D),2004-09-14(多伦多电影节)', '100分钟(3D重映)', 'https://movie.douban.com/subject/1291543/');
INSERT INTO `movie` VALUES ('No.83', '心灵捕手', 9, 708634, '美国', '剧情', '1997-12-05(美国)', '126 分钟', 'https://movie.douban.com/subject/1292656/');
INSERT INTO `movie` VALUES ('No.84', '海豚湾', 9, 355816, '美国', '纪录片', '2009-07-31(美国)', '92分钟', 'https://movie.douban.com/subject/3442220/');
INSERT INTO `movie` VALUES ('No.85', '哈利·波特与阿兹卡班的囚徒', 9, 722479, '英国,美国', '奇幻,冒险', '2004-09-10(中国大陆),2004-05-31(英国)', '141 分钟', 'https://movie.douban.com/subject/1291544/');
INSERT INTO `movie` VALUES ('No.86', '低俗小说', 9, 829305, '美国', '剧情,喜剧,犯罪', '1994-05-12(戛纳电影节),1994-10-14(美国)', '154分钟', 'https://movie.douban.com/subject/1291832/');
INSERT INTO `movie` VALUES ('No.87', '春光乍泄', 9, 629138, '中国香港,日本,韩国', '剧情,爱情,同性', '1997-05-30(中国香港),1997-05-17(戛纳电影节)', '96分钟', 'https://movie.douban.com/subject/1292679/');
INSERT INTO `movie` VALUES ('No.88', '超脱', 9, 594566, '美国', '剧情', '2011-04-25(翠贝卡电影节)', '98分钟', 'https://movie.douban.com/subject/5322596/');
INSERT INTO `movie` VALUES ('No.89', '美国往事', 9, 409215, '美国,意大利', '剧情,犯罪', '1984-02-17(波士顿首映),1984-09-28(意大利)', '229分钟(导演剪辑版)', 'https://movie.douban.com/subject/1292262/');
INSERT INTO `movie` VALUES ('No.9', '星际穿越', 9, 1822293, '美国,英国,加拿大', '剧情,科幻,冒险', '2014-11-12(中国大陆),2020-08-02(中国大陆重映),2014-11-07(美国)', '169分钟', 'https://movie.douban.com/subject/1889243/');
INSERT INTO `movie` VALUES ('No.90', '摩登时代', 9, 299008, '美国', '剧情,喜剧,爱情', '1936-02-25(美国)', '87分钟', 'https://movie.douban.com/subject/1294371/');
INSERT INTO `movie` VALUES ('No.91', '喜剧之王', 9, 965255, '中国香港', '剧情,喜剧,爱情', '1999-02-13(中国香港)', '89分钟', 'https://movie.douban.com/subject/1302425/');
INSERT INTO `movie` VALUES ('No.92', '致命ID', 9, 819390, '美国', '剧情,悬疑,惊悚', '2003-04-25(美国)', '90分钟', 'https://movie.douban.com/subject/1297192/');
INSERT INTO `movie` VALUES ('No.93', '杀人回忆', 9, 709680, '韩国', '剧情,动作,悬疑,惊悚,犯罪', '2003-05-02(韩国)', '132分钟', 'https://movie.douban.com/subject/1300299/');
INSERT INTO `movie` VALUES ('No.94', '七宗罪', 9, 937738, '美国', '剧情,悬疑,惊悚,犯罪', '1995-09-22(美国)', '127分钟', 'https://movie.douban.com/subject/1292223/');
INSERT INTO `movie` VALUES ('No.95', '红辣椒', 9, 460393, '日本', '科幻,动画,悬疑,惊悚', '2006-09-02(威尼斯电影节),2006-11-25(日本)', '90 分钟', 'https://movie.douban.com/subject/1865703/');
INSERT INTO `movie` VALUES ('No.96', '加勒比海盗', 9, 852590, '美国', '动作,奇幻,冒险', '2003-11-21(中国大陆),2003-07-09(美国)', '143 分钟', 'https://movie.douban.com/subject/1298070/');
INSERT INTO `movie` VALUES ('No.97', '哈利·波特与密室', 9, 749979, '英国,美国', '奇幻,冒险', '2003-01-24(中国大陆),2002-11-15(英国/美国)', '161分钟', 'https://movie.douban.com/subject/1296996/');
INSERT INTO `movie` VALUES ('No.98', '一一', 9, 390857, '中国台湾,日本', '剧情,爱情,家庭', '2017-07-28(中国台湾),2000-05-14(戛纳电影节),2000-12-16(日本)', '173分钟', 'https://movie.douban.com/subject/1292434/');
INSERT INTO `movie` VALUES ('No.99', '狩猎', 9, 387766, '丹麦,瑞典', '剧情', '2012-05-20(戛纳电影节),2013-01-10(丹麦)', '115分钟', 'https://movie.douban.com/subject/6985810/');

SET FOREIGN_KEY_CHECKS = 1;
