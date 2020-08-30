/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 07/08/2020 11:16:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻内容',
  `desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻描述',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻作者',
  `new_type_id` int(0) NULL DEFAULT NULL COMMENT '新闻分类id',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `small_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小图',
  `middle_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中图',
  `large_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大图',
  `sub_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '1、0！北京昨日无新增确诊病例', '7月6日0时至24时，北京无新增报告本地确诊病例、疑似病例，新增无症状感染者1例，治愈出院病例4例；无新增报告境外输入确诊病例、疑似病例、无症状感染者。\n\n6月11日0时至7月6日24时，累计报告本地确诊病例335例，在院320例，治愈出院15例。尚在观察的无症状感染者31例；无新增报告境外输入新冠肺炎确诊病例、疑似病例和无症状感染者。\n\n全市16个区无本地报告新增确诊病例，具体为平谷区自有疫情以来无报告病例、延庆区165天、怀柔区151天、顺义区149天、密云区146天、石景山区22天、门头沟区21天、房山区21天、东城区20天、通州区16天、朝阳区15天、西城区14天、海淀区11天、昌平区11天、大兴区6天、丰台区1天。\n\n7月5日0时至24时，西城区展览路街道、朝阳区小红门（地区）乡由中风险地区调整为低风险地区。', '北京无新增报告本地确诊病例', '北京日报客户端', 6, '2020-07-07 10:36:44', '2020-07-07 10:36:49', 'static/img/1.jpg', 'static/img/002.jpg', 'static/img/logo.jpg', NULL, '12154@qq.com');
INSERT INTO `news` VALUES (2, '2、高考超燃打call版无价之姐', '2020年7月7日是高考的日子，和往年的高考时间有些不同，但考生们的心态却都是一样的，那就是要拿出自己的最佳水平，有最好的发挥，考出最好的成绩，给自己的青春一份满意的答卷。\n\n在这样的日子里，大家都为考生加油鼓劲，都希望他们能发挥的好，能取得最好的成绩。\n\n高考超燃打call版《无价之姐》也上线了，不得不说，这一版本的歌曲改编的非常好，光是歌词就已经很让大家满意了！\n\n“不拼不搏，高三白活，不苦不累，高三白费，必胜！”这样的口号听着就很振奋人心！\n\n高考打call版《无价之姐》节选\n\n曾经两米八考卷，承载青春时光\n\n挫折不止千百回，可从未放弃过梦想\n\n千军奋战，万马入场\n\n考完这几天，自由飞翔，\n\n答案多相像，ABCD选哪样\n\n保持冷静的思量，未来在等我亮相\n\n狂我的狂妄，荒我的荒唐\n\n打翻青春的鸡汤，我要放肆去冲浪\n\n看我青春模样，多认真的开场\n\n努力答，要赢要赢要赢要赢要赢哟\n\n看我乘风破浪，多拼命地向上\n\n努力想，要赢要赢要赢要赢要赢哟\n\n你从这首歌里面感受到力量了吗？你是否也觉得很振奋呢？', '高考超燃打call版无价之姐', '新华网', 6, '2020-07-07 10:40:27', '2020-07-07 10:40:31', 'static/img/2.jpg', 'static/img/003.jpg', 'static/img/logo.jpg', NULL, '2411@qq.com');
INSERT INTO `news` VALUES (3, '3、阿尔卑斯山出现粉色冰川怎么回事 专家：可能是危险信号', '莫罗表示，这些藻类植物没有危险性，但可能会在春季和夏季造成造成冰川成为红色，当这些现象频繁发生的时候，这可能将是危险的信号。由于今年的降雪减少和高气温促进了雪衣藻的生长，而过多的藻类植物将会加速冰川融化。', '阿尔卑斯山出现粉色冰川', '中文国际网', 6, '2020-07-01 10:43:44', '2020-07-01 10:43:48', 'static/img/4.jpg', 'static/img/004.jpg', 'static/img/logo.jpg', NULL, '129@qq.com');
INSERT INTO `news` VALUES (4, '4、平安经涉事副厅长作深刻检查', '据“吉林警事”微信公号7月30日消息，7月29日，吉林省委成立关于对吉林省公安厅党委副书记、常务副厅长贺电所作《平安经》有关问题进行调查核实的联合调查组后，吉林省公安厅党委立即召开民主生活会，传达省委决定和公安部要求，查找问题不足，统一思想认识，进一步加强队伍管理。', '者贺电会上作深刻检查', '每日经济新闻官方帐号', 6, '2020-06-30 15:53:38', '2020-06-10 15:53:46', 'static/img/1.jpg', 'static/img/002.jpg', 'static/img/logo.jpg', NULL, '42455@qq.com');
INSERT INTO `news` VALUES (5, '5、五角大楼宣布撤离1.2万驻德美军', '当地时间29日，美国国防部长埃斯珀表示，美国将在数周内开始重新部署驻德美军部队，约1.2万美军将从德国撤出。对于这一决定，美国总统特朗普随后回应称，此举是因为德国拖欠北约军费，“德国没有为军费买单，我们不想再当傻瓜了。”', '撤离1.2万驻德美军', '环球网官方帐号', 6, '2020-06-30 15:56:25', '2020-07-15 15:56:30', 'static/img/2.jpg', 'static/img/003.jpg', 'static/img/logo.jpg', NULL, '52@qq.com');
INSERT INTO `news` VALUES (6, '6、平安经涉事副厅长作深刻检查', '据“吉林警事”微信公号7月30日消息，7月29日，吉林省委成立关于对吉林省公安厅党委副书记、常务副厅长贺电所作《平安经》有关问题进行调查核实的联合调查组后，吉林省公安厅党委立即召开民主生活会，传达省委决定和公安部要求，查找问题不足，统一思想认识，进一步加强队伍管理。', '者贺电会上作深刻检查', '每日经济新闻官方帐号', 6, '2020-06-30 15:53:38', '2020-06-10 15:53:46', 'static/img/4.jpg', 'static/img/004.jpg', 'static/img/logo.jpg', NULL, '42455@qq.com');
INSERT INTO `news` VALUES (7, '7、美国密苏里州圣路易斯市发生枪击事件，造成3人死亡', '据报道，就在埃斯珀宣布这一决定后不久，美国总统特朗普在白宫对记者表示，他已下令撤军，而这是因为柏林“拖欠了北约军费。”', '特朗普很头疼的一幕发生了！', '环球网官方帐号', 6, '2020-07-21 15:58:36', '2020-07-08 15:58:40', 'static/img/4.jpg', 'static/img/002.jpg', 'static/img/logo.jpg', NULL, '4511@qq.com');
INSERT INTO `news` VALUES (8, '8、近10超10对双胞胎高考分数相同', '武汉新洲一中的双胞胎兄弟袁睿麟和袁睿麒2020年高考总分同为664分，外语都是138分，有网友大呼“神奇”，记者梳理发现，近10年各地至少有10对双胞胎高考分数相同。2013年，天津双胞胎姐妹徐彤', '高考总分同为664', '新华网', 6, '2020-07-15 16:11:22', '2020-06-15 16:11:36', 'static/img/4.jpg', 'static/img/003.jpg', 'static/img/logo.jpg', NULL, '12354@qq.com');
INSERT INTO `news` VALUES (9, '9、易建联力压周琦当选常规赛MVP', '新京报讯 CBA联赛今日公布常规赛各项最佳，广东男篮核心易建联最终力压周琦（258分）、王哲林（147分），以259分当选常规赛MVP。同时，阿联还成功加冕常规赛历史得分王和篮板王。主教练杜锋则率广东队单赛季29连胜打破历史纪录，95.7%的胜率也创造了队史常规赛最高胜率，荣膺常规赛最佳教练实至名归。周琦获得常规赛最佳防守球员。', '易建联1分险胜周琦', '新京报社官方帐号', 6, '2020-07-17 16:11:27', '2020-07-13 16:11:41', 'static/img/4.jpg', 'static/img/004.jpg', 'static/img/logo.jpg', NULL, '365@qq.com');
INSERT INTO `news` VALUES (10, '10、易建联力压周琦当选常规赛MVP', '新京报讯 CBA联赛今日公布常规赛各项最佳，广东男篮核心易建联最终力压周琦（258分）、王哲林（147分），以259分当选常规赛MVP。同时，阿联还成功加冕常规赛历史得分王和篮板王。主教练杜锋则率广东队单赛季29连胜打破历史纪录，95.7%的胜率也创造了队史常规赛最高胜率，荣膺常规赛最佳教练实至名归。周琦获得常规赛最佳防守球员。', '易建联1分险胜周琦', '新京报社官方帐号', 6, '2020-06-17 16:11:32', '2020-09-02 16:11:48', 'static/img/4.jpg', 'static/img/002.jpg', 'static/img/logo.jpg', NULL, '365@qq.com');
INSERT INTO `news` VALUES (11, '11、高考超燃打call版无价之姐', '2020年7月7日是高考的日子，和往年的高考时间有些不同，但考生们的心态却都是一样的，那就是要拿出自己的最佳水平，有最好的发挥，考出最好的成绩，给自己的青春一份满意的答卷。\n\n在这样的日子里，大家都为考生加油鼓劲，都希望他们能发挥的好，能取得最好的成绩。\n\n高考超燃打call版《无价之姐》也上线了，不得不说，这一版本的歌曲改编的非常好，光是歌词就已经很让大家满意了！\n\n“不拼不搏，高三白活，不苦不累，高三白费，必胜！”这样的口号听着就很振奋人心！\n\n高考打call版《无价之姐》节选\n\n曾经两米八考卷，承载青春时光\n\n挫折不止千百回，可从未放弃过梦想\n\n千军奋战，万马入场\n\n考完这几天，自由飞翔，\n\n答案多相像，ABCD选哪样\n\n保持冷静的思量，未来在等我亮相\n\n狂我的狂妄，荒我的荒唐\n\n打翻青春的鸡汤，我要放肆去冲浪\n\n看我青春模样，多认真的开场\n\n努力答，要赢要赢要赢要赢要赢哟\n\n看我乘风破浪，多拼命地向上\n\n努力想，要赢要赢要赢要赢要赢哟\n\n你从这首歌里面感受到力量了吗？你是否也觉得很振奋呢？', '高考超燃打call版无价之姐', '新华网', 6, '2020-07-07 10:40:27', '2020-07-07 10:40:31', 'static/img/4.jpg', 'static/img/003.jpg', 'static/img/logo.jpg', NULL, '2411@qq.com');
INSERT INTO `news` VALUES (12, '12、大S万不可', '汪小菲和大 s可算是闪婚了，两人在安以轩的生日会上一见钟情，大 s说第一眼见到汪小菲，就觉得会嫁给他，给他生孩子，女人的直觉好可怕！四、见面时，二人便订婚，半年后举行婚礼。', '高考超燃打call版无价之姐', '新华网', 6, '2020-07-14 10:03:14', '2020-06-08 10:03:25', 'static/img/4.jpg', 'static/img/004.jpg', 'static/img/logo.jpg', NULL, NULL);
INSERT INTO `news` VALUES (13, '13、0！北京昨日无新增确诊病例', '7月6日0时至24时，北京无新增报告本地确诊病例、疑似病例，新增无症状感染者1例，治愈出院病例4例；无新增报告境外输入确诊病例、疑似病例、无症状感染者。\n\n6月11日0时至7月6日24时，累计报告本地确诊病例335例，在院320例，治愈出院15例。尚在观察的无症状感染者31例；无新增报告境外输入新冠肺炎确诊病例、疑似病例和无症状感染者。\n\n全市16个区无本地报告新增确诊病例，具体为平谷区自有疫情以来无报告病例、延庆区165天、怀柔区151天、顺义区149天、密云区146天、石景山区22天、门头沟区21天、房山区21天、东城区20天、通州区16天、朝阳区15天、西城区14天、海淀区11天、昌平区11天、大兴区6天、丰台区1天。\n\n7月5日0时至24时，西城区展览路街道、朝阳区小红门（地区）乡由中风险地区调整为低风险地区。', '北京无新增报告本地确诊病例', '北京日报客户端', 6, NULL, NULL, 'static/img/1.jpg', 'static/img/3.jpg', NULL, NULL, NULL);
INSERT INTO `news` VALUES (14, '14、高考超燃打call版无价之姐', '2020年7月7日是高考的日子，和往年的高考时间有些不同，但考生们的心态却都是一样的，那就是要拿出自己的最佳水平，有最好的发挥，考出最好的成绩，给自己的青春一份满意的答卷。\n\n在这样的日子里，大家都为考生加油鼓劲，都希望他们能发挥的好，能取得最好的成绩。\n\n高考超燃打call版《无价之姐》也上线了，不得不说，这一版本的歌曲改编的非常好，光是歌词就已经很让大家满意了！\n\n“不拼不搏，高三白活，不苦不累，高三白费，必胜！”这样的口号听着就很振奋人心！\n\n高考打call版《无价之姐》节选\n\n曾经两米八考卷，承载青春时光\n\n挫折不止千百回，可从未放弃过梦想\n\n千军奋战，万马入场\n\n考完这几天，自由飞翔，\n\n答案多相像，ABCD选哪样\n\n保持冷静的思量，未来在等我亮相\n\n狂我的狂妄，荒我的荒唐\n\n打翻青春的鸡汤，我要放肆去冲浪\n\n看我青春模样，多认真的开场\n\n努力答，要赢要赢要赢要赢要赢哟\n\n看我乘风破浪，多拼命地向上\n\n努力想，要赢要赢要赢要赢要赢哟\n\n你从这首歌里面感受到力量了吗？你是否也觉得很振奋呢？', '高考超燃打call版无价之姐', '新华网', 6, NULL, NULL, 'static/img/2.jpg', 'static/img/5.jpg', NULL, NULL, NULL);
INSERT INTO `news` VALUES (15, '阿尔卑斯山出现粉色冰川怎么回事 专家：可能是危险信号', '莫罗表示，这些藻类植物没有危险性，但可能会在春季和夏季造成造成冰川成为红色，当这些现象频繁发生的时候，这可能将是危险的信号。由于今年的降雪减少和高气温促进了雪衣藻的生长，而过多的藻类植物将会加速冰川融化。', '阿尔卑斯山出现粉色冰川', '中文国际网', 6, NULL, NULL, 'static/img/4.jpg', 'static/img/6.jpg', NULL, NULL, NULL);
INSERT INTO `news` VALUES (16, '平安经涉事副厅长作深刻检查', '据“吉林警事”微信公号7月30日消息，7月29日，吉林省委成立关于对吉林省公安厅党委副书记、常务副厅长贺电所作《平安经》有关问题进行调查核实的联合调查组后，吉林省公安厅党委立即召开民主生活会，传达省委决定和公安部要求，查找问题不足，统一思想认识，进一步加强队伍管理。', '者贺电会上作深刻检查', '每日经济新闻官方帐号', NULL, NULL, NULL, 'static/img/7.jpg', 'static/img/7.jpg', NULL, NULL, NULL);
INSERT INTO `news` VALUES (17, '五角大楼宣布撤离1.2万驻德美军', '当地时间29日，美国国防部长埃斯珀表示，美国将在数周内开始重新部署驻德美军部队，约1.2万美军将从德国撤出。对于这一决定，美国总统特朗普随后回应称，此举是因为德国拖欠北约军费，“德国没有为军费买单，我们不想再当傻瓜了。”', '撤离1.2万驻德美军', '环球网官方帐号', NULL, NULL, NULL, 'static/img/8.jpg', 'static/img/8.jpg', NULL, NULL, NULL);
INSERT INTO `news` VALUES (18, '平安经涉事副厅长作深刻检查', '据“吉林警事”微信公号7月30日消息，7月29日，吉林省委成立关于对吉林省公安厅党委副书记、常务副厅长贺电所作《平安经》有关问题进行调查核实的联合调查组后，吉林省公安厅党委立即召开民主生活会，传达省委决定和公安部要求，查找问题不足，统一思想认识，进一步加强队伍管理。', '者贺电会上作深刻检查', '每日经济新闻官方帐号', NULL, NULL, NULL, 'static/img/9.jpg', 'static/img/9.jpg', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
