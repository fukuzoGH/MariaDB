/*
Navicat MySQL Data Transfer

Source Server         : localhost(Maria10.4)
Source Server Version : 50505
Source Host           : localhost:13306
Source Database       : basic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-05-26 02:59:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `basic_artist`
-- ----------------------------
DROP TABLE IF EXISTS `basic_artist`;
CREATE TABLE `basic_artist` (
  `artist_id` char(5) NOT NULL COMMENT 'アーティストID',
  `name` varchar(40) NOT NULL COMMENT 'アーティスト名',
  `birthday` date DEFAULT NULL COMMENT '生年月日',
  `old` int(11) DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `index_artist` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='アーティスト';

-- ----------------------------
-- Records of basic_artist
-- ----------------------------
INSERT INTO `basic_artist` VALUES ('A0006', '赤木三郎', '1990-08-10', null);
INSERT INTO `basic_artist` VALUES ('H0004', 'HANAKO', '1991-03-15', null);
INSERT INTO `basic_artist` VALUES ('S0002', '鈴木恵子', '1980-10-05', null);
INSERT INTO `basic_artist` VALUES ('S0003', '佐藤和夫', '1988-02-10', null);
INSERT INTO `basic_artist` VALUES ('U0005', 'ウイングス', '1994-11-20', null);
INSERT INTO `basic_artist` VALUES ('Y0001', '山田太郎', '1975-12-01', null);

-- ----------------------------
-- Table structure for `basic_artist_cd`
-- ----------------------------
DROP TABLE IF EXISTS `basic_artist_cd`;
CREATE TABLE `basic_artist_cd` (
  `cd_id` char(9) NOT NULL DEFAULT '' COMMENT 'CDのID',
  `artist_id` char(5) NOT NULL DEFAULT '' COMMENT 'アーティストID',
  PRIMARY KEY (`cd_id`,`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='アーティストCD';

-- ----------------------------
-- Records of basic_artist_cd
-- ----------------------------
INSERT INTO `basic_artist_cd` VALUES ('jazz-0001', 'U0005');
INSERT INTO `basic_artist_cd` VALUES ('jazz-0002', 'U0005');
INSERT INTO `basic_artist_cd` VALUES ('jpop-0001', 'Y0001');
INSERT INTO `basic_artist_cd` VALUES ('jpop-0002', 'S0002');
INSERT INTO `basic_artist_cd` VALUES ('jpop-0003', 'Y0001');
INSERT INTO `basic_artist_cd` VALUES ('jpop-0004', 'S0003');
INSERT INTO `basic_artist_cd` VALUES ('pops-0001', 'H0004');
INSERT INTO `basic_artist_cd` VALUES ('pops-0002', 'H0004');

-- ----------------------------
-- Table structure for `basic_artist_copy`
-- ----------------------------
DROP TABLE IF EXISTS `basic_artist_copy`;
CREATE TABLE `basic_artist_copy` (
  `artist_id` char(5) NOT NULL COMMENT 'アーティストID',
  `name` varchar(40) NOT NULL COMMENT 'アーティスト名',
  `birthday` date DEFAULT NULL COMMENT '生年月日',
  `old` int(11) DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `index_artist` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='アーティスト';

-- ----------------------------
-- Records of basic_artist_copy
-- ----------------------------
INSERT INTO `basic_artist_copy` VALUES ('A0006', '赤木三郎', '1990-08-10', null);
INSERT INTO `basic_artist_copy` VALUES ('H0004', 'HANAKO', '1991-03-15', null);
INSERT INTO `basic_artist_copy` VALUES ('S0002', '鈴木恵子', '1980-10-05', null);
INSERT INTO `basic_artist_copy` VALUES ('S0003', '佐藤和夫', '1988-02-10', null);
INSERT INTO `basic_artist_copy` VALUES ('U0005', 'ウイングス', '1994-11-20', null);
INSERT INTO `basic_artist_copy` VALUES ('Y0001', '山田太郎', '1975-12-01', null);

-- ----------------------------
-- Table structure for `basic_author`
-- ----------------------------
DROP TABLE IF EXISTS `basic_author`;
CREATE TABLE `basic_author` (
  `author_id` char(5) NOT NULL DEFAULT '' COMMENT '著者ID',
  `name` varchar(40) DEFAULT NULL COMMENT '名前',
  `prize` varchar(100) DEFAULT NULL COMMENT '受賞名',
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='著者';

-- ----------------------------
-- Records of basic_author
-- ----------------------------
INSERT INTO `basic_author` VALUES ('MF003', '藤井茉莉', '新人賞');
INSERT INTO `basic_author` VALUES ('MT005', '高橋美穂', 'PCブック賞');
INSERT INTO `basic_author` VALUES ('NK002', '掛谷奈美', null);
INSERT INTO `basic_author` VALUES ('SS004', '佐藤正二', null);
INSERT INTO `basic_author` VALUES ('YY001', '山田祥寛', null);

-- ----------------------------
-- Table structure for `basic_book`
-- ----------------------------
DROP TABLE IF EXISTS `basic_book`;
CREATE TABLE `basic_book` (
  `isbn` char(13) NOT NULL COMMENT 'ISBN',
  `author_id` char(5) DEFAULT NULL COMMENT '著者ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'タイトル',
  `price` int(11) DEFAULT NULL COMMENT '価格',
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='本';

-- ----------------------------
-- Records of basic_book
-- ----------------------------
INSERT INTO `basic_book` VALUES ('4-7980-1270-X', 'AH005', 'PHP辞典 ', '2520');
INSERT INTO `basic_book` VALUES ('4-7981-1062-0', 'NK002', 'ASP.NET2.0入門教室 ', '2940');
INSERT INTO `basic_book` VALUES ('4-7981-1070-1', 'MF003', 'XMLデータベース入門 ', '3780');
INSERT INTO `basic_book` VALUES ('4-7981-1206-2', 'YY001', 'サーバサイドAjax入門', '2950');
INSERT INTO `basic_book` VALUES ('4-88337-491-2', 'TT004', 'SQLのドリル ', '2310');

-- ----------------------------
-- Table structure for `basic_book_history`
-- ----------------------------
DROP TABLE IF EXISTS `basic_book_history`;
CREATE TABLE `basic_book_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` char(13) DEFAULT NULL,
  `author_id` char(5) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of basic_book_history
-- ----------------------------
INSERT INTO `basic_book_history` VALUES ('1', '4-7981-1206-2', 'YY001', 'サーバサイドAjax入門', '2940', '2016-09-17 17:37:17');

-- ----------------------------
-- Table structure for `basic_calender_month`
-- ----------------------------
DROP TABLE IF EXISTS `basic_calender_month`;
CREATE TABLE `basic_calender_month` (
  `year_month` varchar(6) NOT NULL DEFAULT '' COMMENT '年月',
  `week` int(11) NOT NULL DEFAULT 0 COMMENT '週',
  `c01` varchar(2) NOT NULL DEFAULT '' COMMENT '月',
  `c02` varchar(2) NOT NULL DEFAULT '' COMMENT '火',
  `c03` varchar(2) NOT NULL DEFAULT '' COMMENT '水',
  `c04` varchar(2) NOT NULL DEFAULT '' COMMENT '木',
  `c05` varchar(2) NOT NULL DEFAULT '' COMMENT '金',
  `c06` varchar(2) NOT NULL DEFAULT '' COMMENT '土',
  `c07` varchar(2) NOT NULL DEFAULT '' COMMENT '日',
  `m01` varchar(16) NOT NULL DEFAULT '' COMMENT '月',
  `m02` varchar(16) NOT NULL DEFAULT '' COMMENT '火',
  `m03` varchar(16) NOT NULL DEFAULT '' COMMENT '水',
  `m04` varchar(16) NOT NULL DEFAULT '' COMMENT '木',
  `m05` varchar(16) NOT NULL DEFAULT '' COMMENT '金',
  `m06` varchar(16) NOT NULL DEFAULT '' COMMENT '土',
  `m07` varchar(16) NOT NULL DEFAULT '' COMMENT '日',
  PRIMARY KEY (`year_month`,`week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='カレンダー月';

-- ----------------------------
-- Records of basic_calender_month
-- ----------------------------
INSERT INTO `basic_calender_month` VALUES ('201912', '1', '1', '2', '3', '4', '5', '6', '7', '', '', '', '', '', '', '');
INSERT INTO `basic_calender_month` VALUES ('201912', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `basic_calender_month` VALUES ('201912', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `basic_calender_month` VALUES ('201912', '4', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `basic_calender_month` VALUES ('201912', '5', '29', '30', '31', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `basic_cd`
-- ----------------------------
DROP TABLE IF EXISTS `basic_cd`;
CREATE TABLE `basic_cd` (
  `cd_id` char(9) NOT NULL DEFAULT '' COMMENT 'CDのID',
  `title` varchar(255) DEFAULT NULL COMMENT 'タイトル',
  `used_price` int(11) DEFAULT NULL COMMENT '中古販売価格',
  `company` varchar(30) DEFAULT NULL COMMENT 'レコード会社',
  `record_date` date DEFAULT NULL COMMENT '発売日',
  `category_id` char(5) DEFAULT NULL COMMENT '分類ID',
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CD';

-- ----------------------------
-- Records of basic_cd
-- ----------------------------
INSERT INTO `basic_cd` VALUES ('jazz-0001', '赤色の小瓶 ', '250', 'WINGSジャパン', '2005-06-19', 'JJAZZ');
INSERT INTO `basic_cd` VALUES ('jazz-0002', 'ダイヤの首飾り ', '400', 'WINGSジャパン', '2005-05-24', 'JJAZZ');
INSERT INTO `basic_cd` VALUES ('jpop-0001', '花', '300', 'ヤマダミュージック', '2001-12-05', 'JPOPS');
INSERT INTO `basic_cd` VALUES ('jpop-0002', '旅立ち', '350', 'ヤマダミュージック', '2001-11-10', 'JPOPS');
INSERT INTO `basic_cd` VALUES ('jpop-0003', 'すし音頭', '300', 'ヤマダミュージック', '2002-02-07', 'JPOPS');
INSERT INTO `basic_cd` VALUES ('jpop-0004', '風のように', '350', 'NYプロモーション', '2002-05-14', 'JPOPS');
INSERT INTO `basic_cd` VALUES ('pops-0001', 'PEACE', '500', 'スターレコード', '2005-08-09', 'WPOPS');
INSERT INTO `basic_cd` VALUES ('pops-0002', 'WISH', '500', 'NYプロモーション', '2006-07-10', 'WPOPS');

-- ----------------------------
-- Table structure for `basic_class`
-- ----------------------------
DROP TABLE IF EXISTS `basic_class`;
CREATE TABLE `basic_class` (
  `class_id` char(5) NOT NULL DEFAULT '' COMMENT 'メニューID',
  `name` varchar(100) DEFAULT NULL COMMENT 'クラス名',
  `parent` char(5) DEFAULT NULL COMMENT '親クラス名(親クラスがない場合はNULL)',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='クラス';

-- ----------------------------
-- Records of basic_class
-- ----------------------------
INSERT INTO `basic_class` VALUES ('G0001', '外国語', '');
INSERT INTO `basic_class` VALUES ('G0002', '英語', 'G0001');
INSERT INTO `basic_class` VALUES ('G0003', '独語', 'G0001');
INSERT INTO `basic_class` VALUES ('G0004', '仏語', 'G0001');
INSERT INTO `basic_class` VALUES ('G0005', '英会話', 'G0002');
INSERT INTO `basic_class` VALUES ('G0006', '英文法', 'G0002');

-- ----------------------------
-- Table structure for `basic_days`
-- ----------------------------
DROP TABLE IF EXISTS `basic_days`;
CREATE TABLE `basic_days` (
  `c_date` date NOT NULL DEFAULT '1800-01-01' COMMENT '日付',
  `c_week_jpn` varchar(1) NOT NULL DEFAULT '' COMMENT '曜日',
  `c_holiday_jpn` varchar(30) NOT NULL DEFAULT '' COMMENT '祝日',
  `c_wather_summary_noon` varchar(255) NOT NULL DEFAULT '' COMMENT '天気概況(昼)',
  `c_wather_summary_night` varchar(255) NOT NULL DEFAULT '' COMMENT '天気概況(夜)',
  `c_average_temperature` int(11) NOT NULL DEFAULT -999 COMMENT '日平均気温',
  `c_highest_temperature` int(11) NOT NULL DEFAULT -999 COMMENT '日最高気温',
  `c_lowest_temperature` int(11) NOT NULL DEFAULT -999 COMMENT '日最低気温',
  PRIMARY KEY (`c_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日付(カレンダーなどによく使う)';

-- ----------------------------
-- Records of basic_days
-- ----------------------------
INSERT INTO `basic_days` VALUES ('2016-09-15', '木', '', '晴後薄曇', '曇', '-999', '-999', '-999');
INSERT INTO `basic_days` VALUES ('2016-09-16', '金', '', '曇後雨', '雨時々曇', '-999', '-999', '-999');
INSERT INTO `basic_days` VALUES ('2016-09-17', '土', '', '', '', '-999', '-999', '-999');
INSERT INTO `basic_days` VALUES ('2016-09-18', '日', '', '', '', '-999', '-999', '-999');

-- ----------------------------
-- Table structure for `basic_logo`
-- ----------------------------
DROP TABLE IF EXISTS `basic_logo`;
CREATE TABLE `basic_logo` (
  `logo_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ロゴID',
  `site_name` varchar(50) DEFAULT NULL COMMENT 'サイト名',
  `image` blob DEFAULT NULL COMMENT 'ロゴ画像',
  PRIMARY KEY (`logo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='ロゴ';

-- ----------------------------
-- Records of basic_logo
-- ----------------------------
INSERT INTO `basic_logo` VALUES ('1', 'WINGS', null);
INSERT INTO `basic_logo` VALUES ('2', 'WebDeli', null);

-- ----------------------------
-- Table structure for `basic_member`
-- ----------------------------
DROP TABLE IF EXISTS `basic_member`;
CREATE TABLE `basic_member` (
  `member_id` char(5) NOT NULL DEFAULT '' COMMENT '会員コード',
  `name` varchar(40) NOT NULL COMMENT '名前(氏名)',
  `name_kana` varchar(80) DEFAULT NULL COMMENT '名前(氏名カナ)',
  `sex` enum('男','女') DEFAULT NULL COMMENT '性別(男|女)',
  `passwd` blob DEFAULT NULL COMMENT 'パスワード(MD5ハッシュ)',
  `birthday` date DEFAULT NULL COMMENT '生年月日',
  `blood` enum('A','B','O','AB') DEFAULT NULL COMMENT '血液型(A|B|O|AB)',
  `address` varchar(100) DEFAULT NULL COMMENT '住所',
  `tel` varchar(20) DEFAULT NULL COMMENT '電話番号',
  `email` varchar(255) DEFAULT NULL COMMENT '電子メールアドレス',
  `card` tinyint(1) DEFAULT 0 COMMENT '会員カードを持っているか',
  `family` set('本人','祖父','祖母','父','母','兄','姉','弟','妹','配偶者','子ども','その他') DEFAULT '本人' COMMENT '家族構成(本人|祖父|祖母|父|母|兄|姉|弟|妹|その他)',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会員';

-- ----------------------------
-- Records of basic_member
-- ----------------------------
INSERT INTO `basic_member` VALUES ('K0001', '掛谷翔太', 'カケヤショウタ', '男', 0x3233646162313532336436623964326261643036373734653862363066653432, '1978-04-25', 'O', '千葉県東千葉市南町2-2-2', '03-1234-5680', 'kakeya@wings.msn.to', '0', '本人,祖母,父,母');
INSERT INTO `basic_member` VALUES ('K0002', '小林智子', 'コバヤシトモコ', '女', 0x6263656133363037373230366332343336666632653365336238333666366539, null, 'A', '東京都大阪市北町1-1-2', '03-1234-5680', 'koba@wings.msn.to', '1', '本人');
INSERT INTO `basic_member` VALUES ('K0003', '川崎隆二', 'カワサキリュウジ', '男', 0x6137653164323338333464363230646235333430323535383561313966636531, '1982-09-30', 'AB', '埼玉県西埼玉市寺町3-3-3', '048-234-5683', 'kawa@wings.msn.to', '1', '本人,配偶者,子ども,その他');
INSERT INTO `basic_member` VALUES ('O0001', '大田智子', 'オオタトモコ', '女', 0x3566303237666630323738323364363337633431306663376638643432393133, '1984-07-21', 'B', '神奈川県神奈川市北町3-3-2', '046-234-5682', 'ota@wings.msn.to', '0', '本人,父,母,兄,妹,その他');
INSERT INTO `basic_member` VALUES ('Y0001', '山田太郎', 'ヤマダタロウ', '男', 0x3533666563346364613230313830363232366334383532653436373865616130, '1980-11-10', 'A', '東京都東京市東町1-1-1', '03-1234-5678', 'taro@wings.msn.to', '0', '本人,配偶者,子ども');
INSERT INTO `basic_member` VALUES ('Y0002', '山田太郎', 'ヤマダタロウ', '男', 0x3164396136386330386561656334393237313733616635373638336630356439, '1981-05-05', 'O', '東京都北東京市南町3-3-3', '03-1234-5679', 'yama@wings.msn.to', '1', '本人');

-- ----------------------------
-- Table structure for `basic_mst_staff`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mst_staff`;
CREATE TABLE `basic_mst_staff` (
  `code` int(11) NOT NULL AUTO_INCREMENT COMMENT 'スタッフコード',
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT 'スタッフ名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT 'パスワード',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='スタッフ';

-- ----------------------------
-- Records of basic_mst_staff
-- ----------------------------
INSERT INTO `basic_mst_staff` VALUES ('1', '中村', '8b70dff01287be35a47fecb7aa790bd8');
INSERT INTO `basic_mst_staff` VALUES ('2', '松岡', '41569b6efdd63efeb4f520538497ea94');
INSERT INTO `basic_mst_staff` VALUES ('4', '小菅', 'f0de729e1bf960c7c79e2cf9e4a518e1');
INSERT INTO `basic_mst_staff` VALUES ('7', '堀田', '8c452fef1acbaeccd19d3099a3be3f50');
INSERT INTO `basic_mst_staff` VALUES ('8', '後藤', 'de94e676c0358eefea4794f03d6bda4f');

-- ----------------------------
-- Table structure for `basic_mt_customer`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mt_customer`;
CREATE TABLE `basic_mt_customer` (
  `del` int(11) NOT NULL DEFAULT 0,
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='顧客(個人・会社),得意先';

-- ----------------------------
-- Records of basic_mt_customer
-- ----------------------------
INSERT INTO `basic_mt_customer` VALUES ('0', '1', '1', '洗門館ふるかわ');
INSERT INTO `basic_mt_customer` VALUES ('0', '2', '2', '株式会社 ライフ流通');

-- ----------------------------
-- Table structure for `basic_mt_days_holiday`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mt_days_holiday`;
CREATE TABLE `basic_mt_days_holiday` (
  `c_date` date NOT NULL DEFAULT '1800-01-01' COMMENT '日付',
  `c_week_jpn` varchar(1) NOT NULL DEFAULT '' COMMENT '曜日',
  `c_week_eng` varchar(15) NOT NULL DEFAULT '',
  `c_week_eng_shout` varchar(10) NOT NULL DEFAULT '',
  `c_holiday_jpn` varchar(30) NOT NULL DEFAULT '' COMMENT '祝日',
  PRIMARY KEY (`c_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='祝日のみ';

-- ----------------------------
-- Records of basic_mt_days_holiday
-- ----------------------------
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-01-01', '', '', '', '元日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-01-12', '', '', '', '成人の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-02-11', '', '', '', '建国記念の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-03-21', '', '', '', '春分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-04-29', '', '', '', '昭和の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-05-03', '', '', '', '憲法記念日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-05-04', '', '', '', 'みどりの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-05-05', '', '', '', 'こどもの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-05-06', '', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-07-20', '', '', '', '海の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-09-21', '', '', '', '敬老の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-09-22', '', '', '', '国民の休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-09-23', '', '', '', '秋分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-10-12', '', '', '', '体育の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-11-03', '', '', '', '文化の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-11-23', '', '', '', '勤労感謝の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2015-12-23', '', '', '', '天皇誕生日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-01-01', '金', '', '', '元日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-01-11', '月', '', '', '成人の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-02-11', '木', '', '', '建国記念の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-03-20', '日', '', '', '春分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-03-21', '月', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-04-29', '金', '', '', '昭和の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-05-03', '火', '', '', '憲法記念日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-05-04', '水', '', '', 'みどりの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-05-05', '木', '', '', 'こどもの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-07-18', '月', '', '', '海の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-08-11', '木', '', '', '山の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-09-19', '月', '', '', '敬老の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-09-22', '木', '', '', '秋分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-10-10', '月', '', '', '体育の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-11-03', '木', '', '', '文化の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-11-23', '水', '', '', '勤労感謝の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2016-12-23', '金', '', '', '天皇誕生日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-01-01', '日', '', '', '元日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-01-02', '月', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-01-09', '月', '', '', '成人の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-02-11', '土', '', '', '建国記念の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-03-20', '月', '', '', '春分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-04-29', '土', '', '', '昭和の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-05-03', '水', '', '', '憲法記念日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-05-04', '木', '', '', 'みどりの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-05-05', '金', '', '', 'こどもの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-07-17', '月', '', '', '海の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-08-11', '金', '', '', '山の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-09-18', '月', '', '', '敬老の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-09-23', '土', '', '', '秋分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-10-09', '月', '', '', '体育の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-11-03', '金', '', '', '文化の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-11-23', '木', '', '', '勤労感謝の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2017-12-23', '土', '', '', '天皇誕生日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-01-01', '', '', '', '元日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-01-14', '', '', '', '成人の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-02-11', '', '', '', '建国記念の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-03-21', '', '', '', '春分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-04-29', '', '', '', '昭和の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-04-30', '', '', '', '休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-05-01', '', '', '', '即位の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-05-02', '', '', '', '休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-05-03', '', '', '', '憲法記念日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-05-04', '', '', '', 'みどりの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-05-05', '', '', '', 'こどもの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-05-06', '', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-07-15', '', '', '', '海の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-08-11', '', '', '', '山の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-08-12', '', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-09-16', '', '', '', '敬老の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-09-23', '', '', '', '秋分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-10-14', '', '', '', '体育の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-10-22', '', '', '', '即位礼正殿の儀');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-11-03', '', '', '', '文化の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-11-04', '', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2019-11-23', '', '', '', '勤労感謝の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-01-01', '', '', '', '元日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-01-13', '', '', '', '成人の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-02-11', '', '', '', '建国記念の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-02-23', '', '', '', '天皇誕生日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-02-24', '', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-03-20', '', '', '', '春分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-04-29', '', '', '', '昭和の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-05-03', '', '', '', '憲法記念日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-05-04', '', '', '', 'みどりの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-05-05', '', '', '', 'こどもの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-05-06', '', '', '', '振替休日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-07-23', '', '', '', '海の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-07-24', '', '', '', 'スポーツの日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-09-21', '', '', '', '敬老の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-09-22', '', '', '', '秋分の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-11-03', '', '', '', '文化の日');
INSERT INTO `basic_mt_days_holiday` VALUES ('2020-11-23', '', '', '', '勤労感謝の日');

-- ----------------------------
-- Table structure for `basic_mt_goods`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mt_goods`;
CREATE TABLE `basic_mt_goods` (
  `del` int(11) NOT NULL DEFAULT 0 COMMENT '削除',
  `id_goods` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `date_ins` datetime NOT NULL DEFAULT '1800-01-01 12:00:00' COMMENT '新規追加日',
  `date_upd` datetime NOT NULL DEFAULT '1800-01-01 12:00:00' COMMENT '更新日',
  `cd_goods` varchar(255) NOT NULL DEFAULT '' COMMENT '商品コード',
  `id_section1` int(50) NOT NULL DEFAULT 0 COMMENT '区分',
  `name_goods` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名',
  `id_unit` int(11) NOT NULL DEFAULT 0 COMMENT '単位',
  `unit_price_sale` int(11) NOT NULL DEFAULT 0 COMMENT '売上単価',
  `unit_price_purchase` int(11) NOT NULL DEFAULT 0 COMMENT '仕入単価',
  PRIMARY KEY (`id_goods`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='商品';

-- ----------------------------
-- Records of basic_mt_goods
-- ----------------------------
INSERT INTO `basic_mt_goods` VALUES ('0', '1', '2006-10-25 12:00:00', '2006-10-25 13:00:00', '0000001', '0', 'パソコン本体(ﾃﾞｽｸﾄｯﾌﾟﾐﾆﾀﾜｰ)', '0', '150000', '150000');
INSERT INTO `basic_mt_goods` VALUES ('-1', '2', '2006-10-25 12:00:00', '2006-10-25 13:00:00', '0000002', '0', 'Intel D945 DNT(マザー)', '0', '15800', '15800');
INSERT INTO `basic_mt_goods` VALUES ('0', '3', '2006-10-25 12:00:00', '2006-10-25 12:00:00', '0000003', '0', 'ノーブランドメモリ 1GB', '0', '13800', '13800');
INSERT INTO `basic_mt_goods` VALUES ('-1', '4', '2006-10-25 12:00:00', '2006-10-25 12:00:00', '0000004', '0', 'Prntium4 LGA775(CPU)', '0', '12000', '12000');
INSERT INTO `basic_mt_goods` VALUES ('-1', '5', '2006-10-25 12:00:00', '2006-10-25 12:00:00', '0000005', '0', 'オルテック モービルラック (ブラック)', '0', '3500', '3500');
INSERT INTO `basic_mt_goods` VALUES ('0', '6', '2006-10-25 12:00:00', '2006-10-25 12:00:00', '0000008', '0', '本体ケース', '0', '8000', '8000');

-- ----------------------------
-- Table structure for `basic_mt_goods_detail`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mt_goods_detail`;
CREATE TABLE `basic_mt_goods_detail` (
  `id_goods` int(11) NOT NULL COMMENT 'id',
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_view` int(11) NOT NULL DEFAULT 0 COMMENT '表示順',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='商品詳細';

-- ----------------------------
-- Records of basic_mt_goods_detail
-- ----------------------------
INSERT INTO `basic_mt_goods_detail` VALUES ('1', '1', '1');
INSERT INTO `basic_mt_goods_detail` VALUES ('1', '2', '2');

-- ----------------------------
-- Table structure for `basic_mt_goods_section1`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mt_goods_section1`;
CREATE TABLE `basic_mt_goods_section1` (
  `del` int(11) NOT NULL DEFAULT 0 COMMENT '削除',
  `view` int(11) DEFAULT 0,
  `id_section1` int(11) NOT NULL AUTO_INCREMENT COMMENT '区分',
  `name_section1` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名',
  PRIMARY KEY (`id_section1`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='商品区分';

-- ----------------------------
-- Records of basic_mt_goods_section1
-- ----------------------------
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '0', '1', 'パソコン本体');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '2', '2', 'マザーボード');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '3', '3', 'CD-ROM');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '4', '4', 'DVD');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '5', '5', '本体ケース');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '6', '6', 'モービルラック');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '7', '7', 'メモリ');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '8', '8', 'CPU');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '9', '9', 'グラフィックボード');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '10', '10', 'モデムボード');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '11', '11', 'モニタ');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '12', '12', 'スピーカ');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '13', '13', '電源ユニット');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '14', '14', 'キーボード');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '15', '15', 'ハードディスク');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '16', '16', '冷却ファン');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '17', '17', 'OS');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '18', '18', 'アプリケーション');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '19', '19', '人');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '20', '20', 'プリンタ');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '21', '21', 'キャプチャボード');
INSERT INTO `basic_mt_goods_section1` VALUES ('0', '1', '22', '-');

-- ----------------------------
-- Table structure for `basic_mt_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mt_supplier`;
CREATE TABLE `basic_mt_supplier` (
  `del` int(11) NOT NULL DEFAULT 0,
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='仕入先';

-- ----------------------------
-- Records of basic_mt_supplier
-- ----------------------------
INSERT INTO `basic_mt_supplier` VALUES ('-1', '1', '', '洗門館ふるかわ');
INSERT INTO `basic_mt_supplier` VALUES ('-1', '2', '', '株式会社 ライフ流通');
INSERT INTO `basic_mt_supplier` VALUES ('0', '3', '', 'パソコン工房');
INSERT INTO `basic_mt_supplier` VALUES ('0', '4', '', 'ヤマダ電機');
INSERT INTO `basic_mt_supplier` VALUES ('0', '5', '', 'エイデンオーキッドパーク');

-- ----------------------------
-- Table structure for `basic_mt_unit`
-- ----------------------------
DROP TABLE IF EXISTS `basic_mt_unit`;
CREATE TABLE `basic_mt_unit` (
  `del` int(11) NOT NULL DEFAULT 0,
  `section` varchar(20) NOT NULL DEFAULT '' COMMENT '区分',
  `view_unit` int(11) NOT NULL DEFAULT 0 COMMENT '表示順',
  `name_unit` varchar(50) NOT NULL DEFAULT '' COMMENT '単位名',
  `id_unit` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_unit`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='単位';

-- ----------------------------
-- Records of basic_mt_unit
-- ----------------------------
INSERT INTO `basic_mt_unit` VALUES ('0', '販売', '2', '個', '4');
INSERT INTO `basic_mt_unit` VALUES ('0', '販売', '3', '対', '5');
INSERT INTO `basic_mt_unit` VALUES ('0', '販売', '4', '台', '6');
INSERT INTO `basic_mt_unit` VALUES ('0', '販売', '5', '枚', '7');
INSERT INTO `basic_mt_unit` VALUES ('0', '販売', '6', '人', '8');
INSERT INTO `basic_mt_unit` VALUES ('0', '販売', '7', '件', '9');
INSERT INTO `basic_mt_unit` VALUES ('0', '販売', '1', '本', '14');

-- ----------------------------
-- Table structure for `basic_rental`
-- ----------------------------
DROP TABLE IF EXISTS `basic_rental`;
CREATE TABLE `basic_rental` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '貸し出しID',
  `member_id` char(7) DEFAULT NULL COMMENT '会員コード',
  `cd_id` char(9) DEFAULT NULL COMMENT 'CDのID',
  `rental_date` datetime DEFAULT NULL COMMENT '貸出日付',
  `returned` smallint(6) DEFAULT 0 COMMENT '返却済か(1:返却済|0:貸出中)デフォルト:0',
  PRIMARY KEY (`id`),
  KEY `cd_id` (`cd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='貸し出し';

-- ----------------------------
-- Records of basic_rental
-- ----------------------------
INSERT INTO `basic_rental` VALUES ('1', 'K0002', 'jpop-0001', '2006-04-28 11:11:12', '1');
INSERT INTO `basic_rental` VALUES ('2', 'K0002', 'jpop-0002', '2006-05-01 22:14:18', '1');
INSERT INTO `basic_rental` VALUES ('3', 'Y0001', 'jpop-0003', '2006-06-01 14:22:12', '1');
INSERT INTO `basic_rental` VALUES ('4', 'K0001', 'jpop-0004', '2006-07-01 17:14:17', '1');
INSERT INTO `basic_rental` VALUES ('5', 'K0002', 'pops-0001', '2006-07-13 16:17:25', '1');
INSERT INTO `basic_rental` VALUES ('6', 'O0001', 'pops-0002', '2006-08-17 20:28:39', '1');
INSERT INTO `basic_rental` VALUES ('7', 'K0002', 'jazz-0001', '2006-08-21 15:11:12', '1');
INSERT INTO `basic_rental` VALUES ('8', 'K0001', 'jpop-0001', '2006-08-31 20:14:18', '0');
INSERT INTO `basic_rental` VALUES ('9', 'O0001', 'jpop-0001', '2006-09-01 10:22:12', '0');
INSERT INTO `basic_rental` VALUES ('10', 'Y0001', 'jpop-0002', '2006-09-11 23:14:17', '0');

-- ----------------------------
-- Table structure for `basic_sql`
-- ----------------------------
DROP TABLE IF EXISTS `basic_sql`;
CREATE TABLE `basic_sql` (
  `id` int(11) NOT NULL,
  `sql` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='SQL テキスト';

-- ----------------------------
-- Records of basic_sql
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `basic_t_customer`;
CREATE TABLE `basic_t_customer` (
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_name` varchar(255) NOT NULL DEFAULT '' COMMENT '顧客名',
  `customer_sex` varchar(1) NOT NULL DEFAULT '女' COMMENT '性別',
  `customer_age` int(11) NOT NULL DEFAULT 999 COMMENT '年齢',
  `customer_birthday` varchar(10) NOT NULL DEFAULT '' COMMENT '生年月日',
  `customer_birthday2` varchar(5) NOT NULL DEFAULT '' COMMENT '生年月日(年と日のみ)',
  `post_code` varchar(8) NOT NULL DEFAULT '000-0000' COMMENT '郵便番号',
  `address1` varchar(255) NOT NULL DEFAULT '' COMMENT '都道府県',
  `address2` varchar(255) NOT NULL DEFAULT '' COMMENT '市区町村',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='テスト 顧客';

-- ----------------------------
-- Records of basic_t_customer
-- ----------------------------
INSERT INTO `basic_t_customer` VALUES ('0', '-', '女', '999', '', '', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('1', '織田信長', '男', '0', '1980-03-18', '03-18', '000-0000', '愛知県', '名古屋市');
INSERT INTO `basic_t_customer` VALUES ('2', '斉藤道三', '男', '0', '3999-12-31', '12-31', '000-0000', '岐阜県', '岐阜市');
INSERT INTO `basic_t_customer` VALUES ('3', '', '男', '0', '3999-12-31', '12-31', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('4', '', '男', '0', '3999-12-31', '12-31', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('5', '', '男', '0', '3999-12-31', '12-31', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('6', '', '男', '0', '3999-12-31', '12-31', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('7', '', '男', '0', '3999-12-31', '12-31', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('8', '', '男', '0', '3999-12-31', '12-31', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('9', '', '男', '0', '3999-12-31', '12-31', '000-0000', '', '');
INSERT INTO `basic_t_customer` VALUES ('10', '', '男', '0', '', '', '000-0000', '', '');

-- ----------------------------
-- Table structure for `basic_t_estimate`
-- ----------------------------
DROP TABLE IF EXISTS `basic_t_estimate`;
CREATE TABLE `basic_t_estimate` (
  `del` int(11) NOT NULL DEFAULT 0,
  `edit_lock` int(11) NOT NULL DEFAULT 0 COMMENT '編集ロック',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '見積ID',
  `no` varchar(50) NOT NULL DEFAULT '' COMMENT '見積No',
  `date` date NOT NULL DEFAULT '1800-01-01' COMMENT '見積日',
  `taxable_amount` int(11) NOT NULL DEFAULT 0 COMMENT '課税対象額',
  `total_amount` int(11) NOT NULL DEFAULT 0 COMMENT '合計金額(見積)',
  `memo1` varchar(255) NOT NULL DEFAULT '',
  `memo2` varchar(255) NOT NULL DEFAULT '',
  `memo3` varchar(255) NOT NULL DEFAULT '',
  `memo4` varchar(255) NOT NULL,
  `memo5` varchar(255) NOT NULL,
  `memo6` varchar(255) NOT NULL DEFAULT '',
  `memo7` varchar(255) NOT NULL DEFAULT '',
  `memo8` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='見積';

-- ----------------------------
-- Records of basic_t_estimate
-- ----------------------------
INSERT INTO `basic_t_estimate` VALUES ('0', '0', '1', '0611-0006', '2007-08-20', '236900', '236900', 'VTR用パソコン見積もりの件 キャプチャマシン', '仮見積もり', '8.31', '現金仮払い', '御社にて', '2007/09/20', '', '');

-- ----------------------------
-- Table structure for `basic_t_estimate_detail`
-- ----------------------------
DROP TABLE IF EXISTS `basic_t_estimate_detail`;
CREATE TABLE `basic_t_estimate_detail` (
  `del` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL DEFAULT 0,
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_goods` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='見積詳細';

-- ----------------------------
-- Records of basic_t_estimate_detail
-- ----------------------------
INSERT INTO `basic_t_estimate_detail` VALUES ('0', '1', '1', '0');

-- ----------------------------
-- Table structure for `basic_t_order`
-- ----------------------------
DROP TABLE IF EXISTS `basic_t_order`;
CREATE TABLE `basic_t_order` (
  `del` int(11) NOT NULL DEFAULT 0,
  `id_order` int(11) NOT NULL AUTO_INCREMENT COMMENT '受注ID',
  `no_order` varchar(50) NOT NULL DEFAULT '' COMMENT '受注No',
  `date_order` date NOT NULL DEFAULT '1800-01-01' COMMENT '受注日',
  `date_deadline` date NOT NULL DEFAULT '1800-01-01' COMMENT '締切日',
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='受注';

-- ----------------------------
-- Records of basic_t_order
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_t_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `basic_t_order_detail`;
CREATE TABLE `basic_t_order_detail` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='受注詳細';

-- ----------------------------
-- Records of basic_t_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_t_sale`
-- ----------------------------
DROP TABLE IF EXISTS `basic_t_sale`;
CREATE TABLE `basic_t_sale` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='売上';

-- ----------------------------
-- Records of basic_t_sale
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_t_sale_detail`
-- ----------------------------
DROP TABLE IF EXISTS `basic_t_sale_detail`;
CREATE TABLE `basic_t_sale_detail` (
  `id_detail` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='売上詳細';

-- ----------------------------
-- Records of basic_t_sale_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_ver`
-- ----------------------------
DROP TABLE IF EXISTS `basic_ver`;
CREATE TABLE `basic_ver` (
  `basic_ver` varchar(100) NOT NULL DEFAULT '',
  `basic_var_date` varchar(10) NOT NULL DEFAULT '' COMMENT '日付(2016-08-26)',
  `basic_var_description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`basic_ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='バージョン';

-- ----------------------------
-- Records of basic_ver
-- ----------------------------
INSERT INTO `basic_ver` VALUES ('1.0.0', '2016-08-26', '');
INSERT INTO `basic_ver` VALUES ('1.0.1', '2016-09-09', '');
INSERT INTO `basic_ver` VALUES ('1.0.2', '2016-09-14', '');
INSERT INTO `basic_ver` VALUES ('1.0.3', '2016-09-17', '');
INSERT INTO `basic_ver` VALUES ('1.0.4', '2018-03-20', '接頭辞の追加');

-- ----------------------------
-- Procedure structure for `basic_sp_agg_std`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_agg_std`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_agg_std`()
    COMMENT '(集計)標準偏差(STD)／分散(VARIANCE)／標本標準偏差(STDDEV_SAMP)／標本分散(VAR_SAMP)'
BEGIN

SELECT 
  `company`, 
  STD(`used_price`), 
  VARIANCE(`used_price`)
 FROM
  `basic_cd`
 GROUP BY `company`;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_basic_basic`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_basic_basic`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_basic_basic`(IN p INT)
    COMMENT '最初のストアドファンクションテスト'
BEGIN
--
-- 使い方
-- CALL sp_basic(80);
--
    SELECT goods_id, goods_name, goods_amount 
    FROM basic_goods 
    WHERE goods_amount > p;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_basic_call`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_basic_call`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_basic_call`()
    COMMENT 'ストアドプロシージャを実行(CALL)'
BEGIN
-- 
-- ストアドプロシージャを実行する
-- 
-- 一度に何度も実行可能
-- 
    CALL `basic_sp_basic_basic`('90');
    CALL `basic_sp_basic__start`();


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_basic__start`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_basic__start`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_basic__start`()
    COMMENT '最初のストアドファンクションテスト'
BEGIN
--
-- 使い方
-- CALL sp__start();
--
   SELECT VERSION() AS MYSQL_VER;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd`(IN mycompany VARCHAR(30) ,
    OUT result TEXT)
    COMMENT '(カーソル)カーソルを利用する'
BEGIN
-- 
-- (カーソル)カーソルを利用する
-- 
-- [目的]
--  指定されたレコード会社をキーに basic_cd テーブルを検索し、
--  ヒットしたレコード情報を新しい順に2件、カンマ区切りテキストとして取得
--
-- IN 'ヤマダミュージック' とか(mycompany)
--
    -- WHILEループの終了フラグ
    DECLARE flag BIT DEFAULT 0;

    -- レコードタイトルを一時的に保持する変数
    DECLARE tmp VARCHAR(255);

    -- カーソルを定義する
    DECLARE cur CURSOR FOR SELECT `title` FROM `basic_cd` 
        WHERE `company` = mycompany ORDER BY `record_date` DESC LIMIT 2;

    -- カーソルが最終行に達した場合(次の行が無い場合)に
    -- フラグをセット
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1;


    OPEN cur;
      SET result = '';

    -- フラグが　1　になるまでループを繰り返し
    WHILE flag !=1 DO

        -- カーソルの内容を変数 tmp にセット
        FETCH cur INTO tmp;

            -- フラグが 0 の場合のみ取得した値を連結
            IF flag !=1 THEN
                SET result = CONCAT_WS(',' ,result ,tmp);
            END IF;

    END WHILE;

    CLOSE cur;

    -- 先頭文字(カンマ文字)をカットしたものを返す
    SET result = SUBSTRING(result FROM 2);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd2`(IN mycompany VARCHAR(30))
    COMMENT '(分岐)(単純分岐)条件分岐を定義する'
BEGIN
-- 
-- (カーソル)条件分岐を定義する(単純分岐)
-- 
-- [目的]
--
-- (mycompany　IS NULL) OR 
  IF mycompany = '' THEN
    SELECT cd_id,title FROM basic_cd;
  ELSE
    SELECT cd_id,title FROM basic_cd 
       WHERE company = mycompany;
  END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd2_run`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd2_run`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd2_run`()
    COMMENT '(分岐)(単純分岐)条件分岐を定義する_実行'
BEGIN
-- 
-- sp_cd2 を実行してみる
-- 

CALL basic_sp_cd2('');

CALL basic_sp_cd2('ヤマダミュージック');

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd_case`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd_case`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd_case`(IN 
     mycategory INT)
    COMMENT '(分岐)(多岐分岐)条件分岐を定義する'
BEGIN
-- 
-- (分岐)(単純分岐)条件分岐を定義する
-- 
-- [目的]
--

  DECLARE tmp CHAR(5);

--
  CASE mycategory
    WHEN 1 THEN SET tmp='JPOPS';
    WHEN 2 THEN SET tmp='WPOPS';
    WHEN 3 THEN SET tmp='JJAZZ';
    ELSE SET tmp='JPOPS';
  END CASE;

--
  SELECT `cd_id`,`title` FROM `basic_cd` 
  WHERE `category_id` = tmp;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd_case2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd_case2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd_case2`(IN 
     mycategory INT)
    COMMENT '(分岐)(多岐分岐)条件分岐を定義する2'
BEGIN
-- 
-- (分岐)(単純分岐)条件分岐を定義する2
-- 
-- [目的]
--

  DECLARE tmp CHAR(5);

--
  CASE
    WHEN mycategory=1 THEN SET tmp='JPOPS';
    WHEN mycategory=2 THEN SET tmp='WPOPS';
    WHEN mycategory=3 THEN SET tmp='JJAZZ';
    ELSE SET tmp='JPOPS';
  END CASE;

--
  SELECT cd_id ,title FROM `basic_cd` 
      WHERE category_id = tmp;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd_case2_run`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd_case2_run`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd_case2_run`()
    COMMENT '(分岐)(多岐分岐)条件分岐を定義する2_実行'
BEGIN
-- 
-- 実行してみる
-- 

CALL `basic_sp_cd_case2`('1');


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd_case_run`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd_case_run`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd_case_run`()
    COMMENT '(分岐)(多岐分岐)条件分岐を定義する_実行'
BEGIN
-- 
-- 実行してみる
-- 

CALL `basic_sp_cd_case`('1');


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_cd_run`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_cd_run`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_cd_run`()
    COMMENT '(カーソル)カーソルを利用する_実行'
BEGIN
-- 
-- sp_cd を実行してみる
-- 

CALL `basic_sp_cd`('ヤマダミュージック',@ret);
SELECT @ret as `ret`;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_create_table_mst_staff`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_create_table_mst_staff`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_create_table_mst_staff`()
    COMMENT 'テーブル作成(basic_mst_staff)'
BEGIN
DROP TABLE IF EXISTS `basic_mst_staff`;
CREATE TABLE `basic_mst_staff` (
  `code` int(11) NOT NULL AUTO_INCREMENT COMMENT 'スタッフコード',
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT 'スタッフ名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT 'パスワード',
  PRIMARY KEY (`code`)
) COMMENT='スタッフ';

INSERT INTO `basic_mst_staff` VALUES ('1', '中村', 'nakamura');
INSERT INTO `basic_mst_staff` VALUES ('2', '松岡', 'matuoka');
INSERT INTO `basic_mst_staff` VALUES ('3', '伊藤', 'ito');

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_date`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_date`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_date`()
    COMMENT '(日付／時刻)_要素の取得'
BEGIN
-- ----------------------------------------------------------
-- 
-- (日付／時刻)_要素の取得
--
-- ----------------------------------------------------------

-- (結果01)
-- ANS...'2006-12-05'
-- 日付
SELECT DATE('2006-12-05 02:24:25');

-- (結果02)
-- ANS...'Tuesday'
-- 曜日名
SELECT DAYNAME('2006-12-05 02:24:25');

-- (結果03)
-- ANS...'5'
-- 日にち
SELECT DAYOFMONTH('2006-12-05 02:24:25');

-- (結果04)
-- ANS...'3'
-- 曜日インデックス(1:日曜～7:土曜)
SELECT DAYOFWEEK('2006-12-05 02:24:25');

-- (結果05)
-- ANS...'339'
-- 年間通算日(1～366)
SELECT DAYOFYEAR('2006-12-05 02:24:25');

-- (結果06)
-- ANS...'200612'
-- 特定の日付／時刻要素
SELECT EXTRACT(YEAR_MONTH FROM '2006-12-05 02:24:25');

-- (結果07)
-- ANS...'2'
-- 時間(0～23)
SELECT HOUR('2006-12-05 02:24:25');

-- (結果08)
-- ANS...'2006-12-31'
-- 月の最終日
SELECT LAST_DAY('2006-12-05 02:24:25');

-- (結果09)
-- ANS...'456789'
-- マイクロ秒(0～999999)
SELECT MICROSECOND('2006-12-05 02:24:25.0456789');

-- (結果10)
-- ANS...'24'
-- 分(0～59)
SELECT MINUTE('2006-12-05 02:24:25');

-- (結果11)
-- ANS...'12'
-- 月(1～12)
SELECT MONTH('2006-12-05 02:24:25');









END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_date2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_date2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_date2`()
    COMMENT '(日付／時刻)_要素の取得'
BEGIN
-- ----------------------------------------------------------
-- 
-- (日付／時刻)_要素の取得
--
-- ----------------------------------------------------------

-- (結果01)
-- ANS...'12'
-- 月(1～12)
SELECT MONTH('2006-12-05 02:24:25');

-- (結果02)
-- ANS...'December'
-- 月名
SELECT MONTHNAME('2006-12-05 02:24:25');

-- (結果03)
-- ANS...'4'
-- 四半期(1～4)
SELECT QUARTER('2006-12-05 02:24:25');

-- (結果04)
-- ANS...'25'
-- 秒(0～59)
SELECT SECOND('2006-12-05 02:24:25');

-- (結果05)
-- ANS...'02:24:25.045679'
-- 時刻
SELECT TIME('2006-12-05 02:24:25.0456789');

-- (結果06)
-- ANS...'48'
-- 週数(0～53)
-- WEEK(dat,[mode])
SELECT WEEK('2007-12-05 02:24:25' ,0);

-- (結果07)
-- ANS...'49'
-- 週数(0～53)
-- WEEK(dat,[mode])
SELECT WEEK('2007-12-05 02:24:25' ,1);

-- (結果08)
-- ANS...'48'
-- 週数(0～53)
-- WEEK(dat,[mode])
SELECT WEEK('2007-12-05 02:24:25' ,2);

-- (結果09)
-- ANS...'1(火曜)'
-- 曜日インデックス(0:月曜～6:日曜)
SELECT WEEKDAY('2006-12-05 02:24:25');

-- (結果10)
-- ANS...'49'
-- 週数(1～53)
SELECT WEEKOFYEAR('2006-12-05 02:24:25');

-- ■ 引数 mode の設定値(YEARWEEK関数/WEEK関数)
-- 
-- 設定値 | 週の開始 | 1週目の定義
-- -------------------------------------------------------------------
--    0   | 日曜     | その年の最初の週
--    1   | 月曜     | 4日以上の日を持つその年の最初の週
--    2   | 日曜     | その年に開始される最初の週
--    3   | 月曜     | 4日以上の日を持つその年の最初の週
--    4   | 日曜     | 4日以上の日を持つその年の最初の週
--    5   | 月曜     | その年の最初の週
--    6   | 日曜     | 4日以上の日を持つその年の最初の週
--    7   | 月曜     | その年の最初の週
--

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_date_add`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_date_add`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_date_add`()
    COMMENT '(日付／時刻)_指定日付の加算減算'
BEGIN
-- ----------------------------------------------------------
-- 
-- (日付／時刻)_指定日付の加算減算
--
-- ----------------------------------------------------------

-- (結果1)
-- ANS...'2006-05-04'
-- 日付の加算(30年と5ヵ月加算)
SELECT ADDDATE('1975-12-04' ,INTERVAL '30 5' YEAR_MONTH);

-- (結果2)
-- ANS...'1975-12-07'
-- 日付の加算(3日後)
SELECT ADDDATE('1975-12-04' ,3);

-- (結果3)
-- ANS...'2007-01-01 00:00:00'
-- 時刻の加算(1秒足す)
SELECT ADDTIME('2006-12-31 23:59:59' ,'00:00:01');

-- (結果4)
-- ANS...'2006-01-01 11:16:15'
-- 日付の加算(5分4秒足す)
SELECT DATE_ADD('2006-01-01 11:11:11',INTERVAL '5 4' HOUR_SECOND);

-- (結果5)
-- ANS...'2006-03-03 11:11:08.000002'
-- 日付の減算
SELECT DATE_SUB('2006-03-03 11:11:11.000001',INTERVAL '2.999999' SECOND_MICROSECOND);

-- (結果6)
-- ANS...'200612'
-- 月の加算(4ヵ月後の年月)
SELECT PERIOD_ADD(200608,4);

-- (結果7)
-- ANS...'1975-11-29'
-- 日付の減算(5日引く)
SELECT SUBDATE('1975-12-04',5);

-- (結果8)
-- ANS...'1975-08-26'
-- 日付の減算(100日引く)
SELECT SUBDATE('1975-12-04',INTERVAL 100 DAY);

-- (結果9)
-- ANS...'2006-12-31 12:48:49'
-- 時刻の減算(11時間11分11秒の減算)
SELECT SUBTIME('2007-01-01 00:00:00', '11:11:11');

-- (結果10)
-- ANS...'2007-01-02 06:30:30'
-- 日付の加算 (30時間30分30秒の加算)
SELECT TIMESTAMP('2007-01-01 00:00:00','30:30:30');



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_iterate`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_iterate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_iterate`()
    COMMENT '(ループ)ループを継続する_実行'
BEGIN

SELECT basic_sf_iterate(11);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_loop`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_loop`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_loop`()
    COMMENT '(ループ)シンプルなループ制御_実行'
BEGIN

SELECT basic_sf_loop('山田');

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_repeat`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_repeat`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_repeat`()
    COMMENT '(ループ)条件式に従ってループを繰り返す_実行'
BEGIN
 SELECT basic_sf_repeat(5);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_setting_chara`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_setting_chara`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_setting_chara`()
    COMMENT '(設定)文字コードの確認'
BEGIN
-- ----------------------------------------------------------
-- 
-- (設定)文字コードの確認
--
-- ----------------------------------------------------------

show variables like "chara%";

-- ----------------------------------------------------------
--
-- 結果が以下の様になるようにする(my.cnf or miy.ini にて)
--
-- ----------------------------------------
-- Variable_name            | Value
-- ----------------------------------------
-- character_set_client     | utf8mb4
-- character_set_connection | utf8mb4
-- character_set_database   | utf8mb4
-- character_set_filesystem | binary
-- character_set_results    | utf8mb4
-- character_set_server     | utf8mb4
-- character_set_system     | utf8
-- character_sets_dir       | (セットアップごとに違う)
-- ----------------------------------------
--
--
-- ----------------------------------------------------------
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_setting_innodb_barracuda`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_setting_innodb_barracuda`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_setting_innodb_barracuda`()
    COMMENT '(設定)InnoDBの設定の確認'
BEGIN
-- ----------------------------------------------------------
-- 
-- (設定)InnoDBの設定の確認
--
-- ----------------------------------------------------------

SHOW GLOBAL VARIABLES LIKE '%innodb_file_%';

-- ----------------------------------------------------------
--
-- 結果が以下の様になるようにする(my.cnf or miy.ini にて)
--
-- ----------------------------------------
-- Variable_name            | Value
-- ----------------------------------------
-- innodb_file_format       | Barracuda
-- innodb_file_format_check | On
-- innodb_file_format_max   | Barracuda
-- innodb_file_per_table    | ON
-- ----------------------------------------
--
--
-- ----------------------------------------------------------
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_sum_ceiling`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_sum_ceiling`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_sum_ceiling`()
    COMMENT '(数値)少数を丸める -- 切上げ(CEILING)／切捨て(FLOOR)／丸め(ROUND)／丸め(TRUNCATE)'
BEGIN

-- (01)
-- ans..'5'
SELECT CEILING(4.56);

-- (02)
-- ans..'4'
SELECT FLOOR(4.56);

-- (03)
-- ans..'5'
SELECT ROUND(4.56);

-- (04)
-- ans..'-4'
SELECT CEILING(-4.56);

-- (05)
-- ans..'-5'
SELECT FLOOR(-4.56);

-- (06)
-- ans..'-5'
SELECT ROUND(-4.56);

-- (07)
-- ans..'4.5'
SELECT ROUND(4.54,1);

-- (08)
-- ans..'4.5'
SELECT TRUNCATE(4.54,1);

-- (09)
-- ans..'4.6'
SELECT ROUND(4.56,1);

-- (10)
-- ans..'4.5'
SELECT TRUNCATE(4.56,1);

-- (11)
-- ans..'110'
SELECT TRUNCATE(111,-1);

-- (12)
-- ans..'100'
SELECT TRUNCATE(111,-2);


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `basic_sp_while`
-- ----------------------------
DROP PROCEDURE IF EXISTS `basic_sp_while`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `basic_sp_while`()
    COMMENT '(ループ)条件式に従ってループを繰り返す2_実行'
BEGIN
 SELECT basic_sf_while(5);

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_agg_avg`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_agg_avg`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_agg_avg`() RETURNS int(11)
    COMMENT '(集計)平均値(AVG)'
BEGIN
	-- レコード数をカウントして返す
	DECLARE w_avg INT;
	SET w_avg = (SELECT AVG(used_price) FROM basic_cd);
    RETURN w_avg;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_agg_count`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_agg_count`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_agg_count`() RETURNS int(11)
    COMMENT '(集計)レコード数をカウント(COUNT)'
BEGIN
	-- レコード数をカウントして返す
	DECLARE cnt INT;
	SET cnt = (SELECT COUNT(*) FROM basic_t_test);
    RETURN cnt;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_agg_max`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_agg_max`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_agg_max`() RETURNS int(11)
    COMMENT '(集計)最大値(MAX)'
BEGIN
	-- 
	DECLARE w_max INT;
	SET w_max = (SELECT MAX(used_price) FROM basic_cd);
    RETURN w_max;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_agg_min`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_agg_min`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_agg_min`() RETURNS int(11)
    COMMENT '(集計)最小値(MIN)'
BEGIN
	-- 
	DECLARE w_min INT;
	SET w_min = (SELECT MIN(used_price) FROM basic_cd);
    RETURN w_min;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_agg_sum`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_agg_sum`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_agg_sum`() RETURNS int(11)
    COMMENT '(集計)合計(SUM)'
BEGIN
	-- レコード数をカウントして返す
	DECLARE w_sum INT;
	SET w_sum = (SELECT SUM(used_price) FROM basic_cd);
    RETURN w_sum;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_basic`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_basic`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_basic`() RETURNS date
    COMMENT '最初のストアドファンクションテスト'
BEGIN
-- 現在の日付を返す
    RETURN CURDATE();
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_curdate`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_curdate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_curdate`() RETURNS date
    COMMENT '(日付／時刻)現在の日付を返す(CURDATE)'
BEGIN
-- 現在の日付を返す
    RETURN CURDATE();
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_date5after`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_date5after`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_date5after`() RETURNS date
    COMMENT '(日付／時刻)現在の5日後の日付を返す(ADDDATE)'
BEGIN
-- 5日後の日付を返す
	DECLARE n DATE;
	DECLARE n5 DATE;

	SET n = CURDATE();
	SET n5 = (SELECT ADDDATE(n, 5));

  RETURN n5;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_current_first`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_current_first`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_current_first`() RETURNS date
    COMMENT '(日付／時刻)当月月初を返す(CURDATE)'
BEGIN
-- 
-- 当月月初を返す
-- 
    RETURN DATE_FORMAT( CURDATE() , '%Y-%m-01' );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_current_last`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_current_last`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_current_last`() RETURNS date
    COMMENT '(日付／時刻)当月月末を返す(LAST_DAY)'
BEGIN
-- 
-- 当月月末を返す
-- 
    RETURN LAST_DAY( CURDATE() );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_designation_first`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_designation_first`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_designation_first`(d DATE) RETURNS date
    COMMENT '(日付／時刻)指定月の月初を返す(DATE_FORMAT)'
BEGIN
-- 
-- 指定月の月初を返す
--  d = '2016-08-25' --> ''2016-08-01''
-- 
    RETURN DATE_FORMAT( d , '%Y-%m-01' );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_designation_last`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_designation_last`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_designation_last`(d DATE) RETURNS date
    COMMENT '(日付／時刻)指定月の月末を返す(LAST_DAY)'
BEGIN
-- 
-- 指定月の月末を返す
--  d = '2016-08-25' --> ''2016-08-31''
-- 
    RETURN LAST_DAY( d );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_next_first`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_next_first`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_next_first`() RETURNS date
    COMMENT '(日付／時刻)次月月初を返す(ADDDATE)'
BEGIN
-- 
-- 次月月初を返す
-- 
    RETURN DATE_FORMAT( ADDDATE( CURDATE() , INTERVAL 1 MONTH) , '%Y-%m-01' );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_next_last`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_next_last`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_next_last`() RETURNS date
    COMMENT '(日付／時刻)次月月末を返す(ADDDATE)'
BEGIN
-- 
-- 次月月末を返す
-- 
    RETURN LAST_DAY( ADDDATE( CURDATE() , INTERVAL 1 MONTH) );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_previous_first`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_previous_first`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_previous_first`() RETURNS date
    COMMENT '(日付／時刻)前月月初を返す(ADDDATE)'
BEGIN
-- 
-- 前月月初を返す
-- 
    RETURN DATE_FORMAT( ADDDATE( CURDATE() , INTERVAL -1 MONTH) , '%Y-%m-01' );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_month_previous_last`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_month_previous_last`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_month_previous_last`() RETURNS date
    COMMENT '(日付／時刻)前月月末を返す(ADDDATE)'
BEGIN
-- 
-- 前月月末を返す
-- 
    RETURN LAST_DAY( ADDDATE( CURDATE() , INTERVAL -1 MONTH) );
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_utc_date`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_utc_date`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_utc_date`() RETURNS date
    COMMENT '(日付／時刻)現在の日付を返す(UTC_DATE)'
BEGIN
##現在の日付を返す
## UTC(協定世界時刻) 日付
    RETURN UTC_DATE();
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_date_utc_date2`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_date_utc_date2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_date_utc_date2`() RETURNS date
    COMMENT '(日付／時刻)現在の日付を返す(UTC_DATE)'
BEGIN
-- 現在の日付を返す
-- UTC(協定世界時刻) 日付から、5日後を返す
    RETURN UTC_DATE() + 5;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_iterate`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_iterate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_iterate`(seed INT) RETURNS int(11)
    COMMENT '(ループ)ループを継続する'
BEGIN
#1 ～seedまでの偶数値の合計を返すストアドファンクション
  DECLARE cnt INT DEFAULT 0;
  DECLARE result INT DEFAULT 0;

  lbl : WHILE cnt < seed DO

    SET cnt = cnt + 1;

    IF cnt % 2 THEN

      -- 奇数値の場合はループ内の処理をスキップ
      ITERATE lbl;

    ELSE
      -- 偶数値の場合のみ加算処理
      SET result = result + cnt;

    END IF;

  END WHILE lbl;

  RETURN result;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_loop`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_loop`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_loop`(seed VARCHAR(5)) RETURNS varchar(255) CHARSET utf8mb4
    COMMENT '(ループ)シンプルなループ制御をおこなう'
BEGIN
  DECLARE cnt INT DEFAULT 0;

-- seed は、結果を格納する
  DECLARE result VARCHAR(255) DEFAULT seed;

  lbl : LOOP

    SET cnt = cnt + 1;

    IF cnt >= 5 THEN

      -- 5回以上のループを脱出
      LEAVE lbl;

    ELSE
      -- 5未満の場合、文字列を連結する
      SET result = CONCAT_WS('' , result , seed );

    END IF;

  END LOOP lbl;

  RETURN result;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_other_database`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_other_database`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_other_database`() RETURNS varchar(255) CHARSET utf8mb4
    COMMENT '(その他)現在のデータベース名の取得(DATABASE)'
BEGIN
##現在のデータベース名を返す
    RETURN DATABASE();
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_regexp_is_num`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_regexp_is_num`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_regexp_is_num`(str VARCHAR(255)) RETURNS bit(1)
    COMMENT '(正規表現)数字か？(True|False)'
BEGIN
-- 
-- 数字か
--  '50q' --> 0 : False
--  '50'  --> 1 : True
--  '0050'--> 1 : True
-- 
    RETURN (SELECT str REGEXP '^[0-9]+$');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_regexp_is_post_num`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_regexp_is_post_num`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_regexp_is_post_num`(str VARCHAR(255)) RETURNS bit(1)
    COMMENT '(正規表現)郵便番号か？(True|False)'
BEGIN
-- 
-- 郵便番号か
--  '501-6135' --> 1 : True
--  '5016135'  --> 0 : False
--
    RETURN (SELECT str REGEXP '^[0-9]{3}\-[0-9]{4}$');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_repeat`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_repeat`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_repeat`(seed INT) RETURNS int(11)
    COMMENT '(ループ)条件式に従ってループを繰り返す'
BEGIN

-- 1～seedまでの合計値を算出する

  DECLARE cnt INT DEFAULT 0;
  DECLARE result INT DEFAULT 0;

  lbl : REPEAT

    SET result = cnt + 1;
    SET cnt = cnt + 1;

  UNTIL cnt > seed END REPEAT lbl;

  RETURN result;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_string_left`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_string_left`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_string_left`() RETURNS varchar(200) CHARSET utf8mb4
    COMMENT '(文字列)部分文字列の取得_左端(LEFT)'
BEGIN
##
## 左から5文字分、返す
## 
    RETURN LEFT('ABCDEFGHIJK',5);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_string_space_cut`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_string_space_cut`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_string_space_cut`() RETURNS varchar(200) CHARSET utf8mb4
    COMMENT '(文字列)スペースを削る 両側(TRIM)'
BEGIN
-- 
-- 左から5文字分、返す
-- 
    RETURN TRIM(' ABCDEFGHIJK ');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_string_space_cut2`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_string_space_cut2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_string_space_cut2`() RETURNS varchar(200) CHARSET utf8mb4
    COMMENT '(文字列)スペースを削る(LTRIM)'
BEGIN
-- 
-- 左側のスペースを削る
-- 
    RETURN LTRIM(' ABCDEFGHIJK ');
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_trapezoid`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_trapezoid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_trapezoid`(up INT ,down INT ,height INT) RETURNS int(11)
    COMMENT '(その他)台形の面積を求める'
BEGIN
--
-- 台形の面積を求める sf_trapezoid
--
--
--   使い方
--   SELECT `sf_trapezoid`(10 ,20 ,5);
--
    DECLARE result INT;

    SET result = ( up + down ) * height / 2;
    RETURN result;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `basic_sf_while`
-- ----------------------------
DROP FUNCTION IF EXISTS `basic_sf_while`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `basic_sf_while`(seed INT) RETURNS int(11)
    COMMENT '(ループ)条件式に従ってループを繰り返す2'
BEGIN

-- 1～seedまでの合計値を算出する

  DECLARE cnt INT DEFAULT 0;
  DECLARE result INT DEFAULT 0;

-- 継続条件
  lbl : WHILE cnt <= seed DO

    SET result = result + cnt;
    SET cnt = cnt + 1;

  END WHILE lbl;

  RETURN result;

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tr_basic`;
DELIMITER ;;
CREATE TRIGGER `tr_basic` BEFORE UPDATE ON `basic_book` FOR EACH ROW BEGIN

  INSERT INTO book_history
      (isbn,author_id,title,price,updated)
    VALUES
       (OLD.isbn,OLD.author_id,OLD.title,OLD.price,NOW());

END
;;
DELIMITER ;
