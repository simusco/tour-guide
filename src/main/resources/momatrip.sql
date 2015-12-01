/*
Navicat MySQL Data Transfer

Source Server         : momatrip
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : momatrip

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-12-01 18:36:50
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
INSERT INTO `mc_activity_extra` VALUES ('1bc2cc9ac93f497e8d54e04f19dc6a6b', '7f3ea4fba7e14457bc20aa985b5edc97', 'REC_PLAN', '第一天\n早上（各地出发）——中餐（御食坊）——下午（泡温泉、万寿阁）——晚餐（小镇美食街）——晚上（小汤镇）——休息（返回房间休息）\n早上：早起出发，前往度假村酒店办理入住（15点）；\n午餐：度假村内御食坊，享受地道美味；\n下午：稍作休息，进去温泉区，感受属于御温泉独有的“纯正温泉泡法”养生文化。你可静静的躺在华兴池的凹槽来一个水中睡眠；可到六福汤逐池泡汤体验泡法缤纷；可到瀑布泉、忽然一泉体验一下冷热交替带来的那份新鲜刺激……如果您不把所有的温泉池都泡上一泡那“通泡”的乐趣又岂能细细品味到。\n晚上：逛小镇，游览千色胡同的老京城声色文化，在千色胡同内可以唱卡拉OK，还可以欣赏渡假村內灯火斑斓，来到楼顶花园会友散步。\n\n第二天\n早餐（美味早餐）——上午（温泉、卡丁车）——午餐（久大桶）——下午（买些特产）——回家\n早上：睡到自然醒，在酒店品尝美味早餐（8：00-10：00）；\n上午：度假村旁边有个卡丁车主题的恒丰游乐场，喜欢驾驶的朋友可以来一场卡丁车竞赛。回来再泡泡温泉，洗个澡然后退房（12点前）；\n午餐：去大木桶主题餐厅，以北派美食为主，木桶餐位，木制餐桌，麻辣干锅、火锅桶桶飘香辣，大木桶餐位尝鲜更玩鲜。美食类型：北派火锅、干锅。\n下午：返程回家。\n\n以上玩法仅供参考，您可以根据购买的套餐自由安排。景区内部分项目需另行自费。');

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
  `is_publish` varchar(255) DEFAULT NULL COMMENT 'true/false',
  PRIMARY KEY (`activity_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_activity_plan
-- ----------------------------
INSERT INTO `mc_activity_plan` VALUES ('003886653a0a4625b7c2d0c6781e031f', '江门新会古兜温泉', '<div class=\"topic-content__title\">\n	<div class=\"topic-content__title--spe\">江门新会古兜温泉</div>\n	<div class=\"topic-content__title--extr\">一地两泉</div>\n</div>\n<p  class=\"topic-content__desc\">\n古兜温泉与我们古代名泉华清池为同一温泉水质，同时拥有两种不同类型的温泉：养生保健海洋温泉（咸泉），美容护肤氡温泉（淡泉）。度假村位于风光旖旎的古兜山下，靠山面海。由唐式、欧式、日式三大温泉区和水疗会等配套设施组成，温泉谷内飞瀑流泉，水木清华，碧翠嫣然。白天云蒸霞，夜晚星辉相映，恍似人间仙境，世外桃源。\n</p>\n<div class=\"topic-content__img\">\n	<img src=\"//static1.tour-guide.com/images/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604161800.jpg\"/>\n</div>', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'TOPIC', null, null, null, null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('0aa61567afc74273a1759ca6c1eaf2a9', '广州从化碧水湾温泉', '<div class=\"topic-content__title\">\n	<div class=\"topic-content__title--spe\">标签：养生、休闲、温泉、度假</div>\n</div>\n<p  class=\"topic-content__desc\">	现代社会，对于生活在钢筋水泥中的都市人，承受着工作生活的双重压力，渴望一个放松身心、忘记烦恼的地方，可是去哪儿呢？不如，去风景优美的温泉度假村来上一“泡”，休闲养生两不误。这个秋冬，小编为您精心挑选了最具特色的天然温泉，快来跟温泉来场亲密的接触吧！\n</p>\n\n<div class=\"topic-content__title\">\n	<div class=\"topic-content__title--spe\">广州从化碧水湾温泉</div>\n	<div class=\"topic-content__title--extr\">森林中的养生温泉</div>\n</div>\n<p  class=\"topic-content__desc\">\n180万亩森林环其左右，80公里绿色走廊横亘南北，背倚飞鹅山，悠枕流溪河；国家AAAA级景区、世界珍稀苏打泉、中国最佳温泉酒店、亚运指定饭店----碧水湾温泉度假村。森林海，养生泉，亲情碧水湾，带上家人，赶紧去享受吧！\n</p>\n<div class=\"topic-content__img\">\n	<img src=\"//static1.tour-guide.com/images/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604161292.png\"/>\n</div>', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'TOPIC', null, null, null, '174b708149684a1a85f299b2ec29b2d3', null, null);
INSERT INTO `mc_activity_plan` VALUES ('5e8a11a706a84e9db9d5249f3d3736ef', '世界之窗3', '这是一个把世界奇观、历史遗迹、古今名胜、民间歌舞表演融为一体的人造主题公园。', null, null, null, null, null, '1-2天', null, null, null, null, null, '/5e8a11a706a84e9db9d5249f3d3736ef/INDEX/1447126813649.jpg', '1000', null, '<span class=\"tag tag--stress\">游乐园</span>', 'SPOT', null, null, null, null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('70826d9e1df640d59c03df9bac0f454f', '珠海御温泉', '<div class=\"topic-content__title\">\n	<div class=\"topic-content__title--spe\">珠海御温泉</div>\n	<div class=\"topic-content__title--extr\">纯正温泉泡法</div>\n</div>\n<p  class=\"topic-content__desc\">\n	御温泉拥有两处天然泉眼，出口水温为70度，属对人体有益的偏硅酸型矿泉水，能起到舒筋活络、护肤养颜、抗衰老的作用。御温泉融入中医文化，结合温泉水的独特功效，创造出御温泉独有的“纯正温泉泡法”养生文化。度假村主打盛唐风格，柴门木屋，假山飞瀑，小桥流水点缀其间，诗情画意，美不胜收！\n</p>\n<div class=\"topic-content__img\">\n	<img src=\"//static1.tour-guide.com/images/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604162571.jpg\"/>\n</div>', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'TOPIC', null, null, null, '174b708149684a1a85f299b2ec29b2d3', null, null);
INSERT INTO `mc_activity_plan` VALUES ('7f3ea4fba7e14457bc20aa985b5edc97', '珠海御温泉度假村', '珠海御温泉位于珠海市斗门黄杨山西麓，是中国第一家日式露天温泉。御温泉水富含偏硅酸等多种矿物质微量元素。现有天然泉眼两处：深度为150米，出口水温70°C，属高温氯化物--偏硅酸型医疗矿泉水。据史书记载，七百多年前，南宋皇帝赵丙及皇室一行御驾崖门江口（今斗门一带），被当地秀丽景致所吸引，便钦令在此设立行宫。适闻当是有一涨奇泉，四季温热，热浪扑面，似仙气弥漫，能医百病。一试，果然神清气爽，倍感舒畅。皆称之为“神水”。民间为纪念宋帝在此御浴的历史，将此泉尊之为御泉。', null, null, null, null, null, '2天', null, null, null, null, null, '/7f3ea4fba7e14457bc20aa985b5edc97/INDEX/1447146328820.png', '1', null, null, 'SPOT', null, null, null, null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('a69a807c5403498d84e2233629137429', '冬日，我与温泉的亲密接触', '现代社会，对于生活在钢筋水泥中的都市人，承受着工作生活的双重压力，渴望一个放松身心、忘记烦恼的地方，可是去哪儿呢？不如，去风景优美的温泉度假村来上一“泡”，休闲养生两不误。这个秋冬，小编为您精心挑选了最具特色的天然温泉，快来跟温泉来场亲密的接触吧！', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '<span class=\"tag tag--stress\">温泉</span>', 'TOPIC', null, null, null, null, '<ul class=\"tag-line tag-line--default\"> <li>最佳季节：</li> <li>秋冬</li> </ul>', null);
INSERT INTO `mc_activity_plan` VALUES ('a92dd7a004f54eeeb4973a0d8daa3003', '西冲二日游', '中国最美的八大沙滩”之一的西冲，拥有4.5公里长细腻柔软的沙滩及深圳最蓝的海水，其海景胜过深圳的著名海边景点', null, null, '317.00', null, '0', '2天', null, null, null, null, null, '/a92dd7a004f54eeeb4973a0d8daa3003/INDEX/1447055976621.jpeg', '1000', '0', '<span class=\"tag tag--stress\">海边</span><span class=\"tag tag--stress mls\">徒步</span>', 'HOT', '<span class=\"tag tag--stress\">早餐</span><span class=\"tag tag--stress mls\">来去车费</span>', null, '99', null, null, null);
INSERT INTO `mc_activity_plan` VALUES ('f8b97895c93b4dc4a007cfca8ed82bd7', '惠州龙门铁泉•黄金汤', '<div class=\"topic-content__title\">\n	<div class=\"topic-content__title--spe\">惠州龙门铁泉•黄金汤</div>\n	<div class=\"topic-content__title--extr\">亚洲最大温泉</div>\n</div>\n<p  class=\"topic-content__desc\">\n	龙门铁泉拥有丰富的温矿泉水资源，富含丰富的铁、锍、氡、钙、镁等48种有益的矿物质元素，因温泉水含铁量较多，水质金黄，故称为“黄金汤”。度假区被群山环抱，风光迤俪，林木青翠，溪水清澈，薄雾轻飘，有人间仙境之景色。拥有“三大两独”特色：亚洲最大的温泉康乐中心、全国最大的山水园林温泉、全国独有的天然黄金蒸汽浴、全国独有的珍稀黄金汤泉、广东最大温泉仿海浪冲浪。柴门木屋，假山飞瀑，小桥流水点缀其间，诗情画意，美不胜收！\n</p>\n<div class=\"topic-content__img\">\n	<img src=\"//static1.tour-guide.com/images/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604166959.jpg\"/>\n</div>', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'TOPIC', null, null, null, '174b708149684a1a85f299b2ec29b2d3', null, null);
INSERT INTO `mc_activity_plan` VALUES ('fec9ef2f3fa9444e96b292d6e8829912', '广州从化碧水湾温泉', '<div class=\"topic-content__title\">\n	<div class=\"topic-content__title--spe\">标签：养生、休闲、温泉、度假</div>\n</div>\n<p  class=\"topic-content__desc\">\n	现代社会，对于生活在钢筋水泥中的都市人，承受着工作生活的双重压力，渴望一个放松身心、忘记烦恼的地方，可是去哪儿呢？不如，去风景优美的温泉度假村来上一“泡”，休闲养生两不误。这个秋冬，小编为您精心挑选了最具特色的天然温泉，快来跟温泉来场亲密的接触吧！\n</p>\n\n<div class=\"topic-content__title\">\n	<div class=\"topic-content__title--spe\">广州从化碧水湾温泉</div>\n	<div class=\"topic-content__title--extr\">森林中的养生温泉</div>\n</div>\n<p  class=\"topic-content__desc\">\n	180万亩森林环其左右，80公里绿色走廊横亘南北，背倚飞鹅山，悠枕流溪河；国家AAAA级景区、世界珍稀苏打泉、中国最佳温泉酒店、亚运指定饭店----碧水湾温泉度假村。森林海，养生泉，亲情碧水湾，带上家人，赶紧去享受吧！\n</p>\n<div class=\"topic-content__img\">\n	<img src=\"//static1.tour-guide.com/images/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604161292.png\"/>\n</div>', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'TOPIC', null, null, null, null, null, null);

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
INSERT INTO `mc_activity_tags` VALUES ('0282af1acd9a413e8c2013d88c93fbfa', '7f3ea4fba7e14457bc20aa985b5edc97', '211', '温泉度假', '1');
INSERT INTO `mc_activity_tags` VALUES ('0b03e27734f349d3922f55c50c3077c3', '70826d9e1df640d59c03df9bac0f454f', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('188ac718632641b3996bcb257a214d19', 'a92dd7a004f54eeeb4973a0d8daa3003', '215', '亲子游玩', '3');
INSERT INTO `mc_activity_tags` VALUES ('19ee5089d2b94707ac1d6b120da05a40', 'fec9ef2f3fa9444e96b292d6e8829912', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('1a92c95229de4093aa620faec0391eeb', 'f8b97895c93b4dc4a007cfca8ed82bd7', '101', '惠州', '0');
INSERT INTO `mc_activity_tags` VALUES ('1c5ea0df1d5c4889828d5d32187e29b6', '2704b7572d6543f59226d1f14b405cc5', '103', '珠海', '0');
INSERT INTO `mc_activity_tags` VALUES ('29ffa2889ad54f9a983da11cddd1b8e8', '5e8a11a706a84e9db9d5249f3d3736ef', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('468e7c65d81f4699ae44fa96d90d45cc', '0aa61567afc74273a1759ca6c1eaf2a9', '211', '温泉度假', '2');
INSERT INTO `mc_activity_tags` VALUES ('57756aa6906e41c2b3a8f6ed3c79bb23', '003886653a0a4625b7c2d0c6781e031f', '105', '江门', '0');
INSERT INTO `mc_activity_tags` VALUES ('586d9fa655264daaa498cca9f73a3eb4', '0aa61567afc74273a1759ca6c1eaf2a9', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('6995d926e95644f8aa498dcd0a658cba', '5e8a11a706a84e9db9d5249f3d3736ef', '102', '深圳', '0');
INSERT INTO `mc_activity_tags` VALUES ('69a6fe45baf74c38bbe9d6496d30107a', 'a92dd7a004f54eeeb4973a0d8daa3003', '102', '深圳', '0');
INSERT INTO `mc_activity_tags` VALUES ('80333db56d4a4d51958cf80d08d2b01b', '0aa61567afc74273a1759ca6c1eaf2a9', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('841637ad936b4a2a843f99b54df50823', 'f8b97895c93b4dc4a007cfca8ed82bd7', '211', '温泉度假', '2');
INSERT INTO `mc_activity_tags` VALUES ('953c6850369f4cdca5f5dfa29dc5a87a', 'a92dd7a004f54eeeb4973a0d8daa3003', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('99459238563249a3b34d74d4af7a88f2', '003886653a0a4625b7c2d0c6781e031f', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('a55636612f56439db611415b47786261', '7f3ea4fba7e14457bc20aa985b5edc97', '103', '珠海', '0');
INSERT INTO `mc_activity_tags` VALUES ('b383c696a92d4edca649aa609e990b07', 'fec9ef2f3fa9444e96b292d6e8829912', '104', '广州', '0');
INSERT INTO `mc_activity_tags` VALUES ('bc0483697f8d46c78b8d478f06952849', 'fec9ef2f3fa9444e96b292d6e8829912', '211', '温泉度假', '2');
INSERT INTO `mc_activity_tags` VALUES ('cc306006f9404ed6a39c8d853538d885', '2704b7572d6543f59226d1f14b405cc5', '211', '温泉度假', '1');
INSERT INTO `mc_activity_tags` VALUES ('d1ac3fd625e9472da635e27e8f8778c7', '70826d9e1df640d59c03df9bac0f454f', '211', '温泉度假', '2');
INSERT INTO `mc_activity_tags` VALUES ('d267c68ac5fa4eb79809e71a62ded7eb', 'f8b97895c93b4dc4a007cfca8ed82bd7', '112', '二日', '1');
INSERT INTO `mc_activity_tags` VALUES ('d60cb9efd3f24b7f8814b9eb2daf46b4', 'a92dd7a004f54eeeb4973a0d8daa3003', '212', '主题聚会', '2');
INSERT INTO `mc_activity_tags` VALUES ('e310144b5cf643508d237d85eef1319e', '5e8a11a706a84e9db9d5249f3d3736ef', '216', '海滩海岛', '3');
INSERT INTO `mc_activity_tags` VALUES ('e57ec163bc014391bfdcec6bf9aa6ea3', '003886653a0a4625b7c2d0c6781e031f', '211', '温泉度假', '2');
INSERT INTO `mc_activity_tags` VALUES ('f3acc62c216e4921b90e92746fe90f58', '5e8a11a706a84e9db9d5249f3d3736ef', '217', '历史名城', '2');
INSERT INTO `mc_activity_tags` VALUES ('f941818b642741379ae51deddc3f1c02', '70826d9e1df640d59c03df9bac0f454f', '103', '珠海', '0');

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
INSERT INTO `mc_goodness` VALUES ('04ad22f3d44c491c888b911ce86b6db4', 'SPOT', '<p class=\"topic-content__desc\">尽情的享受这蓝天、白云、沙滩、海洋吧，感受大海的胸怀与力量。所有的烦恼和疲惫在这一刻通通都抛掉，你可以拾贝、嬉戏、玩水、美美的拍照，还可以约上三五好友玩沙滩排球，沙滩足球</p> \n<div class=\"topic-content__img\">\n<img src=\"//static1.tour-guide.com/images/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056382357.jpg\"/> \n<img src=\"//static1.tour-guide.com/images/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056383312.jpg\"/>\n</div>', '海滨浴场', 'a92dd7a004f54eeeb4973a0d8daa3003', 'N553A3DA');
INSERT INTO `mc_goodness` VALUES ('0bc5f0a6155a4d42a9d50c8955d1b9a8', 'SPOT', '<p class=\"topic-content__desc\">一溜六个泉池，温度相近、大小相似，汤料不同、功效各异。每个泉池都变幻莫测，而六个泉池的变化合可谓泡法缤纷，每个池都泡一遍，“通泡”的乐趣层出不穷！</p> <div class=\"topic-content__img\"> <img src=\"//static1.tour-guide.com/images/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147013203.png\"/>  </div>', '六福汤', '7f3ea4fba7e14457bc20aa985b5edc97', 'N7JVBVXO');
INSERT INTO `mc_goodness` VALUES ('0e0ae07874e84d1cb1d32b87895e516a', 'SPOT', '西涌(西冲)天文台每月组织一次公众开放日活动,正常情况下在每月的1号开始在天文台官方网页开始预约,活动时间为当月的第三个周六。开放日内容包括天文科普知识介绍(依不同时间的天象事件会有调整),参观天文台,天气晴好的话会进行太阳表面活动的现场观测。', '西冲天文台', '18825255eb35444a854e414880bcb99c', 'wd-xctwt');
INSERT INTO `mc_goodness` VALUES ('1203348d8c5c47558e842f5966a28eea', 'SPOT', '香江健康山谷引入欧洲皇室管家服务理念，酒店处于群山环抱之中，空气清新怡人，处处鸟语花香，四季如春，移步换景。下榻园林别致的酒店酒店，享千年养生温泉，度过身心放松假期！、香江健康山谷引入欧洲皇室管家服务理念，酒店处于群山环抱之中，空气清新怡人，处处鸟语花香，四季如春，移步换景。下榻园林别致的酒店酒店，享千年养生温泉，度过身心放松假期！\n香江健康山谷引入欧洲皇室管家服务理念，酒店处于群山环抱之中，空气清新怡人，处处鸟语花香，四季如春，移步换景。下榻园林别致的酒店酒店，享千年养生温泉，度过身心放松假期！\n香江健康山谷引入欧洲皇室管家服务理念，酒店处于群山环抱之中，空气清新怡人，处处鸟语花香，四季如春，移步换景。下榻园林别致的酒店酒店，享千年养生温泉，度过身心放松假期！', '323232', 'feb265cfc56f49209a07ed8986933e21', '323232');
INSERT INTO `mc_goodness` VALUES ('3d90e2e0f16944e8b5d9aa33d3dd3c90', 'PLAY', '在这里有美食和啤酒，豪华超大型包房让你尽情嗨个够，亮出你的嗓音，秀出你的舞姿。酒吧地处美食街中心位置，各色美食等你来尝!', '酒吧狂欢', '18825255eb35444a854e414880bcb99c', 'wd-jbkh');
INSERT INTO `mc_goodness` VALUES ('57bf450344ae42e59fad9471f4d48b03', 'EAT', '在西涌(西冲)2号沙滩入口处有一个马场,里面可以提供骑马、骑骆驼、射箭等游玩项目。约上几个朋友或者一家人又或者一对情侣骑着马漫步在乡间小路也是非常惬意的一件事情。详细情况可以到“牧马庄园”官网了解', '西冲骑马场', '18825255eb35444a854e414880bcb99c', 'wd-xcqmc');
INSERT INTO `mc_goodness` VALUES ('607c236d1ad94fc19a9d270c9051111b', 'SPOT', '<p class=\"topic-content__desc\">位于露天温泉区中心位置，极具创意地仿中华版图而建，西高东低深浅不同，北温南热水温各异。水中凹位按人之体形设计，供人躺着泡浴，安逸又舒适。</p> <div class=\"topic-content__img\"> <img src=\"//static1.tour-guide.com/images/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147019723.png\"/>  </div>', '华兴池', '7f3ea4fba7e14457bc20aa985b5edc97', 'K8ED3YN3');
INSERT INTO `mc_goodness` VALUES ('78d017efab19494f881a4c1645e76586', 'PLAY', '东西冲是深圳最美的海岸线也是深圳驴友必走路线，依山傍海，山岳纵横，海岸线漫长；沙滩、岛屿、礁石、海蚀岩、洞、桥、柱等海积海蚀地貌发育齐全，给你的是无敌的海景！', '海岸线穿越', '18825255eb35444a854e414880bcb99c', 'wd-haxcy');
INSERT INTO `mc_goodness` VALUES ('7c85e08df75a468cb8f5459bc27b8cd5', 'SPOT', '<p class=\"topic-content__desc\">小时候就是因为打架输给了一名练习过跆拳道的小孩，这才立志学习跆拳道，并且在一个月后将那名小孩痛揍了一顿，从此之后，他的格斗天赋逐渐的展露出来，十一岁的时候获得了全国跆拳道少年组冠军，十三岁的时候获得了青少年组冠军，后来他觉得参加那些比赛没意思，开始向一些职业跆拳道手挑战，一连击败了数位跆拳道职业选手</p>\n    					<div class=\"topic-content__img\">\n    						<img src=\"/tour-guide/images/spot/spot01.png\">\n    						<img src=\"/tour-guide/images/spot/spot01.png\">\n    					</div>', '日本挂失股东', '18825255eb35444a854e414880bcb99c', 'kdks81001');
INSERT INTO `mc_goodness` VALUES ('860dc564c8234f4fb10b68f228f495a4', 'EAT', '<p class=\"topic-content__desc\">乘快艇出海，感受乘风破浪、船行大海的感觉，并登上西冲最有标志性的岛屿——赖氏洲情人岛</p>\n<div class=\"topic-content__img\">\n<img src=\"//static1.tour-guide.com/images/a92dd7a004f54eeeb4973a0d8daa3003/GOODNESS/1447057973836.jpg\"/>\n</div>', '快艇出海', 'a92dd7a004f54eeeb4973a0d8daa3003', 'UOKM4LFO');
INSERT INTO `mc_goodness` VALUES ('8c567a5f12694aadb1932cbd07a20bb0', 'PLAY', '<p class=\"topic-content__desc\">“太医五体全息”融合道医、佛医、中医理论，依古代太医技法，辅以山野草本，灵性桃木工具，对人之五体进行穴位按压、经络疏理、气血调活。与传统中医按摩、沐足不同，它结合温泉泡浴及养生膳食，通过人体经脉中枢施行全面针对性的健康调理和养生之法。并辅以专门吉祥茶、万寿酒、热敷包，功效神奇。</p> <div class=\"topic-content__img\"> <img src=\"//static1.tour-guide.com/images/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147022533.png\"/> </div>', '养生调理之万寿阁', '7f3ea4fba7e14457bc20aa985b5edc97', 'SCMYNTX2');
INSERT INTO `mc_goodness` VALUES ('9722aa685bea494190e3674082892eaf', 'EAT', '<p class=\"topic-content__desc\">进入御食坊，但见柴椅木桌，古色古香。硕大的榴莲树，绿叶成荫，覆盖整个大厅。在御食坊找个木桌坐下，耕犁木车、蓑衣斗笠、天井石磨……犹如身处农家小院，倍感亲切与自然。御食坊包房均以当地著名民居村落命名和装修，浓郁乡村味道。推荐菜式：花菇鹅掌煲、经典炭烧横琴蚝、凉拌清脆牛肚、竹园南瓜架</p> <div class=\"topic-content__img\"> <img src=\"//static1.tour-guide.com/images/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147016594.png\"/>  </div>', '御食坊', '7f3ea4fba7e14457bc20aa985b5edc97', '6VLOD2P6');
INSERT INTO `mc_goodness` VALUES ('a03f1a0db87c4638a5c2152fa25495fc', 'SPOT', '情人岛有着另外一种不一样的美景，四周礁石围绕景色迷人，岛边珊瑚礁清晰可看，一群一群的鱼儿自由自在的环绕在珊瑚礁上。登岛后，如有兴趣也可参加潜水活动。海底潜水：配备有专业的设施及教练，根据游客的身体条件进行深度潜水，氧气正常使用时间约为1小时，潜水人员免费快艇接送。', '梦幻情人岛', '18825255eb35444a854e414880bcb99c', 'wd-mhqrd');
INSERT INTO `mc_goodness` VALUES ('a2bad51841f44cbdb540223b55d24972', 'EAT', '西冲的美食主要是海鲜、窑鸡为主。 西冲窑鸡\n食海鲜去西冲，大亚湾、大鹏湾海产品闻名遐迩，主要有海胆、大鹏鲍鱼、扇贝、濑尿虾、珍珠螺、响螺、马蛟鱼以及各种各样的鱼虾蟹。还有客家菜、东江菜、西冲窑鸡，四季水果如荔枝、龙眼、芒果、金龟桔等。\n 西冲海鲜\n深圳的人都知道西冲的窑鸡，所谓窑鸡是鸡的一种做法，把鸡放在一个烧热的小泥坑里“窑”熟，做法是先把洗干净的鸡肚子里塞进红葱头，外皮擦上用生抽、五香粉、沙姜粉等调出来的酱料，然后用锡纸包裹起来，塞进烧得通红的泥窖里面，焖上个半小时后从里面取出，弄干净泥土，将锡纸撕开即可食用。\n\n篝火晚会、烟花：我们好像搞不了，只能看别人玩', '西冲美食', '18825255eb35444a854e414880bcb99c', 'cd-xcms');
INSERT INTO `mc_goodness` VALUES ('c888959de04d4c0faae81591fdc7bc84', 'SPOT', '<p class=\"topic-content__desc\">雄踞在战神广场，为纪念法国大革命100周年而建，1889年建成，以设计者居斯塔夫.埃菲尔命名。除四座水泥塔墩外，全部钢架结构，高325米，重约9000吨，兼具雄伟壮丽和优美柔和的风姿。登上塔顶，巴黎地区壮阔景色尽收眼底。入夜灯彩璀璨，恍如琼楼玉宇，成为巴黎古都的现代象征。</p> \n\n<div class=\"topic-content__img\"> \n<img src=\"//static1.tour-guide.com/images/5e8a11a706a84e9db9d5249f3d3736ef/GOODNESS/1447127326746.png\"/> \n</div>', '法国埃菲尔铁塔', '5e8a11a706a84e9db9d5249f3d3736ef', '9OW49BRW');
INSERT INTO `mc_goodness` VALUES ('e78ea4ca861947c18a060afeaefd4cbf', 'PLAY', '乘快艇出海，感受乘风破浪、船行大海的感觉，并登上西冲最有标志性的岛屿——赖氏洲情人岛。', '快艇出海', '18825255eb35444a854e414880bcb99c', 'wd-ktch');
INSERT INTO `mc_goodness` VALUES ('f99696fe8d164ec8b25e76c62fb28ad7', 'SPOT', '<p class=\"topic-content__desc\">\n于1806年拿破仑帝国时代，造型为罗马帝国凯旋门式，外形方正，构图简练，高48米多，全用白大理石雕砌，宏伟庄严，雄踞于巴黎雄狮广场中心。凯旋门前后两面的“马赛曲”等四组巨型雕像，精雕细刻，记录着1795年至1815年的法国战史，成为法国人民的精神象征。</p> \n<div class=\"topic-content__img\"> \n<img src=\"//static1.tour-guide.com/images/5e8a11a706a84e9db9d5249f3d3736ef/DETAIL-HEADER/1447126971457.jpg\"/> \n<img src=\"//static1.tour-guide.com/images/5e8a11a706a84e9db9d5249f3d3736ef/DETAIL-HEADER/1447126968457.jpg\"/> \n</div>', '巴黎凯旋门', '5e8a11a706a84e9db9d5249f3d3736ef', 'GO5LWXRD');

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
  `hotel_code` varchar(60) DEFAULT NULL,
  `rate_plan_code` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_hotel
-- ----------------------------
INSERT INTO `mc_hotel` VALUES ('1', 'test_hotel', 'this ia a test', 'dsdssd', 'sdds', '16100', '137387');
INSERT INTO `mc_hotel` VALUES ('2', 'test_hotel', 'this ia a test', null, null, '2116656', '11976635');
INSERT INTO `mc_hotel` VALUES ('3', 'test_hotel', 'this ia a test', null, null, '2116656', '12081414');
INSERT INTO `mc_hotel` VALUES ('4', 'test_hotel', 'this ia a test', null, null, '2116656', '11976657');
INSERT INTO `mc_hotel` VALUES ('5', 'test_hotel', 'this ia a test', null, null, '2116656', '12081415');
INSERT INTO `mc_hotel` VALUES ('6', 'test_hotel', 'this ia a test', null, null, '16100', '6050343');
INSERT INTO `mc_hotel` VALUES ('7', 'test_hotel', 'this ia a test', null, null, '16100', '1158502');

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
INSERT INTO `mc_hotel_price` VALUES ('03da2b6c81d3487983b6a76ccbc75124', '1', '558.00', '2015', '12', '9', 'true', '1', '1588.00', '2015-12-09');
INSERT INTO `mc_hotel_price` VALUES ('03da68c328d7414aac99cb286891f962', '3', '339.00', '2015', '12', '11', 'false', '0', null, '2015-12-11');
INSERT INTO `mc_hotel_price` VALUES ('05f2d60d63ac4e8084f8a926a39eb90e', '1', '558.00', '2015', '12', '8', 'true', '1', '1588.00', '2015-12-08');
INSERT INTO `mc_hotel_price` VALUES ('069efcbb07824fa39b4a5be549c00df1', '4', '284.00', '2015', '12', '27', 'false', '0', null, '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('06f5abf922d640aca3a1bd32a65f732a', '5', '237.00', '2015', '12', '6', 'false', '0', null, '2015-12-06');
INSERT INTO `mc_hotel_price` VALUES ('076b46db291c48b4a7c95fcec38a4d0c', '6', '298.00', '2015', '12', '10', 'false', '0', '788.00', '2015-12-10');
INSERT INTO `mc_hotel_price` VALUES ('07e64226726e4cb49a5c01c46f84be82', '6', '298.00', '2015', '12', '11', 'false', '0', '788.00', '2015-12-11');
INSERT INTO `mc_hotel_price` VALUES ('07fa3eaf0f864e3e982b0dffc0414e65', '1', '558.00', '2015', '12', '24', 'true', '1', '1588.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('0ac47827556f4185a49860406a697394', '4', '284.00', '2015', '12', '21', 'false', '0', null, '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('0c067d56591b4174aaaee592aac6408c', '2', '284.00', '2015', '12', '27', 'false', '0', null, '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('0e6a930fffaa413289c3f2c07ac1579a', '3', '254.00', '2015', '12', '20', 'false', '0', null, '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('0ebc431e56024a0c89c0b781dd712b1b', '4', '341.00', '2015', '12', '26', 'false', '0', null, '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('0f6a96fbe33146f3adec5b1dca62bb6c', '3', '254.00', '2015', '12', '14', 'false', '0', null, '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('107696a53d5c46c68c6578741ec4c718', '2', '284.00', '2015', '12', '20', 'false', '0', null, '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('107913feb31e479fb6017934f8314e18', '4', '284.00', '2015', '12', '16', 'false', '0', null, '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('1096352d86a7429ba6c0d4aba75a253e', '6', '298.00', '2015', '12', '21', 'false', '0', '788.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('12fd9c3f2d9a4873a04c097f7cfac4ab', '2', '284.00', '2015', '12', '17', 'false', '0', null, '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('16bbabb6cb724cdba96117f05662aea7', '2', '474.00', '2015', '12', '2', 'false', '0', null, '2015-12-02');
INSERT INTO `mc_hotel_price` VALUES ('175787e5698c42f8a898d2e872636ca7', '6', '298.00', '2015', '12', '4', 'false', '0', '788.00', '2015-12-04');
INSERT INTO `mc_hotel_price` VALUES ('17d3e5847c424d1bbd01fcb13e37809f', '7', '458.00', '2015', '12', '12', 'true', '1', '988.00', '2015-12-12');
INSERT INTO `mc_hotel_price` VALUES ('19738a04f76a4a5187d5d87619d6216e', '3', '390.00', '2015', '12', '4', 'false', '0', null, '2015-12-04');
INSERT INTO `mc_hotel_price` VALUES ('19b8a2636c98476eab269e33fa08ca55', '5', '390.00', '2015', '12', '3', 'false', '0', null, '2015-12-03');
INSERT INTO `mc_hotel_price` VALUES ('19f91f93e8ec4aceabc049401df67474', '6', '298.00', '2015', '12', '22', 'false', '0', '788.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('1ac9ab64a5ce4e07b688d0e5a7ef3aaf', '5', '237.00', '2015', '12', '21', 'false', '0', null, '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('1afdacc969224af8920e3da6b86140ad', '4', '284.00', '2015', '12', '6', 'false', '0', null, '2015-12-06');
INSERT INTO `mc_hotel_price` VALUES ('22b98808d64f41f6b6111a5563b68e0f', '4', '284.00', '2015', '12', '15', 'false', '0', null, '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('22e7585d38f04b7aa90cd1141e598134', '6', '298.00', '2015', '12', '25', 'false', '0', '788.00', '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('258297cccbb14c19b19620d61ae8e2cd', '6', '298.00', '2015', '12', '28', 'false', '0', '788.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('25c06be4180043159d15a84c4f7ed92e', '1', '558.00', '2015', '12', '29', 'true', '1', '1588.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('2a719364d45644d88768528d03da0c73', '1', '558.00', '2015', '12', '13', 'true', '1', '1588.00', '2015-12-13');
INSERT INTO `mc_hotel_price` VALUES ('2e2ac655fda34f1ea770237e88a9637e', '7', '458.00', '2015', '12', '7', 'true', '1', '988.00', '2015-12-07');
INSERT INTO `mc_hotel_price` VALUES ('2e5d948ae47d4f69bed3fd10ad9b7295', '7', '458.00', '2015', '12', '4', 'true', '1', '988.00', '2015-12-04');
INSERT INTO `mc_hotel_price` VALUES ('30421533384942778be50865822f0815', '2', '284.00', '2015', '12', '6', 'false', '0', null, '2015-12-06');
INSERT INTO `mc_hotel_price` VALUES ('32a9eba88b4741238097570d20fca8af', '1', '558.00', '2015', '12', '4', 'true', '1', '1588.00', '2015-12-04');
INSERT INTO `mc_hotel_price` VALUES ('3362e53c62324487b1b61028d67380bf', '7', '458.00', '2015', '12', '2', 'true', '1', '988.00', '2015-12-02');
INSERT INTO `mc_hotel_price` VALUES ('339fe391948340e289675fc9b0810eb7', '3', '339.00', '2015', '12', '22', 'false', '0', null, '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('351e6710347546e38de82d822bb44c30', '6', '298.00', '2015', '12', '15', 'false', '0', '788.00', '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('382ed76e5b744611b84ac566ab803dce', '1', '558.00', '2015', '12', '26', 'true', '1', '1588.00', '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('3c1d0ea97ea44dcfa790949f3c4923b1', '3', '254.00', '2015', '12', '21', 'false', '0', null, '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('3d72e869adb14f8cae9273098d28faa6', '3', '339.00', '2015', '12', '10', 'false', '0', null, '2015-12-10');
INSERT INTO `mc_hotel_price` VALUES ('3f907a98948349ee8c59bc49941e2d0d', '3', '339.00', '2015', '12', '8', 'false', '0', null, '2015-12-08');
INSERT INTO `mc_hotel_price` VALUES ('41a47d87aa554e3db666340c4a0b73e7', '4', '360.00', '2015', '12', '2', 'false', '0', null, '2015-12-02');
INSERT INTO `mc_hotel_price` VALUES ('4284ce7b421a43da8e580f360aecdf68', '2', '284.00', '2015', '12', '29', 'false', '0', null, '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('429b7e60e6d04c8ca9f9cd97e709f60c', '4', '284.00', '2015', '12', '28', 'false', '0', null, '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('45aeddfb8101481bbbdefa3e0139d51f', '2', '284.00', '2015', '12', '18', 'false', '0', null, '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('488bd4f2bdcf4137aa3fb40b9dead2cf', '2', '284.00', '2015', '12', '25', 'false', '0', null, '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('493be80284964845b22b703ab8b4fe16', '4', '284.00', '2015', '12', '22', 'false', '0', null, '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('49a23fe659e342f2ab745b0a051445b4', '4', '284.00', '2015', '12', '11', 'false', '0', null, '2015-12-11');
INSERT INTO `mc_hotel_price` VALUES ('4dbac6f86c134578bd65a89c4d54fad1', '1', '558.00', '2015', '12', '11', 'true', '1', '1588.00', '2015-12-11');
INSERT INTO `mc_hotel_price` VALUES ('5151a7518b044256a9049c9852d56978', '4', '284.00', '2015', '12', '19', 'false', '0', null, '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('5226bc87a1194dd3a9114a9012a45e78', '6', '298.00', '2015', '12', '18', 'false', '0', '788.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('52b2816fe8034069b02b46c479fffef4', '4', '284.00', '2015', '12', '23', 'false', '0', null, '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('5372044d9db24fa3bfaf70769158dc9c', '3', '254.00', '2015', '12', '6', 'false', '0', null, '2015-12-06');
INSERT INTO `mc_hotel_price` VALUES ('54b0847d402048f695bce1ac89c57af8', '6', '298.00', '2015', '12', '2', 'false', '0', '788.00', '2015-12-02');
INSERT INTO `mc_hotel_price` VALUES ('551e1a236cda41fd944d62d93aae079c', '1', '558.00', '2015', '12', '2', 'true', '1', '1588.00', '2015-12-02');
INSERT INTO `mc_hotel_price` VALUES ('57fc7a83f8a54d28b26f3208cb09573f', '2', '284.00', '2015', '12', '9', 'false', '0', null, '2015-12-09');
INSERT INTO `mc_hotel_price` VALUES ('589b8b52340d4672a435e6051cc46e10', '4', '284.00', '2015', '12', '9', 'false', '0', null, '2015-12-09');
INSERT INTO `mc_hotel_price` VALUES ('5b2bca54de354dbcac7e798378faca94', '5', '390.00', '2015', '12', '4', 'false', '0', null, '2015-12-04');
INSERT INTO `mc_hotel_price` VALUES ('5b2f1006b3a14e47bcddbbc28894d0ff', '7', '458.00', '2015', '12', '10', 'true', '1', '988.00', '2015-12-10');
INSERT INTO `mc_hotel_price` VALUES ('5d4843c90b65449481bfb35805221fef', '1', '558.00', '2015', '12', '10', 'true', '1', '1588.00', '2015-12-10');
INSERT INTO `mc_hotel_price` VALUES ('5da51a20e7cf4c47a4509dd86f720425', '5', '271.00', '2015', '12', '9', 'false', '0', null, '2015-12-09');
INSERT INTO `mc_hotel_price` VALUES ('5de6479ff3f84d41852970ce1d8032e3', '3', '339.00', '2015', '12', '19', 'false', '0', null, '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('5def7195a14b4852bb97a3f26c0faa28', '4', '360.00', '2015', '12', '3', 'false', '0', null, '2015-12-03');
INSERT INTO `mc_hotel_price` VALUES ('5e89eb382b354a2195dbcf49fd5de427', '2', '284.00', '2015', '12', '19', 'false', '0', null, '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('5f8248d353a548bca2195fc3f0b9feb1', '3', '339.00', '2015', '12', '15', 'false', '0', null, '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('61e70a8ed8354b2783b140d8331b1a04', '5', '289.00', '2015', '12', '12', 'false', '0', null, '2015-12-12');
INSERT INTO `mc_hotel_price` VALUES ('66ee4db96d2d437f97b4bf226121ce3b', '2', '474.00', '2015', '12', '3', 'false', '0', null, '2015-12-03');
INSERT INTO `mc_hotel_price` VALUES ('671202d541d14f08823674cb22fad351', '6', '298.00', '2015', '12', '6', 'false', '0', '788.00', '2015-12-06');
INSERT INTO `mc_hotel_price` VALUES ('67231e41129b4f06ae7cf91b6697deb2', '1', '558.00', '2015', '12', '16', 'true', '1', '1588.00', '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('678b2ca1ae9d4beda84d0914f8c2ee4f', '6', '298.00', '2015', '12', '8', 'false', '0', '788.00', '2015-12-08');
INSERT INTO `mc_hotel_price` VALUES ('685b6c11b265435299a0e5701f93a0e8', '1', '558.00', '2015', '12', '20', 'true', '1', '1588.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('69ec5f772ffd4609ba83d8a879514fe3', '3', '339.00', '2015', '12', '16', 'false', '0', null, '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('6a18e6446cc348419be78356eb3972d5', '4', '284.00', '2015', '12', '24', 'false', '0', null, '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('6ae3e02613db4cfea954f4ed7a992d80', '1', '558.00', '2015', '12', '6', 'true', '1', '1588.00', '2015-12-06');
INSERT INTO `mc_hotel_price` VALUES ('6b9af8d1d8c34a19960a0e709ff2324b', '3', '254.00', '2015', '12', '13', 'false', '0', null, '2015-12-13');
INSERT INTO `mc_hotel_price` VALUES ('6ce074a0bf7b46f08c7e0fe0f87c7078', '6', '298.00', '2015', '12', '13', 'false', '0', '788.00', '2015-12-13');
INSERT INTO `mc_hotel_price` VALUES ('6f0acee6d1a64b3fa05f0fb22c025716', '2', '284.00', '2015', '12', '28', 'false', '0', null, '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('70d967c7d59446ed8828c134224cff01', '5', '271.00', '2015', '12', '16', 'false', '0', null, '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('713558eade86433e9995cbb1df293faf', '1', '558.00', '2015', '12', '1', 'true', '1', '1588.00', '2015-12-01');
INSERT INTO `mc_hotel_price` VALUES ('717c22775e1742a1a6d4237be8c706f2', '1', '558.00', '2015', '12', '25', 'true', '1', '1588.00', '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('72227552e3d948889f5f8b047d90c3fd', '1', '558.00', '2015', '12', '28', 'true', '1', '1588.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('728398a125384b179acdffcf4912d419', '2', '284.00', '2015', '12', '5', 'false', '0', null, '2015-12-05');
INSERT INTO `mc_hotel_price` VALUES ('72c54c82c9944c81af7b7d829329f43a', '5', '237.00', '2015', '12', '7', 'false', '0', null, '2015-12-07');
INSERT INTO `mc_hotel_price` VALUES ('7302040134c74cfa941ce49b554a781b', '7', '458.00', '2015', '12', '6', 'true', '1', '988.00', '2015-12-06');
INSERT INTO `mc_hotel_price` VALUES ('76f8f6165855479a9c2c8d8c60ab6166', '2', '284.00', '2015', '12', '21', 'false', '0', null, '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('77ae43aa31314209936caa84e200f39e', '1', '558.00', '2015', '12', '18', 'true', '1', '1588.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('7897fac3d2ee40fbb821c77805744735', '7', '458.00', '2015', '12', '8', 'true', '1', '988.00', '2015-12-08');
INSERT INTO `mc_hotel_price` VALUES ('7d29a9b0cbf84a5895c4d6bf0092e940', '7', '458.00', '2015', '12', '19', 'true', '1', '988.00', '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('7da23f9def9f494782dbada9f7797e7f', '1', '558.00', '2015', '12', '15', 'true', '1', '1588.00', '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('7dabf8649ed44546a3f728372b9ec434', '6', '298.00', '2015', '12', '19', 'false', '0', '788.00', '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('7e22cc892fe84f10adbd52d83e63dd80', '5', '289.00', '2015', '12', '19', 'false', '0', null, '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('7fb0eb46f1754e9489a7e8aaf4143fac', '7', '458.00', '2015', '12', '29', 'true', '1', '988.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('809962ee674b4ce4b9f4e2f826b93102', '7', '458.00', '2015', '12', '28', 'true', '1', '988.00', '2015-12-28');
INSERT INTO `mc_hotel_price` VALUES ('848438bdd34a442bb640fb84b2b38b26', '7', '458.00', '2015', '12', '5', 'true', '1', '988.00', '2015-12-05');
INSERT INTO `mc_hotel_price` VALUES ('85e4507c88bd4841adc2dabd7914ba81', '2', '284.00', '2015', '12', '10', 'false', '0', null, '2015-12-10');
INSERT INTO `mc_hotel_price` VALUES ('87ff58e2696d49f2a8c5f2bb3341b67d', '2', '474.00', '2015', '12', '4', 'false', '0', null, '2015-12-04');
INSERT INTO `mc_hotel_price` VALUES ('8b3b7034ae59404cbb9a64fff8fe56b2', '6', '298.00', '2015', '12', '29', 'false', '0', '788.00', '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('8e84044c629f483e815536433f1151f2', '6', '298.00', '2015', '12', '14', 'false', '0', '788.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('8ea73bd66d60491da155062c1792c094', '7', '458.00', '2015', '12', '15', 'true', '1', '988.00', '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('8f181274048447e1bf20d40ef7667d17', '1', '558.00', '2015', '12', '3', 'true', '1', '1588.00', '2015-12-03');
INSERT INTO `mc_hotel_price` VALUES ('8f530938d20245e1bf06ec14751bcb56', '3', '339.00', '2015', '12', '12', 'false', '0', null, '2015-12-12');
INSERT INTO `mc_hotel_price` VALUES ('903c6ab8978148ac82f4902625705d1d', '3', '339.00', '2015', '12', '23', 'false', '0', null, '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('91dfc3c9b2e8496782b8cb77ed581250', '2', '284.00', '2015', '12', '22', 'false', '0', null, '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('91fa6ba5371b4e11a67e303511b5fb68', '7', '458.00', '2015', '12', '18', 'true', '1', '988.00', '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('933f1a7348ca4ee6b1749a2dd03a956e', '1', '558.00', '2015', '12', '22', 'true', '1', '1588.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('939612d16d4b4bde995c274d7f723015', '2', '284.00', '2015', '12', '12', 'false', '0', null, '2015-12-12');
INSERT INTO `mc_hotel_price` VALUES ('94a26b1021a645f48220dc7241edcd75', '6', '298.00', '2015', '12', '7', 'false', '0', '788.00', '2015-12-07');
INSERT INTO `mc_hotel_price` VALUES ('9681117c56dd4717b3ffd4b4e5aff891', '7', '458.00', '2015', '12', '1', 'true', '1', '988.00', '2015-12-01');
INSERT INTO `mc_hotel_price` VALUES ('98a5fd6eff884f4bbb7db1f671846cff', '5', '271.00', '2015', '12', '17', 'false', '0', null, '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('98f42a01e0f04832939ad5c1214cb3a1', '6', '298.00', '2015', '12', '3', 'false', '0', '788.00', '2015-12-03');
INSERT INTO `mc_hotel_price` VALUES ('99ec47d7a3da4ae2aa97baecfe0fbbe8', '5', '237.00', '2015', '12', '13', 'false', '0', null, '2015-12-13');
INSERT INTO `mc_hotel_price` VALUES ('9a7303a33851400fa73ba0fb563d1e82', '4', '284.00', '2015', '12', '25', 'false', '0', null, '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('9c4bf686c1db4698a031116e1c7e73c5', '7', '458.00', '2015', '12', '20', 'true', '1', '988.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('9cefb67c23ed4954b56fb5c430aa45fc', '3', '339.00', '2015', '12', '5', 'false', '0', null, '2015-12-05');
INSERT INTO `mc_hotel_price` VALUES ('9f15e2c9aeff443db1dfef340bc4955c', '7', '458.00', '2015', '12', '21', 'true', '1', '988.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('a03aa16802694c5f938f254bc53fc95d', '3', '390.00', '2015', '12', '3', 'false', '0', null, '2015-12-03');
INSERT INTO `mc_hotel_price` VALUES ('a1234a0d03b346a682a0a26571ecc955', '1', '558.00', '2015', '12', '5', 'true', '1', '1588.00', '2015-12-05');
INSERT INTO `mc_hotel_price` VALUES ('a3abadde345c4efa80bd0f023928595f', '7', '458.00', '2015', '12', '23', 'true', '1', '988.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('a44009baed1948c0a02d3ae71fd07194', '6', '298.00', '2015', '12', '27', 'false', '0', '788.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('a4653fd151aa46a8b4e9a1dcbca84195', '1', '558.00', '2015', '12', '7', 'true', '1', '1588.00', '2015-12-07');
INSERT INTO `mc_hotel_price` VALUES ('a4e4bc4bb68b4652b6e077811154f829', '1', '558.00', '2015', '12', '27', 'true', '1', '1588.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('a5cde51a6e724625befcc1c721bb2e88', '7', '458.00', '2015', '12', '24', 'true', '1', '988.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('a60e9c72c52849a880cbfba51e37876d', '7', '458.00', '2015', '12', '27', 'true', '1', '988.00', '2015-12-27');
INSERT INTO `mc_hotel_price` VALUES ('a6fdb5d724804556891348504ad84937', '2', '284.00', '2015', '12', '15', 'false', '0', null, '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('a77f61d2e9b74618982acf09cac45e92', '3', '390.00', '2015', '12', '2', 'false', '0', null, '2015-12-02');
INSERT INTO `mc_hotel_price` VALUES ('a9851830d4b840df9ec588dc854e31ca', '7', '458.00', '2015', '12', '13', 'true', '1', '988.00', '2015-12-13');
INSERT INTO `mc_hotel_price` VALUES ('ab5c06b1668b45128309219d27ccbf00', '4', '284.00', '2015', '12', '10', 'false', '0', null, '2015-12-10');
INSERT INTO `mc_hotel_price` VALUES ('acbbafb5e563450b98554b7e99a156e0', '4', '360.00', '2015', '12', '4', 'false', '0', null, '2015-12-04');
INSERT INTO `mc_hotel_price` VALUES ('ae080c4adf4c4ac990ccffbfeae113fc', '6', '298.00', '2015', '12', '24', 'false', '0', '788.00', '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('b1f7a33f79374782bc2822de3b1c6549', '5', '289.00', '2015', '12', '5', 'false', '0', null, '2015-12-05');
INSERT INTO `mc_hotel_price` VALUES ('b23b7251245b4757960bc409ba945bae', '6', '298.00', '2015', '12', '16', 'false', '0', '788.00', '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('b2c03e92658040459e09daecf4bba38a', '6', '298.00', '2015', '12', '12', 'false', '0', '788.00', '2015-12-12');
INSERT INTO `mc_hotel_price` VALUES ('b595a4e8287141629f92d9c8f87ac528', '2', '284.00', '2015', '12', '24', 'false', '0', null, '2015-12-24');
INSERT INTO `mc_hotel_price` VALUES ('b5e865b68be346d1a39bc012ca629fa8', '4', '284.00', '2015', '12', '7', 'false', '0', null, '2015-12-07');
INSERT INTO `mc_hotel_price` VALUES ('b70f98dbba4b492eb8fbf2351482c6e2', '7', '458.00', '2015', '12', '25', 'true', '1', '988.00', '2015-12-25');
INSERT INTO `mc_hotel_price` VALUES ('b84180acdab742e29d12b4bdcb9d7bbd', '7', '458.00', '2015', '12', '17', 'true', '1', '988.00', '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('b9be71094d7e4bb190e7be96f7ce7bfd', '4', '284.00', '2015', '12', '13', 'false', '0', null, '2015-12-13');
INSERT INTO `mc_hotel_price` VALUES ('bab059c77884428e85f551598f34c9b4', '5', '271.00', '2015', '12', '22', 'false', '0', null, '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('bbc340815cb34e579b84a05f7a2c6ffe', '2', '284.00', '2015', '12', '16', 'false', '0', null, '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('bcda8c9e87f64dd69f3fc39202464fc4', '7', '458.00', '2015', '12', '16', 'true', '1', '988.00', '2015-12-16');
INSERT INTO `mc_hotel_price` VALUES ('bd35b671e3284178be4462a441de66a5', '6', '298.00', '2015', '12', '5', 'false', '0', '788.00', '2015-12-05');
INSERT INTO `mc_hotel_price` VALUES ('bdf37e5d4184433fbd639d540760eca4', '6', '298.00', '2015', '12', '23', 'false', '0', '788.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('bf8547d18da148ffb3ae66f904964ffe', '2', '284.00', '2015', '12', '23', 'false', '0', null, '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('bf9819581cf14c0aab9b657c3e445911', '6', '298.00', '2015', '12', '20', 'false', '0', '788.00', '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('c0354b7ccf164826af48f68f99299fad', '5', '237.00', '2015', '12', '20', 'false', '0', null, '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('c0a5bd3a42a44e988d4d7d8f9b25f1c0', '1', '558.00', '2015', '12', '14', 'true', '1', '1588.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('c2f79b7372a046e894b585e1fd514e38', '4', '284.00', '2015', '12', '29', 'false', '0', null, '2015-12-29');
INSERT INTO `mc_hotel_price` VALUES ('c5d07f683ca645c59181132723c7626d', '3', '339.00', '2015', '12', '17', 'false', '0', null, '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('c7375a0f33424833babb8affd09d6d00', '4', '284.00', '2015', '12', '5', 'false', '0', null, '2015-12-05');
INSERT INTO `mc_hotel_price` VALUES ('c7682e7c9ffb45bf9f5e20e4c0bfbd9a', '7', '458.00', '2015', '12', '14', 'true', '1', '988.00', '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('ca86ea3eec7146b2a72250f2de432415', '2', '284.00', '2015', '12', '7', 'false', '0', null, '2015-12-07');
INSERT INTO `mc_hotel_price` VALUES ('cd1399a28f1f4c19839bb55cef0d054d', '4', '284.00', '2015', '12', '17', 'false', '0', null, '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('d2a232960eda490498fff128385ed738', '5', '271.00', '2015', '12', '15', 'false', '0', null, '2015-12-15');
INSERT INTO `mc_hotel_price` VALUES ('d705b04d142f48139741c8c0e67be2d0', '4', '284.00', '2015', '12', '14', 'false', '0', null, '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('d89da5510b55423fa29187c6bb89c5dc', '7', '458.00', '2015', '12', '11', 'true', '1', '988.00', '2015-12-11');
INSERT INTO `mc_hotel_price` VALUES ('da4538c127b940669998356b4f4f15ca', '1', '558.00', '2015', '12', '21', 'true', '1', '1588.00', '2015-12-21');
INSERT INTO `mc_hotel_price` VALUES ('da9892be4d40405db5ad47a865ae5140', '1', '558.00', '2015', '12', '12', 'true', '1', '1588.00', '2015-12-12');
INSERT INTO `mc_hotel_price` VALUES ('dbce2e4b8d194c19847eee2e514f45d8', '2', '284.00', '2015', '12', '13', 'false', '0', null, '2015-12-13');
INSERT INTO `mc_hotel_price` VALUES ('dbe5e4e9fed5463ca518589688ae8b3f', '4', '284.00', '2015', '12', '12', 'false', '0', null, '2015-12-12');
INSERT INTO `mc_hotel_price` VALUES ('df37041cea574dd2a4a3567f34fac33d', '1', '558.00', '2015', '12', '19', 'true', '1', '1588.00', '2015-12-19');
INSERT INTO `mc_hotel_price` VALUES ('dfad02ef09d0434585e46135a364128b', '2', '284.00', '2015', '12', '11', 'false', '0', null, '2015-12-11');
INSERT INTO `mc_hotel_price` VALUES ('e462cf362959401cabbe4065732a788e', '5', '237.00', '2015', '12', '14', 'false', '0', null, '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('e6891d361085403bbe5eac79d68315e5', '2', '284.00', '2015', '12', '14', 'false', '0', null, '2015-12-14');
INSERT INTO `mc_hotel_price` VALUES ('e6945b3e658f44a3a6f8ed05b65ec98a', '4', '284.00', '2015', '12', '8', 'false', '0', null, '2015-12-08');
INSERT INTO `mc_hotel_price` VALUES ('e6cf5b9ea0d54f3a9f1edbd192e4b550', '5', '271.00', '2015', '12', '10', 'false', '0', null, '2015-12-10');
INSERT INTO `mc_hotel_price` VALUES ('e7907ea7d0b449fbac380fab091ca215', '7', '458.00', '2015', '12', '3', 'true', '1', '988.00', '2015-12-03');
INSERT INTO `mc_hotel_price` VALUES ('e7d68a706e1847cabebaed743be312d2', '5', '271.00', '2015', '12', '23', 'false', '0', null, '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('e8d8f2bafaee43389e4ce38a9a13a514', '3', '254.00', '2015', '12', '7', 'false', '0', null, '2015-12-07');
INSERT INTO `mc_hotel_price` VALUES ('eabde78db96e4344ab97ab5cf535a4ef', '4', '284.00', '2015', '12', '18', 'false', '0', null, '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('eaedbf7eb7ca42d09cc313c5b964288e', '5', '390.00', '2015', '12', '2', 'false', '0', null, '2015-12-02');
INSERT INTO `mc_hotel_price` VALUES ('ec2f228894c14d3fafadbe466e1bf7e0', '6', '298.00', '2015', '12', '26', 'false', '0', '788.00', '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('ec4e6c88514440f69b05f401adeb6096', '3', '339.00', '2015', '12', '18', 'false', '0', null, '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('ee1edf3ebec84bac9bb03da717163c41', '7', '458.00', '2015', '12', '22', 'true', '1', '988.00', '2015-12-22');
INSERT INTO `mc_hotel_price` VALUES ('ee6f60f7989348d787df9fa02a180fed', '7', '458.00', '2015', '12', '9', 'true', '1', '988.00', '2015-12-09');
INSERT INTO `mc_hotel_price` VALUES ('efaf68390ebb4ca1a5821d7bce266200', '6', '298.00', '2015', '12', '17', 'false', '0', '788.00', '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('f1f110c020424c56828754450a48c590', '1', '558.00', '2015', '12', '17', 'true', '1', '1588.00', '2015-12-17');
INSERT INTO `mc_hotel_price` VALUES ('f412b0e1480346bfb58ea6c15494fa33', '5', '271.00', '2015', '12', '8', 'false', '0', null, '2015-12-08');
INSERT INTO `mc_hotel_price` VALUES ('f466249e67274715a18807ec4ccc6593', '6', '298.00', '2015', '12', '1', 'false', '0', '788.00', '2015-12-01');
INSERT INTO `mc_hotel_price` VALUES ('f5355ffbce12452398bcffa2a3963415', '6', '298.00', '2015', '12', '9', 'false', '0', '788.00', '2015-12-09');
INSERT INTO `mc_hotel_price` VALUES ('fa6c8716241449c3922b5b70bebd73e3', '5', '271.00', '2015', '12', '18', 'false', '0', null, '2015-12-18');
INSERT INTO `mc_hotel_price` VALUES ('fafa88a1832440af84dbbe5059f486af', '2', '284.00', '2015', '12', '8', 'false', '0', null, '2015-12-08');
INSERT INTO `mc_hotel_price` VALUES ('fafcc057fe0341ceba29d7989a32cdb4', '4', '284.00', '2015', '12', '20', 'false', '0', null, '2015-12-20');
INSERT INTO `mc_hotel_price` VALUES ('fcbed8b57b0b4d90b4bff94f2659c8a0', '3', '339.00', '2015', '12', '9', 'false', '0', null, '2015-12-09');
INSERT INTO `mc_hotel_price` VALUES ('fd05b62cd0f646efac6376f9b2e0db51', '1', '558.00', '2015', '12', '23', 'true', '1', '1588.00', '2015-12-23');
INSERT INTO `mc_hotel_price` VALUES ('fe106a87919d4de8abefc397ff83d577', '7', '458.00', '2015', '12', '26', 'true', '1', '988.00', '2015-12-26');
INSERT INTO `mc_hotel_price` VALUES ('fe6fd2a5d21d4f90bcf7e6de450e3f4e', '5', '271.00', '2015', '12', '11', 'false', '0', null, '2015-12-11');

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
INSERT INTO `mc_images` VALUES ('1447055976621', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/INDEX/1447055976621.jpeg', 'wKgB4lNZyOKAUCUbABPVg-AX5N854.jpeg', null, 'INDEX', null, null, '1299843');
INSERT INTO `mc_images` VALUES ('1447056382357', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056382357.jpg', '7657551_171657129000_2.jpg', null, 'DETAIL-HEADER', null, null, '170288');
INSERT INTO `mc_images` VALUES ('1447056383312', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056383312.jpg', '88f60f2370428e21.jpg', null, 'DETAIL-HEADER', null, null, '33705');
INSERT INTO `mc_images` VALUES ('1447056383420', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056383420.jpg', '18375235_113342972000_2.jpg', null, 'DETAIL-HEADER', null, null, '116135');
INSERT INTO `mc_images` VALUES ('1447056384568', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056384568.jpg', 'n_s02259027391546464036!20633507676160.jpg', null, 'DETAIL-HEADER', null, null, '64749');
INSERT INTO `mc_images` VALUES ('1447056384650', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056384650.jpg', 'xichong003.jpg', null, 'DETAIL-HEADER', null, null, '47618');
INSERT INTO `mc_images` VALUES ('1447056385143', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056385143.jpg', '3e4e99d959f94f13be463e5ff8cfd56f.jpg', null, 'DETAIL-HEADER', null, null, '645201');
INSERT INTO `mc_images` VALUES ('1447056388137', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056388137.jpg', '51748fdba3cf483990edea93b9cd89cf_C_500_280.jpg', null, 'DETAIL-HEADER', null, null, '29105');
INSERT INTO `mc_images` VALUES ('1447056389597', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/DETAIL-HEADER/1447056389597.jpg', 'FDBF1529-490D-4432-9D1D-5CF7A0951217.jpg', null, 'DETAIL-HEADER', null, null, '181988');
INSERT INTO `mc_images` VALUES ('1447057973836', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/GOODNESS/1447057973836.jpg', '2221.jpg', null, 'GOODNESS', null, null, '334021');
INSERT INTO `mc_images` VALUES ('1447058224421', 'a92dd7a004f54eeeb4973a0d8daa3003', 'image/jpeg', null, '/a92dd7a004f54eeeb4973a0d8daa3003/HOTEL-ICON/1447058224421.jpg', '200831816829426_2.jpg', null, 'HOTEL-ICON', null, null, '116583');
INSERT INTO `mc_images` VALUES ('1447126813649', '5e8a11a706a84e9db9d5249f3d3736ef', 'image/jpeg', null, '/5e8a11a706a84e9db9d5249f3d3736ef/INDEX/1447126813649.jpg', '9341950_125030406000_2.jpg', null, 'INDEX', null, null, '340988');
INSERT INTO `mc_images` VALUES ('1447126965942', '5e8a11a706a84e9db9d5249f3d3736ef', 'image/jpeg', null, '/5e8a11a706a84e9db9d5249f3d3736ef/DETAIL-HEADER/1447126965942.jpg', '9341950_125030406000_2.jpg', null, 'DETAIL-HEADER', null, null, '340988');
INSERT INTO `mc_images` VALUES ('1447126966572', '5e8a11a706a84e9db9d5249f3d3736ef', 'image/jpeg', null, '/5e8a11a706a84e9db9d5249f3d3736ef/DETAIL-HEADER/1447126966572.jpg', '200712116442841_2.jpg', null, 'DETAIL-HEADER', null, null, '277788');
INSERT INTO `mc_images` VALUES ('1447126967467', '5e8a11a706a84e9db9d5249f3d3736ef', 'image/jpeg', null, '/5e8a11a706a84e9db9d5249f3d3736ef/DETAIL-HEADER/1447126967467.jpg', '8022110_162804602317_2.jpg', null, 'DETAIL-HEADER', null, null, '341071');
INSERT INTO `mc_images` VALUES ('1447126968457', '5e8a11a706a84e9db9d5249f3d3736ef', 'image/jpeg', null, '/5e8a11a706a84e9db9d5249f3d3736ef/DETAIL-HEADER/1447126968457.jpg', '18071023_165220584000_2.jpg', null, 'DETAIL-HEADER', null, null, '269077');
INSERT INTO `mc_images` VALUES ('1447126971457', '5e8a11a706a84e9db9d5249f3d3736ef', 'image/jpeg', null, '/5e8a11a706a84e9db9d5249f3d3736ef/DETAIL-HEADER/1447126971457.jpg', '10754047_140022530392_2.jpg', null, 'DETAIL-HEADER', null, null, '439170');
INSERT INTO `mc_images` VALUES ('1447127326746', '5e8a11a706a84e9db9d5249f3d3736ef', 'image/png', null, '/5e8a11a706a84e9db9d5249f3d3736ef/GOODNESS/1447127326746.png', 'image001.png', null, 'GOODNESS', null, null, '452419');
INSERT INTO `mc_images` VALUES ('1447146328820', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/INDEX/1447146328820.png', 'image001.png', null, 'INDEX', null, null, '722106');
INSERT INTO `mc_images` VALUES ('1447147013203', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147013203.png', 'image022.png', null, 'GOODNESS', null, null, '868382');
INSERT INTO `mc_images` VALUES ('1447147016110', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147016110.png', 'image026.png', null, 'GOODNESS', null, null, '527088');
INSERT INTO `mc_images` VALUES ('1447147016288', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147016288.png', 'image007.png', null, 'GOODNESS', null, null, '41994');
INSERT INTO `mc_images` VALUES ('1447147016594', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147016594.png', 'image004.png', null, 'GOODNESS', null, null, '273667');
INSERT INTO `mc_images` VALUES ('1447147016635', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147016635.png', 'image025.png', null, 'GOODNESS', null, null, '378534');
INSERT INTO `mc_images` VALUES ('1447147016829', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147016829.png', 'image009.png', null, 'GOODNESS', null, null, '65565');
INSERT INTO `mc_images` VALUES ('1447147016972', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147016972.png', 'image010.png', null, 'GOODNESS', null, null, '84095');
INSERT INTO `mc_images` VALUES ('1447147017233', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147017233.png', 'image024.png', null, 'GOODNESS', null, null, '464743');
INSERT INTO `mc_images` VALUES ('1447147017653', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147017653.png', 'image005.png', null, 'GOODNESS', null, null, '41454');
INSERT INTO `mc_images` VALUES ('1447147018225', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147018225.png', 'image012.png', null, 'GOODNESS', null, null, '71106');
INSERT INTO `mc_images` VALUES ('1447147018262', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147018262.png', 'image017.png', null, 'GOODNESS', null, null, '142816');
INSERT INTO `mc_images` VALUES ('1447147018790', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147018790.png', 'image023.png', null, 'GOODNESS', null, null, '470389');
INSERT INTO `mc_images` VALUES ('1447147018908', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147018908.png', 'image027.png', null, 'GOODNESS', null, null, '374691');
INSERT INTO `mc_images` VALUES ('1447147019723', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147019723.png', 'image021.png', null, 'GOODNESS', null, null, '414841');
INSERT INTO `mc_images` VALUES ('1447147020081', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147020081.png', 'image029.png', null, 'GOODNESS', null, null, '339830');
INSERT INTO `mc_images` VALUES ('1447147020814', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147020814.png', 'image028.png', null, 'GOODNESS', null, null, '347018');
INSERT INTO `mc_images` VALUES ('1447147020969', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147020969.png', 'image006.png', null, 'GOODNESS', null, null, '47203');
INSERT INTO `mc_images` VALUES ('1447147021100', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147021100.png', 'image035.png', null, 'GOODNESS', null, null, '73399');
INSERT INTO `mc_images` VALUES ('1447147021356', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147021356.png', 'image034.png', null, 'GOODNESS', null, null, '79351');
INSERT INTO `mc_images` VALUES ('1447147022394', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147022394.png', 'image008.png', null, 'GOODNESS', null, null, '281537');
INSERT INTO `mc_images` VALUES ('1447147022533', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147022533.png', 'image030.png', null, 'GOODNESS', null, null, '198952');
INSERT INTO `mc_images` VALUES ('1447147022763', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147022763.png', 'image031.png', null, 'GOODNESS', null, null, '396547');
INSERT INTO `mc_images` VALUES ('1447147023008', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147023008.png', 'image019.png', null, 'GOODNESS', null, null, '554532');
INSERT INTO `mc_images` VALUES ('1447147023886', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147023886.png', 'image014.png', null, 'GOODNESS', null, null, '436825');
INSERT INTO `mc_images` VALUES ('1447147024154', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147024154.png', 'image040.png', null, 'GOODNESS', null, null, '67703');
INSERT INTO `mc_images` VALUES ('1447147024289', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147024289.png', 'image016.png', null, 'GOODNESS', null, null, '138962');
INSERT INTO `mc_images` VALUES ('1447147024576', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147024576.png', 'image032.png', null, 'GOODNESS', null, null, '68614');
INSERT INTO `mc_images` VALUES ('1447147024945', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147024945.png', 'image011.png', null, 'GOODNESS', null, null, '435739');
INSERT INTO `mc_images` VALUES ('1447147025204', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147025204.png', 'image036.png', null, 'GOODNESS', null, null, '370447');
INSERT INTO `mc_images` VALUES ('1447147025537', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147025537.png', 'image015.png', null, 'GOODNESS', null, null, '132526');
INSERT INTO `mc_images` VALUES ('1447147026389', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147026389.png', 'image018.png', null, 'GOODNESS', null, null, '750660');
INSERT INTO `mc_images` VALUES ('1447147026577', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147026577.png', 'image033.png', null, 'GOODNESS', null, null, '71032');
INSERT INTO `mc_images` VALUES ('1447147026608', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147026608.png', 'image013.png', null, 'GOODNESS', null, null, '82087');
INSERT INTO `mc_images` VALUES ('1447147026853', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147026853.png', 'image039.png', null, 'GOODNESS', null, null, '470222');
INSERT INTO `mc_images` VALUES ('1447147027700', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147027700.png', 'image041.png', null, 'GOODNESS', null, null, '74695');
INSERT INTO `mc_images` VALUES ('1447147028891', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147028891.png', 'image037.png', null, 'GOODNESS', null, null, '74540');
INSERT INTO `mc_images` VALUES ('1447147029380', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/GOODNESS/1447147029380.png', 'image038.png', null, 'GOODNESS', null, null, '65459');
INSERT INTO `mc_images` VALUES ('1447148721848', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/INDEX/1447148721848.png', 'image001.png', null, 'INDEX', null, null, '722106');
INSERT INTO `mc_images` VALUES ('1447149007502', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149007502.png', 'image025.png', null, 'DETAIL-HEADER', null, null, '378534');
INSERT INTO `mc_images` VALUES ('1447149007962', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149007962.png', 'image014.png', null, 'DETAIL-HEADER', null, null, '436825');
INSERT INTO `mc_images` VALUES ('1447149010415', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149010415.png', 'image015.png', null, 'DETAIL-HEADER', null, null, '132526');
INSERT INTO `mc_images` VALUES ('1447149010689', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149010689.png', 'image036.png', null, 'DETAIL-HEADER', null, null, '370447');
INSERT INTO `mc_images` VALUES ('1447149010844', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149010844.png', 'image037.png', null, 'DETAIL-HEADER', null, null, '74540');
INSERT INTO `mc_images` VALUES ('1447149011450', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149011450.png', 'image016.png', null, 'DETAIL-HEADER', null, null, '138962');
INSERT INTO `mc_images` VALUES ('1447149011822', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149011822.png', 'image038.png', null, 'DETAIL-HEADER', null, null, '65459');
INSERT INTO `mc_images` VALUES ('1447149012849', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149012849.png', 'image028.png', null, 'DETAIL-HEADER', null, null, '347018');
INSERT INTO `mc_images` VALUES ('1447149014120', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149014120.png', 'image027.png', null, 'DETAIL-HEADER', null, null, '374691');
INSERT INTO `mc_images` VALUES ('1447149015536', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149015536.png', 'image026.png', null, 'DETAIL-HEADER', null, null, '527088');
INSERT INTO `mc_images` VALUES ('1447149016648', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149016648.png', 'image017.png', null, 'DETAIL-HEADER', null, null, '142816');
INSERT INTO `mc_images` VALUES ('1447149018655', '7f3ea4fba7e14457bc20aa985b5edc97', 'image/png', null, '/7f3ea4fba7e14457bc20aa985b5edc97/DETAIL-HEADER/1447149018655.png', 'image039.png', null, 'DETAIL-HEADER', null, null, '470222');
INSERT INTO `mc_images` VALUES ('1448603774203', 'a69a807c5403498d84e2233629137429', 'image/jpeg', null, '/a69a807c5403498d84e2233629137429/TOPIC-INDEX/1448603774203.jpg', '温泉主题 首页图片.jpg', null, 'TOPIC-INDEX', null, null, '181370');
INSERT INTO `mc_images` VALUES ('1448604161292', 'a69a807c5403498d84e2233629137429', 'image/png', null, '/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604161292.png', '温泉主题 从化碧水湾图片.png', null, 'TOPIC-CONTENT', null, null, '489805');
INSERT INTO `mc_images` VALUES ('1448604161800', 'a69a807c5403498d84e2233629137429', 'image/jpeg', null, '/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604161800.jpg', '温泉主题 古兜温泉图片2.jpg', null, 'TOPIC-CONTENT', null, null, '378488');
INSERT INTO `mc_images` VALUES ('1448604162571', 'a69a807c5403498d84e2233629137429', 'image/jpeg', null, '/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604162571.jpg', '温泉主题 御温泉图片.jpg', null, 'TOPIC-CONTENT', null, null, '198622');
INSERT INTO `mc_images` VALUES ('1448604166959', 'a69a807c5403498d84e2233629137429', 'image/jpeg', null, '/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604166959.jpg', '温泉主题 龙门铁泉图片.jpg', null, 'TOPIC-CONTENT', null, null, '80488');

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
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_order
-- ----------------------------
INSERT INTO `mc_order` VALUES ('9977fd184c5d456cb05b0f0d514357c5', '14485279753905121868', '566962dc3cf5479494be7e615b0f6af7', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '/a92dd7a004f54eeeb4973a0d8daa3003/HOTEL-ICON/1447058224421.jpg', '豪华别墅双床房（双早双温泉-冬季养生套餐）', '2015-11-30', '2015-12-01', '1', '2015-11-26 16:52:43', '277.00', 'UNPAY', 'N', '7dd1a22f-ea3a-47ac-8408-8ea070ca6048', '501-1584081925', null, '', null, null);
INSERT INTO `mc_order` VALUES ('d0e795711e1e4bd1a97123133bdab99d', '14485277977311020065', '566962dc3cf5479494be7e615b0f6af7', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '/a92dd7a004f54eeeb4973a0d8daa3003/HOTEL-ICON/1447058224421.jpg', '豪华别墅双床房（双早双温泉-冬季养生套餐）', '2015-11-26', '2015-11-27', '1', '2015-11-26 16:49:57', '311.00', 'UNPAY', 'N', '7dd1a22f-ea3a-47ac-8408-8ea070ca6048', null, null, '没有', null, null);

-- ----------------------------
-- Table structure for `mc_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mc_order_detail`;
CREATE TABLE `mc_order_detail` (
  `order_detail_id` varchar(40) NOT NULL DEFAULT '',
  `order_id` varchar(40) DEFAULT NULL,
  `ticket_id` varchar(40) DEFAULT NULL,
  `ticket_name` varchar(500) DEFAULT NULL,
  `ticket_detail_id` varchar(40) DEFAULT NULL,
  `ticket_detail_name` varchar(600) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `market_price` decimal(12,2) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL COMMENT 'HOTEL/SPOT',
  `code1` varchar(255) DEFAULT NULL,
  `code2` varchar(255) DEFAULT NULL,
  `is_display` varchar(100) DEFAULT NULL,
  `is_pay` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_order_detail
-- ----------------------------
INSERT INTO `mc_order_detail` VALUES ('123d1d87e4904cf9aa114041439bfa63', 'd0e795711e1e4bd1a97123133bdab99d', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '1c99d7aca1ba4db8b7ce11a25af4e5c4', '早餐（1份）', '0.00', '0.00', 'BREAKFAST', null, null, 'no', 'no', '1');
INSERT INTO `mc_order_detail` VALUES ('40af400c8237480e8c57ea61ba98e70a', 'd0e795711e1e4bd1a97123133bdab99d', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '1c99d7aca1ba4db8b7ce11a25af4e5b4', '广州香江健康山谷（原锦绣香江温泉城）', '0.00', '0.00', 'HOTEL', '2116656', '12081415', 'yes', 'yes', '1');
INSERT INTO `mc_order_detail` VALUES ('500111a1d68b4116bb89b70554fd2dac', 'd0e795711e1e4bd1a97123133bdab99d', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '1c99d7aca1ba4db8b7ce11a25af4e5a4', '四季城', '0.00', '0.00', 'SPOT', '103060', '1659388', 'no', 'yes', '2');
INSERT INTO `mc_order_detail` VALUES ('8f07674320e7462dbfaf4cd80cf74049', '9977fd184c5d456cb05b0f0d514357c5', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '1c99d7aca1ba4db8b7ce11a25af4e5a4', '四季城', '0.00', '0.00', 'SPOT', '103060', '1659388', 'no', 'yes', '2');
INSERT INTO `mc_order_detail` VALUES ('d4044f11cd12407aa364e9f5a54c0679', '9977fd184c5d456cb05b0f0d514357c5', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '1c99d7aca1ba4db8b7ce11a25af4e5c4', '早餐（1份）', '0.00', '0.00', 'BREAKFAST', null, null, 'no', 'no', '1');
INSERT INTO `mc_order_detail` VALUES ('d58139cf48394b4ba9f06482a27c20de', '9977fd184c5d456cb05b0f0d514357c5', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '别墅房1晚+温泉门票2张+大丰门门票2张', '1c99d7aca1ba4db8b7ce11a25af4e5b4', '广州香江健康山谷（原锦绣香江温泉城）', '0.00', '0.00', 'HOTEL', '2116656', '12081415', 'yes', 'yes', '1');

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
INSERT INTO `mc_order_visitor` VALUES ('104a7ea2f4114abaaa4ccd0e4bf7ad3f', 'd0e795711e1e4bd1a97123133bdab99d', '杨成', '13410240005', null, null);
INSERT INTO `mc_order_visitor` VALUES ('eb907c77b6fc400a9d4440f6b29e832c', '9977fd184c5d456cb05b0f0d514357c5', '杨成', '13410240005', null, null);

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
  `spot_code` varchar(200) DEFAULT NULL,
  `resource_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`spot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_spot
-- ----------------------------
INSERT INTO `mc_spot` VALUES ('1', 't', '22', '22', '103060', '1659388');
INSERT INTO `mc_spot` VALUES ('2', '33', '33', '33', '103060', '1705476');
INSERT INTO `mc_spot` VALUES ('3', '2332', '22', '332', '103060', '4107316');

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
INSERT INTO `mc_spot_price` VALUES ('0380d06427e44eeab00f76567a793029', '1', '40.00', '2015', '12', '03', null, '99', '0.00', '99999', '2015-12-03');
INSERT INTO `mc_spot_price` VALUES ('12e6dc090aaa4706abbc0bdf4e7c0718', '1', '40.00', '2015', '12', '28', null, '99', '0.00', '99999', '2015-12-28');
INSERT INTO `mc_spot_price` VALUES ('19148282afa140dab0ca7389c998866a', '1', '40.00', '2015', '12', '16', null, '99', '0.00', '99999', '2015-12-16');
INSERT INTO `mc_spot_price` VALUES ('1baf68de61924627b48f3981d1145bb1', '1', '40.00', '2015', '12', '11', null, '99', '0.00', '99999', '2015-12-11');
INSERT INTO `mc_spot_price` VALUES ('1c5912b71b564e1a97f925fdd44fdadd', '1', '40.00', '2015', '12', '02', null, '99', '0.00', '99999', '2015-12-02');
INSERT INTO `mc_spot_price` VALUES ('26410047fc374881962f04d57c562eaf', '3', '79.00', '2015', '11', '28', null, '99', '0.00', '9999', '2015-11-28');
INSERT INTO `mc_spot_price` VALUES ('29f0cf4fd8e84534909e4c5ee369b4f8', '1', '40.00', '2015', '12', '07', null, '99', '0.00', '99999', '2015-12-07');
INSERT INTO `mc_spot_price` VALUES ('311b966870e14e0cb135854fe4756041', '1', '40.00', '2015', '12', '26', null, '99', '0.00', '99999', '2015-12-26');
INSERT INTO `mc_spot_price` VALUES ('341b7d414a714c419e8e82a60aa7fdc8', '1', '40.00', '2015', '12', '25', null, '99', '0.00', '99999', '2015-12-25');
INSERT INTO `mc_spot_price` VALUES ('3d35b7e079ac4404a7d71bcf56f3b664', '3', '79.00', '2015', '11', '25', null, '99', '0.00', '9999', '2015-11-25');
INSERT INTO `mc_spot_price` VALUES ('3de40a2429094b248bbe6a2f23b2de82', '1', '40.00', '2015', '12', '18', null, '99', '0.00', '99999', '2015-12-18');
INSERT INTO `mc_spot_price` VALUES ('47ee05810f324a4a8228a785b2825a41', '1', '40.00', '2015', '12', '29', null, '99', '0.00', '99999', '2015-12-29');
INSERT INTO `mc_spot_price` VALUES ('47f44c5ec4a84a71b667a5dd41f60ad0', '1', '40.00', '2015', '12', '12', null, '99', '0.00', '99999', '2015-12-12');
INSERT INTO `mc_spot_price` VALUES ('4e49790545a3442cb11f90fbf5044236', '1', '40.00', '2015', '12', '17', null, '99', '0.00', '99999', '2015-12-17');
INSERT INTO `mc_spot_price` VALUES ('559318300e8f4ab982cce38734bcdbdd', '3', '79.00', '2015', '11', '23', null, '99', '0.00', '9999', '2015-11-23');
INSERT INTO `mc_spot_price` VALUES ('5db317a07b9f4415a8a1499480d271b2', '1', '40.00', '2015', '12', '22', null, '99', '0.00', '99999', '2015-12-22');
INSERT INTO `mc_spot_price` VALUES ('62aecfcfc2174b448165e403d20568b2', '1', '40.00', '2015', '12', '23', null, '99', '0.00', '99999', '2015-12-23');
INSERT INTO `mc_spot_price` VALUES ('6422346e91c44ecab406cb830e40a34a', '3', '79.00', '2015', '11', '24', null, '99', '0.00', '9999', '2015-11-24');
INSERT INTO `mc_spot_price` VALUES ('6d12a5d8e6fa450ba537f1c678ed4ce6', '1', '40.00', '2015', '12', '21', null, '99', '0.00', '99999', '2015-12-21');
INSERT INTO `mc_spot_price` VALUES ('6ecfdc475c6145a88b64db180a8f899a', '1', '40.00', '2015', '12', '04', null, '99', '0.00', '99989', '2015-12-04');
INSERT INTO `mc_spot_price` VALUES ('7aa9644729a545c4b6c9f4559dfa1256', '1', '40.00', '2015', '12', '06', null, '99', '0.00', '99999', '2015-12-06');
INSERT INTO `mc_spot_price` VALUES ('7cf4dd79c9064b5696cc4ae4c7825a46', '1', '40.00', '2015', '12', '24', null, '99', '0.00', '99999', '2015-12-24');
INSERT INTO `mc_spot_price` VALUES ('7d97d87b6b734997acafc8f2f5d50d8e', '1', '40.00', '2015', '12', '27', null, '99', '0.00', '99999', '2015-12-27');
INSERT INTO `mc_spot_price` VALUES ('844d9125dd44487c8bca8e005b56f686', '1', '40.00', '2015', '12', '08', null, '99', '0.00', '99999', '2015-12-08');
INSERT INTO `mc_spot_price` VALUES ('8db2ee5c755b4d58a3605fea916973fc', '3', '79.00', '2015', '11', '29', null, '99', '0.00', '9999', '2015-11-29');
INSERT INTO `mc_spot_price` VALUES ('972a8f5767564c8cb6ce5132974db6ab', '1', '40.00', '2015', '12', '05', null, '99', '0.00', '99999', '2015-12-05');
INSERT INTO `mc_spot_price` VALUES ('acad095f8a3248a59239414a4f23bd8a', '3', '79.00', '2015', '11', '27', null, '99', '0.00', '9999', '2015-11-27');
INSERT INTO `mc_spot_price` VALUES ('ae1efaa8299b47eaa2f37858f96d9b73', '3', '79.00', '2015', '11', '26', null, '99', '0.00', '9999', '2015-11-26');
INSERT INTO `mc_spot_price` VALUES ('b3a9a2b5a51e4b99b764e507b4b742ad', '1', '40.00', '2015', '12', '15', null, '99', '0.00', '99999', '2015-12-15');
INSERT INTO `mc_spot_price` VALUES ('bf81371b40db4343b5a8b0b9c85631ef', '1', '40.00', '2015', '12', '10', null, '99', '0.00', '99999', '2015-12-10');
INSERT INTO `mc_spot_price` VALUES ('cd8c0895190241048a57a8eeeedd0d1f', '1', '40.00', '2015', '12', '19', null, '99', '0.00', '99999', '2015-12-19');
INSERT INTO `mc_spot_price` VALUES ('e6e3de837cd040a0b7459adf90165833', '1', '40.00', '2015', '12', '09', null, '99', '0.00', '99999', '2015-12-09');
INSERT INTO `mc_spot_price` VALUES ('f93f0d9843ce4b079016048601bd5bd2', '1', '40.00', '2015', '12', '13', null, '99', '0.00', '99999', '2015-12-13');
INSERT INTO `mc_spot_price` VALUES ('faf2af7c2870491e8c54f956d38603a9', '1', '40.00', '2015', '12', '20', null, '99', '0.00', '99999', '2015-12-20');
INSERT INTO `mc_spot_price` VALUES ('fe3180d9f73a4e5e9b57388f8c39011b', '1', '40.00', '2015', '12', '14', null, '99', '0.00', '99999', '2015-12-14');

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
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket
-- ----------------------------
INSERT INTO `mc_ticket` VALUES ('1c99d7aca1ba4db8b7ce11a25af4e5e4', 'a92dd7a004f54eeeb4973a0d8daa3003', '别墅房1晚+温泉门票2张+大丰门门票2张', '【套餐配置设施】\n早餐有线网络Wifi独立卫生间空调洗漱用品窗户电视拖鞋热水\n【套餐详情】\n别墅大床/双床房 住宿 1晚\n自助早餐 2份\n健康山谷温泉城温泉门票 2张\n大丰门景区门票 2张\n【特别说明】\n双十一会员价仅11月10-12日购买专享，请留意选择日期。\n温馨提示：11月9日-11月30日逢周五入住赠送自助晚餐2份。\n早餐时间：07:00-10:30。\n温泉开放时间：09:00-24:00。\n大丰门开放时间：08:00-18:00。\n取票方式：酒店前台领取。', '/a92dd7a004f54eeeb4973a0d8daa3003/HOTEL-ICON/1447058224421.jpg', '2116656-12081415', '103060-1659388', '2015-12-01 11:37:27', '317.00', '0.00');
INSERT INTO `mc_ticket` VALUES ('3d337b90d5544e55b4bcb9a3b0a87099', null, '广州从化碧水湾温泉', '180万亩森林环其左右，80公里绿色走廊横亘南北，背倚飞鹅山，悠枕流溪河；国家AAAA级景区、世界珍稀苏打泉、中国最佳温泉酒店、亚运指定饭店----碧水湾温泉度假村。森林海，养生泉，亲情碧水湾，带上家人，赶紧去享受吧！', '/a69a807c5403498d84e2233629137429/TOPIC-CONTENT/1448604161292.png', null, null, null, null, null);

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
  PRIMARY KEY (`ticket_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket_detail
-- ----------------------------
INSERT INTO `mc_ticket_detail` VALUES ('1c99d7aca1ba4db8b7ce11a25af4e5a4', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '四季城', '四季城', 'SPOT', null, 'yes', 'no', '103060', '1659388', '2');
INSERT INTO `mc_ticket_detail` VALUES ('1c99d7aca1ba4db8b7ce11a25af4e5b4', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '广州香江健康山谷（原锦绣香江温泉城）', '豪华别墅双床房（双早双温泉-冬季养生套餐）', 'HOTEL', null, 'yes', 'yes', '2116656', '12081415', '1');
INSERT INTO `mc_ticket_detail` VALUES ('1c99d7aca1ba4db8b7ce11a25af4e5c4', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '早餐（1份）', '早餐（1份）', 'BREAKFAST', null, 'no', 'no', null, null, '1');

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
  PRIMARY KEY (`ticket_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_ticket_price
-- ----------------------------
INSERT INTO `mc_ticket_price` VALUES ('13ae407308af41f9ae24632cbad88d98', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '317.00', '0.00', '2015', '12', '13', '2015-12-01 18:35:47', '2015-12-13');
INSERT INTO `mc_ticket_price` VALUES ('34653946a5f24e61a19ea3521e3ce3e9', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '317.00', '0.00', '2015', '12', '20', '2015-12-01 18:35:47', '2015-12-20');
INSERT INTO `mc_ticket_price` VALUES ('3b7e00036ee542dc909bb9b722879c00', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '369.00', '0.00', '2015', '12', '19', '2015-12-01 18:35:47', '2015-12-19');
INSERT INTO `mc_ticket_price` VALUES ('4b002558d03343a18c872f607380d79c', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '317.00', '0.00', '2015', '12', '14', '2015-12-01 18:35:47', '2015-12-14');
INSERT INTO `mc_ticket_price` VALUES ('4e681c2a270b4c1b861c83d7e8b7da6f', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '22', '2015-12-01 18:35:47', '2015-12-22');
INSERT INTO `mc_ticket_price` VALUES ('634cebef4bdd48009e0bf6ec8a4283da', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '16', '2015-12-01 18:35:47', '2015-12-16');
INSERT INTO `mc_ticket_price` VALUES ('765d9c33e91c4a6c9808857a1975be76', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '317.00', '0.00', '2015', '12', '21', '2015-12-01 18:35:47', '2015-12-21');
INSERT INTO `mc_ticket_price` VALUES ('7fa17ebc44d442caaf7ad0c90f6a595b', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '17', '2015-12-01 18:35:47', '2015-12-17');
INSERT INTO `mc_ticket_price` VALUES ('8421b4767ada4d54adf99be1333570da', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '10', '2015-12-01 18:35:47', '2015-12-10');
INSERT INTO `mc_ticket_price` VALUES ('988d1aafb57c49659adcb4402c494e3b', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '23', '2015-12-01 18:35:47', '2015-12-23');
INSERT INTO `mc_ticket_price` VALUES ('b26363f4f85c462aa20287972d57d98e', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '11', '2015-12-01 18:35:47', '2015-12-11');
INSERT INTO `mc_ticket_price` VALUES ('ea1c8919a71340e88baacc0ea25c460c', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '15', '2015-12-01 18:35:47', '2015-12-15');
INSERT INTO `mc_ticket_price` VALUES ('fbd34abbb63e41d286e16da6aefd48cb', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '369.00', '0.00', '2015', '12', '12', '2015-12-01 18:35:47', '2015-12-12');
INSERT INTO `mc_ticket_price` VALUES ('fd5538e98e2d49bc93c5b6c09f7205f0', '1c99d7aca1ba4db8b7ce11a25af4e5e4', '351.00', '0.00', '2015', '12', '18', '2015-12-01 18:35:47', '2015-12-18');

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
INSERT INTO `mc_topic` VALUES ('174b708149684a1a85f299b2ec29b2d3', '冬日，我与温泉的亲密接触', '/a69a807c5403498d84e2233629137429/TOPIC-INDEX/1448603774203.jpg', '现代社会，对于生活在钢筋水泥中的都市人，承受着工作生活的双重压力，渴望一个放松身心、忘记烦恼的地方，可是去哪儿呢？不如，去风景优美的温泉度假村来上一“泡”，休闲养生两不误。这个秋冬，小编为您精心挑选了最具特色的天然温泉，快来跟温泉来场亲密的接触吧！', '2015-12-01 14:05:42', '7');

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
INSERT INTO `sys_user` VALUES ('566962dc3cf5479494be7e615b0f6af7', '7dd1a22f-ea3a-47ac-8408-8ea070ca6048', '13410240005', 'Y', '$apr1$87430853$G9HVxlUkOr/CqvVWfA/yK1', '杨晨', '2015-12-01 18:25:56', null, null, null, null, '8743085314708006104', '2015-11-24 16:51:57', null, 'simusco@163.com', 'M', '1989', '10', '13');
