/*
Navicat MySQL Data Transfer

Source Server         : 112.74.208.184_3306
Source Server Version : 50537
Source Host           : 112.74.208.184:3306
Source Database       : momatrip

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2016-03-25 15:27:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `m_adv_image`
-- ----------------------------
DROP TABLE IF EXISTS `m_adv_image`;
CREATE TABLE `m_adv_image` (
  `advImageId` varchar(40) NOT NULL DEFAULT '',
  `imageURL` varchar(1000) DEFAULT NULL,
  `enable` varchar(255) DEFAULT 'yes' COMMENT 'yes/no',
  `url` varchar(1000) DEFAULT NULL,
  `imageId` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`advImageId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_adv_image
-- ----------------------------
INSERT INTO `m_adv_image` VALUES ('3c1cd70bbc1546f4a815180ffbc0949f', 'mdiscoveryswip/M-DISCOVERY-SWIP/1452221752247.jpg', 'yes', 'http://www.baidu.com', '1452221752247');
INSERT INTO `m_adv_image` VALUES ('a1bddf62026248e79a4f211ab32fcd82', 'mdiscoveryswip/M-DISCOVERY-SWIP/1452221754728.jpg', 'yes', null, '1452221754728');
INSERT INTO `m_adv_image` VALUES ('a31ec2edf3374e8180854ac906e02a06', 'mdiscoveryswip/M-DISCOVERY-SWIP/1452221746439.jpg', 'yes', null, '1452221746439');
INSERT INTO `m_adv_image` VALUES ('810d56693cdf4c30b3e2e2e84df5a491', 'mdiscoveryswip/M-DISCOVERY-SWIP/1452221746000.jpg', 'yes', null, '1452221746000');
INSERT INTO `m_adv_image` VALUES ('1efa323b0bcd4fd689887cd3b05171f9', 'mdiscoveryswip/M-DISCOVERY-SWIP/1452221747412.jpg', 'yes', null, '1452221747412');

-- ----------------------------
-- Table structure for `m_discovery`
-- ----------------------------
DROP TABLE IF EXISTS `m_discovery`;
CREATE TABLE `m_discovery` (
  `discoveryId` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `publishTime` date DEFAULT NULL,
  `tags` varchar(100) DEFAULT '空白分开' COMMENT '海滩 主题',
  `imageURL` varchar(1000) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL COMMENT 'EAT   DRINK  PLAY  HOTEL  CINEMA',
  `author` varchar(20) DEFAULT NULL,
  `URL` varchar(1000) DEFAULT NULL,
  `isRec` varchar(20) DEFAULT 'no' COMMENT 'yes/no是否显示到推荐列表',
  PRIMARY KEY (`discoveryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_discovery
-- ----------------------------
INSERT INTO `m_discovery` VALUES ('d213d3f1616248f2b9a6352a51b9f0cb', '增城金叶子温泉度假酒店', '广州增城金叶子温泉度假酒店位于白水寨景区区域内，浓郁巴厘岛风情，半山中的皇室宫殿式酒店，依山而筑，尽显高雅。养生高山温泉，远眺连绵翠峰，赏玩田园风光。', '2016-01-08', '旅馆 	特色', '/d213d3f1616248f2b9a6352a51b9f0cb/DISCOVERY/1452224289191.jpg', 'PLAY', '陈成', 'http://www.yaochufa.com/package/1398', 'true');
INSERT INTO `m_discovery` VALUES ('a0722d3bdffe4b839d34b9f5f08d37b8', '广州阳光欢乐谷', '阳光（农庄）欢乐谷依托长洲岛美丽风光，拥有众多娱乐项目，吃喝玩乐应有尽有，是体验户外生活乐趣、团体活动的不错之选！野炊套餐，新鲜肉质、烧火做饭，尽享生态野炊之趣。', '2016-01-08', '火锅', '/a0722d3bdffe4b839d34b9f5f08d37b8/DISCOVERY/1452225194184.jpg', 'PLAY', '欢乐谷', 'http://www.yaochufa.com/package/14444', 'true');
INSERT INTO `m_discovery` VALUES ('930d1deb26114853b6b65473669dec91', '长隆鳄鱼公园', '鳄鱼主题公园，观国鸟飞歌，过奇妙假期！园内数万条鳄鱼及各种珍稀飞禽，探秘湿地精灵王国，震撼视觉感受，湿地天堂，感受大自然。还可顺道玩转长隆其他各大园区。', '2016-01-08', '宠物 火锅', '/930d1deb26114853b6b65473669dec91/DISCOVERY/1452231615429.jpg', 'PLAY', '成成', 'http://www.yaochufa.com/package/4045', 'true');
INSERT INTO `m_discovery` VALUES ('b226b63b2aab404bbe42ba8178723213', '美林湖温泉大酒店', '美林湖温泉大酒店以“意大利山城”为主题，拥有多间客房与别墅2栋。酒店配有OSPA、室外温泉泳池、标准网球场、棋牌室、桌球、等休闲场所，四周环有高尔夫球场、生态园、钓鱼场等。', '2016-01-08', '火锅', '/b226b63b2aab404bbe42ba8178723213/DISCOVERY/1452232887547.jpg', 'PLAY', '杨成', 'http://www.yaochufa.com/package/8768', 'true');
INSERT INTO `m_discovery` VALUES ('93f9ef60b198411ca89135dc24d4643a', '荷兰花卉小镇', '失恋了又怎么样？我乐观，我生活依然可以多姿多彩！', '2016-01-12', '光观 摄影', '/93f9ef60b198411ca89135dc24d4643a/DISCOVERY/1452592942288.JPG', 'PLAY', null, 'http://mp.weixin.qq.com/s?__biz=MzI2ODExNjkwMg==&mid=403245368&idx=1&sn=38e5c7fc9d7c27d3c56a8cf9da139c43&3rd=MzA3MDU4NTYzMw==&scene=6#rd', 'true');
INSERT INTO `m_discovery` VALUES ('c9a635f95fc74633b98d872478543ff3', '大芬油画村', '对于大芬，我敢说很多人听说过，却很少有人真正进去感受过！', '2016-01-12', '摄影 亲子 观光', '/c9a635f95fc74633b98d872478543ff3/DISCOVERY/1452594857506.jpg', 'PLAY', null, 'http://mp.weixin.qq.com/s?__biz=MzI2ODExNjkwMg==&mid=403219517&idx=1&sn=a4a0cd3174d1a18d3ba62ed45e6739d5&3rd=MzA3MDU4NTYzMw==&scene=6#rd', 'true');
INSERT INTO `m_discovery` VALUES ('c4bf6d8b40d449b58f4a95314d458572', '贝蕾音乐餐厅', '昨晚她们在朋友圈突然火了,竟然是因为在这里自拍......', '2016-01-12', '海鲜 音乐餐厅', '/c4bf6d8b40d449b58f4a95314d458572/DISCOVERY/1452595261958.jpg', 'EAT', null, 'http://mp.weixin.qq.com/s?__biz=MzIwMTM4Nzg0MA==&mid=415337664&idx=1&sn=eb90a8a663ad4f4c0a4b9ced87c2055d&3rd=MzA3MDU4NTYzMw==&scene=6#rd', 'true');

-- ----------------------------
-- Table structure for `m_discovery_type`
-- ----------------------------
DROP TABLE IF EXISTS `m_discovery_type`;
CREATE TABLE `m_discovery_type` (
  `discoveryTypeId` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL COMMENT 'EAT   DRINK  PLAY  HOTEL  CINEMA',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`discoveryTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_discovery_type
-- ----------------------------
INSERT INTO `m_discovery_type` VALUES ('1', '吃', 'EAT', '1');
INSERT INTO `m_discovery_type` VALUES ('2', '喝', 'DRINK', '2');
INSERT INTO `m_discovery_type` VALUES ('3', '住', 'HOTEL', '3');
INSERT INTO `m_discovery_type` VALUES ('4', '玩', 'PLAY', '4');

-- ----------------------------
-- Table structure for `m_market_activity`
-- ----------------------------
DROP TABLE IF EXISTS `m_market_activity`;
CREATE TABLE `m_market_activity` (
  `activityId` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(200) DEFAULT NULL,
  `rule` text,
  `imageURL` varchar(1000) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `rangeBegin` int(11) DEFAULT NULL,
  `rangeEnd` int(11) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_market_activity
-- ----------------------------
INSERT INTO `m_market_activity` VALUES ('1', '惊喜', null, null, null, null, '100', '1000');

-- ----------------------------
-- Table structure for `m_present`
-- ----------------------------
DROP TABLE IF EXISTS `m_present`;
CREATE TABLE `m_present` (
  `presentId` varchar(40) NOT NULL DEFAULT '',
  `activityId` varchar(40) DEFAULT NULL,
  `name` varchar(100) DEFAULT '' COMMENT '比如：电影票、机票、景区门票',
  `imageURL` varchar(1000) DEFAULT NULL COMMENT '奖品图像路径',
  `quantity` int(11) DEFAULT NULL COMMENT '100,200,300',
  `random` int(11) DEFAULT NULL COMMENT '系统自动生成 ',
  `assigned` varchar(20) DEFAULT 'yes/no',
  PRIMARY KEY (`presentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_present
-- ----------------------------

-- ----------------------------
-- Table structure for `m_present_assign`
-- ----------------------------
DROP TABLE IF EXISTS `m_present_assign`;
CREATE TABLE `m_present_assign` (
  `presentAssignId` varchar(40) NOT NULL DEFAULT '',
  `presentId` varchar(40) NOT NULL DEFAULT '',
  `weixin` varchar(30) DEFAULT NULL,
  `assignTime` varchar(255) DEFAULT NULL COMMENT '获奖时间',
  `assign` varchar(20) DEFAULT 'no' COMMENT 'yes/no',
  `code` varchar(100) DEFAULT NULL COMMENT '自动生成随机码',
  PRIMARY KEY (`presentAssignId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_present_assign
-- ----------------------------

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
INSERT INTO `mc_activity_extra` VALUES ('0d2b570eaa47461ba8156631c4fc7909', 'ddafeafbe3f948db9374bef42c3fee5b', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');
INSERT INTO `mc_activity_extra` VALUES ('2fdf0fe7bb4f4c06b0e0d974da547f64', 'a9e7808e176b428fa79a3cae4142d8ec', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');
INSERT INTO `mc_activity_extra` VALUES ('41d294113d434da781b01f2d8900d340', '8a75cc7459824e9891dfc23abb2804b1', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');
INSERT INTO `mc_activity_extra` VALUES ('58f72f2ff4e74343b428d11f4a05c85b', '37af4e25e95346ba89ec61ee0471eb75', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');
INSERT INTO `mc_activity_extra` VALUES ('6906ed5c8e784fbeb79745e42a649f78', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');
INSERT INTO `mc_activity_extra` VALUES ('735dfc5bf68a47508591d969d370bc78', 'dadb43fdd1bb418d867ba930a67d9301', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');
INSERT INTO `mc_activity_extra` VALUES ('7baf5f7c59b54acb9b0fe2dcce6b8e20', '76746f2d2e3241fbbf70f992b07b9da6', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');
INSERT INTO `mc_activity_extra` VALUES ('a2a6a71d42e74059a67edad66355a735', 'ff809171fbb94259bf8d75557522292f', 'NEED_KNOW', '<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【预订限制】</p> \n	<p>周一至周四请至少提前1天18:00前预订，周五至周日以及节假日因房态紧张，请尽量提前预订。</p> \n	<p>周末及节假日期间入住需加价，详情请留意预订日期。</p> \n	<p>酒店特殊规定：优惠套餐价格每天限量，如当天预约数量超过或酒店入住率较高，酒店保留涨价权利。</p> \n	<p>家庭游套餐包含2位成人及1位儿童，儿童需符合身高1.5m以下及13岁以下的条件，如超过身高、年龄标准，需另补差价。</p> \n	<p>特惠资源，数量有限，为使更多“要出发”用户可以享受到优惠，对于“黄牛”使用“立减”或“现金券”优惠购票并倒卖的行为，“要出发”保留采取合理措施维护自己正当权益的权利。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用方式】</p> \n	<p>办理入住方式：请携带个人有效身份证件（一人一证），在酒店前台报姓名、手机号入住及领取门票和会员卡。</p> \n	<p>取票方式：入住时在酒店前台领取，并自行选择门票使用日期。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【使用时间】</p> \n	<p>早餐时间：06:00-10:00。</p> \n	<p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周六至周日、节假日 09:30-18:30。</p> \n	<p>长隆野生动物世界开放时间：09:30-18:00。</p> \n	<p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p> \n</div>\n<div class=\"text-content text-content--theme1\"> \n	<p class=\"text-content__title\">【套餐消费限制】</p> \n	<p>每日15:00之后入住（具体视酒店当天入住率而定），次日12:00之前退房，超时将加收房费，18:00以前按酒店门市价的半天收取，18:00以后按酒店门市价的一天收取。</p> \n	<p>入住时需交押金1200元（以酒店为准），退房时如无物品损坏或其它消费，押金将如数退还。</p> \n	<p>每间房最多2名成人入住，1.2m（不含）以下儿童不占床位免费。双十二促销魔法奇幻游/活力家庭游套餐可提供加床，380元/张（不含早，不含套票任何内容）。</p> \n	<p>为保证您和其他旅客的安全，和良好的睡眠质量，请您不要携带宠物入住。</p> \n</div>');

-- ----------------------------
-- Table structure for `mc_activity_plan`
-- ----------------------------
DROP TABLE IF EXISTS `mc_activity_plan`;
CREATE TABLE `mc_activity_plan` (
  `activity_plan_id` varchar(40) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `topic_desc` text,
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
  `is_publish` varchar(255) DEFAULT NULL COMMENT 'true/false',
  PRIMARY KEY (`activity_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_activity_plan
-- ----------------------------
INSERT INTO `mc_activity_plan` VALUES ('37af4e25e95346ba89ec61ee0471eb75', '江门新会古兜温泉', '古兜温泉与我们古代名泉华清池为同一温泉水质，同时拥有两种不同类型的温泉：养生保健海洋温泉（咸泉），美容护肤氡温泉（淡泉）。度假村位于风光旖旎的古兜山下，靠山面海。由唐式、欧式、日式三大温泉区和水疗会等配套设施组成，温泉谷内飞瀑流泉，水木清华，碧翠嫣然。白天云蒸霞，夜晚星辉相映，恍似人间仙境，世外桃源。', '<div class=\"topic-content__title\">\n    <div class=\"topic-content__title--spe\">江门新会古兜温泉</div>\n    <div class=\"topic-content__title--extr\">恍似人间仙境，世外桃源</div>\n</div>\n<p  class=\"topic-content__desc\">\n    古兜温泉与我们古代名泉华清池为同一温泉水质，同时拥有两种不同类型的温泉：养生保健海洋温泉（咸泉），美容护肤氡温泉（淡泉）。度假村位于风光旖旎的古兜山下，靠山面海。由唐式、欧式、日式三大温泉区和水疗会等配套设施组成，温泉谷内飞瀑流泉，水木清华，碧翠嫣然。白天云蒸霞，夜晚星辉相映，恍似人间仙境，世外桃源。\n</p>\n<div class=\"topic-content__img\">\n    <img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/TOPIC-CONTENT/1450168867477.jpg\"/>\n    <img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/TOPIC-CONTENT/1450168868688.jpg\"/>\n</div>', null, null, '398.00', null, '1357.00', '2天', null, null, null, null, '2015-12-15 16:34:42', '/37af4e25e95346ba89ec61ee0471eb75/INDEX/1450168565957.jpg', '1', '0', '<span class=\"tag tag--stress\">温泉</span>', 'HOT', '<span class=\"tag tag--stress\">酒店</span>', null, '100', '8feb7664465b487fa671c4b1d672f189', null, null);
INSERT INTO `mc_activity_plan` VALUES ('73bcbb6f76704fb2a3d1bc5c3e5ab8ef', '东部华侨城', '东部华侨城，是深圳唯一的5A级的游乐与休闲为一体的景区。景区在设计风格上采用中西文化交融方式，并融入“茶、禅、花、竹”等中国古典元素，开发有两个主题公园、三座旅游小镇、8家度假酒店、15家美食餐厅、两座36洞山地球场、大华兴寺等休闲设施，为游人打造一条吃喝玩乐购的一体化服务。', null, null, null, '662.00', null, '1600.00', '2天', null, null, null, null, '2015-12-16 09:48:50', '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/INDEX/1450230768071.gif', '100', '0', '<span class=\"tag tag--stress\">大峡谷</span>&nbsp;<span class=\"tag tag--stress\">茶溪谷</span>', 'SPOT', '<span class=\"tag tag--stress\">早餐</span>&nbsp;<span class=\"tag tag--stress\">门票</span> &nbsp;<span class=\"tag tag--stress\">酒店</span>', null, '100', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('76746f2d2e3241fbbf70f992b07b9da6', '惠州龙门铁泉·黄金汤', '龙门铁泉拥有丰富的温矿泉水资源，富含丰富的铁、锍、氡、钙、镁等48种有益的矿物质元素，因温泉水含铁量较多，水质金黄，故称为“黄金汤”。度假区被群山环抱，风光迤俪，林木青翠，溪水清澈，薄雾轻飘，有人间仙境之景色。拥有“三大两独”特色：亚洲最大的温泉康乐中心、全国最大的山水园林温泉、全国独有的天然黄金蒸汽浴、全国独有的珍稀黄金汤泉、广东最大温泉仿海浪冲浪。', '<div class=\"topic-content__title\">\n    <div class=\"topic-content__title--spe\">惠州龙门铁泉·黄金汤</div>\n    <div class=\"topic-content__title--extr\">最大温泉仿海浪冲浪</div>\n</div>\n<p  class=\"topic-content__desc\">\n    龙门铁泉拥有丰富的温矿泉水资源，富含丰富的铁、锍、氡、钙、镁等48种有益的矿物质元素，因温泉水含铁量较多，水质金黄，故称为“黄金汤”。度假区被群山环抱，风光迤俪，林木青翠，溪水清澈，薄雾轻飘，有人间仙境之景色。拥有“三大两独”特色：亚洲最大的温泉康乐中心、全国最大的山水园林温泉、全国独有的天然黄金蒸汽浴、全国独有的珍稀黄金汤泉、广东最大温泉仿海浪冲浪。\n</p>\n<div class=\"topic-content__img\">\n    <img src=\"//112.74.208.184/images/76746f2d2e3241fbbf70f992b07b9da6/INDEX/1450167565310.jpg\"/>\n</div>', null, null, '360.00', null, '838.00', '2天', null, null, null, null, '2015-12-15 16:17:15', '/76746f2d2e3241fbbf70f992b07b9da6/INDEX/1450167565310.jpg', '1', '0', '<span class=\"tag tag--stress\">温泉</span>', 'HOT', '<span class=\"tag tag--stress\">酒店</span>', null, '100', '8feb7664465b487fa671c4b1d672f189', null, null);
INSERT INTO `mc_activity_plan` VALUES ('8a75cc7459824e9891dfc23abb2804b1', '西冲两日游', '被中国地理杂志评为“中国最美的八大沙滩”之一的西冲，拥有4.5公里长细腻柔软的沙滩及深圳最蓝的海水，其海景胜过深圳的著名海边景点——大、小梅沙。其海以清澈出名，并享有“深圳夏威夷”之美称。', null, null, null, '222.00', null, '0', '2天', null, null, null, null, '2015-12-15 10:14:36', '/8a75cc7459824e9891dfc23abb2804b1/INDEX/1450145918922.png', '100', '0', '<span class=\"tag tag--stress\">海边</span>&nbsp;<span class=\"tag tag--stress\">情人岛</span>&nbsp;<span class=\"tag tag--stress\">烧烤</span>&nbsp;<span class=\"tag tag--stress\">篝火</span>', 'HOT', '<span class=\"tag tag--stress\">住宿</span>', null, '100', null, '', null);
INSERT INTO `mc_activity_plan` VALUES ('a9e7808e176b428fa79a3cae4142d8ec', '欢乐谷一日游', '深圳欢乐谷是国家5A级旅游景区，也是是亚太十大主题公园，共有九大主题区：西班牙广场、魔幻城堡、冒险山、金矿镇、香格里拉雪域、飓风湾、阳光海岸、欢乐时光、玛雅水公园，100多个老少皆宜、丰富多彩的游乐项目，每逢佳节璀璨星光让您游玩更尽兴。', null, null, null, '662.00', null, '1600.00', '1天', null, null, null, null, '2015-12-16 09:11:10', '/a9e7808e176b428fa79a3cae4142d8ec/INDEX/1450228483031.gif', '100', '0', '<span class=\"tag tag--stress\">主题公园</span>', 'SPOT', '<span class=\"tag tag--stress\">门票</span>', null, '100', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('dadb43fdd1bb418d867ba930a67d9301', '锦绣中华民俗村', '深圳锦绣中华坐落在风光绮丽的深圳湾畔。它是目前世界上面积最大、内容最丰富的实景微缩景区，占地四百五十亩，分为主点区和综合服务区两部分。82个景点均按中国版图位置分布，比例大部分按1：15建造。 “锦绣中华”的景点均是按它在中国版图上的位置摆布的，全园面积有如一幅巨大的中国地图。这些景点可以分为三大类：古建筑类、山水名胜类、民居民俗类。安置在各景点上的陶艺小人达五万多人。', null, null, null, '662.00', null, '1600.00', '2天', null, null, null, null, '2015-12-16 10:41:31', '/dadb43fdd1bb418d867ba930a67d9301/INDEX/1450233763377.gif', '100', '0', '<span class=\"tag tag--stress\">实景微缩</span>', 'SPOT', '<span class=\"tag tag--stress\">门票</span>', null, '100', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('ddafeafbe3f948db9374bef42c3fee5b', '世界之窗', '这是一个把世界奇观、历史遗迹、古今名胜、民间歌舞表演融为一体的人造主题公园。公园中的各个景点都按不同的比例仿建。全园分为世界广场、亚洲区、美洲区、非洲区、大洋洲区、欧洲区、雕塑园和国际街8个主题区展示了法国埃菲尔铁塔、巴黎凯旋门、意大利比萨斜塔、印度泰姬陵、埃及金字塔等一百多个文化景观和建筑奇迹。', null, null, null, '662.00', null, '1600.00', '1天', null, null, null, null, '2015-12-15 14:16:40', '/ddafeafbe3f948db9374bef42c3fee5b/INDEX/1450160597613.png', '101', '0', '<span class=\"tag tag--stress\">景观休闲</span>', 'SPOT', '<span class=\"tag tag--stress\">门票</span>&nbsp;<span class=\"tag tag--stress\">住宿</span>', null, '100', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('ff809171fbb94259bf8d75557522292f', '广州从化碧水湾温泉', '180万亩森林环其左右，80公里绿色走廊横亘南北，背倚飞鹅山，悠枕流溪河；国家AAAA级景区、世界珍稀苏打泉、中国最佳温泉酒店、亚运指定饭店----碧水湾温泉度假村。森林海，养生泉，亲情碧水湾，带上家人，赶紧去享受吧！', '<div class=\"topic-content__title\">\n    <div class=\"topic-content__title--spe\">广州从化碧水湾温泉</div>\n    <div class=\"topic-content__title--extr\">森林中的养生温泉</div>\n</div>\n<p  class=\"topic-content__desc\">\n    180万亩森林环其左右，80公里绿色走廊横亘南北，背倚飞鹅山，悠枕流溪河；国家AAAA级景区、世界珍稀苏打泉、中国最佳温泉酒店、亚运指定饭店----碧水湾温泉度假村。森林海，养生泉，亲情碧水湾，带上家人，赶紧去享受吧！\n</p>\n<div class=\"topic-content__img\">\n    <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/TOPIC-CONTENT/1450163192558.png\"/>\n</div>', null, null, '662.00', null, '1600.00', '2天', null, null, null, null, '2015-12-15 15:05:00', '/ff809171fbb94259bf8d75557522292f/TOPIC-CONTENT/1450163192558.png', '1', '0', '<span class=\"tag tag--stress\">温泉</span>', 'HOT', '<span class=\"tag tag--stress\">酒店</span>', null, '100', '8feb7664465b487fa671c4b1d672f189', null, null);

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
  KEY `FK_MC_ACTIV_REFERENCE_MC_TAGS` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_activity_tags
-- ----------------------------
INSERT INTO `mc_activity_tags` VALUES ('00502a0bc5cb4159ac5c48a7172c415b', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', '102', '深圳', '0');
INSERT INTO `mc_activity_tags` VALUES ('04ccf8a4334841c3b28822969e0fb298', 'af58b97afb414e7ab2b70929ab958e38', '112', '二日', '2');
INSERT INTO `mc_activity_tags` VALUES ('1791997c6f8f45818105fb092775ac40', 'dadb43fdd1bb418d867ba930a67d9301', '111', '一日', '1');
INSERT INTO `mc_activity_tags` VALUES ('2225fc0c128e496e964483ab7f89e707', 'ddafeafbe3f948db9374bef42c3fee5b', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('24399bd905c74956844594e7a559cc3e', '8a75cc7459824e9891dfc23abb2804b1', '102', '深圳', '1');
INSERT INTO `mc_activity_tags` VALUES ('27828944d62d4ac29d9ed6fc974b67ac', 'a9e7808e176b428fa79a3cae4142d8ec', '213', '主题公园', '2');
INSERT INTO `mc_activity_tags` VALUES ('3b2b6f67d6b041ae94cd7b052bc1a761', 'a9e7808e176b428fa79a3cae4142d8ec', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('402f2cd474534d399195a71ba4e1a580', 'ff809171fbb94259bf8d75557522292f', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('456d1b4391894272997a17adf8a85d42', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', '213', '主题公园', '3');
INSERT INTO `mc_activity_tags` VALUES ('5bb110d0ab7d426ba79630fbe1d937de', '76746f2d2e3241fbbf70f992b07b9da6', '112', '二日', '2');
INSERT INTO `mc_activity_tags` VALUES ('688893905b3f4ed4936e31bbfe49dd32', '8a75cc7459824e9891dfc23abb2804b1', '227', '自然风光', '3');
INSERT INTO `mc_activity_tags` VALUES ('6b5531ff1e1349e3b12a8f2ba88c7117', 'ff809171fbb94259bf8d75557522292f', '211', '温泉度假', '2');
INSERT INTO `mc_activity_tags` VALUES ('6d6bb590acb74faebb5e2c2d2ab1bd0d', 'dadb43fdd1bb418d867ba930a67d9301', '102', '深圳', '0');
INSERT INTO `mc_activity_tags` VALUES ('7ad2a930a5224c0d81cbd6b61f68f7fa', '37af4e25e95346ba89ec61ee0471eb75', '105', '江门', '1');
INSERT INTO `mc_activity_tags` VALUES ('847b7d01bf9041f48b6ed457131402ba', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('867725cde32c4a2f880d798e9401af60', '37af4e25e95346ba89ec61ee0471eb75', '211', '温泉度假', '3');
INSERT INTO `mc_activity_tags` VALUES ('868237600a824de2b9bc64b65c48b393', 'ddafeafbe3f948db9374bef42c3fee5b', '213', '主题公园', '4');
INSERT INTO `mc_activity_tags` VALUES ('899c0bc0334e46bd98e77193288472c8', '76746f2d2e3241fbbf70f992b07b9da6', '101', '惠州', '1');
INSERT INTO `mc_activity_tags` VALUES ('a06bbda9231346fc941409cb9775dcab', 'dadb43fdd1bb418d867ba930a67d9301', '227', '自然风光', '2');
INSERT INTO `mc_activity_tags` VALUES ('a0ad11e991934f209967cc64a02db58b', 'af58b97afb414e7ab2b70929ab958e38', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('ade2cecf1b2e4c2982688481d741b8f1', 'af58b97afb414e7ab2b70929ab958e38', '101', '惠州', '1');
INSERT INTO `mc_activity_tags` VALUES ('affd35994ff247c2ae891689e7d103c3', 'af58b97afb414e7ab2b70929ab958e38', '211', '温泉度假', '3');
INSERT INTO `mc_activity_tags` VALUES ('bef185a12b3c467c8edd40457e7c3102', '76746f2d2e3241fbbf70f992b07b9da6', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('cdc8f5ab12e44323af9023685ca6699e', '37af4e25e95346ba89ec61ee0471eb75', '112', '二日', '2');
INSERT INTO `mc_activity_tags` VALUES ('d60f6f5d457b4e81842a276fa7c35cdd', 'ff809171fbb94259bf8d75557522292f', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('d78f05ff60354e07aa21475069d91ad4', '8a75cc7459824e9891dfc23abb2804b1', '112', '二日', '2');
INSERT INTO `mc_activity_tags` VALUES ('d83738433b094ce5a2d64c6f7fc47e9f', '8a75cc7459824e9891dfc23abb2804b1', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('db76d67cae72460c9ab96628a1e90913', 'ddafeafbe3f948db9374bef42c3fee5b', '111', '一日', '2');
INSERT INTO `mc_activity_tags` VALUES ('dfa936b2b6564b22b98863f624fe5791', 'ddafeafbe3f948db9374bef42c3fee5b', '226', '异国风情', '3');
INSERT INTO `mc_activity_tags` VALUES ('e19b2399d7284d83a973cbadf799a28c', 'a9e7808e176b428fa79a3cae4142d8ec', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('e351627f5aab41c7a7d113e867912fbe', '76746f2d2e3241fbbf70f992b07b9da6', '211', '温泉度假', '3');
INSERT INTO `mc_activity_tags` VALUES ('e36457db226c484bb291b66dfb1d3063', 'dadb43fdd1bb418d867ba930a67d9301', '219', '乡村特色', '3');
INSERT INTO `mc_activity_tags` VALUES ('efe3a7ce88444a9c95fb462871b17d77', 'ddafeafbe3f948db9374bef42c3fee5b', '102', '深圳', '1');
INSERT INTO `mc_activity_tags` VALUES ('f2fadffda3724b87b5e66988be9d218e', '37af4e25e95346ba89ec61ee0471eb75', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('fae517a1afe34aa5843d4850f1ffe4fa', '8a75cc7459824e9891dfc23abb2804b1', '225', '游轮出海', '4');
INSERT INTO `mc_activity_tags` VALUES ('fcbe79bf27d244fb95d5868f3745f424', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', '227', '自然风光', '2');

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
-- Table structure for `mc_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `mc_favorite`;
CREATE TABLE `mc_favorite` (
  `favorite_id` varchar(40) NOT NULL DEFAULT '',
  `activity_id` varchar(40) DEFAULT NULL,
  `user_id` varchar(40) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`favorite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_favorite
-- ----------------------------
INSERT INTO `mc_favorite` VALUES ('42eeaf84dacc4f968ae075e9191c26ff', '8a75cc7459824e9891dfc23abb2804b1', '1f753189cf6b44a3873a650815f45715', '2015-12-17');

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
INSERT INTO `mc_goodness` VALUES ('0746447fc07b4136958ddbef4a401024', 'SPOT', '<p class=\"topic-content__desc\">古兜观光缆车长1060米，起自古兜温泉，途经苍茫林海，穿透流云烟岚，只需要20分钟，即可抵达财神山顶。山上有古兜财神、世界第一炮和栈道等旅游设施。</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755485572.png\"/>\n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755491396.png\"/>\n</div>', '古兜观光缆车', '37af4e25e95346ba89ec61ee0471eb75', '3BJAWKK8');
INSERT INTO `mc_goodness` VALUES ('1840cb2745c14f2bbc91ea581d8322c0', 'EAT', '<p class=\"topic-content__desc\">在游玩之余，夜晚还可以在这里进行宵夜以及朋友聚会，地道美食，新鲜可口的食品数不胜数，夜晚的一大去处！</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755508277.png\"/>\n</div>', '酒吧商业美食街', '37af4e25e95346ba89ec61ee0471eb75', '3BJAWKm2');
INSERT INTO `mc_goodness` VALUES ('2ea3cb65eeb744d5972fe5cd27c17498', 'SPOT', '<p class=\"topic-content__desc\">座落在科隆市中心。始建于1248年，至19世纪末落成，历时6个世纪，它的两个尖塔高152米，是世界上最著名的哥特式教堂之一、外观巍峨壮丽、庄严肃穆。教堂内外大量的雕刻装饰和彩色玻璃镶嵌，色彩缤纷，光影迷朦，令人产生强烈的宗教感情。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161953965.png\"/>\n</div>', '科隆大教堂', 'ddafeafbe3f948db9374bef42c3fee5b', 'K1GVSQ8E');
INSERT INTO `mc_goodness` VALUES ('334ea9eafcba4cb2b25247b5ad4145d8', 'EAT', '<p class=\"topic-content__desc\">特聘朝鲜族一级厨师，精心烹制朝鲜族原汁原味的料理、泡菜、韩国烧烤等风味菜式。全套韩式餐厅服务、浓郁朝鲜族建筑风格，让您尽享家的温馨。</p>', '朝鲜风味餐厅', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ6');
INSERT INTO `mc_goodness` VALUES ('34acd1b208104a1e8af1097372c3dd40', 'SPOT', '<p class=\"topic-content__desc\">大侠谷生态乐园以“人与自然”为主题，集山地郊野公园和都市主题公园于一体，实现了自然景观、生态理念与娱乐体验、科普教育的创新结合，主要包括水公园、峡湾森林、海菲德小镇、生态峡谷和云海高地等五大主题区，自然奇幻的主题乐园为游客带来不一样的欢乐体验。</p> \n<div class=\"topic-content__img\"> \n<img src=\"http://112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754060862.jpg\"/> \n<img src=\"http://112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754062133.jpg\"/> \n<img src=\"http://112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754061697.jpg\"/> \n</div>', '大峡谷', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'MCT7FI5V');
INSERT INTO `mc_goodness` VALUES ('38160e332d0b4b6fb6eac8307ea853ad', 'SPOT', '<p class=\"topic-content__desc\">雄踞在战神广场，为纪念法国大革命100周年而建，1889年建成，以设计者居斯塔夫.埃菲尔命名。除四座水泥塔墩外，全部钢架结构，高325米，重约9000吨，兼具雄伟壮丽和优美柔和的风姿。登上塔顶，巴黎地区壮阔景色尽收眼底。入夜灯彩璀璨，恍如琼楼玉宇，成为巴黎古都的现代象征。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161706907.png\"/>\n</div>', '法国埃菲尔铁塔', 'ddafeafbe3f948db9374bef42c3fee5b', 'FX4EVHBH');
INSERT INTO `mc_goodness` VALUES ('3d05d23ec7c141179bc73136907ae8e4', 'SPOT', '<p class=\"topic-content__desc\">红色的玫瑰花瓣洒满温泉池中，氛围使人心旷神怡。玫瑰花富含维生素及单宁酸，能改善内分泌失调，并有助于促进血液循环。沐浴玫瑰花瓣温泉池能让您的容颜白里透红，保持青春美丽。</p> \n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758101696.png\"/>\n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758098623.png\"/>\n</div>', '养颜温泉之玫瑰花瓣池', 'ff809171fbb94259bf8d75557522292f', 'PXPOMNFJ1');
INSERT INTO `mc_goodness` VALUES ('42ef08c2d68b4ca2b7f9511ed675dab5', 'SPOT', '<div class=\"topic-content__img\">\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764299816.png\"/>\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764305554.png\"/>\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764304806.png\"/>\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764306592.png\"/>\n</div>', '民俗村寨', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ1');
INSERT INTO `mc_goodness` VALUES ('4492479dffd547989b3a27617b145e4a', 'SPOT', '<p class=\"topic-content__desc\">跟欢欢乐乐一起，跳进自转的大苹果里，居高临下俯瞰魔幻城堡的缤纷景致</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765175114.png\"/> \n</div>', '城堡守望者', 'a9e7808e176b428fa79a3cae4142d8ec', 'DSLLTLLL14');
INSERT INTO `mc_goodness` VALUES ('48bbff69f81c489197ae5bd588bd50c6', 'PLAY', '<p class=\"topic-content__desc\">全球首座实景拍摄悬空式环幕影院，国际最顶尖的娱乐设备、最具实力的好莱坞制作团队，成就最奇幻的飞翔之旅、最刺激的身心体验。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450162100729.png\"/>\n</div>', '飞跃美利坚', 'ddafeafbe3f948db9374bef42c3fee5b', '9UHZH36H');
INSERT INTO `mc_goodness` VALUES ('502de8b95c5a4ca49b8cb0ae7b7c40bb', 'SPOT', '<p class=\"topic-content__desc\">铁泉露天温泉康乐中心总占地面积12万平方米，露天水区共分为七大区域，分别有：动感区、休闲区、养生区、娱乐区、儿童区、水国迷城及冷暖水上欢乐世界，共有108个大小不一的温泉池、游泳池及娱乐池等。</p> \n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756574454.png\"/>\n</div>', '广东最大温泉仿海浪冲浪', '76746f2d2e3241fbbf70f992b07b9da6', 'PXPOMNFJ4');
INSERT INTO `mc_goodness` VALUES ('5e858731946c47478f6ce3d4d5a8bd7b', 'PLAY', '<p class=\"topic-content__desc\">铁泉黄金蒸气浴是利用天然纯正温泉之蒸汽汇聚于一体而形成，由铁元素和温热的水蒸汽共同刺激，引起皮肤血管的扩张，改善血液循环。</p> \n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756578873.png\"/>\n</div>', '全国独有的天然黄金蒸汽浴', '76746f2d2e3241fbbf70f992b07b9da6', 'PXPOMNFJ3');
INSERT INTO `mc_goodness` VALUES ('73210026d7cf469da31690315d46b984', 'PLAY', '<div class=\"topic-content__img\">\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764295658.png\"/>\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764301646.png\"/>\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764301998.png\"/>\n</div>', '古代南方丝绸之路，茶马古道', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ2');
INSERT INTO `mc_goodness` VALUES ('7401925cd8114422a57155bfccdf19e1', 'SPOT', '<p class=\"topic-content__desc\">于1806年拿破仑帝国时代，造型为罗马帝国凯旋门式，外形方正，构图简练，高48米多，全用白大理石雕砌，宏伟庄严，雄踞于巴黎雄狮广场中心。凯旋门前后两面的“马赛曲”等四组巨型雕像，精雕细刻，记录着1795年至1815年的法国战史，成为法国人民的精神象征。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161706907.png\"/>\n</div>', '巴黎凯旋门', 'ddafeafbe3f948db9374bef42c3fee5b', '3GJ8J9IR');
INSERT INTO `mc_goodness` VALUES ('7ab80855126a4eaa87fe2b0ffb66bd17', 'EAT', '<p class=\"topic-content__desc\">地址：深圳市南山区深南大道9028号益田假日广场L3层</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/QUERY/1450160638043.png\"/>\n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161471720.jpg\"/>\n</div>', '四海一家', 'ddafeafbe3f948db9374bef42c3fee5b', 'I45J9R22');
INSERT INTO `mc_goodness` VALUES ('804dda6811f3406fb29bbf6b63a58a67', 'EAT', '<p class=\"topic-content__desc\">面朝大海，品味美食，聆听海浪澎湃的声音，沐浴着怡人的海风，真是人生一大享受。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450151713723.jpg\"/>\n<img src=\"//112.74.208.184/images/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450151713544.jpg\"/> \n</div>', '美味烧烤', '8a75cc7459824e9891dfc23abb2804b1', 'MMYG7QSN');
INSERT INTO `mc_goodness` VALUES ('82a147eae23c4b67966b12abd1264b81', 'PLAY', '<p class=\"topic-content__desc\">中国最大的室内冰雪乐园，晶莹剔透的童话城堡，梦幻般的冰雪奇境。赏冰雕、看冰舞、堆雪人、打雪仗，玩冰嬉雪High翻天，尽享冰雪狂欢的乐趣。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450162297619.png\"/>\n<img src=\"//112.74.208.184/images/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450162270135.png\"/>\n</div>', '阿尔卑斯冰雪世界', 'ddafeafbe3f948db9374bef42c3fee5b', 'ZJHP3K51');
INSERT INTO `mc_goodness` VALUES ('838f540a9dd54da5be96d6ed860040a5', 'PLAY', '<p class=\"topic-content__desc\">古兜山蕴藏丰富的地热资源，广东省唯一一家同时拥有两种不同类型的温泉：海洋温泉（咸温泉），氡温泉（淡温泉）。在全国甚至全世界上也是奇迹，堪称世界一绝。</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755511827.png\"/>\n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755513090.png\"/>\n</div>', '咸、淡温泉', '37af4e25e95346ba89ec61ee0471eb75', '3BJAWKK4');
INSERT INTO `mc_goodness` VALUES ('8d99e9d018324fb2b5cbac1f41c77c39', 'SPOT', '<p class=\"topic-content__desc\">世界一流、全国首列无人驾驶的空中观光列车，全程3.88公里，匀速运行在华侨城旅游度假区的上空，带给你前所未有的视觉感受--沿途可以高空游览闻名遐迩的深圳欢乐谷、世界之窗、锦绣中华、中国民俗文化村和深圳湾畔美景。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765182343.png\"/> \n</div>', '欢乐干线', 'a9e7808e176b428fa79a3cae4142d8ec', 'DSLLTLLL1');
INSERT INTO `mc_goodness` VALUES ('9811be473e0d453b8695757d5e3a58e3', 'PLAY', '<p class=\"topic-content__desc\">位于景区“铁泉•卡丽斯国际会议中心”首层接待大堂内，环境豪华舒适，供应各类饮品和鲜榨果汁、现制咖啡等，是游客小息、闲谈沟通的最佳场所。</p> \n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756578248.png\"/>\n <img src=\"//112.74.208.184/images/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756577525.png\"/>\n</div>', '全国独有的珍稀黄金汤泉', '76746f2d2e3241fbbf70f992b07b9da6', 'PXPOMNFJ2');
INSERT INTO `mc_goodness` VALUES ('98821b8671da47ed83cd360c816919fe', 'EAT', '<p class=\"topic-content__desc\">潺潺溪流边，傣家少女轻歌曼舞，对面的食街飘来阵阵清香，空气中充满了南国水果和特色美食的气息。泼水粑粑、过桥米线、竹筒饭……能不让人嘴馋吗？</p>', '傣寨风味食街', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ6');
INSERT INTO `mc_goodness` VALUES ('9d1e386095824d7ea245e80da77efe2c', 'EAT', '<p class=\"topic-content__desc\">古兜山泉水世界南面的竹苑烧烤场，绿竹婆娑，流泉急湍，习习清风，潺潺流水声，环境极之优美，是游客野炊的最佳场所。</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755523749.png\"/>\n</div>', '竹苑烧烤场', '37af4e25e95346ba89ec61ee0471eb75', '3BJAWKm1');
INSERT INTO `mc_goodness` VALUES ('9db4c24cf0184d3e8c57a628322b3409', 'SPOT', '<p class=\"topic-content__desc\">情人岛有着另外一种不一样的美景，四周礁石围绕景色迷人，岛边珊瑚礁清晰可看，一群一群的鱼儿自由自在的环绕在珊瑚礁上。登岛后，如有兴趣也可参加潜水活动。海底潜水：配备有专业的设施及教练，根据游客的身体条件进行深度潜水，氧气正常使用时间约为1小时，潜水人员免费快艇接送。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450151095263.jpg\"/>\n</div>', '梦幻情人岛', '8a75cc7459824e9891dfc23abb2804b1', 'GPEFPEMGG');
INSERT INTO `mc_goodness` VALUES ('a1a2185baf8d4c68b6258bbe351d12ea', 'EAT', '<p class=\"topic-content__desc\">荟萃餐饮百年老店，传奇中华特色美食。富春楼、狗不理、潮皇轩、杏花村、锦记鱼翅捞饭……，让您在欣赏美景之余感受中国美食文化的博大精深。</p>', '锦园食府', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ6');
INSERT INTO `mc_goodness` VALUES ('a5c1571c739746728d9681d38ea123e8', 'EAT', '<p class=\"topic-content__desc\">云中部落，快餐、自助餐、商务小炒</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450755017516.jpg\"/> \n<img src=\"//112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450755019396.png\"/> \n</div>', '云中餐厅', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'ZPY5Z3WC');
INSERT INTO `mc_goodness` VALUES ('ac627664dcc846bb8ca5e822d3344013', 'PLAY', '<p class=\"topic-content__desc\">位于温泉谷氡温泉区，，“艾儿鱼”是美肤专家，不仅能在高达42度的温泉水中存活，还会亲密地依偎在人的周围，帮您全身推拿按摩，为您啃去人体老化的皮质、毛孔里面堵塞的细菌和汗渍，使您身轻体健、通体舒泰，从而达到美肤养颜、延年益寿的神奇功效。</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755513219.png\"/>\n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755515344.png\"/>\n</div>', '情趣鱼疗', '37af4e25e95346ba89ec61ee0471eb75', '3BJAWKK6');
INSERT INTO `mc_goodness` VALUES ('ae57a49a003d48c8a37ac96843542e93', 'SPOT', '<p class=\"topic-content__desc\">尽情的享受这蓝天、白云、沙滩、海洋吧，感受大海的胸怀与力量。所有的烦恼和疲惫在这一刻通通都抛掉，你可以拾贝、嬉戏、玩水、美美的拍照，还可以约上三五好友玩沙滩排球，沙滩足球</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148099333.jpg\"/> \n</div>', '海滨浴场', '8a75cc7459824e9891dfc23abb2804b1', 'GPEFPEMF');
INSERT INTO `mc_goodness` VALUES ('af356d616afd463facc9b86e6f09818a', 'SPOT', '<p class=\"topic-content__desc\">骑在马背上对屏幕中的敌人进行射击，一展神勇骑警的不凡风姿。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765191309.png\"/> \n</div>', '骑警训练营', 'a9e7808e176b428fa79a3cae4142d8ec', 'DSLLTLLL12');
INSERT INTO `mc_goodness` VALUES ('b127ee0836e1472e89066e4149a0ff36', 'EAT', '<p class=\"topic-content__desc\">位于景区“铁泉•卡丽斯国际会议中心”首层接待大堂内，环境豪华舒适，供应各类饮品和鲜榨果汁、现制咖啡等，是游客小息、闲谈沟通的最佳场所。</p> \n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756574242.jpg\"/>\n</div>', '大堂“海心吧”', '76746f2d2e3241fbbf70f992b07b9da6', 'PXPOMNFJ1');
INSERT INTO `mc_goodness` VALUES ('b6d69503abfb4158893438bd7e6093a3', 'EAT', '<p class=\"topic-content__desc\">凉菜、拉面、包点、陕西小吃、饼类、水饺、粥。</p>', '面点王', 'a9e7808e176b428fa79a3cae4142d8ec', '3QQ43IBC');
INSERT INTO `mc_goodness` VALUES ('b75477d013b5436cb6c0456a008215ee', 'PLAY', '<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758093416.png\"/>\n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758095167.png\"/>\n</div>', '石板浴及按摩保健', 'ff809171fbb94259bf8d75557522292f', 'PXPOMNFJ7');
INSERT INTO `mc_goodness` VALUES ('bfe897d6741942f68d7860c692cba3f8', 'EAT', '<p class=\"topic-content__desc\">碧水湾度假村内有荔香园、丽景阁、小吃广场几家餐厅可选择，以粤菜及从化当地特色菜为主，菜式选择较多，出品不错。周边也有很多农庄餐厅，皆以吃从化地道菜式为主。</p>\n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758079012.png\"/>\n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758084713.png\"/>\n</div>', '荔香园、丽景阁、小吃广场', 'ff809171fbb94259bf8d75557522292f', 'PXPOMNFJ12');
INSERT INTO `mc_goodness` VALUES ('ce16331e6cbe41169837eebdb9257851', 'PLAY', '<p class=\"topic-content__desc\">古兜温泉谷内建有占地10万平方米，由唐式、欧式、日式三大温泉区，和古兜水疗会等服务配套设施组成的温泉谷。打造广东温泉行业最雍容华贵，功能最完善的温泉休闲养生服务区和奢华享受的温泉主题区。</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755490046.png\"/>\n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755491907.png\"/>\n<img src=\"//112.74.208.184/images/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755496939.png\"/>\n</div>', '古兜温泉谷', '37af4e25e95346ba89ec61ee0471eb75', '3BJAWKK3');
INSERT INTO `mc_goodness` VALUES ('cfaf06883bb7411d81ef43b1f884807b', 'SPOT', '<div class=\"topic-content__img\">\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764299816.png\"/>\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764305554.png\"/>\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764304806.png\"/>\n</div>', '民俗村寨', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ');
INSERT INTO `mc_goodness` VALUES ('d3d5e0d4a015483b9ed3588faf2049ee', 'PLAY', '<p class=\"topic-content__desc\">乘快艇出海，感受乘风破浪、船行大海的感觉，并登上西冲最有标志性的岛屿——赖氏洲情人岛。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450150880918.jpg\"/>\n<img src=\"//112.74.208.184/images/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450150884120.jpg\"/> \n</div>', '快艇出海', '8a75cc7459824e9891dfc23abb2804b1', 'GPEFPEMF');
INSERT INTO `mc_goodness` VALUES ('d8a8fb3dde5143cb8a9531fecf8884ac', 'EAT', '<p class=\"topic-content__desc\">“天一阁”餐厅中国民俗文化村园内最大的餐厅，拥有120多张围台，可一次性接待1400多人同时就餐，并设有供数十人专享的豪华包房8间。本餐厅以云南特色菜系为主，荟萃滇、川、湘、粤等多个地方精品菜系，款款有特色，样样上品味，让您置身浓郁的民族情调，细品难忘的民族美食。</p>', '天一阁餐厅', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ4');
INSERT INTO `mc_goodness` VALUES ('db4daeee733c4276a191bfe5c262e202', 'EAT', '<p class=\"topic-content__desc\">全球连锁餐厅；汉堡、鸡腿、甜点、饮料、套餐、早餐、下午茶。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765172837.png\"/> \n</div>', '肯德鸡', 'a9e7808e176b428fa79a3cae4142d8ec', '3QQ43IBC1');
INSERT INTO `mc_goodness` VALUES ('e0d762c14967412db1ab7bc7b1ca43a4', 'PLAY', '<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758069560.png\"/>\n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758072844.png\"/>\n</div>', 'KTV娱乐', 'ff809171fbb94259bf8d75557522292f', 'PXPOMNFJ10');
INSERT INTO `mc_goodness` VALUES ('e4ddf79ac01348beb560ebd3ae08ea2c', 'SPOT', '<p class=\"topic-content__desc\">小朋友化身消防员，接受专业灭火训练。依靠智慧和勇气，齐心合力扑灭熊熊火焰，成为救火小英雄。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765182425.png\"/> \n</div>', '模拟消防队', 'a9e7808e176b428fa79a3cae4142d8ec', 'DSLLTLLL13');
INSERT INTO `mc_goodness` VALUES ('ea2b4456d4d44a4d981c8f29a623e70a', 'SPOT', '<p class=\"topic-content__desc\">红色的玫瑰花瓣洒满温泉池中，氛围使人心旷神怡。玫瑰花富含维生素及单宁酸，能改善内分泌失调，并有助于促进血液循环。沐浴玫瑰花瓣温泉池能让您的容颜白里透红，保持青春美丽。</p> \n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758095923.png\"/>\n</div>', '药浴温泉之四味养生池', 'ff809171fbb94259bf8d75557522292f', 'PXPOMNFJ3');
INSERT INTO `mc_goodness` VALUES ('edf40339d231427caf5a54c3bc336abf', 'SPOT', '<div class=\"topic-content__img\">\n<img src=\"//112.74.208.184/images/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764307629.png\"/>\n</div>', '情侣圣地，锦绣花园', 'dadb43fdd1bb418d867ba930a67d9301', 'SIUNWCAQ3');
INSERT INTO `mc_goodness` VALUES ('f2fe2246d2f7469397e6635d704b26df', 'SPOT', '<p class=\"topic-content__desc\">大华兴寺处于三洲田之地。三洲田，得名来源于佛教经典，取自观音菩萨护法韦陀镇守东圣神洲，西牛贺洲，南瞻部洲三大洲之意。三洲田有一座山头，传说每年立春至清明七年，观音菩萨都会降临此山，闭关修行，故取名观音山。观音山状如莲心，被四面山水簇拥，后人为恭敬菩萨，修铸了一座四面观音金像，得名\"观音坐莲\"。每年菩萨修行期间，观音山云雾缭绕，与世隔绝，有如人间仙境，人们称此境为\"天禅圣境\"。</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754627081.png\"/> \n<img src=\"//112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754623067.png\"/> \n<img src=\"//112.74.208.184/images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754620712.png\"/> \n</div>', '大华兴寺', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'JM2CJJZB');
INSERT INTO `mc_goodness` VALUES ('f479b2291fb04220b94734ab7ed2c2ea', 'PLAY', '<p class=\"topic-content__desc\">乘坐蚂蚁过山车上，于轨道最高处高速滑下，感受瞬间俯冲的刺激与惊险。</p>\n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184/images/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765194602.png\"/> \n</div>', '蚁兵特工队', 'a9e7808e176b428fa79a3cae4142d8ec', 'DSLLTLLL15');
INSERT INTO `mc_goodness` VALUES ('f9b950e776314471959e949d8260b761', 'EAT', '<p class=\"topic-content__desc\">营业面积3800㎡，可同时容纳2000人用餐，饭店设有早餐、中餐、晚餐、宵夜和烧烤，经营菜肴以客家乡村健康菜式为主，加入主流粤菜菜肴，以满足不同客人的口味。\n铁泉特色菜式：客家八大碗、三黄胡须鸡、龙门西溪笋、龙门鲣鱼、山坑螺、瑶家山乡风味宴、南昆山观音菜等。</p> \n<div class=\"topic-content__img\"> \n <img src=\"//112.74.208.184/images/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756591464.jpg\"/>\n</div>', '铁泉国际大饭店', '76746f2d2e3241fbbf70f992b07b9da6', 'PXPOMNFJ');
INSERT INTO `mc_goodness` VALUES ('fb869f53af6342caad5991e0931d43a5', 'PLAY', '<p class=\"topic-content__desc\">亚洲第二座木质过山车，穿梭在山坡与山谷之间，可以欣赏到大梅沙美丽的自然风光哦，最大落差40米，超级刺激~</p> \n<div class=\"topic-content__img\"> \n<img src=\"//112.74.208.184//images/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450753735841.png\"/> \n</div>', '木质过山车', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'I8L599ZB');

-- ----------------------------
-- Table structure for `mc_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `mc_hotel`;
CREATE TABLE `mc_hotel` (
  `hotel_id` varchar(40) NOT NULL DEFAULT '',
  `room_type` varchar(255) DEFAULT NULL COMMENT '房间类型',
  `bed_type` varchar(255) DEFAULT NULL COMMENT '床类型',
  `name` varchar(300) DEFAULT NULL,
  `description` text,
  `address` text,
  `image_url` varchar(1024) DEFAULT NULL,
  `hotel_code` varchar(60) DEFAULT NULL,
  `rate_plan_code` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_hotel
-- ----------------------------
INSERT INTO `mc_hotel` VALUES ('1470321-8292225', '高级大床房', '大床', '深圳途家斯维登度假公寓', '高级大床房-大床-无早-宽带免费', '深圳 盐田区 大梅沙东部华侨城侧上成路20号东部华庭小区B栋 ，仅闲云路与上成路交汇处。', '', '1470321', '8292225');
INSERT INTO `mc_hotel` VALUES ('397462-9399767', '高级大床房', '大床', '深圳东部华侨城瀑布酒店 ', '高级大床房-大床-双早-宽带免费', '深圳 盐田区 大梅沙东部华侨城大侠谷 ，近东部华侨城大峡谷景区。', null, '397462', '9399767');
INSERT INTO `mc_hotel` VALUES ('533870-130147', '商务大床房', '大床', '深圳景田酒店', '商务大床房-大床-双早-宽带免费', '', '', '533870', '130147');
INSERT INTO `mc_hotel` VALUES ('533870-18186', '豪华双床房', '双床', '深圳景田酒店', '豪华双床房-双床-双早-宽带免费', '', '', '533870', '18186');
INSERT INTO `mc_hotel` VALUES ('533870-606195', '豪华大床房', '大床', '深圳景田酒店', '豪华大床房-大床-双早-宽带免费', '', '', '533870', '606195');
INSERT INTO `mc_hotel` VALUES ('926937-18004627', '标准单人房', '大床', '深圳中天美景大酒店', '标准单人房-大床-无早餐-宽带免费', '', '', '926937', '17920607');
INSERT INTO `mc_hotel` VALUES ('926937-5217618', '豪华大床房', '大床', '深圳中天美景大酒店', '豪华大床房-大床-无早餐-宽带免费', '', '', '926937', '5217618');

-- ----------------------------
-- Table structure for `mc_hotel_price`
-- ----------------------------
DROP TABLE IF EXISTS `mc_hotel_price`;
CREATE TABLE `mc_hotel_price` (
  `hotel_price_id` varchar(40) NOT NULL DEFAULT '',
  `hotel_id` varchar(40) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `meals_included` varchar(30) DEFAULT NULL,
  `number_of_breakfast` int(11) DEFAULT NULL,
  `market_price` varchar(60) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`hotel_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_hotel_price
-- ----------------------------
INSERT INTO `mc_hotel_price` VALUES ('0115bdbc8e234278a3f6908bdc7bde51', '533870-606195', '428.00', '2015', '12', '26', 'true', '2', '1357.00', '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('032103fdeae24b99a6f4f465d95e3d5f', '533870-130147', '428.00', '2016', '1', '22', 'true', '2', '1357.00', '2016-01-22');
INSERT INTO `mc_hotel_price` VALUES ('0333969a615c4b3483511899a28ca610', '926937-5217618', '360.00', '2016', '1', '3', 'false', '0', '838.00', '2016-01-03');
INSERT INTO `mc_hotel_price` VALUES ('0432f59ab1164bc094f0d0035aed5c4e', '1470321-8292225', '238.00', '2015', '12', '23', 'false', '0', '688.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('05612f07342244a08a15fea92c948068', '1470321-8292225', '238.00', '2016', '1', '24', 'false', '0', '688.00', '2016-01-24');
INSERT INTO `mc_hotel_price` VALUES ('08eb73240fea4eb7ab3118f8a91d7ef8', '533870-130147', '428.00', '2015', '12', '28', 'true', '2', '1357.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('09b7959b99fc4bcf90ebbff55634d2bf', '533870-130147', '428.00', '2016', '1', '17', 'true', '2', '1357.00', '2016-01-17');
INSERT INTO `mc_hotel_price` VALUES ('0a49162b0b5d441792a0d385d7fcf422', '1470321-8292225', '368.00', '2015', '12', '26', 'false', '0', '688.00', '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('0d72999c1600448ea90961225a82137e', '1470321-8292225', '238.00', '2015', '12', '16', 'false', '0', '688.00', '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('0ea4c154060f406583648f6416f36da1', '926937-5217618', '360.00', '2016', '1', '16', 'false', '0', '838.00', '2016-01-16');
INSERT INTO `mc_hotel_price` VALUES ('105fb8c88ecc44c28d8bd31b1067c185', '533870-606195', '398.00', '2016', '2', '1', 'true', '2', '1357.00', '2016-02-01');
INSERT INTO `mc_hotel_price` VALUES ('10b0ae741f3c47c4a85cbce98a7df48e', '533870-130147', '428.00', '2016', '1', '25', 'true', '2', '1357.00', '2016-01-25');
INSERT INTO `mc_hotel_price` VALUES ('113da474645e4102a9b338d5f22f8f9a', '1470321-8292225', '238.00', '2015', '12', '17', 'false', '0', '688.00', '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('114bda614a964036941d63ce9bcf4cbf', '926937-5217618', '360.00', '2016', '1', '23', 'false', '0', '838.00', '2016-01-23');
INSERT INTO `mc_hotel_price` VALUES ('12f10894f1a04f7eb5dde7d215322173', '533870-130147', '428.00', '2016', '2', '3', 'true', '2', '1357.00', '2016-02-03');
INSERT INTO `mc_hotel_price` VALUES ('13988e345a224498a0d27558a78eb1e8', '926937-18004627', '222.00', '2016', '1', '18', 'false', '0', null, '2016-01-18');
INSERT INTO `mc_hotel_price` VALUES ('1436649af1bc48b6beca95c2b3e32137', '397462-9399767', '670.00', '2016', '1', '27', 'true', '2', '1600.00', '2016-01-27');
INSERT INTO `mc_hotel_price` VALUES ('14f48d7ea0114a32b4e9fd688975aa91', '533870-18186', '428.00', '2015', '12', '20', 'true', '2', '1357.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('150993d084784980811413a78eb8cca4', '533870-130147', '428.00', '2016', '1', '14', 'true', '2', '1357.00', '2016-01-14');
INSERT INTO `mc_hotel_price` VALUES ('151ba248bd744a1880abaacb8d1fa13a', '533870-130147', '428.00', '2016', '1', '13', 'true', '2', '1357.00', '2016-01-13');
INSERT INTO `mc_hotel_price` VALUES ('15768d99c4d74a01b00001706386dac6', '1470321-8292225', '688.00', '2016', '1', '3', 'false', '0', '688.00', '2016-01-03');
INSERT INTO `mc_hotel_price` VALUES ('16fde670d1f4466ebda13001695c7364', '533870-606195', '428.00', '2015', '12', '29', 'true', '2', '1357.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('183efeb6c273462286269c08318fda6e', '1470321-8292225', '238.00', '2016', '1', '20', 'false', '0', '688.00', '2016-01-20');
INSERT INTO `mc_hotel_price` VALUES ('1868fb7489f64f01b73386bcd8415177', '533870-18186', '398.00', '2016', '1', '3', 'true', '2', '1357.00', '2016-01-03');
INSERT INTO `mc_hotel_price` VALUES ('189baad5ec254af39f741cbbaf73640b', '926937-5217618', '360.00', '2016', '1', '24', 'false', '0', '838.00', '2016-01-24');
INSERT INTO `mc_hotel_price` VALUES ('18fff65f50204231a45639bde9a9c3ec', '926937-18004627', '223.00', '2015', '12', '14', 'false', '0', null, '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('196f26477e064accb8568cc614281efc', '1470321-8292225', '238.00', '2015', '12', '27', 'false', '0', '688.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('1991fe38fad54509bfe51ef8e4f01660', '533870-130147', '428.00', '2015', '12', '15', 'true', '2', '1357.00', '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('1be1f678ff944f38a9b8c4a50590092d', '926937-18004627', '281.00', '2016', '1', '7', 'false', '0', null, '2016-01-07');
INSERT INTO `mc_hotel_price` VALUES ('1c8dec50518145f2a476f66b6e083b3f', '926937-5217618', '360.00', '2015', '12', '21', 'false', '0', '838.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('1ca347ce99764399acdddb35222dc280', '533870-606195', '428.00', '2015', '12', '21', 'true', '2', '1357.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('1caafb6d181041ba903d4bcb1490ce51', '926937-18004627', '222.00', '2016', '1', '25', 'false', '0', null, '2016-01-25');
INSERT INTO `mc_hotel_price` VALUES ('1eddd0c14c464b529bc39352eed5b7d4', '926937-5217618', '381.00', '2016', '2', '4', 'false', '0', '838.00', '2016-02-04');
INSERT INTO `mc_hotel_price` VALUES ('1f046819d0ec4ed1b5d1b349e086c616', '926937-5217618', '360.00', '2016', '1', '28', 'false', '0', '838.00', '2016-01-28');
INSERT INTO `mc_hotel_price` VALUES ('1f294553b50944158b2e2d558591a544', '1470321-8292225', '238.00', '2016', '1', '4', 'false', '0', '688.00', '2016-01-04');
INSERT INTO `mc_hotel_price` VALUES ('1fbde235af2f4c279f898eaeed784998', '926937-18004627', '223.00', '2015', '12', '28', 'false', '0', null, '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('205a6e7ab696478d893e079421521920', '533870-18186', '398.00', '2016', '1', '22', 'true', '2', '1357.00', '2016-01-22');
INSERT INTO `mc_hotel_price` VALUES ('210493b78e6d435ebab54dddcf28400b', '926937-5217618', '360.00', '2016', '1', '20', 'false', '0', '838.00', '2016-01-20');
INSERT INTO `mc_hotel_price` VALUES ('2187af25bf8e437e97ed718fabb61e7e', '533870-606195', '398.00', '2016', '1', '11', 'true', '2', '1357.00', '2016-01-11');
INSERT INTO `mc_hotel_price` VALUES ('222e901f63f04ab99b8fe0571377952f', '926937-5217618', '360.00', '2015', '12', '31', 'false', '0', '838.00', '2015-12-31');
INSERT INTO `mc_hotel_price` VALUES ('240f66f84f39473da197f3c67572e2dd', '926937-18004627', '223.00', '2015', '12', '20', 'false', '0', null, '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('247d0ab6fc564433abe0a28ff6d61410', '533870-18186', '428.00', '2015', '12', '18', 'true', '2', '1357.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('266db929fa3c4197ad62fe8a50c78b1d', '397462-9399767', '662.00', '2016', '2', '4', 'true', '2', '1600.00', '2016-02-04');
INSERT INTO `mc_hotel_price` VALUES ('27cf7c9ca5d64df688ed2e96dfc5c808', '533870-18186', '398.00', '2016', '1', '19', 'true', '2', '1357.00', '2016-01-19');
INSERT INTO `mc_hotel_price` VALUES ('27d66695668745f0913bef20f38e3aed', '926937-18004627', '222.00', '2016', '1', '4', 'false', '0', null, '2016-01-04');
INSERT INTO `mc_hotel_price` VALUES ('28bc10ef8df6427694e5222dd085884c', '926937-18004627', '223.00', '2015', '12', '17', 'false', '0', null, '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('299e4c70e5f84c34b6838a5826f6ef5a', '1470321-8292225', '368.00', '2016', '1', '8', 'false', '0', '688.00', '2016-01-08');
INSERT INTO `mc_hotel_price` VALUES ('2b9af462226d48ed910add4b3a00e0ec', '533870-130147', '428.00', '2016', '1', '24', 'true', '2', '1357.00', '2016-01-24');
INSERT INTO `mc_hotel_price` VALUES ('2dfd0e2be77f44498a9c3c7f83096947', '926937-18004627', '223.00', '2015', '12', '16', 'false', '0', null, '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('2f4413ef84624a58a0d94548a9059d43', '533870-18186', '428.00', '2015', '12', '21', 'true', '2', '1357.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('2f75fdc0f45d403eb7de3b91aa25b948', '533870-130147', '428.00', '2015', '12', '26', 'true', '2', '1357.00', '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('2fcd3d94f88749bdbe355b17a81ad073', '926937-18004627', '222.00', '2016', '1', '13', 'false', '0', null, '2016-01-13');
INSERT INTO `mc_hotel_price` VALUES ('30a563c114b14720a70c03296e64f366', '926937-5217618', '360.00', '2016', '1', '14', 'false', '0', '838.00', '2016-01-14');
INSERT INTO `mc_hotel_price` VALUES ('30fe0e349a4042ed998ff309145e9526', '1470321-8292225', '238.00', '2016', '1', '28', 'false', '0', '688.00', '2016-01-28');
INSERT INTO `mc_hotel_price` VALUES ('32347d0d966443f4b4ed600fdacf4b99', '1470321-8292225', '238.00', '2016', '1', '7', 'false', '0', '688.00', '2016-01-07');
INSERT INTO `mc_hotel_price` VALUES ('3241d45bc9c74fc9a6ffe8dee1240021', '926937-18004627', '222.00', '2016', '2', '3', 'false', '0', null, '2016-02-03');
INSERT INTO `mc_hotel_price` VALUES ('32662d80d3d54bb08dfd9610cb061590', '926937-18004627', '222.00', '2016', '1', '31', 'false', '0', null, '2016-01-31');
INSERT INTO `mc_hotel_price` VALUES ('32a01f9a29b04d82be66f727e078f2ff', '533870-130147', '428.00', '2016', '2', '1', 'true', '2', '1357.00', '2016-02-01');
INSERT INTO `mc_hotel_price` VALUES ('32e9938d76ee4380b54e4f89c0e3513b', '533870-18186', '398.00', '2016', '1', '16', 'true', '2', '1357.00', '2016-01-16');
INSERT INTO `mc_hotel_price` VALUES ('34265e50b5b84ba08e253f40a1665654', '533870-130147', '428.00', '2016', '1', '27', 'true', '2', '1357.00', '2016-01-27');
INSERT INTO `mc_hotel_price` VALUES ('36bb7d30b5674a74bbe78ba281c14329', '533870-130147', '428.00', '2016', '2', '4', 'true', '2', '1357.00', '2016-02-04');
INSERT INTO `mc_hotel_price` VALUES ('36d6e7a118ea43949e5537165bd214a7', '1470321-8292225', '368.00', '2016', '1', '29', 'false', '0', '688.00', '2016-01-29');
INSERT INTO `mc_hotel_price` VALUES ('36dbfc21537b40eab38cdacc42a266b1', '926937-18004627', '281.00', '2016', '1', '9', 'false', '0', null, '2016-01-09');
INSERT INTO `mc_hotel_price` VALUES ('372eb7ac678b4df4916cf9147fd563c8', '1470321-8292225', '238.00', '2016', '2', '4', 'false', '0', '688.00', '2016-02-04');
INSERT INTO `mc_hotel_price` VALUES ('37c7e6b37d6f48cea616628c27199f2b', '533870-130147', '428.00', '2016', '1', '12', 'true', '2', '1357.00', '2016-01-12');
INSERT INTO `mc_hotel_price` VALUES ('37fbfc9c1bd34a0d9b52f1e8796cd385', '397462-9399767', '670.00', '2016', '1', '20', 'true', '2', '1600.00', '2016-01-20');
INSERT INTO `mc_hotel_price` VALUES ('383a447e75e2471db080125c0dc2761c', '533870-18186', '398.00', '2016', '1', '27', 'true', '2', '1357.00', '2016-01-27');
INSERT INTO `mc_hotel_price` VALUES ('38c3bd8b0a7c4faabfdc7cbab863a7d8', '926937-5217618', '360.00', '2016', '1', '10', 'false', '0', '838.00', '2016-01-10');
INSERT INTO `mc_hotel_price` VALUES ('38e83b6def4a4b7c97c8bbc9368314e1', '397462-9399767', '670.00', '2015', '12', '20', 'true', '2', '1600.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('39eda17ff4004ad9a4026d57fcdc4835', '926937-5217618', '381.00', '2016', '2', '3', 'false', '0', '838.00', '2016-02-03');
INSERT INTO `mc_hotel_price` VALUES ('3bb528bd179c4f4394409069e135311d', '533870-606195', '398.00', '2016', '1', '28', 'true', '2', '1357.00', '2016-01-28');
INSERT INTO `mc_hotel_price` VALUES ('3d2ac15b860f49baaccb73ab3beff122', '397462-9399767', '670.00', '2015', '12', '22', 'true', '2', '1600.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('3f17b9d4150a4ed1af068ea7e7a0d3b9', '926937-18004627', '222.00', '2016', '1', '6', 'false', '0', null, '2016-01-06');
INSERT INTO `mc_hotel_price` VALUES ('3fda0b98acbd430c8cf845f5bc310e09', '533870-130147', '428.00', '2015', '12', '27', 'true', '2', '1357.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('3fe854ebe88d4ee3b83ac70c3add95c6', '926937-5217618', '360.00', '2016', '1', '27', 'false', '0', '838.00', '2016-01-27');
INSERT INTO `mc_hotel_price` VALUES ('4190bc2ea7c24701a3efe34aa32826f4', '1470321-8292225', '238.00', '2016', '1', '31', 'false', '0', '688.00', '2016-01-31');
INSERT INTO `mc_hotel_price` VALUES ('422fa54959db41d191176ac0f1a9ac2d', '1470321-8292225', '368.00', '2016', '1', '22', 'false', '0', '688.00', '2016-01-22');
INSERT INTO `mc_hotel_price` VALUES ('42d6809a58d747128c1fff8df3701fc3', '926937-5217618', '360.00', '2015', '12', '19', 'false', '0', '838.00', '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('443e1f687af14c2eb0f3d4e7767611d3', '926937-18004627', '223.00', '2015', '12', '23', 'false', '0', null, '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('450161f4ac09482d9d2b8626d0f9d9f1', '533870-18186', '428.00', '2015', '12', '22', 'true', '2', '1357.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('454395f58a8e4c77af60b90222b6c43c', '926937-18004627', '222.00', '2016', '1', '21', 'false', '0', null, '2016-01-21');
INSERT INTO `mc_hotel_price` VALUES ('465b1501eeca473393bc8cac7b81eaa0', '1470321-8292225', '238.00', '2015', '12', '15', 'false', '0', '688.00', '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('467ee01c6b574247a0cd312f901b4435', '533870-130147', '428.00', '2016', '1', '15', 'true', '2', '1357.00', '2016-01-15');
INSERT INTO `mc_hotel_price` VALUES ('46e4c2abaec7488bbcd6a66ac377cf7d', '926937-18004627', '222.00', '2016', '1', '17', 'false', '0', null, '2016-01-17');
INSERT INTO `mc_hotel_price` VALUES ('471b21d7ef6e4053a4e47014e82ff8e7', '533870-18186', '398.00', '2016', '2', '4', 'true', '2', '1357.00', '2016-02-04');
INSERT INTO `mc_hotel_price` VALUES ('472f988097304b79a4cb7999764f76d0', '397462-9399767', '670.00', '2016', '1', '14', 'true', '2', '1600.00', '2016-01-14');
INSERT INTO `mc_hotel_price` VALUES ('475afd09355048a4960720670c4aec2e', '397462-9399767', '673.00', '2015', '12', '16', 'true', '2', '1600.00', '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('4791723052764517b059fb068dd0c427', '926937-18004627', '222.00', '2016', '1', '22', 'false', '0', null, '2016-01-22');
INSERT INTO `mc_hotel_price` VALUES ('488afe55aeb44fad88e3d25b3d6a209a', '926937-5217618', '360.00', '2015', '12', '28', 'false', '0', '838.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('4947c44c1b734bd98f38be6bb96e086d', '1470321-8292225', '238.00', '2016', '1', '17', 'false', '0', '688.00', '2016-01-17');
INSERT INTO `mc_hotel_price` VALUES ('4b4983a0ed664c63bbc5dd22b49006c5', '533870-18186', '398.00', '2016', '1', '15', 'true', '2', '1357.00', '2016-01-15');
INSERT INTO `mc_hotel_price` VALUES ('4b839f06c462410cbb54867f79f1c59d', '533870-130147', '428.00', '2016', '1', '16', 'true', '2', '1357.00', '2016-01-16');
INSERT INTO `mc_hotel_price` VALUES ('4bb13d70ca64452fb7e916b5c5184677', '533870-606195', '428.00', '2015', '12', '14', 'true', '2', '1357.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('4c67f438303541da8a7ccc13193a250b', '926937-5217618', '381.00', '2015', '12', '30', 'false', '0', '838.00', '2015-12-30');
INSERT INTO `mc_hotel_price` VALUES ('4e6985dc808449109d7f6b0ca336ff72', '533870-18186', '398.00', '2016', '1', '6', 'true', '2', '1357.00', '2016-01-06');
INSERT INTO `mc_hotel_price` VALUES ('4eed0cc7de8944f18d0390159ead923d', '397462-9399767', '1009.00', '2016', '1', '9', 'true', '2', '1600.00', '2016-01-09');
INSERT INTO `mc_hotel_price` VALUES ('4f120d17f6314031b1dcffe079e04aa3', '926937-18004627', '222.00', '2016', '1', '15', 'false', '0', null, '2016-01-15');
INSERT INTO `mc_hotel_price` VALUES ('4fc8f19f87a14665bd20c56d020b04f4', '533870-18186', '428.00', '2015', '12', '26', 'true', '2', '1357.00', '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('5020054ef72b463d96ef4ef1a35f7906', '1470321-8292225', '238.00', '2016', '1', '13', 'false', '0', '688.00', '2016-01-13');
INSERT INTO `mc_hotel_price` VALUES ('5064f757c4654dfea10d452ff5b25261', '533870-606195', '398.00', '2016', '2', '2', 'true', '2', '1357.00', '2016-02-02');
INSERT INTO `mc_hotel_price` VALUES ('5070348364ba4b6ba9436205e5e7716e', '397462-9399767', '670.00', '2016', '1', '19', 'true', '2', '1600.00', '2016-01-19');
INSERT INTO `mc_hotel_price` VALUES ('50f8df39431d4693bebf69854c716aaa', '926937-5217618', '360.00', '2015', '12', '16', 'false', '0', '838.00', '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('51c4131908874f88ba19b36a5f3cc3f6', '397462-9399767', '1009.00', '2016', '1', '29', 'true', '2', '1600.00', '2016-01-29');
INSERT INTO `mc_hotel_price` VALUES ('523b1c5788994449bf39e61c989b4f6e', '397462-9399767', '670.00', '2016', '1', '6', 'true', '2', '1600.00', '2016-01-06');
INSERT INTO `mc_hotel_price` VALUES ('53047e88ef284126a38d54f95ffd6ca7', '926937-5217618', '360.00', '2016', '1', '30', 'false', '0', '838.00', '2016-01-30');
INSERT INTO `mc_hotel_price` VALUES ('551193e265a046fd82597ff011ed07c2', '533870-606195', '398.00', '2016', '1', '19', 'true', '2', '1357.00', '2016-01-19');
INSERT INTO `mc_hotel_price` VALUES ('5648793c24884509b3cd54d5202de2a8', '397462-9399767', '998.00', '2015', '12', '18', 'true', '2', '1600.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('57818e40250e4f14ae6a292d434a2058', '533870-130147', '428.00', '2015', '12', '30', 'true', '2', '1357.00', '2015-12-30');
INSERT INTO `mc_hotel_price` VALUES ('579ff8122eb6439ca83464a9db6c1986', '1470321-8292225', '238.00', '2015', '12', '29', 'false', '0', '688.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('5801c2a62b6b415a9c819c0ea9486607', '533870-130147', '428.00', '2015', '12', '19', 'true', '2', '1357.00', '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('58fa8ccb19c64a74ad8bb890e1439380', '533870-606195', '398.00', '2016', '1', '10', 'true', '2', '1357.00', '2016-01-10');
INSERT INTO `mc_hotel_price` VALUES ('59cdbe75a75f4275853177eed8fb48af', '533870-130147', '428.00', '2015', '12', '24', 'true', '2', '1357.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('5aaaafa3f1664ec88bfee0421e457acd', '926937-18004627', '222.00', '2016', '1', '24', 'false', '0', null, '2016-01-24');
INSERT INTO `mc_hotel_price` VALUES ('5b803c3bde454ffa89a5d806917516aa', '397462-9399767', '670.00', '2015', '12', '27', 'true', '2', '1600.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('5cc9c3a08e854431942c202b85a28555', '1470321-8292225', '238.00', '2016', '1', '12', 'false', '0', '688.00', '2016-01-12');
INSERT INTO `mc_hotel_price` VALUES ('5cd80b7b0bba46c0b7cf16b5c2f61feb', '397462-9399767', '670.00', '2016', '1', '26', 'true', '2', '1600.00', '2016-01-26');
INSERT INTO `mc_hotel_price` VALUES ('5d3fb4f4aedf45e9b487ae7d70b3defb', '926937-18004627', '222.00', '2016', '1', '11', 'false', '0', null, '2016-01-11');
INSERT INTO `mc_hotel_price` VALUES ('5fadd7f76abf4c33a50d914ab3e15dce', '397462-9399767', '670.00', '2016', '1', '3', 'true', '2', '1600.00', '2016-01-03');
INSERT INTO `mc_hotel_price` VALUES ('6097052acc924ad2824fc2b51cfa2436', '533870-130147', '428.00', '2016', '1', '20', 'true', '2', '1357.00', '2016-01-20');
INSERT INTO `mc_hotel_price` VALUES ('6105a8014a604ba8a19312bb0863336b', '1470321-8292225', '368.00', '2016', '1', '23', 'false', '0', '688.00', '2016-01-23');
INSERT INTO `mc_hotel_price` VALUES ('63c6ccabfd54408db4f28b88d2d7118f', '533870-130147', '428.00', '2016', '1', '10', 'true', '2', '1357.00', '2016-01-10');
INSERT INTO `mc_hotel_price` VALUES ('6608252de81c4c38801f50cd444fb0c3', '1470321-8292225', '238.00', '2016', '2', '1', 'false', '0', '688.00', '2016-02-01');
INSERT INTO `mc_hotel_price` VALUES ('683dba5899974ff2b8bb556d179df2f2', '533870-130147', '428.00', '2016', '1', '5', 'true', '2', '1357.00', '2016-01-05');
INSERT INTO `mc_hotel_price` VALUES ('686cea68f17b41b1b1e68eedac87a304', '1470321-8292225', '368.00', '2016', '1', '9', 'false', '0', '688.00', '2016-01-09');
INSERT INTO `mc_hotel_price` VALUES ('689d7e6c2f704ca6b89f80e7831a7518', '533870-18186', '428.00', '2015', '12', '27', 'true', '2', '1357.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('68ca51afefc340a2a3b806106c9c7eee', '533870-130147', '428.00', '2016', '1', '3', 'true', '2', '1357.00', '2016-01-03');
INSERT INTO `mc_hotel_price` VALUES ('6b074fdf5a064dbf94dece568e594d6b', '1470321-8292225', '238.00', '2015', '12', '22', 'false', '0', '688.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('6b7e591066eb466c9bfe198e437dd7ee', '533870-606195', '398.00', '2016', '1', '23', 'true', '2', '1357.00', '2016-01-23');
INSERT INTO `mc_hotel_price` VALUES ('6cbe2f3504084fa59d111c4ba170b11c', '397462-9399767', '670.00', '2016', '1', '11', 'true', '2', '1600.00', '2016-01-11');
INSERT INTO `mc_hotel_price` VALUES ('6e9ea0f6442d4cf099be1b74493e636f', '533870-130147', '428.00', '2015', '12', '31', 'true', '2', '1357.00', '2015-12-31');
INSERT INTO `mc_hotel_price` VALUES ('6f439a21db3a4d459b534281d19a4fbb', '926937-5217618', '360.00', '2015', '12', '17', 'false', '0', '838.00', '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('6fa0a5f125504b40a60e12988a1da8ec', '533870-18186', '398.00', '2016', '1', '28', 'true', '2', '1357.00', '2016-01-28');
INSERT INTO `mc_hotel_price` VALUES ('70988166c9eb468289a28a610917aef9', '397462-9399767', '670.00', '2016', '1', '4', 'true', '2', '1600.00', '2016-01-04');
INSERT INTO `mc_hotel_price` VALUES ('70a434e23b7347649c456f276877be4f', '926937-5217618', '360.00', '2015', '12', '22', 'false', '0', '838.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('716e1a65d120402c8a71efa1275a4d09', '533870-18186', '428.00', '2015', '12', '15', 'true', '2', '1357.00', '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('71c4cdaa3cd7411281eb9efb9617df0e', '533870-18186', '428.00', '2015', '12', '30', 'true', '2', '1357.00', '2015-12-30');
INSERT INTO `mc_hotel_price` VALUES ('71c9c222c3d542908abf9dc5d133ffda', '533870-18186', '398.00', '2016', '1', '23', 'true', '2', '1357.00', '2016-01-23');
INSERT INTO `mc_hotel_price` VALUES ('734bf967852d4fa39d379a585b8029f3', '533870-606195', '428.00', '2015', '12', '24', 'true', '2', '1357.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('73d25219b25743c399cf621c5225298b', '1470321-8292225', '238.00', '2016', '1', '25', 'false', '0', '688.00', '2016-01-25');
INSERT INTO `mc_hotel_price` VALUES ('7407445d228541ae9bfcb1f36b6e8dbc', '533870-130147', '428.00', '2015', '12', '22', 'true', '2', '1357.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('743046bd3f5d4623be18e62cf42a9d41', '533870-18186', '398.00', '2016', '1', '29', 'true', '2', '1357.00', '2016-01-29');
INSERT INTO `mc_hotel_price` VALUES ('74311d74d31748b8a6e534454b9407dc', '533870-606195', '398.00', '2016', '1', '26', 'true', '2', '1357.00', '2016-01-26');
INSERT INTO `mc_hotel_price` VALUES ('749f29ae479543e1a3014a3272c32cd4', '533870-606195', '428.00', '2015', '12', '28', 'true', '2', '1357.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('74bc306865b04bd4a4f20a7f058de373', '533870-606195', '398.00', '2016', '1', '24', 'true', '2', '1357.00', '2016-01-24');
INSERT INTO `mc_hotel_price` VALUES ('75976adaa1df40bfb0ecf54ad8071652', '533870-18186', '398.00', '2016', '2', '3', 'true', '2', '1357.00', '2016-02-03');
INSERT INTO `mc_hotel_price` VALUES ('76ee1eccd5644b338742ad97cb6c32c5', '533870-606195', '398.00', '2016', '1', '3', 'true', '2', '1357.00', '2016-01-03');
INSERT INTO `mc_hotel_price` VALUES ('77bbd5889894493e875d2624b2f56fdd', '1470321-8292225', '368.00', '2015', '12', '19', 'false', '0', '688.00', '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('77bfc69409024e5bb34eace78ab7533d', '926937-18004627', '222.00', '2016', '1', '5', 'false', '0', null, '2016-01-05');
INSERT INTO `mc_hotel_price` VALUES ('780371f23112455180f95324abe16ed6', '533870-130147', '428.00', '2015', '12', '18', 'true', '2', '1357.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('781e3b1c573c4258a9ad4e12e3aa1b4e', '926937-5217618', '360.00', '2015', '12', '23', 'false', '0', '838.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('789783f9021d4915bdba9f4c47136585', '533870-18186', '428.00', '2015', '12', '31', 'true', '2', '1357.00', '2015-12-31');
INSERT INTO `mc_hotel_price` VALUES ('78c8fb2fa292436d93640f330c138075', '397462-9399767', '670.00', '2015', '12', '23', 'true', '2', '1600.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('791f50b49401416d93180544db94de89', '1470321-8292225', '368.00', '2015', '12', '18', 'false', '0', '688.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('7acfbf7495cb413284b5b49b7a906d1e', '533870-606195', '398.00', '2016', '1', '13', 'true', '2', '1357.00', '2016-01-13');
INSERT INTO `mc_hotel_price` VALUES ('7c1ee42da493420a885c9b5710306118', '397462-9399767', '670.00', '2016', '1', '31', 'true', '2', '1600.00', '2016-01-31');
INSERT INTO `mc_hotel_price` VALUES ('7d101f134ea14540931c080423e36bc5', '926937-5217618', '360.00', '2016', '1', '17', 'false', '0', '838.00', '2016-01-17');
INSERT INTO `mc_hotel_price` VALUES ('7d3291354dd24a859e9c628c8e038bc6', '533870-606195', '398.00', '2016', '1', '4', 'true', '2', '1357.00', '2016-01-04');
INSERT INTO `mc_hotel_price` VALUES ('7e840fd48eac4daa8dcd17fa0276b9aa', '397462-9399767', '670.00', '2016', '1', '17', 'true', '2', '1600.00', '2016-01-17');
INSERT INTO `mc_hotel_price` VALUES ('7fd40e8b07d740adb980ef8266b0c310', '533870-130147', '428.00', '2016', '1', '1', 'true', '2', '1357.00', '2016-01-01');
INSERT INTO `mc_hotel_price` VALUES ('7fda142b0d154ce3a85efbf44be7d0ba', '533870-130147', '428.00', '2016', '1', '18', 'true', '2', '1357.00', '2016-01-18');
INSERT INTO `mc_hotel_price` VALUES ('816ce8990bb64f5d89ca39d304f05dda', '397462-9399767', '669.00', '2015', '12', '30', 'true', '2', '1600.00', '2015-12-30');
INSERT INTO `mc_hotel_price` VALUES ('82ae886a8ff549309aec6506aebe3f44', '397462-9399767', '670.00', '2016', '1', '24', 'true', '2', '1600.00', '2016-01-24');
INSERT INTO `mc_hotel_price` VALUES ('834eb78e2b5045c0840294313486e958', '533870-130147', '428.00', '2016', '1', '21', 'true', '2', '1357.00', '2016-01-21');
INSERT INTO `mc_hotel_price` VALUES ('85289da17cce488bbd4d8c7ab29c6e9c', '533870-606195', '398.00', '2016', '1', '12', 'true', '2', '1357.00', '2016-01-12');
INSERT INTO `mc_hotel_price` VALUES ('85400ad7b32e4f5190502641afe7f5e9', '533870-606195', '398.00', '2016', '1', '15', 'true', '2', '1357.00', '2016-01-15');
INSERT INTO `mc_hotel_price` VALUES ('8614b80097d0411587ed0878c8bbfaf8', '926937-18004627', '223.00', '2015', '12', '22', 'false', '0', null, '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('869333c6c20645e9a81b69b21107c638', '533870-130147', '428.00', '2016', '1', '4', 'true', '2', '1357.00', '2016-01-04');
INSERT INTO `mc_hotel_price` VALUES ('870f2c080cd7422b8465b25fa34737eb', '397462-9399767', '662.00', '2016', '2', '3', 'true', '2', '1600.00', '2016-02-03');
INSERT INTO `mc_hotel_price` VALUES ('87c2f3298a804141a6651ee790390e03', '533870-18186', '398.00', '2016', '1', '17', 'true', '2', '1357.00', '2016-01-17');
INSERT INTO `mc_hotel_price` VALUES ('898fc09ff8054bd0b68212ced3104a3e', '533870-18186', '398.00', '2016', '1', '30', 'true', '2', '1357.00', '2016-01-30');
INSERT INTO `mc_hotel_price` VALUES ('899b283f03c54231aeab28fd613a73c4', '533870-606195', '428.00', '2015', '12', '23', 'true', '2', '1357.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('89db611177d04ef4a9a186a5fdc6fd1c', '397462-9399767', '669.00', '2015', '12', '29', 'true', '2', '1600.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('8a34fea9818349e382d69a4cd069566c', '533870-130147', '428.00', '2016', '1', '31', 'true', '2', '1357.00', '2016-01-31');
INSERT INTO `mc_hotel_price` VALUES ('8cca555f559c4681ad976236a79c7ed3', '533870-606195', '398.00', '2016', '1', '8', 'true', '2', '1357.00', '2016-01-08');
INSERT INTO `mc_hotel_price` VALUES ('8d9db159bb694681b0b72465fa7d5590', '926937-18004627', '222.00', '2016', '1', '30', 'false', '0', null, '2016-01-30');
INSERT INTO `mc_hotel_price` VALUES ('8e1d96c357a44a288e7d82d8d24d0057', '533870-606195', '398.00', '2016', '1', '14', 'true', '2', '1357.00', '2016-01-14');
INSERT INTO `mc_hotel_price` VALUES ('910f04c8ac3f4d97920de8da7daed878', '533870-606195', '398.00', '2016', '1', '27', 'true', '2', '1357.00', '2016-01-27');
INSERT INTO `mc_hotel_price` VALUES ('925efe18900545c7ad40d16bb53e64c0', '533870-18186', '398.00', '2016', '1', '8', 'true', '2', '1357.00', '2016-01-08');
INSERT INTO `mc_hotel_price` VALUES ('9338b53334004f269bd1ffd958e6a3ed', '926937-5217618', '360.00', '2016', '1', '12', 'false', '0', '838.00', '2016-01-12');
INSERT INTO `mc_hotel_price` VALUES ('935d9e13b6a94e22a9b313f37f169a2b', '926937-5217618', '360.00', '2016', '1', '13', 'false', '0', '838.00', '2016-01-13');
INSERT INTO `mc_hotel_price` VALUES ('936f52032a4c4cd482cbab6e53e50a50', '926937-18004627', '222.00', '2016', '2', '2', 'false', '0', null, '2016-02-02');
INSERT INTO `mc_hotel_price` VALUES ('940bf044fa974b3da00927630bd97482', '533870-18186', '398.00', '2016', '1', '25', 'true', '2', '1357.00', '2016-01-25');
INSERT INTO `mc_hotel_price` VALUES ('942cdb1a26dc43e68afa170b13fd6427', '926937-5217618', '360.00', '2016', '1', '18', 'false', '0', '838.00', '2016-01-18');
INSERT INTO `mc_hotel_price` VALUES ('961561f9397e40febc09f8b611b5db7b', '533870-130147', '428.00', '2015', '12', '23', 'true', '2', '1357.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('968f3e3e038040cfa6e5cc8bd2b1b2a2', '926937-5217618', '360.00', '2015', '12', '29', 'false', '0', '838.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('968fae51627643f5a71f29fa4125af8a', '533870-18186', '398.00', '2016', '1', '12', 'true', '2', '1357.00', '2016-01-12');
INSERT INTO `mc_hotel_price` VALUES ('97464b776c9f4e118e30783be1d767b0', '533870-130147', '428.00', '2016', '1', '30', 'true', '2', '1357.00', '2016-01-30');
INSERT INTO `mc_hotel_price` VALUES ('9908d7df4cf6477c9fdb7328c271e06b', '1470321-8292225', '238.00', '2015', '12', '20', 'false', '0', '688.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('991718333cbb4cc08fa86de7196f18ca', '926937-5217618', '360.00', '2015', '12', '18', 'false', '0', '838.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('9c053b9cc5fb45a085c21063b849c61a', '533870-130147', '428.00', '2016', '1', '26', 'true', '2', '1357.00', '2016-01-26');
INSERT INTO `mc_hotel_price` VALUES ('9c68f200bd4c4b77b32d1084b83a40b7', '926937-5217618', '360.00', '2016', '1', '11', 'false', '0', '838.00', '2016-01-11');
INSERT INTO `mc_hotel_price` VALUES ('9c93674fab3c4bca8e73e09dd006f22b', '533870-18186', '428.00', '2015', '12', '24', 'true', '2', '1357.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('9d2da4b0a17a4a109c2cfa2093950c76', '533870-606195', '428.00', '2015', '12', '20', 'true', '2', '1357.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('9d3f3f2eb3064b89b9481ac2fb3b1971', '397462-9399767', '670.00', '2016', '1', '13', 'true', '2', '1600.00', '2016-01-13');
INSERT INTO `mc_hotel_price` VALUES ('9e377d03cf3645a3bee7e2928f2633ff', '926937-18004627', '223.00', '2015', '12', '15', 'false', '0', null, '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('9eb4af45e5d544de975cb87b98532100', '1470321-8292225', '238.00', '2016', '1', '11', 'false', '0', '688.00', '2016-01-11');
INSERT INTO `mc_hotel_price` VALUES ('9f6ea0cbf54d4710a59cd5f6d0cce436', '397462-9399767', '670.00', '2016', '1', '25', 'true', '2', '1600.00', '2016-01-25');
INSERT INTO `mc_hotel_price` VALUES ('a33b96e92df54291a63e1bc761cf2dd8', '926937-5217618', '360.00', '2015', '12', '20', 'false', '0', '838.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('a39a4843d0184f87a40038d6e9f18704', '533870-606195', '428.00', '2015', '12', '25', 'true', '2', '1357.00', '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('a3ada2145c1c49b4a62dae38777b154e', '1470321-8292225', '238.00', '2016', '1', '27', 'false', '0', '688.00', '2016-01-27');
INSERT INTO `mc_hotel_price` VALUES ('a3ddd5ca36064d07aed5996b9e3ed71f', '533870-606195', '428.00', '2015', '12', '30', 'true', '2', '1357.00', '2015-12-30');
INSERT INTO `mc_hotel_price` VALUES ('a4943d17ad8a46418bfd3d3a30cbfc27', '926937-18004627', '222.00', '2016', '1', '19', 'false', '0', null, '2016-01-19');
INSERT INTO `mc_hotel_price` VALUES ('a4dbc7d36f514b6293c2be2e1d60a747', '533870-606195', '398.00', '2016', '1', '2', 'true', '2', '1357.00', '2016-01-02');
INSERT INTO `mc_hotel_price` VALUES ('a64f8be5b0c74b90969763ae6aa4d1c5', '926937-18004627', '222.00', '2016', '1', '20', 'false', '0', null, '2016-01-20');
INSERT INTO `mc_hotel_price` VALUES ('a7f991e965a9441bb18d97dddd548a48', '926937-5217618', '360.00', '2016', '1', '6', 'false', '0', '838.00', '2016-01-06');
INSERT INTO `mc_hotel_price` VALUES ('a811739fa0664d38a77c273ce33ba980', '926937-5217618', '360.00', '2016', '1', '29', 'false', '0', '838.00', '2016-01-29');
INSERT INTO `mc_hotel_price` VALUES ('a85fa636d1f846bdb25dde5ae1626ad5', '397462-9399767', '670.00', '2016', '1', '21', 'true', '2', '1600.00', '2016-01-21');
INSERT INTO `mc_hotel_price` VALUES ('aa00cec568bb4276a2a9fe538bd2f585', '397462-9399767', '1009.00', '2015', '12', '24', 'true', '2', '1600.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('aa74efeacd204f07a76da3f448b72b06', '926937-18004627', '222.00', '2016', '1', '29', 'false', '0', null, '2016-01-29');
INSERT INTO `mc_hotel_price` VALUES ('aae687b180534a0e95e31ee70555897b', '926937-5217618', '360.00', '2015', '12', '27', 'false', '0', '838.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('ab2cccc476074b85a64e826dd19a5a42', '533870-130147', '428.00', '2016', '1', '6', 'true', '2', '1357.00', '2016-01-06');
INSERT INTO `mc_hotel_price` VALUES ('ac4cef980b6a46749682643df193e277', '926937-5217618', '360.00', '2016', '1', '21', 'false', '0', '838.00', '2016-01-21');
INSERT INTO `mc_hotel_price` VALUES ('ad535e6fa04149d69933d4951bc8bc9f', '1470321-8292225', '238.00', '2015', '12', '21', 'false', '0', '688.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('b018923370154f0eb038e44db766afae', '926937-18004627', '222.00', '2016', '1', '26', 'false', '0', null, '2016-01-26');
INSERT INTO `mc_hotel_price` VALUES ('b05f93c018ab42ba9676d96f872997bd', '926937-18004627', '223.00', '2015', '12', '27', 'false', '0', null, '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('b06890ee058644b48c800e64fc7c9dfe', '533870-130147', '428.00', '2016', '1', '11', 'true', '2', '1357.00', '2016-01-11');
INSERT INTO `mc_hotel_price` VALUES ('b22a99c52b0a42f693efec90330e8c83', '926937-18004627', '281.00', '2016', '1', '8', 'false', '0', null, '2016-01-08');
INSERT INTO `mc_hotel_price` VALUES ('b28c3df5429f4301bb30a3b37d257d5f', '926937-18004627', '222.00', '2016', '1', '10', 'false', '0', null, '2016-01-10');
INSERT INTO `mc_hotel_price` VALUES ('b293b8d15e9e43feb5fc66f3a28c68aa', '533870-606195', '398.00', '2016', '2', '4', 'true', '2', '1357.00', '2016-02-04');
INSERT INTO `mc_hotel_price` VALUES ('b322fc832ec3455ea773e64fa01b44d2', '397462-9399767', '670.00', '2016', '1', '12', 'true', '2', '1600.00', '2016-01-12');
INSERT INTO `mc_hotel_price` VALUES ('b33185840f4b4744bae183e99c1659b5', '397462-9399767', '1009.00', '2016', '1', '30', 'true', '2', '1600.00', '2016-01-30');
INSERT INTO `mc_hotel_price` VALUES ('b40d707fa6e04f2aaa495f7473c8792c', '926937-18004627', '222.00', '2015', '12', '30', 'false', '0', null, '2015-12-30');
INSERT INTO `mc_hotel_price` VALUES ('b6035bdee8d242d8abffaaa8f4e14590', '533870-606195', '398.00', '2016', '1', '22', 'true', '2', '1357.00', '2016-01-22');
INSERT INTO `mc_hotel_price` VALUES ('b63bfc6b4a5d4e1f8442dafda9ca6970', '397462-9399767', '1009.00', '2016', '1', '16', 'true', '2', '1600.00', '2016-01-16');
INSERT INTO `mc_hotel_price` VALUES ('b66b9e82146a49139f79f71e91157d88', '1470321-8292225', '368.00', '2016', '1', '30', 'false', '0', '688.00', '2016-01-30');
INSERT INTO `mc_hotel_price` VALUES ('b705a5e2eb534c0fb2be06e4b0858ac1', '926937-5217618', '360.00', '2015', '12', '14', 'false', '0', '838.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('b82c605b806e4440ad5041b6cd17f3ac', '533870-18186', '398.00', '2016', '1', '13', 'true', '2', '1357.00', '2016-01-13');
INSERT INTO `mc_hotel_price` VALUES ('b8d3e6403c4d4f868fe5dd915472ad14', '533870-606195', '428.00', '2015', '12', '22', 'true', '2', '1357.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('ba428f1478f84d2ea741ca2fe6329c59', '1470321-8292225', '688.00', '2016', '1', '2', 'false', '0', '688.00', '2016-01-02');
INSERT INTO `mc_hotel_price` VALUES ('badc2a58953f447bb46c0e8387a381f5', '533870-130147', '428.00', '2015', '12', '25', 'true', '2', '1357.00', '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('bb06d1aba20241a5aef264578a1607f5', '397462-9399767', '670.00', '2016', '1', '10', 'true', '2', '1600.00', '2016-01-10');
INSERT INTO `mc_hotel_price` VALUES ('bc2738467c5c4664bd3ff485eb353f59', '926937-18004627', '224.00', '2015', '12', '31', 'false', '0', null, '2015-12-31');
INSERT INTO `mc_hotel_price` VALUES ('bc531df233334484b9463baf803d3b72', '533870-606195', '398.00', '2016', '1', '18', 'true', '2', '1357.00', '2016-01-18');
INSERT INTO `mc_hotel_price` VALUES ('bcd9c1aa39fd4c4aa68b56beb7f8478b', '533870-606195', '428.00', '2015', '12', '18', 'true', '2', '1357.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('bcf18af27f504cdc86e530243e36916c', '397462-9399767', '1009.00', '2016', '1', '15', 'true', '2', '1600.00', '2016-01-15');
INSERT INTO `mc_hotel_price` VALUES ('bd7f6c35449c47dbb1d34f037f81a6b5', '533870-18186', '428.00', '2015', '12', '14', 'true', '2', '1357.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('be12ac66e847477ab19b70f60b2c9448', '533870-130147', '428.00', '2015', '12', '14', 'true', '2', '1357.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('be1c16d5b07e40658a3155e8f72f25c1', '533870-18186', '398.00', '2016', '1', '21', 'true', '2', '1357.00', '2016-01-21');
INSERT INTO `mc_hotel_price` VALUES ('be7df2f546b340a488db60ab5dcb0084', '926937-5217618', '360.00', '2016', '1', '25', 'false', '0', '838.00', '2016-01-25');
INSERT INTO `mc_hotel_price` VALUES ('bec03e18d9ad43a99b8f52c56436be44', '397462-9399767', '662.00', '2015', '12', '17', 'true', '2', '1600.00', '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('bf89a66d92ab47c3bddae94262deae58', '926937-5217618', '360.00', '2016', '1', '19', 'false', '0', '838.00', '2016-01-19');
INSERT INTO `mc_hotel_price` VALUES ('c08687aede1c44868dbf13826f1ded30', '533870-18186', '398.00', '2016', '1', '31', 'true', '2', '1357.00', '2016-01-31');
INSERT INTO `mc_hotel_price` VALUES ('c2983e710ae34442890d5512f5327e0f', '533870-130147', '428.00', '2015', '12', '21', 'true', '2', '1357.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('c2c6ccaa4b1447cf9ce78c4f48484bf8', '533870-18186', '398.00', '2016', '1', '18', 'true', '2', '1357.00', '2016-01-18');
INSERT INTO `mc_hotel_price` VALUES ('c302abcee46f4a2e83440e65ad156bed', '1470321-8292225', '238.00', '2016', '1', '10', 'false', '0', '688.00', '2016-01-10');
INSERT INTO `mc_hotel_price` VALUES ('c30370bab0344150a1ce85ce9ff72ca7', '926937-18004627', '222.00', '2016', '1', '12', 'false', '0', null, '2016-01-12');
INSERT INTO `mc_hotel_price` VALUES ('c34c87a400004e4fb2ed0b939bfba560', '397462-9399767', '670.00', '2016', '2', '2', 'true', '2', '1600.00', '2016-02-02');
INSERT INTO `mc_hotel_price` VALUES ('c3de9d7bdb674d2483b00602dacb44d0', '533870-18186', '428.00', '2015', '12', '28', 'true', '2', '1357.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('c4097b8008d74b08982a23fe92b84a7f', '926937-18004627', '222.00', '2016', '1', '28', 'false', '0', null, '2016-01-28');
INSERT INTO `mc_hotel_price` VALUES ('c421f8ffb2ec4349b5b3e57ceb49fd8a', '533870-18186', '398.00', '2016', '1', '11', 'true', '2', '1357.00', '2016-01-11');
INSERT INTO `mc_hotel_price` VALUES ('c475ed054db44a92b8b23f4793bbacc4', '397462-9399767', '670.00', '2016', '1', '5', 'true', '2', '1600.00', '2016-01-05');
INSERT INTO `mc_hotel_price` VALUES ('c4cff99b70f94df8911b9738b071ec5a', '533870-606195', '398.00', '2016', '1', '31', 'true', '2', '1357.00', '2016-01-31');
INSERT INTO `mc_hotel_price` VALUES ('c5196e1cf4e44d6c9f1ebb4c494df20d', '1470321-8292225', '368.00', '2016', '1', '15', 'false', '0', '688.00', '2016-01-15');
INSERT INTO `mc_hotel_price` VALUES ('c5489d73a78943b4aac9585d0a24aa5e', '397462-9399767', '1009.00', '2016', '1', '22', 'true', '2', '1600.00', '2016-01-22');
INSERT INTO `mc_hotel_price` VALUES ('c69c93ba431e4168a0c3da8168896707', '1470321-8292225', '238.00', '2016', '1', '6', 'false', '0', '688.00', '2016-01-06');
INSERT INTO `mc_hotel_price` VALUES ('c77cdcc6c8354702a9ea3c17f06a26b8', '533870-606195', '398.00', '2016', '1', '16', 'true', '2', '1357.00', '2016-01-16');
INSERT INTO `mc_hotel_price` VALUES ('c8a3db83f9ef455fb7255cfdd63a1801', '533870-18186', '398.00', '2016', '1', '2', 'true', '2', '1357.00', '2016-01-02');
INSERT INTO `mc_hotel_price` VALUES ('c9303992b8b5412f80a0b7e1ae3d3a59', '533870-606195', '398.00', '2016', '1', '25', 'true', '2', '1357.00', '2016-01-25');
INSERT INTO `mc_hotel_price` VALUES ('c961b20ec3914e24884f766c6cea6171', '397462-9399767', '670.00', '2016', '1', '18', 'true', '2', '1600.00', '2016-01-18');
INSERT INTO `mc_hotel_price` VALUES ('c9a58257c4854c5ebf4c140a789d8065', '533870-606195', '398.00', '2016', '1', '17', 'true', '2', '1357.00', '2016-01-17');
INSERT INTO `mc_hotel_price` VALUES ('cb58128128804103b6ee963b3a6c770a', '397462-9399767', '670.00', '2016', '2', '1', 'true', '2', '1600.00', '2016-02-01');
INSERT INTO `mc_hotel_price` VALUES ('cbfe66e782bb48e8a5e7d696e816feee', '1470321-8292225', '238.00', '2015', '12', '14', 'false', '0', '688.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('cc35d4c613c14ed496315b6d304be7d1', '533870-606195', '428.00', '2015', '12', '27', 'true', '2', '1357.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('cd20a9adbedc4b02b2c25e3647d449c5', '926937-5217618', '360.00', '2016', '1', '5', 'false', '0', '838.00', '2016-01-05');
INSERT INTO `mc_hotel_price` VALUES ('ce9c240e47914118b151c99cb581d299', '533870-606195', '398.00', '2016', '1', '30', 'true', '2', '1357.00', '2016-01-30');
INSERT INTO `mc_hotel_price` VALUES ('ce9efcb0c5b5488d920933facf608ea3', '533870-606195', '398.00', '2016', '1', '5', 'true', '2', '1357.00', '2016-01-05');
INSERT INTO `mc_hotel_price` VALUES ('ceb10c4fdec54e399e02c4bdf7cc62f5', '533870-18186', '398.00', '2016', '2', '2', 'true', '2', '1357.00', '2016-02-02');
INSERT INTO `mc_hotel_price` VALUES ('cf8a42a2d7994ebda145df5bdde85323', '533870-18186', '398.00', '2016', '1', '14', 'true', '2', '1357.00', '2016-01-14');
INSERT INTO `mc_hotel_price` VALUES ('d1cfbf1a60354bbab83825fbb4b98041', '926937-18004627', '223.00', '2015', '12', '29', 'false', '0', null, '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('d2a44f15d8cd4384bb50e8b7b3a94be5', '533870-18186', '428.00', '2015', '12', '23', 'true', '2', '1357.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('d2b35893c24343d08b0d27c82c7848b7', '926937-18004627', '222.00', '2016', '1', '23', 'false', '0', null, '2016-01-23');
INSERT INTO `mc_hotel_price` VALUES ('d3087854eccc4661aaa002d1b6774a66', '926937-5217618', '360.00', '2015', '12', '15', 'false', '0', '838.00', '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('d3f7ed93e27e445d898532bff582f8c4', '533870-18186', '398.00', '2016', '1', '10', 'true', '2', '1357.00', '2016-01-10');
INSERT INTO `mc_hotel_price` VALUES ('d4c8ca9a376547bdbf3839a44e6d853d', '533870-606195', '398.00', '2016', '1', '1', 'true', '2', '1357.00', '2016-01-01');
INSERT INTO `mc_hotel_price` VALUES ('d51a9a507a724eef857fa22539cc0cad', '533870-606195', '398.00', '2016', '2', '3', 'true', '2', '1357.00', '2016-02-03');
INSERT INTO `mc_hotel_price` VALUES ('d61337a1658d4dc298fa82df6b6d167c', '533870-130147', '428.00', '2016', '1', '9', 'true', '2', '1357.00', '2016-01-09');
INSERT INTO `mc_hotel_price` VALUES ('d68be34e505a452da2ee5eda8c523772', '397462-9399767', '670.00', '2016', '1', '28', 'true', '2', '1600.00', '2016-01-28');
INSERT INTO `mc_hotel_price` VALUES ('d895117ddba8485c9c92b28b18a11b0e', '1470321-8292225', '238.00', '2016', '2', '3', 'false', '0', '688.00', '2016-02-03');
INSERT INTO `mc_hotel_price` VALUES ('d8ea11f5b8a44cbdb4f3c4cd92fb99bb', '926937-5217618', '360.00', '2016', '1', '15', 'false', '0', '838.00', '2016-01-15');
INSERT INTO `mc_hotel_price` VALUES ('d93e17cd182e4c47aabfea9df9429376', '926937-5217618', '381.00', '2016', '2', '1', 'false', '0', '838.00', '2016-02-01');
INSERT INTO `mc_hotel_price` VALUES ('dafd8f2a66fe4aab963d2133da8dc106', '1470321-8292225', '238.00', '2016', '1', '5', 'false', '0', '688.00', '2016-01-05');
INSERT INTO `mc_hotel_price` VALUES ('dc6c3a1fa620476d9f793dcf915ee3fe', '533870-18186', '398.00', '2016', '1', '9', 'true', '2', '1357.00', '2016-01-09');
INSERT INTO `mc_hotel_price` VALUES ('dce391c0fedc439f92a1a3517d1b42b4', '926937-5217618', '360.00', '2015', '12', '25', 'false', '0', '838.00', '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('dd8811ce591f4a398d9381a31e31b71c', '1470321-8292225', '368.00', '2016', '1', '16', 'false', '0', '688.00', '2016-01-16');
INSERT INTO `mc_hotel_price` VALUES ('de173782b4504e408241551ba7f2c173', '926937-18004627', '222.00', '2016', '1', '3', 'false', '0', null, '2016-01-03');
INSERT INTO `mc_hotel_price` VALUES ('dee54ba94d784de094aaf36397270c3e', '397462-9399767', '1009.00', '2016', '1', '8', 'true', '2', '1600.00', '2016-01-08');
INSERT INTO `mc_hotel_price` VALUES ('df3872832bdc4bd2b38d4f04916e9874', '533870-18186', '428.00', '2015', '12', '25', 'true', '2', '1357.00', '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('df66d68180c144b295903a14becaf840', '926937-5217618', '360.00', '2016', '1', '26', 'false', '0', '838.00', '2016-01-26');
INSERT INTO `mc_hotel_price` VALUES ('e00be4de4efa4319a028942d71f4c8ae', '926937-5217618', '360.00', '2016', '1', '31', 'false', '0', '838.00', '2016-01-31');
INSERT INTO `mc_hotel_price` VALUES ('e078a7e93c5446f9a1d29276dd47a99a', '1470321-8292225', '238.00', '2016', '1', '18', 'false', '0', '688.00', '2016-01-18');
INSERT INTO `mc_hotel_price` VALUES ('e13f6c65ae8d4ef08b96f846d9d6b7f6', '533870-18186', '398.00', '2016', '1', '4', 'true', '2', '1357.00', '2016-01-04');
INSERT INTO `mc_hotel_price` VALUES ('e1d7f995b1ba414dbb2dd72ac385f5e7', '1470321-8292225', '238.00', '2016', '1', '19', 'false', '0', '688.00', '2016-01-19');
INSERT INTO `mc_hotel_price` VALUES ('e2356408c3df4cd4a143b252240c0f97', '397462-9399767', '1009.00', '2016', '1', '23', 'true', '2', '1600.00', '2016-01-23');
INSERT INTO `mc_hotel_price` VALUES ('e238c76aec484b3f9b4c080aefd0318d', '533870-130147', '428.00', '2015', '12', '29', 'true', '2', '1357.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('e2ffcaacd4314748aefb97bac6522022', '533870-606195', '398.00', '2016', '1', '9', 'true', '2', '1357.00', '2016-01-09');
INSERT INTO `mc_hotel_price` VALUES ('e30ac9d264644068923acfea9d9c38de', '926937-5217618', '360.00', '2016', '1', '4', 'false', '0', '838.00', '2016-01-04');
INSERT INTO `mc_hotel_price` VALUES ('e50b59a271424c6b8b79b431ed9acac3', '533870-130147', '428.00', '2016', '1', '23', 'true', '2', '1357.00', '2016-01-23');
INSERT INTO `mc_hotel_price` VALUES ('e6f292dbe8ba46fabc882a653005fc9a', '926937-5217618', '360.00', '2016', '1', '22', 'false', '0', '838.00', '2016-01-22');
INSERT INTO `mc_hotel_price` VALUES ('e8425325f694403780e87417df2fb364', '1470321-8292225', '238.00', '2016', '1', '14', 'false', '0', '688.00', '2016-01-14');
INSERT INTO `mc_hotel_price` VALUES ('ea7ce7f5399b498cb936b5b666657478', '1470321-8292225', '238.00', '2016', '2', '2', 'false', '0', '688.00', '2016-02-02');
INSERT INTO `mc_hotel_price` VALUES ('eb187f834dce4096a185d6f27c5fe564', '533870-606195', '398.00', '2016', '1', '21', 'true', '2', '1357.00', '2016-01-21');
INSERT INTO `mc_hotel_price` VALUES ('eb3aae230a63453386987b5909dd2c9a', '533870-18186', '398.00', '2016', '1', '5', 'true', '2', '1357.00', '2016-01-05');
INSERT INTO `mc_hotel_price` VALUES ('ed5528fc9a224af2bad9514e52fda5aa', '533870-18186', '428.00', '2015', '12', '29', 'true', '2', '1357.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('ed91f75238e54265a1b2b2864c0d5e8a', '926937-18004627', '223.00', '2015', '12', '21', 'false', '0', null, '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('ee2fd97165a14161902e7dc8b564fc6f', '1470321-8292225', '238.00', '2016', '1', '26', 'false', '0', '688.00', '2016-01-26');
INSERT INTO `mc_hotel_price` VALUES ('efb40a810e2545dd96ca23dc4411bad9', '926937-5217618', '381.00', '2016', '2', '2', 'false', '0', '838.00', '2016-02-02');
INSERT INTO `mc_hotel_price` VALUES ('f16fdd9106e54d599ac927c270164119', '926937-18004627', '222.00', '2016', '1', '27', 'false', '0', null, '2016-01-27');
INSERT INTO `mc_hotel_price` VALUES ('f26d8bb4f9e44f15a7554adb855943da', '1470321-8292225', '238.00', '2015', '12', '28', 'false', '0', '688.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('f32614c3e51b4fd6a3ea371763c35d0e', '533870-130147', '428.00', '2015', '12', '20', 'true', '2', '1357.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('f3811e6ccb3942d0a493057cf0e70fed', '926937-5217618', '360.00', '2015', '12', '24', 'false', '0', '838.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('f38ac90052b540e79dade13a2b708b56', '926937-18004627', '222.00', '2016', '2', '1', 'false', '0', null, '2016-02-01');
INSERT INTO `mc_hotel_price` VALUES ('f3e1015d1bea4be7acea0f5eb5b24335', '1470321-8292225', '238.00', '2016', '1', '21', 'false', '0', '688.00', '2016-01-21');
INSERT INTO `mc_hotel_price` VALUES ('f50eba0b26324276aa3e0a6bcf694168', '533870-130147', '428.00', '2016', '1', '8', 'true', '2', '1357.00', '2016-01-08');
INSERT INTO `mc_hotel_price` VALUES ('f5b4826ab17044f79166d729c75566b1', '533870-130147', '428.00', '2016', '1', '2', 'true', '2', '1357.00', '2016-01-02');
INSERT INTO `mc_hotel_price` VALUES ('f6114b4589be43b388074a5968c7c0cd', '533870-606195', '398.00', '2016', '1', '20', 'true', '2', '1357.00', '2016-01-20');
INSERT INTO `mc_hotel_price` VALUES ('f62f7279cf31469c9ba0e11d0eda8011', '533870-18186', '398.00', '2016', '1', '26', 'true', '2', '1357.00', '2016-01-26');
INSERT INTO `mc_hotel_price` VALUES ('f6b5f7724bfe4366b07a087072568a04', '533870-130147', '428.00', '2016', '1', '19', 'true', '2', '1357.00', '2016-01-19');
INSERT INTO `mc_hotel_price` VALUES ('f7fd133adfbe4d8e9b96dc916ec0c780', '533870-18186', '398.00', '2016', '2', '1', 'true', '2', '1357.00', '2016-02-01');
INSERT INTO `mc_hotel_price` VALUES ('f8fff7e0c86948029a7d8ff781cfd2b2', '533870-18186', '398.00', '2016', '1', '24', 'true', '2', '1357.00', '2016-01-24');
INSERT INTO `mc_hotel_price` VALUES ('f95a8cc1bf8c4428b9ef96bca8bbedc2', '533870-130147', '428.00', '2016', '1', '29', 'true', '2', '1357.00', '2016-01-29');
INSERT INTO `mc_hotel_price` VALUES ('fa7c1a4eb1d943979d93b74fbdce8446', '533870-18186', '398.00', '2016', '1', '1', 'true', '2', '1357.00', '2016-01-01');
INSERT INTO `mc_hotel_price` VALUES ('fadf545c3c5f4b999a41973edc9ea1f1', '533870-130147', '428.00', '2016', '1', '28', 'true', '2', '1357.00', '2016-01-28');
INSERT INTO `mc_hotel_price` VALUES ('fc3285aa421c466dbe5d3150af0365b9', '533870-130147', '428.00', '2016', '2', '2', 'true', '2', '1357.00', '2016-02-02');
INSERT INTO `mc_hotel_price` VALUES ('fccf4117e1bc424c8247cd22fdf489c8', '926937-18004627', '222.00', '2016', '1', '14', 'false', '0', null, '2016-01-14');
INSERT INTO `mc_hotel_price` VALUES ('fd5c8746454b4810bef0002e211ce09c', '533870-606195', '398.00', '2016', '1', '29', 'true', '2', '1357.00', '2016-01-29');
INSERT INTO `mc_hotel_price` VALUES ('fef9fc3b029d4295b96a67f21a5960f7', '533870-18186', '398.00', '2016', '1', '20', 'true', '2', '1357.00', '2016-01-20');
INSERT INTO `mc_hotel_price` VALUES ('ff086eaaced54b719daa93fa50ba8a26', '926937-18004627', '222.00', '2016', '1', '16', 'false', '0', null, '2016-01-16');

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
INSERT INTO `mc_images` VALUES ('1450145918922', '8a75cc7459824e9891dfc23abb2804b1', 'image/png', null, '/8a75cc7459824e9891dfc23abb2804b1/INDEX/1450145918922.png', '首页.png', null, 'INDEX', null, null, '60613');
INSERT INTO `mc_images` VALUES ('1450146967747', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/QUERY/1450146967747.jpg', '查询页面.jpg', null, 'QUERY', null, null, '333889');
INSERT INTO `mc_images` VALUES ('1450148090112', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148090112.jpg', '详情头部4.jpg', null, 'DETAIL-HEADER', null, null, '67491');
INSERT INTO `mc_images` VALUES ('1450148091107', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148091107.jpg', '详情头部6.jpg', null, 'DETAIL-HEADER', null, null, '95698');
INSERT INTO `mc_images` VALUES ('1450148093461', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148093461.jpg', '详情头部3.jpg', null, 'DETAIL-HEADER', null, null, '258513');
INSERT INTO `mc_images` VALUES ('1450148095384', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148095384.jpg', '详情头部2.jpg', null, 'DETAIL-HEADER', null, null, '127489');
INSERT INTO `mc_images` VALUES ('1450148095388', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148095388.jpg', '详情头部5.jpg', null, 'DETAIL-HEADER', null, null, '89174');
INSERT INTO `mc_images` VALUES ('1450148099333', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148099333.jpg', '详情头部1.jpg', null, 'DETAIL-HEADER', null, null, '333889');
INSERT INTO `mc_images` VALUES ('1450148370156', '8a75cc7459824e9891dfc23abb2804b1', 'image/png', null, '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', '酒店图标.png', null, 'HOTEL-ICON', null, null, '203970');
INSERT INTO `mc_images` VALUES ('1450148401686', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/DETAIL-HEADER/1450148401686.jpg', '酒店1.jpg', null, 'DETAIL-HEADER', null, null, '52153');
INSERT INTO `mc_images` VALUES ('1450150365356', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/REC-PLAN/1450150365356.jpg', '推荐玩法4.jpg', null, 'REC-PLAN', null, null, '123071');
INSERT INTO `mc_images` VALUES ('1450150368953', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/REC-PLAN/1450150368953.jpg', '推荐玩法3.jpg', null, 'REC-PLAN', null, null, '120963');
INSERT INTO `mc_images` VALUES ('1450150369523', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/REC-PLAN/1450150369523.jpg', '推荐玩法.jpg', null, 'REC-PLAN', null, null, '109513');
INSERT INTO `mc_images` VALUES ('1450150369742', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/REC-PLAN/1450150369742.jpg', '推荐玩法5.jpg', null, 'REC-PLAN', null, null, '125294');
INSERT INTO `mc_images` VALUES ('1450150372621', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/REC-PLAN/1450150372621.jpg', '推荐玩法6.jpg', null, 'REC-PLAN', null, null, '123316');
INSERT INTO `mc_images` VALUES ('1450150374422', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/REC-PLAN/1450150374422.jpg', '推荐玩法2.jpg', null, 'REC-PLAN', null, null, '112958');
INSERT INTO `mc_images` VALUES ('1450150880918', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450150880918.jpg', '快艇出海.jpg', null, 'GOODNESS', null, null, '45497');
INSERT INTO `mc_images` VALUES ('1450150884120', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450150884120.jpg', '快艇出海2.jpg', null, 'GOODNESS', null, null, '123473');
INSERT INTO `mc_images` VALUES ('1450151095263', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450151095263.jpg', '梦幻情人岛.jpg', null, 'GOODNESS', null, null, '258513');
INSERT INTO `mc_images` VALUES ('1450151713544', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450151713544.jpg', '美味烧烤2.jpg', null, 'GOODNESS', null, null, '99021');
INSERT INTO `mc_images` VALUES ('1450151713723', '8a75cc7459824e9891dfc23abb2804b1', 'image/jpeg', null, '/8a75cc7459824e9891dfc23abb2804b1/GOODNESS/1450151713723.jpg', '美味烧烤1.jpg', null, 'GOODNESS', null, null, '89174');
INSERT INTO `mc_images` VALUES ('1450160597613', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/INDEX/1450160597613.png', '首页.png', null, 'INDEX', null, null, '678055');
INSERT INTO `mc_images` VALUES ('1450160632593', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/QUERY/1450160632593.png', '二级页面1.png', null, 'QUERY', null, null, '780187');
INSERT INTO `mc_images` VALUES ('1450160635745', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/QUERY/1450160635745.png', '二级页面2.png', null, 'QUERY', null, null, '663676');
INSERT INTO `mc_images` VALUES ('1450160638043', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/QUERY/1450160638043.png', '二级页面3.png', null, 'QUERY', null, null, '587533');
INSERT INTO `mc_images` VALUES ('1450160651403', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/DETAIL-HEADER/1450160651403.png', '详情头部1.png', null, 'DETAIL-HEADER', null, null, '614950');
INSERT INTO `mc_images` VALUES ('1450160654751', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/DETAIL-HEADER/1450160654751.png', '详情头部5.png', null, 'DETAIL-HEADER', null, null, '777254');
INSERT INTO `mc_images` VALUES ('1450160654912', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/jpeg', null, '/ddafeafbe3f948db9374bef42c3fee5b/DETAIL-HEADER/1450160654912.jpg', '详情头部9.jpg', null, 'DETAIL-HEADER', null, null, '42835');
INSERT INTO `mc_images` VALUES ('1450160656867', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/jpeg', null, '/ddafeafbe3f948db9374bef42c3fee5b/DETAIL-HEADER/1450160656867.jpg', '详情头部10.jpg', null, 'DETAIL-HEADER', null, null, '58422');
INSERT INTO `mc_images` VALUES ('1450160657009', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/DETAIL-HEADER/1450160657009.png', '详情头部4.png', null, 'DETAIL-HEADER', null, null, '659994');
INSERT INTO `mc_images` VALUES ('1450160658604', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/DETAIL-HEADER/1450160658604.png', '详情头部7.png', null, 'DETAIL-HEADER', null, null, '588192');
INSERT INTO `mc_images` VALUES ('1450160660518', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/jpeg', null, '/ddafeafbe3f948db9374bef42c3fee5b/DETAIL-HEADER/1450160660518.jpg', '详情头部8.jpg', null, 'DETAIL-HEADER', null, null, '51693');
INSERT INTO `mc_images` VALUES ('1450161471720', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/jpeg', null, '/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161471720.jpg', '吃点1.jpg', null, 'GOODNESS', null, null, '69040');
INSERT INTO `mc_images` VALUES ('1450161474484', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/jpeg', null, '/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161474484.jpg', '吃点2.jpg', null, 'GOODNESS', null, null, '109871');
INSERT INTO `mc_images` VALUES ('1450161706907', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161706907.png', '法国埃菲尔铁塔.png', null, 'GOODNESS', null, null, '678055');
INSERT INTO `mc_images` VALUES ('1450161953965', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450161953965.png', '科隆大教堂.png', null, 'GOODNESS', null, null, '663676');
INSERT INTO `mc_images` VALUES ('1450162100729', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450162100729.png', '飞跃美利坚.png', null, 'GOODNESS', null, null, '655698');
INSERT INTO `mc_images` VALUES ('1450162270135', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450162270135.png', '阿尔卑斯冰雪世界2.png', null, 'GOODNESS', null, null, '905296');
INSERT INTO `mc_images` VALUES ('1450162297619', 'ddafeafbe3f948db9374bef42c3fee5b', 'image/png', null, '/ddafeafbe3f948db9374bef42c3fee5b/GOODNESS/1450162297619.png', '阿尔卑斯冰雪世界.png', null, 'GOODNESS', null, null, '953922');
INSERT INTO `mc_images` VALUES ('1450163192558', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/TOPIC-CONTENT/1450163192558.png', '广州从化碧水湾温泉.png', null, 'TOPIC-CONTENT', null, null, '732428');
INSERT INTO `mc_images` VALUES ('1450163282181', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/DETAIL-HEADER/1450163282181.png', '广州从化碧水湾温泉.png', null, 'DETAIL-HEADER', null, null, '732428');
INSERT INTO `mc_images` VALUES ('1450163405014', 'ff809171fbb94259bf8d75557522292f', 'image/jpeg', null, '/ff809171fbb94259bf8d75557522292f/DETAIL-HEADER/1450163405014.jpg', '广州从化碧水湾温泉2.jpg', null, 'DETAIL-HEADER', null, null, '218972');
INSERT INTO `mc_images` VALUES ('1450163406142', 'ff809171fbb94259bf8d75557522292f', 'image/jpeg', null, '/ff809171fbb94259bf8d75557522292f/DETAIL-HEADER/1450163406142.jpg', '广州从化碧水湾温泉1.jpg', null, 'DETAIL-HEADER', null, null, '266616');
INSERT INTO `mc_images` VALUES ('1450163438799', 'ff809171fbb94259bf8d75557522292f', 'image/jpeg', null, '/ff809171fbb94259bf8d75557522292f/HOTEL-ICON/1450163438799.jpg', '广州从化碧水湾温泉1.jpg', null, 'HOTEL-ICON', null, null, '266616');
INSERT INTO `mc_images` VALUES ('1450163626408', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/QUERY/1450163626408.png', '广州从化碧水湾温泉.png', null, 'QUERY', null, null, '732428');
INSERT INTO `mc_images` VALUES ('1450163915230', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/TOPIC-INDEX/1450163915230.png', '广州从化碧水湾温泉.png', null, 'TOPIC-INDEX', null, null, '732428');
INSERT INTO `mc_images` VALUES ('1450167565310', '76746f2d2e3241fbbf70f992b07b9da6', 'image/jpeg', null, '/76746f2d2e3241fbbf70f992b07b9da6/INDEX/1450167565310.jpg', '惠州龙门铁泉.jpg', null, 'INDEX', null, null, '79682');
INSERT INTO `mc_images` VALUES ('1450167800624', '76746f2d2e3241fbbf70f992b07b9da6', 'image/jpeg', null, '/76746f2d2e3241fbbf70f992b07b9da6/QUERY/1450167800624.jpg', '惠州龙门铁泉.jpg', null, 'QUERY', null, null, '145674');
INSERT INTO `mc_images` VALUES ('1450168045882', '76746f2d2e3241fbbf70f992b07b9da6', 'image/jpeg', null, '/76746f2d2e3241fbbf70f992b07b9da6/DETAIL-HEADER/1450168045882.jpg', '惠州龙门铁泉.jpg', null, 'DETAIL-HEADER', null, null, '145674');
INSERT INTO `mc_images` VALUES ('1450168565957', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/INDEX/1450168565957.jpg', '11.jpg', null, 'INDEX', null, null, '363020');
INSERT INTO `mc_images` VALUES ('1450168624977', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/QUERY/1450168624977.jpg', '22.jpg', null, 'QUERY', null, null, '312774');
INSERT INTO `mc_images` VALUES ('1450168635741', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/DETAIL-HEADER/1450168635741.jpg', '22.jpg', null, 'DETAIL-HEADER', null, null, '312774');
INSERT INTO `mc_images` VALUES ('1450168636900', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/DETAIL-HEADER/1450168636900.jpg', '11.jpg', null, 'DETAIL-HEADER', null, null, '363020');
INSERT INTO `mc_images` VALUES ('1450168867477', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/TOPIC-CONTENT/1450168867477.jpg', '11.jpg', null, 'TOPIC-CONTENT', null, null, '363020');
INSERT INTO `mc_images` VALUES ('1450168868688', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/TOPIC-CONTENT/1450168868688.jpg', '22.jpg', null, 'TOPIC-CONTENT', null, null, '312774');
INSERT INTO `mc_images` VALUES ('1450228483031', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/INDEX/1450228483031.gif', '首页.gif', null, 'INDEX', null, null, '184817');
INSERT INTO `mc_images` VALUES ('1450229231235', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/QUERY/1450229231235.gif', '查询.gif', null, 'QUERY', null, null, '238540');
INSERT INTO `mc_images` VALUES ('1450229234427', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/QUERY/1450229234427.gif', '查询1.gif', null, 'QUERY', null, null, '308191');
INSERT INTO `mc_images` VALUES ('1450229234922', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/QUERY/1450229234922.gif', '首页.gif', null, 'QUERY', null, null, '184817');
INSERT INTO `mc_images` VALUES ('1450230201812', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/DETAIL-HEADER/1450230201812.gif', '详情首页4.gif', null, 'DETAIL-HEADER', null, null, '279675');
INSERT INTO `mc_images` VALUES ('1450230204627', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/DETAIL-HEADER/1450230204627.gif', '详情首页3.gif', null, 'DETAIL-HEADER', null, null, '388054');
INSERT INTO `mc_images` VALUES ('1450230207177', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/DETAIL-HEADER/1450230207177.gif', '详情首页.gif', null, 'DETAIL-HEADER', null, null, '480270');
INSERT INTO `mc_images` VALUES ('1450230208637', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/DETAIL-HEADER/1450230208637.gif', '详情首页2.gif', null, 'DETAIL-HEADER', null, null, '338279');
INSERT INTO `mc_images` VALUES ('1450230209774', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/gif', null, '/a9e7808e176b428fa79a3cae4142d8ec/DETAIL-HEADER/1450230209774.gif', '详情首页5.gif', null, 'DETAIL-HEADER', null, null, '289507');
INSERT INTO `mc_images` VALUES ('1450230768071', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/INDEX/1450230768071.gif', '首页.gif', null, 'INDEX', null, null, '313551');
INSERT INTO `mc_images` VALUES ('1450230793144', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/QUERY/1450230793144.gif', '查询界面2.gif', null, 'QUERY', null, null, '202756');
INSERT INTO `mc_images` VALUES ('1450230795780', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/QUERY/1450230795780.gif', '查询界面3.gif', null, 'QUERY', null, null, '143555');
INSERT INTO `mc_images` VALUES ('1450230796658', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/QUERY/1450230796658.gif', '查询界面.gif', null, 'QUERY', null, null, '208247');
INSERT INTO `mc_images` VALUES ('1450230815751', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/DETAIL-HEADER/1450230815751.gif', '详情头部1.gif', null, 'DETAIL-HEADER', null, null, '195107');
INSERT INTO `mc_images` VALUES ('1450230823220', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/DETAIL-HEADER/1450230823220.gif', '详情头部3.gif', null, 'DETAIL-HEADER', null, null, '159360');
INSERT INTO `mc_images` VALUES ('1450230826743', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/DETAIL-HEADER/1450230826743.gif', '详情头部2.gif', null, 'DETAIL-HEADER', null, null, '192971');
INSERT INTO `mc_images` VALUES ('1450230828047', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/DETAIL-HEADER/1450230828047.gif', '详情头部4.gif', null, 'DETAIL-HEADER', null, null, '157765');
INSERT INTO `mc_images` VALUES ('1450231116927', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231116927.gif', '首页.gif', null, 'GOODNESS', null, null, '313551');
INSERT INTO `mc_images` VALUES ('1450231116932', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231116932.gif', '详情头部4.gif', null, 'GOODNESS', null, null, '157765');
INSERT INTO `mc_images` VALUES ('1450231117680', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231117680.gif', '查询界面3.gif', null, 'GOODNESS', null, null, '143555');
INSERT INTO `mc_images` VALUES ('1450231119153', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231119153.gif', '详情头部2.gif', null, 'GOODNESS', null, null, '192971');
INSERT INTO `mc_images` VALUES ('1450231119169', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231119169.gif', '查询界面.gif', null, 'GOODNESS', null, null, '208247');
INSERT INTO `mc_images` VALUES ('1450231119234', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231119234.gif', '详情头部3.gif', null, 'GOODNESS', null, null, '159360');
INSERT INTO `mc_images` VALUES ('1450231122128', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231122128.gif', '查询界面2.gif', null, 'GOODNESS', null, null, '202756');
INSERT INTO `mc_images` VALUES ('1450231123590', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/gif', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450231123590.gif', '详情头部1.gif', null, 'GOODNESS', null, null, '195107');
INSERT INTO `mc_images` VALUES ('1450233763377', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/INDEX/1450233763377.gif', '首页.gif', null, 'INDEX', null, null, '393468');
INSERT INTO `mc_images` VALUES ('1450233971553', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/QUERY/1450233971553.gif', '查询.gif', null, 'QUERY', null, null, '393468');
INSERT INTO `mc_images` VALUES ('1450233973142', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/QUERY/1450233973142.gif', '查询1.gif', null, 'QUERY', null, null, '240371');
INSERT INTO `mc_images` VALUES ('1450233980026', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/QUERY/1450233980026.gif', '查询2.gif', null, 'QUERY', null, null, '219657');
INSERT INTO `mc_images` VALUES ('1450233987362', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/DETAIL-HEADER/1450233987362.png', '详情2.png', null, 'DETAIL-HEADER', null, null, '832792');
INSERT INTO `mc_images` VALUES ('1450233990533', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/DETAIL-HEADER/1450233990533.gif', '详情4.gif', null, 'DETAIL-HEADER', null, null, '193884');
INSERT INTO `mc_images` VALUES ('1450233991666', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/DETAIL-HEADER/1450233991666.gif', '详情5.gif', null, 'DETAIL-HEADER', null, null, '238998');
INSERT INTO `mc_images` VALUES ('1450233992373', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/DETAIL-HEADER/1450233992373.gif', '详情1.gif', null, 'DETAIL-HEADER', null, null, '228281');
INSERT INTO `mc_images` VALUES ('1450233994826', 'dadb43fdd1bb418d867ba930a67d9301', 'image/gif', null, '/dadb43fdd1bb418d867ba930a67d9301/DETAIL-HEADER/1450233994826.gif', '详情3.gif', null, 'DETAIL-HEADER', null, null, '234386');
INSERT INTO `mc_images` VALUES ('1450753735651', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/png', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450753735651.png', '过山车2.png', null, 'GOODNESS', null, null, '487149');
INSERT INTO `mc_images` VALUES ('1450753735841', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/png', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450753735841.png', '过山车1.png', null, 'GOODNESS', null, null, '823158');
INSERT INTO `mc_images` VALUES ('1450754060862', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/jpeg', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754060862.jpg', '大峡谷1.jpg', null, 'GOODNESS', null, null, '351819');
INSERT INTO `mc_images` VALUES ('1450754061697', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/jpeg', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754061697.jpg', '大峡谷3.jpg', null, 'GOODNESS', null, null, '123622');
INSERT INTO `mc_images` VALUES ('1450754062133', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/jpeg', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754062133.jpg', '大峡谷2.jpg', null, 'GOODNESS', null, null, '148251');
INSERT INTO `mc_images` VALUES ('1450754620712', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/png', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754620712.png', '大华兴寺3.png', null, 'GOODNESS', null, null, '511915');
INSERT INTO `mc_images` VALUES ('1450754623067', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/png', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754623067.png', '大华兴寺2.png', null, 'GOODNESS', null, null, '432251');
INSERT INTO `mc_images` VALUES ('1450754627081', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/png', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450754627081.png', '大华兴寺1.png', null, 'GOODNESS', null, null, '772038');
INSERT INTO `mc_images` VALUES ('1450755017516', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/jpeg', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450755017516.jpg', '云中餐厅2.jpg', null, 'GOODNESS', null, null, '88255');
INSERT INTO `mc_images` VALUES ('1450755019396', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', 'image/png', null, '/73bcbb6f76704fb2a3d1bc5c3e5ab8ef/GOODNESS/1450755019396.png', '云中餐厅2.png', null, 'GOODNESS', null, null, '998420');
INSERT INTO `mc_images` VALUES ('1450755485572', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755485572.png', '古兜观光缆车1.png', null, 'GOODNESS', null, null, '800232');
INSERT INTO `mc_images` VALUES ('1450755486365', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755486365.png', '东方红水库1.png', null, 'GOODNESS', null, null, '487117');
INSERT INTO `mc_images` VALUES ('1450755488726', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755488726.png', '东方红水库2.png', null, 'GOODNESS', null, null, '256819');
INSERT INTO `mc_images` VALUES ('1450755489931', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755489931.png', '古兜观光缆车3.png', null, 'GOODNESS', null, null, '483097');
INSERT INTO `mc_images` VALUES ('1450755490046', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755490046.png', '古兜山泉水世界1.png', null, 'GOODNESS', null, null, '631955');
INSERT INTO `mc_images` VALUES ('1450755490998', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755490998.png', '古兜农庄.png', null, 'GOODNESS', null, null, '255104');
INSERT INTO `mc_images` VALUES ('1450755491396', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755491396.png', '古兜观光缆车2.png', null, 'GOODNESS', null, null, '796270');
INSERT INTO `mc_images` VALUES ('1450755491907', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755491907.png', '古兜山泉水世界2.png', null, 'GOODNESS', null, null, '650697');
INSERT INTO `mc_images` VALUES ('1450755496939', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755496939.png', '古兜山泉水世界3.png', null, 'GOODNESS', null, null, '695413');
INSERT INTO `mc_images` VALUES ('1450755498265', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755498265.png', '古兜山泉水世界4.png', null, 'GOODNESS', null, null, '594928');
INSERT INTO `mc_images` VALUES ('1450755503454', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755503454.png', '古兜山泉水世界5.png', null, 'GOODNESS', null, null, '665050');
INSERT INTO `mc_images` VALUES ('1450755506086', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755506086.png', '古兜山泉水世界6.png', null, 'GOODNESS', null, null, '728126');
INSERT INTO `mc_images` VALUES ('1450755508277', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755508277.png', '酒吧商业美食街2.png', null, 'GOODNESS', null, null, '260975');
INSERT INTO `mc_images` VALUES ('1450755509154', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755509154.png', '古兜温泉谷3.png', null, 'GOODNESS', null, null, '894052');
INSERT INTO `mc_images` VALUES ('1450755511827', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755511827.png', '古兜温泉谷.png', null, 'GOODNESS', null, null, '756856');
INSERT INTO `mc_images` VALUES ('1450755513090', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755513090.png', '古兜温泉谷2.png', null, 'GOODNESS', null, null, '491013');
INSERT INTO `mc_images` VALUES ('1450755513219', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755513219.png', '情趣鱼疗1.png', null, 'GOODNESS', null, null, '601111');
INSERT INTO `mc_images` VALUES ('1450755515344', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755515344.png', '情趣鱼疗2.png', null, 'GOODNESS', null, null, '504631');
INSERT INTO `mc_images` VALUES ('1450755519672', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755519672.png', '咸、淡温泉1.png', null, 'GOODNESS', null, null, '689468');
INSERT INTO `mc_images` VALUES ('1450755521415', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755521415.png', '咸、淡温泉2.png', null, 'GOODNESS', null, null, '569796');
INSERT INTO `mc_images` VALUES ('1450755523749', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450755523749.png', '竹苑烧烤场1.png', null, 'GOODNESS', null, null, '414698');
INSERT INTO `mc_images` VALUES ('1450756441920', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756441920.jpg', '大堂“海心吧”.jpg', null, 'GOODNESS', null, null, '23534');
INSERT INTO `mc_images` VALUES ('1450756449168', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756449168.png', '广东最大温泉仿海浪冲浪1.png', null, 'GOODNESS', null, null, '543532');
INSERT INTO `mc_images` VALUES ('1450756451248', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756451248.png', '全国独有的珍稀黄金汤泉2.png', null, 'GOODNESS', null, null, '573859');
INSERT INTO `mc_images` VALUES ('1450756451933', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756451933.png', '全国独有的天然黄金蒸汽浴2.png', null, 'GOODNESS', null, null, '618803');
INSERT INTO `mc_images` VALUES ('1450756452225', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756452225.png', '全国独有的珍稀黄金汤泉.png', null, 'GOODNESS', null, null, '427694');
INSERT INTO `mc_images` VALUES ('1450756454312', '37af4e25e95346ba89ec61ee0471eb75', 'image/jpeg', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756454312.jpg', '铁泉国际大饭店.jpg', null, 'GOODNESS', null, null, '135454');
INSERT INTO `mc_images` VALUES ('1450756455091', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756455091.png', '全国最大的山水园林温泉2.png', null, 'GOODNESS', null, null, '748765');
INSERT INTO `mc_images` VALUES ('1450756458697', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756458697.png', '全国最大的山水园林温泉1.png', null, 'GOODNESS', null, null, '789102');
INSERT INTO `mc_images` VALUES ('1450756460498', '37af4e25e95346ba89ec61ee0471eb75', 'image/png', null, '/37af4e25e95346ba89ec61ee0471eb75/GOODNESS/1450756460498.png', '全国最大的山水园林温泉3.png', null, 'GOODNESS', null, null, '624070');
INSERT INTO `mc_images` VALUES ('1450756574242', '76746f2d2e3241fbbf70f992b07b9da6', 'image/jpeg', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756574242.jpg', '大堂“海心吧”.jpg', null, 'GOODNESS', null, null, '23534');
INSERT INTO `mc_images` VALUES ('1450756574454', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756574454.png', '广东最大温泉仿海浪冲浪1.png', null, 'GOODNESS', null, null, '543532');
INSERT INTO `mc_images` VALUES ('1450756577525', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756577525.png', '全国独有的珍稀黄金汤泉2.png', null, 'GOODNESS', null, null, '573859');
INSERT INTO `mc_images` VALUES ('1450756578248', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756578248.png', '全国独有的珍稀黄金汤泉.png', null, 'GOODNESS', null, null, '427694');
INSERT INTO `mc_images` VALUES ('1450756578873', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756578873.png', '全国独有的天然黄金蒸汽浴2.png', null, 'GOODNESS', null, null, '618803');
INSERT INTO `mc_images` VALUES ('1450756580130', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756580130.png', '全国最大的山水园林温泉1.png', null, 'GOODNESS', null, null, '789102');
INSERT INTO `mc_images` VALUES ('1450756582473', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756582473.png', '全国最大的山水园林温泉2.png', null, 'GOODNESS', null, null, '748765');
INSERT INTO `mc_images` VALUES ('1450756589556', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756589556.png', '全国最大的山水园林温泉3.png', null, 'GOODNESS', null, null, '624070');
INSERT INTO `mc_images` VALUES ('1450756591464', '76746f2d2e3241fbbf70f992b07b9da6', 'image/jpeg', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450756591464.jpg', '铁泉国际大饭店.jpg', null, 'GOODNESS', null, null, '135454');
INSERT INTO `mc_images` VALUES ('1450757007864', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450757007864.png', '广东最大温泉仿海浪冲浪1.png', null, 'GOODNESS', null, null, '543532');
INSERT INTO `mc_images` VALUES ('1450757031865', '76746f2d2e3241fbbf70f992b07b9da6', 'image/png', null, '/76746f2d2e3241fbbf70f992b07b9da6/GOODNESS/1450757031865.png', '广东最大温泉仿海浪冲浪1.png', null, 'GOODNESS', null, null, '543532');
INSERT INTO `mc_images` VALUES ('1450758069560', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758069560.png', 'KTV娱乐1.png', null, 'GOODNESS', null, null, '494696');
INSERT INTO `mc_images` VALUES ('1450758072844', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758072844.png', 'KTV娱乐2.png', null, 'GOODNESS', null, null, '459139');
INSERT INTO `mc_images` VALUES ('1450758076554', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758076554.png', '保健温泉之冰火池、土耳其鱼疗1.png', null, 'GOODNESS', null, null, '598484');
INSERT INTO `mc_images` VALUES ('1450758078550', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758078550.png', '吃点3.png', null, 'GOODNESS', null, null, '433662');
INSERT INTO `mc_images` VALUES ('1450758079012', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758079012.png', '吃点1.png', null, 'GOODNESS', null, null, '268606');
INSERT INTO `mc_images` VALUES ('1450758081529', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758081529.png', '保健温泉之冰火池、土耳其鱼疗2.png', null, 'GOODNESS', null, null, '514853');
INSERT INTO `mc_images` VALUES ('1450758082016', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758082016.png', '吃点5.png', null, 'GOODNESS', null, null, '480784');
INSERT INTO `mc_images` VALUES ('1450758084713', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758084713.png', '吃点2.png', null, 'GOODNESS', null, null, '462331');
INSERT INTO `mc_images` VALUES ('1450758086705', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758086705.png', '吃点4.png', null, 'GOODNESS', null, null, '471364');
INSERT INTO `mc_images` VALUES ('1450758088876', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758088876.png', '活力温泉1.png', null, 'GOODNESS', null, null, '453182');
INSERT INTO `mc_images` VALUES ('1450758090660', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758090660.png', '活力温泉2.png', null, 'GOODNESS', null, null, '416575');
INSERT INTO `mc_images` VALUES ('1450758090798', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758090798.png', '理疗温泉之三叠泉、对弈池2.png', null, 'GOODNESS', null, null, '586226');
INSERT INTO `mc_images` VALUES ('1450758092780', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758092780.png', '理疗温泉之三叠泉、对弈池1.png', null, 'GOODNESS', null, null, '582111');
INSERT INTO `mc_images` VALUES ('1450758093416', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758093416.png', '石板浴及按摩保健.png', null, 'GOODNESS', null, null, '513186');
INSERT INTO `mc_images` VALUES ('1450758095167', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758095167.png', '石板浴及按摩保健2.png', null, 'GOODNESS', null, null, '482537');
INSERT INTO `mc_images` VALUES ('1450758095923', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758095923.png', '药浴温泉之四味养生池1.png', null, 'GOODNESS', null, null, '581185');
INSERT INTO `mc_images` VALUES ('1450758096401', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758096401.png', '温泉SPA2.png', null, 'GOODNESS', null, null, '396866');
INSERT INTO `mc_images` VALUES ('1450758097545', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758097545.png', '温泉SPA1.png', null, 'GOODNESS', null, null, '507161');
INSERT INTO `mc_images` VALUES ('1450758098623', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758098623.png', '养颜温泉之玫瑰花瓣池2.png', null, 'GOODNESS', null, null, '605503');
INSERT INTO `mc_images` VALUES ('1450758101696', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758101696.png', '养颜温泉之玫瑰花瓣池1.png', null, 'GOODNESS', null, null, '555013');
INSERT INTO `mc_images` VALUES ('1450758101980', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758101980.png', '运动康体3.png', null, 'GOODNESS', null, null, '416754');
INSERT INTO `mc_images` VALUES ('1450758105031', 'ff809171fbb94259bf8d75557522292f', 'image/png', null, '/ff809171fbb94259bf8d75557522292f/GOODNESS/1450758105031.png', '运动康体4.png', null, 'GOODNESS', null, null, '333936');
INSERT INTO `mc_images` VALUES ('1450764295658', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764295658.png', '古代南方丝绸之路，茶马古道1.png', null, 'GOODNESS', null, null, '426404');
INSERT INTO `mc_images` VALUES ('1450764299816', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764299816.png', '民俗村寨1.png', null, 'GOODNESS', null, null, '701364');
INSERT INTO `mc_images` VALUES ('1450764301646', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764301646.png', '古代南方丝绸之路，茶马古道2.png', null, 'GOODNESS', null, null, '511667');
INSERT INTO `mc_images` VALUES ('1450764301998', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764301998.png', '古代南方丝绸之路，茶马古道3.png', null, 'GOODNESS', null, null, '478473');
INSERT INTO `mc_images` VALUES ('1450764304806', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764304806.png', '民俗村寨3.png', null, 'GOODNESS', null, null, '701364');
INSERT INTO `mc_images` VALUES ('1450764305554', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764305554.png', '民俗村寨2.png', null, 'GOODNESS', null, null, '544984');
INSERT INTO `mc_images` VALUES ('1450764306592', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764306592.png', '民俗村寨4.png', null, 'GOODNESS', null, null, '638972');
INSERT INTO `mc_images` VALUES ('1450764307629', 'dadb43fdd1bb418d867ba930a67d9301', 'image/png', null, '/dadb43fdd1bb418d867ba930a67d9301/GOODNESS/1450764307629.png', '情侣圣地，锦绣花园1.png', null, 'GOODNESS', null, null, '389432');
INSERT INTO `mc_images` VALUES ('1450765172837', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/png', null, '/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765172837.png', '欢乐谷吃点1.png', null, 'GOODNESS', null, null, '286888');
INSERT INTO `mc_images` VALUES ('1450765175114', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/png', null, '/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765175114.png', '城堡守望者.png', null, 'GOODNESS', null, null, '946092');
INSERT INTO `mc_images` VALUES ('1450765182343', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/png', null, '/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765182343.png', '欢乐干线.png', null, 'GOODNESS', null, null, '946228');
INSERT INTO `mc_images` VALUES ('1450765182425', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/png', null, '/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765182425.png', '模拟消防队.png', null, 'GOODNESS', null, null, '842828');
INSERT INTO `mc_images` VALUES ('1450765188214', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/png', null, '/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765188214.png', '逍遥水母.png', null, 'GOODNESS', null, null, '414678');
INSERT INTO `mc_images` VALUES ('1450765191309', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/png', null, '/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765191309.png', '骑警训练营.png', null, 'GOODNESS', null, null, '916903');
INSERT INTO `mc_images` VALUES ('1450765194602', 'a9e7808e176b428fa79a3cae4142d8ec', 'image/png', null, '/a9e7808e176b428fa79a3cae4142d8ec/GOODNESS/1450765194602.png', '蚁兵特工队.png', null, 'GOODNESS', null, null, '783154');
INSERT INTO `mc_images` VALUES ('1452221746000', 'mdiscoveryswip', 'image/jpeg', null, '/mdiscoveryswip/M-DISCOVERY-SWIP/1452221746000.jpg', 'big_2015111011140026583.jpg', null, 'M-DISCOVERY-SWIP', null, null, '48600');
INSERT INTO `mc_images` VALUES ('1452221746439', 'mdiscoveryswip', 'image/jpeg', null, '/mdiscoveryswip/M-DISCOVERY-SWIP/1452221746439.jpg', 'big_2015110301450132326.jpg', null, 'M-DISCOVERY-SWIP', null, null, '47996');
INSERT INTO `mc_images` VALUES ('1452221747412', 'mdiscoveryswip', 'image/jpeg', null, '/mdiscoveryswip/M-DISCOVERY-SWIP/1452221747412.jpg', 'big_2015111700370197692.jpg', null, 'M-DISCOVERY-SWIP', null, null, '38719');
INSERT INTO `mc_images` VALUES ('1452221752247', 'mdiscoveryswip', 'image/jpeg', null, '/mdiscoveryswip/M-DISCOVERY-SWIP/1452221752247.jpg', 'big_2015082510481960246.jpg', null, 'M-DISCOVERY-SWIP', null, null, '38703');
INSERT INTO `mc_images` VALUES ('1452221754728', 'mdiscoveryswip', 'image/jpeg', null, '/mdiscoveryswip/M-DISCOVERY-SWIP/1452221754728.jpg', 'big_2015102623020975375.jpg', null, 'M-DISCOVERY-SWIP', null, null, '39062');
INSERT INTO `mc_images` VALUES ('1452222372713', '743562dd2d2642b7abdd21c0e4073e4c', 'image/jpeg', null, '/743562dd2d2642b7abdd21c0e4073e4c/DISCOVERY/1452222372713.jpg', 'f59bc633c895d1437cec94d673f082025baf076d.jpg', null, 'DISCOVERY', null, null, '178674');
INSERT INTO `mc_images` VALUES ('1452223033272', '743562dd2d2642b7abdd21c0e4073e4c', 'image/jpeg', null, '/743562dd2d2642b7abdd21c0e4073e4c/DISCOVERY/1452223033272.jpg', '11.jpg', null, 'DISCOVERY', null, null, '95768');
INSERT INTO `mc_images` VALUES ('1452223597948', 'd213d3f1616248f2b9a6352a51b9f0cb', 'image/jpeg', null, '/d213d3f1616248f2b9a6352a51b9f0cb/DISCOVERY/1452223597948.jpg', '22.jpg', null, 'DISCOVERY', null, null, '87532');
INSERT INTO `mc_images` VALUES ('1452224257022', '743562dd2d2642b7abdd21c0e4073e4c', 'image/jpeg', null, '/743562dd2d2642b7abdd21c0e4073e4c/DISCOVERY/1452224257022.jpg', '111.jpg', null, 'DISCOVERY', null, null, '57692');
INSERT INTO `mc_images` VALUES ('1452224289191', 'd213d3f1616248f2b9a6352a51b9f0cb', 'image/jpeg', null, '/d213d3f1616248f2b9a6352a51b9f0cb/DISCOVERY/1452224289191.jpg', '222.jpg', null, 'DISCOVERY', null, null, '75687');
INSERT INTO `mc_images` VALUES ('1452225194184', 'a0722d3bdffe4b839d34b9f5f08d37b8', 'image/jpeg', null, '/a0722d3bdffe4b839d34b9f5f08d37b8/DISCOVERY/1452225194184.jpg', '333.jpg', null, 'DISCOVERY', null, null, '112820');
INSERT INTO `mc_images` VALUES ('1452231615429', '930d1deb26114853b6b65473669dec91', 'image/jpeg', null, '/930d1deb26114853b6b65473669dec91/DISCOVERY/1452231615429.jpg', '444.jpg', null, 'DISCOVERY', null, null, '85109');
INSERT INTO `mc_images` VALUES ('1452232887547', 'b226b63b2aab404bbe42ba8178723213', 'image/jpeg', null, '/b226b63b2aab404bbe42ba8178723213/DISCOVERY/1452232887547.jpg', '11.jpg', null, 'DISCOVERY', null, null, '95768');
INSERT INTO `mc_images` VALUES ('1452592884616', ':id', 'image/jpeg', null, '/:id/:type/1452592884616.JPG', 'IMG_2456.JPG', null, ':type', null, null, '67434');
INSERT INTO `mc_images` VALUES ('1452592942288', '93f9ef60b198411ca89135dc24d4643a', 'image/jpeg', null, '/93f9ef60b198411ca89135dc24d4643a/DISCOVERY/1452592942288.JPG', 'IMG_2456.JPG', null, 'DISCOVERY', null, null, '67434');
INSERT INTO `mc_images` VALUES ('1452593882458', 'c9a635f95fc74633b98d872478543ff3', 'image/jpeg', null, '/c9a635f95fc74633b98d872478543ff3/DISCOVERY/1452593882458.JPG', 'IMG_2457.JPG', null, 'DISCOVERY', null, null, '84707');
INSERT INTO `mc_images` VALUES ('1452594083400', 'c9a635f95fc74633b98d872478543ff3', 'image/jpeg', null, '/c9a635f95fc74633b98d872478543ff3/DISCOVERY/1452594083400.jpg', '1.jpg', null, 'DISCOVERY', null, null, '37932');
INSERT INTO `mc_images` VALUES ('1452594857506', 'c9a635f95fc74633b98d872478543ff3', 'image/jpeg', null, '/c9a635f95fc74633b98d872478543ff3/DISCOVERY/1452594857506.jpg', '~EP__A1)SQ(5W{ZK6OUCI35.jpg', null, 'DISCOVERY', null, null, '126171');
INSERT INTO `mc_images` VALUES ('1452595261958', 'c4bf6d8b40d449b58f4a95314d458572', 'image/jpeg', null, '/c4bf6d8b40d449b58f4a95314d458572/DISCOVERY/1452595261958.jpg', '2.jgp.jpg', null, 'DISCOVERY', null, null, '22783');

-- ----------------------------
-- Table structure for `mc_order`
-- ----------------------------
DROP TABLE IF EXISTS `mc_order`;
CREATE TABLE `mc_order` (
  `order_id` varchar(40) NOT NULL DEFAULT '',
  `order_no` varchar(100) DEFAULT NULL,
  `user_id` varchar(40) DEFAULT NULL,
  `ticket_id` varchar(40) DEFAULT NULL,
  `ticket_name` varchar(600) DEFAULT NULL,
  `ticket_icon` varchar(1024) DEFAULT NULL,
  `ticket_desc` text,
  `entry_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `total_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT 'CANCEL/PAYED/UNPAY/CLOSE',
  `is_pay` varchar(20) DEFAULT NULL,
  `ctrip_unique_id` varchar(60) DEFAULT NULL,
  `hotel_res_id` varchar(200) DEFAULT NULL,
  `spot_res_id` varchar(200) DEFAULT NULL,
  `remark` text,
  `pay_time` date DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `is_draw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_order
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mc_order_detail`;
CREATE TABLE `mc_order_detail` (
  `order_detail_id` varchar(40) NOT NULL DEFAULT '',
  `order_id` varchar(40) DEFAULT NULL,
  `ticket_id` varchar(40) DEFAULT NULL,
  `ticket_detail_id` varchar(40) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `market_price` decimal(12,2) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL COMMENT 'HOTEL/SPOT',
  `code1` varchar(255) DEFAULT NULL,
  `code2` varchar(255) DEFAULT NULL,
  `is_display` varchar(100) DEFAULT NULL,
  `is_pay` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `ticket_name` varchar(255) DEFAULT NULL,
  `ticket_detail_name` varchar(255) DEFAULT NULL,
  `is_draw` varchar(255) DEFAULT NULL,
  `third_3part_no` varchar(255) DEFAULT NULL,
  `start_date` varchar(60) DEFAULT NULL,
  `end_date` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_order_visitor`
-- ----------------------------
DROP TABLE IF EXISTS `mc_order_visitor`;
CREATE TABLE `mc_order_visitor` (
  `order_visitor_id` varchar(40) NOT NULL DEFAULT '',
  `order_id` varchar(40) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `card_type` varchar(10) DEFAULT NULL,
  `idcard` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`order_visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_order_visitor
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_payment`
-- ----------------------------
DROP TABLE IF EXISTS `mc_payment`;
CREATE TABLE `mc_payment` (
  `payment_id` varchar(40) NOT NULL DEFAULT '',
  `out_trade_no` varchar(100) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `trade_time` datetime DEFAULT NULL,
  `trade_status` varchar(100) DEFAULT NULL,
  `pay_price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_spot`
-- ----------------------------
DROP TABLE IF EXISTS `mc_spot`;
CREATE TABLE `mc_spot` (
  `spot_id` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(300) DEFAULT NULL,
  `description` text,
  `image_url` varchar(1024) DEFAULT NULL,
  `spot_code` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `resource_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`spot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_spot
-- ----------------------------

-- ----------------------------
-- Table structure for `mc_spot_price`
-- ----------------------------
DROP TABLE IF EXISTS `mc_spot_price`;
CREATE TABLE `mc_spot_price` (
  `spot_price_id` varchar(40) NOT NULL DEFAULT '',
  `spot_id` varchar(40) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `market_price` decimal(12,2) DEFAULT NULL,
  `max_quantity` int(11) DEFAULT NULL,
  `cost_price` decimal(12,2) DEFAULT NULL,
  `inventory_num` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`spot_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_spot_price
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
INSERT INTO `mc_tags` VALUES ('101', '惠州', null, '10', '5', null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('102', '深圳', null, '10', '2', null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('103', '珠海', null, '10', '4', null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('104', '广州', null, '10', '1', null, null, 'ADDRESS', null);
INSERT INTO `mc_tags` VALUES ('105', '江门', null, '10', '3', null, null, 'ADDRESS', null);
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
INSERT INTO `mc_tags` VALUES ('211', '温泉度假', null, '21', '2', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('212', '主题聚会', null, '21', '3', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('213', '主题公园', null, '21', '4', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('214', '名山大川', null, '21', '5', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('215', '亲子游玩', null, '21', '6', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('216', '海滩海岛', null, '21', '7', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('217', '历史名城', null, '21', '21', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('218', '小城古镇', null, '21', '20', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('219', '乡村特色', null, '21', '19', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('220', '摄影绘画', null, '21', '18', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('221', '动植物景观', null, '21', '17', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('222', '美食味道', null, '21', '16', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('223', 'BBQ', null, '21', '15', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('224', '游轮出海', null, '21', '14', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('225', '游轮出海', null, '21', '13', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('226', '异国风情', null, '21', '12', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('227', '自然风光', null, '21', '11', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('228', '避暑胜地', null, '21', '10', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('229', '休闲高尔夫', null, '21', '9', null, null, 'QUERY', null);
INSERT INTO `mc_tags` VALUES ('230', '激情滑雪', null, '21', '8', null, null, 'QUERY', null);
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
  `price` decimal(12,2) DEFAULT NULL COMMENT '当天的价格',
  `market_price` decimal(12,2) DEFAULT NULL COMMENT '当天的市场价格',
  `buy_policy` text,
  `cancel_policy` text,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket
-- ----------------------------
INSERT INTO `mc_ticket` VALUES ('194ccd0875c6493e91225855640e3059', 'ff809171fbb94259bf8d75557522292f', '广州从化碧水湾温泉', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/ff809171fbb94259bf8d75557522292f/HOTEL-ICON/1450163438799.jpg', null, null, '2015-12-15 16:46:00', null, null, '<div class=\"text-content text-content--theme1\">\r\n    <p class=\"text-content__title\">【套餐详情】</p>\r\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\r\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\r\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\r\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\r\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\r\n    <p>长隆野生动物世界门票 3张</p>\r\n    <p>长隆欢乐世界门票 3张</p>\r\n    <p>长隆大马戏门票 3张</p>\r\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\r\n</div>\r\n<div class=\"text-content text-content--theme1\">\r\n    <p class=\"text-content__title\">【特别说明】</p>\r\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\r\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\r\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\r\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\r\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\r\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\r\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\r\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\r\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\r\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('1e61a28ad9e14191811c51fcefd41921', '37af4e25e95346ba89ec61ee0471eb75', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('1f56d25ee5d44e0f8f4fc5846d3f702a', '73bcbb6f76704fb2a3d1bc5c3e5ab8ef', '大侠谷景区酒店瀑布酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('3fc78fb158d34c1a8001216df026587d', '37af4e25e95346ba89ec61ee0471eb75', '江门新会古兜温泉', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, '2015-12-15 16:45:57', null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('65c5fdc8d99141b297544cb879cc3489', 'ddafeafbe3f948db9374bef42c3fee5b', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('8cea7e762ea74ecaa85b067ee98f6b8c', 'ddafeafbe3f948db9374bef42c3fee5b', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('a1bcd6369fbd4ac6b0638e860ec72eaa', '8a75cc7459824e9891dfc23abb2804b1', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('ac5876d83a7f4f9facca7e4dcf82d05d', 'dadb43fdd1bb418d867ba930a67d9301', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('e27d9a86f19644448edcf7e3352a2493', 'a9e7808e176b428fa79a3cae4142d8ec', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('f2e24087f58e4d05b083076399b4ed0d', 'ff809171fbb94259bf8d75557522292f', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, null, null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">[退改须知]</p>\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\n</div>');
INSERT INTO `mc_ticket` VALUES ('f638f46441b34e6187fd13a90ec5f554', '76746f2d2e3241fbbf70f992b07b9da6', '深圳中天美景大酒店', '<h4 style=\"color:#f94b4b;font-size:16px\">套餐详情</h4>\n<ul>\n    <li>高级大床/双床房 住宿 1晚</li>\n    <li>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</li>\n    <li>白虎餐厅套餐2选1：（请出示房卡用餐）<br/>\n        成人自助午餐 2份（午餐时间：11:30-14:30）<br/>\n        成人自助晚餐 2份（晚餐时间：17:30-21:00）\n    </li>\n    <li>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</li>\n</ul>\n<h4 style=\"color:#f94b4b;font-size:16px\">特别说明</h4>\n<ul>\n    <li>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</li>\n    <li>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</li>\n    <li>长隆野生动物世界开放时间：09:30-18:00。</li>\n    <li>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</li>\n</ul>', '/8a75cc7459824e9891dfc23abb2804b1/HOTEL-ICON/1450148370156.png', null, null, '2015-12-15 16:26:45', null, null, '<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【套餐详情】</p>\n    <p>白虎餐厅自助早餐 3份（2大1小，早餐时间：06:00-10:00）</p>\n    <p>白虎餐厅套餐2选1：（请出示房卡用餐）</p>\n    <p>成人自助午餐 2份（午餐时间：11:30-14:30）</p>\n    <p>成人自助晚餐 2份（晚餐时间：17:30-21:00）</p>\n    <p>以下门票3选1：（适用于2成人+1儿童）</p>\n    <p>长隆野生动物世界门票 3张</p>\n    <p>长隆欢乐世界门票 3张</p>\n    <p>长隆大马戏门票 3张</p>\n    <p>赠送欢迎水果+欢迎饮料 2杯+公仔 1只</p>\n</div>\n<div class=\"text-content text-content--theme1\">\n    <p class=\"text-content__title\">【特别说明】</p>\n    <p>本套餐适用于2大1小，儿童标准：身高1.5m以下及13周岁以下。</p>\n    <p>长隆欢乐世界开放时间：周一至周五 09:30-18:00；周末节假日 09:30-18:30。</p>\n    <p>长隆野生动物世界开放时间：09:30-18:00。</p>\n    <p>长隆大马戏开园时间：17:00-21:00，演出时间：19:30-21:00，马戏表演时间约80分钟，景区会根据淡旺季调整表演时间，具体时间请以景区公布为准。</p>\n    <p>取票方式：办理入住时在酒店前台领取门票。</p>\n    <p>景区门票仅限一次入园，请合理安排时间。</p>\n    <p>预订午餐/晚餐时请备注用餐日期；客人需在退房前选择用餐，若退房当天为酒店规定中的不适用日期，则不能作为用餐时间。</p>\n    <p>如需加购早餐，提前预订成人自助早餐按照优惠价108元/位收费（需在订房时一起预订），如入住当天才要求加订早餐，则按门市价收费。小童（身高1.0-1.5m）不代订，请在餐厅现场购买，1.0m以下儿童免费。</p>\n    <p>如需另订午餐，1m以下儿童免费；身高1-1.5m儿童：周日至周四158元/位，周五至周六193元/位；1.5m以上按成人：周日至周四319元/位，周五至周六377元/位。</p>\n</div>', '<div class=\"text-content text-content--theme1\">\r\n    <p class=\"text-content__title\">[退改须知]</p>\r\n    <p>1.行程改期：平日不可改期,周末、节假日不可改期；</p>\r\n    <p>2.取消预订：平日不可取消,周末、节假日不可取消；</p>\r\n    <p>3.逾期不可办理改期和取消，请您把握好出行时间，感谢您的谅解。</p>\r\n    <p>注:平日周日-周四，周末周五-周六，法定节假日以国家规定为准。</p>\r\n</div>');

-- ----------------------------
-- Table structure for `mc_ticket_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mc_ticket_detail`;
CREATE TABLE `mc_ticket_detail` (
  `ticket_detail_id` varchar(40) NOT NULL DEFAULT '',
  `ticket_id` varchar(40) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `type` varchar(200) DEFAULT NULL COMMENT 'HOTEL/SPOT',
  `image_url` varchar(1024) DEFAULT NULL,
  `is_pay` varchar(20) DEFAULT NULL COMMENT '是否需要支付',
  `is_display` varchar(20) DEFAULT NULL COMMENT '是否需要显示在界面',
  `code1` varchar(200) DEFAULT NULL,
  `code2` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticket_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket_detail
-- ----------------------------
INSERT INTO `mc_ticket_detail` VALUES ('11aee2e203e4407396f79fe7c811412a', '3fc78fb158d34c1a8001216df026587d', '深圳景田酒店', '商务大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '533870', '130147', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('26e7ef5406c34ba89c4057e43373f9cd', 'ac5876d83a7f4f9facca7e4dcf82d05d', '深圳东部华侨城瀑布酒店 ', '高级大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '397462', '9399767', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('49612d0462e64ae6b4d46a4d017506fe', '65c5fdc8d99141b297544cb879cc3489', '深圳景田酒店', '商务大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '533870', '130147', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('4deb6ad9c9d040d3938f7e9ea7bcca21', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '深圳中天美景大酒店', '标准单人房-大床-无早餐-宽带免费', 'HOTEL', null, 'yes', 'yes', '926937', '17920607', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('566b087cfdae4a4ca0aaa4aa0e98c1b0', '3fc78fb158d34c1a8001216df026587d', '深圳景田酒店', '豪华双床房-双床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '533870', '18186', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('56cd70c46cb64cffadbc862def44571e', 'f2e24087f58e4d05b083076399b4ed0d', '深圳东部华侨城瀑布酒店 ', '高级大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '397462', '9399767', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('64e15dc841a74c90b81cac1606745f1f', 'f2e24087f58e4d05b083076399b4ed0d', '深圳途家斯维登度假公寓', '高级大床房-大床-无早-宽带免费', 'HOTEL', null, 'yes', 'yes', '1470321', '8292225', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('6734ef6b3b52487fa8cdada202ecb012', '65c5fdc8d99141b297544cb879cc3489', '深圳景田酒店', '豪华双床房-双床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '533870', '18186', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('973fc0b00f764a2db8a42e1d9e409fe9', 'e27d9a86f19644448edcf7e3352a2493', '深圳途家斯维登度假公寓', '高级大床房-大床-无早-宽带免费', 'HOTEL', null, 'yes', 'yes', '1470321', '8292225', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('995b11b627b547bca6f1bc94446023ac', 'f638f46441b34e6187fd13a90ec5f554', '深圳中天美景大酒店', '标准单人房-大床-无早餐-宽带免费', 'HOTEL', null, 'yes', 'yes', '926937', '17920607', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('9b322d5426ed4018a111da7fce8aff46', 'ac5876d83a7f4f9facca7e4dcf82d05d', '深圳途家斯维登度假公寓', '高级大床房-大床-无早-宽带免费', 'HOTEL', null, 'yes', 'yes', '1470321', '8292225', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('9d02d5ada9e54e98ac9e8aadbb7d001e', '1e61a28ad9e14191811c51fcefd41921', '深圳东部华侨城瀑布酒店 ', '高级大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '397462', '9399767', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('a0eac04001174934af4b3ad2d4428166', '8cea7e762ea74ecaa85b067ee98f6b8c', '深圳途家斯维登度假公寓', '高级大床房-大床-无早-宽带免费', 'HOTEL', null, 'yes', 'yes', '1470321', '8292225', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('a19f7719d5664db0b55b9f3a82d478e0', '1f56d25ee5d44e0f8f4fc5846d3f702a', '深圳途家斯维登度假公寓', '高级大床房-大床-无早-宽带免费', 'HOTEL', null, 'yes', 'yes', '1470321', '8292225', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('b21a09b953034c238ab44b5274529db5', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '深圳中天美景大酒店', '豪华大床房-大床-无早餐-宽带免费', 'HOTEL', null, 'yes', 'yes', '926937', '5217618', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('bc683008f19747eebd1a9bf3efc76f34', 'f638f46441b34e6187fd13a90ec5f554', '深圳中天美景大酒店', '豪华大床房-大床-无早餐-宽带免费', 'HOTEL', null, 'yes', 'yes', '926937', '5217618', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('c4aa4b52d5974dc9a66f057d8f69d7a6', '8cea7e762ea74ecaa85b067ee98f6b8c', '深圳东部华侨城瀑布酒店 ', '高级大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '397462', '9399767', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('ccbf6dedb15a4e03a329e8ebf0b94434', '194ccd0875c6493e91225855640e3059', '深圳景田酒店', '豪华双床房-双床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '533870', '18186', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('cd89fcca11114ca2ad1e5081029eb49e', '1e61a28ad9e14191811c51fcefd41921', '深圳途家斯维登度假公寓', '高级大床房-大床-无早-宽带免费', 'HOTEL', null, 'yes', 'yes', '1470321', '8292225', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('d1cd09b911264188bd26b809a6345eb5', '194ccd0875c6493e91225855640e3059', '深圳景田酒店', '商务大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '533870', '130147', '1', 'group1');
INSERT INTO `mc_ticket_detail` VALUES ('d60a7acf9d3b45458aae245b00786c13', '1f56d25ee5d44e0f8f4fc5846d3f702a', '深圳东部华侨城瀑布酒店 ', '高级大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '397462', '9399767', '1', 'group2');
INSERT INTO `mc_ticket_detail` VALUES ('e4ae74174d604aaa96ee688dc368feaa', 'e27d9a86f19644448edcf7e3352a2493', '深圳东部华侨城瀑布酒店 ', '高级大床房-大床-双早-宽带免费', 'HOTEL', null, 'yes', 'yes', '397462', '9399767', '1', 'group2');

-- ----------------------------
-- Table structure for `mc_ticket_price`
-- ----------------------------
DROP TABLE IF EXISTS `mc_ticket_price`;
CREATE TABLE `mc_ticket_price` (
  `ticket_price_id` varchar(40) NOT NULL DEFAULT '',
  `ticket_id` varchar(40) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `market_price` decimal(12,2) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date` date DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticket_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket_price
-- ----------------------------
INSERT INTO `mc_ticket_price` VALUES ('00a5d35b45734a408337caccf2386352', '8cea7e762ea74ecaa85b067ee98f6b8c', '662.00', '1600.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('00a637b3722146e38feff6874f0a96d7', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('00cb096d916b42fbb51fc185491072e9', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('00cef38daae249eea8b0b11a3bfb7af6', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('012ed02fd39142e1b0377beee4a82c2e', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('016b83d92f7a4c2383ba2595815ed29d', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('016bc1e4c00f422697c6002476bda876', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('020ba7e41b1344858d95133c3bec8dff', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('024ab48d1feb42c09c6b1abdc9b4aefa', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0271ad20b73041e7ae764ee98dbc4577', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('02af923b427c40d5a9efd2100c967203', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('02d46f4e1dc4488eb3f9a720e7c2bb36', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('02ee5f7db1a14a10b382080d1be281cc', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('02f62673410c40c7997f67aa503a3eb7', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('032c12b068cf4495b9e861effc86a4d2', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('034fc94e098a4590a48175e24ddefb6b', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0369bd21e73547adae9445a38e6b4d88', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0377f3935422408db917e03db958214b', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('03f2dd5b7349474b9353956495c37a77', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('044748f4c1c14204a4480c027567ed3e', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('044cdecb97994ba88d304cd803df6ef1', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('048d3bd1b481476fb41a6a05c6c199a9', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('04c6f236d7a2463bb5940255378b2879', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('057228c70e3948e0b552532a315dd29f', '1e61a28ad9e14191811c51fcefd41921', '688.00', '688.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('05cb2e7b37474b80a89d89683c3c3dfc', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('05eccad108cf4222a2a8fa55a4349367', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '25', '2016-01-07 14:16:22', '2015-12-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('06485e0515934918bd219749b4986116', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0667a2cc2eb74b7c8bacc94d39296e1d', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0716483ba18648c39e5b0000348de241', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0717dc2c24b24d9ba695e19987bc80b4', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0784ff41bc384803b27daa7c8ce73e96', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0839143f182848e58b84a41e2bebcada', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('08553d7356f640d88635bb0391c5eb2e', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2015', '12', '24', '2016-01-07 14:16:23', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('086cfe651d974721907efa0d4e5d0181', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('08e5e18ed0714a04bfc25d357dd39055', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('090980784fa2478d9f1da352e22da878', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('09358a09f464430d8ad11ce2e03ccb40', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('093fd65c3f454ca2a1216fdac016c089', '1f56d25ee5d44e0f8f4fc5846d3f702a', '688.00', '688.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0a1cda35ebc0414db0e3d22d7a5355d9', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2015', '12', '26', '2016-01-07 14:16:23', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0a459b3cd9ea4cb48b0f0955dade67ec', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0a5177838a4840919613ded1b1a593ab', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0a6e2e2089584e80af0115294a6c599d', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0a7bf901aaa04217b64001ac8e88a6e0', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '26', '2016-01-07 14:16:22', '2015-12-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0aec102b176e4162bcd1c7c607c9a93c', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2015', '12', '19', '2016-01-07 14:16:23', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0aec4b4086a64907a422d02294fe024b', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0b21a7464f2246989ac14598b39924d4', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0b38c4c01d5841ec8277b8f196d7b228', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0bf3b8f0434d4697b96041de48e4f55b', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0bfcde1d22f34f9f8d8cf15ecbd45ea8', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0c1c7d6021c34f1ba77cec5eb8263a2b', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0c94239ab3f64950b669cf954f453c2a', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2015', '12', '19', '2016-01-07 14:16:22', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0c98a56763784ae5937832b6ee4cf048', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0cae86a796a54ebbbb2c81e65b20711f', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0d3a4286fe6c4d8f8e8b8da0363aabbc', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0d4e2ad3e9614ebbbd715927618196fd', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0d8ff1b2ff7647298dc49c8097500866', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0d9c2ee91daf44f4a07e061e19d1765a', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0dd4261a1d6f4c8d9292371d1bef99d4', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0dfd7f777eb14d04b8e467230a0b4ee1', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0e6268cbf4a447abbe49b2f6f068f09b', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0e6889f93a044a8db9873f7391d66d68', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0e8950d63c0a440d8c09e61a2809914f', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0ed87f5143424c22871d5e7971d2fb58', 'f638f46441b34e6187fd13a90ec5f554', '224.00', '0.00', '2015', '12', '31', '2016-01-07 14:16:23', '2015-12-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0ee87b3b81ea4d9ab88bfabeee7c9351', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0eeafe5b24484f53b5864d98c6e105f9', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0f14c7a0fd5448738723b70ff2c91c8e', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0f27be27364243e983c9e0c95539fb3d', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0f31bbb8b0e6449e94a16c1cb931dece', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('0f818644f772460db808cbd32ab1fe3f', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('0fc2b73709af46b28f3fde7d896eafab', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '24', '2016-01-07 14:16:22', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1097151a6677433dba74d2a46e0bff8d', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('109de8a84e574caab37fff8fb68162b4', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '25', '2016-01-07 14:16:23', '2015-12-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('10c9471cfd244a818020da77be6e1742', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('10cc7385974c4da2b71164cd2c48673a', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('10d1852ffa094f8baeec8e938649b9b6', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('10dbd1b23a2b43c0953a1d821fc22cc4', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('10f86686bbd140cb9b473d3bd09155d1', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('11053a650d194f2a8fb8978265e30243', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('116cd2635c114f1881caa4399a587c58', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('116df1f8eb2c41228f217034e2dc4f1d', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('118f17bd18744f0fa5cea437cdbd8837', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('11ef4dbdce87456caee55cd89ba43456', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('12271d9c516445dcb6fcfae82a5b7286', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('123dfb2458194ee283088699de0137a1', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('124ca808b5174ee597fbb4c6d7f28c87', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('12dbd998b37e4185a6b5c1132cb97677', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('131d62cdd4504b85aaf6f76db8893ba6', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('134cccc617004b64b8d9483b85c17b77', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('13f7628d09a74ea49af57a14ca06159b', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1478d01708e04eec86fb47979edd9084', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('14e5904a83784f97a1c1836e006eddcd', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('15016e4d919749d68a388138ec8e47a8', '8cea7e762ea74ecaa85b067ee98f6b8c', '669.00', '1600.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('150cdcec4cac4abf802e6810996d5566', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2015', '12', '19', '2016-01-07 14:16:23', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1528da915df4450d90f2b58c07cb4c56', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '21', '2016-01-07 14:16:22', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1622613d715e4e71b1669e53eacfe75b', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('168ebe56e2434068bc5ad2f4a1a5ab97', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('169bc902057c44df902324813aca7306', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('172fc91f2bd54c0cb44d2e69d2c81a34', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1734430fabcc4c0fb10b07fc1e5377e6', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('17664b3791e744ed8e61c3a8da7ea9d9', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('179344f01c81423594f8e11bb0053e2f', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('182464f2850d4b0390b5ad179db95646', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1885509d5af0443d802e5eb9762603c2', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('188b3c67b8614edabbf08cadac5ccbf9', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('18b1767d3e0e4f1eb34cb4fb1f6b0575', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('198290cb6ea048c9bf338920576b4a57', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('19c4b8762a2f4ce1a22d121a968ecd41', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('19dafe3e4b654082b31e029501432113', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1a0b3654cecb40149e190e2c04f89b01', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1a11692340514ee2adb364e279d81c9f', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1a1e110d313547b8a49adbe594f251ca', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1a2be5a4020746a18fddc57f2019c57f', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1a48d2f41ec24639a57fa1cc7e0b7551', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1a56e9a26b324cf693568d5be2d8bbbd', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1a631bd527654c2aab480837838f8182', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1a6c6483c0f1413aa3a6d56e95e6e397', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1ac1513e48cb41a6b8f3083b6e23db3b', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1af3a858d5184e089c9d3ad2a48abb26', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1aff7fbb3f8345c99204e3d9f05f6745', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1b012eb4d2834b26baee7ba27779cdea', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '28', '2016-01-07 14:16:22', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1b1cb39518cd4ec0b763aedb6e6129a3', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1b213c9a9ac244c4af948fcbef08b265', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1b41582170f14f0a87f83b4c163603e5', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '15', '2016-01-07 14:16:22', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1b51c20693c94de9837864c1a235fa38', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1b8577f358824fb29812eb0d696b313c', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1b8d229f4cc74796bf4fe0ab4e26e12c', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1be2c4ca512645e9b721ae6f3c346eb4', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1beff54567eb4027983a3e22f8d1768e', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1bf8bfde3ef643a99341b2dab531e898', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1bfc05ed870a4e33add9f0605e156429', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1c02ecef0ba442c9a99877609f9904e8', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1c0a9bf74db441b8af75a973cefe627e', '1e61a28ad9e14191811c51fcefd41921', '662.00', '1600.00', '2015', '12', '17', '2016-01-07 14:16:22', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1c57399f97ce4877ba1dba497d834ca6', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1c5c1d8ecf2f4baaabd06c528a598eba', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1cd017bcb38544059f6fd45247df59a0', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1d00c6e60f0d4c88bbba6e39d5dc8c83', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '1', '2016-01-07 14:16:22', '2016-01-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1d33ce7300aa457cb7bcee068b5eb3b5', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1e21b6b226e04cb78382c656180bbe2e', '1e61a28ad9e14191811c51fcefd41921', '669.00', '1600.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1ec4c9c2c08e46e688cd518e17e39db5', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1f2443067e3641cfb1ae0e137c2c4880', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('1f439c91f6574a43b5dee77db70c60a8', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('1f4be9a99104478381a894e67cdfb64b', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('202a333191f84dc3b17c589dd75df8a1', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('20d8806d60d54e15bdd4bad48a2b0efd', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('220ea98f182c48faba8382b5dcd1e5bf', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('22e5a802060a4417abf1a2dbebbcf7ea', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('234c9aa9ba2a4ee7a58acfc90a869922', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('23881ab19e0743c0b912a37c0e56cc74', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('23dad016af6143a1897fd18803f86c48', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('241600e4839546b4a517fcdcd6f2214f', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2483adedd63045469e15f5b826d92270', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('249e0fb501c84f2abd13a670f17fa45d', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('25577826943d4cfc84b71e5a796f7283', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('25cae897f3634e6aa22ce83115350f1b', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('25e7a81decca48b099c23a5a16c48321', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '17', '2016-01-07 14:16:22', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('262bef8386b849f398e214e4c8d0fa0b', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2649e6149e3e4283b8dc8d06a99c749d', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2670bb88f8f14de09d5780b348c25f16', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('268264a8601c479da4b31208c2ee7c25', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('26bff0746c704c80ab89493271fd0cae', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '21', '2016-01-07 14:16:22', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('26f8ffe7329f4ba99c45db81bc10ccd7', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('27125ac707924b22ac9de5cb001c4f09', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('27473c6593e541888788a8a26a3000a7', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('27a19759fadf4e55a25ff747e17a3703', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('27d4278bb77141cc8cb5c1e68d8d1ab5', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('28657a8809804899953446ce13b3ecf4', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('28c89065a8f04d46866a8f1f062b9f04', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('291c897a770e437b96f194bbc8d9c985', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('297ed07bcc49498f9a8de3885cbf2e57', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('29c60e12faca4cd1b4d1c9f20be7c2a2', '1e61a28ad9e14191811c51fcefd41921', '673.00', '1600.00', '2015', '12', '16', '2016-01-07 14:16:22', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2a88bd0c038b450cb136a4f4098f44dc', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2a946a9a1e80446e95c3629c4932a746', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2b13fb7cfe8841caa872a878d468822a', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2b2385e88f95465995a699c0c08d5a7a', 'f638f46441b34e6187fd13a90ec5f554', '281.00', '0.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2b40caa5a8b445a0bffc472da43c051b', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2b63930c0611482a85d699b65cd7e50f', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2ba3c21e7dc248d9b126559d50b85f66', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2bf0c00532bd49a2bea2a7cc10bae47a', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2c2f4689ff424838961152a0a2eb954f', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2c33c64f87d84be281a1088a0234e000', '1e61a28ad9e14191811c51fcefd41921', '688.00', '688.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2c77210abc1c45988dc7eb2649c674a5', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2d68dab577df4e1e890b677a9e27cbd5', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2db5c890f2904e88bb5e468be55fc12a', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2e160cb4a65c459ba9c3648e832a9528', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '1', '2016-01-07 14:16:22', '2016-01-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2e191b9d358e49f7af9dc40bac2e5188', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2e4f872ef1fb420f8ee81591ea4094ec', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2e67055147f64d58972787300b5ac0ea', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2e9599a830df4ff1824a95b50afc58d2', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2ee6b3fb836342928787346e5f72a9a8', 'e27d9a86f19644448edcf7e3352a2493', '662.00', '1600.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2f110487982b43d798cafb632bcdf8c5', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2f1465771d574306950a6b2b55d67a22', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2f41e760b0db41e88e67699604c4e154', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2f49d5cd67f54b68a71324e4aa5acff2', 'e27d9a86f19644448edcf7e3352a2493', '662.00', '1600.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('2f703b39dccb40aea4cb70f8affa6b7e', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('2f86e22cf8384f888c360cbabeecbe3a', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('30215485954d425caa3e831f5a5b241c', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3080f503c1e941ef9b0725874607445c', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('308472a9deb644e59a34351c8ac46846', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('308b29b6062c4e998ac23dfcaba20aa9', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('30c01b4189e24c6da0519e4b59f4b4f4', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('31069c5535da4c91b887812062f91e2e', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('31219bb193a54fe79cb7b5f85e5c5d57', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('31329640024e4ad797900853d628273e', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3135710bd734469fac0b2386c278c69f', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('323097bacf5d4ecb9b3caff011ce0f5c', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('324d0e70b5b744779020948e8af69364', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3251afa020de476aa1b555fd21a50ecf', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3271d0a8055b4bbf9a072fbb92b63462', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3290ee526e084df5b46f26ffa1e5f41d', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('329d975cfc1b4a5b8f3da7cad7e7d303', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('32a53ed9a3bd427681c2b4f987a95eee', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('336abaa125f74ba581d6ff6cb0740ac3', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('339429b7360f4e2088d9628d5dc072aa', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('33ba4d03d87a4fcab3fced51171bfe3b', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('33e8a5cea6b0467aa65f60386309ff85', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('341fd40769fc4ec2a06e5746ff6abbee', '1e61a28ad9e14191811c51fcefd41921', '669.00', '1600.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3437da542baa4021b671068a86c17926', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '19', '2016-01-07 14:16:22', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('34402435980b4174afc42cac823b626d', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '14', '2016-01-07 14:16:22', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3474e4b982e94f8a8f2864172e201ff5', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3482f5e27b744bee85baaadce96c5db7', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('34867d422c6a443fbb1895439105ed06', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('34b4e3376c154693946c4acc763d3eb2', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('34fb11d671b44ce49148f721c60303f2', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('351777cd2c644617b579510f693991f7', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3586634211b4493199af13620e7d6611', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('36ac379089d04e0594b129004082dcc5', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('36cd1309d3ff4e9a86fb447c3287e941', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2015', '12', '24', '2016-01-07 14:16:23', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('37192a826b4a45b5bc32279be3bf15c5', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('374c7a6b3fe54bfc8f66eadcb1b13f07', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('37d1373bdfec4bfb8ff63d4dfb0442bd', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('38c813a47a274b578bb48beda85f93fa', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3970f3ef570449789d72ab7abde25210', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '7', '2016-01-07 14:16:22', '2016-01-07', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('39e69924f0eb4c0bb9db03100abf3a01', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('39e95220cec149a18e212a931d0a907a', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3aa047ecfddd4ebe9de243eddb0e766d', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3aa2c41523914bc292dc7f56de34e268', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3acf325d3358402f8e87339a73abcb8b', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3ad5fac71a3f43a9805e95713a57ac6c', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '1', '2016-01-07 14:16:22', '2016-01-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3aefcb1c9f964db99acd819b6d76460c', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3af7e0b099774f7898b3f8c822d2fa96', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3b44218bb5d54859ba7874313fa9658e', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3bb35ca2f2534f1bb9fcc4f75beb9494', 'e27d9a86f19644448edcf7e3352a2493', '673.00', '1600.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3bc977d7247a43438816b157966abe40', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3be31ab352194f39b2169c9ed7f0bfcd', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3c08c2ef601745689f904d552a26ca24', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3c11f2842e6345f3ae195788367b4530', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '19', '2016-01-07 14:16:22', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3c183fe0bea64212884ee727bf8bee0d', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3c315a43c13949969eb1c5185b7bd045', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3c3a076b0de14e09a4e5b1c10436ecfa', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3c7f1baaaf9f4558ae6fc8115e64fecd', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3cb10fc31fb047cbb36ef39cf392a39a', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3cc5d6d60de3410c80f34c7e778f6da4', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3cc6704819ff481fad1b695cc277a471', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3cdc50bf681e48f299e71be945448c31', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '1', '2016-01-07 14:16:22', '2016-01-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3d176d11337e4e06acde05324c80fc10', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2015', '12', '24', '2016-01-07 14:16:22', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3d5c574b182b4f35b25fd92e7680d18c', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3d87b48861674342b12009659cd06bf3', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3e28708c837d4c7ca98710578e20e9df', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '24', '2016-01-07 14:16:23', '2015-12-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3e42a88a51c5454aa5933f0cdb07e3b1', 'ac5876d83a7f4f9facca7e4dcf82d05d', '673.00', '1600.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3e7d3633ed7a48158dbba0a487b8f04b', 'f2e24087f58e4d05b083076399b4ed0d', '673.00', '1600.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('3eee5144cace402b95d4da9c98585715', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3f410b72d179421e9977941b94bd00ab', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('3f51ad480e2f4cec9177584703a7eb36', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('404c384a9aae4df1824fc1fc394339c8', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('405d43b32b134dcd9f97e3ec66c686ec', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4127703a3da541cc93d0a8355cb4193d', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '21', '2016-01-07 14:16:22', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('413b7dc80fde48508b629628fd7b4a40', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('414e7525cd2e403895d33783f958ebb1', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('41c12bdccd9b48d4acb4584112bb350c', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('41d7646b13004746829f6acb6894436c', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('42fe7425646c46d5afb2f9da20562e36', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('448a28d4f4b344b38ff874d165c1aabc', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('44f814aa15b64ccd8d6013d45c74f25b', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('450eb1abae9a459b80938b20a4891a7f', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('453db48d60474ed3a7958a3df40b56dd', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('455085b9cb404000b88ead0e8be09115', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('457b6c7290c54dd190e3231336d75a5c', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('459f0429209548b6aa7f6828880c1995', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('45af09e3ab3f4c7889d633be81882dd5', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('478f6a94b0ae45eea708b14f49ca72c9', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('47c02bef9bae4471a246174b9b10f4f5', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('47dcff14f3114d22a5fa29d352dc6cf0', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('48246c9ec921457aacbbc3325177bbc9', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('484a236a15b64011a1e7ebf97abc74fa', '8cea7e762ea74ecaa85b067ee98f6b8c', '688.00', '688.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4863e5a06f7c47a38c2d8b52d5ce67c4', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4874fa14c4f948b2ae25bde7ae098af4', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('48cd446526c940e7b77e5bb71df12c43', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('48cf28837e7b43e58a39d358383268a9', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('49151e7fa1434d9a9c10d7ee686c63d3', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('497e41a7c326489eb70b8cdf546f96ed', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('49c4ccfbb00f43f991339b393e4c418c', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4a489c24b6d44794b0d997a40b93dd43', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4a694f8ffa4746e485a8e72671f75811', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4a7083d79ab14cf9bf35cbcf284e2964', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4aa69a151a884e15b59bec56d5eb33c9', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4ab5c3af770e4136ae49c88d2bfb2c2f', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '281.00', '0.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4abc2590df7c4ecaaca8841b620074d6', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4b771b467cba4569a40d819d7dc504c3', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4b9470f3f5d340a6a8d605dcc920ec78', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4bd71a2c941b45c7bb0f74dad33c5655', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4c4c2a7a83594b0dbad1b284ab8a3859', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '25', '2016-01-07 14:16:22', '2015-12-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4c4f6785b09a4f9fa4e5e0677f8396b7', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4c667f5a79454e2592fd228b91ea960e', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4d5730fabd3041ffb8211d663edac743', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4dd0371ff6e34ad49f56b1f5178a90ae', 'ac5876d83a7f4f9facca7e4dcf82d05d', '998.00', '1600.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4dd8ca98b4b64e19b41d1e4776e960fa', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4df6f27e49d048ce8555a84c1bfe1669', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4e587ac0b3134b3597aeb83f5ef14546', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4e8153b8998d44eaa079fd0d149d8e3c', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4ebf30cb98bf48f5933a4051d7d4bc16', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('4ee92e11beb9427cb02201345204f476', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('4f6a040bf01c4fee8758c6081cd934bd', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5061b05483964f5aa98a1cb5c467bdfe', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5087dfa696e04e1280ff253b77946b40', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('509c45b26f8c4955a50bb01267681356', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('51059d1b0ff2489b81cabcf16652bd2b', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5160e746313a47ffb281c45982e37c34', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('516dad9b646a47bfb8b76d0d6d41b887', 'ac5876d83a7f4f9facca7e4dcf82d05d', '669.00', '1600.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('529cc0d43a5c4008b19b7dfca6e574e3', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('53c0e1f60d5349909233f8aa144852c0', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('54baf1c553b243f49dda51b6fabc5d57', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('54f018795df0449484c9608b8476ad4f', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('54f4b9c6cda84f5fb1e2141a3bee47d9', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('551809d898d244ee96c9275dd1d1be50', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5550b577729e4f27a82d88496cf90d6d', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('555b9150c08e46e2bb76189d94ce8f22', '1f56d25ee5d44e0f8f4fc5846d3f702a', '669.00', '1600.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('557b964aa856462eb4df9f2738346f42', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '31', '2016-01-07 14:16:23', '2015-12-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5613823960244b0aaece267321b473da', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('562ddfc84c1c488595f411873c1bdc2f', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('563b28971d554d17994806ffad45ff75', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5645030609534f4dadd8400a1f307852', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5650712f53934016a2185e736a27de6a', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('569b913df3724153982bf4873728efe0', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('56d132d1d4194b27b3f69cba4609d7f3', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('572be91755f849ec955b674c013ca517', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '381.00', '838.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('57478caee80d4ab58b3210896c7afe5c', 'ac5876d83a7f4f9facca7e4dcf82d05d', '662.00', '1600.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5760c935a2da417798eb509e079aa4a7', '1e61a28ad9e14191811c51fcefd41921', '998.00', '1600.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('579b199f0aae40a996fe510deca37b72', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('57d0cf722bd94189af57b554c2da1358', '1e61a28ad9e14191811c51fcefd41921', '662.00', '1600.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('57ea9f3c302d44f0afa25b6644af1b3a', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5825d66e04af4745ad90066ad9d53c5d', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '14', '2016-01-07 14:16:22', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('58384f37b4c04ba183a545e7d75e1aaa', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('58648ddc620642a0a977cc29da2fef94', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('58b53cf54381499196384a69f63ab9ab', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('58e0ba764b6a4874894735883a90fe50', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('59378aaf02e44d34b085e9f4c48ed51a', 'ac5876d83a7f4f9facca7e4dcf82d05d', '662.00', '1600.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('595c5a5e7a2a49db8f2d841be0fb1351', 'f638f46441b34e6187fd13a90ec5f554', '381.00', '838.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('598c0127f5af4c5a9519f75572b3111d', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('59a13bb355214d3db5515c96132b8516', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('59d7455daa4b4057aa755ab1ece93935', 'ac5876d83a7f4f9facca7e4dcf82d05d', '662.00', '1600.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('59f506d044f64910ac78923ccc929764', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5a0fce6d04ab40d3988ce3cf7e06617d', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5a5f66154b9b4576a6eeecaebcf74a26', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5a982005a341497ba94b6ef2194fbe5f', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5ae25dff657c4a3e8c24aef8ea4398c0', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5b27a6c146614e26a637b1e9e7723642', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5b31e4d843ba44c69fddfd32cf8642af', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5b38b6740ebb480685bdc8bb57c2e9bc', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5b45f5b16acf4a40a75e852d9c0e535a', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5b91adb913b146e4adb1b8b7ae235294', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5b99dd12e5154e9ba987d9f9e5032652', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5bc01b7052e3463c98055a0402a56934', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '7', '2016-01-07 14:16:23', '2016-01-07', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5bd8503715e84c54bffa7d2b809c05c6', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5c1aec5a2b074df59d828d9e1b3dda02', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5cbb2cece8e8436d90337670f670783d', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5cc2ba31a228413b82355f8ec347ad9a', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5cdac6ed6bb7499cabe8329996c7bf7f', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5d22461ef82d401e9c1635fc158bc2ee', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5d62f36cffd7442e92eff23cc46ebb58', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5ddfe7b934154de0bec8a0af964076f8', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '381.00', '838.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5de70f94b1b249628cc03ecf7e102851', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5df9476a82d8417cb92e08ee77fb5c8a', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2015', '12', '19', '2016-01-07 14:16:22', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5ea10c53883344d0a47a1ef448d86bac', 'f638f46441b34e6187fd13a90ec5f554', '381.00', '838.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5ea30a06ba78444181c8889f336f5089', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5ebd1b411c2a4843a4ccb0f3c1fa69a2', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5ece45a3a08647b1b64a44c5d730a26e', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5fa2ca351f7d462f87f35936eeb6ca35', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('5fcfdc01d8a04ddd8c6557dde39599f2', '8cea7e762ea74ecaa85b067ee98f6b8c', '688.00', '688.00', '2016', '1', '2', '2016-01-07 14:16:23', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('5fdc82b62412437184667c8d113bf0e0', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('60005f76988b4d3e8abef2b60728cd3e', 'f2e24087f58e4d05b083076399b4ed0d', '669.00', '1600.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6059651a307f4df8b1599cbbfbc2001a', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('60c6eebb65944b78beab7a39da56f6f5', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('60db00e999014d8baeaba5b2f681eb6c', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('60df443693704dac813d8519c26c1911', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('61261c5ebbb740859055852d7f7df04e', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('616ce64b8a604f7894a34d78fd2cca2f', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('61ec2a0d3f0e4ecbaedba9d0f70dc268', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('62244564fce5480cbb608a21d1f898d4', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6278241cd9474a5caa7d6e8c7d32e830', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('62bac722f13945108d40dd6269a3fc46', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2015', '12', '24', '2016-01-07 14:16:23', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('62e8bb5b348b4514984fa07c2f09f2d8', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2015', '12', '24', '2016-01-07 14:16:22', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('632d95af7e494082bb3cff42c1e42756', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('63ca9e8a4c15417a96db88dfbdb59f43', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('63e74cb7ddcb46beb0c2078b58a5b39d', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2015', '12', '26', '2016-01-07 14:16:22', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('644bfa6f7b8d441b9be0051c806e8962', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('65135e7a6f274f268709d9303f061bef', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('651fc7c2f42547e78584cd2aa026a56a', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6527b29fcca74a57ba9a3d29af333017', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6556de51d07246c3a79dced7bbdeda25', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('65ab82edf8f74d79ada5ce2e9e5156de', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('65c25442919143d69fdc8e72ec3e9d62', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '19', '2016-01-07 14:16:23', '2015-12-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('65c4a03940154f3a8593effa3569269e', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('65eb87853ebf4c5fb273ac7638897df4', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '15', '2016-01-07 14:16:22', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('66cdf8f6e7664f22826db24a293a4ab6', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('670dc0d86ca2465c91e29395a93c6f0e', '8cea7e762ea74ecaa85b067ee98f6b8c', '673.00', '1600.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('676246db42694843964c8974d90ded64', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('679b21d9b11146b6a8f8cc66045d787a', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6881fa696258465eb1459f7d3a58c29d', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('68bd17e071514214ad4e9fce968f295b', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('68c0e5cca8e14b43a5771ec403d4590c', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6908f7ec8ed140419d83e79abc512fa9', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('690b6caa65554153a9a10cad5b55f8ce', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('692ce80f488a43caa8e358e3df8ad21b', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6958b9595fb74dcaa3ed7131c2f4855e', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('696cf6ed9c6549638e5a8d3e0080bf5d', '8cea7e762ea74ecaa85b067ee98f6b8c', '669.00', '1600.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('696dfa87a6a14e288034a5d810c379f1', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('69a12dedc6d1495db407a9506d517f58', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('69a8538f86434705a5e1eee1784b5203', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('69ae44a407f34c16b9e84e26e95ec99e', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('69b75273ba8e4b24961e69906e9e4a1c', 'f638f46441b34e6187fd13a90ec5f554', '281.00', '0.00', '2016', '1', '7', '2016-01-07 14:16:23', '2016-01-07', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('69f781a48af747df8e7d076272181d76', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6a6f076802a24972a9789eb782faa07a', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6a8efa01b84745128d833b051fe750cd', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6ac3c27a51b14cf086c97fa16515fe77', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6b19d5af9a3e4ca1b672fa990bb556c0', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6bbae300de3a46439e157a9bceebd926', 'f2e24087f58e4d05b083076399b4ed0d', '669.00', '1600.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6bff9d0b02f1472c9ba551e0a329a163', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6c43567b4a884c79b13addb7bcd4d858', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6c787c351d7f4eb1a3e15b240c6b20de', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '14', '2016-01-07 14:16:22', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6d23ac93b8654c7aad19cfe11be84981', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6d60772b92dc410589b2a27f53372ebf', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6d72288e0f49477aaac5b36c7d2881ed', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6d735edc7cec414ba6b03853203b28f5', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6d9154bc772a4d94a717f7f69bdcd644', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6e1dc0143f46462196de673cd3784748', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('6e7faeac45e743a3a71600cde565553e', 'f2e24087f58e4d05b083076399b4ed0d', '688.00', '688.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6e98a1de5f014e2bbb307163f45e2513', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6ec1ebc2a92843c598e20df407c55066', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6f27fa3d86fa4e128d7d53cc17e10873', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '7', '2016-01-07 14:16:23', '2016-01-07', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6f8c838db3c04cfeaaea5832973395a6', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6fa18fa24eb74d528845d9ef9f509a12', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('6fe97d2a17a846b6a9e85526482e3a52', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '28', '2016-01-07 14:16:22', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('70cb7b03541842efb0089ff774b3ef44', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('70e9cba966cd4982ab61b59cdf40897e', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('70f021cc7d8e490981e14dd9c4054bbe', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('71468b28cff94ce4b18a562637e8d7d7', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('71e8ffe5eae949ac9ab5bfe55f004675', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('720816edede649bd99f2dad23ea80c7a', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7253f1e324244524bcfeceebcebdca07', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7262a4a23a274363853963f60ff66e65', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('72ba5b79ce0645149541d6f07fd75ad3', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('73b933045e334631922c03fd54788cff', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('73f1d2603c1c4587aca56e0fbb9cef28', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7441ef4e73ce4996b669ad7e5d52e6ba', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('744a78768c4b4c5bad73a0528683fa3d', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('746dd65d6d91464bb2b03a8d0c9013fd', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('74b93c620a0e4ca196fb58eb788ab1d0', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('74edcbb8663744eba7b3f19d419a1f9d', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '1', '2016-01-07 14:16:22', '2016-01-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7567183d22a74e3790cea48c0abf8e33', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7584972178734a37ae7c8f00a0d4833d', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('75c433a656724ec4ae33161b5abf9e23', 'e27d9a86f19644448edcf7e3352a2493', '669.00', '1600.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('75c5bd9e33884c14aac7e8b57b43961b', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('75c6c065175c4aff8dfbc25f94e68a73', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('75ec59f5d22c4b4b88490c89cf5decaf', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('75fc3f7d6fc24ad49ab5197aaafbc9d6', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('76386a958df64dcbb538dbef3147c4b9', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('76c81bb53ef649f08598534e93c46441', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('772e60e257724323bf72873167b05d42', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('77646f8c7b9548e2ae7e6b85ba603f39', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7777527e522e46e4a9f28451d04504fe', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('79027168133b496c803bff73289bcb98', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('791488f063204d0c82a9c3ce33a202ec', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('791a11a086494f878222bbdad488c08b', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('793df5d8719e40abbe15ffce5e114fc9', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('794709d43bc74adb8551683e9eb42543', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('795ff99ccc5943b99d4956b25f1eba65', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('796ee04264d14a01a5a131302d0e65d1', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7a00639aa92c4031a8515f9100ef60f4', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7a1bea0880f449588df9c66e99e68d1b', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7a1c88e8d69f4a5b920bc3672ffc3a28', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7a4fe24610684dc9a45b4fcd3c373945', '1f56d25ee5d44e0f8f4fc5846d3f702a', '662.00', '1600.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7a9bf01302704d34b43fc82c1d458527', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7ae5ef558c0a48da89bded3da50663d4', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7b1edaad8cca431ca34ef00c08d42f34', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7b357f78b2e7404f87e8f617a5c26dd6', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7b70aa18c6284f34a7feaa325d22bf9e', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7bc8b68371074f3695ed1dbf1678948e', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7bdca566cb9d46798e80de25e766212c', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7be82b84507f4b9dbe176578518ef332', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7cf610f9c3f84f6c854889b77549b050', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '7', '2016-01-07 14:16:22', '2016-01-07', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7d62763bb83a413cb7d9bbca69318092', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7d6af96fe26e4f899262ac57958b7d8c', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7d6fd166feb14222bd75d61a5baddf8e', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7db708ced16446aca67fd041d27c5f94', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7dceb011dcda487a9f69e8376d8cba95', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7de7514110754f4e839323e930ad1df2', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7e50661f9cab4fd188038bca14f824b2', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7e50c2a23f174f34ad8f61493bc50469', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7e702f11233747cfaca1c5678f3d02ae', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7e7ff5baabaf4ee381a7bbf1bb66baab', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7ebcbe1af7d548ed8470593b3d6000ef', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7ef8379a2e2d4b6d907763ecde5350b6', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7f2f21b1d0aa46c98f51ce91749473ee', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7f4dae28d4e84baeb6d18f1a2c7a3e11', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('7fb078e6575f4f04a0703da96d1917b8', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '15', '2016-01-07 14:16:22', '2015-12-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('7ff5a160ddc7401ca730e3ea0b9c22f8', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '31', '2016-01-07 14:16:22', '2015-12-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('800f47637bd04b92af3c3e562f7579fd', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8014df3125f34ab9a0fe9d5fbc156ea6', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8022d528c2254c6f9731ffba016e5df6', 'f638f46441b34e6187fd13a90ec5f554', '381.00', '838.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('803f0596ea1943bb85c84a65cd86ea91', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('805b1c7baeca4730a7e2ec016003a867', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('806698bcb09e4a4fb0ad40b635d89fca', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('80bb66b4607c4a8ea8cc9caadd2a2a53', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('80c8f0ea9d64489b8386cc66163c6ccd', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('80fc5caa14ca4d5ebf3c5abe9cddfc9c', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('813614d372504659b2d63effd2b818ef', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('81e9f92213ae4c9dae1bccebd23a1d6d', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8233c6abce7b42bf909c5579da49c25e', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '224.00', '0.00', '2015', '12', '31', '2016-01-07 14:16:23', '2015-12-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('827b0653b7ca4b6db97aea8a0b2d848b', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('828746a6adcd485f81853007e6d971ef', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('831c103e691146a38c16014a07fa3af4', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('83a34d0e4def4a90b1f55bc7e5bdc74a', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('83ef23e7fe6a4261906a31f4a601e991', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('841f3654f6134aac944846c6a36edece', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8422d1fa36c34e98bb3f2b0466e921fc', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '25', '2016-01-07 14:16:23', '2015-12-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('84d6adfbe9a04c2ab1fb30d9a89840ff', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('84e966c9429e476dbad67c84c0644d04', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('84ef1d01f02542398f0eadd299e7d46f', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('850af4f76c2f4f0794201c53da251131', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('855ec98b439b4fa4b4351140978b60fe', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8589d0573766408ea370c90dfe91d4c4', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('85996e93da844898b4ec75984abae818', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8683ada574bc4827a69f74a038ddcf6b', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('87242f8f9adf41f4acf0e1d92fb48856', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8745adaaed984bbc86ac2df00b4e6593', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('87709e883c26434486c88b7b01ca4d7b', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('87afb40531534297928826c89fe224cb', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('87e7beb8df694c6987fef5bab9ec2f8e', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('880b20bc9f834bd19e2e3364bef50ed7', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('88189b812bbb46eda085e617433fb7dc', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8895ea183fc043afa7b8818f6575a03c', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('89aff927fbcd4e7aa04c5ed119152d87', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('89be0cc263e04acb895edb3692523b56', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('89d494babb72410aa3405b8816a6ac13', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8a5bdf15a162487faa13919bf9e583d9', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '14', '2016-01-07 14:16:22', '2015-12-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8a75cff7e3f84d77b0a262b1a12e51ad', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8ac87bc5285445cc97063345fdc4a1e9', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8ad7279f4cb84fd3a2f728deb096089f', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8aee0dbd883740bcb3724909cb2c701f', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8b54cfc883fc4e98b9e654c814243013', '1f56d25ee5d44e0f8f4fc5846d3f702a', '688.00', '688.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8b607c0565574a68821281ba5d572ffe', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8b7806e69447452a9dd56303bd473186', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8bb82b19b07442fb84550ea6bf5830a3', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8beb6e70390b4d4c824e4b9a28b3019a', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '15', '2016-01-07 14:16:22', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8c0a3e00393440288775afbfe9ceeb60', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '381.00', '838.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8c3c5a812abc44b495ed1298987e2587', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8c3e1cc8eb414554b8a572014864902a', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8c44fcb03c7949e4bde5151ccf2c11ef', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8c7bba2e0dd847139d380c6fab92fc21', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8c7c6874c8ea4607ac418c97dfd40955', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8cffb7521b11444981e87d0aae5c1526', '1f56d25ee5d44e0f8f4fc5846d3f702a', '662.00', '1600.00', '2015', '12', '17', '2016-01-07 14:16:22', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8d3bfef9aad345e4871a826453a9697e', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8d400aacf89042b18dac943f1f199550', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8d440ae2206342a398d6b752f7c6db33', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8d885c58465a444b818aff17640fa509', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8e2fa4ca11294fc49aac8184ab6d551b', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8e526c164f1c4afba35d0c77b662609c', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8e7a1bf3c0ee43b6a8150c4058ed3ece', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8ec4f0e7e681422c86e603d95b0b7389', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8edd04c8ae734ac5b9648e7e2b66832c', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8f0c852e161248ea8a31014fef536935', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2015', '12', '26', '2016-01-07 14:16:22', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('8f2a75eaaaa3437cb1c71e2ceac311a9', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('8f97d70f91cb4503844b32e62171b801', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '25', '2016-01-07 14:16:22', '2015-12-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9012a27b01e248389f52a11cd615c69b', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '28', '2016-01-07 14:16:22', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('90388768f1344400b5b3f957f16f0ec2', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('904c1b7ad6704422911bbd1b16c7cac0', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('90950ca3d7d14e2fa04996ea0bcaa937', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('90ad8e283da549eab34c751c1b7868fc', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('90c1c372816a46ab8c4546c8d0112faf', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('90c56620895d4492b01d808de816ca60', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('90e5ab7012c8487d9a1acccae0023cc8', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9107dbd29fb34cbc8c9578f9635c58bb', 'f2e24087f58e4d05b083076399b4ed0d', '688.00', '688.00', '2016', '1', '2', '2016-01-07 14:16:23', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9168446cc88b4c55b728a220f3c86fcd', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('91f2c279c2ea4e919e1388b985a122f8', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('91f54da5790245eba4c8bdabf4fe9b85', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('92398195d5da44ac9e1291d1a8396398', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('92a350f231da4eb993522e4abaac1e2d', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '15', '2016-01-07 14:16:22', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('92fd41b1ff5742a9a4a5811bff8b1ca0', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9302830edd434c6bab884218e70fc779', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('93a1ccb778644616832f8b1c705c0707', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('93c12005bece4aa6856f4706057a17b1', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('93fbff964023466fab0056d293d8a6d6', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('949ddf33890e48918fc8ab2ec0a14512', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('94a4b002069e4c5fa2549e56159c6aa5', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('94ad70697fbf44dcb9ca37446b3acb84', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('94cb6f63582a4faea0af81b24963cf8f', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '24', '2016-01-07 14:16:22', '2015-12-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9504e1d51e62421b85355fe4062129a9', 'ac5876d83a7f4f9facca7e4dcf82d05d', '688.00', '688.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9608e2345558400cabe29776f9a653cf', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9698fd9116c94383a568491ee321886a', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '24', '2016-01-07 14:16:22', '2015-12-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('96a038f9de044bc3862e9adf348928a9', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('96d6b97f83494c80b41da94857dee5c6', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('971c7ebce3234ed481bd653e68686e68', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9721fdbd132f40eab3b0de827aa7dbe3', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('973883c267fd405b994440411c8aa739', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9745dec6fcb94a72bbbddee699217e09', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('975a5717ffb34bb58e7f6a804af26e29', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9783e0341fdf492a8ea674d04537ad16', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '29', '2016-01-07 14:16:22', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('984ab065ac084a70b83ac36f77584cd2', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('98acb0bb632448e9aaae414090f33007', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('98af5b8ebca44b739fd291e7a23c2dcc', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('98c27466cbf14ffd8692b50952b03154', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('996d805447e44f46a7ae9cc9d9507e4f', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('99bf9b729d1a4d59a887944f20bc010a', 'f2e24087f58e4d05b083076399b4ed0d', '662.00', '1600.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('99d882d308d84b2294e38d7a72be2005', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '26', '2016-01-07 14:16:22', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('99ee1a23af464040894ff4ccc2fc4f82', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9a0e915fd39944a287ba4f4b9b5c4ede', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9ae3c208a90647a8b5a0ce47511b260e', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9b49cc852fa540ccafb094b9b70c1740', 'ac5876d83a7f4f9facca7e4dcf82d05d', '669.00', '1600.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9b54a67df6954f4f96b8e21283d961ea', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9b7af378d4a844168805fd69d11f6e40', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9bc31935ce584251b6a93831d9f1f103', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9bca5050b7724945b7a7dc73c41a2a6a', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9bef0353b8cd40fdb1138f96d3823001', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9bf11cdba9e248368a7126dfa756521a', 'f638f46441b34e6187fd13a90ec5f554', '281.00', '0.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9c1222d0bf95416780030d1a855b9026', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9c4bd76139e74c75883556432a92f90d', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9ca0a866e6e846059e4df6a2f4a01e09', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '7', '2016-01-07 14:16:23', '2016-01-07', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9ceb328201994c169d5d5acb9fb92916', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '281.00', '0.00', '2016', '1', '7', '2016-01-07 14:16:23', '2016-01-07', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9d2e48d4f50c4f3da19398f0f5898b98', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9d41c8bc857d4b66b385afb3f1d27710', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9d50475da0184fcbaed9ea0b48484df0', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9d5c21efb20e45a3a06a7f7699307763', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '31', '2016-01-07 14:16:22', '2015-12-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9e2007afa97a4d3e9879973abecb55bc', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9e29b20059da4ef19af4379df709e776', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9e42500dabbf45a38c270bb7e9856593', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9eccba62cf3e48a6975176a4624cd00a', 'f2e24087f58e4d05b083076399b4ed0d', '662.00', '1600.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9ee8fb1ffe454527b9bcaedd375ffba8', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9f0a188bcfae40868b161f52d6b1b5a5', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9f0c2b07eaaf4c028828d9f3f3285184', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '15', '2016-01-07 14:16:22', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9f1b141d3235488cad000f6e491352a4', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9f28b208186d431bbf454ea3cdee4858', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '19', '2016-01-07 14:16:22', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('9f5d94349ab34d2aab5108a209db0cb6', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9fc770170e09443da7a7f993673e9de0', '1f56d25ee5d44e0f8f4fc5846d3f702a', '669.00', '1600.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('9ff859e609cf4161adbd939018b19c7e', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a048046e50364fbea317fd71d2ccf8cd', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a04c7a0e0bda4519b288dc66a715d894', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a112153a1a3c4414b275f96d7b923789', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a1519d5955574b9bb13b8d90a6aa9e1d', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '27', '2016-01-07 14:16:22', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a158465091c64d84aacc672952114aed', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a1e9264c95c840afa6d420301f2c44e3', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a1f4b5037cc24ebbaae2da17519f277b', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a217208e99594113a676eadb1a19317c', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a2653e90bff748ffb81c6668c28091ca', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a296a3cc2f63451a938d9db51d025013', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a2f0387306a949bcb2d42e1d6819b8df', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a32d9dc00ed840f79369a23be5a2ae95', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a332adbd79b440c0ba10d5e9aa35d503', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a33ef82dd45c4fefb9ded6d690973bec', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '25', '2016-01-07 14:16:22', '2015-12-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a375aa25c4744edf9ad37f9d7b28dfce', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a38adde2389b465486a16b817be2a9dd', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a3aed1ed4cd3420fb5f915ecf55d8310', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2015', '12', '19', '2016-01-07 14:16:23', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a434a7dc283e46b995dc2cdda9cedd3c', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a4c5272645f847deab485f1180fb828d', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a52fd0b686064afb8eac8c8398390148', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a553fbb771ea4e218f651340a52a6230', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a5555edbd4924e5fbacff75da22041ec', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a5fb24167f014a6eb62051c4d79ece2b', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a5fc2f806b984b4fbf1906a413278f67', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a64ecda4905c4f1d958cacd592a20695', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a68a90a3d71c46eb97b8c4ebe51aae34', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a6b3896330d44494b44ed132c58fbd7c', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a77ebfe63d7b484d8484c04530aeadc5', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a7a920e1e8fa4534adea5d9a5f731f8b', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a7d1c3d0a53540428c1bd8da987fd8f3', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a7e2268871d64d46bf0bb0f6110dcb39', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a82e21bd14bc4ffa9216820a5b0e553b', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a8825fa6924e429bb27cd30976f22ad9', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a8cd6ab61bf940b59d8960ae2e0c974f', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a8d4019b022a4913803ef79806793a29', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('a8dd01013c5d42ee9e8be9c88c646a93', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('a959addc7d3242e49f5fd084b682c375', '8cea7e762ea74ecaa85b067ee98f6b8c', '998.00', '1600.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('aa1e78c703da496898767f9811c55e8a', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('aabecff684824387a4b24188cd79f950', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ab0ead01a02a46439003bc99afb3f8e5', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ab3083bfffc04988879f88d85a2d72c1', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('abee04b2f9a347d4ba9e867363da92d4', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ac4d0db4afdf4bcd8aa2cd2a7948b62b', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ac82fdf6aa114a9f86a7523e48eef968', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('aca04aaaee384d688209d0f682d8d519', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('acd7564e5c0144658c303dfb50aa5f43', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ad1106137ff14ddf95202f9c7d472072', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ad29228cf45a4128b8c6380a9ba146ff', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '31', '2016-01-07 14:16:23', '2015-12-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ad71f0701fdc4eaa8b2251160aef088a', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '2', '2', '2016-01-07 14:16:22', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ad731a9acfdd4297a48b1b429bcb08df', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ad808a497abe47e6ab751e86d92acb60', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ad96971bf61044c488d6ad718c26cb3a', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ae38e0355ef74ebb8d98e5d232d0b992', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ae43d615ea0b43fa8f8234bfe8bcd4b4', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ae5e29a379a34e66a58c7ae3ba3ca84c', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ae99d09819954790a7314aad89dca501', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '25', '2016-01-07 14:16:22', '2015-12-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('aeb72896797243128db04e24f1b7cc74', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('af65a5c4d49d4b4dbdbb82a630fee4e2', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('af739ba2adf647eb9c64f6d3c0795a7d', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('afa2ce58a0a94ffd92b9edd1a4f0291c', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b00d4c71ceb54b8eb79fc0860ae9c61d', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '26', '2016-01-07 14:16:22', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b0226df1b6b34c46bbb711c1fff8621a', '1f56d25ee5d44e0f8f4fc5846d3f702a', '662.00', '1600.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b0393771a32c4917a978ffb3d643b30a', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b0397264685746b09e593fa43fcb1050', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b08fe881132340b2957a2088a71d3b6a', 'e27d9a86f19644448edcf7e3352a2493', '998.00', '1600.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b0e07f6750d745b69b8d899116c9802f', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b1450aa25ef242eb8b38adb23a11d0ff', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b14ac01f5c454010b4ad9b77b768be41', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b177d32e0a914f208803ac65e52b3cb1', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b17ce74a3f344b72967c75c13f329cee', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b19cd54f929244c4b282ce61d3d1a0da', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b1dced52e64b46e2a479d4613242719e', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b20532fea8114cf6af4e8453e72f7da2', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b207814bdc874449b5630d283725171b', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b2196937b5a5453c960a34904ab7fb19', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b27b3d8ec57b4d6594e3da25e0dfdebe', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '15', '2016-01-07 14:16:22', '2015-12-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b2d81a9555b34d1c9820edde4ef44a95', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '26', '2016-01-07 14:16:23', '2015-12-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b32cc977e861449593d1e30ce4cc57b1', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b39d458b9ee64e2690b1a4f7102e3cfb', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b3a869cba52e45359fab3390571d556f', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b3e05cb269b146a2899649e25efb9043', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b45c5d463bdd4b1fb67d71b517dd43a0', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b4743d81b6f54ba18ec0a47679cf4296', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b475f6cabbf94d9f8a925a9840064956', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b47c5eb0f2a84048b0c843f92f987a9a', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b4941d46762040ffba653fefdf1644ed', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b4a1a4eef6fd4e4faaf38c25619325f7', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b56a633282e24646a0e4f7ef29b71ac8', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b5afd5345d3e4c6c9290f22eb092e8d5', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b5c4890c34f24fcc84cc797362a1344f', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b5ed5bf7649a4d098cad58e2bb031f67', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b5f479894b324b8f9eb38bc1296d3a35', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b60a28d8932045879b19378924d1f74a', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b646f6da004844bf99da04f20e7c4dd6', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b66dd506d8be477ca0ed11f54e5c0bdd', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b6e20b92e0f6410284969ae0f0571e40', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2015', '12', '24', '2016-01-07 14:16:23', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b77004933734409791f6c30584304d59', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b7f16f24a3d94a778037387b489ccc14', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b80f5fe05b4c443788c6e5669aaa720b', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b85329f8d0fe48a5a7a14f33320b413a', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b8846353341c4f3b9d739e22b3e7fd44', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b934d27976814a258604194bcdc5abcb', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b9366b2d5dca4fa383674deb5725a2d2', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b95e1399e5d3436dac8c84caad0167d1', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('b9a14f5056474d3ab8340c75b00565d6', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('b9d53d4170dd4f2389e28680e7a74e23', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ba778a7bf5c448708f1eb01b01377d4a', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ba91e1c14eda445388402620f212344b', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('baaaeb980e914798a8252a574be91444', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('bb1e4d4e492a4b8d854a0211be945d88', '8cea7e762ea74ecaa85b067ee98f6b8c', '662.00', '1600.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('bb31127deb9b462c9872675ab587a3d3', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '11', '2016-01-07 14:16:23', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bb6d17c62e0649d4be9016960e5d5235', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bb8d7a70c72f4641b0c5ae2c4c539213', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bbb17647f667450eaa5df0d546011f2c', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2016', '1', '22', '2016-01-07 14:16:23', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bbc57619e93748a2ac63b84f648ebd4c', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2015', '12', '19', '2016-01-07 14:16:23', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bbda93dbdf2c4481846aa60a243e38fc', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('bbf3310aa94c4584b6d5fbb919eb7eab', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('bc1ebb18f14b48b0bbda52a9fe9aa48f', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '28', '2016-01-07 14:16:22', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bc2be64968584b919969a2bd56aefe98', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('bc494b82a42a4cbdba747d7e3678236d', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bc5da6aa83564de98109b3ce64b720f4', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bc7182484e964afb990769632a747c6c', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2015', '12', '26', '2016-01-07 14:16:23', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bccbef93ee394942b56c34007fb87460', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bd0f7a61cf1246f78823898fc2cc90b6', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bdd6f66b4f7d43dc985a0ad169d1315b', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bddb95acba484beca870319ff94b860f', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('be17f5ed295f412f929a76105788004f', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('be2cd41755d8447ba6106b333234b0a0', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('be8c22914bf84cbe826f237f61dbf858', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '14', '2016-01-07 14:16:22', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bea7a0ce544b47f08e9c44ffffb0a6f8', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('bf045bc2682f4b67a1ff0b089e0ce161', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '26', '2016-01-07 14:16:22', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bf3646172252442d86a15d058c461834', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('bfc9448e65c349cfa5b9c44edc365836', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '31', '2016-01-07 14:16:23', '2015-12-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c01a9ddbcdeb420aab2cf251e88b5ad4', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c030b0731e7e497b911d72be31216c34', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '19', '2016-01-07 14:16:23', '2015-12-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c0a2110fd1fd494fb0ffc44fce0a0aa0', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c0ca9f2278b34daa9b1ec7b22d2443d6', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c0d5adf7d3b34db39005b67928913d96', '8cea7e762ea74ecaa85b067ee98f6b8c', '368.00', '688.00', '2015', '12', '26', '2016-01-07 14:16:23', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c14515a13a704b899034fdaee44f389b', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c192acf585bf469d8143bdd83dacdd5f', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c19379f54e554e63a56f68cd71cd0c3e', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c1ae6555fd034311ab1419570419ae97', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c23449761ceb4543bcbb3007fa5fc7ef', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '31', '2016-01-07 14:16:22', '2015-12-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c26b9cca028f493785abd2947d7ad732', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c2a479c4c47443ee880a250d254bea8f', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c30130991ef541518174fab0dbfe3517', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c305ed6e494749958171f5766b3659bb', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c35e871c67c546bc82e53f319093db99', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c36c9b1619974622bae29abd4abf1f0d', 'f638f46441b34e6187fd13a90ec5f554', '381.00', '838.00', '2015', '12', '30', '2016-01-07 14:16:23', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c3f09f71645c4c94ba142ec22c3014b2', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '31', '2016-01-07 14:16:22', '2015-12-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c408ee2e730e4d6fbd50793bc733b7df', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c429336df9cb4a6996297af3228c6fdb', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c45aa3db581340bf8d13202d7db4b2ef', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c4db63ff622e45b88708dd09a1cab388', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c4f4aa79f56649e4bb11fea086ca1d36', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '281.00', '0.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c51be41f596d4b1f8ddfae0aee7c41b9', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c61d9ef3d69e4822b91552230df67d86', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c683efe897ba448c8da6ba7538d98f64', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c6addcc81c5b4ef1b0c544e32cc96825', '8cea7e762ea74ecaa85b067ee98f6b8c', '662.00', '1600.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c6c49f00517c4551b56be23ea7c8c745', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '19', '2016-01-07 14:16:22', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c6d6fd7b8ae145358bc25b34723100b6', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c6e8d5936b5647d5a5ec8a081f45dcf5', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c714f5e786994885950bd09011393307', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '15', '2016-01-07 14:16:22', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c75288a536f346f586fb158834c5a840', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c7e516a621a0411188f859007adb9c2c', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c84175de98ee4e3a86dd0ada59292189', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c8d3ee0d7421464698b061660791f65a', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c8fe0d97d3f54b7d8ee236cf021fed81', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '8', '2016-01-07 14:16:23', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('c98b3560612c4804b782c3a1353a23a4', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c9c25cb4a1de4661ba551d259e4085e2', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('c9fab19164cd402fbb28d4b7bf891097', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ca5ae81c95874811a7d7561382e0a4ed', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ca92ff14de0d4cec8f0f7a9197926854', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('caaf976d4cec47858a604c4d47a927c8', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '27', '2016-01-07 14:16:22', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cab8e8ca207749058cefe25440ea0717', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '28', '2016-01-07 14:16:22', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('cadaba28b8a84840a3b79e8121822a66', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '17', '2016-01-07 14:16:22', '2015-12-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('caffeb55c451495e8c4dec4fb86f6b3b', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('cb043bbba5f64d8ab86a7ad310e4f16e', 'f2e24087f58e4d05b083076399b4ed0d', '998.00', '1600.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('cb2b6d6ad50c47cf9cf32634ce4f1d3c', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cb4bf2d493114ece88315a381bc76a8c', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cbab028ee9b64f46ba2b905ad0870d24', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('cbcf6b2dbac6416b85cd6b75fbacff33', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cc94c8dbc37e47678efaa8409d36916a', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cccfc3a8229a40a6abe588c198f77fac', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cea00c6f6f564b9c88356d27ce789184', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('cf1b264b99e44d8abebf2b1eb406417d', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cf300f0fbc4448df81e2ee76097e0f34', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('cfdd11b8897e4b899b3823c9729496ef', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('cffc0851864b4e25827ec5f19a1ffa4e', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '14', '2016-01-07 14:16:23', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d0b2dcdd1ddf480b9e6b2c3e37d71b28', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d1ac01f01f1349c2b4e12db60a314913', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d1da5b13b56f480f9eb281db27899615', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d29f5ac000434c8b82a8a6f115c3e025', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d2a5c664a8764a03a431bbc0e59fe0c4', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '30', '2016-01-07 14:16:22', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d30b31a2e3654059bd873b9812b199cf', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '6', '2016-01-07 14:16:23', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d3415deb28544b4a96fb4e17c6d6a4cb', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '24', '2016-01-07 14:16:23', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d39a7f39680241a6bb2170b69c320190', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d3c54940938e4cb8a4a1ccfb40b3cfb3', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d413b594c486422e803e11dcbdc5ff6e', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d4bee77b3e184851a705b1c1def186f3', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d501beee9e2243409a1916112f8a9b08', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d52fac15a4ef415bba4d21ede8ede203', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d5de133524464a7fae56a12f99c86643', 'ac5876d83a7f4f9facca7e4dcf82d05d', '1009.00', '1600.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d6171254378a4e4982f0395e1bb483e9', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d65b633eb0f8436d9356b60c2168d420', '1f56d25ee5d44e0f8f4fc5846d3f702a', '998.00', '1600.00', '2015', '12', '18', '2016-01-07 14:16:22', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d68ce9c22065493f9943b10cbddcb815', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d68dd88234a742a184d57785149b303e', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '4', '2016-01-07 14:16:22', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d6bb5925758a4ee28a5cde8c5e3ae81c', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d6ca2ca39cba41b7aadac861e7130c7e', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '18', '2016-01-07 14:16:23', '2015-12-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d6ed410ea81342648232e583ba3e2eb7', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d74d56f136c94c89b1edca10199a0028', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '23', '2016-01-07 14:16:23', '2016-01-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d761d1f31ca04dc589f13f6b084de6b6', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d7a036953e1c4485bc7cb5b9c7a658e1', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '25', '2016-01-07 14:16:23', '2015-12-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d84d48ad880f4ed49a61d328f7440330', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d944fc735517406aa00413690bc0ee2b', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('d999b9d0a13e496a8a60d722263ce5be', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('d9c0e11e8a4e41239c5c5bd18b9e7ef3', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('da21a8f873224431b1ff2238dbbd3feb', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '24', '2016-01-07 14:16:22', '2016-01-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('da38ddc71a9c4c4ea74fcce4aa1b7c30', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dacbeb81c11c47809758de948fe47f89', 'f638f46441b34e6187fd13a90ec5f554', '381.00', '838.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dad28e6d363f43e08d777807ee587dcc', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '10', '2016-01-07 14:16:23', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('db0048b8c7da4a3eb86865bcc7b69f63', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '1', '2016-01-07 14:16:22', '2016-01-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('db879210b5ff42faa396e94e2aa473ea', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dc2d8f5d3a3c421b868e5146302b7e02', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('dc52b470494c4fe8b73c0f4c49169707', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '31', '2016-01-07 14:16:22', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('dc58ea8cdabf40ca82b90df738b9669a', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dcd605b77984452798e3ec55b8ad1efd', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('dd465d15a09f453f8f1489722a73ab97', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dd46a05afc7e403bbccdc2bc96b7a772', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dd7a18bd0976488dad14a2bfbfe796b1', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ddae5ec41cfb4da79cc16f2c064663db', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ddee33d3810f4e31a85c1a86f709ff9e', '1e61a28ad9e14191811c51fcefd41921', '368.00', '688.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('de02defdecd64e07a0d699cd117da8a9', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('de3ab51a753b4575bda1ce4ecd121b97', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('de66867cae134cf1b5de8b641cbbbc67', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('def58f9c60d2481dbdb9dee334eac871', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '26', '2016-01-07 14:16:22', '2015-12-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('df7fe10b436f4c66a54adc8d81f6dc06', '1f56d25ee5d44e0f8f4fc5846d3f702a', '673.00', '1600.00', '2015', '12', '16', '2016-01-07 14:16:22', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dfc8507bdaa7480a86481db794f941b3', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '31', '2016-01-07 14:16:22', '2015-12-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('dfea68a5b6c74c0fa529779fc2d9a6f1', 'e27d9a86f19644448edcf7e3352a2493', '368.00', '688.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('dff7c2dc873143388029edb5f6cf5467', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '22', '2016-01-07 14:16:22', '2016-01-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e00da1931aec4c2b8dbb9a802f59dd71', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e022c8fd74054df7bd0fea3e112fd337', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e054ec61c9b043799726373e820707ec', 'ac5876d83a7f4f9facca7e4dcf82d05d', '688.00', '688.00', '2016', '1', '2', '2016-01-07 14:16:23', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e057bcc16b0740fa91ba8c2ffca4c17e', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '381.00', '838.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e0e97c8ee8834c8dbebd0f1abf133a43', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e12dfe7b5c144203bde7adf1c177c9e0', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e1646ffa11ff465d93908a193e0b670c', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '9', '2016-01-07 14:16:23', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e1c7d95a0e264e8d8043159a563db409', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e2a657dda9b04df899e0fb8e8608e5c7', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e2c249b81b3d4e7aa4162d9c2f6a37ae', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '21', '2016-01-07 14:16:22', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e2d7528cd2bc4b39a9f5af6e5094518e', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e372ac59add843dfb41cc6cf055a01ed', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e3ac3a3bdd364dd0b194cdc19644a66d', 'e27d9a86f19644448edcf7e3352a2493', '688.00', '688.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e4293629186a4c3cbe37f20e055234b0', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e431a6e8d68a4260a8cc040b0c06012e', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e470547676674358bd0e53004afb363c', 'ac5876d83a7f4f9facca7e4dcf82d05d', '368.00', '688.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e4721bd0cf204f24b7a6ffe130592ffb', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e4733aee838a40cab2409be777254042', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e4a05bede2364276abf59ff3eb604c70', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e5159802330f47c9b30f0f5baf01fd9c', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e515999f2b4348d2be47332d32f2beb4', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e517c0913cea4c7e8317efa4a7ca5c26', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '28', '2016-01-07 14:16:23', '2016-01-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e5295296864c435f9cb75c13b28748d8', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '21', '2016-01-07 14:16:23', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e54464507d364a00ac304cd0cf33810c', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e5482f9d639343b9a91f560e5a116a63', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e569a412f8964a50905f1613cc3938cd', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e5b4d67894bd4c268761899b83443897', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e617879b70744bf58a48bdabd1a28d02', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e63b77ba758e4c1dba66b00490cdf96c', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '20', '2016-01-07 14:16:22', '2016-01-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e63d1f134b1148b3ad4205e55db6d15f', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e652b740910a45f690e191346c45b05a', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '11', '2016-01-07 14:16:22', '2016-01-11', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e66997b46b084eb7865dbe1e1da02bce', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e6eb81418f644a3780cc3f169ced0187', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '28', '2016-01-07 14:16:22', '2015-12-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e72e160232c64635bd58741666154579', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e762fb0062f046629666ad48b94a2ee0', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e862327ec2ed46dfb9616a38ca15867e', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '27', '2016-01-07 14:16:23', '2015-12-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e8953e1834984980a1f52ad7a0ad0f04', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e8edac020c5e41de9f357d29cb41234c', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e90950543ce74ea9bbaee0950bb04f19', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '12', '2016-01-07 14:16:22', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e917f1a0123f4ecea0c7c229f5804afe', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e9725ea4211e4286ab53b6628465ffa2', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '14', '2016-01-07 14:16:22', '2015-12-14', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e9b5157d5d1f4b8f898d1dc9a59357a6', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '14', '2016-01-07 14:16:23', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e9d113a9fdf34df8ba1e62b2f6e93c69', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '3', '2016-01-07 14:16:23', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('e9e6013da3c14ba7822f03ea331ec36b', 'e27d9a86f19644448edcf7e3352a2493', '688.00', '688.00', '2016', '1', '2', '2016-01-07 14:16:23', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('e9e93be02a21404f865ab01ed3aafc35', '1e61a28ad9e14191811c51fcefd41921', '1009.00', '1600.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ea3aa6e9ff884a08867d83cc941bbbca', 'e27d9a86f19644448edcf7e3352a2493', '662.00', '1600.00', '2016', '2', '4', '2016-01-07 14:16:23', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ea79ef3d637f4de1a5bba83f5f842875', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '4', '2016-01-07 14:16:23', '2016-01-04', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('eaa228c54fcd43148dfae097ad1bc93d', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2015', '12', '21', '2016-01-07 14:16:23', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('eaca3bf60bf74d27ba35c641cdadd285', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '24', '2016-01-07 14:16:23', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('eb0ed6ff400f4a38a38e5f6ad389f743', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '30', '2016-01-07 14:16:22', '2015-12-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('eb1b8af6400d436b885ec80c1f329a82', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '8', '2016-01-07 14:16:22', '2016-01-08', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('eb201ae1319f4b1090df168e1bf51bfb', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '7', '2016-01-07 14:16:23', '2016-01-07', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('eb6c21c86b1b481c91951f0bfcababec', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ebb071cc742e443f9103b954d0421459', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ebd73ff43ac14f05925ba28d51635245', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '16', '2016-01-07 14:16:23', '2015-12-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ec6d4c7aabe047b4a527480cf8f4794d', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ec99f22a22eb4d0b838e36b8141731b1', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ecdeec2f99844e84a2dad1800a3084e1', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '15', '2016-01-07 14:16:23', '2016-01-15', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ed4f316dd59349e6a2c48919ec2ea5bb', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '22', '2016-01-07 14:16:22', '2015-12-22', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ed74ad32de6a45a2be584da3a159083c', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '21', '2016-01-07 14:16:22', '2015-12-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ee0faac6afaa418b9d0502c61b4e4cce', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('ee109b0bd1934cc7ab84d01cfd3c3a0d', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ee124f7f7af94e2ca3abd9006803d2f3', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '222.00', '0.00', '2016', '1', '26', '2016-01-07 14:16:23', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('eee0dd291c3f47bb97db3bcc3bf652fd', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ef173058e3b84ba9ae2e912a3660bc47', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('efbd634fa1e64b2aaa175c9e245a94ed', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '6', '2016-01-07 14:16:22', '2016-01-06', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('efdaa7f0d9d642d1927bb607caf20401', 'f638f46441b34e6187fd13a90ec5f554', '223.00', '0.00', '2015', '12', '28', '2016-01-07 14:16:23', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f0290cd9e8f84eef8ac5b07357da99ab', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '17', '2016-01-07 14:16:23', '2016-01-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f0883edbd9044176aa1ba95fdc342cd7', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '21', '2016-01-07 14:16:22', '2015-12-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f094c377d4bf422596c618040be8e310', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '16', '2016-01-07 14:16:22', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f09b3d73036243b0a0f4d262ec1c99c0', 'e27d9a86f19644448edcf7e3352a2493', '669.00', '1600.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f0f1a3d0e30144ee9c7745766e5af7c9', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '26', '2016-01-07 14:16:22', '2016-01-26', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f1224efea7374143bbf42096de99c941', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f127b0a60daa422a8a9e33209b8abdab', '1f56d25ee5d44e0f8f4fc5846d3f702a', '368.00', '688.00', '2016', '1', '9', '2016-01-07 14:16:22', '2016-01-09', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f1ecee62ca4d483ea3de62762b64e3ba', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '24', '2016-01-07 14:16:22', '2015-12-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f1fa111b46a8472b925763783892b5e9', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f23a63b6dfb34edf99d65efc7908f6c3', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '19', '2016-01-07 14:16:23', '2016-01-19', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f25402d65d9f41a5864f7b33f43d7c96', '1e61a28ad9e14191811c51fcefd41921', '662.00', '1600.00', '2016', '2', '3', '2016-01-07 14:16:22', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f276536eaa064df295872efcfb423fb8', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '29', '2016-01-07 14:16:22', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f29a5aab7a5543a8a29a8338592b018a', 'ac5876d83a7f4f9facca7e4dcf82d05d', '238.00', '688.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f374fed2d4e544b3862b1fb8a92676f8', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f3843972ac0142d09b5c692850e7aa51', '1f56d25ee5d44e0f8f4fc5846d3f702a', '1009.00', '1600.00', '2016', '1', '16', '2016-01-07 14:16:22', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f39ee7a7fcb74beebcd1502aa1948591', '1e61a28ad9e14191811c51fcefd41921', '670.00', '1600.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f3c7f29ed1de4172884706f331394504', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '21', '2016-01-07 14:16:22', '2016-01-21', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f3ca716b84974e92aa2ef1bc8fcaaeb5', '8cea7e762ea74ecaa85b067ee98f6b8c', '238.00', '688.00', '2016', '1', '18', '2016-01-07 14:16:23', '2016-01-18', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f3e0a5afc6884f2c9528985d623272af', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f4052669ef5e4ca98a951b05fa0a9cdc', 'f2e24087f58e4d05b083076399b4ed0d', '662.00', '1600.00', '2016', '2', '3', '2016-01-07 14:16:23', '2016-02-03', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f408f5fd0d4741d7977c9dd1d51ea3c1', '1f56d25ee5d44e0f8f4fc5846d3f702a', '670.00', '1600.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f423b88ec69d436d8acc97de38004bcd', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '1', '18', '2016-01-07 14:16:22', '2016-01-18', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f42e2933fc4f4f398b82555c804f0c05', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '223.00', '0.00', '2015', '12', '17', '2016-01-07 14:16:23', '2015-12-17', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f457d0e2707f4669abb65d4a6cd92200', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2016', '1', '3', '2016-01-07 14:16:22', '2016-01-03', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f45dde6f72314851b8382f8c884b7642', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '381.00', '838.00', '2016', '2', '2', '2016-01-07 14:16:23', '2016-02-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f47c3f9230064a7293bcbb6d729105df', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '2', '4', '2016-01-07 14:16:22', '2016-02-04', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f49dc8905699494e8116bfd8784101b6', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '28', '2016-01-07 14:16:22', '2015-12-28', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f4edaa8dc7b04f1b8346900a434d0f76', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f50c039a310d4afc9f9c1c4623540a31', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '20', '2016-01-07 14:16:22', '2015-12-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f5482eb73c394926aec9ecfe46951188', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f5852a80d65141afbbed05e6e5ed0a6b', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '12', '2016-01-07 14:16:23', '2016-01-12', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f5d698215a1445249da12b816a04133a', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2015', '12', '16', '2016-01-07 14:16:22', '2015-12-16', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f5e1d78e18174ebaac0d947d33b3f809', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2015', '12', '24', '2016-01-07 14:16:22', '2015-12-24', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f626cdc79e1d473d858326c85e44b78b', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '23', '2016-01-07 14:16:22', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f6279056eb6f4468873251157071ec52', 'ac5876d83a7f4f9facca7e4dcf82d05d', '670.00', '1600.00', '2015', '12', '23', '2016-01-07 14:16:23', '2015-12-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f6505f759d754127b8df0d3307414659', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '29', '2016-01-07 14:16:23', '2016-01-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f71c4ace66194c5690bb5cecd6b14f4d', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2015', '12', '22', '2016-01-07 14:16:23', '2015-12-22', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f773708f29d440ae92fe5abdc1fdae22', '8cea7e762ea74ecaa85b067ee98f6b8c', '1009.00', '1600.00', '2016', '1', '16', '2016-01-07 14:16:23', '2016-01-16', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f7d68d913344435ab33adf451a59cfb6', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '20', '2016-01-07 14:16:23', '2016-01-20', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f7eb5721baf24a1ba0dd86f958338f3b', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f825466f954a49cb8dbcfcb338596a77', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '28', '2016-01-07 14:16:22', '2015-12-28', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f82af606bb054b739de624cf08176f7c', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2015', '12', '14', '2016-01-07 14:16:22', '2015-12-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f8d61a74c3c24cd8b1f03e02697c88dd', 'f2e24087f58e4d05b083076399b4ed0d', '238.00', '688.00', '2015', '12', '15', '2016-01-07 14:16:23', '2015-12-15', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f8d964467d0a4cff9ccfb649b1610b04', 'e27d9a86f19644448edcf7e3352a2493', '670.00', '1600.00', '2016', '2', '1', '2016-01-07 14:16:23', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f96fb8bf09564627ba6d5b384b2b41fd', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('f9909ee5a07746c591c49f9055870440', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('f9e4d772979a4146a883cdc7f4a80ad6', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fa19f8d707344e6699884b2d45ce9f4d', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '14', '2016-01-07 14:16:22', '2016-01-14', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fa6fd1f78c2a47cb87a342472c096635', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fa91c0ddf57f41088f53e050d303a820', 'a1bcd6369fbd4ac6b0638e860ec72eaa', '360.00', '838.00', '2016', '1', '25', '2016-01-07 14:16:23', '2016-01-25', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fa93b07eb6dd4f81bfc36cb3930b21c6', '1f56d25ee5d44e0f8f4fc5846d3f702a', '238.00', '688.00', '2016', '1', '10', '2016-01-07 14:16:22', '2016-01-10', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('faab8c7d7a32468790b42de02cbfe28e', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2015', '12', '21', '2016-01-07 14:16:22', '2015-12-21', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fafe07dfa64d403b8b7a9b24050cbaf3', '3fc78fb158d34c1a8001216df026587d', '398.00', '1357.00', '2016', '1', '13', '2016-01-07 14:16:22', '2016-01-13', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fb48f65adb324095bc36a57c17daf2c2', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '23', '2016-01-07 14:16:22', '2016-01-23', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fb65106f74ae4afc8153b5b31bb1fc8c', 'f2e24087f58e4d05b083076399b4ed0d', '1009.00', '1600.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fb857f62a54a40d197bd262d389f67a8', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '13', '2016-01-07 14:16:23', '2016-01-13', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fbd7de08325e4f42b46cdf73878f32de', 'f638f46441b34e6187fd13a90ec5f554', '222.00', '0.00', '2016', '1', '27', '2016-01-07 14:16:23', '2016-01-27', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fc9b17987c0b4ae1996f8698e107a5aa', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fca318d48957429598f35f2d02479fe3', '1e61a28ad9e14191811c51fcefd41921', '238.00', '688.00', '2016', '1', '17', '2016-01-07 14:16:22', '2016-01-17', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fca46f8a991a4402b1ccf87e0e14ce7f', 'f2e24087f58e4d05b083076399b4ed0d', '368.00', '688.00', '2015', '12', '26', '2016-01-07 14:16:23', '2015-12-26', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fca82a3c46504be480ba202d26156d0b', 'f2e24087f58e4d05b083076399b4ed0d', '670.00', '1600.00', '2016', '1', '5', '2016-01-07 14:16:23', '2016-01-05', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fccd3c6126044336b77506633dafd799', '3fc78fb158d34c1a8001216df026587d', '428.00', '1357.00', '2016', '1', '2', '2016-01-07 14:16:22', '2016-01-02', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fcf951f28e834df8b4daf2c94775f77b', '65c5fdc8d99141b297544cb879cc3489', '398.00', '1357.00', '2016', '2', '1', '2016-01-07 14:16:22', '2016-02-01', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fd197e76903f4b448a103c169061106f', '8cea7e762ea74ecaa85b067ee98f6b8c', '670.00', '1600.00', '2016', '1', '31', '2016-01-07 14:16:23', '2016-01-31', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fe4186017c9d45ed8376c6f10a5a5308', '65c5fdc8d99141b297544cb879cc3489', '428.00', '1357.00', '2015', '12', '20', '2016-01-07 14:16:23', '2015-12-20', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('fe611d344f5d4c5aa96f8e5936fcc26f', '194ccd0875c6493e91225855640e3059', '428.00', '1357.00', '2016', '1', '5', '2016-01-07 14:16:22', '2016-01-05', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('feccd0db43ea4276aaf94d99f31c7bd1', 'e27d9a86f19644448edcf7e3352a2493', '238.00', '688.00', '2016', '1', '24', '2016-01-07 14:16:23', '2016-01-24', 'group1');
INSERT INTO `mc_ticket_price` VALUES ('fedfb5ea09cb42669a6b2f0f9bc24d6e', '194ccd0875c6493e91225855640e3059', '398.00', '1357.00', '2016', '1', '25', '2016-01-07 14:16:22', '2016-01-25', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ff6b2339540446ad880f6ac2931f32e4', 'f638f46441b34e6187fd13a90ec5f554', '360.00', '838.00', '2015', '12', '29', '2016-01-07 14:16:23', '2015-12-29', 'group2');
INSERT INTO `mc_ticket_price` VALUES ('ff817777f9b54d0391fecaeaf13db3c0', 'e27d9a86f19644448edcf7e3352a2493', '1009.00', '1600.00', '2016', '1', '30', '2016-01-07 14:16:23', '2016-01-30', 'group2');

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
INSERT INTO `mc_topic` VALUES ('8feb7664465b487fa671c4b1d672f189', '冬日，我与温泉的亲密接触', '/ff809171fbb94259bf8d75557522292f/TOPIC-INDEX/1450163915230.png', '现代社会，对于生活在钢筋水泥中的都市人，承受着工作生活的双重压力，渴望一个放松身心、忘记烦恼的地方，可是去哪儿呢？不如，去风景优美的温泉度假村来上一“泡”，休闲养生两不误。这个秋冬，小编为您精心挑选了最具特色的天然温泉，快来跟温泉来场亲密的接触吧！', '2016-03-09 23:54:51', '88');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` varchar(40) NOT NULL,
  `ctrip_unique_id` varchar(60) DEFAULT NULL,
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
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `brith_year` varchar(20) DEFAULT NULL,
  `brith_month` varchar(20) DEFAULT NULL,
  `brith_day` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1f753189cf6b44a3873a650815f45715', null, '13410240005', 'Y', '$apr1$65269867$Dzd6pMMuAOnw9ILebhmGd.', '杨成', '2015-12-14 16:29:24', null, null, null, null, '6526986750480825207', '2015-12-14 16:28:45', null, null, null, null, null, null);
