/*
Navicat MySQL Data Transfer

Source Server         : momatrip
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : momatrip

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-11-05 15:22:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mc_activity_extra`
-- ----------------------------
DROP TABLE IF EXISTS `mc_activity_extra`;
CREATE TABLE `mc_activity_extra` (
  `activity_extra_id` varchar(40) NOT NULL DEFAULT '',
  `activity_plan_id` varchar(40) DEFAULT NULL,
  `type` varchar(120) DEFAULT NULL COMMENT '购买须知：NEED_KNOW,推荐玩法:REC_PLAN',
  `content` text,
  PRIMARY KEY (`activity_extra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_activity_extra
-- ----------------------------
INSERT INTO `mc_activity_extra` VALUES ('007df3b8f09b471baaaeb1917414cd68', '653980d19d3d4f97b0bc50e10001c173', 'REC_PLAN', '<div class=\"img-content\">\r\n                        <img src=\"/tour-guide/images/detail/rec-plan-002.png\">\r\n                        <img src=\"/tour-guide/images/detail/rec-plan001.png\">\r\n                    </div>');
INSERT INTO `mc_activity_extra` VALUES ('007df3b8f09b471baaaeb1917414cd69', '653980d19d3d4f97b0bc50e10001c173', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\">\r\n                        <p class=\"text-content__title\">[预定须知]</p>\r\n                        <p>1.旅游产品内容主要包含：酒店、飞机票、火车票、旅行用车、目的地接待服务及其他服务。具体产品的最终包含内容以确认的订单约定内容为准。</p>\r\n                        <p>2.去哪儿网关于旅游产品的行程推荐仅为友情提示，不能作为约定条款。</p>\r\n                        <p>3.旅游产品中约定的产品和服务内容，均为经过去哪儿网严格考评筛选出的具备相关资质的供应商提供，去哪儿网只对其经营资质的合法性承担责任，不对其在您消费过程中可能涉及的具体产品和服务内容承担责任。</p>\r\n                    </div>\r\n                    <div class=\"text-content text-content--theme1\">\r\n                        <p class=\"text-content__title\">[预定须知]</p>\r\n                        <p>1.旅游产品内容主要包含：酒店、飞机票、火车票、旅行用车、目的地接待服务及其他服务。具体产品的最终包含内容以确认的订单约定内容为准。</p>\r\n                        <p>2.去哪儿网关于旅游产品的行程推荐仅为友情提示，不能作为约定条款。</p>\r\n                        <p>3.旅游产品中约定的产品和服务内容，均为经过去哪儿网严格考评筛选出的具备相关资质的供应商提供，去哪儿网只对其经营资质的合法性承担责任，不对其在您消费过程中可能涉及的具体产品和服务内容承担责任。</p>\r\n                    </div>');

-- ----------------------------
-- Table structure for `mc_activity_plan`
-- ----------------------------
DROP TABLE IF EXISTS `mc_activity_plan`;
CREATE TABLE `mc_activity_plan` (
  `activity_plan_id` varchar(40) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `departure` varchar(300) DEFAULT NULL,
  `destination` varchar(300) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `price_desc` text,
  `market_price` varchar(600) DEFAULT NULL COMMENT '门市价',
  `take_time` varchar(200) DEFAULT NULL,
  `traffic` varchar(200) DEFAULT NULL,
  `min_pepole_num` varchar(200) DEFAULT NULL,
  `max_pepole_num` varchar(200) DEFAULT NULL,
  `pre_reg_day` varchar(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `image_url` varchar(1024) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `has_saled` int(11) DEFAULT NULL,
  `topic` varchar(300) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL COMMENT 'HOT:热门，SPOT:景点，TOPIC:主题',
  `exp_inclusive` varchar(300) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL COMMENT '折扣价',
  `good_review_per` varchar(300) DEFAULT NULL COMMENT '好评率',
  `topic_id` varchar(40) DEFAULT NULL COMMENT '所属主题',
  `other_attr` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activity_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_activity_plan
-- ----------------------------
INSERT INTO `mc_activity_plan` VALUES ('18825255eb35444a854e414880bcb99c', '西冲', '西冲又名“西涌”，位于深圳大鹏半岛的最南端，是一个没有完全开发的。', null, null, '89.00', '', '323', '4天', null, null, null, null, null, 'images/index/hot01.png', '100', '9382323', '<span class=\"tag tag--stress\">观光</span>\r\n<span class=\"tag tag--stress\">亲自</span>', 'HOT', '<span class=\"tag--stress\">酒店</span>\r\n	                    <span class=\"tag--stress\">门票</span>\r\n	                    <span class=\"tag--stress\">早餐</span>', null, '99', null, null);
INSERT INTO `mc_activity_plan` VALUES ('2d85da48cdac4ffb82c1a7b715f589a3', '主题详情1', '<div class=\"topic-content__title\">\n                <div class=\"topic-content__title--spe\">标签：爱爬山 爱摄影 青年</div>\n            </div>\n            <p class=\"topic-content__desc\">\n                我爱爬山户外联盟是一个友谊、阳光、简单、快乐的群体。这是以武汉三镇的群友为主而组成的群体。追求的是自由与轻松,享受的是友谊与友情,是群友的交流天地和\n            </p>\n\n\n            <div class=\"topic-content__title\">\n                <div class=\"topic-content__title--spe\">千岛湖星空帐篷酒店</div>\n                <div class=\"topic-content__title--extr\">躺在床上就能数星星</div>\n            </div>\n            <p class=\"topic-content__desc\">\n                小时候就是因为打架输给了一名练习过跆拳道的小孩，这才立志学习跆拳道，并且在一个月后将那名小孩痛揍了一顿，从此之后，他的格斗天赋逐渐的展露出来，十一岁的时候获得了全国跆拳道少年组冠军，十三岁的时候获得了青少年组冠军，后来他觉得参加那些比赛没意思，开始向一些职业跆拳道手挑战，一连击败了数位跆拳道职业选手\n            </p>\n            <div class=\"topic-content__img\">\n                <img src=\"/tour-guide/images/spot/spot01.png\">\n                <img src=\"/tour-guide/images/spot/spot01.png\">\n            </div>', null, null, '689.00', '689元起2天1晚', null, null, null, null, null, null, null, null, null, null, null, 'TOPIC', null, null, null, 'ff3f1b5529434bc1827bce6d540d5e63', null);
INSERT INTO `mc_activity_plan` VALUES ('58c7175355824fa5bf339f450a8d3d6c', '西冲一日游', '西冲一日游', null, null, '299.00', '', '555', '2天', null, null, null, null, null, 'images/index/hot02.png', '33', '323232', '<span class=\"tag tag--stress\">观光</span>\r\n<span class=\"tag tag--stress\">亲自</span>', 'SPOT', '3', null, '96', null, '<ul class=\"tag-line tag-line--default\">\r\n	                <li>最佳季节：</li>\r\n	                <li><span class=\"tag tag--default\">秋天</span></li>\r\n	            </ul>');
INSERT INTO `mc_activity_plan` VALUES ('653980d19d3d4f97b0bc50e10001c173', '巴厘岛5日或6日游', '逍遥蓝梦岛，国五海边酒店，四季下午茶', null, null, '32.00', null, '23', '3天', null, null, null, null, null, 'images/index/hot03.png', '333', '323', '<span class=\"tag tag--stress\">观光</span>\r\n<span class=\"tag tag--stress\">亲自</span>', 'SPOT', '<strong class=\"tag-def\">门票</strong>', null, '96', null, '<ul class=\"tag-line tag-line--default\">\r\n	                <li>最佳季节：</li>\r\n	                <li><span class=\"tag tag--default\">秋天</span></li>\r\n	            </ul>');
INSERT INTO `mc_activity_plan` VALUES ('a0af7ce8b84c4625ae278e4ffabd0e0d', '韩国首尔3晚4日游', '2天自由活动 全程五花市区酒店', null, null, '554.00', '', '556', '1天', null, null, null, null, null, 'images/index/hot04.png', '32', '344', '<span class=\"tag tag--stress\">观光</span>\r\n<span class=\"tag tag--stress\">亲自</span>', 'SPOT', '<strong class=\"tag-def\">早餐</strong><strong class=\"tag-def\">住宿</strong>', null, '99', null, '<ul class=\"tag-line tag-line--default\">\r\n	                <li>最佳季节：</li>\r\n	                <li><span class=\"tag tag--default\">秋天</span></li>\r\n	            </ul>');

-- ----------------------------
-- Table structure for `mc_activity_tags`
-- ----------------------------
DROP TABLE IF EXISTS `mc_activity_tags`;
CREATE TABLE `mc_activity_tags` (
  `activity_tags_id` varchar(40) NOT NULL,
  `activity_plan_id` varchar(40) DEFAULT NULL,
  `tag_id` varchar(40) DEFAULT NULL,
  `tag_name` varchar(200) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`activity_tags_id`),
  KEY `FK_MC_ACTIV_REFERENCE_MC_TAGS` (`tag_id`),
  CONSTRAINT `FK_MC_ACTIV_REFERENCE_MC_TAGS` FOREIGN KEY (`tag_id`) REFERENCES `mc_tags` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_activity_tags
-- ----------------------------
INSERT INTO `mc_activity_tags` VALUES ('0525fd94b1a84bd3a68cf82763d10c66', 'a0af7ce8b84c4625ae278e4ffabd0e0d', '214', '登山徒步', '1');
INSERT INTO `mc_activity_tags` VALUES ('249961ab337c404cba6e7666e234bc2c', 'a0af7ce8b84c4625ae278e4ffabd0e0d', '215', '亲子游玩', '2');
INSERT INTO `mc_activity_tags` VALUES ('6863a755b5f84a7d9c0a409cf673dfc5', '653980d19d3d4f97b0bc50e10001c173', '214', '登山徒步', '1');
INSERT INTO `mc_activity_tags` VALUES ('6c025ca526584f6c9b483e30b08dfad2', '2d85da48cdac4ffb82c1a7b715f589a3', '217', '草原风情', '1');
INSERT INTO `mc_activity_tags` VALUES ('8495b59ebd254b25adb2f611d16e4c21', '58c7175355824fa5bf339f450a8d3d6c', '212', '主题聚会', '1');
INSERT INTO `mc_activity_tags` VALUES ('a2aa3d807d084c05a6b186d7cda9686f', '2d85da48cdac4ffb82c1a7b715f589a3', '212', '主题聚会', '0');
INSERT INTO `mc_activity_tags` VALUES ('ad4216d2c578428ab62f44ad1df6f352', 'a0af7ce8b84c4625ae278e4ffabd0e0d', '211', 'BBQ', '0');
INSERT INTO `mc_activity_tags` VALUES ('b1cb6aa836b44414945ae8ca72360307', '653980d19d3d4f97b0bc50e10001c173', '211', 'BBQ', '0');
INSERT INTO `mc_activity_tags` VALUES ('e58d1cf06ec24659a54e725b7ebf23af', '18825255eb35444a854e414880bcb99c', '214', '登山徒步', '0');
INSERT INTO `mc_activity_tags` VALUES ('f40ed19e837f4dee8977cc8d07a664f1', '58c7175355824fa5bf339f450a8d3d6c', '210', '全部', '0');
INSERT INTO `mc_activity_tags` VALUES ('f6261fac965b4478bf81d2758c672923', '18825255eb35444a854e414880bcb99c', '218', '海滩戏水', '1');

-- ----------------------------
-- Table structure for `mc_address`
-- ----------------------------
DROP TABLE IF EXISTS `mc_address`;
CREATE TABLE `mc_address` (
  `address_id` varchar(40) NOT NULL DEFAULT '',
  `parent_id` varchar(40) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_address
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_auto_replay`
-- ----------------------------
DROP TABLE IF EXISTS `mc_auto_replay`;
CREATE TABLE `mc_auto_replay` (
  `auto_replay_id` varchar(40) NOT NULL DEFAULT '',
  `question` varchar(2000) DEFAULT NULL,
  `answer` text,
  PRIMARY KEY (`auto_replay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_auto_replay
-- ----------------------------
INSERT INTO `mc_auto_replay` VALUES ('1', '你叫什么名字？', '我是你的小秘书，成成');

-- ----------------------------
-- Table structure for `mc_auto_replay_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `mc_auto_replay_keywords`;
CREATE TABLE `mc_auto_replay_keywords` (
  `auto_replay_keyword_id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_replay_id` varchar(40) DEFAULT NULL,
  `keyword` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`auto_replay_keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_auto_replay_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_goodness`
-- ----------------------------
DROP TABLE IF EXISTS `mc_goodness`;
CREATE TABLE `mc_goodness` (
  `goodness_id` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(60) DEFAULT NULL COMMENT '亮点类型(景点SPOT、吃点EAT、玩点,PLAY)',
  `content` text,
  `name` varchar(120) DEFAULT NULL,
  `activity_plan_id` varchar(40) DEFAULT NULL,
  `anchor` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`goodness_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_goodness
-- ----------------------------
INSERT INTO `mc_goodness` VALUES ('0e0ae07874e84d1cb1d32b87895e516a', 'SPOT', '西涌(西冲)天文台每月组织一次公众开放日活动,正常情况下在每月的1号开始在天文台官方网页开始预约,活动时间为当月的第三个周六。开放日内容包括天文科普知识介绍(依不同时间的天象事件会有调整),参观天文台,天气晴好的话会进行太阳表面活动的现场观测。', '西冲天文台', '18825255eb35444a854e414880bcb99c', 'wd-xctwt');
INSERT INTO `mc_goodness` VALUES ('3d90e2e0f16944e8b5d9aa33d3dd3c90', 'PLAY', '在这里有美食和啤酒，豪华超大型包房让你尽情嗨个够，亮出你的嗓音，秀出你的舞姿。酒吧地处美食街中心位置，各色美食等你来尝!', '酒吧狂欢', '18825255eb35444a854e414880bcb99c', 'wd-jbkh');
INSERT INTO `mc_goodness` VALUES ('57bf450344ae42e59fad9471f4d48b03', 'EAT', '在西涌(西冲)2号沙滩入口处有一个马场,里面可以提供骑马、骑骆驼、射箭等游玩项目。约上几个朋友或者一家人又或者一对情侣骑着马漫步在乡间小路也是非常惬意的一件事情。详细情况可以到“牧马庄园”官网了解', '西冲骑马场', '18825255eb35444a854e414880bcb99c', 'wd-xcqmc');
INSERT INTO `mc_goodness` VALUES ('78d017efab19494f881a4c1645e76586', 'PLAY', '东西冲是深圳最美的海岸线也是深圳驴友必走路线，依山傍海，山岳纵横，海岸线漫长；沙滩、岛屿、礁石、海蚀岩、洞、桥、柱等海积海蚀地貌发育齐全，给你的是无敌的海景！', '海岸线穿越', '18825255eb35444a854e414880bcb99c', 'wd-haxcy');
INSERT INTO `mc_goodness` VALUES ('7c85e08df75a468cb8f5459bc27b8cd5', 'SPOT', '<p class=\"topic-content__desc\">小时候就是因为打架输给了一名练习过跆拳道的小孩，这才立志学习跆拳道，并且在一个月后将那名小孩痛揍了一顿，从此之后，他的格斗天赋逐渐的展露出来，十一岁的时候获得了全国跆拳道少年组冠军，十三岁的时候获得了青少年组冠军，后来他觉得参加那些比赛没意思，开始向一些职业跆拳道手挑战，一连击败了数位跆拳道职业选手</p>\n    					<div class=\"topic-content__img\">\n    						<img src=\"/tour-guide/images/spot/spot01.png\">\n    						<img src=\"/tour-guide/images/spot/spot01.png\">\n    					</div>', '日本挂失股东', '18825255eb35444a854e414880bcb99c', 'kdks81001');
INSERT INTO `mc_goodness` VALUES ('a03f1a0db87c4638a5c2152fa25495fc', 'SPOT', '情人岛有着另外一种不一样的美景，四周礁石围绕景色迷人，岛边珊瑚礁清晰可看，一群一群的鱼儿自由自在的环绕在珊瑚礁上。登岛后，如有兴趣也可参加潜水活动。海底潜水：配备有专业的设施及教练，根据游客的身体条件进行深度潜水，氧气正常使用时间约为1小时，潜水人员免费快艇接送。', '梦幻情人岛', '18825255eb35444a854e414880bcb99c', 'wd-mhqrd');
INSERT INTO `mc_goodness` VALUES ('a2bad51841f44cbdb540223b55d24972', 'EAT', '西冲的美食主要是海鲜、窑鸡为主。 西冲窑鸡\n食海鲜去西冲，大亚湾、大鹏湾海产品闻名遐迩，主要有海胆、大鹏鲍鱼、扇贝、濑尿虾、珍珠螺、响螺、马蛟鱼以及各种各样的鱼虾蟹。还有客家菜、东江菜、西冲窑鸡，四季水果如荔枝、龙眼、芒果、金龟桔等。\n 西冲海鲜\n深圳的人都知道西冲的窑鸡，所谓窑鸡是鸡的一种做法，把鸡放在一个烧热的小泥坑里“窑”熟，做法是先把洗干净的鸡肚子里塞进红葱头，外皮擦上用生抽、五香粉、沙姜粉等调出来的酱料，然后用锡纸包裹起来，塞进烧得通红的泥窖里面，焖上个半小时后从里面取出，弄干净泥土，将锡纸撕开即可食用。\n\n篝火晚会、烟花：我们好像搞不了，只能看别人玩', '西冲美食', '18825255eb35444a854e414880bcb99c', 'cd-xcms');
INSERT INTO `mc_goodness` VALUES ('e78ea4ca861947c18a060afeaefd4cbf', 'PLAY', '乘快艇出海，感受乘风破浪、船行大海的感觉，并登上西冲最有标志性的岛屿——赖氏洲情人岛。', '快艇出海', '18825255eb35444a854e414880bcb99c', 'wd-ktch');

-- ----------------------------
-- Table structure for `mc_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `mc_hotel`;
CREATE TABLE `mc_hotel` (
  `hotel_id` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(300) DEFAULT NULL,
  `description` text,
  `address` text,
  `image_url` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_hotel
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_hotel_activity`
-- ----------------------------
DROP TABLE IF EXISTS `mc_hotel_activity`;
CREATE TABLE `mc_hotel_activity` (
  `hotel_activity_id` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_hotel_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_images`
-- ----------------------------
DROP TABLE IF EXISTS `mc_images`;
CREATE TABLE `mc_images` (
  `image_id` varchar(40) NOT NULL,
  `owner_id` varchar(40) DEFAULT NULL,
  `images_type` varchar(40) DEFAULT NULL,
  `server` varchar(200) DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `image_name` varchar(200) DEFAULT NULL,
  `image_desc` text,
  `type` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_images
-- ----------------------------
INSERT INTO `mc_images` VALUES ('1445225052358', '18825255eb35444a854e414880bcb99c', 'image/png', null, '/18825255eb35444a854e414880bcb99c/INDEX/1445225052358.png', 'spot01.png', null, 'INDEX', null, null, '96605');
INSERT INTO `mc_images` VALUES ('1445227741332', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/GOODNESS/1445227741332.jpg', '4.jpg', null, 'GOODNESS', null, null, '67395');
INSERT INTO `mc_images` VALUES ('1445227744944', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/GOODNESS/1445227744944.jpg', '1.jpg', null, 'GOODNESS', null, null, '38239');
INSERT INTO `mc_images` VALUES ('1445227745469', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/GOODNESS/1445227745469.jpg', '6.jpg', null, 'GOODNESS', null, null, '127489');
INSERT INTO `mc_images` VALUES ('1445227747787', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/GOODNESS/1445227747787.jpg', '5.jpg', null, 'GOODNESS', null, null, '258513');
INSERT INTO `mc_images` VALUES ('1445227749504', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/GOODNESS/1445227749504.jpg', '2.jpg', null, 'GOODNESS', null, null, '95698');
INSERT INTO `mc_images` VALUES ('1446515590759', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/HOTEL-ICON/1446515590759.jpg', 'hotel01.jpg', null, 'HOTEL-ICON', null, null, '76920');
INSERT INTO `mc_images` VALUES ('1446515591135', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/HOTEL-ICON/1446515591135.jpg', 'hotel02.jpg', null, 'HOTEL-ICON', null, null, '73934');
INSERT INTO `mc_images` VALUES ('1446515592514', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/HOTEL-ICON/1446515592514.jpg', 'hotel03.jpg', null, 'HOTEL-ICON', null, null, '81153');
INSERT INTO `mc_images` VALUES ('1446515594830', '18825255eb35444a854e414880bcb99c', 'image/jpeg', null, '/18825255eb35444a854e414880bcb99c/HOTEL-ICON/1446515594830.jpg', 'hotel04.jpg', null, 'HOTEL-ICON', null, null, '64613');
INSERT INTO `mc_images` VALUES ('1446521829118', '653980d19d3d4f97b0bc50e10001c173', 'image/png', null, '/653980d19d3d4f97b0bc50e10001c173/DETAIL-HEADER/1446521829118.png', 'hotel-01.png', null, 'DETAIL-HEADER', null, null, '327130');
INSERT INTO `mc_images` VALUES ('1446536718259', '1', 'image/png', null, '/1/TOPIC-INDEX/1446536718259.png', 'topic-01.png', null, 'TOPIC-INDEX', null, null, '144915');

-- ----------------------------
-- Table structure for `mc_payment`
-- ----------------------------
DROP TABLE IF EXISTS `mc_payment`;
CREATE TABLE `mc_payment` (
  `payment_id` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_price`
-- ----------------------------
DROP TABLE IF EXISTS `mc_price`;
CREATE TABLE `mc_price` (
  `price_id` varchar(40) NOT NULL DEFAULT '',
  `activity_plan_id` varchar(40) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_price
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_scenic_spot`
-- ----------------------------
DROP TABLE IF EXISTS `mc_scenic_spot`;
CREATE TABLE `mc_scenic_spot` (
  `scenic_spot_id` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`scenic_spot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_scenic_spot
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_scenic_spot_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `mc_scenic_spot_ticket`;
CREATE TABLE `mc_scenic_spot_ticket` (
  `scenic_spot_ticket_id` varchar(40) NOT NULL,
  PRIMARY KEY (`scenic_spot_ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_scenic_spot_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_tags`
-- ----------------------------
DROP TABLE IF EXISTS `mc_tags`;
CREATE TABLE `mc_tags` (
  `tag_id` varchar(40) NOT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `description` text,
  `parent_id` varchar(200) DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `icon` varchar(2000) DEFAULT NULL,
  `active` double(20,0) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_tags
-- ----------------------------
INSERT INTO `mc_tags` VALUES ('10', '景区', null, '-1', '1', '/images/tag_icon.png', null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('100', '全部', null, '10', '1', null, '1', 'ADDRESS', 'ALL');
INSERT INTO `mc_tags` VALUES ('101', '成都', null, '10', '2', null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('1010', '都江堰', null, '101', null, null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('1011', '青城山', null, '101', null, null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('102', '深圳', null, '10', '3', null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('1020', '西冲', null, '102', null, null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('1021', '大梅沙', null, '102', null, null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('1022', '惠州', null, '102', null, null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('11', '时长', null, '-1', '2', '/images/tag_icon.png', null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('110', '全部', null, '11', '1', null, '1', 'QUERY', 'ALL');
INSERT INTO `mc_tags` VALUES ('111', '一日', null, '11', '2', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('112', '二日', null, '11', '3', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('113', '三日', null, '11', '4', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('114', '四日', null, '11', '5', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('115', '五日', null, '11', '6', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('116', '六日', null, '11', '7', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('117', '七日', null, '11', '8', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('21', '主题', null, '-1', '3', '/images/tag_icon.png', null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('210', '全部', null, '21', '1', null, '1', 'QUERY', 'ALL');
INSERT INTO `mc_tags` VALUES ('211', 'BBQ', null, '21', '2', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('212', '主题聚会', null, '21', '3', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('213', '观景休闲', null, '21', '4', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('214', '登山徒步', null, '21', '5', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('215', '亲子游玩', null, '21', '6', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('216', '自驾骑行', null, '21', '7', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('217', '草原风情', null, '21', '8', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('218', '海滩戏水', null, '21', '9', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('41', '价格', null, '-1', '5', '/images/tag_icon.png', null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('410', '全部', null, '41', '5', null, '1', 'QUERY', 'ALL');
INSERT INTO `mc_tags` VALUES ('411', '200以下', null, '41', '6', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('412', '200~500', null, '41', '7', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('413', '501-2000', null, '41', '8', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('51', '排列', null, '-1', '5', '/images/tag_icon.png', null, 'ORDER', null);
INSERT INTO `mc_tags` VALUES ('511', '推荐', '', '51', '1', '', '1', 'ORDER', 'REC');
INSERT INTO `mc_tags` VALUES ('512', '销量', null, '51', '2', null, null, 'ORDER', 'SALE');
INSERT INTO `mc_tags` VALUES ('513', '价格', null, '51', '3', null, null, 'ORDER', 'PRICE');

-- ----------------------------
-- Table structure for `mc_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `mc_ticket`;
CREATE TABLE `mc_ticket` (
  `ticket_id` varchar(40) NOT NULL DEFAULT '',
  `activity_id` varchar(40) DEFAULT NULL,
  `name` varchar(600) DEFAULT NULL,
  `detail` text,
  `icon` varchar(512) DEFAULT NULL,
  `hotel_code` varchar(200) DEFAULT NULL,
  `spot_code` varchar(200) DEFAULT NULL,
  `sychtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket
-- ----------------------------
INSERT INTO `mc_ticket` VALUES ('2553ae761e604486ac446958c06fb0f7', '653980d19d3d4f97b0bc50e10001c173', '赏枫游·日本大阪+奈良+京都5日4晚', 'taocancxkdskdkds', '/18825255eb35444a854e414880bcb99c/HOTEL-ICON/1446515591135.jpg', 'hotel01', 'spot01', '2015-11-03 10:01:52');
INSERT INTO `mc_ticket` VALUES ('b35fdf4ca51543aa95c16acd9dfacf81', '653980d19d3d4f97b0bc50e10001c173', '毛里求斯西海岸9日7晚自由行(5钻)', 'taocancxkdskdkds', '/18825255eb35444a854e414880bcb99c/HOTEL-ICON/1446515590759.jpg', 'hotel01', 'spot01', '2015-11-03 10:01:53');

-- ----------------------------
-- Table structure for `mc_ticket_price`
-- ----------------------------
DROP TABLE IF EXISTS `mc_ticket_price`;
CREATE TABLE `mc_ticket_price` (
  `ticket_price_id` varchar(40) NOT NULL DEFAULT '',
  `ticket_id` varchar(40) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ticket_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket_price
-- ----------------------------
INSERT INTO `mc_ticket_price` VALUES ('2553ae761e604486ac446958c06fb0f7', '2553ae761e604486ac446958c06fb0f7', '3493.00', '2015', '11', '3');
INSERT INTO `mc_ticket_price` VALUES ('b35fdf4ca51543aa95c16acd9dfacf81', 'b35fdf4ca51543aa95c16acd9dfacf81', '3233.00', '2015', '11', '3');

-- ----------------------------
-- Table structure for `mc_topic`
-- ----------------------------
DROP TABLE IF EXISTS `mc_topic`;
CREATE TABLE `mc_topic` (
  `topic_id` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(240) DEFAULT NULL,
  `image_url` varchar(1024) DEFAULT NULL,
  `summary` text,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `read_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_topic
-- ----------------------------
INSERT INTO `mc_topic` VALUES ('1', '<span class=\"topic-title__title\">温泉</span><span class=\"topic-title__subtitle\">广航温泉-跑去</span>', '/1/TOPIC-INDEX/1446536718259.png', '瑰丽多姿的婺源秋天，就是天然的调色板，色彩眩目得让人心醉。灰白的民居与枫林之红交相辉映的独特江南景色更是让千万摄影人陶醉。 婺源素有“书乡”、“茶乡”之称，被外界誉为“中国最美的乡村”村村是画，步步皆景。秋冬的婺源，到处都是红色的枫树，似红霞缭绕，黛瓦白墙的民居与枫林之红交相辉映，石城、长溪的秋色曾一度被国内众多媒体评选“中国最具人气的赏枫地”，位居榜首,整个村落白墙黛瓦的古民居在炊烟袅袅中若隐若现，与远处傲霜红枫交相辉映，美不胜收。', '2015-11-03 15:51:29', '111');
INSERT INTO `mc_topic` VALUES ('2', '<span class=\"topic-title__title\">温泉</span><span class=\"topic-title__subtitle\">广航温泉-跑去</span>', '/1/TOPIC-INDEX/1446536718259.png', '由黄渤、赵薇主演，陈可辛导游的电影《亲爱的》便是在南雄坪田镇冯屋村取景拍摄，剧中感人至深的情节令人过目难忘。 在冯屋村赏银杏又是别有一番韵味：古屋、古树、纷飞的蝶儿，若不是偶有游客嬉笑喧哗，你会误以为自己穿越了时光，来到武侠剧里某位绝世高人隐世之地。\r\n\r\n冯屋村的银杏林观赏周期稍长，早熟的银杏品种在初秋便已陆续染黄，而几棵银杏王却还在青黄不接间。深秋季节，登上山坡最高处，山头密布着银杏树，山下的屋顶与杏树构成了一副美得沁人心田的画面。', '2015-11-03 15:51:33', '4');
INSERT INTO `mc_topic` VALUES ('3', '<span class=\"topic-title__title\">温泉</span><span class=\"topic-title__subtitle\">广航温泉-跑去</span>', '/1/TOPIC-INDEX/1446536718259.png', '由黄渤、赵薇主演，陈可辛导游的电影《亲爱的》便是在南雄坪田镇冯屋村取景拍摄，剧中感人至深的情节令人过目难忘。 在冯屋村赏银杏又是别有一番韵味：古屋、古树、纷飞的蝶儿，若不是偶有游客嬉笑喧哗，你会误以为自己穿越了时光，来到武侠剧里某位绝世高人隐世之地。\r\n\r\n冯屋村的银杏林观赏周期稍长，早熟的银杏品种在初秋便已陆续染黄，而几棵银杏王却还在青黄不接间。深秋季节，登上山坡最高处，山头密布着银杏树，山下的屋顶与杏树构成了一副美得沁人心田的画面。', '2015-11-03 15:51:34', '34');
INSERT INTO `mc_topic` VALUES ('4', '<span class=\"topic-title__title\">温泉</span><span class=\"topic-title__subtitle\">广航温泉-跑去</span>', '/1/TOPIC-INDEX/1446536718259.png', '由黄渤、赵薇主演，陈可辛导游的电影《亲爱的》便是在南雄坪田镇冯屋村取景拍摄，剧中感人至深的情节令人过目难忘。 在冯屋村赏银杏又是别有一番韵味：古屋、古树、纷飞的蝶儿，若不是偶有游客嬉笑喧哗，你会误以为自己穿越了时光，来到武侠剧里某位绝世高人隐世之地。\r\n\r\n冯屋村的银杏林观赏周期稍长，早熟的银杏品种在初秋便已陆续染黄，而几棵银杏王却还在青黄不接间。深秋季节，登上山坡最高处，山头密布着银杏树，山下的屋顶与杏树构成了一副美得沁人心田的画面。', '2015-11-03 15:51:35', '45');
INSERT INTO `mc_topic` VALUES ('ff3f1b5529434bc1827bce6d540d5e63', '<span class=\"topic-title__title\">秋色</span>&nbsp;<span class=\"topic-title__subtitle\">迷醉在深秋的红叶里！宏村塔川协理秋色</span>', '/1/TOPIC-INDEX/1446536718259.png', '<p>宏村，千百年来，得山水清气，极天地大观，古徽州以文风昌盛，才俊辈出而著称于世！宏村这座桃花源里的牛形村落，既有山林野趣，又有水乡风貌，素有“中国画里的乡村”之美誉！</p>', '2015-11-03 15:51:37', '55');

-- ----------------------------
-- Table structure for `mc_tourist_attraction`
-- ----------------------------
DROP TABLE IF EXISTS `mc_tourist_attraction`;
CREATE TABLE `mc_tourist_attraction` (
  `tourist_attraction_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` point NOT NULL,
  `content` text,
  PRIMARY KEY (`tourist_attraction_id`),
  SPATIAL KEY `location` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_tourist_attraction
-- ----------------------------
INSERT INTO `mc_tourist_attraction` VALUES ('8', GeomFromText('POINT(30.620076 104.067221)'), 'Foobar street 12');
INSERT INTO `mc_tourist_attraction` VALUES ('9', GeomFromText('POINT(22.654863 114.020195)'), '这是个测试数据');

-- ----------------------------
-- Table structure for `mc_visitor`
-- ----------------------------
DROP TABLE IF EXISTS `mc_visitor`;
CREATE TABLE `mc_visitor` (
  `visitor_id` varchar(40) NOT NULL DEFAULT '',
  `order_id` varchar(40) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `card_type` varchar(10) DEFAULT NULL,
  `idcard` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_visitor
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` varchar(40) NOT NULL,
  `login_id` varchar(100) NOT NULL,
  `enable` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `icon` varchar(512) DEFAULT NULL,
  `introduce` text,
  `tags` varchar(512) DEFAULT NULL,
  `role_id` varchar(40) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('cd070d2c6b3f4d3ea2d354e26e2b3ced', '13410240005', 'Y', '$apr1$50235504$cBjYIjSFn0tpGoOh0pKw./', '杨成', null, null, null, null, null, '5023550414490391182', '2015-11-04 16:11:22', null);
