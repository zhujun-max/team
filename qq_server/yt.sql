/*
Navicat MySQL Data Transfer

Source Server         : yt
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yt

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-24 10:47:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `yt_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yt_admin`;
CREATE TABLE `yt_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(50) DEFAULT NULL,
  `apwd` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_admin
-- ----------------------------
INSERT INTO `yt_admin` VALUES ('1', '', null);

-- ----------------------------
-- Table structure for `yt_business_info`
-- ----------------------------
DROP TABLE IF EXISTS `yt_business_info`;
CREATE TABLE `yt_business_info` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(50) DEFAULT NULL,
  `blogo` varchar(128) DEFAULT NULL,
  `pimg` varchar(128) DEFAULT NULL,
  `grade` decimal(10,2) DEFAULT NULL,
  `ctitle` varchar(64) DEFAULT NULL,
  `bdiscounts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_business_info
-- ----------------------------
INSERT INTO `yt_business_info` VALUES ('1', '海底捞（重庆江北店）', 'dianjia2.jpg', 'xx.png', '4.50', '重庆江北火锅人气第一名', '4000');
INSERT INTO `yt_business_info` VALUES ('2', '快乐小厨房（重庆渝北店）', 'dianjia1.jpg', 'xx.png', '4.20', '江湖家常菜', '3000');
INSERT INTO `yt_business_info` VALUES ('3', '吉祥馄饨（重庆渝北店）', 'dianjia5.jpg', 'xx.png', '4.30', '重庆馄饨人气第一名', '3500');

-- ----------------------------
-- Table structure for `yt_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `yt_carousel`;
CREATE TABLE `yt_carousel` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cimg` varchar(128) DEFAULT NULL,
  `cbj` varchar(24) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_carousel
-- ----------------------------
INSERT INTO `yt_carousel` VALUES ('1', '2020.png', 'ip1');
INSERT INTO `yt_carousel` VALUES ('2', 'shu.png', 'ip1');
INSERT INTO `yt_carousel` VALUES ('3', 'lun1.png', 'ip2');
INSERT INTO `yt_carousel` VALUES ('4', 'lun2.png', 'ip2');
INSERT INTO `yt_carousel` VALUES ('5', 'lun3.png', 'ip2');
INSERT INTO `yt_carousel` VALUES ('6', 'lun4.png', 'ip2');
INSERT INTO `yt_carousel` VALUES ('7', 'lun5.png', 'ip2');

-- ----------------------------
-- Table structure for `yt_cart_info`
-- ----------------------------
DROP TABLE IF EXISTS `yt_cart_info`;
CREATE TABLE `yt_cart_info` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cimg` varchar(128) DEFAULT NULL,
  `cweight` smallint(6) DEFAULT NULL,
  `cprice` decimal(8,2) DEFAULT NULL,
  `ctitle` varchar(64) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_cart_info
-- ----------------------------

-- ----------------------------
-- Table structure for `yt_login_user`
-- ----------------------------
DROP TABLE IF EXISTS `yt_login_user`;
CREATE TABLE `yt_login_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(128) DEFAULT NULL,
  `uvip` varchar(6) DEFAULT NULL,
  `ubusiness` varchar(6) DEFAULT NULL,
  `rfid` int(11) DEFAULT NULL,
  `timg` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_login_user
-- ----------------------------
INSERT INTO `yt_login_user` VALUES ('1', 'asdd', '37cc3687f0e0ca2268f12d0366e41dec', '0', null, null, 'touxiang.jpg');
INSERT INTO `yt_login_user` VALUES ('2', 'asdd1', '37cc3687f0e0ca2268f12d0366e41dec', '1', null, null, null);
INSERT INTO `yt_login_user` VALUES ('3', 'ding', '37cc3687f0e0ca2268f12d0366e41dec', '1', null, null, 'touxiang2.jpg');
INSERT INTO `yt_login_user` VALUES ('4', 'abbb', '33da55d46c946774429aeb4567a766c2', null, null, null, null);
INSERT INTO `yt_login_user` VALUES ('5', 'zxcv', '37cc3687f0e0ca2268f12d0366e41dec', null, null, null, null);

-- ----------------------------
-- Table structure for `yt_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `yt_order_info`;
CREATE TABLE `yt_order_info` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ologo` varchar(128) DEFAULT NULL,
  `otitle` varchar(50) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `oaddress` varchar(128) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_order_info
-- ----------------------------
INSERT INTO `yt_order_info` VALUES ('1', 'dianjia4.jpg', '海底捞重庆江北店', 'cai1.jpg,cai2.jpg,cai3.jpg,cai4.jpg,cai5.jpg,cai6.jpg,cai7.jpg,cai8.jpg,cai9.jpg,cai10.jpg', null, '236.96', '10', '1');
INSERT INTO `yt_order_info` VALUES ('2', 'dianjia4.jpg', '海底捞重庆江北店', 'cai1.jpg,cai2.jpg,cai3.jpg,cai4.jpg,cai5.jpg,cai6.jpg,cai7.jpg,cai8.jpg,cai9.jpg,cai10.jpg', null, '356.96', '20', '1');

-- ----------------------------
-- Table structure for `yt_pay_passwrod_info`
-- ----------------------------
DROP TABLE IF EXISTS `yt_pay_passwrod_info`;
CREATE TABLE `yt_pay_passwrod_info` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pupwd` varchar(50) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_pay_passwrod_info
-- ----------------------------

-- ----------------------------
-- Table structure for `yt_product_info`
-- ----------------------------
DROP TABLE IF EXISTS `yt_product_info`;
CREATE TABLE `yt_product_info` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pimg` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pname` varchar(64) DEFAULT NULL,
  `productCount` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `pweight` int(6) DEFAULT NULL,
  `restrictCount` int(4) DEFAULT NULL,
  `discount` decimal(6,2) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_product_info
-- ----------------------------
INSERT INTO `yt_product_info` VALUES ('1', 'hdl_fs.jpg', '粉丝', null, '9.90', '100', '499', '19.90', '10');
INSERT INTO `yt_product_info` VALUES ('2', 'hdl_hd.jpg', '海带', null, '8.90', '100', '389', '18.90', '10');
INSERT INTO `yt_product_info` VALUES ('3', 'hdl_hey.jpg', '耗儿鱼', null, '15.90', '50', '388', '25.50', '10');
INSERT INTO `yt_product_info` VALUES ('4', 'hdl_ht (2).jpg', '红汤', null, '35.00', null, '888', '60.00', '10');
INSERT INTO `yt_product_info` VALUES ('5', 'hdl_ht.jpg', '火腿', null, '10.90', '50', '555', '15.00', '10');
INSERT INTO `yt_product_info` VALUES ('6', 'hdl_jc.jpg', '鸡翅', null, '25.50', '50', '444', '50.00', '10');
INSERT INTO `yt_product_info` VALUES ('7', 'hdl_jt.jpg', '鸡腿', null, '30.00', '50', '333', '60.00', '10');
INSERT INTO `yt_product_info` VALUES ('8', 'hdl_jz.jpg', '鸡爪', null, '24.50', '50', '356', '40.00', '10');
INSERT INTO `yt_product_info` VALUES ('9', 'hdl_jzg.jpg', '金针菇', null, '9.80', '100', '365', '15.50', '10');
INSERT INTO `yt_product_info` VALUES ('10', 'hdl_kl.jpg', '可乐', null, '5.00', null, '265', '10.00', '10');
INSERT INTO `yt_product_info` VALUES ('11', 'hdl_lo.jpg', '藕片', null, '8.80', '100', '254', '15.60', '10');
INSERT INTO `yt_product_info` VALUES ('12', 'hdl_md.jpg', '毛肚', null, '25.90', '50', '654', '50.90', '10');
INSERT INTO `yt_product_info` VALUES ('13', 'hdl_me.jpg', '木耳', null, '8.80', '100', '258', '15.80', '10');
INSERT INTO `yt_product_info` VALUES ('14', 'hdl_mf.jpg', '米饭', null, '2.00', null, '222', '5.00', '10');
INSERT INTO `yt_product_info` VALUES ('15', 'hdl_pj.jpg', '啤酒', null, '10.00', null, '555', '20.00', '10');
INSERT INTO `yt_product_info` VALUES ('16', 'hdl_qt.jpg', '清汤', null, '35.00', null, '666', '60.00', '10');
INSERT INTO `yt_product_info` VALUES ('17', 'hdl_rj.jpg', '肉卷', null, '25.70', '50', '365', '50.00', '10');
INSERT INTO `yt_product_info` VALUES ('18', 'hdl_td.jpg', '土豆', null, '9.90', '100', '254', '15.50', '10');
INSERT INTO `yt_product_info` VALUES ('19', 'hdl_wlj.jpg', '王老吉', null, '5.00', null, '357', '10.00', '10');
INSERT INTO `yt_product_info` VALUES ('20', 'hdl_xc.jpg', '香肠', null, '12.50', '100', '256', '20.90', '10');
INSERT INTO `yt_product_info` VALUES ('21', 'hdl_xg.jpg', '香菇', null, '9.90', '100', '456', '19.90', '10');
INSERT INTO `yt_product_info` VALUES ('22', 'hdl_yx.jpg', '鸭血', null, '15.50', '50', '458', '30.90', '10');
INSERT INTO `yt_product_info` VALUES ('23', 'hdl_yy.jpg', '鸳鸯', null, '40.00', null, '555', '80.00', '10');
INSERT INTO `yt_product_info` VALUES ('24', 'hdl_yyz.jpg', '羊腰子', null, '40.00', '100', '459', '80.00', '10');
INSERT INTO `yt_product_info` VALUES ('25', 'hdl_zl.jpg', '蘸料', null, '5.00', null, '555', '10.00', '10');
INSERT INTO `yt_product_info` VALUES ('26', 'hdl_zs.jpg', '竹笋', null, '9.90', '100', '568', '20.50', '10');

-- ----------------------------
-- Table structure for `yt_reg_code`
-- ----------------------------
DROP TABLE IF EXISTS `yt_reg_code`;
CREATE TABLE `yt_reg_code` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(4) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_reg_code
-- ----------------------------
INSERT INTO `yt_reg_code` VALUES ('1', '7406');
INSERT INTO `yt_reg_code` VALUES ('2', '7640');
INSERT INTO `yt_reg_code` VALUES ('3', '7640');
INSERT INTO `yt_reg_code` VALUES ('4', '7640');
INSERT INTO `yt_reg_code` VALUES ('5', '7640');
INSERT INTO `yt_reg_code` VALUES ('6', '7640');
INSERT INTO `yt_reg_code` VALUES ('7', '7640');
INSERT INTO `yt_reg_code` VALUES ('8', '7640');
INSERT INTO `yt_reg_code` VALUES ('9', '7640');
INSERT INTO `yt_reg_code` VALUES ('10', '7640');
INSERT INTO `yt_reg_code` VALUES ('11', '7640');
INSERT INTO `yt_reg_code` VALUES ('12', '1825');
INSERT INTO `yt_reg_code` VALUES ('13', '1403');
INSERT INTO `yt_reg_code` VALUES ('14', '8531');
INSERT INTO `yt_reg_code` VALUES ('15', '1084');

-- ----------------------------
-- Table structure for `yt_reg_user`
-- ----------------------------
DROP TABLE IF EXISTS `yt_reg_user`;
CREATE TABLE `yt_reg_user` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) DEFAULT NULL,
  `rpwd` varchar(128) DEFAULT NULL,
  `remail` varchar(64) DEFAULT NULL,
  `rgender` varchar(24) DEFAULT NULL,
  `rphone` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `rtimg` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_reg_user
-- ----------------------------
INSERT INTO `yt_reg_user` VALUES ('1', 'asdd', 'Qw123456', null, null, '15803056323', null, null);
INSERT INTO `yt_reg_user` VALUES ('2', 'asdd1', 'Qw123456', null, null, '15806079653', null, null);
INSERT INTO `yt_reg_user` VALUES ('3', 'ding', 'Qw123456', null, null, '15803060729', null, null);
INSERT INTO `yt_reg_user` VALUES ('4', 'abbb', 'Zxc123456', null, null, '15978949963', null, null);
INSERT INTO `yt_reg_user` VALUES ('5', 'zxcv', 'Qw123456', null, null, '13635499897', null, null);

-- ----------------------------
-- Table structure for `yt_rmhd`
-- ----------------------------
DROP TABLE IF EXISTS `yt_rmhd`;
CREATE TABLE `yt_rmhd` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(128) DEFAULT NULL,
  `text1` varchar(50) DEFAULT NULL,
  `text2` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `tImg` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_rmhd
-- ----------------------------
INSERT INTO `yt_rmhd` VALUES ('1', 'active1.png', '#一句话总结2019#', '祝福各位幸福满满，家和万事兴', '353', 'text.png');
INSERT INTO `yt_rmhd` VALUES ('2', 'active2.png', '#一句话总结2019#', '年度总结大会', '454', 'text.png');

-- ----------------------------
-- Table structure for `yt_sqtc`
-- ----------------------------
DROP TABLE IF EXISTS `yt_sqtc`;
CREATE TABLE `yt_sqtc` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `titleImg` varchar(128) DEFAULT NULL,
  `ftitle` varchar(50) DEFAULT NULL,
  `hbImg` varchar(128) DEFAULT NULL,
  `zcText` varchar(50) DEFAULT NULL,
  `contentText` varchar(3000) DEFAULT NULL,
  `fxImg` varchar(128) DEFAULT NULL,
  `fbxq` varchar(50) DEFAULT NULL,
  `fbly` varchar(64) DEFAULT NULL,
  `plun` int(11) DEFAULT NULL,
  `pscGz` int(11) DEFAULT NULL,
  `plxiImg` varchar(128) DEFAULT NULL,
  `scGzImg` varchar(128) DEFAULT NULL,
  `fuid` int(11) DEFAULT NULL,
  `xgname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_sqtc
-- ----------------------------
INSERT INTO `yt_sqtc` VALUES ('1', 'touxiang.jpg', 'jerry', 'huiyuanH.png', '热门分享与推荐专场', '火锅是大多数人喜欢吃的食物，根据全年统计，火锅成为人们一年中最喜欢的食物。的确火锅不管是炎热的夏天还是寒冷的冬天都有很多人选择吃它。而且火锅在众多中国菜里吃饭独特，带来享受的不仅仅是美味还是一种乐趣。火锅也是我们传统中餐的一种，它拥有1900多年的历史，在我们饮食文化中占用很重要的作用。但对很多外国人而言，他们对中国火锅的了解并不是很多。其实火锅很简单，在一个沸腾的金属锅里放入汤，放在桌子中央煮，人们可以在里面入他们喜欢的所有食材。随心所欲地配合和吃你喜欢的东西，而且，还可以聊天、喝酒和与朋友和家人在一起其乐融融。', 'timg1.jpg,timg2.jpg,timg3.jpg', '发布于星期二', '来自重庆海底捞', '20', '100', 'xiaoxi.png', 'xin.png', null, null);
INSERT INTO `yt_sqtc` VALUES ('2', 'touxiang2.jpg', 'tom', 'huiyuanH.png', '热门分享与推荐专场', '火锅很多人喜欢吃，现在冬季了，吃火锅的越来越多，吃火锅的好处有很多，那么如何吃火锅更健康呢?火锅的涮食食材新鲜，方便快捷、各取所需、营养均衡;现场加热，现捞现食，煮熟后常温放置时间短，减少烹饪后微生物污染的几率。此外，涮、煮等烹饪方式能够更好地保留食物的营养，值得推荐。许多食客为了尝鲜，喜欢将肉片、生菜等稍微一涮就吃，这种吃法不可取。\r\n\r\n为保证去除生鲜食品中残留有病原微生物和寄生虫的危害，因此一定要将食材煮熟食用。\r\n\r\n食用火锅时切忌生食或食用没熟透的食料。一般来讲，薄肉片在沸腾的锅中烫1分钟左右，肉的颜色由鲜红色变为灰白才可以吃。刚从火锅中取出的鲜烫食物应放在碗内稍凉一下再吃，以免烫伤口腔、食道黏膜，造成溃疡或口腔起泡。', 'timg1.jpg,timg2.jpg,timg3.jpg', '发布于星期四', '来自重庆海底捞', '30', '199', 'xiaoxi.png', 'xin.png', null, null);

-- ----------------------------
-- Table structure for `yt_user_share`
-- ----------------------------
DROP TABLE IF EXISTS `yt_user_share`;
CREATE TABLE `yt_user_share` (
  `yid` int(11) NOT NULL AUTO_INCREMENT,
  `ytimg` varchar(128) DEFAULT NULL,
  `yname` varchar(50) DEFAULT NULL,
  `yvip` varchar(128) DEFAULT NULL,
  `yxImg1` varchar(128) DEFAULT NULL,
  `ytitle` varchar(50) DEFAULT NULL,
  `yintroduce` varchar(128) DEFAULT NULL,
  `fbImg` varchar(128) DEFAULT NULL,
  `fbTime` varchar(50) DEFAULT NULL,
  `fbly` varchar(64) DEFAULT NULL,
  `plcount` int(11) DEFAULT NULL,
  `scCount` int(11) DEFAULT NULL,
  `plImg` varchar(128) DEFAULT NULL,
  `scImg` varchar(128) DEFAULT NULL,
  `yuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`yid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_user_share
-- ----------------------------
INSERT INTO `yt_user_share` VALUES ('1', 'xiaomei.jpg', '小美~', 'huiyuanH.png', 'diandiandian.png', '客户分享专场', '我是小美', 'timg1.jpg,timg2.jpg,timg3.jpg', '12-20', '来自 重庆小美', '66', '99', 'xiaoxi.png', 'xin.png', null);
INSERT INTO `yt_user_share` VALUES ('2', 'yeye.jpg', '牛爷爷~', 'huiyuanH.png', 'diandiandian.png', '客户分享专场', '我是牛爷爷', 'hg1.png,hg2.png,hg3.png', '12-23', '来自 重庆牛爷爷', '45', '88', 'xiaoxi.png', 'xin.png', null);
INSERT INTO `yt_user_share` VALUES ('3', 'tutu.jpg', '图图~', 'huiyuanH.png', 'diandiandian.png', '客户分享专场', '我是图图', 'hg4.png,hg5.png,hg6.png', '12-21', '来自 重庆胡图图', '88', '199', 'xiaoxi.png', 'xin.png', null);
INSERT INTO `yt_user_share` VALUES ('4', 'baba.jpg', '图图的爸爸~', 'huiyuanH.png', 'diandiandian.png', '客户分享专场', '我是胡英俊', 'timg1.jpg,timg2.jpg,timg3.jpg', '12-22', '来自 重庆胡英俊', '99', '299', 'xiaoxi.png', 'xin.png', null);
INSERT INTO `yt_user_share` VALUES ('5', 'mama.jpg', '图图的妈妈~', 'huiyuanH.png', 'diandiandian.png', '客户分享专场', '我是张美丽', 'hg7.png,hg8.png,hg9.png', '12-24', '来自 重庆张美丽', '99', '399', 'xiaoxi.png', 'xin.png', null);
