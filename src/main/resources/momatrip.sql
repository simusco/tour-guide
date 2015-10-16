/*
Navicat MySQL Data Transfer

Source Server         : momatrip
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : momatrip

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-10-16 18:51:56
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
INSERT INTO `mc_activity_extra` VALUES ('0ed09881751846f0bd89ffd7a955ea8c', 'a001', 'REC_PLAN', 'ActivityExtraViewController');
INSERT INTO `mc_activity_extra` VALUES ('dba3c8bdb9f744788d76f22dbf03e324', '32401b3e04e049c99d68eec68bde8d95', 'REC_PLAN', '推荐玩法1111推荐玩法1111推荐玩法1111推荐玩法1111');

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
  PRIMARY KEY (`activity_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_activity_plan
-- ----------------------------
INSERT INTO `mc_activity_plan` VALUES ('32401b3e04e049c99d68eec68bde8d95', 'asdf', 'asdfasdf', null, null, null, null, null, null, null, null, null, null, null, null, '33', null, '<strong class=\"tag-def\">漂流</strong>', 'HOT', '<strong class=\"tag-def\">漂流</strong>', null, null, '16d8e644b4f2426397b0890870155f7e');
INSERT INTO `mc_activity_plan` VALUES ('a001', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '219.00', null, null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '10', '213', '<strong class=\"tag-def\">漂流</strong>', 'HOT', '<strong class=\"tag-def\">漂流</strong>', null, null, '73a4291d84274608b8c75029e41d49c2');
INSERT INTO `mc_activity_plan` VALUES ('a002', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '200.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '2', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, '73a4291d84274608b8c75029e41d49c2');
INSERT INTO `mc_activity_plan` VALUES ('a003', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '233.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '3', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a004', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '42.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '4', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a005', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '422.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '5', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a006', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '33.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '6', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a007', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '219.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '7', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a008', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '580.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '8', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a009', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '903.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '9', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a010', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '167.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '10', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a011', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '443.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '11', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a012', '西冲-杨梅坑骑行-情人岛1日游', '采摘正当季，团建不客气！Bootstrap 的 CSS 文件是通过 Less 源码编译而来的。Less 是一门预处理语言，支持变量、mixin、函数等额外功能。', '', '', '219.00', '', null, '2天', '', '', '', '', '2015-09-11 10:04:04', 'images/query/route-01.png', '12', '213', '<strong class=\"tag-def\">漂流</strong><strong class=\"tag-def\">亲子</strong>', null, '<strong class=\"tag-def\">酒店</strong><strong class=\"tag-def\">门票</strong><strong class=\"tag-def\">早餐</strong>', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('fcaa60fe481941038e5568d52d9c3e6c', 'asdf', 'asdfasdf', null, null, null, null, null, null, null, null, null, null, null, null, '33', null, '<strong class=\"tag-def\">漂流</strong>', 'HOT', '<strong class=\"tag-def\">漂流</strong>', null, null, null);

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
INSERT INTO `mc_activity_tags` VALUES ('a001001', 'a001', '111', '一日', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001001001', 'a001', '101', '成都', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001001002', 'a001', '1010', '都江堰', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001002', 'a001', '112', '二日', '2');
INSERT INTO `mc_activity_tags` VALUES ('a001003', 'a011', '213', '观景休闲', '3');
INSERT INTO `mc_activity_tags` VALUES ('a001004', 'a010', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001005', 'a009', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001006', 'a008', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001007', 'a007', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001008', 'a006', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001009', 'a005', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001010', 'a004', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001011', 'a003', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001012', 'a002', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001013', 'a001', '213', '观景休闲', '1');
INSERT INTO `mc_activity_tags` VALUES ('a001014', 'a012', '213', '观景休闲', '1');

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
INSERT INTO `mc_goodness` VALUES ('4daefec7a4574244acc9a825d364cbc2', 'SPOT', 'sadfasdf', 'dsfsf', 'a001', 'anchor1');

-- ----------------------------
-- Table structure for `mc_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `mc_hotel`;
CREATE TABLE `mc_hotel` (
  `hotel_id` varchar(40) DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `description` text,
  `address` text,
  `image_url` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_hotel
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
INSERT INTO `mc_images` VALUES ('1444982613647', 'a001', 'image/jpeg', null, '/a001/INDEX/1444982613647.jpg', '1_04.jpg', null, 'INDEX', null, null, '39289');
INSERT INTO `mc_images` VALUES ('1444990890818', '32401b3e04e049c99d68eec68bde8d95', 'image/jpeg', null, '/32401b3e04e049c99d68eec68bde8d95/QUERY/1444990890818.jpg', '1_12.jpg', null, 'QUERY', null, null, '4721');
INSERT INTO `mc_images` VALUES ('1444990891865', '32401b3e04e049c99d68eec68bde8d95', 'image/png', null, '/32401b3e04e049c99d68eec68bde8d95/QUERY/1444990891865.png', 'hot02.png', null, 'QUERY', null, null, '137105');
INSERT INTO `mc_images` VALUES ('1444990893795', '32401b3e04e049c99d68eec68bde8d95', 'image/png', null, '/32401b3e04e049c99d68eec68bde8d95/QUERY/1444990893795.png', 'hot03.png', null, 'QUERY', null, null, '67575');
INSERT INTO `mc_images` VALUES ('1444990894180', '32401b3e04e049c99d68eec68bde8d95', 'image/jpeg', null, '/32401b3e04e049c99d68eec68bde8d95/QUERY/1444990894180.jpg', '1_14.jpg', null, 'QUERY', null, null, '5572');
INSERT INTO `mc_images` VALUES ('a001', 'a001', null, null, '/images/a001/adss.jpg', '', null, 'index', '1', null, null);
INSERT INTO `mc_images` VALUES ('a002', 'a001', null, null, '/images/screen_001.jpg', null, null, 'switch', '1', null, null);
INSERT INTO `mc_images` VALUES ('a003', 'a001', null, null, '/images/screen_001.jpg', null, null, 'switch', '2', null, null);
INSERT INTO `mc_images` VALUES ('a004', 'a001', null, null, '/images/screen_002.jpg', null, null, 'switch', '3', null, null);
INSERT INTO `mc_images` VALUES ('a005', 'a001', null, null, '/images/screen_001.jpg', null, null, 'switch', '4', null, null);
INSERT INTO `mc_images` VALUES ('a006', 'a001', null, null, '/images/a001/content002.png', null, null, 'route', null, null, null);

-- ----------------------------
-- Table structure for `mc_payment`
-- ----------------------------
DROP TABLE IF EXISTS `mc_payment`;
CREATE TABLE `mc_payment` (
  `payment_id` varchar(40) DEFAULT NULL
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
INSERT INTO `mc_tags` VALUES ('110', '全部', null, '11', '1', null, '1', null, 'ALL');
INSERT INTO `mc_tags` VALUES ('111', '一日', null, '11', '2', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('112', '二日', null, '11', '3', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('113', '三日', null, '11', '4', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('114', '四日', null, '11', '5', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('115', '五日', null, '11', '6', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('116', '六日', null, '11', '7', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('117', '七日', null, '11', '8', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('21', '主题', null, '-1', '3', '/images/tag_icon.png', null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('210', '全部', null, '21', '1', null, '1', null, 'ALL');
INSERT INTO `mc_tags` VALUES ('211', 'BBQ', null, '21', '2', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('212', '主题聚会', null, '21', '3', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('213', '观景休闲', null, '21', '4', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('214', '登山徒步', null, '21', '5', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('215', '亲子游玩', null, '21', '6', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('216', '自驾骑行', null, '21', '7', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('217', '草原风情', null, '21', '8', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('218', '海滩戏水', null, '21', '9', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('41', '价格', null, '-1', '5', '/images/tag_icon.png', null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('410', '全部', null, '41', '5', null, '1', null, 'ALL');
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
INSERT INTO `mc_topic` VALUES ('16d8e644b4f2426397b0890870155f7e', 'test', 'ssd', 'test', '2015-10-16 18:35:41', null);
INSERT INTO `mc_topic` VALUES ('73a4291d84274608b8c75029e41d49c2', 'eewe', '///', 'weew', '2015-10-16 16:47:46', null);

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
  `visitor_id` varchar(40) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `card_type` varchar(10) DEFAULT NULL,
  `idcard` varchar(36) DEFAULT NULL
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
INSERT INTO `sys_user` VALUES ('d78fe554b8794169be1f8cc7db17ce28', 'simusco@163.com', 'Y', '$apr1$55164403$R0klnQ.BQqx/2Yml3tOl8.', '新用户', null, null, null, null, null, '5516440304248339819', '2015-09-08 12:53:03', null);
