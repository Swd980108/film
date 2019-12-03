/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50557
 Source Host           : localhost:3306
 Source Schema         : movies

 Target Server Type    : MySQL
 Target Server Version : 50557
 File Encoding         : 65001

 Date: 03/12/2019 10:48:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
                         `cinemaid` int(20) NOT NULL AUTO_INCREMENT COMMENT '影院id，主键',
                         `cinemaname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '影院名称',
                         `caddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '影院地址',
                         `cdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
                         `cimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
                         `ctel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
                         PRIMARY KEY (`cinemaid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (1, '老舍茶馆', '西城区前门西大街正阳市场三号楼', '北京老舍茶馆始建于一九八八年，是中国实施改革开放政策以后，由北京大碗茶商贸有限公司总经理尹盛喜先生一手创办起来的中国第一家民俗文化茶馆。它位于天安门广场西南面，与北京古商业街大栅栏为邻，地理位置独特，京味传统文化底蕴深厚。被评为国家文化产业示范基地和国家3A级景区，有着北京城市名片和京味人文地标的美誉。', 'https://www.piaoimg.com/item/10466q.jpg', '400-630-552');
INSERT INTO `cinema` VALUES (2, '海淀工人文化宫', '海淀区万柳华府北街2号', NULL, NULL, NULL);
INSERT INTO `cinema` VALUES (3, '繁星戏剧村', '西城区宣武门内大街抄手胡同64号', NULL, NULL, NULL);
INSERT INTO `cinema` VALUES (4, '长安大戏院', '建国门内大街7号', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
                           `commentid` int(11) NOT NULL AUTO_INCREMENT,
                           `commenttext` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `commenttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                           `userid` int(11) NULL DEFAULT NULL,
                           `filmid` int(11) NULL DEFAULT NULL,
                           PRIMARY KEY (`commentid`) USING BTREE,
                           INDEX `commentuserid`(`userid`) USING BTREE,
                           INDEX `commentfilmid`(`filmid`) USING BTREE,
                           CONSTRAINT `commentfilmid` FOREIGN KEY (`filmid`) REFERENCES `film` (`filmid`) ON DELETE CASCADE ON UPDATE CASCADE,
                           CONSTRAINT `commentuserid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, '好好看啊', '2019-09-23 14:01:36', 1, 1);
INSERT INTO `comments` VALUES (2, '哈啊', '2019-09-23 14:27:02', 1, 1);
INSERT INTO `comments` VALUES (3, '啊啊啊', '2019-09-23 15:09:45', 1, 1);
INSERT INTO `comments` VALUES (4, '萨瓦迪卡', '2019-09-23 15:18:27', 1, 1);
INSERT INTO `comments` VALUES (5, '恰鸡', '2019-09-23 15:51:56', 1, 1);
INSERT INTO `comments` VALUES (6, 'aaa', '2019-09-23 15:52:05', 1, 1);
INSERT INTO `comments` VALUES (7, '来吃鸡啊', '2019-09-23 15:52:48', 1, 1);
INSERT INTO `comments` VALUES (8, '啊啊啊', '2019-09-23 15:53:28', 1, 1);
INSERT INTO `comments` VALUES (10, '哎哎哎', '2019-09-23 16:06:05', 1, 1);
INSERT INTO `comments` VALUES (11, '嗷嗷嗷', '2019-09-23 16:06:19', 1, 1);
INSERT INTO `comments` VALUES (12, '去去去', '2019-09-23 16:06:29', 1, 1);
INSERT INTO `comments` VALUES (13, '嗷嗷嗷', '2019-09-23 16:11:39', 1, 1);
INSERT INTO `comments` VALUES (14, '哎哎哎', '2019-09-23 16:12:57', 1, 1);
INSERT INTO `comments` VALUES (15, '啊啊啊', '2019-09-23 16:17:34', 1, 1);
INSERT INTO `comments` VALUES (16, '哎哎哎', '2019-09-23 16:18:12', 1, 1);
INSERT INTO `comments` VALUES (17, '111', '2019-09-23 16:20:10', 1, 1);
INSERT INTO `comments` VALUES (18, '111', '2019-09-23 16:20:23', 1, 1);
INSERT INTO `comments` VALUES (19, 'aaa', '2019-09-23 16:23:39', 1, 1);
INSERT INTO `comments` VALUES (20, 'asdasefd', '2019-09-23 16:32:41', 1, 1);
INSERT INTO `comments` VALUES (21, 'swd', '2019-09-23 16:39:31', 1, 1);
INSERT INTO `comments` VALUES (22, 'swdwddwd', '2019-09-23 16:40:09', 1, 1);
INSERT INTO `comments` VALUES (23, 'ddwfew', '2019-09-23 16:41:18', 1, 1);
INSERT INTO `comments` VALUES (24, '好看', '2019-09-23 16:42:30', 1, 2);
INSERT INTO `comments` VALUES (25, 'aaa', '2019-09-23 16:50:18', 1, 2);
INSERT INTO `comments` VALUES (26, '5415', '2019-09-23 16:50:36', 1, 1);
INSERT INTO `comments` VALUES (27, '啊啊啊啊', '2019-09-23 17:01:46', 1, 3);
INSERT INTO `comments` VALUES (28, '啊啊', '2019-09-23 17:02:37', 1, 3);
INSERT INTO `comments` VALUES (29, '啊啊啊', '2019-09-23 19:19:31', 1, 1);
INSERT INTO `comments` VALUES (30, 'qqqq', '2019-09-23 19:40:34', 1, 1);
INSERT INTO `comments` VALUES (31, 'qqqq', '2019-09-23 19:40:48', 1, 1);
INSERT INTO `comments` VALUES (32, '啊啊啊', '2019-09-23 19:44:09', 1, 1);
INSERT INTO `comments` VALUES (33, '去去去', '2019-09-23 19:47:31', 1, 1);
INSERT INTO `comments` VALUES (34, '啊啊啊啊啊啊', '2019-09-23 19:50:23', 1, 1);
INSERT INTO `comments` VALUES (35, '去去去', '2019-09-23 19:52:06', 1, 1);
INSERT INTO `comments` VALUES (36, 'qqqq', '2019-09-23 21:43:57', 1, 1);
INSERT INTO `comments` VALUES (37, 'aaa', '2019-09-23 21:46:24', 1, 1);
INSERT INTO `comments` VALUES (38, 'hg', '2019-09-23 21:48:50', 1, 1);
INSERT INTO `comments` VALUES (39, 'qqq', '2019-09-23 21:49:44', 1, 1);
INSERT INTO `comments` VALUES (40, 'aaa', '2019-09-23 21:50:39', 1, 1);
INSERT INTO `comments` VALUES (41, '哇哇哇', '2019-09-23 21:55:13', 1, 1);
INSERT INTO `comments` VALUES (42, '恰鸡啊', '2019-09-23 21:55:55', 1, 1);
INSERT INTO `comments` VALUES (43, '恰鸡', '2019-09-23 21:58:22', 1, 1);
INSERT INTO `comments` VALUES (44, '啊啊啊', '2019-09-23 21:58:39', 1, 1);
INSERT INTO `comments` VALUES (45, '\n\n\n\n\n\n\n\n\n\n\n\n\n', '2019-09-23 21:59:32', 1, 1);
INSERT INTO `comments` VALUES (46, '刘洋好帅啊', '2019-09-23 22:16:09', 1, 1);
INSERT INTO `comments` VALUES (47, '刘洋好帅啊', '2019-09-23 22:16:13', 1, 1);
INSERT INTO `comments` VALUES (48, 'AAA', '2019-09-23 22:18:17', 1, 1);
INSERT INTO `comments` VALUES (49, '刘洋咋这么帅！！', '2019-09-23 22:18:51', 1, 1);
INSERT INTO `comments` VALUES (50, '刘洋好帅啊\n好喜欢刘洋啊', '2019-09-23 22:21:42', 1, 2);
INSERT INTO `comments` VALUES (51, '<script language=javascript> function aaa() { alert(\'aaa\'); aaa(); } </script>', '2019-09-23 22:22:28', 1, 2);
INSERT INTO `comments` VALUES (52, '啊啊啊啊', '2019-09-23 22:24:49', 1, 2);
INSERT INTO `comments` VALUES (53, '啊啊啊', '2019-09-23 22:27:18', 1, 1);
INSERT INTO `comments` VALUES (54, '哎哎哎', '2019-09-23 22:30:05', 1, 1);
INSERT INTO `comments` VALUES (55, '啊啊啊啊啊啊', '2019-09-23 22:30:49', 1, 1);
INSERT INTO `comments` VALUES (56, '哎哎哎', '2019-09-23 22:31:16', 1, 1);
INSERT INTO `comments` VALUES (57, '好期待啊', '2019-09-23 22:35:05', 1, 10);
INSERT INTO `comments` VALUES (58, '哎哎哎', '2019-09-23 22:39:01', 1, 1);
INSERT INTO `comments` VALUES (59, '刘洋超帅啊', '2019-09-24 13:07:28', 1, 1);
INSERT INTO `comments` VALUES (61, '哈哈', '2019-09-24 16:06:42', 1, 1);
INSERT INTO `comments` VALUES (62, '刘洋好帅啊', '2019-09-24 16:22:07', 1, 1);
INSERT INTO `comments` VALUES (63, '哈哈', '2019-09-24 16:23:17', 1, 6);
INSERT INTO `comments` VALUES (64, '哈哈', '2019-09-24 23:33:11', 1, 1);
INSERT INTO `comments` VALUES (65, '好看啊', '2019-09-24 23:37:19', 1, 1);
INSERT INTO `comments` VALUES (66, '哈哈', '2019-09-25 08:26:24', 1, 3);
INSERT INTO `comments` VALUES (67, '刘洋咋这么帅啊', '2019-09-25 11:22:24', 1, 3);
INSERT INTO `comments` VALUES (68, '哈哈', '2019-09-28 23:51:39', 1, 1);
INSERT INTO `comments` VALUES (69, '啊啊啊啊啊啊啊', '2019-11-12 13:53:48', 1, 1);
INSERT INTO `comments` VALUES (70, '哈哈', '2019-11-25 17:39:31', 1, 1);

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film`  (
                       `filmid` int(10) NOT NULL AUTO_INCREMENT COMMENT '影片id，主键',
                       `filmname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '影片名',
                       `fimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
                       `showtime` int(10) NULL DEFAULT NULL COMMENT '时长',
                       `score` double(10, 2) NULL DEFAULT NULL COMMENT '评分',
  `actors` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '演员',
  `fdesc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `filmtypeid` int(10) NULL DEFAULT NULL COMMENT '影片类型id，外键',
  PRIMARY KEY (`filmid`) USING BTREE,
  INDEX `ffilmtypeid`(`filmtypeid`) USING BTREE,
  CONSTRAINT `ffilmtypeid` FOREIGN KEY (`filmtypeid`) REFERENCES `filmtype` (`filmtypeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 342 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES (1, '柯南', 'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=6e81d2bf01b30f24359aeb05f0aeb67e/a044ad345982b2b7c5aa401a3fadcbef76099b32.jpg', 120, 9.20, '柯南，基德', '在19世纪末与海盗船一同沉入新加坡近海的、世界上最大的蓝宝石“绀青之拳”。在当地的富豪将其回收，于舞台上展现其真容时，在滨海湾金沙酒店附近发生了杀人案。现场留下了怪盗基德沾有血迹的预告函。而在那时，为了观看在新加坡举办的空手道锦标赛，小兰和园子到访了当地。', 2);
INSERT INTO `film` VALUES (2, '龙猫', 'https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=2a6a808060224f4a5399741139f69044/9213b07eca806538944652b59adda144ac3482ec.jpg', 108, 9.80, '宫崎骏', '为了方便妻子草壁靖子养病，草壁达郎决定带着两个女儿草壁皋月和草壁米搬到草壁靖子所在疗养院附近的乡下，父女三人入住了一间年久失修的老房子。小姐妹俩很快发现看似平凡无奇的乡下有很多神奇的事物，无人居住的房屋里能聚能散还能飞的“煤灰”、森林里的小精灵、森林的主人龙猫和笑口常开的猫巴士。', 3);
INSERT INTO `film` VALUES (3, '北京市河北梆子剧团：传统名剧《大登殿》', 'https://s.piaoimg.com/2019/07/23221329MWRl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：北京市河北梆子剧团', 4);
INSERT INTO `film` VALUES (4, '莫扎特之夜—经典名曲音乐会', 'https://s.piaoimg.com/2019/07/26090943MGU4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '钢琴：焦飞虎 单簧管：郑力睿', 1);
INSERT INTO `film` VALUES (5, 'Blue Note Beijing PAPO VÁZQUEZ QUARTET', 'https://s.piaoimg.com/2019/07/31125414NWU4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, 'PAPO VAZQUEZ QUARTET', 2);
INSERT INTO `film` VALUES (6, '洪之光个人独唱音乐会', 'https://s.piaoimg.com/2019/08/13170723MTYz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '中国东方演艺集团青年男中音歌唱家、歌剧演员，美国杰出歌剧人才获得者。曼尼斯音乐学院歌剧表演硕士，耶鲁大学歌剧表演博士。曾获纽约大都会声乐比赛波士顿赛区第一名，曾在20部中外歌剧中担任主要角色，并曾于纽约林肯艺术中心及卡内基音乐厅成功举办个人独唱音乐会，广受业内好评。湖南卫视《声入人心》实力歌手。', 3);
INSERT INTO `film` VALUES (7, '想着 念着 偶尔微笑着—《聆响·行歌》音乐朗诵会', 'https://s.piaoimg.com/2019/07/26091214NzNm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演员：薛飞 徐涛 李立宏 张美娟 刘晓翠 薛悠璐', 4);
INSERT INTO `film` VALUES (8, '《卡农Canon In D》&24个大小调奇妙之旅演奏会', 'https://s.piaoimg.com/2019/07/15144527NDI5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '音乐有24个大小调，它们就如同24种不同的色彩，有着各不相同特点与内涵。大调就像是温暖的阳光，舒展，明朗。小调则像是阴柔的月色，黯淡，忧伤。而作曲家就如同神奇的魔术师一样，让不同的大小调在自己的手中产生了奇妙的化学反应，又将这一曲曲在大小调碰撞交错之中诞生的美妙旋律如同点睛之笔版赋予了过往优秀的影视作品，让人们久久不能忘怀......', 1);
INSERT INTO `film` VALUES (9, '复古蒸汽波派对—银河骑士李老板&抛抛「当蒸汽波遇上嘻哈」', 'https://s.piaoimg.com/2019/07/22201957ZDkw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (10, '天空之城—宫崎骏•久石让经典动漫原声视听大型交响音乐会', 'https://s.piaoimg.com/2019/05/23085053ZTA5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (11, '大船文化·德国原版绘本多元艺术启蒙音乐会《听！小蜗牛艾玛》', 'https://s.piaoimg.com/2019/06/24222228OWY4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (12, '大船文化·德国原版绘本多元艺术启蒙音乐会《听！小蜗牛艾玛》', 'https://s.piaoimg.com/2019/06/24222228OWY4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (13, '暑期艺术之旅：“奔放的旋律·拉丁之夜”中国电影乐团拉丁金曲交响音乐会', 'https://s.piaoimg.com/2019/06/14125354ODIx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (14, '沉淀青春 听读经典-琥珀四重奏系列讲演音乐会(四)', 'https://s.piaoimg.com/2019/06/20123552MGU1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '听弦乐四重奏·知古典音乐史 -- 琥珀四重奏开讲了！', 3);
INSERT INTO `film` VALUES (15, '国家大剧院合唱团：“夏夜清韵”中外浪漫名曲合唱音乐会', 'https://s.piaoimg.com/2019/07/26090234ZGY0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '现任国家大剧院合唱团驻团指挥，国家大剧院青年室内合唱团指挥。毕业于中国音乐学院指挥系，师从于我国著名指挥家吴灵芬教授，并得到著名指挥家严良堃先生的指导。于2014-2015年受邀赴美国南加州大学桑顿音乐学院以及洛杉矶歌剧院进行交流访学。', 4);
INSERT INTO `film` VALUES (16, '“声如夏花”·让爱的分贝响亮华语名主播公益朗诵会', 'https://s.piaoimg.com/2019/08/06182423ZWEw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出介绍\"让爱的分贝响亮\"华语名主播公益朗诵会\"声如夏花\"2019北京站将于2019年8月24日于北京大麦超剧场拉开帷幕。', 1);
INSERT INTO `film` VALUES (17, '畸形儿《文艺复兴》巡演 北京站', 'https://s.piaoimg.com/2019/08/05123914Zjc0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '畸形儿Deformed_Boi第三张专辑同名巡演《文艺复兴》正式开始', 2);
INSERT INTO `film` VALUES (20, '中西音乐对话—世界经典名曲交响音乐会', 'https://s.piaoimg.com/2019/07/26091611MDRh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：中国歌剧舞剧院交响乐团 指挥：周丹', 1);
INSERT INTO `film` VALUES (21, '爱乐之城“LA LA LAND”唯美浪漫经典名曲视听音乐会', 'https://s.piaoimg.com/2019/07/24095809NjM5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '一串串曼妙的音符，承载着一段段浪漫的往事，', 2);
INSERT INTO `film` VALUES (22, '乐享竹趣-经典名曲竹乐音乐会', 'https://s.piaoimg.com/2019/07/26091410MmU2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：北京竹乐团 指挥：杨春林', 3);
INSERT INTO `film` VALUES (23, 'Blue Note Beijing TAL WILKENFELD', 'https://s.piaoimg.com/2019/07/31130650OGVm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, 'TAL WILKENFELD', 4);
INSERT INTO `film` VALUES (24, '久石让.宫崎骏动漫作品视听音乐会《龙猫的音乐之旅》', 'https://s.piaoimg.com/2019/08/07175058YTkx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '此次音乐会的曲目以脍炙人口的宫崎骏动画电影为主，包括《千与千寻》《天空之城》《风之谷》《幽灵公主》《魔女宅急便》《龙猫》《哈尔的移动城堡》等，大多数作品出自日本音乐大师久石让。久石让，中国年轻一代的动漫迷们都不陌生。久石让的音乐，有一种能勾起心底最纯真的力量，被人们称为触动灵魂的乐者。久石让与宫崎骏的黄金组合创作的《天空之城》、《千与千寻》、《龙猫》、《哈尔的移动城堡》、《幽灵公主》等经典作品深受广大青年朋友的喜爱。天空之城、千与千寻中的经典配乐更是常常作为背景音乐在众多场合中被引用。整场音乐会通过音乐和画面的结合，使得大家重温了经典，通过精心剪辑的精彩画面，加深了观众对片中音乐旋律的理解。此次音乐会的青年演奏家们精妙的配合完整地阐释了曲目的内涵。', 1);
INSERT INTO `film` VALUES (25, '“遐想与沉思”以色列国际竖琴大赛金奖得主莲卡·彼得罗维奇独奏音乐会', 'https://s.piaoimg.com/2019/07/02120539MzJj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (26, '金色莱茵之声—德国曼海姆爱乐交响管乐团音乐会', 'https://s.piaoimg.com/2019/07/26091945ZmY4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：德国曼海姆爱乐交响管乐团 指挥：米格尔·埃尔科里诺', 3);
INSERT INTO `film` VALUES (27, 'Falcom jdk BAND LIVE 2109--北京', 'https://s.piaoimg.com/2019/08/01105157MzFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (28, '【立里空间】丹麦互动亲子音乐会 《节拍翻斗乐》', 'https://s.piaoimg.com/2019/06/09203840ODFi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (29, '快乐动漫音乐王国—经典电影音乐交响音乐会', 'https://s.piaoimg.com/2019/07/26091757MGEz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：北京音协爱乐青少年爱乐乐团 指挥：邵紫绶', 2);
INSERT INTO `film` VALUES (30, 'Do Re Mi 总动员——游戏动漫视听音乐会', 'https://s.piaoimg.com/2019/06/28164045MTAw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '送给小朋友的礼物，音乐教育从\"Do Re Mi\"开始；', 3);
INSERT INTO `film` VALUES (31, '暑期艺术之旅：“北美风情”北京管乐交响乐团音乐会', 'https://s.piaoimg.com/2019/05/11093507NTAx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (32, '亲子视听室内音乐会《小动物狂欢节》', 'https://s.piaoimg.com/2019/05/21122342MjJi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (33, '“天空之城”--久石让&宫崎骏动漫经典音乐作品演奏会', 'https://s.piaoimg.com/2019/01/01120057cc3a.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '久石让，以他那充满童心，却又能够阐释哲理的灵性音乐创作能力，被人们称为触动灵魂的音乐圣人。宫崎骏，可谓是日本动漫当中最具知名度和最受大家喜欢的漫画家。当久石让遇上宫崎骏，一部部经典动漫随之诞生，一首首音乐传奇划过心际。他们是世界动漫史上的传奇，他们将世界动漫带入了一个黄金时代。感动了70、80、90后的三代人，留下了美好无比的童年回忆。本场音乐会由独具一格的跨界表演乐团爱乐汇轻音乐团以室内乐的形式重新演绎，', 2);
INSERT INTO `film` VALUES (34, '炫舞琴音——世界名曲钢琴独奏音乐会', 'https://s.piaoimg.com/2019/07/27205058NGI4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (35, '疯狂动物城—互动体验经典民乐音乐会', 'https://s.piaoimg.com/2019/07/27205157YTVl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (36, '时光倒流七十年—经典电影金曲大屏幕视听音乐会', 'https://s.piaoimg.com/2019/07/27205302ZDVi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：中国北京管乐交响乐团 指挥：李伯威', 1);
INSERT INTO `film` VALUES (37, '民谣双拼夜【王应天&张荡荡】', 'https://s.piaoimg.com/2019/08/05123634ZDIw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '十四月的风吹乱了我的头发', 2);
INSERT INTO `film` VALUES (38, 'Blue Note Beijing YUNA', 'https://s.piaoimg.com/2019/08/06180603NjI3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出时间票价信息', 3);
INSERT INTO `film` VALUES (39, '让我们荡起双桨—世界名歌童声合唱音乐会', 'https://s.piaoimg.com/2019/07/27205545NjVm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：北京爱乐合唱团', 4);
INSERT INTO `film` VALUES (40, '2019“降噪”VI系列音乐会 —【零点乐队30周年专场】', 'https://s.piaoimg.com/2019/06/28172206MDAx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '<p>老舍茶馆综艺集萃·好戏连台同畅享·欢声笑语共精彩</p>《四季北京·茶》晚场演出——品馨香茗茶，赏传统曲艺', 1);
INSERT INTO `film` VALUES (41, '法国亲子视听动画音乐会《盒星人雷克秘境奇遇记》', 'https://s.piaoimg.com/2019/04/1910422313ab.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (42, '许飞2019巡演北京站', 'https://s.piaoimg.com/2019/08/06103400ZmY3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '凡是降雨露，皆有花开。', 3);
INSERT INTO `film` VALUES (43, '戏曲音乐会', 'https://s.piaoimg.com/2019/08/01102132MDli.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '主持人：孟令西', 4);
INSERT INTO `film` VALUES (44, '天籁之音—‘炫声乐团’阿卡贝拉（A cappella）亲子启蒙专场音乐会', 'https://s.piaoimg.com/2019/07/17175333OTI5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '本场音乐会不仅诠释了长笛的纯净、钢琴的完美，两种乐器的融合与对话。更是大、小朋友共同聆听和感知的音乐会。', 1);
INSERT INTO `film` VALUES (45, '2019“降噪”VI系列音乐会 — HAYA乐团专场', 'https://s.piaoimg.com/2019/06/11071426NGU4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (46, '纯净与完美—长笛与钢琴的对话儿童启蒙音乐会', 'https://s.piaoimg.com/2019/07/09134932ZWRh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '本场音乐会不仅诠释了长笛的纯净、钢琴的完美，两种乐器的融合与对话。更是大、小朋友共同聆听和感知的音乐会。', 3);
INSERT INTO `film` VALUES (47, 'Blue Note Beijing KEVIN HARRIS PROJECT', 'https://s.piaoimg.com/2019/08/06180132NWRj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, 'KEVIN HARRIS PROJECT', 4);
INSERT INTO `film` VALUES (48, '国家大剧院管弦乐团音乐会', 'https://s.piaoimg.com/2019/07/23195446ZjAx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '国家大剧院管弦乐团', 1);
INSERT INTO `film` VALUES (49, '蛮声戴天—LOUD FEST', 'https://s.piaoimg.com/2019/08/05123838YmIy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '你还在为每天忙碌的工作而疲惫不堪嘛？', 2);
INSERT INTO `film` VALUES (50, '天的祝福—李波大师与神骏乐团音乐会-北京', 'https://s.piaoimg.com/2019/05/06113036NGEx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (51, '2019旋律当道—瑞士摩登金属乐队DREAMSHADE 巡演 北京站', 'https://s.piaoimg.com/2019/08/14140522YTNj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019年旋律当道--瑞士摩登金属乐队DREAMSHADE 巡演', 4);
INSERT INTO `film` VALUES (52, '香港La Sax 乐团 《动物嘉年华之森林音乐派对》亲子互动音乐会', 'https://s.piaoimg.com/2019/06/21155804YWI2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (53, '约夏·贝尔小提琴独奏音乐会', 'https://s.piaoimg.com/2019/07/14215201ODkw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '约夏·贝尔既是独奏家，又精通室内乐；既是录音艺术家，也担任乐队指挥。2011年，约夏·贝尔被任命为田野里的圣马丁乐团音乐总监，成为自内维尔·马里纳爵士1958年成立该乐团以来担任该职务的第一人。', 2);
INSERT INTO `film` VALUES (54, '先锋作曲家利盖蒂与电影《福尔摩斯二世》管风琴即兴配乐音乐会', 'https://s.piaoimg.com/2019/07/27210239Y2E3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '【管风琴艺术节】', 3);
INSERT INTO `film` VALUES (55, 'Blue Note Beijing LARRY CARLTON WITH SPECIAL GUEST RICHARD BONA', 'https://s.piaoimg.com/2019/08/13170602YzRk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, 'LARRY CARLTON WITH SPECIAL GUEST RICHARD BONA', 4);
INSERT INTO `film` VALUES (56, 'BEIJING · 北汽 · 京演之夜 2019奥林匹克公园音乐季', 'https://s.piaoimg.com/2019/08/15150359MmYw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '本次活动拟精心策划呈现四场体现时代声音、以人民为创作导向，能够展现集团组建十年来取得的艺术成果及在人才培养等各方面取得显著成绩的主题音乐会。使世界、民族、古典、现代、原创等不同风格的艺术作品跨越历史与国度的边界，穿越时间与空间的维度，通过精心设计的艺术架构，将轻松愉悦、雅俗共赏的艺术体验带给首都市民。', 1);
INSERT INTO `film` VALUES (57, 'ATM顶级玩家 2019 巡演 - 北京站', 'https://s.piaoimg.com/2019/06/11073203YmQ4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '[ 乐海方舟 ] 呈现：ATM顶级玩家 2019 全国巡演', 2);
INSERT INTO `film` VALUES (58, '法国凡尔赛宫与德国科隆大教堂管风琴师音乐会', 'https://s.piaoimg.com/2019/07/28083531MjYw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '【管风琴艺术节】', 3);
INSERT INTO `film` VALUES (59, '《夜的钢琴曲》—石进钢琴作品音乐会-北京', 'https://s.piaoimg.com/2019/05/24185102OGY2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (60, '2019国际钢琴系列：张昊辰钢琴独奏音乐会', 'https://s.piaoimg.com/2019/07/23195711MTg3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '在2009年获得了第十三届范克莱本国际钢琴比赛金奖后，26岁的张昊辰通过他对音乐的深刻感触、超凡的想象力以及华丽的技巧掳获了来自美国、欧洲以及亚洲的观众。', 1);
INSERT INTO `film` VALUES (61, '爱乐之城“LA LA LAND” –唯美浪漫经典名曲视听音乐会', 'https://s.piaoimg.com/2019/07/15095617NzE2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '一串串曼妙的音符，承载着一段段浪漫的往事，', 2);
INSERT INTO `film` VALUES (62, '“卡农Canon In D”永恒经典名曲精选音乐会', 'https://s.piaoimg.com/2019/04/270918304434.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '关于 D大调卡农音乐作品《D大调卡农》 曾作为代表人类文明的成就之一，通过人造卫星送入太空。', 3);
INSERT INTO `film` VALUES (63, '天空之城-久石让宫崎骏经典视听音乐会', 'https://s.piaoimg.com/2019/08/01095510NWFk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '致敬经典，再现久石让和宫崎骏30年经典现场音乐会。', 4);
INSERT INTO `film` VALUES (64, '“致敬经典”国家图书馆建馆110周年馆庆演出季——四大名著交响音乐会', 'https://s.piaoimg.com/2019/06/13163854N2Fm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (65, '揭秘室内乐：保利稚乐亲子音乐会', 'https://s.piaoimg.com/2019/06/09204342MmM5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (66, '久石让.宫崎骏经典作品动漫视听音乐会《听.见风之谷》', 'https://s.piaoimg.com/2019/07/04100233M2Vh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (67, '带我去月球—当管风琴遇到爵士音乐会', 'https://s.piaoimg.com/2019/07/28083758NDFj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '【管风琴艺术节】', 4);
INSERT INTO `film` VALUES (68, '「少年弦」教师节特别演出', 'https://s.piaoimg.com/2019/08/05123803OTM0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '秋夜满院星辰', 1);
INSERT INTO `film` VALUES (69, '北京市第一七一中学金帆合唱团教师节专场音乐会', 'https://s.piaoimg.com/2019/07/23203831NDkz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '北京市第一七一中学合唱团创建于1990年，1999年被北京市教委任命为北京市金帆合唱团，2010年4月签约为“国家大剧院童声合唱团”。', 2);
INSERT INTO `film` VALUES (70, '《难忘的歌——中外经典艺术歌曲》首都女子合唱团音乐会', 'https://s.piaoimg.com/2019/08/12152525OWVl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '首都女子合唱团成立至今已十八余年，是中国合唱协会会员单位。该团由中央歌剧院国家一级演员张英泉先生创建并亲自担任指挥；在张英泉老师的悉心指导下，团员们通过系统的声乐训练，逐渐形成声音优美和谐、刚柔相济、颇富感染力的演唱风格，成为具有一定艺术修养和演唱水平的合唱团。十八年来，首都女子合唱团曾多次在国家大剧院、北京音乐厅举办专场音乐会，获得过众多奖项及音乐界的高度评价；并曾受邀远赴法国、日本、中国香港举办专场音乐会，受到当地观众、华人华侨的热烈欢迎和肯定。 历经了十八个春秋的成长和积淀，首都女子合唱团在张英泉老师的带领下，不断向艺术新高峰迈进。用音乐慰籍心灵，用歌声温暖世界。', 3);
INSERT INTO `film` VALUES (71, '巅峰对决—两大国际管风琴大赛主席独奏音乐会', 'https://s.piaoimg.com/2019/07/28084111ZTdm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '【管风琴艺术节】', 4);
INSERT INTO `film` VALUES (72, '“大地的呼唤”中国竹笛乐团民族室内乐音乐会', 'https://s.piaoimg.com/2019/07/27192853YmQz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '中国音乐学院教授、博士生导师。中国最具创新精神的民族吹管器乐演奏家、作曲家。与张艺谋、陈凯歌等合作担任电影“菊豆”、“大红灯笼高高挂”、“霸王别姬”的音乐创作并演奏，担任29届奥林匹克运动会开幕式的音乐创作和演奏、担任第40届2005年日本爱知世博会超越发展：“大自然智慧的再发现”中国馆的现场音乐会的全部音乐原创。应香港阳光文化委约创作《郑和下西洋》音乐，在美国播放后得到了极高的评价，担任舞剧《想亲亲》、北京人艺话剧《蔡文姬》的音乐创作。先后创建“华夏室内乐团、中国竹笛乐团”在伦敦、法国、美国等，与英国爱乐管弦乐团合作演出，获得极高的评价。创作各类作品：室内乐、协奏曲、独奏曲130余部。也是最早将中国民族器乐采用“新世纪音乐”、“世界音乐”创作的第一人，出版《天幻箫音》、《问天》、《箫的世界》等20余张CD。单张CD发行数量超过40万张，被人们誉为“当代笛王、圣手箫王“。', 1);
INSERT INTO `film` VALUES (73, '黄河·梁祝——永恒的经典中秋交响音乐会', 'https://s.piaoimg.com/2019/06/09210000ZmYw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (74, '中国广播民族乐团中秋节室内乐音乐会', 'https://s.piaoimg.com/2019/07/23204047NzA4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '中国广播民族乐团是成立于1949年的国家级乐团，是中国广播艺术团所属的五个分团之一，具有极高的艺术水准和管理水平，历史悠久、成就卓著，在国内外享有盛誉。', 3);
INSERT INTO `film` VALUES (75, '春江花月夜—献礼祖国70周年华诞·经典名曲中秋交响音乐会', 'https://s.piaoimg.com/2019/07/28084407ODMz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (76, 'Blue Note Beijing PEE WEE ELLIS FUNK ASSEMBLY', 'https://s.piaoimg.com/2019/08/13165810NDEx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, 'PEE WEE ELLIS FUNK ASSEMBLY', 1);
INSERT INTO `film` VALUES (77, '2019年第八届中关村金秋演出季 美国加德尔乐队 钢琴名曲亲子互动中秋音乐会《月光奏鸣曲》', 'https://s.piaoimg.com/2019/08/09183059YTZl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出介绍：钢琴—当音符从指尖流淌而出时，不仅连接了家长与孩子的心，更让孩子们认识了音乐的美好。', 2);
INSERT INTO `film` VALUES (78, '甜蜜蜜——纪念邓丽君经典金曲中秋音乐会', 'https://s.piaoimg.com/2019/04/29152358aec4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (79, '超燃音乐系－ACG二次元动漫音乐舞蹈秀《火影忍者》', 'https://s.piaoimg.com/2019/07/29192828ODIx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (80, '朱亦兵、林朝阳、盛原三重奏音乐会', 'https://s.piaoimg.com/2019/07/23204251NGU5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '中国音乐家协会理事、室内乐学会副主席、国家大剧院管弦乐团特邀首席。1986年在日内瓦国际大提琴比赛中获奖，十七岁考取法国巴黎国立高等音乐学院，成为法国大师让德隆的关门弟子，并以第一奖的成绩毕业，是继冼星海、马思聪之后在这所欧洲最高音乐学府学习并获得此荣誉的音乐家。', 1);
INSERT INTO `film` VALUES (81, '北京市曲剧团 曲韵京声——北京曲剧京味儿音乐会', 'https://s.piaoimg.com/2019/05/06142713NTNk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (82, '我的祖国—圆梦中秋•名家名曲大型演唱音乐会', 'https://s.piaoimg.com/2019/06/11073011M2Yx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (83, '为你歌唱——“庆中秋”经典名曲专场音乐会', 'https://s.piaoimg.com/2019/07/24142526YzJm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019年9月14日将在京演民族宫大剧院上演一台《为你歌唱——\"庆中秋\"经典名曲专场音乐会》，为你歌唱，耳中回响着这些熟悉的旋律，唱出我们的心声，回想这激情燃烧的岁月，永难忘怀。', 4);
INSERT INTO `film` VALUES (84, 'VGL中国巡演十周年！2019 VIDEO GAMES LIVE 魔兽世界音乐会', 'https://s.piaoimg.com/2019/06/12181550OTAz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (85, '2019年梁晓雪《闲人日记》城市巡演-北京站', 'https://s.piaoimg.com/2019/06/24094110MGRi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (87, '久石让•宫崎骏经典作品视听交响音乐会 《天空之城》', 'https://s.piaoimg.com/2019/04/0310241925a4.png?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '宫崎骏 久石让', 4);
INSERT INTO `film` VALUES (88, '药师寺宽邦「和-hé」2019巡演北京站', 'https://s.piaoimg.com/2019/08/14140632ZjQy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '药师寺宽邦「和-heacute;」2019巡演北京站', 1);
INSERT INTO `film` VALUES (89, 'CDSQ弦乐四重奏音乐会', 'https://s.piaoimg.com/2019/08/19161708Y2Y4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '环球音乐新金奖得主', 2);
INSERT INTO `film` VALUES (90, 'VGL中国巡演十周年！2019 VIDEO GAMES LIVE 暴雪游戏音乐会', 'https://s.piaoimg.com/2019/05/29110503YjBi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (91, '上海民族乐团《共同家园》音乐会', 'https://s.piaoimg.com/2019/07/19111947YmEx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '成立于1952年，是中国最早成立的现代大型民族乐团。一直以风格鲜明、演奏精湛而著称，在中国民族音乐发展历程中，始终占有举足轻重的地位。曾经涌现了张子谦、陆春龄、孙裕德、龚一、顾冠仁、闵惠芬、俞逊发等一批声誉卓著、对民族音乐发展做出重大贡献的艺术家。', 4);
INSERT INTO `film` VALUES (92, '惊艳帕格尼尼—帕格尼尼金奖25年·小提琴家黄滨《24首随想曲》音乐会', 'https://s.piaoimg.com/2019/07/30093057Yzk5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '-曾荣获三项顶级小提琴大赛金奖的小提琴家—意大利帕格尼尼小提琴大赛、德国慕尼黑国际音乐比赛、波兰维尼亚夫斯基国际青少年小提琴大赛', 1);
INSERT INTO `film` VALUES (93, '神奇的键盘乐器—羽管键琴、小型拨弦键琴音乐会', 'https://s.piaoimg.com/2019/07/30093402MmE0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '制琴/讲解：赵东升', 2);
INSERT INTO `film` VALUES (94, '北京交响乐团音乐会', 'https://s.piaoimg.com/2019/05/11094014OWI4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '享有中国“首都明珠乐团”美誉的北京交响乐团，成立于1977年10月。作为中国首都北京音乐文化的亲历者、见证者和创造者，乐团在成立和发展的历程中，凭借高度的职业化标准、严谨的演奏技巧、丰富的曲目和深厚的音乐修养以及全体音乐家对音乐无比执着的热情和真诚奉献，实现了乐团艺术水准的持续性稳步提升，使得北京交响乐团成为中国最受欢迎和国际颇有影响力的乐团之一，赢得了世界性的广泛关注与赞誉。', 3);
INSERT INTO `film` VALUES (95, '国家大剧院管弦乐团音乐会', 'https://s.piaoimg.com/2019/08/07115550NTg3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '洪毅全是新加坡交响乐团的副指挥和新加坡国家青年乐团的音乐总监。他曾荣获2006年第九届安东尼·佩特罗蒂指挥比赛大奖。2007年第十五届贝藏松国际青年指挥家比赛金奖和最佳指挥奖，以及2008年第八届托斯卡尼尼指挥家比赛金奖。', 4);
INSERT INTO `film` VALUES (96, '天空之城—久石让宫崎骏精选视听音乐会', 'https://s.piaoimg.com/2019/06/13160747ODE1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (97, '中国国家芭蕾舞团交响乐团音乐会', 'https://s.piaoimg.com/2019/04/03102752b1eb.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '中央芭蕾舞团交响乐团成立于1959年，隶属中央芭蕾舞团。乐团现任音乐总监、首席指挥张艺，常任指挥刘炬。乐团成员平均年龄35岁，受过严格的专业训练，具有良好的音乐素质，是中国乐坛最具朝气和发展潜力的国家级交响乐团。', 2);
INSERT INTO `film` VALUES (98, '16层·2019新专辑《鹿亦微灯》巡演 北京站', 'https://s.piaoimg.com/2019/08/15113044ODYy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '今年五月，16层乐队发布了全新器乐摇滚专辑《鹿亦微灯》，如今这群做梦的\"少年\"决定于夏日的燥热结束后出发，携着迷雾森林中带回的珍宝踏上秋日旅途。9月5日，16层·2019新专辑全国巡演将正式开启，他们将在11座城市展开梦境巡游，在器乐交织中，将他们故事娓娓道来。', 3);
INSERT INTO `film` VALUES (99, '《遇见经典·立体乐读》向共和国致敬', 'https://s.piaoimg.com/2019/08/19141637NjNh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《遇见经典·立体乐读》向共和国致敬', 4);
INSERT INTO `film` VALUES (100, '莫斯科拉赫玛尼诺夫三重奏音乐会', 'https://s.piaoimg.com/2019/02/01161345bce1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '维克多 ·杨博斯基，钢琴', 1);
INSERT INTO `film` VALUES (101, '“祖国颂歌”中国电影乐团交响音乐会', 'https://s.piaoimg.com/2019/07/25145614ZDIx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '中国电影乐团是新中国成立最早的国家级交响乐团，拥有六十七年的辉煌历史，在她的历史长河中涌现出了大量的知名音乐家和知名作品。', 2);
INSERT INTO `film` VALUES (102, '燃情岁月金曲系列之“经典留声”电影声乐作品音乐会', 'https://s.piaoimg.com/2019/07/25145422MmE2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多9月27日演出：https://www.piaobuy.com/riqi/0927.html', 3);
INSERT INTO `film` VALUES (103, '我的祖国——红色经典名曲大型交响演唱音乐会', 'https://s.piaoimg.com/2019/07/18185054MTM5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '我的祖国--红色经典名曲大型交响演唱音乐会汇集了众多中国当代最顶尖演奏家和歌唱家，他们用歌的激情、梦的交响，一齐奏响美丽中国盛世华章。整场音乐会演出精选包括《红旗颂》、《映山红》、《我的祖国》、《七律长征》、《歌唱祖国》、《祖国颂》在内的多首经典名曲。', 4);
INSERT INTO `film` VALUES (104, '《长征组歌》—难忘红色经典大型交响演唱音乐会', 'https://s.piaoimg.com/2019/07/18174042YTE3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《长征组歌》-难忘红色经典大型交响演唱音乐会', 1);
INSERT INTO `film` VALUES (105, '千与千寻-久石让宫崎骏动漫原声视听音乐会', 'https://s.piaoimg.com/2019/07/18182804NGE1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '20首最经典的动漫音乐；', 2);
INSERT INTO `film` VALUES (106, '百年经典绘本——小美人鱼亲子故事音乐会', 'https://s.piaoimg.com/2019/07/18183546MmU4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '本场演出每个小朋友都可以凭票现场领取我们精心为您准备的神秘礼物，让我们共同营造一个快乐的家庭音乐之旅（数量有限，领完为止）', 3);
INSERT INTO `film` VALUES (107, '难忘的旋律经典歌曲音乐会', 'https://s.piaoimg.com/2019/07/25145238ODNh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多9月28日演出：https://www.piaobuy.com/riqi/0928.html', 4);
INSERT INTO `film` VALUES (108, '《月光星愿》演奏会', 'https://s.piaoimg.com/2019/05/14171935YzQ4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (109, '2019年第七届中关村金秋演出季康斯坦丁诺●卡拉拉 电影流行钢琴音乐会', 'https://s.piaoimg.com/2019/05/19113626OWUy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (110, '红旗颂--名家经典金曲音乐会', 'https://s.piaoimg.com/2019/05/24185457ZjQ4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (111, '辉煌伟业革命歌曲主题专场音乐会', 'https://s.piaoimg.com/2019/07/12100729ZTdm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (112, '春江花月夜-大师的启蒙古筝专场音乐会', 'https://s.piaoimg.com/2019/01/15212041ec34.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '古筝的由来!', 1);
INSERT INTO `film` VALUES (113, '尤克里里（Ukulele）—刘宗立大师的启蒙风情之旅视听音乐会', 'https://s.piaoimg.com/2019/05/30092403ZDg2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '尤克里里（Ukulele）-刘宗立大师的启蒙风情之旅视听音乐会演出介绍---一把小小的尤克里里，是怎样变成一个震撼摇滚乐队的？', 2);
INSERT INTO `film` VALUES (114, '柴可夫斯基三大经典《天鹅湖》《睡美人》《胡桃夹子》交响音乐会', 'https://s.piaoimg.com/2019/06/11171537OGVk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出介绍柴可夫斯基受欢迎作品', 3);
INSERT INTO `film` VALUES (115, '北京交响乐团音乐会', 'https://s.piaoimg.com/2019/07/19103414ZjU4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '享有中国“首都明珠乐团”美誉的北京交响乐团，成立于1977年10月。作为中国首都北京音乐文化的亲历者、见证者和创造者，乐团在成立和发展的历程中，凭借高度的职业化标准、严谨的演奏技巧、丰富的曲目和深厚的音乐修养以及全体音乐家对音乐无比执着的热情和真诚奉献，实现了乐团艺术水准的持续性稳步提升，使得北京交响乐团成为中国最受欢迎和国际颇有影响力的乐团之一，赢得了世界性的广泛关注与赞誉。', 4);
INSERT INTO `film` VALUES (116, '西蒙·拉特爵士、伊曼纽尔·艾克斯与伦敦交响乐团音乐会', 'https://s.piaoimg.com/2019/08/15104755MzBi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '西蒙·拉特爵士出生于利物浦，毕业于伦敦皇家音乐学院。', 1);
INSERT INTO `film` VALUES (117, '台湾钢琴诗人Pianoboy高至豪流行钢琴北京音乐会', 'https://s.piaoimg.com/2019/08/15110122YmJj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, 'Pianoboy高至豪，世界少有原创钢琴艺人', 2);
INSERT INTO `film` VALUES (118, '维也纳童声合唱团音乐会', 'https://s.piaoimg.com/2019/07/19103220YzM0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多10月4日演出：https://www.piaobuy.com/riqi/1004.html', 3);
INSERT INTO `film` VALUES (119, '颂歌献给党：复兴之路 ·庆十一名家与经典大型演唱音乐会', 'https://s.piaoimg.com/2019/06/01210710MTg4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (120, '交响趣乐园—最欢乐的亲子视听交响音乐会', 'https://s.piaoimg.com/2019/07/23205800Mzli.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '交响趣乐园-最欢乐的亲子视听交响音乐会', 1);
INSERT INTO `film` VALUES (121, '卡农-经典名曲音乐会', 'https://s.piaoimg.com/2019/05/06115057ODNi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (122, '吉卜力原版交响音乐会 北京站', 'https://s.piaoimg.com/2019/06/26160134ZGNh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (123, '“中华情怀”中国民乐名家系列：中国广播民族乐团国庆音乐会', 'https://s.piaoimg.com/2019/07/23212454Mjk3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多10月5日演出：https://www.piaobuy.com/riqi/1005.html', 4);
INSERT INTO `film` VALUES (124, '共和国之歌—庆祝新中国成立70周年·交响合唱音乐会', 'https://s.piaoimg.com/2019/07/17180329MmQ5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019年10月5日 周六 19:30', 1);
INSERT INTO `film` VALUES (125, '红旗颂—庆祝新中国成立70周年·经典交响名曲音乐会', 'https://s.piaoimg.com/2019/07/17142250OTdh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '红旗颂—庆祝新中国成立70周年·经典交响名曲音乐会', 2);
INSERT INTO `film` VALUES (126, '国家大剧院管弦乐团音乐会', 'https://s.piaoimg.com/2019/07/25145835ZWI2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多10月6日演出：https://www.piaobuy.com/riqi/1006.html', 3);
INSERT INTO `film` VALUES (127, '千与千寻-宫崎骏•久石让经典动漫视听音乐会', 'https://s.piaoimg.com/2019/08/01095033NmVh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '*儿童无论大小均需持票入场', 4);
INSERT INTO `film` VALUES (128, '琴韵缤纷—东西南北四琴家音乐会', 'https://s.piaoimg.com/2019/07/16102753MTQ4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '韵高千古 心旷神怡—中国古琴名家雅集系列', 1);
INSERT INTO `film` VALUES (129, '前奏曲与赋格——2019杜天奇钢琴独奏会', 'https://s.piaoimg.com/2019/07/25181122N2Y3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '前奏曲与赋格——2019杜天奇钢琴独奏会', 2);
INSERT INTO `film` VALUES (130, '国家大剧院新作品音乐会', 'https://s.piaoimg.com/2019/07/23215333ZWFk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多10月11日演出：https://www.piaobuy.com/riqi/1011.html', 3);
INSERT INTO `film` VALUES (131, '千与千寻——久石让·宫崎骏经典作品动漫视听音乐会', 'https://s.piaoimg.com/2019/08/08183812NGQx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '久石让-中国年轻一代的动漫迷们都不陌生，日本著名的作曲家，指挥家，钢琴演奏家，电影配乐大师。久石让的音乐，有一种能勾起心底最纯真的力量，被人们称为触动灵魂的乐者。', 4);
INSERT INTO `film` VALUES (132, '姚门琴韵——姚公白 姚公敬 古琴音乐会', 'https://s.piaoimg.com/2019/03/221125034c43.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '姚公白：古琴家，国家级非物质文化遗产古琴艺术代表性传承人，中国昆剧古琴研究会副会长，现为香港志莲净苑文化部研究员。自幼从其父姚丙炎先生学琴，深得浙派姚门精髓，并曾受教于吴振平、张子谦先生。多次于国内、外讲学及公开演奏。录有《姚门琴韵》(1991年香港雨果唱片)、《皇响──姚公白の古琴》(1998年King Record Co. Ltd., Japan)、《鹤鸣九皋》(2005年西安德音文化) 、《凤凰和鸣(浙江博物馆藏唐琴录音)》(2009年浙江文艺音像)等古琴音乐光盘。曾发表〈姚丙炎古琴打谱〉、〈「但曲七曲」之辨〉等学术论文。', 1);
INSERT INTO `film` VALUES (133, '夏伊与琉森音乐节管弦乐团音乐会Ⅰ·Ⅱ', 'https://s.piaoimg.com/2019/07/26113207MmM2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '里卡尔多·夏伊，1953年生于米兰，曾在佩鲁贾、罗马与米兰的音乐学院和锡耶纳音乐学院学习指挥，他的指挥家生涯始于其在米兰斯卡拉歌剧院为克劳迪奥·阿巴多担任助理指挥之时。1980年，夏伊被任命为柏林广播交响乐团的首席指挥，1988年他在阿姆斯特丹皇家音乐厅管弦乐团出任同一职位，并履职超过16年。2005年至2016年间，里卡尔多·夏伊担任莱比锡布商大厦管弦乐团首席指挥，在2015年接手米兰斯卡拉歌剧院的音乐总监一职，2016年成为琉森音乐节管弦乐团音乐总监。里卡尔多·夏伊经常受邀指挥欧洲各大顶级乐团，如柏林爱乐乐团、维也纳爱乐乐团、巴伐利亚广播交响乐团、伦敦交响乐团、巴黎管弦乐团。在美国，他曾与纽约爱乐乐团、克利夫兰交响乐团、费城交响乐团与芝加哥交响乐团合作。除了在斯卡拉歌剧院的演出，他还以歌剧指挥家的身份现身纽约大都会歌剧院、伦敦皇家歌剧院、苏黎世歌剧院、巴伐利亚国家歌剧院、维也纳国家歌剧院，以及芝加哥抒情歌剧团与旧金山歌剧团。里卡尔多·夏伊拥有超过150张唱片的录音作品目录，并在2012年、2015年两次获得德国古典回声奖。留声机杂志在2014年评选他的勃拉姆斯交响曲全集为年度唱片。里卡尔多·夏伊荣获意大利大长官、大十字骑士称号以及荷兰雄狮骑士勋章。1996年，伦敦皇家音乐学院授予其荣誉成员身份。2011年，他还被授予法国文学与艺术骑士勋章称号。', 2);
INSERT INTO `film` VALUES (134, '天空之城——久石让宫崎骏经典视听音乐会', 'https://s.piaoimg.com/2019/06/18214859MTJl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '天空之城-久石让宫崎骏经典视听音乐会致敬经典，再现久石让和宫崎骏30年经典现场音乐会。', 3);
INSERT INTO `film` VALUES (135, '纯美天籁—德国科隆大教堂童声合唱团音乐会', 'https://s.piaoimg.com/2019/08/17104846MTVl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '科隆大教堂童声合唱团', 4);
INSERT INTO `film` VALUES (136, '心心向荣—何荣教授归国20周年庆典音乐会', 'https://s.piaoimg.com/2019/08/17105355MWQ4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019年10月16日 周三 19:30', 1);
INSERT INTO `film` VALUES (137, '俄罗斯红军歌舞团大型歌舞音乐会', 'https://s.piaoimg.com/2019/08/05181005N2Uz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (138, '意大利夏加尔弦乐四重奏音乐会', 'https://s.piaoimg.com/2019/02/01161416e3e1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (139, '张希‘偶然的事“2019巡演北京站', 'https://s.piaoimg.com/2019/08/13170526MzIw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '时间的旅途上，各个生命体以不同的过客身份，做着赤橙黄绿各色的梦，简单与复杂，情意纠缠不清。', 4);
INSERT INTO `film` VALUES (140, '中央歌剧院2019演出季 向大师致敬-勃拉姆斯专场音乐会', 'https://s.piaoimg.com/2019/03/22112600bdd2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '【指挥：杨洋】', 1);
INSERT INTO `film` VALUES (141, '指环王——奥斯卡获奖电影金曲精选音乐会', 'https://s.piaoimg.com/2019/06/18214533ZGFk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (142, '疯狂动物城——经典动画视听音乐会', 'https://s.piaoimg.com/2019/04/291347273aca.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '疯狂动物城--经典动画视听音乐会', 3);
INSERT INTO `film` VALUES (143, 'Majiko (まじ娘)『寂寞的人最伟大』巡演 北京站', 'https://s.piaoimg.com/2019/07/26200443Njc5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, 'majiko(まじ娘)，日本创作型女歌手.代表作【心做し】【アイロニ】只要你听过这两首歌便会记忆深刻，会被深深的打动。', 4);
INSERT INTO `film` VALUES (144, '光荣绽放：田佳鑫钢琴独奏音乐会', 'https://s.piaoimg.com/2019/08/15110016OWFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '国际钢琴演奏家、全球施坦威艺术家，仅有的几位连续多年在世界顶级音乐厅卡内基音乐厅主厅举办个人专场音乐会的华人女钢琴家，她的音乐会连续五年列入中国文化部“欢乐春节”海外专场系列音乐会。第一位登上《纽约邮报》名人榜的华人女钢琴家，2012年和2015年中国邮政曾先后两次出版了田佳鑫纪念邮票及“印象中国”中国艺术家系列邮票，2016年成为唯一一位为纽约地标建筑帝国大厦做宣传的中国艺术家，2016年担任韩·中国际音乐交流大赛的中方评委会主席以及艺术大使、保利WeDo钢琴形象大使及成立保利WeDo田佳鑫钢琴工作室，中央电视台连续几年对其相关音乐会进行跟踪报道单条新闻网络及电视点播量过亿。', 1);
INSERT INTO `film` VALUES (145, '“钢琴博士”理查德•波尔钢琴独奏音乐会 ---北京站', 'https://s.piaoimg.com/2019/08/12152226YTZi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '指尖流淌的曼妙曲音艺术点亮城市', 2);
INSERT INTO `film` VALUES (146, '“卡农Canon In D”永恒经典名曲精选音乐会', 'https://s.piaoimg.com/2019/07/31130951MzM2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '关于 D大调卡农', 3);
INSERT INTO `film` VALUES (147, '中央歌剧院2019演出季 建国70周年献礼-中央歌剧院多民族合唱作品音乐会', 'https://s.piaoimg.com/2019/03/22112636b241.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '历史沿革。中央歌剧院是隶属于文化和旅游部的国家歌剧院，成立于1952年。在革命圣地延安组建的中央管弦乐团和鲁艺文工团，是其前身。1943年在延安创作演出秧歌剧《兄妹开荒》，1945年在延安演出民族歌剧《白毛女》。中央歌剧院见证了历史的变迁。时至今日，中央歌剧院在亚太地区是最具规模实力、人才优势和影响力的国家艺术院团，代表国家的歌剧艺术水准，是我国表演艺术的殿堂。', 4);
INSERT INTO `film` VALUES (148, '挚爱肖邦—肖邦钢琴独奏曲全集音乐会之七', 'https://s.piaoimg.com/2019/08/17110229ZmQz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '【挚爱肖邦- 以肖邦年代的早期钢琴演奏】', 1);
INSERT INTO `film` VALUES (149, '席夫与安德列亚·巴尔卡室内乐团音乐会', 'https://s.piaoimg.com/2019/07/26113411NjE0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '安德拉斯·席夫爵士生于1953年，曾在李斯特费伦茨音乐学院师从佩尔·卡多萨、格里高利·库尔塔格、费伦茨·拉多斯学习钢琴，并在伦敦于乔治·马尔科姆门下深造。他曾与多个世界顶尖乐团及指挥合作，目前主要从事独奏及指挥等工作。', 2);
INSERT INTO `film` VALUES (150, '挚爱肖邦—肖邦钢琴独奏曲全集音乐会之八', 'https://s.piaoimg.com/2019/08/17110459OTAy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '1.本场演出谢绝1.2米以下儿童凭票入场；', 3);
INSERT INTO `film` VALUES (151, '钢琴名曲精选音乐会《海上钢琴师》', 'https://s.piaoimg.com/2019/08/19135837ZjA2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '精选耳熟能详的钢琴名曲，曲曲经典，首首动听。', 4);
INSERT INTO `film` VALUES (152, '德国班贝格交响乐团音乐会', 'https://s.piaoimg.com/2019/07/26113607OTM5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多11月1日演出：https://www.piaobuy.com/riqi/1101.html', 1);
INSERT INTO `film` VALUES (153, '《难忘的旋律》管乐交响影视音乐会', 'https://s.piaoimg.com/2019/08/08183144ZTIx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '曲目单', 2);
INSERT INTO `film` VALUES (154, '华艺星空·法国巴黎四怪客喜剧互动音乐会《疯狂萨克斯2》', 'https://s.piaoimg.com/2019/07/26084805Y2U1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '第二轮巡演 全新版《疯狂萨克斯2》再袭北京', 3);
INSERT INTO `film` VALUES (155, '猫和老鼠的莫扎特 ——古典音乐启蒙钢琴名曲趣味视听音乐会', 'https://s.piaoimg.com/2019/07/16102542MzBk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '音乐会精彩看点：', 4);
INSERT INTO `film` VALUES (156, '一生必听的电影音乐 ——《卡农》《海上钢琴师》《教父》《汉尼拔》钢琴小提琴大提琴浪漫邂逅音乐会', 'https://s.piaoimg.com/2019/04/291203253ac5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '时间：2019年11月2日 19:30', 1);
INSERT INTO `film` VALUES (157, '超燃音乐系·2019超燃电声视听音乐会《权力的游戏》', 'https://s.piaoimg.com/2019/07/24145652MjEx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '超燃音乐系·2019超燃电声视听音乐会《权力的游戏》', 2);
INSERT INTO `film` VALUES (158, '致臻德奥—德国钢琴大师克劳斯·贝斯勒独奏音乐会', 'https://s.piaoimg.com/2019/08/17111014MGM5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (159, '龙猫的约定-宫崎骏.久石让经典动漫交响音乐会', 'https://s.piaoimg.com/2019/07/16102236YWRl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '宫崎骏', 4);
INSERT INTO `film` VALUES (160, '新经典艺术节·北欧自然之声—挪威极地冰乐团音乐会', 'https://s.piaoimg.com/2019/07/31125604YzY5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '新经典艺术节·北欧自然之声-挪威极地冰乐团音乐会', 1);
INSERT INTO `film` VALUES (161, '芬芳莫扎特—加拿大国王的提琴手乐团音乐会', 'https://s.piaoimg.com/2019/08/17111336ZGZl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (162, '2019国际钢琴系列：米哈伊尔·普莱特涅夫钢琴独奏音乐会', 'https://s.piaoimg.com/2019/07/26113741Yzhh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多11月5日演出：https://www.piaobuy.com/riqi/1105.html', 3);
INSERT INTO `film` VALUES (163, '纯正莫扎特—德国黑森林室内乐团音乐会', 'https://s.piaoimg.com/2019/08/08123417M2Y5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (164, '超燃音乐系•日本经典动漫二次元视听音乐会《进撃の巨人》', 'https://s.piaoimg.com/2019/08/09183235MDEz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '音乐是动漫的灵魂，即使不记得主人公的名字，却还记得燃烧，催泪，痛并快乐着的抓耳旋律。9月22日，邂逅在二次元的平行世界，十指相扣，不见不散。无论跨越海上，村庄，都市、荒废的秘密基地，还是徘徊于童年、青春与未来。每个时空裂缝，动漫音乐无所不在。', 1);
INSERT INTO `film` VALUES (165, '《长征组歌》-难忘的红色旋律大型交响音乐会', 'https://s.piaoimg.com/2019/06/11071920MjNj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (166, '笑傲江湖—经典武侠影视金曲视听音乐会', 'https://s.piaoimg.com/2019/06/20172325NTAz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (167, '以色列钢琴家爱莲娜・古赫维奇独奏音乐会', 'https://s.piaoimg.com/2019/02/01161441eb3b.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '浸润在俄罗斯和以色列两种文化中的爱莲娜，以独 创的钢琴古典经典与当代电影配乐结合的创意曲目而在欧洲音乐界倍受瞩目。她以独具匠心的曲目编排向大众展示了两种截然不同艺术形式。', 4);
INSERT INTO `film` VALUES (168, '献礼祖国70周年《向祖国致敬》——红色经典交响音乐会', 'https://s.piaoimg.com/2019/07/16100543ZjA2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '古老的东方有一条龙，它的名字叫中国。中国，屹立于世界之林，他用自己的进步与发展向全世界展示了中国真正的实力。我们的祖国在党的领导下，取得了辉煌的成就。一场\"《向祖国致敬》--红色经典交响音乐会 永远跟党走将在北京中山音乐堂上演，北京青少年\"爱乐\"乐团庆祝我们的党的我们的祖国繁荣、富强！', 1);
INSERT INTO `film` VALUES (169, '弦动心声—林朝阳小提琴独奏音乐会', 'https://s.piaoimg.com/2019/08/18092416Nzcy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (170, '高山流水遇筝音-大师的启蒙丁雪儿古筝专场音乐会', 'https://s.piaoimg.com/2019/07/25150213N2Rm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '一场拒绝枯燥乏味的演出！', 3);
INSERT INTO `film` VALUES (171, '雅尼2019北京音乐会', 'https://s.piaoimg.com/2019/07/24141841ZTYw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '雅尼的历史时刻', 4);
INSERT INTO `film` VALUES (172, '“柔情倾诉”史蒂芬·伊瑟利斯与慕尼黑室内乐团音乐会', 'https://s.piaoimg.com/2019/08/07114757MDFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多11月10日演出：https://www.piaobuy.com/riqi/1110.html', 1);
INSERT INTO `film` VALUES (173, '肖邦的美好年代—法国钢琴大师希普林·卡萨利斯独奏音乐会', 'https://s.piaoimg.com/2019/08/18092811MThj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (174, '2019国际钢琴系列：帕斯卡尔·罗热钢琴独奏音乐会', 'https://s.piaoimg.com/2019/07/23215603ZjAz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多11月14日演出：https://www.piaobuy.com/riqi/1114.html', 3);
INSERT INTO `film` VALUES (175, '唯美童声• “天籁之音”波兰华沙男童合唱团北京音乐会', 'https://s.piaoimg.com/2019/08/07122633Njg1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '来自肖邦之城的唯美天籁', 4);
INSERT INTO `film` VALUES (176, '舒伯特声乐套曲《冬之旅》', 'https://s.piaoimg.com/2019/08/06182759M2Fl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '歌唱家彭康亮，携手钢琴家张佳林，深情演绎声乐套曲《冬之旅》', 1);
INSERT INTO `film` VALUES (177, '来了老帝——帝玖管弦乐团2019ACG交响音乐会-北京站', 'https://s.piaoimg.com/2019/08/18093034YTE1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (178, '“哥德堡变奏曲”英国布里顿小交响乐团音乐会', 'https://s.piaoimg.com/2019/07/17133711NjZl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '布里顿小交响乐团是世界上最知名的、也是最具领先地位的乐团之一。该乐团令人称颂的，不仅是其高超的演奏技巧，还有其跨越400年、大胆聪慧且给人以灵感的音乐会曲目，以及无与伦比的多面音乐技能。布里顿小交响乐团打破了首席指挥或总监责任制的传统，选择与国际上各领域的一流客座艺术家合作，这使其演奏具有罕见的内涵与能量。', 3);
INSERT INTO `film` VALUES (179, '庆祝建国70周年--经典红色主题视听音乐会《闪闪的红星》', 'https://s.piaoimg.com/2019/01/03151832dba2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019年是中华人民共和国成立70周年。为庆祝祖国70年华诞，2019年11月17日、12月17日晚19：30，北京展览馆剧场将举办\"经典红色主题视听音乐会《闪闪的红星》\"。', 4);
INSERT INTO `film` VALUES (180, '重奏艺术三百年—天津茱莉亚学院开幕庆典·名师音乐会', 'https://s.piaoimg.com/2019/08/19094308M2I4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '1.本场演出谢绝1.2米以下儿童凭票入场；', 1);
INSERT INTO `film` VALUES (181, '爵士荣耀—格莱美萨克斯大师：布兰福德·马萨利斯四重奏爵士音乐会', 'https://s.piaoimg.com/2019/08/19094543NWE1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (182, '华表·华彩中山园钢琴音乐会暨“钢琴+” 新艺术展示', 'https://s.piaoimg.com/2019/08/19094814ZTQw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '华表.华彩中山园钢琴音乐会暨“钢琴+”新艺术展示', 3);
INSERT INTO `film` VALUES (183, '天空之城—宫崎骏•久石让经典动漫原声视听大型交响音乐会', 'https://s.piaoimg.com/2019/08/16123828N2Fi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '大型交响乐队，超大屏幕精彩电影画面的的视觉享受', 4);
INSERT INTO `film` VALUES (184, '2019“新丝绸之路”马克西姆跨界钢琴演奏会北京站', 'https://s.piaoimg.com/2019/06/13095247NmQx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (185, '乔萨和魔法小提琴 世界绘本大师情境趣味音乐会', 'https://s.piaoimg.com/2019/03/04165339eb1a.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (186, '北德广播爱乐乐团音乐会', 'https://s.piaoimg.com/2019/07/19103013NGUy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多11月24日演出：https://www.piaobuy.com/riqi/1124.html', 3);
INSERT INTO `film` VALUES (187, '“十一种孤独”宿羽阳2019巡演 北京站', 'https://s.piaoimg.com/2019/07/12100526MTYw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '她是风度翩翩，恰似少年的，独立女歌手。', 4);
INSERT INTO `film` VALUES (188, '古典与浪漫之心—法国查第格钢琴三重奏音乐会', 'https://s.piaoimg.com/2019/08/06183603MzFj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (189, '燃情岁月金曲音乐会', 'https://s.piaoimg.com/2019/08/04200934ZmZh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多12月5日演出：https://www.piaobuy.com/riqi/1205.html', 2);
INSERT INTO `film` VALUES (190, '《四月是你的谎言》 ——“公生”与“薰”的钢琴小提琴唯美经典音乐集', 'https://s.piaoimg.com/2019/01/041754252d3c.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (191, '天空之城—久石让宫崎骏经典视听音乐会', 'https://s.piaoimg.com/2019/07/23204940OWUy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '天空之城-久石让宫崎骏经典视听音乐会', 4);
INSERT INTO `film` VALUES (192, '一生必听乌仁娜——“天堂鸟”演唱会', 'https://s.piaoimg.com/2019/08/06173747NzZm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (193, '印象派与浪漫主义对弹音乐会—天津茱莉亚学院开幕庆典·名师音乐会', 'https://s.piaoimg.com/2019/08/19095128M2U0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '1.本场演出谢绝1.2米以下儿童凭票入场；', 2);
INSERT INTO `film` VALUES (194, '激燃新声—波兰原子弦乐四重奏·爵士音乐会', 'https://s.piaoimg.com/2019/08/19095305OTJm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '原子弦乐四重奏，波兰最好的爵士乐队之一', 3);
INSERT INTO `film` VALUES (195, '慕尼黑交响乐团新年音乐会', 'https://s.piaoimg.com/2019/07/26114827ZTc3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多北京新年音乐会：https://www.piaobuy.com/newyear/', 4);
INSERT INTO `film` VALUES (196, '美丽心灵-大师的启蒙钢琴音乐会', 'https://s.piaoimg.com/2019/07/15144801YmEw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '钢琴和大师们谁成就了谁？', 1);
INSERT INTO `film` VALUES (197, '铃儿响叮当—世界名歌·童声合唱音乐会1221', 'https://s.piaoimg.com/2019/08/19095531OTZi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '歌声翱翔音乐时空', 2);
INSERT INTO `film` VALUES (198, '2019国际钢琴系列：陈萨钢琴独奏音乐会', 'https://s.piaoimg.com/2019/07/26120354MmU1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '近年来，陈萨已被公认为当今同辈中最具魅力的钢琴家之一。她在2000年的肖邦国际钢琴大赛以及2005年的范·克莱本钢琴大赛中的出色亮相为她打开了国际演奏生涯的道路，越来越多的观众在倾心于属于陈萨的声音。', 3);
INSERT INTO `film` VALUES (199, '胡桃夹子—世界经典芭蕾舞曲·新年交响音乐会', 'https://s.piaoimg.com/2019/08/20103154ZjAw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '活泼灵动的《胡桃夹子》典雅浪漫的《天鹅湖》', 4);
INSERT INTO `film` VALUES (200, '柴可夫斯基2020新年交响音乐会', 'https://s.piaoimg.com/2019/08/13162746NzNk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '柴可夫斯基2020新年交响音乐会\"音乐是上天给人类最伟大的礼物\"，老柴的华章是对新年最好的礼赞。柴可夫斯基的音乐作品旋律与长情感动世界，柴可夫斯基诞辰180周年之际，由俄罗斯国立克麦罗沃爱乐乐团呈现的2020新年交响音乐会，精选柴可夫斯基不同时期的经典作品，以一场波澜壮阔的交响乐辞旧迎新，用曼妙的旋律奏响天籁之音，浪漫高雅的节日乐章是源自对美好生活的期许与礼赞。', 1);
INSERT INTO `film` VALUES (201, '甜蜜蜜——纪念邓丽君经典金曲圣诞音乐会', 'https://s.piaoimg.com/2019/05/21150445ZmU1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (202, '理查德•克莱德曼2020北京音乐会', 'https://s.piaoimg.com/2019/05/07091355YmY5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (203, '美国纽约曼哈顿交响乐团2020新年音乐会', 'https://s.piaoimg.com/2019/08/14103452NTI0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '美国纽约曼哈顿交响乐团2020新年音乐会', 4);
INSERT INTO `film` VALUES (204, '维也纳皇家交响乐团2020新年音乐会', 'https://s.piaoimg.com/2019/07/12091040MjBi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '新年举行音乐会的传统源自维也纳。时至今日，每年一度的《维也纳新年音乐》会仍是世界最引人注目的年度音乐盛会。', 1);
INSERT INTO `film` VALUES (205, '【宴会厅】2020第三届国乐名家名曲北京新年音乐会', 'https://s.piaoimg.com/2019/07/26200127ODc5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '为继承中华文化、推动时代发展，北演公司立足经典国乐与\"北京新年演出系列\"其\"国际水准、中国气派、北京特色、节目气氛\"的精品文化创意理念，始终坚持世界一流，以\"名团、名家、名曲\"高规格、高水准的艺术精英展示，打造\"北京新年国乐\"演出品牌的影响力，为国乐文化的传播之路打基础，致力于通过举办具有高水平的优秀国乐音乐会，满足人们的对国乐文化的消费需求，在展现国内民乐形势与形成文化生态圈的同时，为首都乃至全国观众献上一台新年国乐的视听盛宴。', 2);
INSERT INTO `film` VALUES (206, '【金色大厅】奥地利之声北京新年音乐会', 'https://s.piaoimg.com/2019/08/12190041NzFi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019-2020维也纳合奏交响乐团', 3);
INSERT INTO `film` VALUES (207, '不忘初心-红色主题名家与经典大型演唱音乐会', 'https://s.piaoimg.com/2019/07/24122019OGFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '古老的东方有一条龙，它的名字叫中国。中国，屹立于世界之林，他用自己的进步与发展向全世界展示了中国真正的实力。我们的祖国在党的领导下，取得了辉煌的成就。一场\"《不忘初心》---红色主题名家与经典大型演唱音乐会永远跟党走将在人民大会堂宴会厅上演，艺术家们将用一首首红色歌曲来庆祝我们的党的我们的祖国繁荣、富强！从义勇军进行曲到东方红，从春天的故事到走进新时代，97年的风雨历程，97年的辉煌历史，在每一个关键时刻，在每一次重大关头，都是您，我们伟大的中国共产党，把握历史大势，顺应时代潮流，带领我们开创新时代，使我们伟大的祖国站在世界强国之林。请让我们用一场音乐会来表达我们的热爱之情，祝我们的党，祝我们的祖国繁荣昌盛。本场音乐会着眼中国的经典老歌，将观众带回到那个时代，回忆起当年的激情岁月，让观众心中的那朵花再次绽放，熟悉的旋律仿佛让观众又置身于当时那个激情澎湃的年代。中华民族发展壮大的历史轨迹和使命观照，完美的呈现了中国革命历程。', 4);
INSERT INTO `film` VALUES (208, '【金色大厅】维也纳春之声交响乐团新年音乐会', 'https://s.piaoimg.com/2019/06/24223011NjFh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (209, '《不朽的歌》红色经典新年音乐会', 'https://s.piaoimg.com/2019/08/07174349NzNm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '古老的东方有一条龙，它的名字叫中国。中国，屹立于世界之林，他用自己的进步与发展向全世界展示了中国真正的实力。我们的祖国在党的领导下，取得了辉煌的成就。一场\"不朽的歌-红的经典新年音乐会', 2);
INSERT INTO `film` VALUES (210, '《龙猫的音乐之旅》--久石让·宫崎骏视听新年音乐会', 'https://s.piaoimg.com/2019/08/07174939ZjRj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '此次音乐会的曲目以脍炙人口的宫崎骏动画电影为主，包括《千与千寻》《天空之城》《风之谷》《幽灵公主》《魔女宅急便》《龙猫》《哈尔的移动城堡》等，大多数作品出自日本音乐大师久石让。久石让，中国年轻一代的动漫迷们都不陌生。久石让的音乐，有一种能勾起心底最纯真的力量，被人们称为触动灵魂的乐者。久石让与宫崎骏的黄金组合创作的《天空之城》、《千与千寻》、《龙猫》、《哈尔的移动城堡》、《幽灵公主》等经典作品深受广大青年朋友的喜爱。天空之城、千与千寻中的经典配乐更是常常作为背景音乐在众多场合中被引用。整场音乐会通过音乐和画面的结合，使得大家重温了经典，通过精心剪辑的精彩画面，加深了观众对片中音乐旋律的理解。此次音乐会的青年演奏家们精妙的配合完整地阐释了曲目的内涵。', 3);
INSERT INTO `film` VALUES (211, '《维也纳之声》—2020北京新年音乐会', 'https://s.piaoimg.com/2019/05/14165734MGE2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (212, '维也纳约翰施特劳斯管弦乐团2020新年音乐会', 'https://s.piaoimg.com/2019/08/19174414OTlj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '更多北京新年音乐会：https://www.piaobuy.com/newyear/', 1);
INSERT INTO `film` VALUES (213, '合家欢系列——经典奥斯卡电影主题新年音乐会', 'https://s.piaoimg.com/2019/08/19180817Y2Ey.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出介绍\"合家欢\"系列——经典奥斯卡电影主题新年音乐会', 2);
INSERT INTO `film` VALUES (214, '古琴正韵—古琴名家吴钊音乐会', 'https://s.piaoimg.com/2019/08/20103353Nzky.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (215, '春天你好—世界名歌童声合唱·新春音乐会', 'https://s.piaoimg.com/2019/08/20140023MjM3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '∙享誉世界的童声合唱团，由著名指挥家杨鸿年创建于1983年', 4);
INSERT INTO `film` VALUES (216, '斯特拉文斯基：士兵的故事—天津茱莉亚学院开幕庆典·名师音乐会', 'https://s.piaoimg.com/2019/08/20140213Y2Q1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出：天津茱莉亚室内乐团', 1);
INSERT INTO `film` VALUES (217, '广陵琴韵—李凤云王建欣琴埙箫音乐会', 'https://s.piaoimg.com/2019/08/20140354ZmQw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (218, '话剧《男人还剩下什么》', 'https://s.piaoimg.com/2018/11/20135929d3cb.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (219, '契诃夫戏剧处女作《普拉东诺夫》', 'https://s.piaoimg.com/2019/07/18170847Mjhm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '引言——你不能飞得更远些么？', 4);
INSERT INTO `film` VALUES (220, '第十届北京··南锣鼓巷戏剧节青少年单元 《毛毛——时间窃贼和一个小女孩不可思议的故事》', 'https://s.piaoimg.com/2019/07/16084916ZTQ4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (221, '孟京辉戏剧作品《四川好人》', 'https://s.piaoimg.com/2019/05/27164941ZTVi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (222, '人艺百场演出剧目《成人爱情故事——忐忑》', 'https://s.piaoimg.com/2019/07/22201236NjQ3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '月亮，诗歌，酒精下演绎萨特与波伏娃的爱情主义！', 3);
INSERT INTO `film` VALUES (223, '孟京辉戏剧作品《一个陌生女人的来信》', 'https://s.piaoimg.com/2018/12/261211312433.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (224, '话剧《杜甫》', 'https://s.piaoimg.com/2019/07/15102100YjFj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '编剧：郭启宏', 1);
INSERT INTO `film` VALUES (225, '国家大剧院制作普契尼歌剧《西部女郎》', 'https://s.piaoimg.com/2019/07/16230413MGM3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (226, '法语原版音乐剧《巴黎圣母院》', 'https://s.piaoimg.com/2019/04/201016082dd2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (227, '原创点演减压喜剧《挑战不停 欢乐不止》', 'https://s.piaoimg.com/2019/08/06103626NDkx.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '每晚7部原创减压点演喜剧《七十七块七毛七》、《如果爱能倒着来》、《爱上潮人女主播》、《笑过哭过别错过》、《东直门天天向上》、《说谎我就废了你》、《宋菊花的小春天》，每部戏都上演百场，其中《七十七块七毛七》连续三年被评为中国小剧场票房前十强作品；《东直门天天向上》荣登中央电视台《两会直通车》《新闻联播》《共同关注》，并改编成电影荣获蒙特利尔\"中加电影节\"优秀编剧奖、最受观众欢迎奖；《如果爱能倒着来》参加北京市、东城区戏剧展演获得优秀剧目及荣获\"演艺中国\"中国小剧场话剧原创作品奖；《说谎我就废了你》为国际\"万事达卡\"定制剧目，全球30家银行行长观看该剧目演出，雷剧场全国分剧场开山之作，等。部部经典，喜剧笑过俱佳，相同的演员、不同的内容，让走进雷剧场的观众先由演员介绍每一个减压喜剧剧目，然后观众和演员现场互动，评选出最想点演的剧目，演员现场挑战极限，瞬间进入剧情……', 4);
INSERT INTO `film` VALUES (228, '2019年“北京故事”优秀小剧场剧目展演 一出有温度的戏《周六下午两点半的咖啡馆》', 'https://s.piaoimg.com/2019/07/23205946ZmZi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '通常情况下，我们会把一天中最重要的事情安排在下午三点，因为重要，所以会早到；因为早到，所以会等待，我们一般会选择在咖啡馆度过等待的时间。下午三点是一个注定要\"搞事情\"的时间，于是下午两点半的咖啡馆就处在了事情\"发生\"与\"不发生\"的临界点上，一杯咖啡的时间既属于当下，也属于未来，每一个瞬间都拥有事件发生无限的可能性。', 1);
INSERT INTO `film` VALUES (229, '戏剧东城·2019南锣鼓巷戏剧展演季 北京故事《稳稳的幸福》', 'https://s.piaoimg.com/2019/07/19113549YTY5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '话剧《稳稳的幸福》讲述的是一个放在在北京的真实故事。天坛申请世界文化遗产成功20周年后，为恢复天坛原始风貌，北京市及东城区政府启动了天坛周边简易楼的腾退项目。刻画了在腾退工作刚开始时， 天坛周围的居民们\"不舍得、不理解、不接受\"，再到后来 \"为大局、舍私利、会配合\"的心态变化，以及期间发生的 既真实生动又发人深省的故事。', 2);
INSERT INTO `film` VALUES (230, '阿加莎·克里斯蒂经典悬疑剧《无人生还》北京版', 'https://s.piaoimg.com/2019/06/19191853NWFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (231, '形体剧《化水》', 'https://s.piaoimg.com/2019/07/23210132MTMz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (232, '开心麻花爆笑贺岁舞台剧《牢友记》', 'https://s.piaoimg.com/2019/06/11172531MDYw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (233, '中国国家话剧院出品·演出《战马》', 'https://s.piaoimg.com/2019/04/24165403d5e2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '英国桂冠作家畅销成长小说改编', 2);
INSERT INTO `film` VALUES (234, '赤匹江湖实验版 《青春禁忌游戏》第四轮', 'https://s.piaoimg.com/2019/06/20103601MTUy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (235, '全新英国原版阖家欢音乐剧《马达加斯加》', 'https://s.piaoimg.com/2019/07/16143620YmE5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '三人同行，特惠八折（仅限680，480两种票价）', 4);
INSERT INTO `film` VALUES (236, '音乐剧《兰波》中文版-北京', 'https://s.piaoimg.com/2019/05/24184724NGFh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (237, '2019国家大剧院国际戏剧季：椎剧场出品中德合作当代戏剧《默默》', 'https://s.piaoimg.com/2019/06/21115705NzRi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (238, '话剧《我爱我房》', 'https://s.piaoimg.com/2019/07/19112724M2Qw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出单位：北京童艺艺术剧院——牛爷戏剧工作室', 3);
INSERT INTO `film` VALUES (239, '俄罗斯圣彼得堡马斯特卡雅剧院 话剧《静静的顿河》', 'https://s.piaoimg.com/2019/07/18174302MWEy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (240, '繁星戏剧 爱情喜剧《奋不顾身的爱情》第40轮', 'https://s.piaoimg.com/2019/07/16091309MTYy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (241, '中国儿童艺术剧院 童话剧《马兰花》', 'https://s.piaoimg.com/2019/07/25173618MzI2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '马兰花在山林之子马郎的守护下，一年一度的开放，它护佑着善良勤劳的人们，只要念出口诀，就能在危难时刻显现神奇的力量。然而，贪婪的老猫为了自己能过上不劳而获的生活，总想把马兰花据为己有。在马郎和小兰成亲一年的日子里，老猫趁小兰下山看望父母时，抢走了马兰花，并说服了小兰的双胞胎姐姐大兰，装扮成妹妹的样子，到马兰山骗口诀。老猫的计划能否成功，马兰花会实现它的愿望吗？', 2);
INSERT INTO `film` VALUES (242, '盟邦戏剧 《三昧》', 'https://s.piaoimg.com/2019/08/09180537YmUy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《三昧》创造的纪录：', 3);
INSERT INTO `film` VALUES (243, '小柯音乐剧爱情三部曲之《等你爱我》', 'https://s.piaoimg.com/2019/08/09182355NmE5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《等你爱我》中，共出现了数首观众们耳熟能详由小柯老师创作的歌曲，除《等你爱我》、《稳稳的幸福》、《听说今夜要下雨》、《以为爱情没有了》外，还有一些从未发表的歌曲。歌曲与剧情的推进相互映衬，一步步推动剧情发展。歌曲的传唱也进一步拉近了观众与舞台的距离。', 4);
INSERT INTO `film` VALUES (244, '开心麻花推荐孙峥作品沉浸式魔术剧《终于失去了你》', 'https://s.piaoimg.com/2019/04/291035031bca.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (245, '周日喜剧秀：杠精 battle 大会----脱口秀《笑喷了》爆笑演出', 'https://s.piaoimg.com/2019/08/12190149YmVm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '周日喜剧秀：杠精battle大会----脱口秀《笑喷了》爆笑演出', 2);
INSERT INTO `film` VALUES (246, '北京·南锣鼓巷戏剧节邀演单元 《我可怜的马拉特》', 'https://s.piaoimg.com/2019/08/12185909MmNm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '北京·南锣鼓巷戏剧节邀演单元', 3);
INSERT INTO `film` VALUES (247, '孟京辉经典戏剧作品《两只狗的生活意见》', 'https://s.piaoimg.com/2019/05/28102658ZDAw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (248, '孟京辉戏剧作品《你好，忧愁》', 'https://s.piaoimg.com/2018/12/261214243a3d.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '在演完280场《一个陌生女人的来信》之后，', 1);
INSERT INTO `film` VALUES (249, '小剧场话剧邀请展：北京人民艺术剧院《她弥留之际》', 'https://s.piaoimg.com/2019/07/02120848MGVl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (250, '话剧《老张的哲学》', 'https://s.piaoimg.com/2019/06/21190423NDg1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (251, '盟邦戏剧 《女婿驾到》', 'https://s.piaoimg.com/2019/08/13165638Y2Iw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《女婿驾到》着眼于\"大龄剩女\"、\"黄昏恋\"、\"婚前协议\"、\"富二代\"等社会热点问题，真实而幽默的讲述了发生在普通百姓身边的家庭温情幽默故事。从\"女婿\"小身份切入社会大背景，鸟瞰整个社会面貌，在幽默中轻松还原现实难题，巧妙展示都市人的尴尬与困惑，捕获家庭中多方情感的归宿，让现代都市人在快节奏的生活和工作之余，坐在剧院近距离的感受精品戏剧里传达给观众的欢笑和轻松。', 4);
INSERT INTO `film` VALUES (252, '话剧《爱，转机》', 'https://s.piaoimg.com/2019/08/02172935Mzk5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '北京纵横新天地文化传播有限公司演出——话剧：《爱，转机》', 1);
INSERT INTO `film` VALUES (253, '第十届北京·南锣鼓巷戏剧节 新生单元《瓢虫》 Ladybug', 'https://s.piaoimg.com/2019/08/05130046OThj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '第十届北京·南锣鼓巷戏剧节', 2);
INSERT INTO `film` VALUES (254, '话剧《玩家》', 'https://s.piaoimg.com/2019/08/05135206YzJh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '编剧：刘一达', 3);
INSERT INTO `film` VALUES (255, '周五夜现场|戏精诞生记：即兴喜剧+脱口秀双拼专场', 'https://s.piaoimg.com/2019/08/12190313MTdj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《周五夜现场|戏精诞生记：即兴喜剧+脱口秀双拼专场》', 4);
INSERT INTO `film` VALUES (256, '《来日方长》', 'https://s.piaoimg.com/2019/08/20135537MTBj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '温馨提示：此演出不对号入座，请您有序入场，介意者慎购', 1);
INSERT INTO `film` VALUES (257, '辰星剧社原创近景喜剧——喜剧人来疯之《哥，剧没影》', 'https://s.piaoimg.com/2019/08/05124832ODFj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '为什么要选大剧场？', 2);
INSERT INTO `film` VALUES (258, '话剧《卡夫卡的猿》', 'https://s.piaoimg.com/2019/08/01102316YjM3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《卡夫卡的猿》Kafkas Ape改编自卡夫卡的《致某科学院的报告》英文原声', 3);
INSERT INTO `film` VALUES (259, '2019国家大剧院国际戏剧季：福尔摩斯之谜——巴斯克维尔的猎犬（伦敦西区制作话剧）', 'https://s.piaoimg.com/2019/07/19112222OTg2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (260, '开心麻花爆笑音乐喜剧《爷们儿》', 'https://s.piaoimg.com/2019/06/11174100ODY5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (261, '重喜剧《你若安好，那还得了》北纬零度出品,', 'https://s.piaoimg.com/2019/03/202242455b1c.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (262, '话剧《碧血丹心大将军》', 'https://s.piaoimg.com/2019/08/09092412NWY5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '导演：张盛尧', 3);
INSERT INTO `film` VALUES (263, '开心麻花2019爆笑贺岁舞台剧《谈判专家》', 'https://s.piaoimg.com/2019/03/12160749121b.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (264, '庆祝新中国成立70周年：湖北省歌剧舞剧院歌剧《八月桂花遍地开》', 'https://s.piaoimg.com/2019/08/10090939MjFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (265, '原创音乐剧《月亮和六便士》Musicals The Moon And Sixpence', 'https://s.piaoimg.com/2019/08/19174732MmQ1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '音乐剧《月亮和六便士》北京站', 2);
INSERT INTO `film` VALUES (266, '《狗还在叫》—中间剧场科技艺术节', 'https://s.piaoimg.com/2019/08/08133605NGQw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (267, '【2019仙童版】原创编导李国修《三人行不行》', 'https://s.piaoimg.com/2019/07/24110112YjRh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019经典戏剧秋季展演', 4);
INSERT INTO `film` VALUES (268, '风靡爱丁堡艺穗节 新西兰人气互动喜剧《情圣》', 'https://s.piaoimg.com/2019/05/06141328OTM2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (269, '《光》—中间剧场科技艺术节', 'https://s.piaoimg.com/2019/08/08134423Y2Rj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (270, '第二届中间剧场科技艺术节 Day Tickets', 'https://s.piaoimg.com/2019/08/08144340NGI1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (271, '中国国家话剧院演出 话剧《三湾，那一夜》', 'https://s.piaoimg.com/2019/08/19181009YjE1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '为什么\"支部建在连上\"对中国革命有着如此重大的历史意义？为什么在部队建立士兵委员会，会遇到那么多阻力？ 毛泽东运用怎样的政治智慧，使一支一盘散沙的队伍，一夜之间，奇迹般地\"散沙聚成水门汀\"？', 4);
INSERT INTO `film` VALUES (272, '孟京辉戏剧作品 摇滚音乐剧《空中花园谋杀案》', 'https://s.piaoimg.com/2019/05/10103109NDYw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (273, '话剧《德龄与慈禧》', 'https://s.piaoimg.com/2019/07/17123452OTJh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '演出日期：2019年9月11日-9月14日 19：30', 2);
INSERT INTO `film` VALUES (274, '开心麻花推荐高糖音乐喜剧《恋爱吧！人类》', 'https://s.piaoimg.com/2019/03/12160316c254.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (275, '繁星戏剧 舞台剧《说走就走的旅行》第十一轮', 'https://s.piaoimg.com/2019/08/13165127ZmEz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《说走就走的旅行》是一次心灵冲动，是一种此刻心境，也是一场人生抉择。在前进中不断学会选择，在选择的过程中学会体会和欣赏，让爱善始善终。', 4);
INSERT INTO `film` VALUES (276, '730匣子X开心麻花联合出品《男团大翻身》', 'https://s.piaoimg.com/2019/03/121608283edb.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (277, '七幕人生出品 法国音乐剧《放牛班的春天》中文版 天籁童声 重温感动', 'https://s.piaoimg.com/2018/11/29125803c2ec.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (278, '繁星戏剧 十周年大戏 科幻舞台剧《我想我疯了》', 'https://s.piaoimg.com/2019/08/16190113ZjVh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '繁星戏剧 十周年大戏 科幻舞台剧《我想我疯了》优惠福利：', 3);
INSERT INTO `film` VALUES (279, '话剧《照影记》——80年代剧院后台“梅兰芳”与“斯坦尼”合演的《梁祝》', 'https://s.piaoimg.com/2019/07/01223225NDJi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (280, '别克出品-张艺谋导演《对话·寓言2047》第三季观念演出', 'https://s.piaoimg.com/2019/08/08121142ZmYz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《对话.寓言2047》的大幕即将第三次拉开。', 1);
INSERT INTO `film` VALUES (281, '《黑色鲶鱼火枪手》—中间剧场科技艺术节', 'https://s.piaoimg.com/2019/08/08134017YjBm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (282, 'IWF国际女性戏剧节经典剧目《娘惹艾美丽》', 'https://s.piaoimg.com/2019/08/19173831MWMy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '关于【娘惹艾美丽】', 3);
INSERT INTO `film` VALUES (283, '话剧《广陵绝》', 'https://s.piaoimg.com/2019/07/31120229N2E5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '编剧：庞贝', 4);
INSERT INTO `film` VALUES (284, '小剧场话剧邀请展：王婷婷导演小剧场话剧《裁·缝》', 'https://s.piaoimg.com/2019/08/07112224MGZj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (285, '开心麻花爆笑贺岁舞台剧《二维码杀手》', 'https://s.piaoimg.com/2019/01/1722211711ee.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (286, '老舍青年戏剧文学奖扶持计划《西洋钟》', 'https://s.piaoimg.com/2019/07/03093809Zjc2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (287, '2019第三届老舍戏剧节 英国莎士比亚环球剧院《第十二夜》《错误的喜剧》', 'https://s.piaoimg.com/2019/07/15170206Yzhl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2019-09-19 周四 19:30 《第十二夜》', 4);
INSERT INTO `film` VALUES (288, '第十届北京 · 南锣鼓巷戏剧节 新生单元《野孩子飞》', 'https://s.piaoimg.com/2019/08/16133040OTM0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '第十届北京 · 南锣鼓巷戏剧节', 1);
INSERT INTO `film` VALUES (289, '开心麻花2019爆笑贺岁舞台剧《窗前不止明月光》', 'https://s.piaoimg.com/2019/03/121558045b41.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (290, '中国戏剧新经典 央华出品·保利 话剧《北京人》', 'https://s.piaoimg.com/2019/07/09155114NDM4.png?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '票价：880/580/380/280/80元', 3);
INSERT INTO `film` VALUES (291, '2019国家大剧院国际戏剧季闭幕：北京央华出品周涛、孙强主演话剧《情书》', 'https://s.piaoimg.com/2019/08/10092010MjY3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '蔚蓝的海面雾霭茫茫，', 4);
INSERT INTO `film` VALUES (292, '【小橙堡】奇思妙想童话剧《白雪公主》', 'https://s.piaoimg.com/2019/04/29133245aa3c.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (293, '孟京辉经典戏剧作品《两只狗的生活意见》', 'https://s.piaoimg.com/2019/07/25172916YTFh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '两只狗离开家乡进入城市，他们寻找幸福的生活，寻找伟大的理想，然而城里的世界并不象他们想象得那么美好……四处碰壁之后，他们对生活产生了各种意见，这些意见是他们简单纯洁的头脑无法理解的生存难题。为了能够吃上一口饱饭，来福和旺财在街头卖艺，参加明星选秀进入娱乐界，去当保安，被富人收养又被抛弃，被打狗队打得遍体鳞伤，最后，他们决定勇敢地面对生活，不管生活有多艰辛，一定要勇敢地走下去！', 2);
INSERT INTO `film` VALUES (294, '夭蛾剧社浪漫现实主义喜剧《白马坊》', 'https://s.piaoimg.com/2019/07/03093443ZDIy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (295, '开心麻花 · 戏剧新体验《婿事待发》', 'https://s.piaoimg.com/2019/03/121558422531.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '美国留学的姐姐年近30仍未找到归宿，在一次爬山途中认识了年近七旬的Andy，二人彼此倾心。但随着二人婚事临近，男友提出希望拜访女方父母，而姐姐深知，男友的年纪对于自己观念传统的家庭来说是绝对的禁忌。', 4);
INSERT INTO `film` VALUES (296, '多媒体科幻舞台剧《三体I 地球往事》-北京', 'https://s.piaoimg.com/2019/08/05124616OGZl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2016年6月，由沪上极具革新精神的Lotus Lee未来戏剧（上海莲李文化传播有限公司）倾力制作出品的《三体》舞台剧首演上海，并圆满完成北上广深等一、二线主要城市的巡演，票房和口碑大获丰收，开启了国内舞台剧的大片时代！', 1);
INSERT INTO `film` VALUES (297, '盟邦戏剧 《活出你自己》', 'https://s.piaoimg.com/2019/08/13171119MWZi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '时尚科幻舞台剧《活出你自己》是一部温暖人心的作品，充满正能量，戏如其名。盟邦戏剧坚持温暖走心的路线，坚持正能量，也可以说是活出了我们自己。本剧将精彩诙谐的笑料与热点话题相结合，更融入真挚情感。本剧版权炙手可热，合作方都将此剧搬上了自己的舞台。', 2);
INSERT INTO `film` VALUES (298, '【北京】中国歌剧舞剧院舞剧《孔子》北京站（交响乐队版）', 'https://s.piaoimg.com/2019/03/01100315e25c.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (299, '开心麻花经典爆笑舞台剧《乌龙山伯爵》', 'https://s.piaoimg.com/2019/03/121602421a24.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '“半分钟一次掌声，一分钟一个笑点。”', 4);
INSERT INTO `film` VALUES (300, '《迷之屋》肢体剧', 'https://s.piaoimg.com/2019/07/24143214ZDdl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (301, '开心麻花“超级伙伴计划”《社会形象》', 'https://s.piaoimg.com/2019/08/05181939N2Rj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (302, '庆祝新中国成立70周年：国家大剧院制作原创话剧《抉择》', 'https://s.piaoimg.com/2019/08/01103206Nzdj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '出品人：王 宁', 3);
INSERT INTO `film` VALUES (303, '北京童艺荣誉出品—大型童话剧《神笔马良》-北京', 'https://s.piaoimg.com/2019/08/07184154M2Zk.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (304, '经典民族歌剧《洪湖赤卫队》', 'https://s.piaoimg.com/2019/07/17173114NTc2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (305, '孟京辉最新戏剧作品《关于爱情归宿的最新观念》', 'https://s.piaoimg.com/2019/02/282130164b42.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (306, '喜剧《蒋公的面子》', 'https://s.piaoimg.com/2019/01/16201214acab.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (307, '大道文化出品 陈佩斯经典结构喜剧《阳台》', 'https://s.piaoimg.com/2019/07/09150742NzE5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《阳台》基本信息大道文化出品 陈佩斯经典结构喜剧《阳台》', 4);
INSERT INTO `film` VALUES (308, '百老汇经典笑剧《开心晚宴》', 'https://s.piaoimg.com/2019/05/14152308ZWMy.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (309, '有趣戏剧作品 话剧《杏仁豆腐心》 北京五轮', 'https://s.piaoimg.com/2019/08/16190510M2Iw.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '日本岸田戏剧奖、鹤屋南北戏剧奖最 佳编剧郑义信首次授权中国内地演出', 2);
INSERT INTO `film` VALUES (310, '开心麻花年中大戏2开心麻花版音乐剧《隐婚男女》', 'https://s.piaoimg.com/2019/07/29132759MDFi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (311, '英国书屋剧院英美女性经典系列《呼啸山庄》', 'https://s.piaoimg.com/2019/07/30091836OWM0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '英伦浪漫经典 勃朗特姐妹系列', 4);
INSERT INTO `film` VALUES (312, '话剧《鸳鸯谱》', 'https://s.piaoimg.com/2019/06/09202004NDQz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (313, '英国书屋剧院英美女性经典系列《呼啸山庄》', 'https://s.piaoimg.com/2019/06/26161423ODk0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (314, '波兰羊之歌剧团 音乐戏剧《李尔之歌》', 'https://s.piaoimg.com/2019/08/07184030YmM0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '成立于1996年的波兰羊之歌剧团（Song of the Goat Theatre），曾在乌镇戏剧节上征服了无数中国观众。这个仅凭七部作品便能蜚声国际的剧团，以他们绝对的创造性与独一无二的想象力，不断拓展着艺术语言的边界。', 3);
INSERT INTO `film` VALUES (315, '庆祝新中国成立70周年：黔剧《天渠》', 'https://s.piaoimg.com/2019/08/07111314MmI5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (316, '国家大剧院制作威尔第歌剧《游吟诗人》', 'https://s.piaoimg.com/2019/07/17132952YWY2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《游吟诗人》名列世界十大上演频率最高的歌剧榜中，是威尔第“通俗三部曲”之一，剧中众多动听咏叹调成为经典曲目。该剧是国家大剧院继《茶花女》《弄臣》《假面舞会》《奥赛罗》《纳布科》之后推出的第六部威尔第歌剧经典。该剧戏剧情节跌宕曲折、人物关系丰富浓烈，讲述了复仇、爱情、命运等人类历史上永不退色的主题。给人带来深深的震撼与宿命感。', 1);
INSERT INTO `film` VALUES (317, '孟京辉戏剧作品《年轻的野兽》-北京', 'https://s.piaoimg.com/2019/05/31120501YWY1.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (318, '法语音乐剧《摇滚红与黑》-北京站', 'https://s.piaoimg.com/2019/05/21123526OWFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (319, '央华戏剧《新原野》', 'https://s.piaoimg.com/2019/08/09184628OWNm.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (320, '新中国成立70周年/著名导演作品邀请展：李六乙导演四川人民艺术剧院四川话版《茶馆》', 'https://s.piaoimg.com/2019/08/06173152NTNj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (321, '2019年第七届中关村金秋演出季《孤儿2.0》', 'https://s.piaoimg.com/2019/08/16123451Mjhj.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《孤儿2.0》剧情简介', 2);
INSERT INTO `film` VALUES (322, '孟京辉经典戏剧作品《恋爱的犀牛》', 'https://s.piaoimg.com/2018/12/190904135245.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (323, '七幕人生出品 百老汇经典音乐剧《音乐之声》中文版 天籁童声 重温感动', 'https://s.piaoimg.com/2019/07/19170729NWFi.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (324, '2019爱丁堡前沿剧展·经典剧目《安提戈涅》', 'https://s.piaoimg.com/2019/07/31124247Mjgz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '2016法国阿维尼翁OFF艺术节大热作品《安提戈涅》爱丁堡前沿剧展经典剧目·第四度中国巡演！摘要：', 1);
INSERT INTO `film` VALUES (325, '京剧名家演绎话剧《广陵散》', 'https://s.piaoimg.com/2019/05/27170020MGFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (326, '老舍原著·孟京辉导演 《茶馆》', 'https://s.piaoimg.com/2019/07/17175248NDA2.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (327, '当代肢体作品《插销》EXIT', 'https://s.piaoimg.com/2019/08/08134216MTI4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '作品以提取古代门锁\"插销\"的物件原理，', 4);
INSERT INTO `film` VALUES (328, '2019年第八届中关村金秋演出季 话剧《三昧》', 'https://s.piaoimg.com/2019/07/16163654ZjBh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《三昧》（舞台广播剧）《三昧》是一部舞台广播剧，即在以舞台表演的形式呈现的广播剧，也被称作\"声优戏剧\"。2016年11月于鼓楼西剧场首次与观众见面。', 1);
INSERT INTO `film` VALUES (329, '托尼奖史诗音乐剧《泰坦尼克号》', 'https://s.piaoimg.com/2019/07/11090745YzBl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);
INSERT INTO `film` VALUES (330, '英法联合制作-英国TNT剧院原版经典《巴黎圣母院》', 'https://s.piaoimg.com/2019/06/26161126M2U5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (331, '陕西人艺话剧 -《平凡的世界》3.0经典版', 'https://s.piaoimg.com/2019/02/20144043a145.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '陕西人艺经典版话剧-《平凡的世界》 演出介绍：话剧《平凡的世界》是根据路遥获茅盾文学奖同名小说改编，由陕西省文化厅出品，陕西演艺集团、陕西人民艺术剧院有限公司制作并演出的大型现实主义题材话剧。本剧故事以陕北黄土高原双水村三家人的命运为中心，反映了从\"文革\"后期到改革初期广阔的社会面貌，描绘了社会各阶层众多普通人的形象。劳动与爱情、挫折与追求、痛苦与欢乐、日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。这是一部用温暖的现实主义来讴歌普通劳动者的文学作品，它所传达出的精神内涵，正是对中华民族千百年来\"自强不息、厚德载物\"精神传统的自觉继承。', 4);
INSERT INTO `film` VALUES (332, '英法联合制作-英国TNT剧院原版经典《巴黎圣母院》', 'https://s.piaoimg.com/2019/07/29192706ZDk0.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '英法联合制作 全班法国演员出演', 1);
INSERT INTO `film` VALUES (333, '中国话剧扛鼎之作 陈忠实最满意版本 陕西人艺话剧《白鹿原》', 'https://s.piaoimg.com/2019/07/30120551Yjk4.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '陈忠实：我把《白鹿原》和我的生命一起交给你们了，谢谢你们把《白鹿原》演活了。', 2);
INSERT INTO `film` VALUES (334, '伦敦西区原版音乐剧《玛蒂尔达》', 'https://s.piaoimg.com/2019/04/26192529cb52.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (335, '原版音乐剧史诗巨制《艾薇塔》Evita 北京站', 'https://s.piaoimg.com/2019/07/08160330ZDFl.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 4);
INSERT INTO `film` VALUES (336, '【中鱼文化】神剧重燃！Black Mary Poppins中文版《水曜日》第二轮-北京', 'https://s.piaoimg.com/2019/04/092121351cac.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 1);
INSERT INTO `film` VALUES (337, '孟京辉戏剧作品《枪，谎言和玫瑰》-北京', 'https://s.piaoimg.com/2019/06/15130338ZGZh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '《枪，谎言和玫瑰》根据二十世纪俄罗斯剧作家艾德曼·尼古拉·罗伯尔托维奇的经典戏剧《自杀者》意向进行创意改编。讲述了一个荒诞幽默的畸形故事：一个人因无所事事追赶蚊子至精神崩溃，赌气说了一句\"我要自杀！\"结果激起了整座城市的勃勃野心。各界人士纷至沓来向他进行愚蠢的威逼利诱，投机、阴谋、企图相互交织着，一场闹剧就此开始，但究竟为谁而死，一切早已无法挽回……', 2);
INSERT INTO `film` VALUES (338, '音乐剧《芝加哥》-北京站', 'https://s.piaoimg.com/2019/07/29191214M2Uz.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 3);
INSERT INTO `film` VALUES (339, '摇滚音乐剧《大力水手》', 'https://s.piaoimg.com/2019/08/21113004NzFh.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '摇滚音乐剧《大力水手》', 4);
INSERT INTO `film` VALUES (340, '2019国家大剧院舞蹈节闭幕：上海歌舞团原创谍战舞剧《永不消逝的电波》', 'https://s.piaoimg.com/2019/07/26112840ZmI3.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '1958年上映的电影《永不消逝的电波》曾打动了一代代中国观众。如今，这段隐秘而伟大的历史将首次以舞剧的形式搬上舞台。在舞剧《朱鹮》后，罗怀臻再次与上海歌舞团合作，担任舞剧《永不消逝的电波》的编剧。他表示，在舞蹈史上，用舞剧的形式讲述谍战故事的尝试并不多见，这对他来说是一次探索和挑战。作为一部红色题材的作品，罗怀臻试图呈现更多青春的气息。“我希望能把如今年轻人的艺术理想和当时年轻人的革命理想连接在一起。”', 1);
INSERT INTO `film` VALUES (341, '北京•南锣鼓巷戏剧节回顾展演单元 《安妮霍克的一天》', 'https://s.piaoimg.com/2019/07/24143120MDE5.jpg?x-oss-process=image/resize,w_340,h_458', 0, 0.00, NULL, '', 2);

-- ----------------------------
-- Table structure for filmtype
-- ----------------------------
DROP TABLE IF EXISTS `filmtype`;
CREATE TABLE `filmtype`  (
                           `filmtypeid` int(10) NOT NULL AUTO_INCREMENT COMMENT '影片类型id',
                           `filmtypename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           PRIMARY KEY (`filmtypeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of filmtype
-- ----------------------------
INSERT INTO `filmtype` VALUES (1, '动画');
INSERT INTO `filmtype` VALUES (2, '喜剧');
INSERT INTO `filmtype` VALUES (3, '纪录片');
INSERT INTO `filmtype` VALUES (4, '文艺表演');

-- ----------------------------
-- Table structure for miaosha
-- ----------------------------
DROP TABLE IF EXISTS `miaosha`;
CREATE TABLE `miaosha`  (
                          `miaoshaid` int(10) NOT NULL AUTO_INCREMENT COMMENT '秒杀主键',
                          `starttime` datetime NULL DEFAULT NULL COMMENT '秒杀开始时间',
                          `endtime` datetime NULL DEFAULT NULL COMMENT '秒杀结束时间',
                          `filmid` int(10) NULL DEFAULT NULL COMMENT '影片id，外键',
                          `discount` double(10, 2) NULL DEFAULT NULL COMMENT '秒杀时的折扣',
  `count` int(11) NULL DEFAULT NULL COMMENT '库存数量',
  PRIMARY KEY (`miaoshaid`) USING BTREE,
  INDEX `mfilmid`(`filmid`) USING BTREE,
  CONSTRAINT `mfilmid` FOREIGN KEY (`filmid`) REFERENCES `film` (`filmid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
                         `orderid` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单id，主键',
                         `otime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单创建时间',
                         `status` int(1) NULL DEFAULT 0 COMMENT '订单状态',
                         `totalprice` double(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `piaonum` int(10) NULL DEFAULT NULL COMMENT '购买票数',
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户id，外键',
  `seat` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座位信息',
  `cinemaid` int(10) NULL DEFAULT NULL COMMENT '影院id，外键',
  `filmid` int(10) NULL DEFAULT NULL COMMENT '影片id，外键',
  `paipianid` int(10) NULL DEFAULT NULL COMMENT '排片id，外键',
  PRIMARY KEY (`orderid`) USING BTREE,
  INDEX `ouserid`(`userid`) USING BTREE,
  INDEX `ocinemaid`(`cinemaid`) USING BTREE,
  INDEX `ofilmid`(`filmid`) USING BTREE,
  CONSTRAINT `ocinemaid` FOREIGN KEY (`cinemaid`) REFERENCES `cinema` (`cinemaid`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `ofilmid` FOREIGN KEY (`filmid`) REFERENCES `film` (`filmid`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `ouserid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (19, '2019-09-17 14:26:03', 0, 61.50, 3, 1, '1行8座,6行3座,7行1座', 1, 1, 1);
INSERT INTO `orders` VALUES (20, '2019-09-17 14:25:21', 0, 47.00, 2, 1, '3行5座,5行6座', 1, 1, 1);
INSERT INTO `orders` VALUES (21, '2019-09-17 16:37:43', 0, 23.50, 1, 1, '1行3座', 1, 1, 1);
INSERT INTO `orders` VALUES (22, '2019-09-20 16:32:42', 0, 41.00, 2, 1, '6行5座,4行3座', 1, 1, 3);
INSERT INTO `orders` VALUES (23, '2019-09-23 22:37:04', 0, 91.50, 3, 1, '5行5座,6行5座,7行4座', 1, 3, 2);
INSERT INTO `orders` VALUES (24, '2019-09-24 16:28:22', 0, 47.00, 2, 1, '3行3座,4行4座', 1, 1, 1);
INSERT INTO `orders` VALUES (25, '2019-09-25 08:25:56', 0, 61.00, 2, 1, '5行4座,7行5座', 1, 3, 2);

-- ----------------------------
-- Table structure for paipian
-- ----------------------------
DROP TABLE IF EXISTS `paipian`;
CREATE TABLE `paipian`  (
                          `paipianid` int(10) NOT NULL AUTO_INCREMENT COMMENT '排片id，主键',
                          `cinemaid` int(10) NULL DEFAULT NULL COMMENT '影院id，外键',
                          `filmid` int(10) NULL DEFAULT NULL COMMENT '影片id，外键',
                          `starttime` datetime NULL DEFAULT NULL,
                          `filmprice` double(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`paipianid`) USING BTREE,
  INDEX `ppcinemaid`(`cinemaid`) USING BTREE,
  INDEX `ppfilmid`(`filmid`) USING BTREE,
  CONSTRAINT `ppcinemaid` FOREIGN KEY (`cinemaid`) REFERENCES `cinema` (`cinemaid`) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT `ppfilmid` FOREIGN KEY (`filmid`) REFERENCES `film` (`filmid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of paipian
-- ----------------------------
INSERT INTO `paipian` VALUES (1, 1, 1, '2019-09-27 15:10:19', 23.50);
INSERT INTO `paipian` VALUES (2, 1, 3, '2019-09-27 11:10:44', 30.50);
INSERT INTO `paipian` VALUES (3, 1, 1, '2019-09-29 19:00:25', 20.50);
INSERT INTO `paipian` VALUES (4, 1, 1, '2019-09-19 22:12:04', 36.00);
INSERT INTO `paipian` VALUES (5, 1, 2, '2019-09-19 22:42:12', 20.00);

-- ----------------------------
-- Table structure for payorder
-- ----------------------------
DROP TABLE IF EXISTS `payorder`;
CREATE TABLE `payorder`  (
                           `payid` int(11) NOT NULL AUTO_INCREMENT,
                           `creattime` datetime NULL DEFAULT NULL,
                           `orderid` int(11) NOT NULL,
                           PRIMARY KEY (`payid`) USING BTREE,
                           INDEX `fk_orderid`(`orderid`) USING BTREE,
                           CONSTRAINT `fk_orderid` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ppseat
-- ----------------------------
DROP TABLE IF EXISTS `ppseat`;
CREATE TABLE `ppseat`  (
                         `ppseatid` int(10) NOT NULL AUTO_INCREMENT COMMENT '排片座次表',
                         `paipianid` int(10) NULL DEFAULT NULL COMMENT '排片id，外键',
                         `seatid` int(10) NULL DEFAULT NULL COMMENT '座位id，外键',
                         `sorderid` int(10) NULL DEFAULT NULL,
                         PRIMARY KEY (`ppseatid`) USING BTREE,
                         INDEX `paipianid`(`paipianid`) USING BTREE,
                         INDEX `seatid`(`seatid`) USING BTREE,
                         INDEX `sorderid`(`sorderid`) USING BTREE,
                         CONSTRAINT `paipianid` FOREIGN KEY (`paipianid`) REFERENCES `paipian` (`paipianid`) ON DELETE CASCADE ON UPDATE CASCADE,
                         CONSTRAINT `seatid` FOREIGN KEY (`seatid`) REFERENCES `seat` (`seatid`) ON DELETE CASCADE ON UPDATE CASCADE,
                         CONSTRAINT `sorderid` FOREIGN KEY (`sorderid`) REFERENCES `orders` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ppseat
-- ----------------------------
INSERT INTO `ppseat` VALUES (1, 1, 8, 19);
INSERT INTO `ppseat` VALUES (2, 1, 43, 19);
INSERT INTO `ppseat` VALUES (3, 1, 49, 19);
INSERT INTO `ppseat` VALUES (4, 1, 1, 19);
INSERT INTO `ppseat` VALUES (5, 2, 8, 20);
INSERT INTO `ppseat` VALUES (6, 1, 2, 23);
INSERT INTO `ppseat` VALUES (7, 2, 3, 19);

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
                       `seatid` int(10) NOT NULL AUTO_INCREMENT COMMENT '座位id',
                       `seatX` int(2) NULL DEFAULT NULL COMMENT '座位x坐标',
                       `seatY` int(2) NULL DEFAULT NULL COMMENT '座位y坐标',
                       `cinema` int(10) NULL DEFAULT NULL COMMENT '影院id(外键)',
                       `seatnum` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座位信息(如3排3列)',
                       `seatXY` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座位的位置信息',
                       PRIMARY KEY (`seatid`) USING BTREE,
                       INDEX `cinema`(`cinema`) USING BTREE,
                       CONSTRAINT `cinema` FOREIGN KEY (`cinema`) REFERENCES `cinema` (`cinemaid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 257 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES (1, 1, 1, 1, '1排1座', '1_1');
INSERT INTO `seat` VALUES (2, 1, 2, 1, '1排2座', '1_2');
INSERT INTO `seat` VALUES (3, 1, 3, 1, '1排3座', '1_3');
INSERT INTO `seat` VALUES (4, 1, 4, 1, '1排4座', '1_4');
INSERT INTO `seat` VALUES (5, 1, 5, 1, '1排5座', '1_5');
INSERT INTO `seat` VALUES (6, 1, 6, 1, '1排6座', '1_6');
INSERT INTO `seat` VALUES (7, 1, 7, 1, '1排7座', '1_7');
INSERT INTO `seat` VALUES (8, 1, 8, 1, '1排8座', '1_8');
INSERT INTO `seat` VALUES (9, 2, 1, 1, '2排1座', '2_1');
INSERT INTO `seat` VALUES (10, 2, 2, 1, '2排2座', '2_2');
INSERT INTO `seat` VALUES (11, 2, 3, 1, '2排3座', '2_3');
INSERT INTO `seat` VALUES (12, 2, 4, 1, '2排4座', '2_4');
INSERT INTO `seat` VALUES (13, 2, 5, 1, '2排5座', '2_5');
INSERT INTO `seat` VALUES (14, 2, 6, 1, '2排6座', '2_6');
INSERT INTO `seat` VALUES (15, 2, 7, 1, '2排7座', '2_7');
INSERT INTO `seat` VALUES (16, 2, 8, 1, '2排8座', '2_8');
INSERT INTO `seat` VALUES (17, 3, 1, 1, '3排1座', '3_1');
INSERT INTO `seat` VALUES (18, 3, 2, 1, '3排2座', '3_2');
INSERT INTO `seat` VALUES (19, 3, 3, 1, '3排3座', '3_3');
INSERT INTO `seat` VALUES (20, 3, 4, 1, '3排4座', '3_4');
INSERT INTO `seat` VALUES (21, 3, 5, 1, '3排5座', '3_5');
INSERT INTO `seat` VALUES (22, 3, 6, 1, '3排6座', '3_6');
INSERT INTO `seat` VALUES (23, 3, 7, 1, '3排7座', '3_7');
INSERT INTO `seat` VALUES (24, 3, 8, 1, '3排8座', '3_8');
INSERT INTO `seat` VALUES (25, 4, 1, 1, '4排1座', '4_1');
INSERT INTO `seat` VALUES (26, 4, 2, 1, '4排2座', '4_2');
INSERT INTO `seat` VALUES (27, 4, 3, 1, '4排3座', '4_3');
INSERT INTO `seat` VALUES (28, 4, 4, 1, '4排4座', '4_4');
INSERT INTO `seat` VALUES (29, 4, 5, 1, '4排5座', '4_5');
INSERT INTO `seat` VALUES (30, 4, 6, 1, '4排6座', '4_6');
INSERT INTO `seat` VALUES (31, 4, 7, 1, '4排7座', '4_7');
INSERT INTO `seat` VALUES (32, 4, 8, 1, '4排8座', '4_8');
INSERT INTO `seat` VALUES (33, 5, 1, 1, '5排1座', '5_1');
INSERT INTO `seat` VALUES (34, 5, 2, 1, '5排2座', '5_2');
INSERT INTO `seat` VALUES (35, 5, 3, 1, '5排3座', '5_3');
INSERT INTO `seat` VALUES (36, 5, 4, 1, '5排4座', '5_4');
INSERT INTO `seat` VALUES (37, 5, 5, 1, '5排5座', '5_5');
INSERT INTO `seat` VALUES (38, 5, 6, 1, '5排6座', '5_6');
INSERT INTO `seat` VALUES (39, 5, 7, 1, '5排7座', '5_7');
INSERT INTO `seat` VALUES (40, 5, 8, 1, '5排8座', '5_8');
INSERT INTO `seat` VALUES (41, 6, 1, 1, '6排1座', '6_1');
INSERT INTO `seat` VALUES (42, 6, 2, 1, '6排2座', '6_2');
INSERT INTO `seat` VALUES (43, 6, 3, 1, '6排3座', '6_3');
INSERT INTO `seat` VALUES (44, 6, 4, 1, '6排4座', '6_4');
INSERT INTO `seat` VALUES (45, 6, 5, 1, '6排5座', '6_5');
INSERT INTO `seat` VALUES (46, 6, 6, 1, '6排6座', '6_6');
INSERT INTO `seat` VALUES (47, 6, 7, 1, '6排7座', '6_7');
INSERT INTO `seat` VALUES (48, 6, 8, 1, '6排8座', '6_8');
INSERT INTO `seat` VALUES (49, 7, 1, 1, '7排1座', '7_1');
INSERT INTO `seat` VALUES (50, 7, 2, 1, '7排2座', '7_2');
INSERT INTO `seat` VALUES (51, 7, 3, 1, '7排3座', '7_3');
INSERT INTO `seat` VALUES (52, 7, 4, 1, '7排4座', '7_4');
INSERT INTO `seat` VALUES (53, 7, 5, 1, '7排5座', '7_5');
INSERT INTO `seat` VALUES (54, 7, 6, 1, '7排6座', '7_6');
INSERT INTO `seat` VALUES (55, 7, 7, 1, '7排7座', '7_7');
INSERT INTO `seat` VALUES (56, 7, 8, 1, '7排8座', '7_8');
INSERT INTO `seat` VALUES (57, 8, 1, 1, '8排1座', '8_1');
INSERT INTO `seat` VALUES (58, 8, 2, 1, '8排2座', '8_2');
INSERT INTO `seat` VALUES (59, 8, 3, 1, '8排3座', '8_3');
INSERT INTO `seat` VALUES (60, 8, 4, 1, '8排4座', '8_4');
INSERT INTO `seat` VALUES (61, 8, 5, 1, '8排5座', '8_5');
INSERT INTO `seat` VALUES (62, 8, 6, 1, '8排6座', '8_6');
INSERT INTO `seat` VALUES (63, 8, 7, 1, '8排7座', '8_7');
INSERT INTO `seat` VALUES (64, 8, 8, 1, '8排8座', '8_8');
INSERT INTO `seat` VALUES (65, 1, 1, 2, '1排1座', '1_1');
INSERT INTO `seat` VALUES (66, 1, 2, 2, '1排2座', '1_2');
INSERT INTO `seat` VALUES (67, 1, 3, 2, '1排3座', '1_3');
INSERT INTO `seat` VALUES (68, 1, 4, 2, '1排4座', '1_4');
INSERT INTO `seat` VALUES (69, 1, 5, 2, '1排5座', '1_5');
INSERT INTO `seat` VALUES (70, 1, 6, 2, '1排6座', '1_6');
INSERT INTO `seat` VALUES (71, 1, 7, 2, '1排7座', '1_7');
INSERT INTO `seat` VALUES (72, 1, 8, 2, '1排8座', '1_8');
INSERT INTO `seat` VALUES (73, 2, 1, 2, '2排1座', '2_1');
INSERT INTO `seat` VALUES (74, 2, 2, 2, '2排2座', '2_2');
INSERT INTO `seat` VALUES (75, 2, 3, 2, '2排3座', '2_3');
INSERT INTO `seat` VALUES (76, 2, 4, 2, '2排4座', '2_4');
INSERT INTO `seat` VALUES (77, 2, 5, 2, '2排5座', '2_5');
INSERT INTO `seat` VALUES (78, 2, 6, 2, '2排6座', '2_6');
INSERT INTO `seat` VALUES (79, 2, 7, 2, '2排7座', '2_7');
INSERT INTO `seat` VALUES (80, 2, 8, 2, '2排8座', '2_8');
INSERT INTO `seat` VALUES (81, 3, 1, 2, '3排1座', '3_1');
INSERT INTO `seat` VALUES (82, 3, 2, 2, '3排2座', '3_2');
INSERT INTO `seat` VALUES (83, 3, 3, 2, '3排3座', '3_3');
INSERT INTO `seat` VALUES (84, 3, 4, 2, '3排4座', '3_4');
INSERT INTO `seat` VALUES (85, 3, 5, 2, '3排5座', '3_5');
INSERT INTO `seat` VALUES (86, 3, 6, 2, '3排6座', '3_6');
INSERT INTO `seat` VALUES (87, 3, 7, 2, '3排7座', '3_7');
INSERT INTO `seat` VALUES (88, 3, 8, 2, '3排8座', '3_8');
INSERT INTO `seat` VALUES (89, 4, 1, 2, '4排1座', '4_1');
INSERT INTO `seat` VALUES (90, 4, 2, 2, '4排2座', '4_2');
INSERT INTO `seat` VALUES (91, 4, 3, 2, '4排3座', '4_3');
INSERT INTO `seat` VALUES (92, 4, 4, 2, '4排4座', '4_4');
INSERT INTO `seat` VALUES (93, 4, 5, 2, '4排5座', '4_5');
INSERT INTO `seat` VALUES (94, 4, 6, 2, '4排6座', '4_6');
INSERT INTO `seat` VALUES (95, 4, 7, 2, '4排7座', '4_7');
INSERT INTO `seat` VALUES (96, 4, 8, 2, '4排8座', '4_8');
INSERT INTO `seat` VALUES (97, 5, 1, 2, '5排1座', '5_1');
INSERT INTO `seat` VALUES (98, 5, 2, 2, '5排2座', '5_2');
INSERT INTO `seat` VALUES (99, 5, 3, 2, '5排3座', '5_3');
INSERT INTO `seat` VALUES (100, 5, 4, 2, '5排4座', '5_4');
INSERT INTO `seat` VALUES (101, 5, 5, 2, '5排5座', '5_5');
INSERT INTO `seat` VALUES (102, 5, 6, 2, '5排6座', '5_6');
INSERT INTO `seat` VALUES (103, 5, 7, 2, '5排7座', '5_7');
INSERT INTO `seat` VALUES (104, 5, 8, 2, '5排8座', '5_8');
INSERT INTO `seat` VALUES (105, 6, 1, 2, '6排1座', '6_1');
INSERT INTO `seat` VALUES (106, 6, 2, 2, '6排2座', '6_2');
INSERT INTO `seat` VALUES (107, 6, 3, 2, '6排3座', '6_3');
INSERT INTO `seat` VALUES (108, 6, 4, 2, '6排4座', '6_4');
INSERT INTO `seat` VALUES (109, 6, 5, 2, '6排5座', '6_5');
INSERT INTO `seat` VALUES (110, 6, 6, 2, '6排6座', '6_6');
INSERT INTO `seat` VALUES (111, 6, 7, 2, '6排7座', '6_7');
INSERT INTO `seat` VALUES (112, 6, 8, 2, '6排8座', '6_8');
INSERT INTO `seat` VALUES (113, 7, 1, 2, '7排1座', '7_1');
INSERT INTO `seat` VALUES (114, 7, 2, 2, '7排2座', '7_2');
INSERT INTO `seat` VALUES (115, 7, 3, 2, '7排3座', '7_3');
INSERT INTO `seat` VALUES (116, 7, 4, 2, '7排4座', '7_4');
INSERT INTO `seat` VALUES (117, 7, 5, 2, '7排5座', '7_5');
INSERT INTO `seat` VALUES (118, 7, 6, 2, '7排6座', '7_6');
INSERT INTO `seat` VALUES (119, 7, 7, 2, '7排7座', '7_7');
INSERT INTO `seat` VALUES (120, 7, 8, 2, '7排8座', '7_8');
INSERT INTO `seat` VALUES (121, 8, 1, 2, '8排1座', '8_1');
INSERT INTO `seat` VALUES (122, 8, 2, 2, '8排2座', '8_2');
INSERT INTO `seat` VALUES (123, 8, 3, 2, '8排3座', '8_3');
INSERT INTO `seat` VALUES (124, 8, 4, 2, '8排4座', '8_4');
INSERT INTO `seat` VALUES (125, 8, 5, 2, '8排5座', '8_5');
INSERT INTO `seat` VALUES (126, 8, 6, 2, '8排6座', '8_6');
INSERT INTO `seat` VALUES (127, 8, 7, 2, '8排7座', '8_7');
INSERT INTO `seat` VALUES (128, 8, 8, 2, '8排8座', '8_8');
INSERT INTO `seat` VALUES (129, 1, 1, 3, '1排1座', '1_1');
INSERT INTO `seat` VALUES (130, 1, 2, 3, '1排2座', '1_2');
INSERT INTO `seat` VALUES (131, 1, 3, 3, '1排3座', '1_3');
INSERT INTO `seat` VALUES (132, 1, 4, 3, '1排4座', '1_4');
INSERT INTO `seat` VALUES (133, 1, 5, 3, '1排5座', '1_5');
INSERT INTO `seat` VALUES (134, 1, 6, 3, '1排6座', '1_6');
INSERT INTO `seat` VALUES (135, 1, 7, 3, '1排7座', '1_7');
INSERT INTO `seat` VALUES (136, 1, 8, 3, '1排8座', '1_8');
INSERT INTO `seat` VALUES (137, 2, 1, 3, '2排1座', '2_1');
INSERT INTO `seat` VALUES (138, 2, 2, 3, '2排2座', '2_2');
INSERT INTO `seat` VALUES (139, 2, 3, 3, '2排3座', '2_3');
INSERT INTO `seat` VALUES (140, 2, 4, 3, '2排4座', '2_4');
INSERT INTO `seat` VALUES (141, 2, 5, 3, '2排5座', '2_5');
INSERT INTO `seat` VALUES (142, 2, 6, 3, '2排6座', '2_6');
INSERT INTO `seat` VALUES (143, 2, 7, 3, '2排7座', '2_7');
INSERT INTO `seat` VALUES (144, 2, 8, 3, '2排8座', '2_8');
INSERT INTO `seat` VALUES (145, 3, 1, 3, '3排1座', '3_1');
INSERT INTO `seat` VALUES (146, 3, 2, 3, '3排2座', '3_2');
INSERT INTO `seat` VALUES (147, 3, 3, 3, '3排3座', '3_3');
INSERT INTO `seat` VALUES (148, 3, 4, 3, '3排4座', '3_4');
INSERT INTO `seat` VALUES (149, 3, 5, 3, '3排5座', '3_5');
INSERT INTO `seat` VALUES (150, 3, 6, 3, '3排6座', '3_6');
INSERT INTO `seat` VALUES (151, 3, 7, 3, '3排7座', '3_7');
INSERT INTO `seat` VALUES (152, 3, 8, 3, '3排8座', '3_8');
INSERT INTO `seat` VALUES (153, 4, 1, 3, '4排1座', '4_1');
INSERT INTO `seat` VALUES (154, 4, 2, 3, '4排2座', '4_2');
INSERT INTO `seat` VALUES (155, 4, 3, 3, '4排3座', '4_3');
INSERT INTO `seat` VALUES (156, 4, 4, 3, '4排4座', '4_4');
INSERT INTO `seat` VALUES (157, 4, 5, 3, '4排5座', '4_5');
INSERT INTO `seat` VALUES (158, 4, 6, 3, '4排6座', '4_6');
INSERT INTO `seat` VALUES (159, 4, 7, 3, '4排7座', '4_7');
INSERT INTO `seat` VALUES (160, 4, 8, 3, '4排8座', '4_8');
INSERT INTO `seat` VALUES (161, 5, 1, 3, '5排1座', '5_1');
INSERT INTO `seat` VALUES (162, 5, 2, 3, '5排2座', '5_2');
INSERT INTO `seat` VALUES (163, 5, 3, 3, '5排3座', '5_3');
INSERT INTO `seat` VALUES (164, 5, 4, 3, '5排4座', '5_4');
INSERT INTO `seat` VALUES (165, 5, 5, 3, '5排5座', '5_5');
INSERT INTO `seat` VALUES (166, 5, 6, 3, '5排6座', '5_6');
INSERT INTO `seat` VALUES (167, 5, 7, 3, '5排7座', '5_7');
INSERT INTO `seat` VALUES (168, 5, 8, 3, '5排8座', '5_8');
INSERT INTO `seat` VALUES (169, 6, 1, 3, '6排1座', '6_1');
INSERT INTO `seat` VALUES (170, 6, 2, 3, '6排2座', '6_2');
INSERT INTO `seat` VALUES (171, 6, 3, 3, '6排3座', '6_3');
INSERT INTO `seat` VALUES (172, 6, 4, 3, '6排4座', '6_4');
INSERT INTO `seat` VALUES (173, 6, 5, 3, '6排5座', '6_5');
INSERT INTO `seat` VALUES (174, 6, 6, 3, '6排6座', '6_6');
INSERT INTO `seat` VALUES (175, 6, 7, 3, '6排7座', '6_7');
INSERT INTO `seat` VALUES (176, 6, 8, 3, '6排8座', '6_8');
INSERT INTO `seat` VALUES (177, 7, 1, 3, '7排1座', '7_1');
INSERT INTO `seat` VALUES (178, 7, 2, 3, '7排2座', '7_2');
INSERT INTO `seat` VALUES (179, 7, 3, 3, '7排3座', '7_3');
INSERT INTO `seat` VALUES (180, 7, 4, 3, '7排4座', '7_4');
INSERT INTO `seat` VALUES (181, 7, 5, 3, '7排5座', '7_5');
INSERT INTO `seat` VALUES (182, 7, 6, 3, '7排6座', '7_6');
INSERT INTO `seat` VALUES (183, 7, 7, 3, '7排7座', '7_7');
INSERT INTO `seat` VALUES (184, 7, 8, 3, '7排8座', '7_8');
INSERT INTO `seat` VALUES (185, 8, 1, 3, '8排1座', '8_1');
INSERT INTO `seat` VALUES (186, 8, 2, 3, '8排2座', '8_2');
INSERT INTO `seat` VALUES (187, 8, 3, 3, '8排3座', '8_3');
INSERT INTO `seat` VALUES (188, 8, 4, 3, '8排4座', '8_4');
INSERT INTO `seat` VALUES (189, 8, 5, 3, '8排5座', '8_5');
INSERT INTO `seat` VALUES (190, 8, 6, 3, '8排6座', '8_6');
INSERT INTO `seat` VALUES (191, 8, 7, 3, '8排7座', '8_7');
INSERT INTO `seat` VALUES (192, 8, 8, 3, '8排8座', '8_8');
INSERT INTO `seat` VALUES (193, 1, 1, 4, '1排1座', '1_1');
INSERT INTO `seat` VALUES (194, 1, 2, 4, '1排2座', '1_2');
INSERT INTO `seat` VALUES (195, 1, 3, 4, '1排3座', '1_3');
INSERT INTO `seat` VALUES (196, 1, 4, 4, '1排4座', '1_4');
INSERT INTO `seat` VALUES (197, 1, 5, 4, '1排5座', '1_5');
INSERT INTO `seat` VALUES (198, 1, 6, 4, '1排6座', '1_6');
INSERT INTO `seat` VALUES (199, 1, 7, 4, '1排7座', '1_7');
INSERT INTO `seat` VALUES (200, 1, 8, 4, '1排8座', '1_8');
INSERT INTO `seat` VALUES (201, 2, 1, 4, '2排1座', '2_1');
INSERT INTO `seat` VALUES (202, 2, 2, 4, '2排2座', '2_2');
INSERT INTO `seat` VALUES (203, 2, 3, 4, '2排3座', '2_3');
INSERT INTO `seat` VALUES (204, 2, 4, 4, '2排4座', '2_4');
INSERT INTO `seat` VALUES (205, 2, 5, 4, '2排5座', '2_5');
INSERT INTO `seat` VALUES (206, 2, 6, 4, '2排6座', '2_6');
INSERT INTO `seat` VALUES (207, 2, 7, 4, '2排7座', '2_7');
INSERT INTO `seat` VALUES (208, 2, 8, 4, '2排8座', '2_8');
INSERT INTO `seat` VALUES (209, 3, 1, 4, '3排1座', '3_1');
INSERT INTO `seat` VALUES (210, 3, 2, 4, '3排2座', '3_2');
INSERT INTO `seat` VALUES (211, 3, 3, 4, '3排3座', '3_3');
INSERT INTO `seat` VALUES (212, 3, 4, 4, '3排4座', '3_4');
INSERT INTO `seat` VALUES (213, 3, 5, 4, '3排5座', '3_5');
INSERT INTO `seat` VALUES (214, 3, 6, 4, '3排6座', '3_6');
INSERT INTO `seat` VALUES (215, 3, 7, 4, '3排7座', '3_7');
INSERT INTO `seat` VALUES (216, 3, 8, 4, '3排8座', '3_8');
INSERT INTO `seat` VALUES (217, 4, 1, 4, '4排1座', '4_1');
INSERT INTO `seat` VALUES (218, 4, 2, 4, '4排2座', '4_2');
INSERT INTO `seat` VALUES (219, 4, 3, 4, '4排3座', '4_3');
INSERT INTO `seat` VALUES (220, 4, 4, 4, '4排4座', '4_4');
INSERT INTO `seat` VALUES (221, 4, 5, 4, '4排5座', '4_5');
INSERT INTO `seat` VALUES (222, 4, 6, 4, '4排6座', '4_6');
INSERT INTO `seat` VALUES (223, 4, 7, 4, '4排7座', '4_7');
INSERT INTO `seat` VALUES (224, 4, 8, 4, '4排8座', '4_8');
INSERT INTO `seat` VALUES (225, 5, 1, 4, '5排1座', '5_1');
INSERT INTO `seat` VALUES (226, 5, 2, 4, '5排2座', '5_2');
INSERT INTO `seat` VALUES (227, 5, 3, 4, '5排3座', '5_3');
INSERT INTO `seat` VALUES (228, 5, 4, 4, '5排4座', '5_4');
INSERT INTO `seat` VALUES (229, 5, 5, 4, '5排5座', '5_5');
INSERT INTO `seat` VALUES (230, 5, 6, 4, '5排6座', '5_6');
INSERT INTO `seat` VALUES (231, 5, 7, 4, '5排7座', '5_7');
INSERT INTO `seat` VALUES (232, 5, 8, 4, '5排8座', '5_8');
INSERT INTO `seat` VALUES (233, 6, 1, 4, '6排1座', '6_1');
INSERT INTO `seat` VALUES (234, 6, 2, 4, '6排2座', '6_2');
INSERT INTO `seat` VALUES (235, 6, 3, 4, '6排3座', '6_3');
INSERT INTO `seat` VALUES (236, 6, 4, 4, '6排4座', '6_4');
INSERT INTO `seat` VALUES (237, 6, 5, 4, '6排5座', '6_5');
INSERT INTO `seat` VALUES (238, 6, 6, 4, '6排6座', '6_6');
INSERT INTO `seat` VALUES (239, 6, 7, 4, '6排7座', '6_7');
INSERT INTO `seat` VALUES (240, 6, 8, 4, '6排8座', '6_8');
INSERT INTO `seat` VALUES (241, 7, 1, 4, '7排1座', '7_1');
INSERT INTO `seat` VALUES (242, 7, 2, 4, '7排2座', '7_2');
INSERT INTO `seat` VALUES (243, 7, 3, 4, '7排3座', '7_3');
INSERT INTO `seat` VALUES (244, 7, 4, 4, '7排4座', '7_4');
INSERT INTO `seat` VALUES (245, 7, 5, 4, '7排5座', '7_5');
INSERT INTO `seat` VALUES (246, 7, 6, 4, '7排6座', '7_6');
INSERT INTO `seat` VALUES (247, 7, 7, 4, '7排7座', '7_7');
INSERT INTO `seat` VALUES (248, 7, 8, 4, '7排8座', '7_8');
INSERT INTO `seat` VALUES (249, 8, 1, 4, '8排1座', '8_1');
INSERT INTO `seat` VALUES (250, 8, 2, 4, '8排2座', '8_2');
INSERT INTO `seat` VALUES (251, 8, 3, 4, '8排3座', '8_3');
INSERT INTO `seat` VALUES (252, 8, 4, 4, '8排4座', '8_4');
INSERT INTO `seat` VALUES (253, 8, 5, 4, '8排5座', '8_5');
INSERT INTO `seat` VALUES (254, 8, 6, 4, '8排6座', '8_6');
INSERT INTO `seat` VALUES (255, 8, 7, 4, '8排7座', '8_7');
INSERT INTO `seat` VALUES (256, 8, 8, 4, '8排8座', '8_8');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                       `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id，主键',
                       `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
                       `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
                       `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
                       `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
                       `uimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
                       `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
                       `state` int(1) NULL DEFAULT NULL COMMENT '状态（0：正常 ，1：锁定）',
                       PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'swd', '123', 'swd', '1', '1', '1', 1);

SET FOREIGN_KEY_CHECKS = 1;
