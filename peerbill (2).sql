-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-17 10:43:32
-- 服务器版本： 5.6.17
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `peerbill`
--

-- --------------------------------------------------------

--
-- 表的结构 `quan_ad`
--

CREATE TABLE IF NOT EXISTS `quan_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0图片,1文字,2视频,3.flash',
  `ad_code` varchar(255) NOT NULL COMMENT '广告图片等资源url',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '广告是否显示',
  `city_id` int(10) NOT NULL,
  `sort_order` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`is_show`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `quan_ad`
--

INSERT INTO `quan_ad` (`ad_id`, `position_id`, `ad_name`, `ad_link`, `ad_type`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `is_show`, `city_id`, `sort_order`) VALUES
(26, 8, 'dsaf3', '', 0, 'http://oi9szgin6.bkt.clouddn.com/admin/1/ad/0/gallery/TB2Cv9FXam5V1BjSspoXXa8VXXa_%21%21491564172.jpg', 0, 0, '', '', '', 0, 0, 0, 0),
(25, 9, '发起项目头部_1', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/25/f190237d3ab80efe25d06b5055987d4b', 0, 0, '', '', '', 0, 1, 0, 0),
(24, 7, '首页轮播_5', '', 0, 'http://oi9szgin6.bkt.clouddn.com/admin/1/ad/24/gallery/372fba3424d194a4e3b44343b4e8d964', 0, 0, '', '', '', 0, 0, 0, 0),
(19, 7, '首页轮播_1', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/19/05d6ba84abe7259b08592dbeb8af49fc', -28800, -28800, '', '', '', 0, 1, 0, 0),
(20, 7, '首页轮播_2', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/20/da3b7e4727378a6404915dbf225bb59e', -28800, -28800, '', '', '', 0, 0, 0, 0),
(22, 7, '首页轮播_3', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/22/eed232c2cdb810a002e48cb14b1a4fab', 0, 0, '', '', '', 0, 0, 0, 0),
(23, 7, '首页轮播_4', '', 0, 'http://oi9szgin6.bkt.clouddn.com/admin/1/ad/23/gallery/e51a4002ec99ed3da4c9b96e17e544cd', 0, 0, '', '', '', 0, 0, 0, 0),
(27, 12, '首页轮播_6', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/27/55becc95ba0cf9a3df36d5c8db80822f', 0, 0, '', '', '', 0, 1, 0, 0),
(28, 8, '大师傅', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/28/b17c52c8386fff4e9a65fff56c12a67d', 0, 0, '', '', '', 0, 0, 0, 0),
(29, 15, '项目列表头部广告_1', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/29/a46c61bf3150c4d15ad12cbfead2ea62', 0, 0, '', '', '', 0, 1, 0, 0),
(30, 16, '项目详情顶部广告_1', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/30/dcaf092ee29adc27940d4afa606b627f', 0, 0, '', '', '', 0, 1, 0, 0),
(31, 8, '文章列表头部广告_1', '', 0, 'http://or85ryudu.bkt.clouddn.com/admin/1/ad/gallery/31/8ea76319ac95175fbbb394e50a468a44', 0, 0, '', '', '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_admin`
--

CREATE TABLE IF NOT EXISTS `quan_admin` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` mediumint(9) NOT NULL COMMENT '角色id',
  `nick_name` varchar(50) NOT NULL COMMENT '昵称',
  `user_name` varchar(50) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `salt` varchar(10) NOT NULL COMMENT '密码加密字段',
  `sex` tinyint(4) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `qq` varchar(15) NOT NULL COMMENT 'qq号',
  `email` varchar(30) NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `credit_line` decimal(10,2) NOT NULL COMMENT '信用额度',
  `pay_points` int(10) unsigned NOT NULL COMMENT '消费积分',
  `rank_points` int(11) unsigned NOT NULL COMMENT '用户等级积分',
  `address_id` int(11) unsigned NOT NULL COMMENT '用户默认收货地址',
  `reg_time` int(10) unsigned NOT NULL COMMENT '注册时间',
  `last_login` int(10) unsigned NOT NULL COMMENT '最后登录时间',
  `visit_count` int(10) unsigned NOT NULL COMMENT '登录次数',
  `login_fail` tinyint(3) unsigned NOT NULL COMMENT '连续登录失败次数',
  `age` tinyint(3) unsigned NOT NULL COMMENT '年龄',
  `birthday` int(10) NOT NULL COMMENT '用户生日',
  `recommend_id` int(10) unsigned NOT NULL COMMENT '推荐者id',
  `wx_open_id` varchar(32) NOT NULL,
  `qq_open_id` varchar(32) NOT NULL COMMENT 'qq登录用户open_id',
  `wx_name` varchar(50) NOT NULL COMMENT '微信昵称',
  `qq_name` varchar(50) NOT NULL COMMENT 'qq昵称',
  `lng` decimal(10,7) NOT NULL COMMENT '经度',
  `lat` decimal(10,7) NOT NULL COMMENT '纬度',
  `is_subscribe` tinyint(4) NOT NULL COMMENT '是否关注',
  `header_url` varchar(150) NOT NULL COMMENT '用户头像',
  `wx_header_url` varchar(255) NOT NULL,
  `qq_header_url` varchar(200) NOT NULL COMMENT 'qq头像url',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `quan_admin`
--

INSERT INTO `quan_admin` (`admin_id`, `role_id`, `nick_name`, `user_name`, `passwd`, `salt`, `sex`, `mobile`, `qq`, `email`, `user_money`, `frozen_money`, `credit_line`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `visit_count`, `login_fail`, `age`, `birthday`, `recommend_id`, `wx_open_id`, `qq_open_id`, `wx_name`, `qq_name`, `lng`, `lat`, `is_subscribe`, `header_url`, `wx_header_url`, `qq_header_url`) VALUES
(1, 6, ' 姜耶', 'admin', '3e89f6307701559a5c5befe35f147d12', '324839531', 0, '0', '', '222@qq.com', '0.00', '0.00', '0.00', 0, 0, 0, 0, 1503822115, 0, 0, 0, 19891212, 0, '', '', '', '', '0.0000000', '0.0000000', 0, '', '', ''),
(3, 0, '', 'admin2', 'e3588d67ef08ce7a21c3cc25b064d0a0', '840241427', 0, '0', '', '', '0.00', '0.00', '0.00', 0, 0, 0, 1484806131, 1484811513, 0, 0, 0, 0, 0, '', '', '', '', '0.0000000', '0.0000000', 0, '', '', ''),
(4, 0, '', 'admin3', '5ebac9440011cb24904ca0b92de4ab81', '76735068', 0, '0', '', '', '0.00', '0.00', '0.00', 0, 0, 0, 1484809466, 1484809466, 0, 0, 0, 0, 0, '', '', '', '', '0.0000000', '0.0000000', 0, '', '', ''),
(5, 0, '', 'admin5', '9db597218da11f01bc17775e203869f8', '297798935', 0, '0', '', '', '0.00', '0.00', '0.00', 0, 0, 0, 1484812492, 1484812492, 0, 0, 0, 0, 0, '', '', '', '', '0.0000000', '0.0000000', 0, '', '', ''),
(10, 9, '', 'admin123568', 'c36d04f7979fe7e7e285adb375c92b3d', '187360216', 0, '0', '', '2@qq.com', '0.00', '0.00', '0.00', 0, 0, 0, 1485076505, 1485076505, 0, 0, 0, 0, 0, '', '', '', '', '0.0000000', '0.0000000', 0, '', '', ''),
(7, 0, '', 'admin7', '1f93ae3faa01090ade5552862d931525', '265651984', 0, '0', '', '5552@qq.com', '0.00', '0.00', '0.00', 0, 0, 0, 1484812510, 1485049109, 0, 0, 0, 0, 0, '', '', '', '', '0.0000000', '0.0000000', 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_admin_log`
--

CREATE TABLE IF NOT EXISTS `quan_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_c_a` varchar(30) NOT NULL COMMENT '执行的模型_控制器_方法',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=780 ;

--
-- 转存表中的数据 `quan_admin_log`
--

INSERT INTO `quan_admin_log` (`log_id`, `log_time`, `admin_id`, `m_c_a`, `log_info`, `ip`) VALUES
(88, 1486368303, 1, 'admin/Goodscat/edit_pro', '11', '127.0.0.1'),
(87, 1486368290, 1, 'admin/Goodscat/edit_pro', '11', '127.0.0.1'),
(86, 1486367970, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(85, 1486367740, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(84, 1486367737, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(83, 1486365452, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(82, 1486365435, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(81, 1486365401, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(80, 1486365392, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(79, 1486361188, 1, 'admin/Articlecat/add_pro', '5', '127.0.0.1'),
(78, 1486361118, 1, 'admin/Articlecat/add_pro', '4', '127.0.0.1'),
(77, 1486360834, 1, 'admin/Articlecat/add_pro', '3', '127.0.0.1'),
(76, 1486360770, 1, 'admin/Articlecat/add_pro', '2', '127.0.0.1'),
(75, 1486360645, 1, 'admin/Articlecat/add_pro', '1', '127.0.0.1'),
(74, 1486350109, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(73, 1486289416, 1, 'admin/Goodscat/edit_pro', '1', '127.0.0.1'),
(72, 1486289349, 1, 'admin/Goodscat/edit_pro', '1', '127.0.0.1'),
(71, 1486289318, 1, 'admin/Goodscat/edit_pro', '1', '127.0.0.1'),
(70, 1486282740, 1, 'admin/Goodscat/add_pro', '12', '127.0.0.1'),
(69, 1486282721, 1, 'admin/Goodscat/add_pro', '11', '127.0.0.1'),
(68, 1486282709, 1, 'admin/Goodscat/add_pro', '10', '127.0.0.1'),
(67, 1486282682, 1, 'admin/Goodscat/add_pro', '9', '127.0.0.1'),
(66, 1486276586, 1, 'admin/Goods/edit_pro', '27', '127.0.0.1'),
(65, 1486275253, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(64, 1486266821, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(63, 1486266407, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(62, 1486264852, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(61, 1486264558, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(60, 1486258506, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(59, 1486189255, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(58, 1486177628, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(57, 1486118959, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(56, 1486112128, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(55, 1486112066, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(50, 1485999437, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(51, 1486025363, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(52, 1486025600, 1, 'admin/Weixin/edit_pro', '0', '127.0.0.1'),
(53, 1486026064, 1, 'admin/Weixin/edit_pro', '0', '127.0.0.1'),
(54, 1486026675, 1, 'admin/Weixin/edit_pro', '0', '127.0.0.1'),
(89, 1486368873, 1, 'admin/Articlecat/add_pro', '6', '127.0.0.1'),
(90, 1486368887, 1, 'admin/Articlecat/edit_pro', '6', '127.0.0.1'),
(91, 1486368917, 1, 'admin/Articlecat/delete_pro', '6', '127.0.0.1'),
(92, 1486377266, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(93, 1486434474, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(94, 1486455365, 1, 'admin/Article/add_pro', '1', '127.0.0.1'),
(95, 1486461074, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(96, 1486462130, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(97, 1486519941, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(98, 1486535358, 1, 'admin/Goods/edit_pro', '27', '127.0.0.1'),
(99, 1486537599, 1, 'admin/Article/add_pro', '2', '127.0.0.1'),
(100, 1486540356, 1, 'admin/Article/add_pro', '3', '127.0.0.1'),
(101, 1486604862, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(102, 1486624776, 1, 'admin/Article/edit_pro', '3', '127.0.0.1'),
(103, 1486624901, 1, 'admin/Article/add_pro', '4', '127.0.0.1'),
(104, 1486625346, 1, 'admin/Article/add_pro', '5', '127.0.0.1'),
(105, 1486625633, 1, 'admin/Article/add_pro', '6', '127.0.0.1'),
(106, 1486625711, 1, 'admin/Article/add_pro', '7', '127.0.0.1'),
(107, 1486626698, 1, 'admin/Goods/add_pro', '28', '127.0.0.1'),
(108, 1486627027, 1, 'admin/Article/add_pro', '13', '127.0.0.1'),
(109, 1486627575, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(110, 1486627595, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(111, 1486628717, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(112, 1486628993, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(113, 1486629006, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(114, 1486629063, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(115, 1486629082, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(116, 1486629319, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(117, 1486629499, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(118, 1486629534, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(119, 1486629751, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(120, 1486629813, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(121, 1486629818, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(122, 1486629822, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(123, 1486632060, 1, 'admin/Goods/update_pro', '28', '127.0.0.1'),
(124, 1486632061, 1, 'admin/Goods/update_pro', '28', '127.0.0.1'),
(125, 1486636379, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(126, 1486636445, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(127, 1486636449, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(128, 1486636461, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(129, 1486636641, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(130, 1486636715, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(131, 1486636718, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(132, 1486636719, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(133, 1486636720, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(134, 1486636720, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(135, 1486636720, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(136, 1486636721, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(137, 1486636721, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(138, 1486636721, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(139, 1486636721, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(140, 1486636729, 1, 'admin/Article/check_state_pro', '13', '127.0.0.1'),
(141, 1486636745, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(142, 1486636749, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(143, 1486636802, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(144, 1486636803, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(145, 1486636806, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(146, 1486636810, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(147, 1486636812, 1, 'admin/Article/check_state_pro', '12', '127.0.0.1'),
(148, 1486636818, 1, 'admin/Article/check_state_pro', '11', '127.0.0.1'),
(149, 1486693489, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(150, 1486693500, 1, 'admin/Article/check_state_pro', '10', '127.0.0.1'),
(151, 1486693501, 1, 'admin/Article/check_state_pro', '10', '127.0.0.1'),
(152, 1486693505, 1, 'admin/Article/check_state_pro', '10', '127.0.0.1'),
(153, 1486698416, 1, 'admin/Article/is_top_pro', '13', '127.0.0.1'),
(154, 1486698588, 1, 'admin/Article/is_top_pro', '12', '127.0.0.1'),
(155, 1486698589, 1, 'admin/Article/update_pro', '12', '127.0.0.1'),
(156, 1486698592, 1, 'admin/Article/update_pro', '11', '127.0.0.1'),
(157, 1486698595, 1, 'admin/Article/is_top_pro', '11', '127.0.0.1'),
(158, 1486698766, 1, 'admin/Article/update_pro', '10', '127.0.0.1'),
(159, 1486698772, 1, 'admin/Article/update_pro', '10', '127.0.0.1'),
(160, 1486698775, 1, 'admin/Article/update_pro', '9', '127.0.0.1'),
(161, 1486710420, 1, 'admin/Article/edit_pro', '13', '127.0.0.1'),
(162, 1486710506, 1, 'admin/Article/check_state_pro', '9', '127.0.0.1'),
(163, 1486710534, 1, 'admin/Article/edit_pro', '9', '127.0.0.1'),
(164, 1486710593, 1, 'admin/Article/edit_pro', '10', '127.0.0.1'),
(165, 1486712299, 1, 'admin/Admin/role_edit_pro', '6', '127.0.0.1'),
(166, 1486712365, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(167, 1486713739, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(168, 1486713859, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(169, 1486713882, 1, 'admin/Admin/role_edit_pro', '6', '127.0.0.1'),
(170, 1486713897, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(171, 1486713910, 1, 'admin/Article/is_top_pro', '10', '127.0.0.1'),
(172, 1486713915, 1, 'admin/Article/check_state_pro', '11', '127.0.0.1'),
(173, 1486713941, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(174, 1486714023, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(175, 1486714243, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(176, 1486714284, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(177, 1486714510, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(178, 1486714514, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(179, 1486714524, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(180, 1486714623, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(181, 1486714804, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(182, 1486715384, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(183, 1486715406, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(184, 1486715417, 1, 'admin/Article/edit_pro', '11', '127.0.0.1'),
(185, 1486715440, 1, 'admin/Article/check_state_pro', '8', '127.0.0.1'),
(186, 1486715454, 1, 'admin/Article/edit_pro', '8', '127.0.0.1'),
(187, 1486715470, 1, 'admin/Article/is_top_pro', '10', '127.0.0.1'),
(188, 1486715474, 1, 'admin/Article/update_pro', '10', '127.0.0.1'),
(189, 1486715759, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(190, 1486715802, 1, 'admin/Admin/role_edit_pro', '6', '127.0.0.1'),
(191, 1486715920, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(192, 1486715933, 1, 'admin/Article/add_pro', '14', '127.0.0.1'),
(193, 1486715946, 1, 'admin/Article/edit_pro', '14', '127.0.0.1'),
(194, 1486717995, 1, 'admin/Article/delete_pro', '1', '127.0.0.1'),
(195, 1486718632, 1, 'admin/Goodscat/delete_pro', '11', '127.0.0.1'),
(196, 1486864235, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(197, 1486864549, 1, 'admin/Articlecat/delete_pro', '5', '127.0.0.1'),
(198, 1486865631, 1, 'admin/Articlecat/add_pro', '7', '127.0.0.1'),
(199, 1486868941, 1, 'admin/Articlecat/delete_pro', '7', '127.0.0.1'),
(200, 1486868950, 1, 'admin/Articlecat/delete_pro', '2', '127.0.0.1'),
(201, 1486868960, 1, 'admin/Articlecat/add_pro', '8', '127.0.0.1'),
(202, 1486868968, 1, 'admin/Articlecat/delete_pro', '8', '127.0.0.1'),
(203, 1486869286, 1, 'admin/Goodscat/delete_pro', '10', '127.0.0.1'),
(204, 1486869588, 1, 'admin/Goods/update_pro', '28', '127.0.0.1'),
(205, 1486869589, 1, 'admin/Goods/update_pro', '28', '127.0.0.1'),
(206, 1486869598, 1, 'admin/Goods/update_pro', '28', '127.0.0.1'),
(207, 1486869952, 1, 'admin/Goods/update_pro', '28', '127.0.0.1'),
(208, 1486878579, 1, 'admin/Admin/role_edit_pro', '6', '127.0.0.1'),
(209, 1486878592, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(210, 1486883972, 1, 'admin/Goods/add_pro', '29', '127.0.0.1'),
(211, 1486884106, 1, 'admin/Goods/add_pro', '30', '127.0.0.1'),
(212, 1486885800, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(213, 1486887479, 1, 'admin/Admin/role_edit_pro', '6', '127.0.0.1'),
(214, 1486887495, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(215, 1486888629, 1, 'admin/Admin/role_edit_pro', '6', '127.0.0.1'),
(216, 1486888641, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(217, 1486889144, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(218, 1486889221, 1, 'admin/Goodsattr/type_delete_pr', '28', '127.0.0.1'),
(219, 1486892029, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(220, 1486894581, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(221, 1486894636, 1, 'admin/Goodscat/delete_pro', '12', '127.0.0.1'),
(222, 1486895994, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(223, 1486949852, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(224, 1486950437, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(225, 1486950445, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(226, 1486950457, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(227, 1486952542, 1, 'admin/Article/edit_pro', '14', '127.0.0.1'),
(228, 1486957423, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(229, 1486957429, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(230, 1486957533, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(231, 1486958201, 1, 'admin/Goodscat/add_pro', '13', '127.0.0.1'),
(232, 1486958233, 1, 'admin/Goodscat/add_pro', '14', '127.0.0.1'),
(233, 1486958273, 1, 'admin/Goodscat/add_pro', '15', '127.0.0.1'),
(234, 1486958279, 1, 'admin/Goodscat/delete_pro', '15', '127.0.0.1'),
(235, 1486958348, 1, 'admin/Goodscat/edit_pro', '1', '127.0.0.1'),
(236, 1486964394, 1, 'admin/Goodscat/edit_pro', '1', '127.0.0.1'),
(237, 1486979672, 1, 'admin/Article/edit_pro', '14', '127.0.0.1'),
(238, 1486979974, 1, 'admin/Article/edit_pro', '14', '127.0.0.1'),
(239, 1486979975, 1, 'admin/Article/edit_pro', '14', '127.0.0.1'),
(240, 1487036045, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(241, 1487037433, 1, 'admin/Articlecat/edit_pro', '4', '127.0.0.1'),
(242, 1487038574, 1, 'admin/Articlecat/edit_pro', '1', '127.0.0.1'),
(243, 1487038578, 1, 'admin/Articlecat/edit_pro', '3', '127.0.0.1'),
(244, 1487039229, 1, 'admin/Article/edit_pro', '2', '127.0.0.1'),
(245, 1487039253, 1, 'admin/Article/edit_pro', '2', '127.0.0.1'),
(246, 1487039325, 1, 'admin/Article/edit_pro', '3', '127.0.0.1'),
(247, 1487039336, 1, 'admin/Article/edit_pro', '3', '127.0.0.1'),
(248, 1487039340, 1, 'admin/Article/update_pro', '3', '127.0.0.1'),
(249, 1487039342, 1, 'admin/Article/update_pro', '3', '127.0.0.1'),
(250, 1487039346, 1, 'admin/Article/update_pro', '3', '127.0.0.1'),
(251, 1487039348, 1, 'admin/Article/update_pro', '3', '127.0.0.1'),
(252, 1487039602, 1, 'admin/Article/edit_pro', '4', '127.0.0.1'),
(253, 1487052166, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(254, 1487468278, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(255, 1487472169, 1, 'admin/Article/edit_pro', '14', '127.0.0.1'),
(256, 1487472224, 1, 'admin/Article/edit_pro', '5', '127.0.0.1'),
(257, 1487472400, 1, 'admin/Goodscat/edit_pro', '3', '127.0.0.1'),
(258, 1487472435, 1, 'admin/Goodscat/edit_pro', '3', '127.0.0.1'),
(259, 1487472478, 1, 'admin/Goodscat/edit_pro', '1', '127.0.0.1'),
(260, 1487472510, 1, 'admin/Goodscat/edit_pro', '2', '127.0.0.1'),
(261, 1487472533, 1, 'admin/Goodscat/edit_pro', '3', '127.0.0.1'),
(262, 1487472567, 1, 'admin/Goodscat/edit_pro', '4', '127.0.0.1'),
(263, 1487472596, 1, 'admin/Goodscat/edit_pro', '6', '127.0.0.1'),
(264, 1487472599, 1, 'admin/Goodscat/edit_pro', '6', '127.0.0.1'),
(265, 1487472630, 1, 'admin/Goodscat/edit_pro', '9', '127.0.0.1'),
(266, 1487472661, 1, 'admin/Goodscat/edit_pro', '13', '127.0.0.1'),
(267, 1487472682, 1, 'admin/Goodscat/edit_pro', '13', '127.0.0.1'),
(268, 1487472690, 1, 'admin/Goodscat/delete_pro', '14', '127.0.0.1'),
(269, 1487472696, 1, 'admin/Goodscat/edit_pro', '13', '127.0.0.1'),
(270, 1487490270, 1, 'admin/Goods/edit_pro', '2', '127.0.0.1'),
(271, 1487490288, 1, 'admin/Goods/edit_pro', '2', '127.0.0.1'),
(272, 1487490392, 1, 'admin/Goods/edit_pro', '3', '127.0.0.1'),
(273, 1487490540, 1, 'admin/Goods/edit_pro', '4', '127.0.0.1'),
(274, 1487490682, 1, 'admin/Goods/edit_pro', '5', '127.0.0.1'),
(275, 1487490831, 1, 'admin/Goods/edit_pro', '12', '127.0.0.1'),
(276, 1487490993, 1, 'admin/Goods/edit_pro', '13', '127.0.0.1'),
(277, 1487491143, 1, 'admin/Goods/edit_pro', '26', '127.0.0.1'),
(278, 1487491571, 1, 'admin/Goods/edit_pro', '27', '127.0.0.1'),
(279, 1487491706, 1, 'admin/Goods/edit_pro', '28', '127.0.0.1'),
(280, 1487491864, 1, 'admin/Goods/edit_pro', '29', '127.0.0.1'),
(281, 1487492007, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(282, 1487492018, 1, 'admin/Goods/update_pro', '27', '127.0.0.1'),
(283, 1487492019, 1, 'admin/Goods/update_pro', '28', '127.0.0.1'),
(284, 1487492025, 1, 'admin/Goods/update_pro', '2', '127.0.0.1'),
(285, 1487495741, 1, 'admin/Goods/update_pro', '2', '127.0.0.1'),
(286, 1487583675, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(287, 1487585450, 1, 'admin/Goods/edit_pro', '2', '127.0.0.1'),
(288, 1487659594, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(289, 1487660062, 1, 'admin/Goodsattr/edit_pro', '244', '127.0.0.1'),
(290, 1487665524, 1, 'admin/Goodsattr/edit_pro', '244', '127.0.0.1'),
(291, 1487665564, 1, 'admin/Goods/edit_pro', '2', '127.0.0.1'),
(292, 1487665924, 1, 'admin/Goodsattr/delete_pro', '246', '127.0.0.1'),
(293, 1487668923, 1, 'admin/Goods/edit_pro', '2', '127.0.0.1'),
(294, 1488265638, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(295, 1488265844, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(296, 1488334894, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(297, 1489131919, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(298, 1489370741, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(299, 1489370774, 1, 'admin/Goods/update_pro', '27', '127.0.0.1'),
(300, 1489816977, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(301, 1489817853, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(302, 1489817858, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(303, 1489817934, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(304, 1489817952, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(305, 1489913639, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(306, 1489914096, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(307, 1490002177, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(308, 1490002202, 1, 'admin/Goods/edit_pro', '27', '127.0.0.1'),
(309, 1490002223, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(310, 1490002229, 1, 'admin/Goods/edit_pro', '29', '127.0.0.1'),
(311, 1490002234, 1, 'admin/Goods/edit_pro', '28', '127.0.0.1'),
(312, 1490002240, 1, 'admin/Goods/edit_pro', '27', '127.0.0.1'),
(313, 1490002246, 1, 'admin/Goods/edit_pro', '26', '127.0.0.1'),
(314, 1490002256, 1, 'admin/Goods/edit_pro', '13', '127.0.0.1'),
(315, 1490002261, 1, 'admin/Goods/edit_pro', '12', '127.0.0.1'),
(316, 1490002266, 1, 'admin/Goods/edit_pro', '5', '127.0.0.1'),
(317, 1490002270, 1, 'admin/Goods/edit_pro', '5', '127.0.0.1'),
(318, 1490002275, 1, 'admin/Goods/edit_pro', '4', '127.0.0.1'),
(319, 1490002282, 1, 'admin/Goods/edit_pro', '3', '127.0.0.1'),
(320, 1490002286, 1, 'admin/Goods/edit_pro', '2', '127.0.0.1'),
(321, 1490087450, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(322, 1490087458, 1, 'admin/Goods/edit_pro', '30', '127.0.0.1'),
(323, 1490087619, 1, 'admin/System/shop_edit_pro', '0', '127.0.0.1'),
(324, 1490087923, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(325, 1490088023, 1, 'admin/Admin/role_edit_pro', '6', '127.0.0.1'),
(326, 1490088051, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(327, 1490520259, 1, 'admin/Admin/login_pro', '', '127.0.0.1'),
(328, 1490596473, 1, 'admin/goods/edit_pro', '30', '127.0.0.1'),
(329, 1490596488, 1, 'admin/goods/edit_pro', '30', '127.0.0.1'),
(330, 1490597578, 1, 'admin/admin/role_edit_pro', '6', '127.0.0.1'),
(331, 1490665057, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(332, 1490665067, 1, 'admin/goods/edit_pro', '30', '127.0.0.1'),
(333, 1490665081, 1, 'admin/goods/update_pro', '30', '127.0.0.1'),
(334, 1490665566, 1, 'admin/goods/edit_pro', '30', '127.0.0.1'),
(335, 1490665573, 1, 'admin/goods/update_pro', '11', '127.0.0.1'),
(336, 1490665825, 1, 'admin/goods/update_pro', '11', '127.0.0.1'),
(337, 1490665837, 1, 'admin/goods/update_pro', '30', '127.0.0.1'),
(338, 1490665888, 1, 'admin/goods/delete_pro', '10', '127.0.0.1'),
(339, 1490667387, 1, 'admin/article/edit_pro', '14', '127.0.0.1'),
(340, 1490667453, 1, 'admin/admin/edit_pro', '1', '127.0.0.1'),
(341, 1490667488, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(342, 1490687124, 1, 'admin/admin/role_edit_pro', '6', '127.0.0.1'),
(343, 1490687167, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(344, 1490689024, 1, 'admin/weixin/edit_pro', '0', '127.0.0.1'),
(345, 1490775193, 1, 'admin/admin/login_pro', '', '180.127.67.199'),
(346, 1490775261, 1, 'admin/weixin/edit_pro', '0', '180.127.67.199'),
(347, 1490941345, 1, 'admin/admin/login_pro', '', '180.127.66.82'),
(348, 1491297419, 1, 'admin/admin/login_pro', '', '180.127.229.226'),
(349, 1491297443, 1, 'admin/goods/update_pro', '27', '180.127.229.226'),
(350, 1491299315, 1, 'admin/goods/edit_pro', '27', '180.127.229.226'),
(351, 1491357846, 1, 'admin/admin/login_pro', '', '180.127.80.109'),
(352, 1491357864, 1, 'admin/goods/edit_pro', '27', '180.127.80.109'),
(353, 1491373137, 1, 'admin/weixin/edit_pro', '0', '180.127.80.109'),
(354, 1491374544, 1, 'admin/weixin/edit_pro', '0', '180.127.80.109'),
(355, 1491731365, 1, 'admin/admin/login_pro', '', '114.237.156.212'),
(356, 1491732707, 1, 'admin/system/shop_edit_pro', '0', '114.237.156.212'),
(357, 1491733331, 1, 'admin/goods/edit_pro', '27', '114.237.156.212'),
(358, 1491906391, 1, 'admin/admin/login_pro', '', '117.92.91.120'),
(359, 1491976636, 1, 'admin/admin/login_pro', '', '117.92.91.120'),
(360, 1492053736, 1, 'admin/admin/login_pro', '', '117.92.91.120'),
(361, 1492077165, 1, 'admin/weixin/edit_pro', '0', '117.92.46.108'),
(362, 1492740438, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(363, 1493013174, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(364, 1493013184, 1, 'admin/goods/edit_pro', '30', '127.0.0.1'),
(365, 1493013191, 1, 'admin/goods/edit_pro', '30', '127.0.0.1'),
(366, 1493721536, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(367, 1493803922, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(368, 1495106977, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(369, 1495107214, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(370, 1495766539, 1, 'admin/admin/login_pro', '', '117.92.246.50'),
(371, 1495766612, 1, 'admin/weixin/edit_pro', '0', '117.92.246.50'),
(372, 1496213194, 1, 'admin/admin/login_pro', '', '117.92.49.227'),
(373, 1496213213, 1, 'admin/system/shop_edit_pro', '0', '117.92.49.227'),
(374, 1496214461, 1, 'admin/system/shop_edit_pro', '0', '117.92.49.227'),
(375, 1496215074, 1, 'admin/system/shop_edit_pro', '0', '117.92.49.227'),
(376, 1496215410, 1, 'admin/system/shop_edit_pro', '0', '117.92.49.227'),
(377, 1496625624, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(378, 1496644295, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(379, 1496735150, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(380, 1496744039, 1, 'admin/admin/role_edit_pro', '6', '127.0.0.1'),
(381, 1496744055, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(382, 1496904918, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(383, 1496905192, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(384, 1496918796, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(385, 1496920081, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(386, 1496920176, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(387, 1496972352, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(388, 1497144702, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(389, 1497165796, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(390, 1497165810, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(391, 1497233525, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(392, 1497234490, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(393, 1497253558, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(394, 1497256538, 1, 'admin/article/is_top_pro', '14', '127.0.0.1'),
(395, 1497256539, 1, 'admin/article/is_top_pro', '14', '127.0.0.1'),
(396, 1497256549, 1, 'admin/article/is_top_pro', '14', '127.0.0.1'),
(397, 1497256557, 1, 'admin/article/is_top_pro', '14', '127.0.0.1'),
(398, 1497256962, 1, 'admin/article/edit_pro', '14', '127.0.0.1'),
(399, 1497256978, 1, 'admin/article/edit_pro', '14', '127.0.0.1'),
(400, 1497257189, 1, 'admin/article/check_state_pro', '14', '127.0.0.1'),
(401, 1497257255, 1, 'admin/article/check_state_pro', '14', '127.0.0.1'),
(402, 1497257284, 1, 'admin/article/check_state_pro', '14', '127.0.0.1'),
(403, 1497257314, 1, 'admin/article/check_state_pro', '14', '127.0.0.1'),
(404, 1497257360, 1, 'admin/article/check_state_pro', '14', '127.0.0.1'),
(405, 1497257363, 1, 'admin/article/check_state_pro', '12', '127.0.0.1'),
(406, 1497257424, 1, 'admin/article/is_top_pro', '14', '127.0.0.1'),
(407, 1497257425, 1, 'admin/article/is_top_pro', '14', '127.0.0.1'),
(408, 1497257830, 1, 'admin/article/update_pro', '14', '127.0.0.1'),
(409, 1497257835, 1, 'admin/article/update_pro', '14', '127.0.0.1'),
(410, 1497257839, 1, 'admin/article/update_pro', '14', '127.0.0.1'),
(411, 1497257841, 1, 'admin/article/update_pro', '14', '127.0.0.1'),
(412, 1497259081, 1, 'admin/articlecat/edit_pro', '1', '127.0.0.1'),
(413, 1497259094, 1, 'admin/articlecat/edit_pro', '3', '127.0.0.1'),
(414, 1497259155, 1, 'admin/articlecat/edit_pro', '4', '127.0.0.1'),
(415, 1497259176, 1, 'admin/articlecat/add_pro', '5', '127.0.0.1'),
(416, 1497259611, 1, 'admin/article/edit_pro', '5', '127.0.0.1'),
(417, 1497259720, 1, 'admin/article/edit_pro', '6', '127.0.0.1'),
(418, 1497259968, 1, 'admin/article/edit_pro', '5', '127.0.0.1'),
(419, 1497260148, 1, 'admin/article/edit_pro', '7', '127.0.0.1'),
(420, 1497260162, 1, 'admin/article/edit_pro', '7', '127.0.0.1'),
(421, 1497262275, 1, 'admin/article/check_state_pro', '7', '127.0.0.1'),
(422, 1497262277, 1, 'admin/article/check_state_pro', '6', '127.0.0.1'),
(423, 1497262278, 1, 'admin/article/check_state_pro', '5', '127.0.0.1'),
(424, 1497262371, 1, 'admin/article/edit_pro', '8', '127.0.0.1'),
(425, 1497262430, 1, 'admin/article/edit_pro', '9', '127.0.0.1'),
(426, 1497262437, 1, 'admin/article/edit_pro', '9', '127.0.0.1'),
(427, 1497262652, 1, 'admin/article/edit_pro', '9', '127.0.0.1'),
(428, 1497262655, 1, 'admin/article/check_state_pro', '9', '127.0.0.1'),
(429, 1497262907, 1, 'admin/article/edit_pro', '10', '127.0.0.1'),
(430, 1497262983, 1, 'admin/article/edit_pro', '10', '127.0.0.1'),
(431, 1497262997, 1, 'admin/article/edit_pro', '10', '127.0.0.1'),
(432, 1497263001, 1, 'admin/article/check_state_pro', '11', '127.0.0.1'),
(433, 1497263030, 1, 'admin/article/edit_pro', '11', '127.0.0.1'),
(434, 1497263055, 1, 'admin/article/edit_pro', '11', '127.0.0.1'),
(435, 1497263126, 1, 'admin/articlecat/add_pro', '6', '127.0.0.1'),
(436, 1497263134, 1, 'admin/articlecat/edit_pro', '6', '127.0.0.1'),
(437, 1497263192, 1, 'admin/article/edit_pro', '13', '127.0.0.1'),
(438, 1497263209, 1, 'admin/article/edit_pro', '13', '127.0.0.1'),
(439, 1497263482, 1, 'admin/article/edit_pro', '12', '127.0.0.1'),
(440, 1497263490, 1, 'admin/article/update_pro', '12', '127.0.0.1'),
(441, 1497263492, 1, 'admin/article/is_top_pro', '12', '127.0.0.1'),
(442, 1497263492, 1, 'admin/article/is_top_pro', '11', '127.0.0.1'),
(443, 1497263495, 1, 'admin/article/is_top_pro', '14', '127.0.0.1'),
(444, 1497263495, 1, 'admin/article/update_pro', '9', '127.0.0.1'),
(445, 1497263525, 1, 'admin/article/check_state_pro', '14', '127.0.0.1'),
(446, 1497263552, 1, 'admin/article/edit_pro', '14', '127.0.0.1'),
(447, 1497263576, 1, 'admin/article/edit_pro', '5', '127.0.0.1'),
(448, 1497263589, 1, 'admin/article/edit_pro', '6', '127.0.0.1'),
(449, 1497263601, 1, 'admin/article/edit_pro', '7', '127.0.0.1'),
(450, 1497263660, 1, 'admin/article/edit_pro', '14', '127.0.0.1'),
(451, 1497263746, 1, 'admin/articlecat/edit_pro', '4', '127.0.0.1'),
(452, 1497264351, 1, 'admin/article/add_pro', '15', '127.0.0.1'),
(453, 1497264360, 1, 'admin/article/check_state_pro', '15', '127.0.0.1'),
(454, 1497264433, 1, 'admin/article/add_pro', '16', '127.0.0.1'),
(455, 1497264482, 1, 'admin/article/add_pro', '17', '127.0.0.1'),
(456, 1497264485, 1, 'admin/article/check_state_pro', '16', '127.0.0.1'),
(457, 1497264485, 1, 'admin/article/check_state_pro', '17', '127.0.0.1'),
(458, 1497264494, 1, 'admin/article/edit_pro', '16', '127.0.0.1'),
(459, 1497264573, 1, 'admin/article/add_pro', '18', '127.0.0.1'),
(460, 1497264772, 1, 'admin/article/add_pro', '19', '127.0.0.1'),
(461, 1497264837, 1, 'admin/article/add_pro', '20', '127.0.0.1'),
(462, 1497264888, 1, 'admin/article/add_pro', '21', '127.0.0.1'),
(463, 1497264962, 1, 'admin/article/add_pro', '22', '127.0.0.1'),
(464, 1497265017, 1, 'admin/article/add_pro', '23', '127.0.0.1'),
(465, 1497265086, 1, 'admin/article/add_pro', '24', '127.0.0.1'),
(466, 1497265144, 1, 'admin/article/add_pro', '25', '127.0.0.1'),
(467, 1497265162, 1, 'admin/article/check_state_pro', '19', '127.0.0.1'),
(468, 1497265162, 1, 'admin/article/check_state_pro', '18', '127.0.0.1'),
(469, 1497265163, 1, 'admin/article/check_state_pro', '21', '127.0.0.1'),
(470, 1497265163, 1, 'admin/article/check_state_pro', '22', '127.0.0.1'),
(471, 1497265164, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(472, 1497265165, 1, 'admin/article/check_state_pro', '24', '127.0.0.1'),
(473, 1497265165, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(474, 1497265690, 1, 'admin/article/check_state_pro', '13', '127.0.0.1'),
(475, 1497265692, 1, 'admin/article/check_state_pro', '13', '127.0.0.1'),
(476, 1497265766, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(477, 1497265767, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(478, 1497265894, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(479, 1497265921, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(480, 1497265922, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(481, 1497265925, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(482, 1497266083, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(483, 1497266238, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(484, 1497266240, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(485, 1497266257, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(486, 1497266258, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(487, 1497266259, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(488, 1497266260, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(489, 1497266385, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(490, 1497266386, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(491, 1497266388, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(492, 1497266610, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(493, 1497266611, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(494, 1497266612, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(495, 1497266623, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(496, 1497266629, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(497, 1497266634, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(498, 1497266717, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(499, 1497266718, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(500, 1497266719, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(501, 1497266720, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(502, 1497266721, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(503, 1497266724, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(504, 1497266726, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(505, 1497267012, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(506, 1497267013, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(507, 1497267015, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(508, 1497267054, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(509, 1497267058, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(510, 1497267110, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(511, 1497267111, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(512, 1497267235, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(513, 1497267238, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(514, 1497267242, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(515, 1497267243, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(516, 1497267281, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(517, 1497267283, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(518, 1497267287, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(519, 1497267288, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(520, 1497267335, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(521, 1497267336, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(522, 1497267348, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(523, 1497267362, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(524, 1497267497, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(525, 1497267893, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(526, 1497267907, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(527, 1497267922, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(528, 1497267943, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(529, 1497267958, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(530, 1497268028, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(531, 1497268074, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(532, 1497268076, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(533, 1497268078, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(534, 1497268089, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(535, 1497268171, 1, 'admin/article/is_top_pro', '25', '127.0.0.1'),
(536, 1497268172, 1, 'admin/article/is_top_pro', '25', '127.0.0.1'),
(537, 1497268174, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(538, 1497268175, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(539, 1497268233, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(540, 1497268235, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(541, 1497268239, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(542, 1497268240, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(543, 1497268281, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(544, 1497268282, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(545, 1497268348, 1, 'admin/article/is_top_pro', '25', '127.0.0.1'),
(546, 1497268348, 1, 'admin/article/is_top_pro', '25', '127.0.0.1'),
(547, 1497268600, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(548, 1497268602, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(549, 1497268683, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(550, 1497322429, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(551, 1497323780, 1, 'admin/article/edit_pro', '25', '127.0.0.1'),
(552, 1497323800, 1, 'admin/article/edit_pro', '25', '127.0.0.1'),
(553, 1497323805, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(554, 1497325471, 1, 'admin/article/is_top_pro', '24', '127.0.0.1'),
(555, 1497345296, 1, 'admin/article/update_pro', '23', '127.0.0.1'),
(556, 1497345297, 1, 'admin/article/update_pro', '22', '127.0.0.1'),
(557, 1497345298, 1, 'admin/article/update_pro', '21', '127.0.0.1'),
(558, 1497345300, 1, 'admin/article/update_pro', '19', '127.0.0.1'),
(559, 1497351121, 1, 'admin/article/check_state_pro', '13', '127.0.0.1'),
(560, 1497490764, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(561, 1497513909, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(562, 1497585242, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(563, 1497749349, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(564, 1497865211, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(565, 1498188680, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(566, 1498269337, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(567, 1498362988, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(568, 1498698751, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(569, 1498698990, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(570, 1499053018, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(571, 1499131629, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(572, 1499155405, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(573, 1499155409, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(574, 1499157122, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(575, 1499157129, 1, 'admin/article/check_state_pro', '25', '127.0.0.1'),
(576, 1499157888, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(577, 1499157896, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(578, 1499159485, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(579, 1499159558, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(580, 1499160774, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(581, 1499160862, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(582, 1499160864, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(583, 1499160868, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(584, 1499160893, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(585, 1499160895, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(586, 1499164808, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(587, 1499164811, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(588, 1499164819, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(589, 1499164822, 1, 'admin/article/check_state_pro', '23', '127.0.0.1'),
(590, 1499240461, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(591, 1499240910, 1, 'admin/project/pay_state_pro', '3', '127.0.0.1'),
(592, 1499241660, 1, 'admin/project/pay_state_pro', '3', '127.0.0.1'),
(593, 1499243872, 1, 'admin/project/check_state_pro', '3', '127.0.0.1'),
(594, 1499243883, 1, 'admin/project/check_state_pro', '3', '127.0.0.1'),
(595, 1499243887, 1, 'admin/project/check_state_pro', '3', '127.0.0.1'),
(596, 1499245323, 1, 'admin/project/pay_state_pro', '3', '127.0.0.1'),
(597, 1499245783, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(598, 1499245853, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(599, 1499245909, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(600, 1499246140, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(601, 1499246168, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(602, 1499246324, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(603, 1499246491, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(604, 1499247320, 1, 'admin/project/check_state_pro', '3', '127.0.0.1'),
(605, 1499247530, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(606, 1499247664, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(607, 1499247691, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(608, 1499247760, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(609, 1499247859, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(610, 1499247964, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(611, 1499248040, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(612, 1499248077, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(613, 1499248924, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(614, 1499249040, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(615, 1499249096, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(616, 1499249153, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(617, 1499249175, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(618, 1499249219, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(619, 1499249320, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(620, 1499249372, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(621, 1499249407, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(622, 1499249478, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(623, 1499249993, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(624, 1499250123, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(625, 1499250345, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(626, 1499250461, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(627, 1499250517, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(628, 1499250586, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(629, 1499250617, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(630, 1499250637, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(631, 1499250652, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(632, 1499250668, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(633, 1499250710, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(634, 1499250723, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(635, 1499250904, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(636, 1499250966, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(637, 1499251042, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(638, 1499251118, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(639, 1499251289, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(640, 1499251314, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(641, 1499251357, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(642, 1499251366, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(643, 1499251578, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(644, 1499251592, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(645, 1499251950, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(646, 1499252079, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(647, 1499252635, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(648, 1499252735, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(649, 1499252916, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(650, 1499252983, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(651, 1499252993, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(652, 1499305073, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(653, 1499479302, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(654, 1499479713, 1, 'admin/project/check_state_pro', '4', '127.0.0.1'),
(655, 1499479714, 1, 'admin/project/check_state_pro', '4', '127.0.0.1'),
(656, 1499479716, 1, 'admin/project/check_state_pro', '4', '127.0.0.1'),
(657, 1499479730, 1, 'admin/project/check_state_pro', '4', '127.0.0.1'),
(658, 1499479735, 1, 'admin/project/check_state_pro', '3', '127.0.0.1'),
(659, 1499479743, 1, 'admin/project/check_state_pro', '3', '127.0.0.1'),
(660, 1499479761, 1, 'admin/project/check_state_pro', '5', '127.0.0.1'),
(661, 1499479767, 1, 'admin/project/check_state_pro', '5', '127.0.0.1'),
(662, 1499564267, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(663, 1499564291, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(664, 1499573055, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(665, 1499573286, 1, 'admin/article/edit_pro', '12', '127.0.0.1'),
(666, 1499573349, 1, 'admin/article/edit_pro', '13', '127.0.0.1'),
(667, 1499573383, 1, 'admin/article/edit_pro', '14', '127.0.0.1'),
(668, 1499582655, 1, 'admin/article/edit_pro', '5', '127.0.0.1'),
(669, 1499582734, 1, 'admin/article/edit_pro', '7', '127.0.0.1'),
(670, 1499582763, 1, 'admin/article/edit_pro', '8', '127.0.0.1'),
(671, 1499582815, 1, 'admin/article/edit_pro', '9', '127.0.0.1'),
(672, 1499582837, 1, 'admin/article/edit_pro', '10', '127.0.0.1'),
(673, 1499582885, 1, 'admin/article/edit_pro', '11', '127.0.0.1'),
(674, 1499583091, 1, 'admin/article/edit_pro', '5', '127.0.0.1'),
(675, 1499672624, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(676, 1499689434, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(677, 1499841379, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(678, 1500000314, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(679, 1500000781, 1, 'admin/article/edit_pro', '10', '127.0.0.1'),
(680, 1500000814, 1, 'admin/article/edit_pro', '10', '127.0.0.1'),
(681, 1500000859, 1, 'admin/article/edit_pro', '9', '127.0.0.1'),
(682, 1500002068, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(683, 1500168500, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(684, 1500426829, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(685, 1500455273, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(686, 1500460789, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(687, 1500461114, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(688, 1500461119, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(689, 1500461206, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(690, 1500513885, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(691, 1500532882, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(692, 1500533050, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(693, 1500533104, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(694, 1500533146, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(695, 1500533205, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(696, 1500533331, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(697, 1500537045, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(698, 1500537520, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(699, 1500537533, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(700, 1500537622, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(701, 1500537693, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(702, 1500537940, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(703, 1500538720, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(704, 1500554840, 1, 'admin/project/check_state_pro', '7', '127.0.0.1'),
(705, 1500556503, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(706, 1500556708, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(707, 1500598666, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(708, 1500604977, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(709, 1500605049, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(710, 1500606130, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(711, 1500606228, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(712, 1500606637, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(713, 1500606716, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(714, 1500606990, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(715, 1500607129, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(716, 1500776289, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(717, 1500779675, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(718, 1500780537, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(719, 1500790294, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(720, 1500790397, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(721, 1501031684, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(722, 1501064297, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(723, 1501070325, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(724, 1501070497, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(725, 1501070830, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(726, 1501118202, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(727, 1501121287, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(728, 1501122025, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(729, 1501122185, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(730, 1501148445, 1, 'admin/article/update_pro', '25', '127.0.0.1'),
(731, 1501148455, 1, 'admin/article/update_pro', '24', '127.0.0.1'),
(732, 1501148456, 1, 'admin/article/update_pro', '23', '127.0.0.1'),
(733, 1501148456, 1, 'admin/article/update_pro', '22', '127.0.0.1'),
(734, 1501148458, 1, 'admin/article/update_pro', '21', '127.0.0.1'),
(735, 1501148458, 1, 'admin/article/update_pro', '20', '127.0.0.1'),
(736, 1501148459, 1, 'admin/article/update_pro', '19', '127.0.0.1'),
(737, 1501148460, 1, 'admin/article/update_pro', '18', '127.0.0.1'),
(738, 1501148460, 1, 'admin/article/update_pro', '17', '127.0.0.1'),
(739, 1501148461, 1, 'admin/article/update_pro', '16', '127.0.0.1'),
(740, 1501148465, 1, 'admin/article/update_pro', '15', '127.0.0.1'),
(741, 1501148465, 1, 'admin/article/update_pro', '14', '127.0.0.1'),
(742, 1501148466, 1, 'admin/article/update_pro', '13', '127.0.0.1'),
(743, 1501148471, 1, 'admin/article/update_pro', '12', '127.0.0.1'),
(744, 1501163751, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(745, 1501164093, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(746, 1501164161, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(747, 1501164252, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(748, 1501164508, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(749, 1501208474, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(750, 1501209295, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(751, 1501295411, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(752, 1501469827, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(753, 1501984348, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(754, 1501984428, 1, 'admin/article/edit_pro', '25', '127.0.0.1'),
(755, 1501986206, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(756, 1501987104, 1, 'admin/project/pay_final_pro', '3', '127.0.0.1'),
(757, 1501987227, 1, 'admin/project/pay_final_pro', '7', '127.0.0.1'),
(758, 1502071182, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(759, 1502074658, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(760, 1502074839, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(761, 1502078271, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(762, 1502102101, 1, 'admin/user/validate_update_pro', '4', '127.0.0.1'),
(763, 1502102173, 1, 'admin/user/validate_update_pro', '4', '127.0.0.1'),
(764, 1502102177, 1, 'admin/user/validate_update_pro', '4', '127.0.0.1'),
(765, 1502102332, 1, 'admin/user/validate_update_pro', '4', '127.0.0.1'),
(766, 1502102334, 1, 'admin/user/validate_update_pro', '4', '127.0.0.1'),
(767, 1502111412, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(768, 1502164810, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(769, 1502191109, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(770, 1502191118, 1, 'admin/user/validate_update_pro', '1', '127.0.0.1'),
(771, 1502191123, 1, 'admin/user/validate_update_pro', '4', '127.0.0.1'),
(772, 1502761635, 1, 'admin/admin/login_pro', '', ''),
(773, 1502777484, 1, 'admin/project/check_state_pro', '2', ''),
(774, 1502790757, 1, 'admin/project/check_state_pro', '2', ''),
(775, 1502791755, 1, 'admin/project/check_state_pro', '3', ''),
(776, 1502801433, 1, 'admin/project/check_state_pro', '8', ''),
(777, 1503219833, 1, 'admin/admin/login_pro', '', '127.0.0.1'),
(778, 1503219877, 1, 'admin/system/shop_edit_pro', '0', '127.0.0.1'),
(779, 1503822115, 1, 'admin/admin/login_pro', '', '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `quan_admin_role`
--

CREATE TABLE IF NOT EXISTS `quan_admin_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  `role_desc` varchar(255) NOT NULL COMMENT '说明',
  `add_time` int(11) NOT NULL,
  `power` text NOT NULL COMMENT '权限',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='管理员-权限角色表' AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `quan_admin_role`
--

INSERT INTO `quan_admin_role` (`role_id`, `role_name`, `role_desc`, `add_time`, `power`) VALUES
(6, '超级管理员', '', 1496744039, 'all'),
(7, '普通管理员3', '', 1485049765, 'system/shop_edit|system/shop_edit_pro'),
(9, '普通管理员5', '', 1485049777, 'system/shop_edit|system/shop_edit_pro'),
(10, '普通管理员6', '', 1485049782, 'system/shop_edit|system/shop_edit_pro'),
(11, '普通管理员7', '', 1485049788, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(12, '普通管理员8', '', 1485049793, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(13, '普通管理员9', '', 1485049798, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(14, '普通管理员11', '', 1485049803, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(15, '普通管理员12', '', 1485049808, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(16, '普通管理员13', '', 1485049813, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(17, '普通管理员15', '', 1485049818, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(18, '普通管理员16', '', 1485049825, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(19, '普通管理员17', '', 1485049831, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(20, '普通管理员18', '', 1485049835, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(21, '普通管理员19', '', 1485049849, ''),
(22, '普通管理员20', '', 1485049855, ''),
(23, '普通管理员22', '', 1485049861, 'goods/rows|goods/rows_search,goods/add|add_pro,goods/edit|goods/edit_pro|goods/update_pro,goods/recycle_rows,goods/delete_pro,goods/suppliers_rows,goodscat/rows|goodscat/rows_search,goodscat/add|add_pro,goodscat/edit|goodscat/edit_pro,goodscat/delete_pro,goodsattr/type_rows,goodsattr/type_add|type_add_pro,goodsattr/type_edit|type_edit_pro,goodsattr/type_delete_pro,goodsattr/rows,goodsattr/add|add_pro,goodsattr/edit|edit_pro,goodsattr/delete_pro,admin/rows|admin/rows_search,admin/add|add_pro,admin/edit|admin/edit_pro|admin/update_pro,goods/delete_pro,admin/log_rows|admin/admin_search,admin/log_delete_pro,admin/role_rows|admin/rows_search,admin/role_add|role_add_pro,admin/role_edit|admin/role_edit_pro,admin/role_delete_pro,system/shop_edit|system/shop_edit_pro'),
(24, '普通管理员2355', '', 1485142842, 'index/index,goods/rows|goods/rows_search,system/shop_edit|system/shop_edit_pro');

-- --------------------------------------------------------

--
-- 表的结构 `quan_ad_position`
--

CREATE TABLE IF NOT EXISTS `quan_ad_position` (
  `position_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `quan_ad_position`
--

INSERT INTO `quan_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`) VALUES
(8, '文章列表头部', 0, 0, ''),
(7, '首页轮播', 600, 400, ''),
(9, '发起项目头部图片', 0, 0, ''),
(12, '撒旦法3', 0, 0, ''),
(13, '撒旦法35', 0, 0, ''),
(14, '撒旦法3567', 0, 0, ''),
(15, '项目列表页头部广告', 0, 0, ''),
(16, '项目详情页面顶部广告', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_article`
--

CREATE TABLE IF NOT EXISTS `quan_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `editor_id` int(10) unsigned NOT NULL COMMENT '编辑者editor_id,或者管理员admin_id',
  `check_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否审核,0初始,1待审核,,2审核未通过3.审核通过',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '好的文章,推荐文章recommend太长了',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '新文章',
  `is_discuss` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许评论,1允许',
  `discuss_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论次数',
  `show_total` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '展现次数',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  `link` varchar(255) NOT NULL,
  `rectangle_img` varchar(255) NOT NULL,
  `article_img` varchar(255) NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `tag` varchar(100) NOT NULL COMMENT '文章标签,逗号隔开',
  `article_brief` varchar(255) NOT NULL COMMENT '文章简介,摘要',
  `content` text NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='网站文章表' AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `quan_article`
--

INSERT INTO `quan_article` (`article_id`, `cat_id`, `title`, `editor_id`, `check_state`, `is_show`, `is_top`, `is_best`, `is_new`, `is_discuss`, `discuss_total`, `show_total`, `add_time`, `last_time`, `link`, `rectangle_img`, `article_img`, `keywords`, `tag`, `article_brief`, `content`) VALUES
(2, 4, '商城介绍', 1, 2, 1, 0, 0, 0, 0, 0, 0, 1486537599, 1487039253, '', '', '', '', '1', '', '<p>23165465<img src="http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/desc/TB27mCXXp_AQeBjSZPhXXXt5pXa_!!491564172.jpg" alt="TB27mCXXp_AQeBjSZPhXXXt5pXa_!!491564172.jpg"/></p>'),
(3, 4, '成为店主', 1, 2, 1, 0, 0, 0, 0, 0, 0, 1486540356, 1487039348, '', '', '', '', '1', '', ''),
(4, 4, '售后服务', 1, 2, 1, 0, 0, 0, 0, 0, 1, 1486624901, 1487039602, '', 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/5e21c7b78212da754e46617257183347', 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/fcb94e0c8ee372b0f2aaaeb34ef4ae53', '', '1', '', '<p style="text-align: center;">dsaf dsfasdfsdafas</p><p><br/></p><p style="text-align: center;"><img src="http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/desc/TB27mCXXp_AQeBjSZPhXXXt5pXa_!!491564172.jpg" width="396" height="264"/></p><p style="text-align: center;"><img src="http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/desc/TB2Cv9FXam5V1BjSspoXXa8VXXa_!!491564172.jpg" width="398" height="433"/></p><p style="text-align: center;"><img src="http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/desc/TB2G5QyapHzQeBjSZFuXXanUpXa_!!491564172.jpg_400x400.jpg"/></p><p><br/></p><p style="text-align: center;">safdsdaf</p>'),
(5, 3, '关于我们', 1, 3, 1, 0, 0, 0, 0, 0, 5, 1486625346, 1499583091, '', '', '', '', '1', '', '&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 176, 240);&quot;&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;关于我们&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token（www.55token.com）由乐糖科技有限公司运营，是一家针对数字货币、区块链领域的融资服务平台，由一支有着丰富数字货币、区块链行业经验的团队成立。我们致力于为广大数字货币、区块链支持者提供一个安全、诚信、公平、透明的融资服务平台。基于对数字货币、区块链行业的深刻理解，55token平台坚持去中心化的经营理念，项目发起者可在55token平台发起项目筹款，收集用户需求及获取种子用户，并承诺提供回报给项目支持者，支持者可在55token平台发现及支持可靠的项目，并获得由项目发起者承诺的回报。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token平台将持续通过网络和技术实力，不断优化数字货币、区块链领域的ICO服务体验，全心全意为广大支持者服务，为广大支持者提供“7×12小时客服在线”，“7×12小时技术支持”等贴心可靠的客户服务。&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 176, 240);&quot;&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;我们的优势&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;li-name&quot; style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; font-size: 16px;&quot;&gt;专业团队&amp;nbsp;&amp;nbsp;/&amp;nbsp;&lt;/span&gt;我们由一支熟悉数字货币、区块链、互联网金融运作方式的团队开发并运营。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;li-name&quot; style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; font-size: 16px;&quot;&gt;投资资源&amp;nbsp;&amp;nbsp;/&amp;nbsp;&lt;/span&gt;我们拥有一批来自于数字货币、区块链、金融、科技、基金领域的投资资源。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;li-name&quot; style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; font-size: 16px;&quot;&gt;用户体验&amp;nbsp;&amp;nbsp;/&amp;nbsp;&lt;/span&gt;我们提供7×12小时客服在线及技术支持，确保产品每一环节使用流畅。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 176, 240);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;联系我们&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;地址&amp;nbsp;&amp;nbsp;/&amp;nbsp;&lt;/span&gt;广东省深圳市&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;电话&amp;nbsp;&amp;nbsp;/&amp;nbsp;&lt;/span&gt;4009605922&lt;span style=&quot;box-sizing: border-box; margin: 0px 0px 0px 10px; padding: 0px; color: red;&quot;&gt;(9:00-18:00)&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;邮箱&amp;nbsp;&amp;nbsp;/&amp;nbsp;&lt;/span&gt;business@55token.com（项目合作）；suggestion@55token.com（投诉建议）&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;Q群&amp;nbsp;&amp;nbsp;/&amp;nbsp;&lt;/span&gt;598585370&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),
(6, 3, '什么是ICO？', 1, 3, 1, 0, 0, 0, 0, 0, 1, 1486625633, 1497263589, '', '', '', '', '1', '', '&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;ICO（英文简称Initial Coin Offering）是一种为加密数字货币/区块链项目筹措资金的常用方式，早期参与者可以从中获得初始产生的加密数字货币作为回报。ico是国际上加密数字货币/区块链社区的产物，为区块链的开发者筹措足够的运营资金，大部分ico筹措的资金都是比特币或者其他加密数字货币。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;ICO一般会在区块链项目完成前进行，帮助项目筹措资金，以支持项目从创建团队到项目发行过程中所产生的费用。对于一些大的区块链项目，会将从ico中筹措的部分资金存放到基金里以支持项目的持续发展，包括代币的初始分配模型等。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;ICO参与者对于一个项目的成功非常重要，他们会在社区里为该区块链项目进行宣传，使它产生的代币在开始交易前就获得流动性。但ico的参与者最看重的依然是由项目发展或代币发行后价格升值带来的潜在收益。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;ICO与IPO的区别&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;IPO（英文简称Initial Public Offering）首次公开发行，指股份公司首次向社会公众公开招股的发行方式。与ICO相比，他们有共同点也有区别。&lt;/p&gt;&lt;p class=&quot;paragraph-title&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;共同点&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;都有通过出售股份来筹措资金；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;都有潜在支持者为了潜在的巨大收益而冒险参与。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p class=&quot;paragraph-title mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;不同点&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;ICO的大部分支持者是项目爱好者或不专业的投资者；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;ICO不需要注册经营牌照；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;ICO平台是第三方中立平台，投资者自担风险。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p class=&quot;paragraph mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;目前，ICO是一种类似于“软件预售代币”的模式，为了避免法律追究，我们更多称ICO是线上ICO方式。在2016年中，因为The DAO事件的发生，ICO第一次引起政府注意。The DAO项目是目前最大的ICO项目，共筹得1.5亿美元左右，可是在The DAO向世界大声宣告智能合约时代到来后一个月被黑客攻克，一时间引起了一片混乱，并遭到SEC（美国证券交易监督委员会）的调查。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;什么是代币&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;代币是由区块链产生的加密数字货币，可作为在区块链社区流通与结算的交易媒介，是整个区块链商业化中最普遍的应用方式。目前代币主要有应用代币、权益代币、债权代币三种，其中应用代币ICO是最早出现的，也是目前ICO最多的一种代币种类。包括比特币网络的比特币（BTC），以太坊的以太币（ETH）都是这样的应用代币。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;ICO的历史发展&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2013年7月：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;Mastercoin（现更名万事达币OMNI）是最早进行ICO的区块链的项目之一，曾在Bitcointalk论坛上ICO成功筹资5000 BTC。Mastercoin是建立在比特币协议之上的二代币，旨在帮助用户创建和交易加密货币以及其他类型的智能合同。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2013年12月：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;NXT（未来币）是第一个完全POS区块链，曾筹资21BTC（相当于当时6000美元），但是它的市值最高达到1亿美元，对投资者来说无疑是最成功的ICO项目之一。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2013年至2014年间：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;出现过许多疯狂的区块链项目成功的启动了ICO，它们的代币价格都出现过疯涨，不幸的是这些ICO项目最后都死在炒作过程中或者直接成为骗局。然而，在这段时间，也有十分成功的ICO项目，例如Ethereum。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2014年7月：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;Ethereum（以太坊ETH）国内外人气高，是迄今为止最大的一次ICO之一，筹措资金超过1800万美元，同时也是除比特币以外市值最高的加密数字货币。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2015年3月：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;Factom（公正通）通过Koinify平台ICO，利用比特币的区块链技术来革新商业社会和政府部门的数据管理和数据记录方式。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2016年3月：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;Lisk的去中心化应用(DAPPs)是使用Javascript语言进行编程，这是目前全球最简单也最流行的编程语言。Lisk此次总共筹集到14,080BTC和超过8,000万XCR，ICO所得金额在区块链项目ICO中排名第二位，仅次于以太坊。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2016年5月：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;The DAO是ICO史上最大的ICO项目，融资额高达1.6亿美元。DAO全称是Decentralized Autonomous Organization，即“去中心化的自治组织”，可理解为完全由计算机代码控制运作的类似公司的实体，在人类历史上还是首次。但是作为万众瞩目的ICO项目，最终因受到黑客攻击，再到争论中软硬分叉，最后以解散退回以太币而告终。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;2016年9月：&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;FirstBlood（第一滴血）将电竞竞赛服务跟区块链结合，使用了智能合约来解决奖励结构问题，ICO一开始即筹资600万美元，全球总共筹到465,312.999ETH。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;如何在ico365参与ICO&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;ico365是第三方线上区块链平台，并不是项目支持者或项目发起者中的任何一方，所有投资属于用户与用户之间的以自愿自担风险的前提下参与。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;在ico365上，项目发起者可在ico365平台发起项目筹款，收集用户需求及获取种子用户，并承诺提供回报给项目支持者，支持者可在ico365平台发现及支持可靠的项目，并获得由项目发起者承诺的回报。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;目前ico365主要以比特币方式筹资，将为平台每位注册用户提供专属的比特币地址。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; font-family: Arial, &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, 宋体; font-weight: 500; line-height: 1.1; color: rgb(85, 85, 85); margin: 0px; font-size: 30px; padding: 0px; white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `quan_article` (`article_id`, `cat_id`, `title`, `editor_id`, `check_state`, `is_show`, `is_top`, `is_best`, `is_new`, `is_discuss`, `discuss_total`, `show_total`, `add_time`, `last_time`, `link`, `rectangle_img`, `article_img`, `keywords`, `tag`, `article_brief`, `content`) VALUES
(7, 3, '服务条款', 1, 3, 1, 0, 0, 0, 0, 0, 2, 1486625711, 1499582734, '', '', '', '', '1', '', '&lt;h3 class=&quot;help-title&quot; style=&quot;box-sizing: border-box; font-family: Arial, &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, sans-serif, 宋体; font-weight: 500; line-height: 1.1; color: rgb(85, 85, 85); margin: 0px; font-size: 30px; padding: 0px; text-align: center; white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/h3&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;接受条款&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;www.55token.com（下称“55token”或“我们”）所提供的服务包含55token网站体验和使用、55token互联网消息传递服务以及55token提供的与55token网站有关的任何其他特色功能、内容或应用程序（合称“55token服务”）。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;无论用户是以“访客”（表示用户只是浏览55token网站）还是“会员”（表示用户已在55token注册并登录）的身份使用55token服务，均表示该用户同意遵守本使用协议。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果用户自愿成为55token会员并与其他会员交流（包括通过55token网站直接联系或通过55token各种服务而连接到的会员），以及使用55token网站及其各种附加服务，请务必认真阅读本协议并在注册过程中表明同意接受本协议。本协议的内容包含55token关于接受55token服务和在55token网站上发布内容的规定、用户使用55token服务所享有的权利、承担的义务和对使用55token服务所受的限制、以及55token的隐私权条款。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果用户选择使用某些55token服务，可能会收到要求其下载软件或内容的通知，和/或要求用户同意附加条款和条件的通知。除非用户选择使用的55token服务相关的附加条款和条件另有规定，附加的条款和条件都应被包含于本协议中。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token有权随时修改本协议文本中的任何条款。一旦55token对本协议进行修改，55token将会以公告形式发布通知。任何该等修改自发布之日起生效。如果用户在该等修改发布后继续使用55token服务，则表示该用户同意遵守对本协议所作出的该等修改。因此，请用户务必定期查阅本协议，以确保了解所有关于本协议的最新修改。如果用户不同意55token对本协议进行的修改，请用户离开55token网站并立即停止使用55token服务。同时，用户还应当删除个人档案并注销会员资格。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;遵守法律&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;当使用55token服务时，用户同意遵守中华人民共和国（下称“中国”）的相关法律法规，包括但不限于《中华人民共和国宪法》、《中华人民共和国合同法》、《中华人民共和国电信条例》、《互联网信息服务管理办法》、《互联网电子公告服务管理规定》、《中华人民共和国保守国家秘密法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国计算机信息系统安全保护条例》、《计算机信息网络国际联网安全保护管理办法》、《中华人民共和国著作权法》及其实施条例、《互联网著作权行政保护办法》等。用户只有在同意遵守所有相关法律法规和本协议时，才有权使用55token服务（无论用户是否有意访问或使用此服务）。请用户仔细阅读本协议并将其妥善保存。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;用户帐号、密码及安全&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户应提供及时、详尽、准确的个人资料，并不断及时更新注册时提供的个人资料，保持其详尽、准确。所有用户输入的资料将引用为注册资料。55token不对因用户提交的注册信息不真实或未及时准确变更信息而引起的问题、争议及其后果承担责任。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户不应将其帐号、密码转让、出借或告知他人，供他人使用。如用户发现帐号遭他人非法使用，应立即通知55token。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用的，55token不承担任何责任。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;隐私权政策&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户提供的注册信息及55token保留的用户所有资料将受到中国相关法律法规和55token《隐私权政策》的规范。《隐私权政策》构成本协议不可分割的一部分。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;上传内容&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户通过任何55token提供的服务上传、张贴、发送（通过电子邮件或任何其它方式传送）的文本、文件、图像、照片、视频、声音、音乐、其他创作作品或任何其他材料（以下简称“内容”，包括用户个人的或个人创作的照片、声音、视频等），无论是公开还是私下传播，均由用户和内容提供者承担责任，55token不对该等内容的正确性、完整性或品质作出任何保证。用户在使用55token服务时，可能会接触到令人不快、不适当或令人厌恶之内容，用户需在接受服务前自行做出判断。在任何情况下，55token均不为任何内容负责（包括但不限于任何内容的错误、遗漏、不准确或不真实），亦不对通过55token服务上传、张贴、发送（通过电子邮件或任何其它方式传送）的内容衍生的任何损失或损害负责。55token在管理过程中发现或接到举报并进行初步调查后，有权依法停止任何前述内容的传播并采取进一步行动，包括但不限于暂停某些用户使用55token的全部或部分服务，保存有关记录，并向有关机关报告。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;用户行为&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户在使用55token服务时，必须遵守中华人民共和国相关法律法规的规定，用户保证不会利用55token服务进行任何违法或不正当的活动，包括但不限于下列行为∶&lt;/p&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-name&quot; style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; font-size: 16px;&quot;&gt;1、上传、展示、张贴或以其它方式传播含有下列内容之一的信息：&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;反对宪法及其他法律的基本原则的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;损害国家荣誉和利益的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;煽动民族仇恨、民族歧视、破坏民族团结的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;破坏国家宗教政策，宣扬邪教和封建迷信的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;散布谣言，扰乱社会秩序，破坏社会稳定的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;侮辱或者诽谤他人，侵害他人合法权利的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;含有虚假、有害、胁迫、侵害他人隐私、骚扰、中伤、粗俗、猥亵、或其它道德上令人反感的内容；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其它内容的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;不得为任何非法目的而使用网络服务系统；&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-name&quot; style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; font-size: 16px;&quot;&gt;2、用户同时保证不会利用55token服务从事以下活动：&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;未经允许，进入计算机信息网络或者使用计算机信息网络资源的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;未经允许，对计算机信息网络功能进行删除、修改或者增加的；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；故意制作、传播计算机病毒等破坏性程序的；&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-name&quot; style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; font-size: 16px;&quot;&gt;3、其他危害计算机信息网络安全的行为：&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;如用户在使用网络服务时违反任何上述规定，55token或经其授权者有权要求该用户改正或直接采取一切必要措施（包括但不限于更改、删除相关内容、暂停或终止相关用户使用55token服务）以减轻和消除该用户不当行为造成的影响。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;用户不得对55token服务的任何部分或全部以及通过55token取得的任何形式的信息，进行复制、拷贝、出售、转售或用于任何其它商业目的。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;用户须对自己在使用55token服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：停止侵害行为，向受到侵害者公开赔礼道歉，恢复受到侵害这的名誉，对受到侵害者进行赔偿。如果55token网站因某用户的非法或不当行为受到行政处罚或承担了任何形式的侵权损害赔偿责任，该用户应向55token进行赔偿（不低于55token向第三方赔偿的金额）并通过全国性的媒体向55token公开赔礼道歉。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;知识产权和其他合法权益（包括但不限于名誉权、商誉等）&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token并不对用户发布到55token服务中的文本、文件、图像、照片、视频、声音、音乐、其他创作作品或任何其他材料（前文称为“内容”）拥有任何所有权。在用户将内容发布到55token服务中后，用户将继续对内容享有权利，并且有权选择恰当的方式使用该等内容。如果用户在55token服务中或通过55token服务展示或发表任何内容，即表明该用户就此授予55token一个有限的许可以使55token能够合法使用、修改、复制、传播和出版此类内容。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户同意其已就在55token服务所发布的内容，授予55token可以免费的、永久有效的、不可撤销的、非独家的、可转授权的、在全球范围内对所发布内容进行使用、复制、修改、改写、改编、发行、翻译、创造衍生性著作的权利，及/或可以将前述部分或全部内容加以传播、表演、展示，及/或可以将前述部分或全部内容放入任何现在已知和未来开发出的以任何形式、媒体或科技承载的著作当中。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户声明并保证：用户对其在55token服务中或通过55token服务发布的内容拥有合法权利;用户在55token服务中或通过55token服务发布的内容不侵犯任何人的肖像权、隐私权、著作权、商标权、专利权、及其它合同权利。如因用户在55token服务中或通过55token服务发布的内容而需向其他任何人支付许可费或其它费用，全部由该用户承担。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token服务中包含55token提供的内容，包含用户和其他55token许可方的内容（下称“55token的内容”）。55token的内容受《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国专利法》、《中华人民共和国反不正当竞争法》和其他相关法律法规的保护，55token拥有并保持对55token的内容和55token服务的所有权利。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;国际使用之特别警告&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户已了解国际互联网的无国界性，同意遵守所有关于网上行为、内容的法律法规。用户特别同意遵守有关从中国或用户所在国家或地区输出信息所可能涉及、适用的全部法律法规。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;费用和付款&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;加入55token免费，但是我们对于某些服务是收取费用的。当您使用某项服务时，您将有机会看到您需要支付费用的项目，费用的变化在我们在网站上为您公开后生效。您负责支付使用该服务产生的所有费用和税款。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;从参与者处获得的资金通过第三方支付平台支付，55token对第三方支付平台的支付性能不承担责任。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;赔偿&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;由于用户通过55token服务上传、张贴、发送或传播的内容，或因用户与本服务连线，或因用户违反本使用协议，或因用户侵害他人任何权利而导致任何第三人向55token提出赔偿请求，该用户同意赔偿55token及其股东、子公司、关联企业、代理人、品牌共有人或其它合作伙伴相应的赔偿金额（包括55token支付的律师费等），以使55token的利益免受损害。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;关于使用及储存的一般措施&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户承认55token有权制定关于服务使用的一般措施及限制，包括但不限于55token服务将保留用户的电子邮件信息、用户所张贴内容或其它上载内容的最长保留期间、用户一个帐号可收发信息的最大数量、用户帐号当中可收发的单个信息的大小、55token服务器为用户分配的最大磁盘空间，以及一定期间内用户使用55token服务的次数上限（及每次使用时间之上限）。通过55token服务存储或传送的任何信息、通讯资料和其它任何内容，如被删除或未予储存，用户同意55token毋须承担任何责任。用户亦同意，超过一年未使用的帐号，55token有权关闭。55token有权依其自行判断和决定，随时变更相关一般措施及限制。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;服务的修改&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户了解并同意，无论通知与否，55token有权于任何时间暂时或永久修改或终止部分或全部55token服务，对此，55token对用户和任何第三人均无需承担任何责任。用户同意，所有上传、张贴、发送到55token的内容，55token均无保存义务，用户应自行备份。55token不对任何内容丢失以及用户因此而遭受的相关损失承担责任。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;终止服务&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户同意55token可单方面判断并决定，如果用户违反本使用协议或用户长时间未能使用其帐号，55token可以终止该用户的密码、帐号或某些服务的使用，并可将该用户在55token服务中留存的任何内容加以移除或删除。55token亦可基于自身考虑，在通知或未通知之情形下，随时对该用户终止部分或全部服务。用户了解并同意依本使用协议，无需进行事先通知，55token可在发现任何不适宜内容时，立即关闭或删除该用户的帐号及其帐号中所有相关信息及文件，并暂时或永久禁止该用户继续使用前述文件或帐号。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;与广告商进行的交易&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户通过55token服务与广告商进行任何形式的通讯或商业往来，或参与促销活动（包括相关商品或服务的付款及交付），以及达成的其它任何条款、条件、保证或声明，完全是用户与广告商之间的行为。除有关法律法规明文规定要求55token承担责任外，用户因前述任何交易、沟通等而遭受的任何性质的损失或损害，55token均不予负责。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;链接&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户了解并同意，对于55token服务或第三人提供的其它网站或资源的链接是否可以利用，55token不予负责；存在或源于此类网站或资源的任何内容、广告、项目或其它资料，55token亦不保证或负责。因使用或信赖任何此类网站或资源发布的或经由此类网站或资源获得的任何商品、服务、信息，如对用户造成任何损害，55token不负任何直接或间接责任。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;禁止商业行为&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户同意不对55token服务的任何部分或全部以及用户通过55token的服务取得的任何物品、服务、信息等，进行复制、拷贝、出售、转售或用于任何其它商业目的。&lt;/p&gt;&lt;p&gt;&amp;nbsp;55token&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;的专属权利&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户了解并同意，55token服务及其所使用的相关软件(以下简称&amp;quot;服务软件&amp;quot;)含有受到相关知识产权及其它法律保护的专有保密资料。用户同时了解并同意，经由55token服务或广告商向用户呈现的赞助广告或信息所包含之内容，亦可能受到著作权、商标、专利等相关法律的保护。未经55token或广告商书面授权，用户不得修改、出售、传播部分或全部服务内容或软件，或加以制作衍生服务或软件。55token仅授予用户个人非专属的使用权，用户不得(也不得允许任何第三人)复制、修改、创作衍生著作，或通过进行还原工程、反向组译及其它方式破译原代码。用户也不得以转让、许可、设定任何担保或其它方式移转服务和软件的任何权利。用户同意只能通过由55token所提供的界面而非任何其它方式使用55token服务。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;担保与保证&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token使用协议的任何规定均不会免除因55token造成用户人身伤害或因故意造成用户财产损失而应承担的任何责任。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户使用55token服务的风险由用户个人承担。55token对服务不提供任何明示或默示的担保或保证，包括但不限于商业适售性、特定目的的适用性及未侵害他人权利等的担保或保证。&lt;/p&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-name&quot; style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; font-size: 16px;&quot;&gt;55token亦不保证以下事项：&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;服务将符合用户的要求；&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;服务将不受干扰、及时提供、安全可靠或不会出错；&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;使用服务取得的结果正确可靠；&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;用户经由55token服务购买或取得的任何项目、服务、资讯或其它信息将符合用户的期望，且软件中任何错误都将得到更正；&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;用户应自行决定使用55token服务下载或取得任何资料且自负风险，因任何资料的下载而导致的用户电脑系统损坏或数据流失等后果，由用户自行承担；&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;用户经由55token服务获知的任何建议或信息(无论书面或口头形式)，除非使用协议有明确规定，将不构成55token对用户的任何保证。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;责任限制&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;在任何情况下，55token及其股东、创建人、高级职员、董事、代理人、关联公司、母公司、子公司和雇员均不以任何明示或默示的方式对您使用55token服务而产生的任何形式的直接或间接损失承担法律责任，包括但不限于资金损失、利润损失、营业中断损失等，并且55token方不保证网站内容的真实性、充分性、及时性、可靠性、 完整性和有效性，并且免除任何由此引起的法律责任。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;55token不能保证也没有义务保证第三方网站上的信息的真实性和有效性。您应按照第三方网站的服务协议使用第三方网站，而不是按照本协议。第三方网站的内容、产品、广告和其他任何信息均由您自行判断并承担风险，而与55token无关。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;因为55token或者涉及的第三方网站的设备、系统存在缺陷、黑客攻击、网络故障、电力中断、计算机病毒或其他不可抗力因素造成的损失，55token均不负责赔偿，您的补救措施只能是与55token协商终止本协议并停止使用55token。但是，中国现行法律、法规另有规定的除外。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;您承诺合法使用55token提供的服务及网站内容。您不得利用本服务从事侵害他人合法权益之行为，不得在55token从事任何可能违反中国的法律、法规、规章和政府规范性文件的行为或者任何未经授权的行为，如擅自进入55token的未公开的系统、不正当的使用账号密码和网站的任何内容等。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;您不得使用55token提供的服务或其他电子邮件转发服务发出垃圾邮件或其他可能违反本协议的内容。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;55token没有义务监测网站内容，但是您确认并同意55token有权不时地根据法律、法规、政府要求透露、修改或者删除必要的信息，以便更好地运营55token并保护自身及55token的其他合法用户。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;55token中全部内容的版权均属于55token所有，该等内容包括但不限于文本、数据、文章、设计、源代码、软件、图片、照片及其他全部信息（以下称“网站内容”）。 网站内容受中华人民共和国著作权法及各国际版权公约的保护。未经55token事先书面同意，您承诺不以任何方式、不以任何形式复制、模仿、传播、出版、公布、展 示网站内容，包括但不限于电子的、机械的、复印的、录音录像的方式和形式等。您承认网站内容是属于55token的财产。未经55token书面同意，您亦不得将55token包 含的资料等任何内容镜像到任何其他网站或者服务器。任何未经授权对网站内容的使用均属于违法行为，55token将追究您的法律责任。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;&lt;span class=&quot;li-point mt6&quot; style=&quot;box-sizing: border-box; margin: 6px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;由于您违反本协议或任何法律、法规或侵害第三方的权利，而引起第三方对55token提出的任何形式的索赔、要求、诉讼，55token有权向您追偿相关损失，包括但不限于55token的法律费用、名誉损失、及向第三方支付的补偿金等。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;一般性条款&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;本使用协议构成用户与55token之间的正式协议，并用于规范用户的使用行为。在用户使用55token服务、使用第三方提供的内容或软件时，在遵守本协议的基础上，亦应遵守与该等服务、内容、软件有关附加条款及条件。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;本使用协以及用户与55token之间的关系，均受到中华人民共和国法律管辖。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;用户与55token就服务本身、本使用协议或其它有关事项发生的争议，应通过友好协商解决。协商不成的，应向相关机构提起诉讼。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token未行使或执行本使用协议设定、赋予的任何权利，不构成对该等权利的放弃。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;本使用协议中的任何条款因与中华人民共和国法律相抵触而无效，并不影响其它条款的效力。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;本使用协议的标题仅供方便阅读而设，如与协议内容存在矛盾，以协议内容为准。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;举报&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如用户发现任何违反本服务条款的事情，请及时通知55token。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `quan_article` (`article_id`, `cat_id`, `title`, `editor_id`, `check_state`, `is_show`, `is_top`, `is_best`, `is_new`, `is_discuss`, `discuss_total`, `show_total`, `add_time`, `last_time`, `link`, `rectangle_img`, `article_img`, `keywords`, `tag`, `article_brief`, `content`) VALUES
(8, 3, '隐私权政策', 1, 3, 1, 0, 0, 0, 0, 0, 2, 1486626009, 1499582763, '', '', '', '', '1', '', '&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;隐私权政策适用范围&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph-title mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;包括55token如何收集、处理、保护：&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;用户在登录本网站和服务器时留下的个人身份信息；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;用户通过本网站和服务器与其他用户或非用户之间传送的各种资讯；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;55token与商业伙伴共享的其他用户或非用户的各种信息。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;信息收集、使用和认证&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph-title&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;您提供的信息&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;在您登记注册55token帐户，或使用该帐户，或参加其他55token及与之相关需要注册的服务或推广活动时，我们会要求您提供个人信息(包括但不限于您的电子邮件地址、帐户密码以及昵称等)。这些信息会以加密方式保存在安全的服务器上。我们会将从您的帐户下采集的个人信息与其他从55token服务中或从第三方获得的信息和资讯进行整合，以便向您提供更好的用户体验和改善我们的服务质量。在某些服务中，我们会给予提示，由您亲自决定是否参与上述信息的整合。&lt;/p&gt;&lt;p class=&quot;paragraph-title mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;身份认证&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;您同意55token可以自行或通过合作的第三方机构对您提交或55token搜集的用户信息（包括但不限于您的个人身份证信息等）进行核实，并对获得的核实结果根据本协议及有关文件进行查看、使用和留存等操作。&lt;/p&gt;&lt;p class=&quot;paragraph-title mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;日志信息&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;当您使用55token的服务时，我们的主机会自动记录您的浏览器在访问网站时所发送的信息。主机日志信息包括但不限于您的网路请求、IP地址、浏览器类型、浏览器使用的语言、请求的日期和时间，以及一个或多个可以对您的浏览器进行辨识的cookie。&lt;/p&gt;&lt;p class=&quot;paragraph-title mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;用户交流&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;当您与55token通过电子邮件或其他方式进行交流时，我们可能会记录这些交流内容用以处理您的问题以及改善我们的服务。&lt;/p&gt;&lt;p class=&quot;paragraph mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token仅对本隐私权政策和/或具体服务的隐私声明中允许的目的而对用户的个人信息进行处理。除上述已列明部分外，这些目的还包括：向用户提供项目或服务，包括列明定制的内容和广告；审计、调研和分析，以维持、保护和改善55token的服务；确保网站的技术运作；开发新服务；以及其他55token运营所需要的目的。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;信息公开与共享&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph-title mt20&quot; style=&quot;box-sizing: border-box; margin-top: 20px; margin-bottom: 10px; padding: 0px; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;55token不会将您的个人信息故意透露、出租或出售给任何第三方。但以下情况除外：&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;用户本人同意与第三方共享信息；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;只有透露用户的个人信息，才能提供用户所要求的某种项目和服务；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;应代表55token提供项目或服务的主体的要求提供（除非我们另行通知，否则该等主体无权将相关用户个人信息用于提供项目和服务之外的其他用途）：根据法律法规或行政命令的要求提供；因外部审计需要而提供；用户违反了55token服务条款或任何其他项目及服务的使用规定；经55token评估，用户的帐户存在风险，需要加以保护。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;编辑和删除个人帐户资料的权限&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;您有权在任何时候编辑您在55token的帐户信息，您也可以填写相关申请表格，要求删除个人帐户，但是您无条件同意在您的帐户删除后，该帐户内及与该帐户相关的信息仍然保留在55token档案记录中，除上述第三条规定的情况外，我们将为您保密。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;安全保障&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;您的55token帐户具有密码保护功能，以确保您的隐私及信息安全。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;隐私权政策的修订&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token会不时对隐私权政策进行修改。如有修改，我们会在修改后及时公告相关修改内容及新规定，以便您知悉和使用。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;问题与建议&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果您有任何问题和建议，请随时通知我们。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),
(9, 3, '身份认证协议', 1, 3, 1, 0, 0, 0, 0, 0, 1, 1486626100, 1500000859, '', '', '', '', '1', '', '&lt;p&gt;您确认，在开始“身份认证”（以下简称“认证”）前，您已详细阅读了本协议所有内容，一旦您开始认证流程，即表示您充分理解并同意接受本协议的全部内容。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;为了提高融资投资过程中的安全性和会员身份的可信度，55token向您提供认证服务。在您申请认证前，您必须先注册成为55token用户。55token有权采取各种其认为必要手段对用户的身份进行识别。但是，作为普通的网络服务提供商，55token所能采取的方法有限，而且在网络上进行用户身份识别也存在一定的困难，因此，55token对完成认证的用户身份的准确性和绝对真实性不做任何保证。&lt;/p&gt;&lt;p&gt;55token向你提供的认证服务包括：个人身份认证和机构身份认证。55token有权记录并保存您完成以上程序提供给55token的信息和55token获取的结果信息，亦有权根据本协议的约定向您或第三方提供您是否通过认证的结论以及您的身份信息。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;关于认证服务的理解与认同&lt;/p&gt;&lt;p&gt;认证服务是由55token提供的一项身份识别服务。除非本协议另有约定，一旦您的55token账户完成了认证，相应的身份信息和认证结果将不因任何原因被修改或取消；如果您的身份信息在完成认证后发生了变更，您应向55token提供相应有权部门出具的凭证，由55token协助您变更您55token账户的对应认证信息。&lt;/p&gt;&lt;p&gt;55token有权单方随时修改或变更本协议内容，并通过55token网站公告变更后的协议文本，无需单独通知您。本协议进行任何修改或变更后，您还继续使用55token服务和/或认证服务的，即代表您已阅读、了解并同意接受变更后的协议内容；您如果不同意变更后的协议内容，应立即停用55token服务和认证服务。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;身份信息识别&lt;/p&gt;&lt;p&gt;中华人民共和国（以下简称“中国”）个人55token用户提供以下证件用于认证：认证当时处在有效期内的身份证、护照等明确标有身份证号的证件之一（需要在线上传证件时，必须是彩色原件扫描件，或者彩色数码拍摄件，第二代身份证需要同时提交正反两面，户籍证明提供日后的有效期在三个月以上，除临时身份证外，有效期三个月以内的证件不予受理)&lt;/p&gt;&lt;p&gt;法律规定不具有完全民事行为能力的自然人，55token不向其提供认证服务。&lt;/p&gt;&lt;p&gt;机构55token用户向55token申请认证服务时，应向本公司提供以下资料：商事主体公司名称、注册号、法人代表等信息。&lt;/p&gt;&lt;p&gt;通过身份信息识别的55token用户不能自行修改已经认证的信息，包括但不限于公司名称、姓名以及身份证件号码等。大陆个人55token用户认证的有效期与其提供的身份证件有效期一致，但最长自认证完成日起不超过20年，户籍证明从通过审核当日开始起计算，有效期一年。其他个人55token用户认证信息的有效期按证件有效期和担保期限两者中较短的有效期计算，但最长自认证完成日起不超过20年。机构55token用户认证信息的有效期一般为一年，若营业期限距离认证通过日少于一年则应以营业期限为准。有效期满后，相应的55token账户只能使用原先认证的身份信息或经合法变更后的身份信息进行再次认证。&lt;/p&gt;&lt;p&gt;在55token用户对其55token账户进行取回密码等操作时，需要按照本公司的提示出示可确认其持有该账户的个人身份证件，相关证件的要求依照本条前5项约定。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;认证资料的管理&lt;/p&gt;&lt;p&gt;您在认证时提交给55token的认证资料，即不可撤销的授权由55token保留。55token承诺除法定或约定的事由外，不公开或编辑或透露您的认证资料及保存在55token的非公开内容用于商业目的，但本条第1项规定以及以下情形除外：&lt;/p&gt;&lt;p&gt;您授权55token透露的相关信息；&lt;/p&gt;&lt;p&gt;55token向国家司法及行政机关提供；&lt;/p&gt;&lt;p&gt;55token向平台关联企业提供；&lt;/p&gt;&lt;p&gt;第三方和55token一起为用户提供服务时，该第三方向您提供服务所需的相关信息；&lt;/p&gt;&lt;p&gt;基于解决您与第三方民事纠纷的需要，55token有权向该第三方提供您的身份信息。&lt;/p&gt;&lt;p&gt;&amp;nbsp;特别声明&lt;/p&gt;&lt;p&gt;55token用户在会员身份认证前，应当仔细阅读本协议。55token用户在会员身份认证后，表示已经认真阅读本协议，并同意接受本协议条款。&lt;/p&gt;&lt;p&gt;对于拒绝同意本协议的用户，55token平台有权拒绝为其提供需会员身份认证后的服务。&lt;/p&gt;&lt;p&gt;55token会员应当遵守国家有关法律法规。&lt;/p&gt;&lt;p&gt;55token会员身份认证应当提供真实、准确、完整的有效身份证明文件等身份认证资料，并对身份认证资料的真实性、准确性与完整性负全部责任。&lt;/p&gt;&lt;p&gt;55token会员应当对55token平台录入的身份认证资料予以确认并对确认结果负责。&lt;/p&gt;&lt;p&gt;55token认证有效身份证明文件有重大变化时，应当及时向55token平台申请变更。否则，因此导致的经济损失和法律责任由认证会员承担。&lt;/p&gt;&lt;p&gt;55token认证会员保证认证成功后账户的合法合规使用，并对该账户下的一切活动（包括但不限于投资承诺等）承担法律责任。55token认证会员账户不得转借第三人，对因违规使用或将认证账户转借他人导致的经济损失和法律责任由认证会员承担。&lt;/p&gt;&lt;p&gt;55token平台应当对认证会员注册的开户资料保密，但法律法规规定必须公开的除外。&lt;/p&gt;&lt;p&gt;55token平台仅对会员所提供的身份认证资料的完整性进行审核，核查会员身份证明文件是否有效、注册申请表所填写内容与身份证明文件相关内容是否一致。但是，这并不表明对用户所提供的开户资料做出真实性判断或者保证。对下列情况之一所引起的法律纠纷，55token平台不承担责任：&lt;/p&gt;&lt;p&gt;（1）使用虚假资料进行身份认证；&lt;/p&gt;&lt;p&gt;（2）违规使用他人合法证件进行身份认证；&lt;/p&gt;&lt;p&gt;（3）法律法规规定不能买卖股权的自然人会员和法人进行身份认证；&lt;/p&gt;&lt;p&gt;（4）其他违规进行身份认证的情况。&lt;/p&gt;&lt;p&gt;55token平台修订业务规则及本协议时，应当在网站公告，新规则自公告之日起生效。不需知会每个认证会员。认证会员应当按照修订后的业务规则执行。&lt;/p&gt;&lt;p&gt;&amp;nbsp;协议关系&lt;/p&gt;&lt;p&gt;本协议构成《55token服务条款》的有效组成部分；两者约定不一致或本协议未约定的内容，以《55token服务条款》的约定为准。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),
(10, 3, '发起者协议', 1, 3, 1, 0, 0, 0, 0, 0, 2, 1486626308, 1500000814, '', '', '', '', '1', '', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;55token一家针对数字货币、区块链领域的ICO融资服务平台，发起者可以在55token区块链平台上发起区块链项目的筹资需求，并承诺提供不同形式的回报给支持者。为保护支持者的合法权益，规范项目发起者的行为，维护ICO平台秩序，特拟定本协议。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;本协议由55token（www.55token.com）与登录、使用55token区块链融资服务平台的项目发起者（以下简称 “发起者”）共同遵守。&lt;/p&gt;&lt;p&gt;&amp;nbsp;协议生效和适用范围&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;本协议内容包括协议正文以及55token已经发布的或将来可能发布的各类规则、操作流程。所有规则为本协议不可分割的一部分，与协议正文具有同等的法律效力。发起者通过网络页面点击确认或以其他方式选择接受本协议，即表示您同意接受本协议（包括修订后的各项协议、规则和流程）的全部内容。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;当发起者在55token区块链平台发起项目时，即表示同意与55token达成协议并接受本协议的全部约定内容。&lt;/p&gt;&lt;p&gt;55token有权根据需要不时修改本协议或各类规则、操作流程，如本协议有任何变更，55token将在网站上以公示形式通知，且无需征得发起者的事先同意。修改后的协议及规则一经公示即生效，成为本协议的一部分。如发起者继续登录或使用55token平台的，即视为已阅读并接受修改后的协议。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;发起者应该按照本协议约定行使权利并履行义务。如不能接受本协议的约定，包括但不限于不能接受修订后的协议及各类规则，则应立即停止使用55token平台提供的服务。如发起者继续使用服务，则表示同意并接受本协议及各类规则的约束。&lt;/p&gt;&lt;p&gt;&amp;nbsp;项目内容规范&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;在55token平台上发起的项目应为数字货币、区块链领域且具有可执行性的项目，项目目标须是明确、具体、可衡量的。&lt;/p&gt;&lt;p&gt;项目的内容必须包含“我想要做什么事情”、“项目风险”、“项目回报”、“为什么需要支持”等相关信息。&lt;/p&gt;&lt;p&gt;项目内容及发起者上传的相关项目信息（包含但不限于文字、图片、视频等）须为发起者原创，如非发起者原创，则发起者应已获得权利人的相应授权，且权利人允许发起者转授权给55token及55token的关联公司在55token网站及55token关联公司的其他官方网站及线下媒体出于宣传55token平台的目的而进行永久的免费宣传、推广、使用。&lt;/p&gt;&lt;p&gt;项目内容须符合法律法规及55token网站的相关规定；55token平台有权对项目提出特殊要求。&lt;/p&gt;&lt;p&gt;以下项目内容或相关项目信息不允许在本平台发布：&lt;/p&gt;&lt;p&gt;（1）违反国家法律规定的违禁品，如毒品、枪支弹药及管制刀具相关；&lt;/p&gt;&lt;p&gt;（2）色情、赌博、暴力、恐怖、反动、政治与宗教相关；&lt;/p&gt;&lt;p&gt;（3）其他国家法律规定和55token网规定的禁限售等违禁品信息。&lt;/p&gt;&lt;p&gt;55token平台对项目的审核仅针对项目的合理性、项目内容与回报的匹配度等进行审核，发起者应保证发起的项目内容合法，且不侵犯他人合法权益。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;项目回报规范&lt;/p&gt;&lt;p&gt;项目回报必须与项目具有关联性。回报应为项目进行过程中发起者产出的衍生成果或相关商品。&lt;/p&gt;&lt;p&gt;项目回报应当明确、具体。&lt;/p&gt;&lt;p&gt;实物类回报不得是具有较高收货风险的商品。&lt;/p&gt;&lt;p&gt;项目回报产品在55token平台设置的最高单价应低于项目成功结束后二个月内的产品市场售价，否则应将售价差额发还支持者。&lt;/p&gt;&lt;p&gt;项目回报，应最先发放给55token平台支持该项目的支持者。否则将视为发起者违约，需承担违约责任及罚金。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;发起者资格&lt;/p&gt;&lt;p&gt;项目发起者应为55token平台的注册用户，完全理解并接受本协议。&lt;/p&gt;&lt;p&gt;发起者可以为自然人、法人或其他组织。如发起者为自然人的，应为年满18周岁并具有完全民事行为能力和民事权利能力的自然人，且为中国公民，或能提供长期在中国居住证明的非中国公民。如项目发起者未满18周岁，应由其监护人代为履行本协议权利和义务。如发起者为法人或其他组织的，则应是在中国境内合法成立、注册可独立承担法律责任的法律实体。&lt;/p&gt;&lt;p&gt;发起者在发起项目前，应在线完成必要的身份认证和资质认证，包括但不限于身份证、护照、学历证明等的实名认证。发起者在发起项目时同意并授权55token平台公示认证信息。&lt;/p&gt;&lt;p&gt;发起者应按照55token的要求开立账户，以接收支持者的支持款。&lt;/p&gt;&lt;p&gt;如发起者申请发起的项目为带有公益性质的项目，则发起者应是合法成立的公益组织或与合法成立的公益组织共同发起项目。&lt;/p&gt;&lt;p&gt;55token平台将根据申请发起的项目类型不同，对发起者需要满足的其他资格进行限定和要求。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;发起者行为规范&lt;/p&gt;&lt;p&gt;项目审核通过后，发起者不得编辑、修改项目内容，如要修改需向55token平台提交修改项目申请。&lt;/p&gt;&lt;p&gt;项目筹款成功前，发起者如因故需取消项目的，需向55token平台提交取消申请，55token平台审核通过后项目取消，所有筹集到的资金由系统退回给支持者。&lt;/p&gt;&lt;p&gt;项目筹款成功后，发起者应严格按照项目计划执行，并在项目计划执行过程中积极与支持者互动。&lt;/p&gt;&lt;p&gt;项目筹款成功后，如项目因故可能产生延期或无法按原定项目计划执行的，发起者应及时通过55token平台及其他途径告知支持者。&lt;/p&gt;&lt;p&gt;发起者应按照承诺发放项目回报（项目衍生成果及/或相关商品），发放的项目回报应无质量或权利瑕疵，如因项目回报发生纠纷，55token有权协助支持者要求发起者承担相关赔偿责任。&lt;/p&gt;&lt;p&gt;发起者在项目回报日前未完成回报，且无合理理由的，视为项目延期。项目延期15天（含）以上的，视为项目失败。55token平台有权通过系统直接向未确认收货的支持者退还支持款；发起者应当将支持款返还55token平台。&lt;/p&gt;&lt;p&gt;项目筹款成功后，因任何主观因素或客观因素导致项目最终无法完成的，发起者应及时通过55token平台及其他途径告知支持者，并向支持者退还项目支持款。&lt;/p&gt;&lt;p&gt;公益相关项目发起者应在完成项目后的合理时间内上传筹款项用于公益用途的相关凭证。&lt;/p&gt;&lt;p&gt;发起者应提交真实、准确的项目信息（项目信息如有任何更新，应及时向55token平台提交更新后的信息），并自主上传、发布项目。发起者应妥善保管55token平台的账号和密码，任何情况下发起者须对在该账号下发生的所有活动（包括但不限于信息披露、发布信息、上传图片或视频、网上点击同意或提交各类规则协议等）承担法律责任。&lt;/p&gt;&lt;p&gt;发起者应自行承担准备或发布、完成项目而发生的费用，自行缴纳因从事本协议项下行为而产生的相应税款。&lt;/p&gt;&lt;p&gt;发起者了解并同意，不得从事任何违反法律法规或侵犯任何第三方权利的行为，包含但不限于不得自行或允许任何第三方使用发起者的账号通过55token平台从事与下述相关的行为或发布与下述相关的信息：&lt;/p&gt;&lt;p&gt;（1）侵犯任何第三方的专利、商标、著作权、商业秘密或其他合法权利，或违反任何法律或合同的；&lt;/p&gt;&lt;p&gt;（2）发起者的行为或项目信息是虚假的、误导性的、不准确的；&lt;/p&gt;&lt;p&gt;（3）发起者的行为或项目信息涉嫌非法、威胁、辱骂、骚扰、诽谤、中伤、欺骗、欺诈、侵权、淫秽、冒犯、亵渎或侵犯他人隐私的；&lt;/p&gt;&lt;p&gt;（4）未经接收方允许而向接收方发布任何邮件、宣传材料或广告信息；&lt;/p&gt;&lt;p&gt;（5）进行任何危害信息网络安全的行为，故意传播恶意程序或病毒以及其他破坏、干扰正常网络信息服务的行为。&lt;/p&gt;&lt;p&gt;对于发起者通过55token平台发布的涉嫌违法或涉嫌侵犯他人合法权利或违反本协议的信息，55token有权依据55token的判断不经通知发起者即予以修改、编辑、删除等。&lt;/p&gt;&lt;p&gt;发起者违反上述行为规范对任意第三方造成损害的，发起者均应当以自己的名义独立承担所有的法律责任，并应确保55token免于因此产生损失或增加费用。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;支持款交付及平台使用费&lt;/p&gt;&lt;p&gt;55token平台对支持款的交付及平台使用费的收取均由55token平台进行收付。&lt;/p&gt;&lt;p&gt;发起者使用55token平台服务，55token将向发起者收取募集总金额5%的平台服务费。发起者与55token另有约定的除外。&lt;/p&gt;&lt;p&gt;筹款成功后55token平台将在5个工作日内将募集总金额扣除平台服务费后剩余款项的70%交付给发起者，并预留余下的30%作为确保支持者获得回报的保证金，在项目成功无纠纷且所有支持者得到承诺回报的情况下，55token将把这部分款项交付给发起者。发起者与55token另有约定的除外。&lt;/p&gt;&lt;p&gt;根据市场与技术的发展，55token保留变更保证金及平台服务费比例的权利。在变更前，55token将以适当的方式通知发起者变更情况，包括但不限于在55token网站上公示。发起者有权选择接受或拒绝接受，如果发起者选择拒绝的，应立即停止使用55token平台的服务；发起者继续使用55token平台的，即视为发起者同意55token的费用变更。变更后的收费比例对已经发布的项目无溯及力。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;纠纷处理&lt;/p&gt;&lt;p&gt;虚拟类回报不支持退换货，也不支持退款，如有发货错误、漏发或支持者收到的虚拟类回报存在质量问题的，发起者应在七日内免费予以重发或补发。&lt;/p&gt;&lt;p&gt;实物类回报如有错发、漏发的，发起者应在七日内免费予以重发或补发，发起者无法重发或补发的，应退相应款项给支持者。&lt;/p&gt;&lt;p&gt;项目回报有质量问题的，应参照国家相关售后政策进行处理。&lt;/p&gt;&lt;p&gt;发起者怠于处理纠纷或处理纠纷不符合55token相关规定的，55token平台有权利用预留的30%保证金处理支持者纠纷。如30%保证金不足以处理纠纷，发起者有义务向55token支付处理纠纷所产生的费用。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;违规处理&lt;/p&gt;&lt;p&gt;对于违反本协议或55token网站规则的发起者，55token有权进行违规处理，涉及罚款的可以从30%保证金中扣除。&lt;/p&gt;&lt;p&gt;如发起者在筹款时间截止前非因客观因素主动取消项目的，则发起者在一个月内不得再次发起项目。&lt;/p&gt;&lt;p&gt;如发起者在项目筹款成功后、发放回报前，非因客观因素宣布项目失败或因项目延期而被认定为项目失败的，则发起者在三个月内不得再次发起项目，但如发起者将支持者所支付的首付款全部退回的，可以不受再次发起项目的时间限制。&lt;/p&gt;&lt;p&gt;55token有权对发起者是否涉嫌违规做出单方认定，并根据单方认定结果中止、终止对发起者的使用许可或采取其他限制措施。&lt;/p&gt;&lt;p&gt;如发起者严重违反本协议、55token网站规则或违反国家法律法规规定的，将被清退出55token平台，涉嫌犯罪的55token将移送司法机关处理。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;违约责任&lt;/p&gt;&lt;p&gt;如发起者涉嫌违反有关法律或者本协议之约定，使55token及/或55token的关联公司遭受任何损失，或受到任何第三方的索赔，或受到任何行政管理部门的处罚，发起者应当赔偿55token因此遭受的损失及/或发生的费用，包括合理的律师费用、调查取证费用等。&lt;/p&gt;&lt;p&gt;除本协议另有约定外，任何一方违反其于本协议项下的陈述、保证或承诺，而使另一方遭受任何诉讼、纠纷、索赔、处罚等的，违约方应负责解决，使另一方发生任何费用、额外责任或遭受经济损失的，应当负责赔偿。如一方发生违约行为，守约方可以书面通知方式要求违约方在指定的时限内停止违约行为，要求其消除影响。如违约方未能按时停止违约行为，则守约方有权立即终止本协议。如因55token自身原因造成发起者的损失，55token向发起者承担的最大总体责任和赔偿限额不应超过在本协议项下55token已向发起者收取的服务费总额（如有）。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;知识产权&lt;/p&gt;&lt;p&gt;发起者承诺通过55token平台发布、上传的所有内容拥有合法权利，不侵犯任何第三方的肖像权、隐私权、专利权、商标权、著作权等合法权利及其他合同权利。&lt;/p&gt;&lt;p&gt;发起者通过55token平台发布、上传的任何内容，发起者授予55token及其关联公司非独家的、可转授权的、不可撤销的、全球通用的、永久的、免费的许可使用权利，并可对上述内容进行修改、改写、改编、发行、翻译、创造衍生性内容及/或可以将前述部分或全部内容加以传播、表演、展示，及/或可以将前述部分或全部内容放入任何现在已知和未来开发出的以任何形式、媒体或科技承载的作品当中。&lt;/p&gt;&lt;p&gt;55token平台向发起者提供的服务含有受到相关知识产权及其他法律保护的专有保密资料或信息，亦可能受到著作权、商标、专利等相关法律的保护。未经55token或相关权利人书面授权，发起者不得修改、出售、传播部分或全部该等信息，或加以制作衍生服务或软件，或通过进行还原工程、反向组译及其他方式破译原代码。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;协议终止及争议解决&lt;/p&gt;&lt;p&gt;在下列情况下，55token可以随时无须承担任何义务和责任地全部或部分暂停、中止或终止履行本协议的义务或提供本协议项下的服务，直至解除本协议，且无须征得发起者的同意。&lt;/p&gt;&lt;p&gt;（1）发起的项目违反法律法规、监管政策或其他规定；&lt;/p&gt;&lt;p&gt;（2）发起的项目将引发或可能引发55token运营的重大风险；&lt;/p&gt;&lt;p&gt;（3）发起的项目存在或可能存在明显危害支持者利益的风险；&lt;/p&gt;&lt;p&gt;（4）因不可归责于55token的原因造成项目无法继续进行或项目回报无法实现的。&lt;/p&gt;&lt;p&gt;如发起者在线签署的55token《服务条款》因任何原因终止，则本协议将同时终止。&lt;/p&gt;&lt;p&gt;因不可归责于55token的原因造成协议终止，在协议终止前的行为所导致的任何赔偿和责任，发起者必须完全且独立地承担责任。&lt;/p&gt;&lt;p&gt;无论本协议因何种原因终止，并不影响本协议终止前已经筹款成功项目的效力，发起者均应将筹款成功的项目履行完毕，或依照约定或本协议的规定对支持者承担责任。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;本协议及本协议项下的所有行为均适用中华人民共和国法律。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),
(11, 3, '支持者风险协议', 1, 3, 1, 0, 0, 0, 0, 0, 2, 1486626446, 1499582885, '', '', '', '', '1', '', '&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;尊敬的支持者：&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;在您注册成为55token的支持者会员，参与区块链项目ICO前，请仔细阅读《服务条款》及《支持者风险协议》。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token（www.55token.com）作为一家针对数字货币、区块链领域的融资服务平台，承担居间服务的义务，为支持者提供区块链投资项目，为区块链项目发起者提供目标支持者。55token将恪尽职守，履行诚实、信用、谨慎的义务。55token提示支持者，区块链项目投资是风险投资，只适合风险识别、评估、承受能力与所投款项相适应的合格支持者。作为支持者的您应当以自己合法拥有的资金支持区块链项目，不得非法汇集他人资金参与支持项目。55token作为第三方区块链服务平台，不承诺任何保本或最低收益，也不会就投资可能产生的亏损承担任何赔偿责任。&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token将区块链项目投资中存在的风险，请认真阅读如下风险：&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;投资损失风险&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;区块链投资项目存在较大的风险，投资存在部分亏损，甚至全部亏损的可能，作为投资人的您应量力而行，选择自愿承当亏损的金额进行投资。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;流动性风险&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;大部分区块链项目处于种子期或初创期，规模较小，其股权或其他性质权益，没有成熟、高效的流转市场。作为支持者的您投资后，其权益转让存在找不到买家的可能。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;投资过程中无回报的风险&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;区块链投资多投资于区块链初创型企业。区块链初创型企业极有可能付不出回报，即使有盈利往往也被用于再生产。因此，在支持者投资退出前的整个投资过程中，存在没有任何回报的可能。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;宏观经济风险&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;由于我国及周边国家、地区宏观经济环境和周边市场的变化，使区块链项目公司的经营处于剧烈波动中，从而导致区块链项目的价值不同程度的贬损，使您存在亏损的可能，您将不得不承担由此造成的损失。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;政策风险&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;区块链项目所处行业的法律、法规及相关政策发生变化，或者55token平台的投资规则发生变化，都可能引起区块链项目经营和披露信息的波动，使您存在亏损的可能，您将不得不承担由此造成的损失。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;技术风险&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;由于55token的业务是通过网络技术来实现的，这些技术存在着被网络黑客和计算机病毒攻击的可能，55token会尽力保障网站正常运行，但您将不得不承担由您的个人电脑终端故障或其他55token以外因素导致系统故障而造成的损失。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;不可抗力因素导致的风险&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;诸如地震、火灾、水灾、战争等不可抗力因素可能导致投资系统的瘫痪，您将不得不承担由此导致的损失。&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;除上述投资风险外，区块链项目投资在款项管理、运用过程中，仍然存在市场风险、信用风险、管理风险、政策风险等其他不可预测的风险。&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;请您仔细阅读本支持者风险协议及相关投资文件，谨慎作出是否签署投资文件的决定。如您签署了本协议，则55token将视为您已认真阅读并理解55token的在线融资服务模式，并愿意依法承担相应的投资风险。&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;本协议自55token公布之日起对所有区块链支持者有效。&lt;/span&gt;&lt;span class=&quot;li-para&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 20px 22px; padding: 0px; display: block; line-height: 24px;&quot;&gt;支持者确认：本人已仔细阅读《服务条款》及《支持者风险协议》，55token已向本人说明了区块链项目投资的风险，投资本项目是经过本人独立判断之后所作出的符合本人真实意愿的决定，本人愿意承担投资风险。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `quan_article` (`article_id`, `cat_id`, `title`, `editor_id`, `check_state`, `is_show`, `is_top`, `is_best`, `is_new`, `is_discuss`, `discuss_total`, `show_total`, `add_time`, `last_time`, `link`, `rectangle_img`, `article_img`, `keywords`, `tag`, `article_brief`, `content`) VALUES
(12, 6, '发起者常见问题', 1, 3, 1, 0, 0, 0, 1, 0, 1, 1486626565, 1501148471, '', 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/69c0112e9c7d3ece99c45c4b7667ad2a', 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/69c0112e9c7d3ece99c45c4b7667ad2a', '', '1', '', '&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;什么样的项目适合在55token上发布？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;在55token的平台上，我们欢迎一切富有想法、有实际性进展及靠谱的数字货币、区块链项目向全世界亮相。这些项目正处于初期阶段，或还没成熟到可以应用，在55token上进行展示的目的是获得第一批忠实用户和收集用户需求。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;什么样的人具备发起项目的资格？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;目前支持全世界各地有发展区块链项目的人发起项目，您可以是个人或企业，只要您有想法，我们都希望能收到您的项目申请。但是您需要阅读并同意55token平台所有规范文件，进行必要的身份认证，才可以发起项目。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目发起人应承担的责任？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;项目发起人需要将真实有效的联系信息在平台公布。在筹资成功后，请尽最大努力继续开展项目，并及时以邮件或者其他形式，向您的支持者公开透明、积极主动地更新和反馈项目进程，且如期实现您承诺的回报。如果项目即将面临延期、产品远不如预期甚至失败的风险，项目发起人必须与所有支持者进行有效沟通，得到支持者的理解。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;在发布项目之前，我应做哪些准备？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;您可以从下列的几件事开始作准备：详细地评估预算成本，确定您的项目ICO开始时间和发布策略。仔细阅读每一条常见问题及55token平台所有规范文件。根据自己对市场的观察做出合理的项目项目目标金额。拟定一个详细的项目宣传计划，列出可能帮助您传播信息的亲朋好友，和散播渠道(邮件、QQ、微博等)。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;怎样发起项目？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;请到55token平台 (www.55token.com)注册及认证会员后，在我们平台上发起项目，提交所需要的基本项目信息，包括项目的内容，目前进行的阶段等等。我们会有专人跟进，与您联系。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目详细内容应该包含那些信息？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;支持者在访问您的项目页面后，应能清楚了解：项目简介、筹资时间和目标金额、项目回报与发送时间、以及其他项目所要求必备的信息。您提供的信息越多，您的项目就越有说服力，支持者就越信任您和您的项目。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;如何能够吸引更多的人来支持我的项目？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;为了吸引更多的人来支持您的项目，您可以做以下准备：&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;拍摄一个有趣，吸引人的视频。讲述这个项目背后的故事；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;提供有吸引力，物有所值的回报；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;55token向平台关联企业提供；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;项目刚上线时，要发动身边的支持者来支持您。让您的项目有一个基本的人气；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;充分运用微博、微信，人人等社交方式来推广；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;在项目上线期间，经常性的在您的项目页上提供项目的更新，与支持者，询问者的互动。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;55token&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;可以帮我修改一下文案吗？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;由于项目介绍文案是我们以及潜在粉丝了解您的项目的第一渠道，只有您对项目的细节最清楚。所以，我们目前只能在您提交审核申请后提供一些修改意见和建议，具体的修改操作需要您自己来执行。希望您仔细斟酌我们的修改建议，有什么问题可以和我们交流沟通。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;“项目简介”是什么？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;项目简介就是项目上线后会显示在项目主页顶部的一段文字，您需要利用150个以内的文字简要说明一下您的项目。支持者很可能就是被这段文字吸引，才决定继续阅读下去的，因此一定要写的直接清楚又有吸引力。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;为什么我上传图片失败？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果照片无法正常显示，可能是由于您上传的照片文件过大或者您一次性上传过多张造成的，我们建议您在网络环境稳定的时候再次尝试上传。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;一定要准备项目宣传视频吗？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;项目宣传视频不是必须的，但是可以作为项目主页上的重要内容。是支持者用户了解您和您的项目的第一步。一个好的宣传视频，能够比文字和图片起到更好的宣传效果。基于这个原因，我们建议您的项目应该提供一个视频。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;为什么要设置投资回报？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token并非一个公益捐款平台，因此“投资回报”是吸引大家支持项目的重要因素。提供支持者投资回报，让整个支持项目的行为转化为投资回馈行为。因此所有项目都必须根据支持金额的不同，提供符合实际价值的回报。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;如何设置投资回报内容？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;每个项目的回报最少为1种，最多10种。设置投资回报时，除了写明白回报内容说明，还要设置投资金额、名额限制、支持限制、是否包邮、回报时间等等。投资回报可以是项目的成果与收益，比如：您出版的图书、生产的硬件钱包、挖矿的收益、搬砖套利的收益、比特币游戏网站的分红等等。除了实体的回报，您还可以提供虚拟的回报，例如：数字货币投资研究报告、区块链项目的代币（Token）、行情分析建议等等。回报必须物有所值，也不能违反《发起者协议》的限制。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;回报可以设定名额限制吗？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;可以。在投资回报设置中，您可以填写该项的名额限制数量，当项目上线时，就会显示“限额几位”的信息。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;什么是回报时间？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;是指您预计将回报发送给支持者的日期。如果您的回报提供了不止一件东西，可将预计发放时间设置为所有回报都准备完成的日期。延迟发送回报会给支持者不好的印象，因此我们建议您多保留一些不可预期的缓冲时间。回报时间根据项目情况而定，但必须预先设置，并将在项目说明中明确公开。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目回报的邮寄费用怎么设置？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;项目发起时，回报邮寄费用可以选择包邮或不包邮，如不包邮，以选择的快递收费为准。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目审核需要多长时间？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;3-5个工作日。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;我的项目提交了审核，怎么查询我的审核状态？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;登录55token后，进入【个人中心 - 我发起的项目】，就可以看到您发布的所有项目及审核状态了。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;审核中的项目别人可以看到吗？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;审核中的项目其他人是暂时无法看到的，我们会确保您已经准备好了才会对外公开。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目正式发布后是否允许再次修改？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;审核通过已经发布的项目内容不允许再修改，但是可以申请停止项目ICO。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;如何删除项目？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;审核中的项目是可以删除的，登录55token后，进入【个人中心 - 我发起的项目】，就可以查询到所有您创建的项目发布信息，点击相应项目右侧的【删除】按钮即可完成操作。如果是已经通过审核上线正在进行中的项目，则是不能删除的，但是可以提前停止。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;已经发布的项目内容会在55token平台上保留多久？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token将永久保留所有已发布项目的内容。即使注销您在55token的账户，您的项目也不会被删除。如果您真的希望移除项目内容，请联系我们。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;为什么我发布的项目被迫停止了？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;已发布项目被提前下线可能是因为以下原因：&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;违反或不符合《发起者协议》或使用条款的内容；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;违反或意思违反中国相关法令；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;疑似与欺诈性或高风险活动联系紧密相关的行为；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;疑似与知识产权侵犯有关的行为。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目停止ICO后如何处理？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;项目一旦停止ICO，55token将会把已筹集到的资金全额退还给支持者。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目发布以后的版权所属？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;项目将完全归属于项目发起人。55token只是提供一个展示和获取支持的平台，知识产权归项目发起人所有。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;怎么样才算是筹资成功？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;当您的项目到了原本设定好的筹资截止时间时：支持金额达到或者超过目标金额，就算成功。在项目筹资成功后， 55token作为平台方从总筹得资金里抽取5%作为平台服务费，余下款项的70%交付给发起者，并预留余下的30%作为确保支持者获得回报的保证金，在项目成功无纠纷且所有支持者得到承诺回报的情况下，55token将把这部分款项交付给发起者。 如果未按时达到目标，则视为不成功，所有款项将退还给支持者。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;最终收到的金额能够超过预设的目标金额吗？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;可以。在截至时间之前，项目可以一直接受资金支持的，因此会出现最终收到的金额超过预设的目标金额的情况。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;没有按时达到目标金额，是否就不能得到支持？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;是的。如果在项目截至时间到达时，仍然没有达到目标金额，那么已经筹到的资金会退还给支持者。这么做的原因是为了给支持者提供风险保护。只有当项目有足够多的人支持足够多的资金时，他们的支持才生效。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目结束后，还可以编辑项目内容吗？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;不行。每个项目结束时，项目内容都将视为项目发布团队对支持用户的承诺，因此无论是项目内容或投资回报都将无法再修改。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目筹资失败，是否还会产生费用？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果项目筹资失败，是不会产生费用的。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;项目成功以后的打款方式？&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph mt6&quot; style=&quot;box-sizing: border-box; margin-top: 6px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;结算：项目成功结束，系统即刻自动扣除5%平台服务费，余下款项的70%打到发起者的55token账户余额里，并预留余下的30%在项目成功无纠纷且所有支持者得到承诺回报的情况下，55token将把这部分款项直接打给发起者；&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph mt6&quot; style=&quot;box-sizing: border-box; margin-top: 6px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;申请提现：发起者在个人中心点击“提现”，进入提现页面操作申请提现；&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p class=&quot;li-paragraph mt6&quot; style=&quot;box-sizing: border-box; margin-top: 6px; margin-bottom: 0px; padding: 0px; line-height: 40px;&quot;&gt;&lt;span class=&quot;li-point&quot; style=&quot;box-sizing: border-box; margin: 14px 10px 0px 0px; padding: 0px; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 3px solid rgb(159, 163, 198); border-radius: 50%; height: 12px; width: 12px; vertical-align: top;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;paragraph-con&quot; style=&quot;box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; width: 1015px;&quot;&gt;打款：55token财务审核提现账户信息后，确认后打款。&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;如何查看支持者的信息（邮箱地址、他选择的型号等），以便发送回报？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果项目成功，所有支持者的信息由55token提供给发起人，以便发送回报。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;我要发回报，可以导出支持者名单吗？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果项目成功，支持人名单由55token提供。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;因为某些因素，我无法按时发送回报怎么办？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果发生不可避免的延误，您可以在话题区尽早跟大家说明可能延误的理由，寻求大家的谅解。如果有支持用户取消参与，您有责任和义务将款项退还给他们。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;能否同时发起多个项目？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;不可以。由于ICO项目上线时期，需要项目发起人大量的运营和互动工作，55token不允许同一项目发起人在55token平台同时发布多个项目。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;我可否支持自己发起的项目？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;不可以。55token不允许项目发起者支持自己的项目。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;我想发起项目，但是我担心我的知识产权被人抄袭怎么办？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;55token是一个安全、诚信、公平、透明的平台，因此55token无法保证相关知识产权或商业机密不会被抄袭或泄露。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; margin: 0px; padding: 0px;&quot;&gt;发现知识产权或注册商标侵权应该如何举报？&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;paragraph&quot; style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding: 0px; line-height: 24px;&quot;&gt;如果您认为某个项目侵犯了您所持有的专利权或者注册商标权，您可以给我们投诉建议邮箱：suggestion@55token.com 发邮件报告。我们将高度重视，在认真地核实及评估之后，给予回复。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `quan_article_cat`
--

CREATE TABLE IF NOT EXISTS `quan_article_cat` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `pid` int(8) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示,可用于判断系统保留分类',
  `sort_order` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '最大255商品分类排序越大越靠前',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `cat_img` varchar(255) DEFAULT '',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name` (`cat_name`),
  KEY `parent_id` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章分类表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `quan_article_cat`
--

INSERT INTO `quan_article_cat` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `pid`, `is_show`, `sort_order`, `template_file`, `cat_img`) VALUES
(1, '商店信息', '', '', 0, 1, 0, '', ''),
(3, '帮助中心', '', '', 0, 1, 0, '', ''),
(4, '文章分类', '', '', 0, 1, 253, '', 'http://oi9szgin6.bkt.clouddn.com/admin/1/articlecat/0/gallery/69c0112e9c7d3ece99c45c4b7667ad2a'),
(5, '区块链', '', '', 4, 1, 0, '', ''),
(6, '常见问题', '', '', 0, 1, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_article_discuss`
--

CREATE TABLE IF NOT EXISTS `quan_article_discuss` (
  `discuss_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目评论id',
  `article_id` int(10) unsigned NOT NULL COMMENT '文章id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `p_id` int(10) unsigned NOT NULL COMMENT '评论父级用户id',
  `is_show` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `thumb_up` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞',
  `reply_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复总数',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `ip` varchar(15) NOT NULL COMMENT '回复时的ip地址',
  `content` varchar(1000) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`discuss_id`),
  KEY `project_id` (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='单品类评论' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `quan_article_discuss`
--

INSERT INTO `quan_article_discuss` (`discuss_id`, `article_id`, `user_id`, `p_id`, `is_show`, `thumb_up`, `reply_total`, `add_time`, `ip`, `content`) VALUES
(1, 7, 1, 0, 1, 0, 0, 1499416216, '127.0.0.1', '更换的法国的'),
(2, 7, 1, 0, 1, 0, 0, 1499416242, '127.0.0.1', '更换的法国的的萨芬'),
(3, 7, 1, 0, 1, 0, 0, 1499416443, '127.0.0.1', '更换的法国的的萨芬\r\n士大夫撒'),
(4, 7, 1, 0, 1, 0, 0, 1499416449, '127.0.0.1', '54645645'),
(5, 7, 1, 0, 1, 0, 0, 1499416455, '127.0.0.1', '54645645客户'),
(6, 7, 1, 0, 1, 0, 0, 1499416460, '127.0.0.1', '54645645客户是大法官的飞洒'),
(7, 7, 1, 0, 1, 0, 0, 1499416465, '127.0.0.1', '54645645客户是大法官的飞'),
(8, 7, 1, 0, 1, 0, 0, 1499416471, '127.0.0.1', '++645645客户是大法官的'),
(9, 7, 1, 0, 1, 0, 0, 1499416477, '127.0.0.1', '---+645645客户是大法官的'),
(10, 7, 1, 0, 1, 0, 0, 1499416504, '127.0.0.1', '****+645645客户是大法官的'),
(11, 7, 1, 0, 1, 0, 0, 1499416509, '127.0.0.1', '***----*+645645客户是大法官的'),
(12, 7, 1, 0, 1, 0, 0, 1499416519, '127.0.0.1', '***----*+645645客户是大法官的过分的话'),
(13, 7, 1, 0, 1, 5, 0, 1499419971, '127.0.0.1', '的说法'),
(14, 3, 1, 0, 1, 0, 0, 1499422576, '127.0.0.1', '撒的发生的'),
(15, 15, 1, 0, 1, 0, 0, 1499761264, '127.0.0.1', '的萨芬'),
(16, 15, 1, 0, 1, 0, 0, 1499761436, '127.0.0.1', '的萨芬'),
(17, 15, 1, 0, 1, 0, 0, 1499761444, '127.0.0.1', '的萨芬123'),
(18, 15, 1, 0, 1, 0, 0, 1499761451, '127.0.0.1', '的萨芬123456'),
(19, 15, 1, 0, 1, 0, 0, 1499761457, '127.0.0.1', '++的萨芬123456\r\n999'),
(20, 15, 1, 0, 1, 0, 0, 1499764235, '127.0.0.1', '569'),
(21, 25, 1, 0, 1, 1, 0, 1499849293, '127.0.0.1', '1321');

-- --------------------------------------------------------

--
-- 表的结构 `quan_article_gallery`
--

CREATE TABLE IF NOT EXISTS `quan_article_gallery` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章图片自增长id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `img_url` varchar(255) NOT NULL COMMENT '文章图片url',
  PRIMARY KEY (`img_id`),
  KEY `article_id` (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章图片表' AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `quan_article_gallery`
--

INSERT INTO `quan_article_gallery` (`img_id`, `article_id`, `img_url`) VALUES
(23, 11, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/11/gallery/fcb94e0c8ee372b0f2aaaeb34ef4ae53'),
(27, 14, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/14/gallery/69c0112e9c7d3ece99c45c4b7667ad2a'),
(15, 12, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/69c0112e9c7d3ece99c45c4b7667ad2a'),
(16, 12, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/69c0112e9c7d3ece99c45c4b7667ad2a'),
(17, 12, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/5e21c7b78212da754e46617257183347'),
(18, 13, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/0/gallery/fcb94e0c8ee372b0f2aaaeb34ef4ae53'),
(19, 13, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/13/gallery/5e21c7b78212da754e46617257183347'),
(20, 13, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/13/gallery/fcb94e0c8ee372b0f2aaaeb34ef4ae53'),
(21, 13, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/13/gallery/fcb94e0c8ee372b0f2aaaeb34ef4ae53'),
(25, 11, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/11/gallery/fcb94e0c8ee372b0f2aaaeb34ef4ae53'),
(26, 11, 'http://oi9szgin6.bkt.clouddn.com/admin/1/article/11/gallery/5e21c7b78212da754e46617257183347');

-- --------------------------------------------------------

--
-- 表的结构 `quan_article_tag`
--

CREATE TABLE IF NOT EXISTS `quan_article_tag` (
  `tag_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tag_name` varchar(30) NOT NULL COMMENT '标签名称',
  `use_total` smallint(5) unsigned NOT NULL COMMENT '使用量,可以所谓排序依据',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文章标签表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `quan_article_tag`
--

INSERT INTO `quan_article_tag` (`tag_id`, `tag_name`, `use_total`, `add_time`) VALUES
(1, '比特币', 0, 1501665043),
(2, '区块链', 0, 1501665043),
(4, '的萨芬', 0, 1501667376),
(5, '1', 0, 1501984428);

-- --------------------------------------------------------

--
-- 表的结构 `quan_bank`
--

CREATE TABLE IF NOT EXISTS `quan_bank` (
  `bank_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收款账户id',
  `bank_type` varchar(20) NOT NULL COMMENT '银行类型',
  `bank_name` varchar(30) NOT NULL COMMENT '银行名称,或者微信,或者支付宝',
  `bank_code` varchar(30) DEFAULT NULL COMMENT '银行编码',
  `is_open` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启0未开启,1开启',
  `sort_order` tinyint(3) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`bank_id`),
  UNIQUE KEY `bank_name` (`bank_name`),
  UNIQUE KEY `bank_code` (`bank_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='收款账户表,微信,支付宝,银行(工商银行,中国银行.....)' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `quan_bank`
--

INSERT INTO `quan_bank` (`bank_id`, `bank_type`, `bank_name`, `bank_code`, `is_open`, `sort_order`) VALUES
(1, '国有商业银行', '中国工商银行', 'ICBC', 1, 255),
(2, '国有商业银行', '中国农业银行', 'ABC', 1, 254),
(3, '国有商业银行', '中国银行', NULL, 1, 253),
(4, '国有商业银行', '中国建设银行', NULL, 1, 252),
(5, '国有商业银行', '中国交通银行', NULL, 1, 251);

-- --------------------------------------------------------

--
-- 表的结构 `quan_country`
--

CREATE TABLE IF NOT EXISTS `quan_country` (
  `country_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '国家id',
  `name` varchar(32) NOT NULL COMMENT '中文名称',
  `code` varchar(32) NOT NULL COMMENT '对应编码',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序,越大越靠前',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='世界国家表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `quan_country`
--

INSERT INTO `quan_country` (`country_id`, `name`, `code`, `sort_order`) VALUES
(1, '中国', 'china', 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_currency`
--

CREATE TABLE IF NOT EXISTS `quan_currency` (
  `currency_id` smallint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '虚拟币id',
  `currency_name` varchar(10) NOT NULL COMMENT '货币名称',
  `currency_code` varchar(10) NOT NULL COMMENT '货币标志',
  `currency_logo` varchar(255) NOT NULL COMMENT '货币logo',
  `currency_total` decimal(16,0) NOT NULL COMMENT '货币发行总数',
  `currency_price` decimal(12,6) NOT NULL COMMENT '币价格',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序,大靠前',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示,0不显示,1显示',
  `is_open` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否允许项目接收',
  `support_min` decimal(10,8) NOT NULL COMMENT '用户支持项目最小值',
  `deposit_allow` tinyint(3) NOT NULL DEFAULT '1' COMMENT '允许充值',
  `deposit_max` decimal(14,4) NOT NULL COMMENT '最大充值额度',
  `deposit_min` decimal(14,4) NOT NULL COMMENT '充值最小额度',
  `deposit_fee` decimal(6,6) NOT NULL COMMENT '充值手续费',
  `deposit_wallet` varchar(128) NOT NULL COMMENT '充值钱包地址',
  `cash_allow` tinyint(3) NOT NULL DEFAULT '1' COMMENT '允许取现',
  `cash_max` decimal(14,6) NOT NULL COMMENT '取币最大额度',
  `cash_min` decimal(14,6) NOT NULL COMMENT '取现最小额度',
  `cash_fee` decimal(14,6) NOT NULL DEFAULT '0.000100' COMMENT '取现手续费',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `currency_name` (`currency_name`),
  UNIQUE KEY `currency_code` (`currency_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='货币列表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `quan_currency`
--

INSERT INTO `quan_currency` (`currency_id`, `currency_name`, `currency_code`, `currency_logo`, `currency_total`, `currency_price`, `sort_order`, `is_show`, `is_open`, `support_min`, `deposit_allow`, `deposit_max`, `deposit_min`, `deposit_fee`, `deposit_wallet`, `cash_allow`, `cash_max`, `cash_min`, `cash_fee`, `add_time`) VALUES
(1, '比特币', 'BTC', 'http://or85ryudu.bkt.clouddn.com/admin/1/currency/gallery/1/a201898a4ed219dc48b95d57631f245f', '21000000', '18000.000000', 199, 1, 1, '0.00100000', 1, '0.0000', '0.0000', '0.000000', '18h4mLm51a9htYmm5FuwbKWJaVsnCY5VoW', 1, '5.000000', '0.000020', '0.001000', 0),
(2, '莱特币', 'ETH', 'http://or85ryudu.bkt.clouddn.com/admin/1/currency/gallery/2/60c72262f0fd25cf6ee4da68a61049fe', '71000000', '2500.000000', 198, 1, 1, '0.00100000', 1, '0.0000', '0.0000', '0.000000', '0x744f45ac7b80c052e0bf30034c9d614508b54b75', 1, '10.000000', '0.000100', '0.000100', 0),
(3, '大象币', 'ABC', 'http://or85ryudu.bkt.clouddn.com/admin/1/currency/gallery/3/a780f367a58d76d29b795290ee44245d', '30000', '10.000000', 197, 1, 0, '0.00000000', 0, '0.0000', '0.0000', '0.000000', '', 0, '0.000000', '0.000000', '0.000100', 0),
(4, '人民币', 'CNY', 'http://or85ryudu.bkt.clouddn.com/admin/1/currency/gallery/0/04cf543179cf28bd636ace7a5269c258', '0', '0.000000', 255, 1, 0, '0.00000000', 1, '0.0000', '0.0000', '0.000000', '', 1, '0.000000', '0.000000', '0.000000', 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_currency_trade`
--

CREATE TABLE IF NOT EXISTS `quan_currency_trade` (
  `ct_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '标的币id',
  `ex_currency_id` smallint(6) unsigned NOT NULL COMMENT '兑换币种id,exchange',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序,大靠前',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示在交易页面,0不显示,1显示',
  `is_trade` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开始交易',
  `buy_price_digit` tinyint(3) unsigned NOT NULL DEFAULT '4' COMMENT '买入价格,最多小数位数',
  `buy_num_digit` tinyint(4) NOT NULL DEFAULT '4' COMMENT '购买数量小数最大位数',
  `buy_fee_ratio` decimal(6,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '买入手续费,比例,0.001 表示千分之一',
  `sell_price_digit` tinyint(3) unsigned NOT NULL DEFAULT '4' COMMENT '卖出价格,最多小数位数',
  `sell_num_digit` tinyint(4) NOT NULL DEFAULT '4' COMMENT '卖出数量小数最多位数',
  `sell_fee_ratio` decimal(6,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '卖出手续费比例, 0.001 表示千分之一',
  `limit_up` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '日涨停价,整数%,0不限制',
  `limit_down` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '日跌停价,整数%,0不限制',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`ct_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='货币列表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `quan_currency_trade`
--

INSERT INTO `quan_currency_trade` (`ct_id`, `currency_id`, `ex_currency_id`, `sort_order`, `is_show`, `is_trade`, `buy_price_digit`, `buy_num_digit`, `buy_fee_ratio`, `sell_price_digit`, `sell_num_digit`, `sell_fee_ratio`, `limit_up`, `limit_down`, `add_time`) VALUES
(1, 1, 4, 199, 1, 1, 2, 3, '0.001000', 2, 3, '0.001000', 0, 0, 0),
(2, 2, 4, 198, 1, 1, 2, 3, '0.002000', 2, 3, '0.002000', 0, 0, 0),
(3, 3, 4, 197, 0, 1, 2, 3, '0.000300', 2, 3, '0.003000', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_deposit_eth`
--

CREATE TABLE IF NOT EXISTS `quan_deposit_eth` (
  `deposit_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '充值记录id',
  `deposit_from` varchar(60) NOT NULL COMMENT '用户ETH钱包地址',
  `deposit_to` varchar(60) NOT NULL COMMENT '网站收款地址',
  `pay_amount` decimal(20,8) NOT NULL COMMENT '支付金额',
  `value` varchar(20) NOT NULL COMMENT '金额,需除以18',
  `gas` varchar(20) NOT NULL COMMENT '汽油',
  `time_stamp` int(10) unsigned NOT NULL COMMENT '交易时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `confirm` mediumint(8) unsigned NOT NULL COMMENT '交易确认数量,达到一定数量才是为成功',
  `trade_id` varchar(80) NOT NULL COMMENT '交易id',
  PRIMARY KEY (`deposit_id`),
  UNIQUE KEY `trade_id` (`trade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_domain_account`
--

CREATE TABLE IF NOT EXISTS `quan_domain_account` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '账户记录id',
  `currency_id` tinyint(3) unsigned NOT NULL COMMENT '币种id',
  `pay_type` tinyint(4) unsigned NOT NULL COMMENT '订单结果类型,0未引起用户资金改变(做个记录入如购买商品),1增加,2减少',
  `pay_type_de` tinyint(3) unsigned NOT NULL COMMENT '支付结果详情,0.用户资金未增减,做记录,订单支出(使用第三方支付)1.开头表示增加,10充值,11订单退款,12用户退款增加,13用户业务增加如分红, 14管理员增加,15冻结资金解冻user表frozen_money字段, //2.开头支出,20取现,21订单支出(余额支付),23用户业务减少 24管理员减少金额(一般不允许,用于测试,减 //金额失败情形)25资金冻结 ',
  `pay_amount` decimal(20,8) NOT NULL COMMENT '发生金额',
  `admin_note` varchar(60) NOT NULL COMMENT '支付说明',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站资金记录' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust`
--

CREATE TABLE IF NOT EXISTS `quan_entrust` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否成功提交委托,0失败,1成功',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_0`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_0` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_1`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_1` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_2`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_2` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `quan_entrust_2017_2`
--

INSERT INTO `quan_entrust_2017_2` (`entrust_id`, `entrust_sn`, `user_id`, `currency_id`, `ex_currency_id`, `trade_type`, `entrust_price`, `entrust_num`, `deal_num`, `entrust_amount`, `deal_amount`, `fee_ratio`, `fee_trade`, `entrust_state`, `trade_state`, `is_match`, `add_time`, `deal_time`) VALUES
(1, '201709172', 2, 1, 4, 2, '20000.00000000', '1.00000000', '1.00000000', '1.00200000', '1.00100000', '0.00100000', '0.00100000', 0, 2, 1, 1505639969, 1505639999);

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_3`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_3` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `quan_entrust_2017_3`
--

INSERT INTO `quan_entrust_2017_3` (`entrust_id`, `entrust_sn`, `user_id`, `currency_id`, `ex_currency_id`, `trade_type`, `entrust_price`, `entrust_num`, `deal_num`, `entrust_amount`, `deal_amount`, `fee_ratio`, `fee_trade`, `entrust_state`, `trade_state`, `is_match`, `add_time`, `deal_time`) VALUES
(1, '201709173', 1, 1, 4, 1, '30000.00000000', '1.00000000', '1.00000000', '30060.00000000', '20020.00000000', '0.00100000', '20.00000000', 0, 2, 1, 1505639999, 1505639999);

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_4`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_4` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_5`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_5` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_6`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_6` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_7`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_7` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_8`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_8` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_9`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_9` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_10`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_10` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_11`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_11` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_12`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_12` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_13`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_13` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_14`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_14` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_15`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_15` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_16`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_16` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_17`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_17` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_18`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_18` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_19`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_19` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_20`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_20` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_21`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_21` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_22`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_22` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_23`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_23` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_24`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_24` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_25`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_25` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_26`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_26` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_27`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_27` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_28`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_28` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_29`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_29` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_30`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_30` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_31`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_31` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_32`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_32` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_33`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_33` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_34`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_34` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_35`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_35` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_36`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_36` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_37`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_37` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_38`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_38` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_39`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_39` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_40`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_40` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_41`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_41` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_42`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_42` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_43`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_43` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_44`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_44` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_45`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_45` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_46`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_46` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_47`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_47` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_48`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_48` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_49`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_49` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_50`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_50` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_51`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_51` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_52`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_52` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_53`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_53` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_54`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_54` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_55`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_55` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_56`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_56` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_57`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_57` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_58`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_58` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_59`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_59` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_60`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_60` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_61`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_61` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_62`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_62` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_63`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_63` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_64`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_64` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_65`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_65` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_66`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_66` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_67`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_67` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_68`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_68` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_69`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_69` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_70`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_70` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_71`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_71` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_72`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_72` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_73`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_73` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_74`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_74` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_75`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_75` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_76`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_76` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_77`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_77` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_78`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_78` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_79`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_79` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_80`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_80` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_81`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_81` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_82`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_82` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_83`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_83` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_84`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_84` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_85`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_85` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_86`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_86` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_87`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_87` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_88`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_88` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_89`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_89` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_90`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_90` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_91`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_91` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_92`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_92` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_93`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_93` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_94`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_94` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_95`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_95` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_96`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_96` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_97`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_97` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_98`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_98` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2017_99`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2017_99` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_0`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_0` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_1`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_1` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_2`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_2` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_3`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_3` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_4`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_4` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_5`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_5` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_6`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_6` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_7`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_7` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_8`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_8` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_9`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_9` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_10`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_10` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_11`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_11` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_12`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_12` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_13`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_13` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_14`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_14` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_15`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_15` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_16`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_16` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_17`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_17` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_18`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_18` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_19`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_19` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_20`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_20` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_21`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_21` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_22`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_22` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_23`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_23` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_24`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_24` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_25`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_25` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_26`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_26` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_27`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_27` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_28`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_28` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_29`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_29` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_30`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_30` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_31`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_31` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_32`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_32` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_33`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_33` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_34`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_34` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_35`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_35` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_36`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_36` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_37`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_37` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_38`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_38` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_39`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_39` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_40`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_40` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_41`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_41` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_42`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_42` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_43`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_43` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_44`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_44` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_45`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_45` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_46`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_46` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_47`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_47` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_48`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_48` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_49`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_49` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_50`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_50` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_51`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_51` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_52`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_52` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_53`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_53` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_54`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_54` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_55`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_55` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_56`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_56` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_57`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_57` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_58`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_58` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_59`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_59` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_60`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_60` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_61`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_61` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_62`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_62` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_63`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_63` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_64`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_64` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_65`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_65` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_66`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_66` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_67`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_67` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_68`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_68` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_69`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_69` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_70`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_70` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_71`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_71` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_72`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_72` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_73`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_73` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_74`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_74` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_75`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_75` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_76`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_76` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_77`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_77` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_78`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_78` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_79`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_79` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_80`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_80` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_81`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_81` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_82`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_82` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_83`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_83` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_84`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_84` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_85`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_85` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_86`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_86` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_87`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_87` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_88`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_88` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_89`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_89` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_90`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_90` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_91`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_91` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_92`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_92` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_93`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_93` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_94`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_94` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_95`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_95` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_96`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_96` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_97`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_97` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_98`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_98` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_2018_99`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_2018_99` (
  `entrust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrust_sn` varchar(20) NOT NULL COMMENT '时间日期+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换的币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `entrust_price` decimal(20,8) NOT NULL COMMENT '委托价格',
  `entrust_num` decimal(20,8) NOT NULL COMMENT '委托数量',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `entrust_amount` decimal(20,8) NOT NULL COMMENT '委托(冻结)总额含费用,买入时(价格+数量)*(1+fee_ratio),卖出时(数量)*(1+fee_ratio)',
  `deal_amount` decimal(20,8) NOT NULL COMMENT '成交总额含费用,买入时(成交价格+成交数量)*(1+fee_ratio),卖出时(成交数量)*(1+fee_ratio)',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `entrust_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常,1失效(已撤单)',
  `trade_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0挂单(全部未成交),1部分成交,2全部成交',
  `is_match` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否提交匹配,默认0未匹配或提交失败,1已提交匹配',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `deal_time` int(10) NOT NULL COMMENT '最后一次成交时间',
  PRIMARY KEY (`entrust_id`),
  UNIQUE KEY `entrust_sn` (`entrust_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_0`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_0` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_1`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_1` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `quan_entrust_deal_2017_1`
--

INSERT INTO `quan_entrust_deal_2017_1` (`deal_id`, `deal_sn`, `entrust_sn`, `user_id`, `currency_id`, `ex_currency_id`, `trade_type`, `deal_type`, `deal_price`, `deal_num`, `fee_ratio`, `fee_trade`, `deal_time`) VALUES
(1, '201709171', '201709173', 1, 1, 4, 1, 1, '20000.00000000', '1.00000000', '0.00100000', '20.00000000', 1505639999);

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_2`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_2` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `quan_entrust_deal_2017_2`
--

INSERT INTO `quan_entrust_deal_2017_2` (`deal_id`, `deal_sn`, `entrust_sn`, `user_id`, `currency_id`, `ex_currency_id`, `trade_type`, `deal_type`, `deal_price`, `deal_num`, `fee_ratio`, `fee_trade`, `deal_time`) VALUES
(1, '201709172', '201709172', 2, 1, 4, 2, 0, '20000.00000000', '1.00000000', '0.00100000', '0.00100000', 1505639999);

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_3`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_3` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_4`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_4` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_5`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_5` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_6`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_6` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_7`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_7` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_8`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_8` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_9`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_9` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_10`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_10` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_11`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_11` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_12`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_12` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_13`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_13` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_14`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_14` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_15`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_15` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_16`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_16` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_17`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_17` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_18`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_18` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_19`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_19` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_20`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_20` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_21`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_21` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_22`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_22` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_23`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_23` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_24`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_24` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_25`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_25` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_26`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_26` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_27`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_27` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_28`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_28` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_29`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_29` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_30`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_30` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_31`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_31` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_32`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_32` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_33`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_33` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_34`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_34` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_35`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_35` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_36`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_36` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_37`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_37` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_38`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_38` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_39`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_39` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_40`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_40` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_41`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_41` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_42`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_42` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_43`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_43` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_44`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_44` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_45`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_45` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_46`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_46` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_47`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_47` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_48`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_48` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_49`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_49` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_50`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_50` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_51`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_51` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_52`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_52` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_53`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_53` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_54`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_54` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_55`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_55` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_56`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_56` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_57`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_57` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_58`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_58` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_59`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_59` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_60`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_60` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_61`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_61` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_62`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_62` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_63`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_63` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_64`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_64` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_65`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_65` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_66`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_66` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_67`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_67` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_68`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_68` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_69`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_69` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_70`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_70` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_71`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_71` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_72`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_72` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_73`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_73` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_74`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_74` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_75`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_75` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_76`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_76` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_77`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_77` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_78`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_78` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_79`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_79` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_80`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_80` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_81`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_81` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_82`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_82` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_83`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_83` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_84`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_84` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_85`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_85` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_86`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_86` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_87`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_87` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_88`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_88` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_89`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_89` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_90`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_90` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_91`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_91` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_92`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_92` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_93`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_93` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_94`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_94` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_95`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_95` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_96`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_96` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_97`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_97` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_98`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_98` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2017_99`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2017_99` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_0`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_0` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_1`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_1` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_2`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_2` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_3`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_3` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_4`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_4` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_5`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_5` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_6`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_6` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_7`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_7` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_8`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_8` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_9`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_9` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_10`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_10` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_11`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_11` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_12`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_12` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_13`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_13` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_14`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_14` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_15`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_15` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_16`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_16` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_17`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_17` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_18`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_18` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_19`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_19` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_20`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_20` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_21`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_21` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_22`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_22` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_23`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_23` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_24`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_24` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_25`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_25` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_26`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_26` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_27`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_27` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_28`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_28` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_29`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_29` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_30`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_30` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_31`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_31` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_32`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_32` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_33`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_33` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_34`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_34` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_35`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_35` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_36`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_36` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_37`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_37` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_38`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_38` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_39`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_39` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_40`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_40` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_41`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_41` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_42`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_42` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_43`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_43` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_44`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_44` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_45`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_45` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_46`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_46` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_47`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_47` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_48`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_48` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_49`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_49` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_50`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_50` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_51`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_51` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_52`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_52` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_53`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_53` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_54`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_54` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_55`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_55` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_56`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_56` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_57`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_57` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_58`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_58` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_59`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_59` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_60`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_60` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_61`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_61` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_62`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_62` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_63`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_63` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_64`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_64` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_65`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_65` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_66`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_66` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_67`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_67` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_68`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_68` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_69`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_69` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_70`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_70` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_71`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_71` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_72`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_72` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_73`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_73` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_74`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_74` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_75`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_75` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_76`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_76` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_77`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_77` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_78`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_78` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_79`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_79` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_80`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_80` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_81`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_81` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_82`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_82` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_83`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_83` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_84`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_84` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_85`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_85` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_86`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_86` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_87`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_87` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_88`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_88` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_89`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_89` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_90`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_90` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_91`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_91` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_92`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_92` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_93`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_93` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_94`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_94` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_95`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_95` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_96`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_96` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_97`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_97` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_98`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_98` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_entrust_deal_2018_99`
--

CREATE TABLE IF NOT EXISTS `quan_entrust_deal_2018_99` (
  `deal_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '成交id',
  `deal_sn` varchar(20) NOT NULL COMMENT '成交单编号,时间日期8位+主键entrust_id',
  `entrust_sn` varchar(20) NOT NULL COMMENT '委托单,时间日期8位+主键entrust_id',
  `user_id` int(10) unsigned NOT NULL,
  `currency_id` smallint(6) unsigned NOT NULL COMMENT '委托币种id',
  `ex_currency_id` smallint(6) NOT NULL COMMENT '兑换币种id',
  `trade_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0,初始忽略,1买入,2卖出',
  `deal_type` tinyint(3) unsigned NOT NULL COMMENT '成交类型,0被动成交,1主动买入,2主动卖出',
  `deal_price` decimal(20,8) NOT NULL COMMENT '成交价格',
  `deal_num` decimal(20,8) NOT NULL COMMENT '成交数量',
  `fee_ratio` decimal(10,8) NOT NULL COMMENT '费用比例,肯定小于1,currency表设定',
  `fee_trade` decimal(20,8) NOT NULL COMMENT '已成交订单的费用',
  `deal_time` int(10) NOT NULL COMMENT '成交时间',
  PRIMARY KEY (`deal_id`),
  UNIQUE KEY `deal_sn` (`deal_sn`),
  KEY `user_id` (`user_id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易委托表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_finance_type`
--

CREATE TABLE IF NOT EXISTS `quan_finance_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `quan_finance_type`
--

INSERT INTO `quan_finance_type` (`id`, `name`, `status`) VALUES
(1, '会员升级', 1),
(3, '管理员充值', 1),
(4, '管理员扣款', 1),
(5, '升级会员', 1),
(6, '充值', 1),
(8, '众筹扣款', 1),
(9, '众筹获取', 1),
(10, '分红奖励', 1),
(11, '交易手续费', 1),
(12, '推荐奖励', 1),
(13, '分红股奖励', 1),
(23, '提现', 1);

-- --------------------------------------------------------

--
-- 表的结构 `quan_financing_phase`
--

CREATE TABLE IF NOT EXISTS `quan_financing_phase` (
  `financing_phase_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '融资阶段表id',
  `financing_phase_name` varchar(30) NOT NULL COMMENT '融资阶段名称',
  PRIMARY KEY (`financing_phase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='融资阶段表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `quan_financing_phase`
--

INSERT INTO `quan_financing_phase` (`financing_phase_id`, `financing_phase_name`) VALUES
(1, '未融资'),
(2, '天使轮'),
(3, 'A轮'),
(4, 'B轮'),
(5, 'C轮'),
(6, 'D轮');

-- --------------------------------------------------------

--
-- 表的结构 `quan_link`
--

CREATE TABLE IF NOT EXISTS `quan_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `position_id` int(10) unsigned NOT NULL COMMENT '友情链接位置id',
  `link_name` varchar(15) NOT NULL COMMENT '链接名称',
  `link_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0图片,1文字,2视频,3.flash',
  `link_code` varchar(255) NOT NULL COMMENT '友情链接资源,图片等',
  `link` varchar(125) NOT NULL,
  `is_show` tinyint(4) NOT NULL COMMENT '0不显示,1显示',
  `add_time` int(10) unsigned NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '值大靠前',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `quan_link`
--

INSERT INTO `quan_link` (`link_id`, `position_id`, `link_name`, `link_type`, `link_code`, `link`, `is_show`, `add_time`, `sort_order`) VALUES
(3, 0, '新浪', 0, '', 'https://www.baidu.com/', 1, 1458907678, 0),
(4, 0, '凤凰', 0, '', 'https://www.baidu.com/', 1, 1458907719, 0),
(5, 0, '比特币', 0, '', 'https://www.baidu.com/', 1, 1458907730, 0),
(6, 0, '虚拟币', 0, '', 'https://www.baidu.com/', 1, 1458907737, 0),
(7, 0, '支付宝', 0, '', 'https://www.baidu.com/', 1, 1458907745, 0),
(8, 0, '淘宝', 0, '', 'https://www.baidu.com/', 1, 1458907791, 0),
(9, 0, '网易', 0, '', 'https://www.baidu.com/', 1, 1458907803, 0),
(10, 0, '京东', 0, '', 'https://www.baidu.com/', 1, 1458907821, 0),
(11, 0, '央视', 0, '', 'https://www.baidu.com/', 1, 1458907834, 0),
(12, 0, '太平洋', 0, '', 'https://www.baidu.com/', 1, 1458907845, 0),
(13, 0, '汽车', 0, '', 'https://www.baidu.com/', 1, 1458907860, 0),
(15, 0, '银行', 0, '', 'https://www.baidu.com/', 1, 1458907866, 0),
(19, 0, '百度', 0, '', 'https://www.baidu.com/', 1, 1458907682, 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_link_position`
--

CREATE TABLE IF NOT EXISTS `quan_link_position` (
  `position_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `quan_link_position`
--

INSERT INTO `quan_link_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`) VALUES
(8, '积分兑换广告位235', 0, 0, ''),
(7, '首页轮播', 600, 400, ''),
(9, '阿斯顿发', 0, 0, ''),
(12, '撒旦法3', 0, 0, ''),
(13, '撒旦法35', 0, 0, ''),
(14, '撒旦法3567', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_message`
--

CREATE TABLE IF NOT EXISTS `quan_message` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息主键id',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送者',
  `receiver_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '接收者id',
  `read_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '查看状态,0未查看1已查看',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `is_cancel` tinyint(4) unsigned NOT NULL COMMENT '是否撤销消息,信息不显示',
  `msg_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '消息类型,信息类型,0文本,1图片,2语音,3.视频,4.链接',
  `msg_text` varchar(1000) NOT NULL COMMENT '信息内容',
  PRIMARY KEY (`msg_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='信息表,用户对用户' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `quan_message`
--

INSERT INTO `quan_message` (`msg_id`, `sender_id`, `receiver_id`, `read_state`, `send_time`, `is_cancel`, `msg_type`, `msg_text`) VALUES
(1, 2, 1, 0, 1499336767, 0, 0, '阿斯顿发'),
(2, 2, 1, 0, 1499336917, 0, 0, '的萨芬撒旦法'),
(3, 2, 1, 0, 1499336920, 0, 0, '的萨芬撒旦法132'),
(4, 2, 1, 0, 1499336924, 0, 0, '的萨芬撒旦法132的萨芬'),
(5, 2, 1, 0, 1499336927, 0, 0, '466746'),
(6, 2, 1, 0, 1499336931, 0, 0, '46546'),
(7, 2, 1, 0, 1499336933, 0, 0, '46546'),
(8, 2, 1, 0, 1499336937, 0, 0, '465463213'),
(9, 2, 1, 0, 1499336940, 0, 0, '465463213的萨芬'),
(10, 2, 1, 0, 1499336944, 0, 0, '465463213的萨芬士大夫'),
(11, 2, 1, 0, 1499336947, 0, 0, '465463213的萨芬士大夫爱的色放'),
(12, 2, 1, 0, 1499338993, 0, 0, '的萨芬'),
(13, 2, 1, 0, 1499338997, 0, 0, '的萨芬132'),
(14, 1, 2, 0, 1499345721, 0, 0, '法师大哥\n范德萨g个\n范德萨'),
(15, 1, 2, 0, 1499345805, 0, 0, '爱的色放'),
(16, 1, 2, 0, 1499345807, 0, 0, '的萨芬'),
(17, 1, 2, 0, 1499346054, 0, 0, '爱的色放'),
(18, 1, 2, 0, 1499346065, 0, 0, '该死的法国');

-- --------------------------------------------------------

--
-- 表的结构 `quan_mobile_prefix`
--

CREATE TABLE IF NOT EXISTS `quan_mobile_prefix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL COMMENT '国家名称',
  `mobile_prefix` varchar(255) DEFAULT NULL COMMENT '区号',
  `area` varchar(255) DEFAULT NULL COMMENT '所在的洲',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='国际电话号码区号' AUTO_INCREMENT=428 ;

--
-- 转存表中的数据 `quan_mobile_prefix`
--

INSERT INTO `quan_mobile_prefix` (`id`, `country`, `mobile_prefix`, `area`) VALUES
(214, '中国', '86', '亚洲'),
(215, '香港', '852', '亚洲'),
(216, '澳门', '853', '亚洲'),
(217, '台湾', '886', '亚洲'),
(218, '马来西亚', '60', '亚洲'),
(219, '印度尼西亚', '62', '亚洲'),
(220, '菲律宾', '63', '亚洲'),
(221, '新加坡', '65', '亚洲'),
(222, '泰国', '66', '亚洲'),
(223, '日本', '81', '亚洲'),
(224, '韩国', '82', '亚洲'),
(225, '塔吉克斯坦', '7', '亚洲'),
(226, '哈萨克斯坦', '7', '亚洲'),
(227, '越南', '84', '亚洲'),
(228, '土耳其', '90', '亚洲'),
(229, '印度', '91', '亚洲'),
(230, '巴基斯坦', '92', '亚洲'),
(231, '阿富汗', '93', '亚洲'),
(232, '斯里兰卡', '94', '亚洲'),
(233, '缅甸', '95', '亚洲'),
(234, '伊朗', '98', '亚洲'),
(235, '亚美尼亚', '374', '亚洲'),
(236, '东帝汶', '670', '亚洲'),
(237, '文莱', '673', '亚洲'),
(238, '朝鲜', '850', '亚洲'),
(239, '柬埔寨', '855', '亚洲'),
(240, '老挝', '856', '亚洲'),
(241, '孟加拉国', '880', '亚洲'),
(242, '马尔代夫', '960', '亚洲'),
(243, '黎巴嫩', '961', '亚洲'),
(244, '约旦', '962', '亚洲'),
(245, '叙利亚', '963', '亚洲'),
(246, '伊拉克', '964', '亚洲'),
(247, '科威特', '965', '亚洲'),
(248, '沙特阿拉伯', '966', '亚洲'),
(249, '也门', '967', '亚洲'),
(250, '阿曼', '968', '亚洲'),
(251, '巴勒斯坦', '970', '亚洲'),
(252, '阿联酋', '971', '亚洲'),
(253, '以色列', '972', '亚洲'),
(254, '巴林', '973', '亚洲'),
(255, '卡塔尔', '974', '亚洲'),
(256, '不丹', '975', '亚洲'),
(257, '蒙古', '976', '亚洲'),
(258, '尼泊尔', '977', '亚洲'),
(259, '土库曼斯坦', '993', '亚洲'),
(260, '阿塞拜疆', '994', '亚洲'),
(261, '乔治亚', '995', '亚洲'),
(262, '吉尔吉斯斯坦', '996', '亚洲'),
(263, '乌兹别克斯坦', '998', '亚洲'),
(264, '英国', '44', '欧洲'),
(265, '德国', '49', '欧洲'),
(266, '意大利', '39', '欧洲'),
(267, '法国', '33', '欧洲'),
(268, '俄罗斯', '7', '欧洲'),
(269, '希腊', '30', '欧洲'),
(270, '荷兰', '31', '欧洲'),
(271, '比利时', '32', '欧洲'),
(272, '西班牙', '34', '欧洲'),
(273, '匈牙利', '36', '欧洲'),
(274, '罗马尼亚', '40', '欧洲'),
(275, '瑞士', '41', '欧洲'),
(276, '奥地利', '43', '欧洲'),
(277, '丹麦', '45', '欧洲'),
(278, '瑞典', '46', '欧洲'),
(279, '挪威', '47', '欧洲'),
(280, '波兰', '48', '欧洲'),
(281, '圣马力诺', '223', '欧洲'),
(282, '匈牙利', '336', '欧洲'),
(283, '南斯拉夫', '338', '欧洲'),
(284, '直布罗陀', '350', '欧洲'),
(285, '葡萄牙', '351', '欧洲'),
(286, '卢森堡', '352', '欧洲'),
(287, '爱尔兰', '353', '欧洲'),
(288, '冰岛', '354', '欧洲'),
(289, '阿尔巴尼亚', '355', '欧洲'),
(290, '马耳他', '356', '欧洲'),
(291, '塞浦路斯', '357', '欧洲'),
(292, '芬兰', '358', '欧洲'),
(293, '保加利亚', '359', '欧洲'),
(294, '立陶宛', '370', '欧洲'),
(295, '拉脱维亚', '371', '欧洲'),
(296, '爱沙尼亚', '372', '欧洲'),
(297, '摩尔多瓦', '373', '欧洲'),
(298, '安道尔共和国', '376', '欧洲'),
(299, '乌克兰', '380', '欧洲'),
(300, '南斯拉夫', '381', '欧洲'),
(301, '克罗地亚', '385', '欧洲'),
(302, '斯洛文尼亚', '386', '欧洲'),
(303, '波黑', '387', '欧洲'),
(304, '马其顿', '389', '欧洲'),
(305, '梵蒂冈', '396', '欧洲'),
(306, '捷克', '420', '欧洲'),
(307, '斯洛伐克', '421', '欧洲'),
(308, '列支敦士登', '423', '欧洲'),
(309, '秘鲁', '51', '南美洲'),
(310, '墨西哥', '52', '南美洲'),
(311, '古巴', '53', '南美洲'),
(312, '阿根廷', '54', '南美洲'),
(313, '巴西', '55', '南美洲'),
(314, '智利', '56', '南美洲'),
(315, '哥伦比亚', '57', '南美洲'),
(316, '委内瑞拉', '58', '南美洲'),
(317, '福克兰群岛', '500', '南美洲'),
(318, '伯利兹', '501', '南美洲'),
(319, '危地马拉', '502', '南美洲'),
(320, '萨尔瓦多', '503', '南美洲'),
(321, '洪都拉斯', '504', '南美洲'),
(322, '尼加拉瓜', '505', '南美洲'),
(323, '哥斯达黎加', '506', '南美洲'),
(324, '巴拿马', '507', '南美洲'),
(325, '圣彼埃尔', '508', '南美洲'),
(326, '海地', '509', '南美洲'),
(327, '瓜德罗普', '590', '南美洲'),
(328, '玻利维亚', '591', '南美洲'),
(329, '圭亚那', '592', '南美洲'),
(330, '厄瓜多尔', '593', '南美洲'),
(331, '法属圭亚那', '594', '南美洲'),
(332, '巴拉圭', '595', '南美洲'),
(333, '马提尼克', '596', '南美洲'),
(334, '苏里南', '597', '南美洲'),
(335, '乌拉圭', '598', '南美洲'),
(336, '埃及', '20', '非洲'),
(337, '南非', '27', '非洲'),
(338, '摩洛哥', '212', '非洲'),
(339, '阿尔及利亚', '213', '非洲'),
(340, '突尼斯', '216', '非洲'),
(341, '利比亚', '218', '非洲'),
(342, '冈比亚', '220', '非洲'),
(343, '塞内加尔', '221', '非洲'),
(344, '毛里塔尼亚', '222', '非洲'),
(345, '马里', '223', '非洲'),
(346, '几内亚', '224', '非洲'),
(347, '科特迪瓦', '225', '非洲'),
(348, '布基拉法索', '226', '非洲'),
(349, '尼日尔', '227', '非洲'),
(350, '多哥', '228', '非洲'),
(351, '贝宁', '229', '非洲'),
(352, '毛里求斯', '230', '非洲'),
(353, '利比里亚', '231', '非洲'),
(354, '塞拉利昂', '232', '非洲'),
(355, '加纳', '233', '非洲'),
(356, '尼日利亚', '234', '非洲'),
(357, '乍得', '235', '非洲'),
(358, '中非', '236', '非洲'),
(359, '喀麦隆', '237', '非洲'),
(360, '佛得角', '238', '非洲'),
(361, '圣多美', '239', '非洲'),
(362, '普林西比', '239', '非洲'),
(363, '赤道几内亚', '240', '非洲'),
(364, '加蓬', '241', '非洲'),
(365, '刚果', '242', '非洲'),
(366, '扎伊尔', '243', '非洲'),
(367, '安哥拉', '244', '非洲'),
(368, '几内亚比绍', '245', '非洲'),
(369, '阿森松', '247', '非洲'),
(370, '塞舌尔', '248', '非洲'),
(371, '苏丹', '249', '非洲'),
(372, '卢旺达', '250', '非洲'),
(373, '埃塞俄比亚', '251', '非洲'),
(374, '索马里', '252', '非洲'),
(375, '吉布提', '253', '非洲'),
(376, '肯尼亚', '254', '非洲'),
(377, '坦桑尼亚', '255', '非洲'),
(378, '乌干达', '256', '非洲'),
(379, '布隆迪', '257', '非洲'),
(380, '莫桑比克', '258', '非洲'),
(381, '赞比亚', '260', '非洲'),
(382, '马达加斯加', '261', '非洲'),
(383, '留尼旺岛', '262', '非洲'),
(384, '津巴布韦', '263', '非洲'),
(385, '纳米比亚', '264', '非洲'),
(386, '马拉维', '265', '非洲'),
(387, '莱索托', '266', '非洲'),
(388, '博茨瓦纳', '267', '非洲'),
(389, '斯威士兰', '268', '非洲'),
(390, '科摩罗', '269', '非洲'),
(391, '圣赫勒拿', '290', '非洲'),
(392, '厄立特里亚', '291', '非洲'),
(393, '阿鲁巴岛', '297', '非洲'),
(394, '法罗群岛', '298', '非洲'),
(395, '摩纳哥', '377', '非洲'),
(396, '澳大利亚', '61', '大洋洲'),
(397, '新西兰', '64', '大洋洲'),
(398, '关岛', '671', '大洋洲'),
(399, '瑙鲁', '674', '大洋洲'),
(400, '汤加', '676', '大洋洲'),
(401, '所罗门群岛', '677', '大洋洲'),
(402, '瓦努阿图', '678', '大洋洲'),
(403, '斐济', '679', '大洋洲'),
(404, '科克群岛', '682', '大洋洲'),
(405, '纽埃岛', '683', '大洋洲'),
(406, '东萨摩亚', '684', '大洋洲'),
(407, '西萨摩亚', '685', '大洋洲'),
(408, '基里巴斯', '686', '大洋洲'),
(409, '图瓦卢', '688', '大洋洲'),
(410, '科科斯岛', '619162', '大洋洲'),
(411, '诺福克岛', '6723', '大洋洲'),
(412, '圣诞岛', '619164', '大洋洲'),
(413, '美国', '1', '北美洲'),
(414, '加拿大', '1', '北美洲'),
(415, '夏威夷', '1808', '北美洲'),
(416, '阿拉斯加', '1907', '北美洲'),
(417, '格陵兰岛', '299', '北美洲'),
(418, '中途岛', '1808', '北美洲'),
(419, '威克岛', '1808', '北美洲'),
(420, '维尔京群岛', '1809', '北美洲'),
(421, '波多黎各', '1809', '北美洲'),
(422, '巴哈马', '1809', '北美洲'),
(423, '安圭拉岛', '1809', '北美洲'),
(424, '圣卢西亚', '1809', '北美洲'),
(425, '巴巴多斯', '1809', '北美洲'),
(426, '牙买加', '1876', '北美洲'),
(427, '南极洲', '64672', '南极洲');

-- --------------------------------------------------------

--
-- 表的结构 `quan_order_from`
--

CREATE TABLE IF NOT EXISTS `quan_order_from` (
  `table_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `table_name` varchar(30) DEFAULT NULL COMMENT '表名不包含前缀',
  `comment` varchar(60) NOT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='订单来源表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `quan_order_from`
--

INSERT INTO `quan_order_from` (`table_id`, `table_name`, `comment`) VALUES
(1, 'order_goods', '订单商品表'),
(2, 'order_project', '订单项目表'),
(3, 'user_account', '用户账户订单表,用户充值取现等');

-- --------------------------------------------------------

--
-- 表的结构 `quan_order_goods`
--

CREATE TABLE IF NOT EXISTS `quan_order_goods` (
  `rec_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '0' COMMENT '订单编号,来源pay_log表,可以唯一',
  `pay_code` varchar(8) NOT NULL COMMENT '支付编码,payment表',
  `order_state` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '订单的状态;0已确认-初始,1.失效或取消',
  `pay_state` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态;0未付款;1已付款,2.已退款',
  `shipping_state` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '商品配送情况;0未发货,1.备货中,2已发货,3已收货,4退货',
  `pay_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '支付当前商品总金额',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL COMMENT '商家id',
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格,不是goods表shop_price价格,比如活动时goods_price是活动价',
  `is_virtual` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是不是虚拟商品',
  `spec_value` text NOT NULL COMMENT '购买时,选择的商品属性的规格',
  `buy_number` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '购买数量',
  `act_type_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '商品可参加活动类型名称,英文缩写',
  `act_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '不同活动表,主键,如打折时Promotion表,主键pro_id',
  `price_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价(商品最终单价+属性价格)*数量,不包含各种费用的总价',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品保价费用',
  `reduce_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '活动时单个商品单价减少金额',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '购买时使用多少积分',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购买时积分折算多少钱',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '取消,无意义支付费用,一般为0,在payment表里设置',
  `postscript` varchar(200) NOT NULL COMMENT '用户留言',
  `ad_id` int(11) NOT NULL COMMENT '订单来源广告id',
  `add_time` int(11) unsigned NOT NULL COMMENT '订单添加时间',
  `pay_time` int(11) unsigned NOT NULL COMMENT '支付时间',
  `confirm_time` int(11) unsigned NOT NULL COMMENT '卖家确认时间',
  `shipping_time` int(11) unsigned NOT NULL COMMENT '卖家发货时间',
  `refund_time` int(11) unsigned NOT NULL COMMENT '退款时间',
  `express_code` varchar(10) NOT NULL COMMENT '快递编码',
  `tracking_num` varchar(32) NOT NULL COMMENT '运单号',
  `to_buyer` varchar(200) NOT NULL COMMENT '给卖家留言',
  `comment_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品评论id,0未评论',
  PRIMARY KEY (`rec_id`),
  UNIQUE KEY `add_time` (`add_time`),
  KEY `order_id` (`order_sn`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `quan_order_goods`
--

INSERT INTO `quan_order_goods` (`rec_id`, `order_sn`, `pay_code`, `order_state`, `pay_state`, `shipping_state`, `pay_amount`, `user_id`, `supplier_id`, `goods_id`, `goods_name`, `goods_number`, `market_price`, `goods_price`, `is_virtual`, `spec_value`, `buy_number`, `act_type_id`, `act_id`, `price_amount`, `shipping_fee`, `insure_fee`, `reduce_money`, `integral`, `integral_money`, `pay_fee`, `postscript`, `ad_id`, `add_time`, `pay_time`, `confirm_time`, `shipping_time`, `refund_time`, `express_code`, `tracking_num`, `to_buyer`, `comment_id`) VALUES
(1, '20170602182', 'wxpay', 0, 1, 0, '0.01', 9, 0, 27, '拼团NIKE耐克女鞋人气女子编织运动休闲跑步鞋748589-003', 5599, '100000.00', '0.01', 0, '绿色 M 割发代首99', 1, 0, 0, '0.01', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', 0, 1496403489, 1496403494, 0, 0, 0, '', '', '', 0),
(2, '20170602187', 'wxpay', 0, 1, 0, '0.01', 9, 0, 27, '拼团NIKE耐克女鞋人气女子编织运动休闲跑步鞋748589-003', 5599, '100000.00', '0.01', 0, '绿色 S 割发代首99', 1, 0, 0, '0.01', '0.00', '0.00', '0.00', 0, '0.00', '0.00', 'l', 0, 1496403909, 1496403914, 0, 0, 0, '', '', '', 0),
(3, '20170602188', 'balance', 0, 1, 0, '0.01', 9, 0, 27, '拼团NIKE耐克女鞋人气女子编织运动休闲跑步鞋748589-003', 5599, '100000.00', '0.01', 0, '红色 S 割发代首99', 1, 0, 0, '0.01', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', 0, 1496403931, 1496403931, 0, 0, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_order_project`
--

CREATE TABLE IF NOT EXISTS `quan_order_project` (
  `rec_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '0' COMMENT '订单编号,来源pay_log表,唯一',
  `order_state` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '订单的状态;0已确认-初始,1.失效或取消',
  `pay_state` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态;0未付款;1已付款',
  `pay_final` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态项目完成0初始1失败退款给卖家,2成功支付币(扣除发行费用后)给发起者',
  `pay_code` varchar(8) NOT NULL COMMENT '支付方式编码,用户余额balance,支付宝alipay,微信支付wxpay',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '项目id',
  `currency_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单使用的币种id',
  `pay_amount` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '购买数量',
  `token_rate` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT 'token代币兑换比例',
  `token_total` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '购买成功获得代币数量',
  `postscript` varchar(200) NOT NULL COMMENT '用户留言',
  `add_time` int(11) unsigned NOT NULL COMMENT '订单添加时间',
  `pay_time` int(11) unsigned NOT NULL COMMENT '支付时间',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `quan_order_project`
--

INSERT INTO `quan_order_project` (`rec_id`, `order_sn`, `order_state`, `pay_state`, `pay_final`, `pay_code`, `user_id`, `project_id`, `currency_id`, `pay_amount`, `token_rate`, `token_total`, `postscript`, `add_time`, `pay_time`) VALUES
(4, '2017071112', 0, 1, 0, 'balance', 1, 5, 2, '1.00000000', '20.00000000', '20.00000000', '', 1499740385, 0),
(5, '2017071113', 0, 1, 1, 'balance', 1, 7, 2, '1.00000000', '90.00000000', '90.00000000', '', 1499740509, 0),
(6, '2017071919', 0, 0, 0, 'balance', 1, 7, 1, '1.00000000', '9.00000000', '9.00000000', '', 1500458800, 0),
(7, '2017071920', 0, 1, 1, 'balance', 1, 7, 1, '1.00000000', '9.00000000', '9.00000000', '', 1500458848, 0),
(8, '2017071921', 0, 1, 1, 'balance', 1, 7, 1, '100.00000000', '9.00000000', '900.00000000', '', 1500458884, 0),
(9, '2017071922', 0, 1, 1, 'balance', 1, 7, 2, '22.23000000', '90.00000000', '2000.70000000', '', 1500458909, 0),
(10, '2017081544', 0, 1, 0, 'balance', 1, 6, 1, '0.00010000', '10.00000000', '0.00100000', '', 1502761751, 0),
(11, '2017081545', 0, 1, 0, 'balance', 1, 6, 1, '0.00100000', '10.00000000', '0.01000000', '', 1502763097, 0),
(12, '2017081546', 0, 0, 0, 'balance', 1, 6, 1, '50.01000000', '10.00000000', '500.10000000', '', 1502763529, 0),
(13, '2017081547', 0, 0, 0, 'balance', 1, 6, 1, '50.01000000', '10.00000000', '500.10000000', '', 1502764458, 0),
(14, '2017081548', 0, 1, 0, 'balance', 1, 6, 1, '0.01200000', '10.00000000', '0.12000000', '', 1502764996, 0),
(15, '2017081549', 0, 1, 0, 'balance', 1, 6, 1, '98.48700000', '10.00000000', '984.87000000', '', 1502765883, 0),
(16, '2017081550', 0, 1, 0, 'balance', 1, 1, 1, '1.00000000', '50.00000000', '50.00000000', '', 1502766547, 0),
(17, '2017081551', 0, 1, 0, 'balance', 1, 1, 1, '59.00000000', '50.00000000', '2950.00000000', '', 1502766588, 0),
(18, '2017081552', 0, 1, 0, 'balance', 1, 5, 2, '0.00010000', '20.00000000', '0.00200000', '', 1502797213, 0),
(19, '2017081553', 0, 1, 0, 'balance', 1, 5, 2, '0.00010000', '20.00000000', '0.00200000', '', 1502797238, 0),
(20, '2017081554', 0, 1, 0, 'balance', 1, 5, 2, '0.00100000', '20.00000000', '0.02000000', '', 1502797388, 0),
(21, '2017081555', 0, 0, 0, 'balance', 1, 5, 2, '0.01000000', '20.00000000', '0.20000000', '', 1502797592, 0),
(22, '2017081556', 0, 0, 0, 'balance', 1, 5, 2, '0.01000000', '20.00000000', '0.20000000', '', 1502797600, 0),
(23, '2017081557', 0, 1, 0, 'balance', 1, 5, 2, '0.00100000', '20.00000000', '0.02000000', '', 1502797640, 0),
(24, '2017081558', 0, 1, 0, 'balance', 1, 8, 1, '1.20000000', '8.00000000', '9.60000000', '', 1502801834, 0),
(25, '2017081559', 0, 1, 0, 'balance', 1, 8, 1, '1.00000000', '8.00000000', '8.00000000', '', 1502802200, 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_payment`
--

CREATE TABLE IF NOT EXISTS `quan_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(20) NOT NULL DEFAULT '',
  `pay_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `pay_desc` varchar(255) NOT NULL,
  `sort_order` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `quan_payment`
--

INSERT INTO `quan_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `sort_order`, `pay_config`, `enabled`, `is_cod`, `is_online`) VALUES
(1, 'wxpay', '微信支付', '0.00', '23333', 0, '{"app_id":"wxa61328816c5c4977","app_secret":"b6209deb29763df2733263f9c6d73cd7","mchid":"1412700902","key":"wx723e47a637dde8e2tuqu0123456789","notifyurl":"","successurl":""}', 1, 0, 0),
(2, 'alipay', '支付宝', '0.00', '', 0, '', 1, 0, 0),
(3, 'balance', '余额支付', '0.00', '', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_pay_log`
--

CREATE TABLE IF NOT EXISTS `quan_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL COMMENT ' 网站交易编号,4位年2位月2位天,+主键log_id',
  `order_from` tinyint(3) unsigned NOT NULL COMMENT 'order_from表主键',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 用户id',
  `pay_code` varchar(8) NOT NULL COMMENT '支付编码,微信支付wxpay,支付宝alipay,会员余额balance',
  `currency_id` tinyint(3) unsigned NOT NULL COMMENT '币种id,0表示人民币,遗留问题',
  `pay_amount` decimal(20,8) NOT NULL COMMENT '订单金额',
  `pay_state` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '支付结果0未支付,1已支付,2.订单退款,3异常,付款金额不一致4.交易取消',
  `transaction_id` varchar(32) NOT NULL COMMENT '第三方支付订单号',
  `trade_type` varchar(10) NOT NULL COMMENT '第三方,交易类型JSAPI(js支付)、NATIVE(原生支付二维码)、APP',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `pay_time` int(10) unsigned NOT NULL COMMENT '付款时间',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户手动充值记录表,包括订单充值' AUTO_INCREMENT=61 ;

--
-- 转存表中的数据 `quan_pay_log`
--

INSERT INTO `quan_pay_log` (`log_id`, `order_sn`, `order_from`, `user_id`, `pay_code`, `currency_id`, `pay_amount`, `pay_state`, `transaction_id`, `trade_type`, `add_time`, `pay_time`) VALUES
(1, '20170702', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1498984066, 0),
(2, '20170702', 2, 1, 'balance', 0, '2.00000000', 0, '', '', 1498984148, 0),
(3, '20170702', 2, 1, 'balance', 0, '2.00000000', 0, '', '', 1498984173, 0),
(4, '20170702', 2, 1, 'balance', 0, '2.00000000', 0, '', '', 1498995630, 0),
(5, '20170702', 2, 1, 'balance', 0, '3.00000000', 0, '', '', 1498995653, 0),
(6, '20170703', 2, 1, 'balance', 0, '1.50000000', 0, '', '', 1499051351, 0),
(7, '20170705', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1499244020, 0),
(8, '20170705', 2, 1, 'balance', 0, '4.90000000', 0, '', '', 1499244571, 0),
(9, '20170705', 2, 1, 'balance', 0, '5.00000000', 0, '', '', 1499247385, 0),
(10, '20170705', 2, 1, 'balance', 0, '15.00000000', 0, '', '', 1499247405, 0),
(11, '20170705', 2, 1, 'balance', 0, '3.00000000', 0, '', '', 1499247421, 0),
(12, '20170711', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1499740385, 0),
(13, '20170711', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1499740509, 0),
(14, '20170718', 2, 1, 'balance', 0, '1.00010000', 0, '', '', 1500380176, 0),
(15, '20170718', 2, 1, 'balance', 0, '1.00010000', 0, '', '', 1500380796, 0),
(16, '20170718', 2, 1, 'balance', 0, '1.00010000', 0, '', '', 1500380813, 0),
(17, '20170718', 2, 1, 'balance', 0, '1.00010000', 0, '', '', 1500380938, 0),
(18, '20170718', 2, 1, 'balance', 0, '2.22232222', 0, '', '', 1500381034, 0),
(19, '20170719', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1500458800, 0),
(20, '20170719', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1500458848, 0),
(21, '20170719', 2, 1, 'balance', 0, '100.00000000', 0, '', '', 1500458884, 0),
(22, '20170719', 2, 1, 'balance', 0, '22.23000000', 0, '', '', 1500458909, 0),
(23, '20170723', 2, 1, 'balance', 0, '2.51010000', 0, '', '', 1500790575, 0),
(24, '20170723', 2, 1, 'balance', 0, '2.51010000', 0, '', '', 1500790593, 0),
(25, '20170723', 2, 1, 'balance', 0, '2.31010000', 0, '', '', 1500790650, 0),
(26, '20170723', 2, 1, 'balance', 0, '0.01010000', 0, '', '', 1500790739, 0),
(27, '20170723', 2, 1, 'balance', 0, '0.01010000', 0, '', '', 1500790953, 0),
(28, '20170723', 2, 1, 'balance', 0, '0.02010000', 0, '', '', 1500791187, 0),
(29, '20170723', 2, 1, 'balance', 0, '0.03010000', 0, '', '', 1500791265, 0),
(30, '20170723', 2, 1, 'balance', 0, '0.53010000', 0, '', '', 1500791931, 0),
(31, '20170725', 3, 1, 'BTC', 0, '0.50000000', 0, 'DSAFSDFAS', '', 1500946715, 0),
(32, '20170725', 3, 1, 'BTC', 0, '0.50000000', 0, 'DSAFSDFAS', '', 1500946741, 0),
(33, '20170725', 3, 1, 'BTC', 0, '0.50000000', 0, 'DSAFSDFAS', '', 1500946762, 0),
(34, '20170725', 3, 1, 'BTC', 0, '0.50000000', 0, 'DSAFSDFAS', '', 1500946836, 0),
(35, '20170725', 3, 1, 'BTC', 0, '0.50000000', 0, 'DSAFSDFAS', '', 1500947046, 0),
(36, '20170725', 3, 1, 'BTC', 0, '0.50000000', 1, 'DSAFSDFAS', '', 1500947124, 0),
(37, '20170725', 3, 1, 'BTC', 0, '0.50000000', 0, 'DSAFSDFAS', '', 1500947142, 0),
(38, '20170725', 3, 1, 'BTC', 0, '0.50000000', 1, 'DSAFSDFAS', '', 1500947175, 0),
(40, '20170725', 2, 1, 'balance', 0, '0.10010000', 0, '', '', 1500950069, 0),
(41, '20170725', 3, 1, 'balance', 1, '0.50000000', 1, 'DSAFSDFAS', '', 1500952101, 1500952101),
(42, '20170725', 2, 1, 'balance', 1, '0.21010000', 1, 'DSAFSDFASsss', '', 1500953111, 1500975331),
(43, '20170807', 2, 1, 'balance', 2, '1.00010000', 0, '', '', 1502112979, 0),
(44, '20170815', 2, 1, 'balance', 0, '0.00010000', 0, '', '', 1502761751, 0),
(45, '20170815', 2, 1, 'balance', 0, '0.00100000', 0, '', '', 1502763097, 0),
(46, '20170815', 2, 1, 'balance', 0, '50.01000000', 0, '', '', 1502763529, 0),
(47, '20170815', 2, 1, 'balance', 0, '50.01000000', 0, '', '', 1502764458, 0),
(48, '20170815', 2, 1, 'balance', 0, '0.01200000', 0, '', '', 1502764996, 0),
(49, '20170815', 2, 1, 'balance', 0, '98.48700000', 0, '', '', 1502765883, 0),
(50, '20170815', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1502766547, 0),
(51, '20170815', 2, 1, 'balance', 0, '59.00000000', 0, '', '', 1502766588, 0),
(52, '20170815', 2, 1, 'balance', 0, '0.00010000', 0, '', '', 1502797213, 0),
(53, '20170815', 2, 1, 'balance', 0, '0.00010000', 0, '', '', 1502797238, 0),
(54, '20170815', 2, 1, 'balance', 0, '0.00100000', 0, '', '', 1502797388, 0),
(55, '20170815', 2, 1, 'balance', 0, '0.01000000', 0, '', '', 1502797592, 0),
(56, '20170815', 2, 1, 'balance', 0, '0.01000000', 0, '', '', 1502797600, 0),
(57, '20170815', 2, 1, 'balance', 0, '0.00100000', 0, '', '', 1502797640, 0),
(58, '20170815', 2, 1, 'balance', 0, '1.20000000', 0, '', '', 1502801834, 0),
(59, '20170815', 2, 1, 'balance', 0, '1.00000000', 0, '', '', 1502802200, 0),
(60, '20170823', 2, 1, 'balance', 4, '0.05000000', 0, '', '', 1503468857, 0);

-- --------------------------------------------------------

--
-- 表的结构 `quan_project`
--

CREATE TABLE IF NOT EXISTS `quan_project` (
  `project_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `is_exhibit` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是不是展示项目,0不是,1是',
  `check_state` tinyint(4) unsigned NOT NULL COMMENT '审核状态,0初始,1待审核,,2审核未通过3.审核通过',
  `financing_state` tinyint(3) unsigned NOT NULL COMMENT '0,初始状态,1失败,2成功',
  `pay_final` tinyint(3) NOT NULL COMMENT '支付状态项目完成0初始1失败退款给卖家,2成功支付币(扣除发行费用后)给发起者',
  `pay_num` varchar(200) NOT NULL COMMENT '支付给发起者数量,json格式',
  `fee_num` varchar(200) NOT NULL COMMENT '费用数量,json格式',
  `is_recycle` tinyint(3) unsigned NOT NULL COMMENT '是否回收站',
  `project_name` varchar(150) NOT NULL COMMENT '项目名称',
  `code` varchar(15) NOT NULL COMMENT '项目币编码,通过此项目成功后加入用户余额',
  `originator` varchar(15) NOT NULL COMMENT '创始人真实姓名',
  `country_id` tinyint(3) unsigned NOT NULL COMMENT ' 所属国家',
  `office_address` varchar(120) NOT NULL COMMENT '办公地址',
  `team_size` smallint(5) unsigned NOT NULL COMMENT '团队规模(人数)',
  `project_phase_id` tinyint(3) unsigned NOT NULL COMMENT '项目阶段id',
  `financing_phase_id` tinyint(3) unsigned NOT NULL COMMENT '融资阶段id',
  `project_brief` varchar(500) NOT NULL COMMENT '项目简介',
  `project_vedio` varchar(255) NOT NULL COMMENT '项目视频',
  `project_img` varchar(200) NOT NULL COMMENT '项目封面图片',
  `white_paper` varchar(200) NOT NULL COMMENT '项目白皮书',
  `business_plan` varchar(200) NOT NULL COMMENT '商业计划书',
  `attachment_1` varchar(200) NOT NULL COMMENT '附件其它_1',
  `token_total` decimal(15,0) unsigned NOT NULL COMMENT '以太坊代币发行总数',
  `token_num` decimal(15,0) unsigned NOT NULL COMMENT '本网站发行代币数量',
  `token_min` decimal(15,0) unsigned NOT NULL COMMENT '目标token,达到发行成功,小于等于本站发行token',
  `phase_time` varchar(200) NOT NULL COMMENT '阶段时间json格式,4个阶段',
  `exchange_rate` varchar(200) NOT NULL COMMENT 'token每种币兑换比例,json格式',
  `financing_num` varchar(200) NOT NULL COMMENT '已融资数量json格式',
  `subscribe_token` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '已认购的token',
  `progress_total` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '进展总数',
  `discuss_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论总数',
  `supporter` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支持者,总人次',
  `repay_days` smallint(3) unsigned NOT NULL COMMENT '回报时间,多少天内回报',
  `repay_desc` varchar(200) NOT NULL COMMENT '回报说明',
  `ico_days` smallint(5) unsigned NOT NULL COMMENT 'ico天数',
  `contacts` varchar(15) NOT NULL COMMENT '联系人',
  `contacts_phone` varchar(15) NOT NULL COMMENT '联系人电话',
  `contacts_job` varchar(20) NOT NULL COMMENT '联系人职位',
  `add_time` int(10) unsigned NOT NULL COMMENT '项目添加时间',
  `lock_time` int(10) unsigned NOT NULL COMMENT '锁定时间开始时间,需大于项目正式开始时间,start_time',
  `start_time` int(10) unsigned NOT NULL COMMENT '融资开始时间',
  `end_time` int(10) unsigned NOT NULL COMMENT '融资结束时间',
  `admin_note` varchar(60) NOT NULL COMMENT '管理员审核留言',
  `content` text NOT NULL COMMENT '项目正文',
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_name` (`project_name`),
  KEY `start_time` (`start_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='项目表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `quan_project`
--

INSERT INTO `quan_project` (`project_id`, `user_id`, `is_exhibit`, `check_state`, `financing_state`, `pay_final`, `pay_num`, `fee_num`, `is_recycle`, `project_name`, `code`, `originator`, `country_id`, `office_address`, `team_size`, `project_phase_id`, `financing_phase_id`, `project_brief`, `project_vedio`, `project_img`, `white_paper`, `business_plan`, `attachment_1`, `token_total`, `token_num`, `token_min`, `phase_time`, `exchange_rate`, `financing_num`, `subscribe_token`, `progress_total`, `discuss_total`, `supporter`, `repay_days`, `repay_desc`, `ico_days`, `contacts`, `contacts_phone`, `contacts_job`, `add_time`, `lock_time`, `start_time`, `end_time`, `admin_note`, `content`) VALUES
(1, 1, 0, 3, 2, 0, '', '', 0, '测试111', '', '', 1, '的萨芬', 5, 2, 2, '萨芬的士大夫', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/62a1e5c045f8807c68d0edf08d8afa84', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/5e3b8ae0f8598ee817814be509cac10d', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/5e3b8ae0f8598ee817814be509cac10d', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/5e3b8ae0f8598ee817814be509cac10d', '6000', '3000', '3000', '{"1":1523336340}', '{"BTC":{"1":"50","2":"","3":"","4":""},"ETH":{"1":"500","2":"","3":"","4":""}}', '{"BTC":60}', '3000.00000000', 0, 0, 2, 100, '发的是广东省个范德萨个', 0, '官方', '12345612312', '范德萨', 1514396340, 0, 1501736340, 1523336340, '', '大事发的萨芬都是'),
(2, 1, 0, 0, 0, 0, '', '', 0, '阿斯顿飞洒', '', '', 1, '的萨芬', 9, 1, 3, '的萨芬', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/4e8c5adb4a7d938ba1114b362d700159', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '6000', '4000', '400', '{"1":1513836000}', '{"BTC":{"1":"22","2":"","3":"","4":""}}', '', '0.00000000', 0, 0, 0, 100, '的发生过的施工范德萨个', 0, '浮点', '12345678123', '士大夫3', 1514296340, 1502099580, 1509516000, 1513836000, '', '集合就 就'),
(3, 1, 1, 3, 1, 0, '', '', 0, '的分公司答复', 'ABS', '', 1, '萨芬的', 3, 1, 3, '的撒范德萨', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/451c4dc76023e919724c0656c88274f9', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '', '1000000', '1000', '1000', '{"1":1519162440}', '{"BTC":{"1":"20","2":"","3":"","4":""},"ETH":{"1":"200","2":"","3":"","4":""}}', '', '0.00000000', 0, 1, 3, 99, '士大夫的萨芬', 0, '方式个', '12312312312', '范德萨', 1511696340, 0, 1499207182, 1499247500, '', '发到公司的发范德萨个'),
(4, 1, 0, 1, 0, 0, '', '', 0, '广东省法国123', '', '', 1, '是大法官', 3, 1, 2, '发的是规定发给范德萨官方333', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/7ccb3953096ef26591e9b73a946584c5', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '', '50000', '5000', '500', '{"1":1504148640,"2":1515171600}', '{"ETH":{"1":"100","2":"80","3":"","4":""}}', '', '0.00000000', 0, 0, 0, 100, '的分公司答复讽德诵功范德萨', 0, '分公司', '12345678879', '的萨芬', 1514693340, 0, 1501520400, 1515171600, '', 'fdsg sdfg sdfgs'),
(5, 1, 0, 3, 1, 0, '', '', 0, '阿范德萨', '', '', 1, '阿斯顿发', 3, 1, 4, '爱的色放阿斯顿发', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/15af067181bece63d583752ab95ebcd0', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '', '10000', '1000', '200', '{"1":1506751200,"2":1521525600}', '{"ETH":{"1":"20","2":"30","3":"","4":""}}', '{"ETH":1.0021999999999998}', '20.04400000', 4, 0, 5, 150, '46465465', 0, '的发生公司', '12346546546', '士大夫', 1514196340, 1498909500, 1502172000, 1521525600, '', ''),
(6, 1, 0, 3, 2, 0, '', '', 0, '的萨芬', '', '', 1, '撒旦法', 6, 1, 4, '的萨芬的萨芬', '阿斯顿发', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/3ed46fa6d8af2d21b6860da3e8a94f2e', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/undefined/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '', '3000', '1000', '100', '{"1":1517331600}', '{"BTC":{"1":"10","2":"","3":"","4":""}}', '{"BTC":100.00009999999999}', '1000.00100000', 0, 0, 5, 60, '士大夫士大夫', 0, '的萨芬', '13265455562', '的萨芬', 1514616340, 0, 1501520400, 1517331600, '', '的萨芬的萨芬++++'),
(7, 1, 0, 3, 1, 1, '{"BTC":95.95,"ETH":22.0685}', '{"BTC":5.05,"ETH":1.1615}', 0, '阿斯顿发3', 'ABC', '', 1, '撒旦法', 3, 1, 3, '撒旦法士大夫', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/5914b665b900cd5a5c7a10ae2edee913', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/2e6f0421756ca4dd1f640bda366722e1', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '', '30000', '3000', '300', '{"1":1510333200}', '{"BTC":{"1":"9","2":"","3":"","4":""},"ETH":{"1":"90","2":"","3":"","4":""}}', '{"ETH":23.23,"BTC":101}', '2999.70000000', 11, 15, 4, 30, '的萨芬萨芬', 0, '的萨芬', '13636566545', '的萨芬', 1511696340, 0, 1499792400, 1510333200, '', '的说法都是飞'),
(8, 1, 0, 3, 0, 0, '', '', 0, '的程序', 'CBD', '', 1, '的萨芬', 99, 1, 4, '的萨芬是否', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/62a1e5c045f8807c68d0edf08d8afa84', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '', '30000', '3000', '300', '{"1":1503369120,"2":1506047520}', '{"BTC":{"1":"10","2":"8","3":"","4":""},"ETH":{"1":"100","2":"80","3":"","4":""}}', '{"BTC":2.2}', '17.60000000', 0, 0, 2, 200, '撒旦个电饭锅', 0, '123', '12336546789', '13213', 1514296340, 1503147780, 1503282720, 1506047520, '', '的萨芬\n\ndsafdsa'),
(9, 1, 0, 0, 1, 0, '', '', 0, '的萨芬的萨芬123', '', '', 1, '的萨芬', 99, 2, 5, '撒旦法', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/5914b665b900cd5a5c7a10ae2edee913', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/a0f60e8a743d2b3f847d131ffa68c23b', '', '10000', '1000', '100', '{"1":1499513940}', '{"BTC":{"1":"10","2":"","3":"","4":""}}', '', '0.00000000', 0, 0, 0, 1002, '发生的', 0, '123', '12312345645', '123', 1514616340, 0, 1498822740, 1499513940, '', '的萨芬333'),
(10, 1, 1, 1, 1, 0, '', '', 0, '的萨芬的萨芬', 'ABC', '', 1, '大师傅的萨芬', 10, 1, 2, '给的撒分公司答复', '', 'http://or85ryudu.bkt.clouddn.com/index/1/project/gallery/0/3ed46fa6d8af2d21b6860da3e8a94f2e', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/5e3b8ae0f8598ee817814be509cac10d', 'http://or85ryudu.bkt.clouddn.com/index/1/project/attachment/0/5e3b8ae0f8598ee817814be509cac10d', '', '30000', '3000', '300', '{"1":1501899720}', '{"ETH":{"1":"200","2":"","3":"","4":""}}', '', '0.00000000', 0, 0, 0, 100, '的飞洒', 0, 'SDF', '13236336468', 'DSAF', 1500258048, 1501294920, 1501294920, 1501899720, '', '的撒范德萨发');

-- --------------------------------------------------------

--
-- 表的结构 `quan_project_discuss`
--

CREATE TABLE IF NOT EXISTS `quan_project_discuss` (
  `discuss_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目评论id',
  `project_id` int(10) unsigned NOT NULL COMMENT '项目id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `p_id` int(10) unsigned NOT NULL COMMENT '评论父级用户id',
  `is_show` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '是否撤销',
  `thumb_up` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞',
  `reply_total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复总数',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `ip` varchar(15) NOT NULL COMMENT '回复时的ip地址',
  `content` varchar(1000) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`discuss_id`),
  KEY `article_id` (`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='单品类评论' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `quan_project_discuss`
--

INSERT INTO `quan_project_discuss` (`discuss_id`, `project_id`, `user_id`, `p_id`, `is_show`, `thumb_up`, `reply_total`, `add_time`, `ip`, `content`) VALUES
(1, 7, 1, 0, 1, 0, 0, 1499416216, '127.0.0.1', '更换的法国的'),
(2, 7, 1, 0, 1, 0, 0, 1499416242, '127.0.0.1', '更换的法国的的萨芬'),
(3, 7, 1, 0, 1, 0, 0, 1499416443, '127.0.0.1', '更换的法国的的萨芬\r\n士大夫撒'),
(4, 7, 1, 0, 1, 0, 0, 1499416449, '127.0.0.1', '54645645'),
(5, 7, 1, 0, 1, 0, 0, 1499416455, '127.0.0.1', '54645645客户'),
(6, 7, 1, 0, 1, 0, 0, 1499416460, '127.0.0.1', '54645645客户是大法官的飞洒'),
(7, 7, 1, 0, 1, 0, 0, 1499416465, '127.0.0.1', '54645645客户是大法官的飞'),
(8, 7, 1, 0, 1, 0, 0, 1499416471, '127.0.0.1', '++645645客户是大法官的'),
(9, 7, 1, 0, 1, 0, 0, 1499416477, '127.0.0.1', '---+645645客户是大法官的'),
(10, 7, 1, 0, 1, 0, 0, 1499416504, '127.0.0.1', '****+645645客户是大法官的'),
(11, 7, 1, 0, 1, 0, 0, 1499416509, '127.0.0.1', '***----*+645645客户是大法官的'),
(12, 7, 1, 0, 1, 0, 0, 1499416519, '127.0.0.1', '***----*+645645客户是大法官的过分的话'),
(13, 7, 1, 0, 1, 0, 0, 1499419971, '127.0.0.1', '的说法'),
(14, 3, 1, 0, 1, 0, 0, 1499422576, '127.0.0.1', '撒的发生的'),
(15, 7, 1, 0, 1, 2, 0, 1499766558, '127.0.0.1', '的法国的是'),
(16, 7, 1, 0, 1, 0, 0, 1499858437, '127.0.0.1', 'adfsd');

-- --------------------------------------------------------

--
-- 表的结构 `quan_project_lock`
--

CREATE TABLE IF NOT EXISTS `quan_project_lock` (
  `lock_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `project_id` int(10) unsigned NOT NULL COMMENT '项目id',
  `currency_id` tinyint(11) unsigned NOT NULL COMMENT '币id',
  `lock_num` decimal(15,8) unsigned NOT NULL COMMENT '锁定购买数量',
  `lock_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0初始状态,1.有效,2.已完成(1.项目开始时,产生订单,)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户项目锁定表';

-- --------------------------------------------------------

--
-- 表的结构 `quan_project_phase`
--

CREATE TABLE IF NOT EXISTS `quan_project_phase` (
  `project_phase_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目阶段表id',
  `project_phase_name` varchar(30) NOT NULL COMMENT '项目阶段名称',
  PRIMARY KEY (`project_phase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='项目阶段表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `quan_project_phase`
--

INSERT INTO `quan_project_phase` (`project_phase_id`, `project_phase_name`) VALUES
(1, '尚未启动'),
(2, '产品开发中'),
(3, '产品已上市'),
(4, '已经盈利');

-- --------------------------------------------------------

--
-- 表的结构 `quan_project_progress`
--

CREATE TABLE IF NOT EXISTS `quan_project_progress` (
  `progress_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目进展id',
  `project_id` int(10) unsigned NOT NULL COMMENT '项目id',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `edit_time` int(10) unsigned NOT NULL COMMENT '最后编辑时间',
  `content` varchar(600) NOT NULL COMMENT '内容',
  PRIMARY KEY (`progress_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='项目进展表' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `quan_project_progress`
--

INSERT INTO `quan_project_progress` (`progress_id`, `project_id`, `is_show`, `add_time`, `edit_time`, `content`) VALUES
(1, 5, 1, 1499586658, 0, '项目开始'),
(2, 5, 1, 1499586659, 1499602469, '123sfd'),
(11, 7, 1, 1499671218, 1499682366, '456'),
(10, 7, 1, 1499671201, 1499671201, '项目开始'),
(9, 7, 1, 1499671176, 1499671176, '项目开始'),
(7, 5, 1, 1499604559, 1499604559, '爱的色放'),
(8, 5, 1, 1499604571, 1499682432, '爱的色放123'),
(12, 7, 1, 1499684414, 1499684414, 'asdfsaf\r\ndsafsdaf'),
(13, 7, 1, 1499684532, 1499684532, 'dsaf a'),
(14, 7, 1, 1499684663, 1499684678, '123'),
(15, 7, 1, 1499684685, 1499684685, '456'),
(16, 7, 1, 1499684707, 1499684707, '465'),
(17, 7, 0, 1499685398, 1499688846, 'sdafsdaf'),
(18, 7, 1, 1499688947, 1499688954, '士大夫'),
(19, 7, 0, 1499689168, 1499689168, '的后果打工的好'),
(20, 7, 1, 1499689174, 1499689290, '过得好个的'),
(21, 7, 1, 1499932461, 1499932461, 'dasfdsafdasfa');

-- --------------------------------------------------------

--
-- 表的结构 `quan_shareholder`
--

CREATE TABLE IF NOT EXISTS `quan_shareholder` (
  `share_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `token_total` decimal(20,8) NOT NULL COMMENT '用户项目订单代币总数',
  `project_id` int(10) unsigned NOT NULL COMMENT '来源project_id',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`share_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='股东列表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `quan_shareholder`
--

INSERT INTO `quan_shareholder` (`share_id`, `user_id`, `token_total`, `project_id`, `add_time`) VALUES
(1, 1, '2999.70000000', 7, 1500607282),
(2, 2, '1000.00000000', 7, 1500607282);

-- --------------------------------------------------------

--
-- 表的结构 `quan_shareholder_bonus`
--

CREATE TABLE IF NOT EXISTS `quan_shareholder_bonus` (
  `bonus_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `currency_id` int(10) unsigned NOT NULL COMMENT '币种id',
  `amount` decimal(20,8) NOT NULL COMMENT '分红总金额',
  `pay_amount` decimal(12,8) NOT NULL COMMENT '已支付总额',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `pay_time` int(10) unsigned NOT NULL COMMENT '支付时间',
  `admin_note` varchar(20) NOT NULL COMMENT '显示在用户账户记录里面admin_note字段',
  `remark` varchar(60) NOT NULL COMMENT '备注',
  PRIMARY KEY (`bonus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='股东分红纪录表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `quan_shareholder_bonus`
--

INSERT INTO `quan_shareholder_bonus` (`bonus_id`, `pay_state`, `currency_id`, `amount`, `pay_amount`, `add_time`, `pay_time`, `admin_note`, `remark`) VALUES
(1, 0, 1, '12.00000000', '0.00000000', 1500623151, 0, '', '2017年1月分红'),
(2, 1, 1, '10.00000000', '10.00000000', 1500623161, 1500632486, '', '2017年2月分红'),
(3, 0, 2, '15.00000000', '0.00000000', 1500623176, 0, '', '2017年3月分红'),
(4, 1, 3, '15.00000000', '15.00000000', 1500623183, 0, '', '2017年4月分红'),
(5, 0, 1, '20.00000000', '0.00000000', 1502778079, 0, '', '8'),
(6, 1, 4, '100.00000000', '99.99999999', 1503041795, 1503044769, '赠送代币', '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_shareholder_bonus_log`
--

CREATE TABLE IF NOT EXISTS `quan_shareholder_bonus_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bonus_id` int(10) unsigned NOT NULL COMMENT '分红id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `pay_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_amount` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '发生金额',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `bonus_user_id` (`bonus_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分红纪录表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_system_config`
--

CREATE TABLE IF NOT EXISTS `quan_system_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name_group` varchar(15) NOT NULL COMMENT '系统设置分组',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '设置参数名称',
  `value_type` varchar(10) NOT NULL DEFAULT '' COMMENT '值类型,出库后的类型,出库后要对值进行类型处理,text不用处理,int用intval,float用floatval,array用explode('','',值),array_json用json_decode(值,true)',
  `option_val` varchar(255) NOT NULL COMMENT '可选值',
  `value` varchar(255) NOT NULL,
  `comment` varchar(100) NOT NULL COMMENT '配置备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='配置文件' AUTO_INCREMENT=66 ;

--
-- 转存表中的数据 `quan_system_config`
--

INSERT INTO `quan_system_config` (`id`, `name_group`, `name`, `value_type`, `option_val`, `value`, `comment`) VALUES
(1, 'shop', 'shop_name', 'text', '', '55token', ''),
(2, 'shop', 'shop_title', 'text', '', '55token-区块链项目ICO服务平台', ''),
(3, 'shop', 'shop_keywords', 'text', '', '55token-区块链,区块链投资,区块链,区块链技术,区块链应用,区块链金融,区块链概念股,区块链原理,数字货币,数字资产', ''),
(4, 'shop', 'shop_desc', 'text', '', '55token-是一家针对数字货币、区块链领域的ICO融资服务平台，由一支有着丰富数字货币、区块链行业经验的团队成立。我们致力于为广大数字货币、区块链投资者提供一个安全、诚信、公平、透明的ICO融资服务平台。', ''),
(5, 'shop', 'shop_address', 'text', '', '', ''),
(6, 'shop', 'shop_logo', 'text', '', '', ''),
(7, 'shop', 'shop_qq', 'array', '', '282675853,456465465', ''),
(8, 'shop', 'shop_email', 'array', '', 'info@55token.com', ''),
(9, 'shop', 'shop_telepone', 'array', '', '0518-13246546,0512-54654654', ''),
(10, 'shop', 'shop_icp_code', 'text', '', '', ''),
(11, 'shop', 'shop_icp_url', 'text', '', '', ''),
(12, 'backstage', 'backstage_list_num', 'int', '', '10', '后台列表显示数量'),
(13, 'goods', 'goods_page_rows', 'int', '', '10', '(如分类商品)分页显示行数'),
(14, 'buy', 'buy_pay_allow', 'int', '', '1', '支付是否开启'),
(15, 'buy', 'buy_integral_allow', 'int', '', '1', ''),
(16, 'buy', 'buy_integral_name', 'text', '', '', ''),
(17, 'buy', 'buy_integral_convert_money', 'int', '', '1', '积分折算多少钱'),
(18, 'buy', 'buy_money_give_integral', 'int', '', '1', '购买时1元获得多少积分'),
(20, 'buy', 'buy_paid_shortmsg', 'int', '', '0', '支付后是否发短信用户'),
(21, 'buy', 'buy_deliver_shortmsg', 'int', '', '0', '发货后是否发送信息用户'),
(22, 'user', 'user_register_allow', 'int', '', '1', '是否允许用户注册'),
(23, 'user', 'user_page_rows', 'int', '', '10', '用户分页时显示多少行,如订单'),
(24, 'qiniu', 'qiniu_bucket', 'text', '', 'currency', ''),
(25, 'qiniu', 'qiniu_bucket_domain', 'text', '', 'http://or85ryudu.bkt.clouddn.com/', ''),
(26, 'qiniu', 'qiniu_cdn_domain', 'text', '', '', ''),
(27, 'weixin', 'weixin_developer', 'text', '', 'gh_83010811d96e', ''),
(28, 'weixin', 'weixin_token', 'text', '', 'pinp', ''),
(29, 'weixin', 'weixin_appid', 'text', '', 'wxa61328816c5c4977', ''),
(30, 'weixin', 'weixin_appsecret', 'text', '', 'b6209deb29763df2733263f9c6d73cd7', ''),
(31, 'weixin', 'weixin_server_id', 'text', '', '139.196.96.105', ''),
(32, 'weixin', 'weixin_wechat_public', 'text', '', '购啊啊', ''),
(33, 'weixin', 'weixin_sender', 'text', '', '购啊啊平台', ''),
(34, 'weixin', 'weixin_wishing', 'text', '', '恭喜发财', ''),
(35, 'weixin', 'weixin_action_info', 'text', '', '红包提现活动', ''),
(36, 'weixin', 'weixin_remark', 'text', '', '请再接再厉！', ''),
(37, 'qiniu', 'qiniu_accessKey', 'text', '', 'EgHBSA0HfrLJir-pvqBQYvg--dDlSPGGMV0C9PC5', ''),
(38, 'qiniu', 'qiniu_secretKey', 'text', '', '9nStfFB9G_EZhk-Q8TC-N65T0J1SUWYUI_9VvTw_', ''),
(39, 'user', 'user_address_max', 'int', '', '20', '用户新增收货地址最大值'),
(40, 'user', 'user_cash_allow', 'int', '0,1', '1', '用户提现是否允许'),
(41, 'user', 'user_cash_auto', 'int', '0,1', '1', '用户取现是否自动处理(不需要系统审核)'),
(42, 'weixin', 'weixin_encodingaeskey', 'text', '', 'YwOUYvj9HGtmMBQrvziRQTaoFRkrKzSytt4MXp42ZZc', '微信消息加密密钥'),
(43, 'user', 'user_cash_max', 'int', '', '1000', '用户取现最大值'),
(44, 'user', 'user_cash_min', 'int', '', '1', '用户最小取现金额'),
(45, 'sms', 'sms_user_name', 'text', '', 'jy66655', '短信接口用户名'),
(46, 'sms', 'sms_user_passwd', 'text', '', '5a359144b9a51a885b43285c22bfaf28', '短信接口密码'),
(47, 'email', 'email_sender', 'text', '', 'jy66655@163.com', '邮箱地址,发件人地址'),
(48, 'email', 'email_port', 'text', '', '25', '邮件服务商端口'),
(51, 'sms', 'sms_title', 'text', '', '', '短信接口标题'),
(50, 'email', 'email_auth_code', 'text', '', 'jy876628', '邮件授权密码'),
(52, 'user', 'user_deposit_allow', 'text', '', '', ''),
(53, 'email', 'email_host', 'text', '', 'smtp.163.com', ''),
(54, 'user', 'user_register_validate_method', 'array', 'email_1,email_2,mobile', 'email_2,mobile', '同时支持手机或邮箱用,隔开email_1取消,用户登录验证方式,空表示不需要邮箱,短信验证\nemail_1发送验证链接到邮箱用户点击验证,email_2发送验证码到邮箱,用户输入验证码\nmobile手'),
(55, 'sms', 'sms_valid_time', 'int', '', '10', '短信验证码有效时间,单位分钟'),
(56, 'email', 'email_valid_time', 'int', '', '30', 'email验证码有效时间,单位分钟'),
(57, 'project', 'project_commission_percent', 'floatval', '', '5', '项目佣金百分比'),
(61, 'qiniu', 'qiniu_http_upload', 'text', '', 'http://upload.qiniu.com', '七牛空间,区域对应http上传url'),
(58, 'shop', 'shop_qq_qun', 'array', '', '557965462,560407446', 'qq群'),
(59, 'shop', 'shop_wx_public', 'array', '', 'qc9965', '微信公众号'),
(60, 'shop', 'shop_wx_qun', 'array', '', '123132,789789', '微信群'),
(62, 'qiniu', 'qiniu_https_upload', 'text', '', 'https://upload.qbox.me', '七牛空间,区域对应https上传url'),
(63, 'cache', 'cache_time', 'int', '', '1200', '单位s,缓存静态页面缓存时间'),
(64, 'trade', 'trade_is_trade', 'int', '0,1', '1', '交易分组,所有交易是否开启,0关闭,1开启'),
(65, 'shop', 'shop_language', 'text', 'zh-CN,en-US', 'en-US', '网站语言');

-- --------------------------------------------------------

--
-- 表的结构 `quan_user`
--

CREATE TABLE IF NOT EXISTS `quan_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(15) DEFAULT NULL COMMENT '昵称',
  `user_name` varchar(20) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `trade_passwd` varchar(32) NOT NULL COMMENT '交易密码',
  `trade_entry` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '交易密码输入设置,0不输入,1登录后第一次交易输入,2每次都输入',
  `profile` varchar(60) NOT NULL COMMENT '个人简介',
  `header_url` varchar(255) NOT NULL COMMENT '用户头像',
  `salt` int(10) unsigned NOT NULL COMMENT '密码加密字段',
  `sex` tinyint(4) NOT NULL COMMENT '性别 ;0未知;1男;2女',
  `mobile_prefix` smallint(5) unsigned NOT NULL COMMENT '手机号前缀,86等',
  `mobile` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `qq` varchar(15) NOT NULL COMMENT 'qq号',
  `email` varchar(30) DEFAULT NULL,
  `country_id` tinyint(3) NOT NULL COMMENT '国家',
  `address` varchar(60) NOT NULL COMMENT '联系地址',
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `credit_line` decimal(10,2) NOT NULL COMMENT '信用额度',
  `pay_integral` int(11) unsigned NOT NULL COMMENT '消费积分',
  `integral` int(11) unsigned NOT NULL COMMENT '用户积分,包含消费积分,赠送积分',
  `address_id` int(11) unsigned NOT NULL COMMENT '用户默认收货地址',
  `reg_type` tinyint(3) unsigned NOT NULL COMMENT '注册验证类型,0初始,1无验证,2邮箱,3手机,4微信,5qq,6微博,.....',
  `reg_time` int(11) unsigned NOT NULL COMMENT '注册时间',
  `login_ip` varchar(15) NOT NULL COMMENT '最后登录ip',
  `login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `visit_count` int(11) unsigned NOT NULL COMMENT '登录次数',
  `login_fail` tinyint(3) unsigned NOT NULL COMMENT '连续登录失败次数',
  `birthday` int(10) NOT NULL COMMENT '用户生日',
  `p_id` int(11) unsigned NOT NULL COMMENT '推荐者id',
  `shop_frozen` decimal(8,2) NOT NULL COMMENT '店铺冻结资金,就是申请shop_vip时交的总资金',
  `shop_vip` tinyint(4) unsigned NOT NULL COMMENT '店长等级,0初始,1表示1级,2级,3级',
  `shop_name` varchar(6) NOT NULL COMMENT '店铺名称',
  `wx_open_id` varchar(32) NOT NULL,
  `qq_open_id` varchar(32) NOT NULL COMMENT 'qq登录用户open_id',
  `wx_name` varchar(20) NOT NULL COMMENT '微信昵称',
  `qq_name` varchar(20) NOT NULL COMMENT 'qq昵称',
  `is_subscribe` tinyint(3) NOT NULL COMMENT '是否关注',
  `lng` decimal(10,6) NOT NULL COMMENT '经度-精确到分米',
  `lat` decimal(10,6) NOT NULL COMMENT '纬度-精确到分米',
  `notice_set` varchar(100) NOT NULL COMMENT '通知设置,json格式',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `nick_name` (`nick_name`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `quan_user`
--

INSERT INTO `quan_user` (`user_id`, `nick_name`, `user_name`, `passwd`, `trade_passwd`, `trade_entry`, `profile`, `header_url`, `salt`, `sex`, `mobile_prefix`, `mobile`, `qq`, `email`, `country_id`, `address`, `user_money`, `frozen_money`, `credit_line`, `pay_integral`, `integral`, `address_id`, `reg_type`, `reg_time`, `login_ip`, `login_time`, `visit_count`, `login_fail`, `birthday`, `p_id`, `shop_frozen`, `shop_vip`, `shop_name`, `wx_open_id`, `qq_open_id`, `wx_name`, `qq_name`, `is_subscribe`, `lng`, `lat`, `notice_set`) VALUES
(1, NULL, '282675853@qq.com', '181127c1434f865e5e0a9be463446783', 'da06582cf81a219372e0c889812200d2', 2, '', '', 520286470, 0, 0, '13236336468', '', '282675853@qq.com', 0, '', '0.00', '0.00', '0.00', 0, 0, 0, 2, 1503130659, '127.0.0.1', 1505614249, 0, 0, 0, 0, '0.00', 0, '', '', '', '', '', 0, '0.000000', '0.000000', '{"login":1,"deposit":1,"cash":1,"passwd":1,"trade_passwd":1}'),
(2, NULL, '282675854@qq.com', 'da06582cf81a219372e0c889812200d2', 'da06582cf81a219372e0c889812200d2', 1, '', '', 520286470, 0, 0, '', '', '282675854@qq.com', 0, '', '0.00', '0.00', '0.00', 0, 0, 0, 2, 1503130659, '127.0.0.1', 1505636865, 0, 0, 0, 0, '0.00', 0, '', '', '', '', '', 0, '0.000000', '0.000000', '{"login":1,"deposit":1,"cash":1,"passwd":1,"trade_passwd":1}');

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_account`
--

CREATE TABLE IF NOT EXISTS `quan_user_account` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '账户明细id',
  `order_sn` varchar(20) NOT NULL COMMENT '订单编号,来源pay_log表',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单的状态;0已确认-初始,1.失效或取消',
  `pay_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付结果0未支付,1已支付',
  `pay_code` varchar(10) NOT NULL COMMENT 'payment表,支付方式编码,如wxpay(微信支付)',
  `currency_id` tinyint(3) unsigned NOT NULL COMMENT '币种id',
  `pay_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单结果类型,0未引起用户资金改变(做个记录入如购买商品),1增加,2减少',
  `pay_type_de` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付结果详情,0.用户资金未增减,做记录,订单支出(使用第三方支付)1.开头表示增加,10充值,11订单退款,12用户退款增加,13用户业务增加如分红, 14管理员增加,15冻结资金解冻user表frozen_money字段, //2.开头支出,20取现,21订单支出(余额支付),23用户业务减少 24管理员减少金额(一般不允许,用于测试,减 //金额失败情形)25资金冻结 ',
  `pay_before` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '付款前用户对应币余额',
  `pay_amount` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '发生金额,或币数量',
  `pay_after` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '操作后用户对应币余额',
  `pay_fee` decimal(20,8) NOT NULL COMMENT '手续费,包含在pay_amount中',
  `wallet_address` varchar(60) NOT NULL COMMENT '钱包地址,充值时用户充值地址,取现时,用户收款钱包地址',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `pay_time` int(10) unsigned NOT NULL COMMENT '支付时间',
  `user_note` varchar(200) NOT NULL COMMENT '用户留言',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作字段的管理员id',
  `admin_note` varchar(200) NOT NULL,
  `remark` varchar(500) NOT NULL COMMENT 'json格式,备注,字段pay_type,其他业务使用',
  PRIMARY KEY (`account_id`),
  KEY `user_id` (`user_id`),
  KEY `order_sn` (`order_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_address`
--

CREATE TABLE IF NOT EXISTS `quan_user_address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `consignee` varchar(20) NOT NULL COMMENT '收件人',
  `mobile` varchar(15) NOT NULL COMMENT '手机号码',
  `tel` varchar(15) NOT NULL COMMENT '固定电话',
  `country` mediumint(8) unsigned NOT NULL COMMENT '国家,region表的id',
  `province` mediumint(8) unsigned NOT NULL COMMENT '省id',
  `city` mediumint(8) unsigned NOT NULL COMMENT '市id',
  `district` mediumint(8) unsigned NOT NULL COMMENT '区县',
  `town` mediumint(9) NOT NULL COMMENT '乡镇',
  `address` varchar(120) NOT NULL COMMENT '详细地址',
  `zipcode` varchar(10) NOT NULL,
  `is_default` tinyint(4) NOT NULL COMMENT '是否默认地址',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户地址列表' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `quan_user_address`
--

INSERT INTO `quan_user_address` (`address_id`, `user_id`, `consignee`, `mobile`, `tel`, `country`, `province`, `city`, `district`, `town`, `address`, `zipcode`, `is_default`) VALUES
(2, 1, '倒萨', '123465446565', '0', 0, 120000, 120100, 120105, 0, '的萨芬撒的说法', '', 0),
(3, 1, '张宇', '1236465666', '0', 0, 210000, 210300, 210303, 0, '的撒发生大幅是的发生大幅', '', 0),
(4, 1, '王林', '21546545645645', '0', 0, 130000, 130300, 130304, 0, '的萨芬的萨芬的萨芬', '', 0),
(5, 1, '张三', '123365666', '0', 0, 120000, 120100, 120104, 0, '的萨芬的萨芬撒的飞', '', 0),
(6, 1, '张三', '1234654654', '0', 0, 130000, 130200, 130204, 0, '的萨芬的萨芬撒倒萨啊', '', 0),
(7, 3, '张三', '1321465465465', '0', 0, 130000, 130700, 130721, 0, '的萨芬撒的的热温热是', '', 0),
(8, 3, '小二小', '136654665656', '0', 0, 150000, 150100, 150102, 0, '撒旦法士大夫撒发生的', '', 0),
(9, 3, '小二', '136654665656', '', 0, 150000, 150100, 150102, 0, '1111111111', '', 0),
(10, 3, '小二', '136654665656', '', 0, 150000, 150100, 150102, 0, '', '', 0),
(12, 8, 'xxx', '156498798789', '', 0, 110000, 110100, 110101, 0, '士大夫撒旦法撒', '', 0),
(13, 8, 'xxx', '156498798789', '', 0, 110000, 110100, 110101, 0, '士大夫撒旦法撒', '', 0),
(14, 8, 'xxx123789', '156498798789', '', 0, 110000, 110100, 110101, 0, '士大夫撒旦法撒', '', 1),
(15, 8, '的萨芬456', '2315465465', '', 0, 110000, 110100, 110101, 0, '的萨芬', '', 0),
(16, 9, 'sdaf', '13213213216546', '', 0, 110000, 110100, 110102, 0, 'adsf dsafdsaf', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_bankcard`
--

CREATE TABLE IF NOT EXISTS `quan_user_bankcard` (
  `bc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `card_holder` varchar(30) NOT NULL COMMENT '持卡人姓名',
  `bank_id` smallint(3) unsigned NOT NULL COMMENT '开户银行id',
  `branch` varchar(60) NOT NULL COMMENT '开户支行名称',
  `bank_card` varchar(25) NOT NULL COMMENT '银行卡号',
  `review_state` tinyint(4) NOT NULL COMMENT '审核状态,0初始,1待审核,2不通过,3.通过',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`bc_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户银行卡' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `quan_user_bankcard`
--

INSERT INTO `quan_user_bankcard` (`bc_id`, `user_id`, `card_holder`, `bank_id`, `branch`, `bank_card`, `review_state`, `add_time`) VALUES
(1, 1, 'ss', 3, 'www', '333333333333333', 1, 0),
(3, 1, 'ss', 2, 'ss', '1111111111111111111', 1, 0),
(8, 1, '将', 1, '江苏连云港通灌路支行', '111111111111113333', 1, 1503488806),
(9, 1, '江', 2, '江苏连云港通灌路支行', '111111111111113333', 1, 1503489148),
(10, 1, '江', 2, '江苏连云港通灌路支行', '111111111111113333', 1, 1503489349),
(11, 1, '姜烨', 2, '海连路', '123456789969656', 1, 1503728486);

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_currency`
--

CREATE TABLE IF NOT EXISTS `quan_user_currency` (
  `user_cur_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `currency_id` smallint(5) unsigned NOT NULL COMMENT '虚拟币id',
  `user_money` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '虚拟币数量',
  `frozen_money` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '币冻结数量',
  `deposit_address` varchar(60) NOT NULL COMMENT '充值地址,网站钱包生成',
  `cash_address` varchar(60) NOT NULL COMMENT '用户添加',
  PRIMARY KEY (`user_cur_id`),
  UNIQUE KEY `user_id_2` (`user_id`,`currency_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户虚拟币表' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `quan_user_currency`
--

INSERT INTO `quan_user_currency` (`user_cur_id`, `user_id`, `currency_id`, `user_money`, `frozen_money`, `deposit_address`, `cash_address`) VALUES
(1, 1, 1, '101.00000000', '0.00000000', 'LgqmKub5QyxAkFaBxc4haoktXC8yd2jrF5', 'dsafffff'),
(2, 1, 2, '100.00000000', '0.00000000', '0x18c85c816a647c5da284e8e904921dfa01bc5299', 'dsfgsdadsf123'),
(3, 2, 1, '98.99900000', '0.00000000', 'LgqmKub5QyxAkFaBxc4haoktXC8yd2jrF5', ''),
(5, 2, 3, '100.00000000', '0.00000000', '', ''),
(6, 1, 3, '100.00000000', '0.00000000', '', ''),
(10, 2, 2, '100.00000000', '0.00000000', '0x477d8680ae79d40adf1224b1418d9cba06294164\n', ''),
(11, 1, 4, '979980.00000000', '0.00000000', '123456789969656', '123456789969656'),
(12, 2, 4, '1020000.00000000', '0.00000000', '', ''),
(13, 3, 1, '100.00000000', '0.00000000', '', ''),
(14, 3, 2, '100.00000000', '0.00000000', '', ''),
(15, 3, 3, '100.00000000', '0.00000000', '', ''),
(16, 3, 4, '1000000.00000000', '0.00000000', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_friend`
--

CREATE TABLE IF NOT EXISTS `quan_user_friend` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `friend_id` int(10) unsigned NOT NULL COMMENT '好友user_id',
  `unread_total` int(10) unsigned NOT NULL COMMENT '未读信息数',
  `last_time` int(10) unsigned NOT NULL COMMENT '信息最后更新时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `user_id_2` (`user_id`,`friend_id`),
  KEY `user_id` (`user_id`),
  KEY `friend_id` (`friend_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户好友表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `quan_user_friend`
--

INSERT INTO `quan_user_friend` (`f_id`, `user_id`, `friend_id`, `unread_total`, `last_time`, `add_time`) VALUES
(1, 1, 2, 0, 1499338997, 1499336634),
(2, 2, 1, 0, 1499346065, 1499345721);

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_login`
--

CREATE TABLE IF NOT EXISTS `quan_user_login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `login_time` int(11) unsigned NOT NULL COMMENT '登录时间',
  `ip` varchar(15) NOT NULL COMMENT '登录时ip地址',
  `ip_region` varchar(15) NOT NULL COMMENT 'ip归属区域',
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户登录记录表' AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `quan_user_login`
--

INSERT INTO `quan_user_login` (`login_id`, `user_id`, `login_time`, `ip`, `ip_region`) VALUES
(1, 2, 1501397110, '127.0.0.1', '广东 广州'),
(2, 2, 1501397236, '127.0.0.1', ''),
(3, 1, 1501486440, '127.0.0.1', ''),
(4, 1, 1501502693, '127.0.0.1', ''),
(5, 1, 1501989706, '127.0.0.1', ''),
(6, 1, 1502111446, '127.0.0.1', ''),
(7, 1, 1502154876, '127.0.0.1', ''),
(8, 1, 1502161119, '127.0.0.1', ''),
(9, 1, 1502188088, '127.0.0.1', ''),
(10, 1, 1502367199, '', '江苏 连云港'),
(11, 1, 1502420239, '', '江苏 连云港'),
(12, 1, 1502761733, '', '江苏 连云港'),
(13, 2, 1502881372, '', '江苏 连云港'),
(14, 3, 1503130894, '', '江苏 连云港'),
(15, 3, 1503195540, '', '江苏 连云港'),
(16, 3, 1503198988, '', '江苏 连云港'),
(17, 3, 1503199125, '', '江苏 连云港'),
(18, 3, 1503199169, '', '江苏 连云港'),
(19, 3, 1503200122, '', '江苏 连云港'),
(20, 3, 1503209873, '127.0.0.1', ''),
(21, 3, 1503209905, '127.0.0.1', ''),
(22, 3, 1503209971, '127.0.0.1', ''),
(23, 3, 1503282247, '127.0.0.1', ''),
(24, 3, 1503300267, '127.0.0.1', ''),
(25, 3, 1503300302, '127.0.0.1', ''),
(26, 3, 1503300380, '127.0.0.1', ''),
(27, 3, 1503364863, '127.0.0.1', ''),
(28, 1, 1503451375, '127.0.0.1', ''),
(29, 1, 1503537925, '127.0.0.1', ''),
(30, 1, 1503556251, '127.0.0.1', ''),
(31, 1, 1503577960, '127.0.0.1', ''),
(32, 1, 1503647900, '127.0.0.1', ''),
(33, 1, 1503728360, '127.0.0.1', ''),
(34, 1, 1503731372, '127.0.0.1', ''),
(35, 1, 1503745407, '127.0.0.1', ''),
(36, 1, 1503796499, '127.0.0.1', ''),
(37, 1, 1503827173, '127.0.0.1', ''),
(38, 1, 1503883679, '127.0.0.1', ''),
(39, 1, 1503976280, '127.0.0.1', ''),
(40, 1, 1504006650, '127.0.0.1', ''),
(41, 1, 1504055646, '127.0.0.1', ''),
(42, 1, 1504073910, '127.0.0.1', ''),
(43, 1, 1504074046, '127.0.0.1', ''),
(44, 1, 1504084764, '127.0.0.1', ''),
(45, 2, 1504090474, '127.0.0.1', ''),
(46, 1, 1504143208, '127.0.0.1', ''),
(47, 1, 1504229312, '127.0.0.1', ''),
(48, 1, 1504333086, '127.0.0.1', ''),
(49, 1, 1504402593, '127.0.0.1', ''),
(50, 1, 1504488204, '127.0.0.1', ''),
(51, 1, 1504515182, '127.0.0.1', ''),
(52, 1, 1504574474, '127.0.0.1', ''),
(53, 1, 1504580000, '127.0.0.1', ''),
(54, 1, 1504688891, '127.0.0.1', ''),
(55, 1, 1504747084, '127.0.0.1', ''),
(56, 1, 1504833962, '127.0.0.1', ''),
(57, 1, 1504874649, '127.0.0.1', ''),
(58, 1, 1505008104, '127.0.0.1', ''),
(59, 1, 1505182941, '127.0.0.1', ''),
(60, 1, 1505268534, '127.0.0.1', ''),
(61, 1, 1505351777, '127.0.0.1', ''),
(62, 2, 1505352968, '127.0.0.1', ''),
(63, 1, 1505439888, '127.0.0.1', ''),
(64, 2, 1505439926, '127.0.0.1', ''),
(65, 1, 1505614249, '127.0.0.1', ''),
(66, 2, 1505636865, '127.0.0.1', '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_notice`
--

CREATE TABLE IF NOT EXISTS `quan_user_notice` (
  `notice_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` varchar(10) NOT NULL COMMENT '通知类型',
  `content` varchar(2000) NOT NULL COMMENT '通知内容',
  `is_read` tinyint(3) unsigned NOT NULL COMMENT '是否阅读',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户通知' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `quan_user_notice`
--

INSERT INTO `quan_user_notice` (`notice_id`, `user_id`, `type`, `content`, `is_read`, `add_time`) VALUES
(1, 1, '站内通知', '欢迎jy123用户,您已注册成功', 0, 1499303690),
(2, 1, '站内通知', 'ico300平台用户，您好。您的身份认证信息已通过。', 0, 1499308690),
(3, 1, '站内通知', '融资项目未完成,已退款', 0, 1499306690),
(4, 1, '站内通知', '融资项目已成功', 0, 1499318690);

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_state`
--

CREATE TABLE IF NOT EXISTS `quan_user_state` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `unread_message_total` smallint(5) unsigned NOT NULL COMMENT '未读信息总数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户状态表';

-- --------------------------------------------------------

--
-- 表的结构 `quan_user_validate`
--

CREATE TABLE IF NOT EXISTS `quan_user_validate` (
  `user_id` int(10) unsigned NOT NULL,
  `validate_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '认证类型,0初始,1身份证....',
  `validate_from` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0初始,认证来源,1个人,2企业',
  `real_name` varchar(15) NOT NULL COMMENT '真实姓名',
  `country_id_2` tinyint(3) unsigned NOT NULL COMMENT '身份证上的国家id,用户里面有一个country_id,居住地',
  `birthday` date NOT NULL COMMENT '出生日期,yyyy-mm-dd,整形值导致无法区分1970-01-01,',
  `ID_card` varchar(32) NOT NULL COMMENT '身份证',
  `ID_card_front` varchar(200) NOT NULL,
  `ID_card_back` varchar(200) NOT NULL,
  `ID_card_handheld` varchar(120) NOT NULL COMMENT '手持身份证',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `validate_state` tinyint(3) unsigned NOT NULL COMMENT '认证状态,0初始,1待审核,2.认证不通过,3已认证',
  `refuse_cause` varchar(50) NOT NULL COMMENT '拒绝原因',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户实名认证表';

--
-- 转存表中的数据 `quan_user_validate`
--

INSERT INTO `quan_user_validate` (`user_id`, `validate_type`, `validate_from`, `real_name`, `country_id_2`, `birthday`, `ID_card`, `ID_card_front`, `ID_card_back`, `ID_card_handheld`, `add_time`, `validate_state`, `refuse_cause`) VALUES
(1, 1, 1, '姜烨', 1, '0000-00-00', '320725198711112084', 'http://or85ryudu.bkt.clouddn.com/index/3/user/gallery/0/b17c52c8386fff4e9a65fff56c12a67d', 'http://or85ryudu.bkt.clouddn.com/index/3/user/gallery/0/5e7cc1f794b169fa8d4f7fa22fe3feb3', 'http://or85ryudu.bkt.clouddn.com/index/3/user/gallery/0/a780f367a58d76d29b795290ee44245d', 1503287910, 3, '');

-- --------------------------------------------------------

--
-- 表的结构 `quan_wallet_address`
--

CREATE TABLE IF NOT EXISTS `quan_wallet_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '钱包地址',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `currency_id` tinyint(3) unsigned NOT NULL COMMENT '币id',
  `address` varchar(255) NOT NULL COMMENT '钱包地址',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `sort_order` tinyint(3) unsigned NOT NULL COMMENT '排序,降序',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户充值提现表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `quan_wallet_address`
--

INSERT INTO `quan_wallet_address` (`address_id`, `user_id`, `currency_id`, `address`, `add_time`, `sort_order`) VALUES
(1, 1, 1, 'asdfdasf', 1500275949, 0),
(2, 1, 1, 'asdfdasf123', 1500275953, 0),
(3, 1, 2, 'asdfdasf999', 1500275960, 0),
(4, 1, 2, 'asdfdasf888', 1500275965, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
