-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-01 22:03:26
-- 服务器版本： 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yangshi`
--

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin`
--

CREATE TABLE IF NOT EXISTS `v9_admin` (
`userid` mediumint(6) unsigned NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `roleid` smallint(5) DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `card` varchar(255) NOT NULL,
  `lang` varchar(6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v9_admin`
--

INSERT INTO `v9_admin` (`userid`, `username`, `password`, `roleid`, `encrypt`, `lastloginip`, `lastlogintime`, `email`, `realname`, `card`, `lang`) VALUES
(1, 'phpcms', 'dd03823ea91eb7e609592e613790ae94', 1, 'vpRuBV', '127.0.0.1', 1511946919, '363912809@qq.com', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_panel`
--

CREATE TABLE IF NOT EXISTS `v9_admin_panel` (
  `menuid` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(32) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `datetime` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_role`
--

CREATE TABLE IF NOT EXISTS `v9_admin_role` (
`roleid` tinyint(3) unsigned NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `v9_admin_role`
--

INSERT INTO `v9_admin_role` (`roleid`, `rolename`, `description`, `listorder`, `disabled`) VALUES
(1, '超级管理员', '超级管理员', 0, 0),
(2, '站点管理员', '站点管理员', 0, 0),
(3, '运营总监', '运营总监', 1, 0),
(4, '总编', '总编', 5, 0),
(5, '编辑', '编辑', 1, 0),
(7, '发布人员', '发布人员', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_admin_role_priv`
--

CREATE TABLE IF NOT EXISTS `v9_admin_role_priv` (
  `roleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(30) NOT NULL DEFAULT '',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_announce`
--

CREATE TABLE IF NOT EXISTS `v9_announce` (
`aid` smallint(4) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `content` text NOT NULL,
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `username` varchar(40) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `style` char(15) NOT NULL,
  `show_template` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_attachment`
--

CREATE TABLE IF NOT EXISTS `v9_attachment` (
`aid` int(10) unsigned NOT NULL,
  `module` char(15) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filename` char(50) NOT NULL,
  `filepath` char(200) NOT NULL,
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL,
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `authcode` char(32) NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `v9_attachment`
--

INSERT INTO `v9_attachment` (`aid`, `module`, `catid`, `filename`, `filepath`, `filesize`, `fileext`, `isimage`, `isthumb`, `downloads`, `userid`, `uploadtime`, `uploadip`, `status`, `authcode`, `siteid`) VALUES
(30, 'content', 9, 'yansheng_01.jpg', '2017/1130/20171130081531300.jpg', 26312, 'jpg', 1, 0, 0, 1, 1512044131, '127.0.0.1', 1, 'c94e9722280674b494150c40adc5b4d5', 1),
(29, 'content', 9, 'dongx_09.jpg', '2017/1130/20171130081347315.jpg', 68141, 'jpg', 1, 0, 0, 1, 1512044027, '127.0.0.1', 1, '9d03363c2dfbebff3276554b0be21891', 1),
(28, 'content', 9, 'dongx_09.jpg', '2017/1130/20171130081347495.jpg', 68141, 'jpg', 1, 0, 0, 1, 1512044027, '127.0.0.1', 1, 'ef64f9336d08647a5e6e97b4a22388a2', 1),
(4, 'content', 9, '1.mp4', '2017/1110/20171110121750779.mp4', 3897052, 'mp4', 0, 0, 0, 1, 1510287470, '127.0.0.1', 0, '1f5e7a3b65a4ebc6780622795b96c50c', 1),
(5, 'poster', 0, 'index_14.jpg', '2017/1116/20171116033520964.jpg', 371887, 'jpg', 1, 0, 0, 1, 1510817720, '127.0.0.1', 1, 'a2457de77670ce586735050045f00ffc', 1),
(6, 'poster', 0, 'index_14.jpg', '2017/1116/20171116035251612.jpg', 371887, 'jpg', 1, 0, 0, 1, 1510818771, '127.0.0.1', 1, 'f2cd68a752a157e7760c01c32ddba82b', 1),
(27, 'content', 9, 'dongx_09.jpg', '2017/1130/20171130081303216.jpg', 68141, 'jpg', 1, 0, 0, 1, 1512043983, '127.0.0.1', 1, 'fe70d66a776e034901f7a4f23ecc3894', 1),
(8, 'poster', 0, '211414202_R.png', '2017/1116/20171116091654109.png', 403337, 'png', 1, 0, 0, 1, 1510838214, '127.0.0.1', 1, '2bbedbc9dffb37f19143d56b018bf50d', 1),
(9, 'poster', 0, '195739743_R.jpg', '2017/1116/20171116091822672.jpg', 259679, 'jpg', 1, 0, 0, 1, 1510838302, '127.0.0.1', 1, '9955ae3488d9896833883ff69db8a93f', 1),
(10, 'poster', 0, '184449150_R.png', '2017/1116/20171116091852455.png', 344617, 'png', 1, 0, 0, 1, 1510838332, '127.0.0.1', 1, '8c1061bab74cab42f9dbc4ebf989b2b1', 1),
(11, 'poster', 0, '171852304_R.png', '2017/1116/20171116091944405.png', 230466, 'png', 1, 0, 0, 1, 1510838384, '127.0.0.1', 1, '29991d30133587f032c52400e83d555e', 1),
(12, 'poster', 0, '195359252_R.jpg', '2017/1116/20171116092044771.jpg', 250096, 'jpg', 1, 0, 0, 1, 1510838444, '127.0.0.1', 1, '50ae50906fa852e22f9e7bf9250aafed', 1),
(13, 'poster', 0, '205427556_R.jpg', '2017/1116/20171116092123576.jpg', 147399, 'jpg', 1, 0, 0, 1, 1510838483, '127.0.0.1', 1, 'c3a7b42ae18244c1cb29ad10ed0d42ee', 1),
(14, 'poster', 0, '121306920_R.jpg', '2017/1116/20171116092153523.jpg', 217340, 'jpg', 1, 0, 0, 1, 1510838513, '127.0.0.1', 1, 'e749a9afa1addc6182b2dca2a1debd40', 1),
(15, 'poster', 0, '151817631_R.jpg', '2017/1116/20171116092222477.jpg', 239236, 'jpg', 1, 0, 0, 1, 1510838542, '127.0.0.1', 1, '70f0c95101a4897f58f4174a0ec8404d', 1),
(16, 'poster', 0, '172141456_R.jpg', '2017/1116/20171116092245311.jpg', 124118, 'jpg', 1, 0, 0, 1, 1510838565, '127.0.0.1', 1, '71c909279e28f9796f5777c6858cf8ee', 1),
(17, 'poster', 0, 'donghuabg.png', '2017/1117/20171117113326778.png', 485742, 'png', 1, 0, 0, 1, 1510889606, '127.0.0.1', 1, 'a6fbdc6e43767c9403be74d0e9eb2798', 1),
(18, 'poster', 0, 'donghuabg.png', '2017/1117/20171117114327776.png', 485742, 'png', 1, 0, 0, 1, 1510890207, '127.0.0.1', 1, '1e4eec093bd7d382f835160861d4afd4', 1),
(19, 'content', 0, 'aboutbanner.jpg', '2017/1128/20171128044012118.jpg', 287779, 'jpg', 1, 0, 0, 1, 1511858412, '127.0.0.1', 1, 'c465043dc2a7279e8c441cb750818460', 1),
(32, 'content', 9, 'yansheng_04.jpg', '2017/1130/20171130081531524.jpg', 14192, 'jpg', 1, 0, 0, 1, 1512044131, '127.0.0.1', 1, 'aef196128a061630c4ed3ea02f80e17c', 1),
(31, 'content', 9, 'yansheng_03.jpg', '2017/1130/20171130081531365.jpg', 16606, 'jpg', 1, 0, 0, 1, 1512044131, '127.0.0.1', 1, '8679461192fd462492ad73ec26fdf7ad', 1),
(36, 'content', 9, 'dongx_02.jpg', '2017/1130/20171130081619811.jpg', 174197, 'jpg', 1, 0, 0, 1, 1512044179, '127.0.0.1', 1, '455cc9cec125179ac1c9225588a572f5', 1),
(35, 'content', 9, 'yansheng_11.jpg', '2017/1130/20171130081532194.jpg', 6981, 'jpg', 1, 0, 0, 1, 1512044132, '127.0.0.1', 1, '9f53337e969e654d42d1cc54b4532a97', 1),
(34, 'content', 9, 'yansheng_09.jpg', '2017/1130/20171130081531496.jpg', 9602, 'jpg', 1, 0, 0, 1, 1512044131, '127.0.0.1', 1, '33e44bd0f68d6cca6f7d7d96176f63f5', 1),
(33, 'content', 9, 'yansheng_07.jpg', '2017/1130/20171130081531920.jpg', 26602, 'jpg', 1, 0, 0, 1, 1512044131, '127.0.0.1', 1, '6bf38065a11f01873d2ae2bd6baa4b18', 1),
(26, 'content', 9, '202510490_R.jpg', '2017/1130/20171130034323940.jpg', 220302, 'jpg', 1, 0, 0, 1, 1512027803, '127.0.0.1', 1, '25dd7f1ef4549c7e53834ac930bbb123', 1),
(37, 'content', 9, 'dong_09.jpg', '2017/1130/20171130082831104.jpg', 17579, 'jpg', 1, 0, 0, 1, 1512044911, '127.0.0.1', 1, 'e48a1fc48be03e912f8cc43f71429c24', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_attachment_index`
--

CREATE TABLE IF NOT EXISTS `v9_attachment_index` (
  `keyid` char(30) NOT NULL,
  `aid` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_attachment_index`
--

INSERT INTO `v9_attachment_index` (`keyid`, `aid`) VALUES
('c-9-4', '29'),
('c-9-4', '28'),
('c-9-4', '27'),
('poster-11', '5'),
('poster-12', '6'),
('c-9-4', '26'),
('poster-13', '8'),
('poster-14', '9'),
('poster-15', '10'),
('poster-16', '11'),
('poster-17', '12'),
('poster-18', '13'),
('poster-19', '14'),
('poster-20', '15'),
('poster-21', '16'),
('poster-22', '18'),
('catid-2', '19'),
('c-9-4', '31'),
('c-9-4', '30'),
('c-9-4', '35'),
('c-9-4', '34'),
('c-9-4', '33'),
('c-9-4', '32'),
('c-9-4', '36'),
('c-9-4', '37');

-- --------------------------------------------------------

--
-- 表的结构 `v9_badword`
--

CREATE TABLE IF NOT EXISTS `v9_badword` (
`badid` smallint(5) unsigned NOT NULL,
  `badword` char(20) NOT NULL,
  `level` tinyint(5) NOT NULL DEFAULT '1',
  `replaceword` char(20) NOT NULL DEFAULT '0',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_block`
--

CREATE TABLE IF NOT EXISTS `v9_block` (
`id` int(10) NOT NULL,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `name` char(50) DEFAULT NULL,
  `pos` char(30) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `data` text,
  `template` text
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `v9_block`
--

INSERT INTO `v9_block` (`id`, `siteid`, `name`, `pos`, `type`, `data`, `template`) VALUES
(1, 1, 'banner', 'banner', 1, NULL, NULL),
(2, 1, '首页视频', 'index_video', 1, '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" height="497" width="580"><param name="quality" value="high" /><param name="movie" value="http://player.youku.com/player.php/sid/XMjc3ODU1NzkwNA==/v.swf" /><embed height="497" pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="http://player.youku.com/player.php/sid/XMjc3ODU1NzkwNA==/v.swf" type="application/x-shockwave-flash" width="580"></embed></object>', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `v9_block_history`
--

CREATE TABLE IF NOT EXISTS `v9_block_history` (
`id` int(10) NOT NULL,
  `blockid` int(10) unsigned DEFAULT '0',
  `data` text,
  `creat_at` int(10) unsigned DEFAULT '0',
  `userid` mediumint(8) unsigned DEFAULT '0',
  `username` char(20) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `v9_block_history`
--

INSERT INTO `v9_block_history` (`id`, `blockid`, `data`, `creat_at`, `userid`, `username`) VALUES
(1, 2, '{"id":"2","siteid":"1","name":"\\u9996\\u9875\\u89c6\\u9891","pos":"index_video","type":"1","data":"","template":""}', 1510830572, 1, 'phpcms'),
(2, 2, '{"id":"2","siteid":"1","name":"\\u9996\\u9875\\u89c6\\u9891","pos":"index_video","type":"1","data":"<object classid=\\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\\" codebase=\\"http:\\/\\/download.macromedia.com\\/pub\\/shockwave\\/cabs\\/flash\\/swflash.cab#version=6,0,40,0\\"><param name=\\"quality\\" value=\\"high\\" \\/><param name=\\"movie\\" value=\\"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116070905474.mp4\\" \\/><embed pluginspage=\\"http:\\/\\/www.macromedia.com\\/go\\/getflashplayer\\" quality=\\"high\\" src=\\"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116070905474.mp4\\" type=\\"application\\/x-shockwave-flash\\"><\\/embed><\\/object>","template":""}', 1510831356, 1, 'phpcms'),
(3, 2, '{"id":"2","siteid":"1","name":"\\u9996\\u9875\\u89c6\\u9891","pos":"index_video","type":"1","data":"<object classid=\\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\\" codebase=\\"http:\\/\\/download.macromedia.com\\/pub\\/shockwave\\/cabs\\/flash\\/swflash.cab#version=6,0,40,0\\"><param name=\\"quality\\" value=\\"high\\" \\/><param name=\\"movie\\" value=\\"http:\\/\\/player.youku.com\\/player.php\\/sid\\/XMjc3ODU1NzkwNA==\\/v.swf\\" \\/><embed pluginspage=\\"http:\\/\\/www.macromedia.com\\/go\\/getflashplayer\\" quality=\\"high\\" src=\\"http:\\/\\/player.youku.com\\/player.php\\/sid\\/XMjc3ODU1NzkwNA==\\/v.swf\\" type=\\"application\\/x-shockwave-flash\\"><\\/embed><\\/object>","template":""}', 1510831534, 1, 'phpcms');

-- --------------------------------------------------------

--
-- 表的结构 `v9_block_priv`
--

CREATE TABLE IF NOT EXISTS `v9_block_priv` (
`id` int(10) unsigned NOT NULL,
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `siteid` smallint(5) unsigned DEFAULT '0',
  `blockid` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_cache`
--

CREATE TABLE IF NOT EXISTS `v9_cache` (
  `filename` char(50) NOT NULL,
  `path` char(50) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_cache`
--

INSERT INTO `v9_cache` (`filename`, `path`, `data`) VALUES
('category_content.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  14 => ''1'',\n  13 => ''1'',\n  1 => ''1'',\n  2 => ''1'',\n  3 => ''1'',\n  4 => ''1'',\n  7 => ''1'',\n  8 => ''1'',\n  9 => ''1'',\n  10 => ''1'',\n  12 => ''1'',\n  15 => ''1'',\n  16 => ''1'',\n  17 => ''1'',\n  18 => ''1'',\n  19 => ''2'',\n  20 => ''1'',\n  21 => ''1'',\n  22 => ''1'',\n  23 => ''1'',\n  24 => ''1'',\n  25 => ''1'',\n  26 => ''1'',\n  27 => ''1'',\n  28 => ''1'',\n  29 => ''1'',\n);\n?>'),
('category_content_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  13 => \n  array (\n    ''catid'' => ''13'',\n    ''siteid'' => ''1'',\n    ''type'' => ''2'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''12'',\n    ''arrparentid'' => '''',\n    ''child'' => ''0'',\n    ''arrchildid'' => '''',\n    ''catname'' => ''零售商场'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => '''',\n    ''url'' => ''http://yangshi.localhost.com/'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''0'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => '''',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => NULL,\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => NULL,\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  14 => \n  array (\n    ''catid'' => ''14'',\n    ''siteid'' => ''1'',\n    ''type'' => ''2'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''12'',\n    ''arrparentid'' => '''',\n    ''child'' => ''0'',\n    ''arrchildid'' => '''',\n    ''catname'' => ''市场运营'',\n    ''style'' => '''',\n    ''image'' => ''IP授权'',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => '''',\n    ''url'' => ''http://yangshi.localhost.com/'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''0'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => '''',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => NULL,\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => NULL,\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  1 => \n  array (\n    ''catid'' => ''1'',\n    ''siteid'' => ''1'',\n    ''type'' => ''1'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''0'',\n    ''arrparentid'' => ''0'',\n    ''child'' => ''1'',\n    ''arrchildid'' => ''1,2,3,4,7,8,28,29'',\n    ''catname'' => ''关于我们'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => ''about'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=1'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''1'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''guanyuwomen'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  2 => \n  array (\n    ''catid'' => ''2'',\n    ''siteid'' => ''1'',\n    ''type'' => ''1'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''1'',\n    ''arrparentid'' => ''0,1'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''2'',\n    ''catname'' => ''公司介绍'',\n    ''style'' => '''',\n    ''image'' => ''http://yangshi.localhost.com/uploadfile/2017/1128/20171128044012118.jpg'',\n    ''description'' => '''',\n    ''parentdir'' => ''about/'',\n    ''catdir'' => ''aboutus'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=2'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"\\\\u5173\\\\u4e8e\\\\u6211\\\\u4eec","meta_keywords":"\\\\u5173\\\\u4e8e\\\\u6211\\\\u4eec","meta_description":"\\\\u5173\\\\u4e8e\\\\u6211\\\\u4eec","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''1'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''gongsijieshao'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  3 => \n  array (\n    ''catid'' => ''3'',\n    ''siteid'' => ''1'',\n    ''type'' => ''1'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''1'',\n    ''arrparentid'' => ''0,1'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''3'',\n    ''catname'' => ''企业文化'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''about/'',\n    ''catdir'' => ''cultrue'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=3'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"\\\\u8054\\\\u7cfb\\\\u65b9\\\\u5f0f","meta_keywords":"\\\\u8054\\\\u7cfb\\\\u65b9\\\\u5f0f","meta_description":"\\\\u8054\\\\u7cfb\\\\u65b9\\\\u5f0f","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''2'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''qiyewenhua'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  4 => \n  array (\n    ''catid'' => ''4'',\n    ''siteid'' => ''1'',\n    ''type'' => ''1'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''1'',\n    ''arrparentid'' => ''0,1'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''4'',\n    ''catname'' => ''组织架构'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''about/'',\n    ''catdir'' => ''organizational'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=4'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"\\\\u7248\\\\u6743\\\\u58f0\\\\u660e","meta_keywords":"\\\\u7248\\\\u6743\\\\u58f0\\\\u660e","meta_description":"\\\\u7248\\\\u6743\\\\u58f0\\\\u660e","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''3'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''zuzhijiagou'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  7 => \n  array (\n    ''catid'' => ''7'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''17'',\n    ''parentid'' => ''1'',\n    ''arrparentid'' => ''0,1'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''7'',\n    ''catname'' => ''发展历程'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''about/'',\n    ''catdir'' => ''history'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=7'',\n    ''items'' => ''2'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_licheng","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''7'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''fazhanlicheng'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  8 => \n  array (\n    ''catid'' => ''8'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''17'',\n    ''parentid'' => ''1'',\n    ''arrparentid'' => ''0,1'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''8'',\n    ''catname'' => ''企业荣誉'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''about/'',\n    ''catdir'' => ''honor'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=8'',\n    ''items'' => ''2'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_licheng","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''8'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''qiyerongyu'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  9 => \n  array (\n    ''catid'' => ''9'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''11'',\n    ''parentid'' => ''0'',\n    ''arrparentid'' => ''0'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''9'',\n    ''catname'' => ''动漫家族'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => ''comic'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=9'',\n    ''items'' => ''1'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_donghua","show_template":"show_donghua","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''9'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''dongmanjiazu'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  10 => \n  array (\n    ''catid'' => ''10'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''0'',\n    ''arrparentid'' => ''0'',\n    ''child'' => ''1'',\n    ''arrchildid'' => ''10,21,22,23,24,25,26,27'',\n    ''catname'' => ''新闻中心'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => ''news'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=10'',\n    ''items'' => ''2'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''10'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''xinwenzhongxin'',\n    ''usable_type'' => '',55,56,57,58,59,60,61,'',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  12 => \n  array (\n    ''catid'' => ''12'',\n    ''siteid'' => ''1'',\n    ''type'' => ''2'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''0'',\n    ''arrparentid'' => '''',\n    ''child'' => ''0'',\n    ''arrchildid'' => '''',\n    ''catname'' => ''市场运营'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => '''',\n    ''url'' => ''http://yangshi.localhost.com/'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''12'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => '''',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => NULL,\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => NULL,\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  15 => \n  array (\n    ''catid'' => ''15'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''0'',\n    ''arrparentid'' => ''0'',\n    ''child'' => ''1'',\n    ''arrchildid'' => ''15,16,17,18'',\n    ''catname'' => ''人力资源'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => ''resources'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=15'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''15'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''renliziyuan'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  16 => \n  array (\n    ''catid'' => ''16'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''12'',\n    ''parentid'' => ''15'',\n    ''arrparentid'' => ''0,15'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''16'',\n    ''catname'' => ''人才招聘'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''resources/'',\n    ''catdir'' => ''recruit'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=16'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''16'',\n    ''ismenu'' => ''0'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''rencaizhaopin'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  17 => \n  array (\n    ''catid'' => ''17'',\n    ''siteid'' => ''1'',\n    ''type'' => ''1'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''15'',\n    ''arrparentid'' => ''0,15'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''17'',\n    ''catname'' => ''人才理念'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''resources/'',\n    ''catdir'' => ''idea'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=17'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''17'',\n    ''ismenu'' => ''0'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''rencailinian'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  18 => \n  array (\n    ''catid'' => ''18'',\n    ''siteid'' => ''1'',\n    ''type'' => ''1'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''15'',\n    ''arrparentid'' => ''0,15'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''18'',\n    ''catname'' => ''人才储备'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''resources/'',\n    ''catdir'' => ''reserve'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=18'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''18'',\n    ''ismenu'' => ''0'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''rencaichubei'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  20 => \n  array (\n    ''catid'' => ''20'',\n    ''siteid'' => ''1'',\n    ''type'' => ''1'',\n    ''modelid'' => ''0'',\n    ''parentid'' => ''0'',\n    ''arrparentid'' => ''0'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''20'',\n    ''catname'' => ''联系我们'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => ''contactus'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=20'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}'',\n    ''listorder'' => ''20'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''lianxiwomen'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => NULL,\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => NULL,\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => '''',\n    ''workflowid'' => NULL,\n    ''isdomain'' => ''0'',\n  ),\n  21 => \n  array (\n    ''catid'' => ''21'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''10'',\n    ''arrparentid'' => ''0,10'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''21'',\n    ''catname'' => ''台、总公司要闻'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''news/'',\n    ''catdir'' => ''tainews'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=21'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''21'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''taizonggongsiyaowen'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  22 => \n  array (\n    ''catid'' => ''22'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''10'',\n    ''arrparentid'' => ''0,10'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''22'',\n    ''catname'' => ''公司新闻'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''news/'',\n    ''catdir'' => ''cnews'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=22'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''22'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''gongsixinwen'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  23 => \n  array (\n    ''catid'' => ''23'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''10'',\n    ''arrparentid'' => ''0,10'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''23'',\n    ''catname'' => ''党群工作'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''news/'',\n    ''catdir'' => ''dqwork'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=23'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''23'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''dangqungongzuo'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  24 => \n  array (\n    ''catid'' => ''24'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''10'',\n    ''arrparentid'' => ''0,10'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''24'',\n    ''catname'' => ''交流合作'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''news/'',\n    ''catdir'' => ''jlhz'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=24'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''24'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''jiaoliuhezuo'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  25 => \n  array (\n    ''catid'' => ''25'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''10'',\n    ''arrparentid'' => ''0,10'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''25'',\n    ''catname'' => ''动画影视资讯'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''news/'',\n    ''catdir'' => ''dhys'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=25'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''25'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''donghuayingshizixun'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  26 => \n  array (\n    ''catid'' => ''26'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''10'',\n    ''arrparentid'' => ''0,10'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''26'',\n    ''catname'' => ''行业动态'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''news/'',\n    ''catdir'' => ''hynews'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=26'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''26'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''xingyedongtai'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  27 => \n  array (\n    ''catid'' => ''27'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''10'',\n    ''arrparentid'' => ''0,10'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''27'',\n    ''catname'' => ''其他活动'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''news/'',\n    ''catdir'' => ''othnews'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=27'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''27'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''qitahuodong'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  28 => \n  array (\n    ''catid'' => ''28'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''1'',\n    ''arrparentid'' => ''0,1'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''28'',\n    ''catname'' => ''领导关怀'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''about/'',\n    ''catdir'' => ''guanhuai'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=28'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_fengcai","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''28'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''lingdaoguanhuai'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n  29 => \n  array (\n    ''catid'' => ''29'',\n    ''siteid'' => ''1'',\n    ''type'' => ''0'',\n    ''modelid'' => ''1'',\n    ''parentid'' => ''1'',\n    ''arrparentid'' => ''0,1'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''29'',\n    ''catname'' => ''企业风采'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => ''about/'',\n    ''catdir'' => ''fengcai'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=29'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_fengcai","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''29'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''qiyefengcai'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n);\n?>'),
('sitelist.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    ''siteid'' => ''1'',\n    ''name'' => ''中文站点'',\n    ''dirname'' => '''',\n    ''domain'' => ''http://yangshi.localhost.com/'',\n    ''site_title'' => ''PHPCMS演示站'',\n    ''keywords'' => ''PHPCMS演示站'',\n    ''description'' => ''PHPCMS演示站'',\n    ''release_point'' => '''',\n    ''default_style'' => ''default'',\n    ''template'' => ''default'',\n    ''setting'' => ''{"upload_maxsize":"8192","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf|mp4|flv","watermark_enable":"0","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\\\/images\\\\/water\\\\/\\\\/mark.png","watermark_pct":"0","watermark_quality":"80","watermark_pos":"9"}'',\n    ''uuid'' => ''0ae66acf-c1cd-11e7-bc03-001bb1f03571'',\n    ''url'' => ''http://yangshi.localhost.com/'',\n  ),\n  2 => \n  array (\n    ''siteid'' => ''2'',\n    ''name'' => ''英文站点'',\n    ''dirname'' => ''en'',\n    ''domain'' => ''http://yangshi.localhost.com/html/en/'',\n    ''site_title'' => ''英文站点'',\n    ''keywords'' => '''',\n    ''description'' => '''',\n    ''release_point'' => '''',\n    ''default_style'' => ''en'',\n    ''template'' => ''en'',\n    ''setting'' => ''{"upload_maxsize":"8092","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf","watermark_enable":"0","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\\\/images\\\\/water\\\\/http:\\\\/\\\\/yangshi.localhost.com\\\\/mark.gif","watermark_pct":"100","watermark_quality":"80","watermark_pos":"9"}'',\n    ''uuid'' => '''',\n    ''url'' => ''http://yangshi.localhost.com/html/en/'',\n  ),\n);\n?>'),
('downservers.cache.php', 'caches_commons/caches_data/', '<?php\nreturn NULL;\n?>'),
('badword.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('ipbanned.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('keylink.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('position.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  2 => \n  array (\n    ''posid'' => ''2'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''首页头条推荐'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''4'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  1 => \n  array (\n    ''posid'' => ''1'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''首页焦点图推荐'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''1'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  13 => \n  array (\n    ''posid'' => ''13'',\n    ''modelid'' => ''82'',\n    ''catid'' => ''0'',\n    ''name'' => ''栏目页焦点图'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  5 => \n  array (\n    ''posid'' => ''5'',\n    ''modelid'' => ''69'',\n    ''catid'' => ''0'',\n    ''name'' => ''推荐下载'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  8 => \n  array (\n    ''posid'' => ''8'',\n    ''modelid'' => ''30'',\n    ''catid'' => ''54'',\n    ''name'' => ''图片频道首页焦点图'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  9 => \n  array (\n    ''posid'' => ''9'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''网站顶部推荐'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  10 => \n  array (\n    ''posid'' => ''10'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''栏目首页推荐'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  12 => \n  array (\n    ''posid'' => ''12'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''首页图片推荐'',\n    ''maxnum'' => ''20'',\n    ''extention'' => NULL,\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  14 => \n  array (\n    ''posid'' => ''14'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''视频首页焦点图'',\n    ''maxnum'' => ''20'',\n    ''extention'' => '''',\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  15 => \n  array (\n    ''posid'' => ''15'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''视频首页头条推荐'',\n    ''maxnum'' => ''20'',\n    ''extention'' => '''',\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  16 => \n  array (\n    ''posid'' => ''16'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''视频首页每日热点'',\n    ''maxnum'' => ''20'',\n    ''extention'' => '''',\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n  17 => \n  array (\n    ''posid'' => ''17'',\n    ''modelid'' => ''0'',\n    ''catid'' => ''0'',\n    ''name'' => ''视频栏目精彩推荐'',\n    ''maxnum'' => ''20'',\n    ''extention'' => '''',\n    ''listorder'' => ''0'',\n    ''siteid'' => ''1'',\n    ''thumb'' => '''',\n  ),\n);\n?>'),
('role_siteid.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('role.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => ''超级管理员'',\n  2 => ''站点管理员'',\n  3 => ''运营总监'',\n  4 => ''总编'',\n  5 => ''编辑'',\n  7 => ''发布人员'',\n);\n?>'),
('urlrules_detail.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    ''urlruleid'' => ''1'',\n    ''module'' => ''content'',\n    ''file'' => ''category'',\n    ''ishtml'' => ''1'',\n    ''urlrule'' => ''{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html'',\n    ''example'' => ''news/china/1000.html'',\n  ),\n  6 => \n  array (\n    ''urlruleid'' => ''6'',\n    ''module'' => ''content'',\n    ''file'' => ''category'',\n    ''ishtml'' => ''0'',\n    ''urlrule'' => ''index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}'',\n    ''example'' => ''index.php?m=content&c=index&a=lists&catid=1&page=1'',\n  ),\n  11 => \n  array (\n    ''urlruleid'' => ''11'',\n    ''module'' => ''content'',\n    ''file'' => ''show'',\n    ''ishtml'' => ''1'',\n    ''urlrule'' => ''{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html'',\n    ''example'' => ''2010/catdir_0720/1_2.html'',\n  ),\n  12 => \n  array (\n    ''urlruleid'' => ''12'',\n    ''module'' => ''content'',\n    ''file'' => ''show'',\n    ''ishtml'' => ''1'',\n    ''urlrule'' => ''{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html'',\n    ''example'' => ''it/product/2010/0720/1_2.html'',\n  ),\n  16 => \n  array (\n    ''urlruleid'' => ''16'',\n    ''module'' => ''content'',\n    ''file'' => ''show'',\n    ''ishtml'' => ''0'',\n    ''urlrule'' => ''index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}'',\n    ''example'' => ''index.php?m=content&c=index&a=show&catid=1&id=1'',\n  ),\n  17 => \n  array (\n    ''urlruleid'' => ''17'',\n    ''module'' => ''content'',\n    ''file'' => ''show'',\n    ''ishtml'' => ''0'',\n    ''urlrule'' => ''show-{$catid}-{$id}-{$page}.html'',\n    ''example'' => ''show-1-2-1.html'',\n  ),\n  18 => \n  array (\n    ''urlruleid'' => ''18'',\n    ''module'' => ''content'',\n    ''file'' => ''show'',\n    ''ishtml'' => ''0'',\n    ''urlrule'' => ''content-{$catid}-{$id}-{$page}.html'',\n    ''example'' => ''content-1-2-1.html'',\n  ),\n  30 => \n  array (\n    ''urlruleid'' => ''30'',\n    ''module'' => ''content'',\n    ''file'' => ''category'',\n    ''ishtml'' => ''0'',\n    ''urlrule'' => ''list-{$catid}-{$page}.html'',\n    ''example'' => ''list-1-1.html'',\n  ),\n);\n?>'),
('urlrules.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => ''{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html'',\n  6 => ''index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}'',\n  11 => ''{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html'',\n  12 => ''{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html'',\n  16 => ''index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}'',\n  17 => ''show-{$catid}-{$id}-{$page}.html'',\n  18 => ''content-{$catid}-{$id}-{$page}.html'',\n  30 => ''list-{$catid}-{$page}.html'',\n);\n?>');
INSERT INTO `v9_cache` (`filename`, `path`, `data`) VALUES
('modules.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  ''admin'' => \n  array (\n    ''module'' => ''admin'',\n    ''name'' => ''admin'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => ''array (\n  \\''admin_email\\'' => \\''phpcms@phpcms.cn\\'',\n  \\''adminaccessip\\'' => \\''0\\'',\n  \\''maxloginfailedtimes\\'' => \\''8\\'',\n  \\''maxiplockedtime\\'' => \\''15\\'',\n  \\''minrefreshtime\\'' => \\''2\\'',\n  \\''mail_type\\'' => \\''1\\'',\n  \\''mail_server\\'' => \\''smtp.qq.com\\'',\n  \\''mail_port\\'' => \\''25\\'',\n  \\''mail_user\\'' => \\''phpcms.cn@foxmail.com\\'',\n  \\''mail_auth\\'' => \\''1\\'',\n  \\''mail_from\\'' => \\''phpcms.cn@foxmail.com\\'',\n  \\''mail_password\\'' => \\''\\'',\n  \\''errorlog_size\\'' => \\''20\\'',\n)'',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-10-18'',\n    ''updatedate'' => ''2010-10-18'',\n  ),\n  ''member'' => \n  array (\n    ''module'' => ''member'',\n    ''name'' => ''会员'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => ''array (\n  \\''allowregister\\'' => \\''1\\'',\n  \\''choosemodel\\'' => \\''1\\'',\n  \\''enablemailcheck\\'' => \\''0\\'',\n  \\''registerverify\\'' => \\''0\\'',\n  \\''showapppoint\\'' => \\''0\\'',\n  \\''rmb_point_rate\\'' => \\''10\\'',\n  \\''defualtpoint\\'' => \\''0\\'',\n  \\''defualtamount\\'' => \\''0\\'',\n  \\''showregprotocol\\'' => \\''0\\'',\n  \\''regprotocol\\'' => \\''		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \\'',\n  \\''registerverifymessage\\'' => \\'' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\\'',\n  \\''forgetpassword\\'' => \\'' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\\'',\n)'',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''pay'' => \n  array (\n    ''module'' => ''pay'',\n    ''name'' => ''支付'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''digg'' => \n  array (\n    ''module'' => ''digg'',\n    ''name'' => ''顶一下'',\n    ''url'' => '''',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''special'' => \n  array (\n    ''module'' => ''special'',\n    ''name'' => ''专题'',\n    ''url'' => '''',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''content'' => \n  array (\n    ''module'' => ''content'',\n    ''name'' => ''内容模块'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''search'' => \n  array (\n    ''module'' => ''search'',\n    ''name'' => ''全站搜索'',\n    ''url'' => '''',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => ''array (\n  \\''fulltextenble\\'' => \\''1\\'',\n  \\''relationenble\\'' => \\''1\\'',\n  \\''suggestenable\\'' => \\''1\\'',\n  \\''sphinxenable\\'' => \\''0\\'',\n  \\''sphinxhost\\'' => \\''10.228.134.102\\'',\n  \\''sphinxport\\'' => \\''9312\\'',\n)'',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''scan'' => \n  array (\n    ''module'' => ''scan'',\n    ''name'' => ''木马扫描'',\n    ''url'' => ''scan'',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-01'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''attachment'' => \n  array (\n    ''module'' => ''attachment'',\n    ''name'' => ''附件'',\n    ''url'' => ''attachment'',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-01'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''block'' => \n  array (\n    ''module'' => ''block'',\n    ''name'' => ''碎片'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-01'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''collection'' => \n  array (\n    ''module'' => ''collection'',\n    ''name'' => ''采集模块'',\n    ''url'' => ''collection'',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-01'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''dbsource'' => \n  array (\n    ''module'' => ''dbsource'',\n    ''name'' => ''数据源'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => '''',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-01'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''template'' => \n  array (\n    ''module'' => ''template'',\n    ''name'' => ''模板风格'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-01'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''release'' => \n  array (\n    ''module'' => ''release'',\n    ''name'' => ''发布点'',\n    ''url'' => '''',\n    ''iscore'' => ''1'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-01'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''video'' => \n  array (\n    ''module'' => ''video'',\n    ''name'' => ''视频库'',\n    ''url'' => '''',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2012-09-28'',\n    ''updatedate'' => ''2012-09-28'',\n  ),\n  ''announce'' => \n  array (\n    ''module'' => ''announce'',\n    ''name'' => ''公告'',\n    ''url'' => ''announce/'',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => ''公告'',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2017-11-05'',\n    ''updatedate'' => ''2017-11-05'',\n  ),\n  ''link'' => \n  array (\n    ''module'' => ''link'',\n    ''name'' => ''友情链接'',\n    ''url'' => '''',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => ''array (\n  1 => \n  array (\n    \\''is_post\\'' => \\''1\\'',\n    \\''enablecheckcode\\'' => \\''0\\'',\n  ),\n)'',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''message'' => \n  array (\n    ''module'' => ''message'',\n    ''name'' => ''短消息'',\n    ''url'' => '''',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => '''',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-09-06'',\n    ''updatedate'' => ''2010-09-06'',\n  ),\n  ''poster'' => \n  array (\n    ''module'' => ''poster'',\n    ''name'' => ''广告模块'',\n    ''url'' => ''poster/'',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => ''广告模块'',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2017-11-05'',\n    ''updatedate'' => ''2017-11-05'',\n  ),\n  ''formguide'' => \n  array (\n    ''module'' => ''formguide'',\n    ''name'' => ''表单向导'',\n    ''url'' => ''formguide/'',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => ''formguide'',\n    ''setting'' => ''array (\n  \\''allowmultisubmit\\'' => \\''1\\'',\n  \\''interval\\'' => \\''30\\'',\n  \\''allowunreg\\'' => \\''0\\'',\n  \\''mailmessage\\'' => \\''用户向我们提交了表单数据，赶快去看看吧。\\'',\n)'',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2010-10-20'',\n    ''updatedate'' => ''2010-10-20'',\n  ),\n  ''wap'' => \n  array (\n    ''module'' => ''wap'',\n    ''name'' => ''手机门户'',\n    ''url'' => ''wap/'',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => ''手机门户'',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2017-11-05'',\n    ''updatedate'' => ''2017-11-05'',\n  ),\n  ''tag'' => \n  array (\n    ''module'' => ''tag'',\n    ''name'' => ''标签向导'',\n    ''url'' => ''tag/'',\n    ''iscore'' => ''0'',\n    ''version'' => ''1.0'',\n    ''description'' => ''标签向导'',\n    ''setting'' => '''',\n    ''listorder'' => ''0'',\n    ''disabled'' => ''0'',\n    ''installdate'' => ''2017-11-05'',\n    ''updatedate'' => ''2017-11-05'',\n  ),\n);\n?>'),
('type_content.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  55 => \n  array (\n    ''typeid'' => ''55'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''台、总公司要闻\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  56 => \n  array (\n    ''typeid'' => ''56'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''公司新闻\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  57 => \n  array (\n    ''typeid'' => ''57'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''公司动态\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  58 => \n  array (\n    ''typeid'' => ''58'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''党群工作\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  59 => \n  array (\n    ''typeid'' => ''59'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''交流合作\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  60 => \n  array (\n    ''typeid'' => ''60'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''动画影视资讯\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  61 => \n  array (\n    ''typeid'' => ''61'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''其他活动'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  62 => \n  array (\n    ''typeid'' => ''62'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''政策新闻\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  63 => \n  array (\n    ''typeid'' => ''63'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''业内资讯\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  64 => \n  array (\n    ''typeid'' => ''64'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''行业研究'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n);\n?>'),
('model.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    ''modelid'' => ''1'',\n    ''siteid'' => ''1'',\n    ''name'' => ''文章模型'',\n    ''description'' => '''',\n    ''tablename'' => ''news'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category'',\n    ''list_template'' => ''list'',\n    ''show_template'' => ''show'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n  2 => \n  array (\n    ''modelid'' => ''2'',\n    ''siteid'' => ''1'',\n    ''name'' => ''下载模型'',\n    ''description'' => '''',\n    ''tablename'' => ''download'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category_download'',\n    ''list_template'' => ''list_download'',\n    ''show_template'' => ''show_download'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n  3 => \n  array (\n    ''modelid'' => ''3'',\n    ''siteid'' => ''1'',\n    ''name'' => ''图片模型'',\n    ''description'' => '''',\n    ''tablename'' => ''picture'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category_picture'',\n    ''list_template'' => ''list_picture'',\n    ''show_template'' => ''show_picture'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n  11 => \n  array (\n    ''modelid'' => ''11'',\n    ''siteid'' => ''1'',\n    ''name'' => ''视频模型'',\n    ''description'' => '''',\n    ''tablename'' => ''video'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category_video'',\n    ''list_template'' => ''list_video'',\n    ''show_template'' => ''show_video'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n  12 => \n  array (\n    ''modelid'' => ''12'',\n    ''siteid'' => ''1'',\n    ''name'' => ''招聘模型'',\n    ''description'' => ''招聘模型'',\n    ''tablename'' => ''job'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category'',\n    ''list_template'' => ''list'',\n    ''show_template'' => ''show'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n  13 => \n  array (\n    ''modelid'' => ''13'',\n    ''siteid'' => ''1'',\n    ''name'' => ''公司动态'',\n    ''description'' => ''公司动态'',\n    ''tablename'' => ''dynamics'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category'',\n    ''list_template'' => ''list'',\n    ''show_template'' => ''show'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n  17 => \n  array (\n    ''modelid'' => ''17'',\n    ''siteid'' => ''1'',\n    ''name'' => ''时间轴'',\n    ''description'' => ''发展历程/企业荣誉'',\n    ''tablename'' => ''time_l'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category'',\n    ''list_template'' => ''list_licheng'',\n    ''show_template'' => ''show'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n  16 => \n  array (\n    ''modelid'' => ''16'',\n    ''siteid'' => ''2'',\n    ''name'' => ''文章模型'',\n    ''description'' => ''文章模型'',\n    ''tablename'' => ''en_news'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => ''default'',\n    ''category_template'' => ''category'',\n    ''list_template'' => ''list'',\n    ''show_template'' => ''show'',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''0'',\n  ),\n);\n?>'),
('workflow_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    ''workflowid'' => ''1'',\n    ''siteid'' => ''1'',\n    ''steps'' => ''1'',\n    ''workname'' => ''一级审核'',\n    ''description'' => ''审核一次'',\n    ''setting'' => '''',\n    ''flag'' => ''0'',\n  ),\n  2 => \n  array (\n    ''workflowid'' => ''2'',\n    ''siteid'' => ''1'',\n    ''steps'' => ''2'',\n    ''workname'' => ''二级审核'',\n    ''description'' => ''审核两次'',\n    ''setting'' => '''',\n    ''flag'' => ''0'',\n  ),\n  3 => \n  array (\n    ''workflowid'' => ''3'',\n    ''siteid'' => ''1'',\n    ''steps'' => ''3'',\n    ''workname'' => ''三级审核'',\n    ''description'' => ''审核三次'',\n    ''setting'' => '''',\n    ''flag'' => ''0'',\n  ),\n  4 => \n  array (\n    ''workflowid'' => ''4'',\n    ''siteid'' => ''1'',\n    ''steps'' => ''4'',\n    ''workname'' => ''四级审核'',\n    ''description'' => ''四级审核'',\n    ''setting'' => '''',\n    ''flag'' => ''0'',\n  ),\n);\n?>'),
('member_model.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  10 => \n  array (\n    ''modelid'' => ''10'',\n    ''siteid'' => ''1'',\n    ''name'' => ''普通会员'',\n    ''description'' => ''普通会员'',\n    ''tablename'' => ''member_detail'',\n    ''setting'' => '''',\n    ''addtime'' => ''0'',\n    ''items'' => ''0'',\n    ''enablesearch'' => ''1'',\n    ''disabled'' => ''0'',\n    ''default_style'' => '''',\n    ''category_template'' => '''',\n    ''list_template'' => '''',\n    ''show_template'' => '''',\n    ''js_template'' => '''',\n    ''admin_list_template'' => '''',\n    ''member_add_template'' => '''',\n    ''member_list_template'' => '''',\n    ''sort'' => ''0'',\n    ''type'' => ''2'',\n  ),\n);\n?>'),
('special.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('common.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  ''admin_email'' => ''phpcms@phpcms.cn'',\n  ''adminaccessip'' => ''0'',\n  ''maxloginfailedtimes'' => ''8'',\n  ''maxiplockedtime'' => ''15'',\n  ''minrefreshtime'' => ''2'',\n  ''mail_type'' => ''1'',\n  ''mail_server'' => ''smtp.qq.com'',\n  ''mail_port'' => ''25'',\n  ''mail_user'' => ''phpcms.cn@foxmail.com'',\n  ''mail_auth'' => ''1'',\n  ''mail_from'' => ''phpcms.cn@foxmail.com'',\n  ''mail_password'' => '''',\n  ''errorlog_size'' => ''20'',\n);\n?>'),
('type_.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('category_items_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  29 => ''0'',\n  28 => ''0'',\n  10 => ''2'',\n  22 => ''0'',\n  15 => ''0'',\n  21 => ''0'',\n  23 => ''0'',\n  24 => ''0'',\n  25 => ''0'',\n  26 => ''0'',\n  27 => ''0'',\n);\n?>'),
('category_items_2.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('category_items_3.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('category_items_11.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  9 => ''1'',\n);\n?>'),
('category_items_12.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  16 => ''0'',\n);\n?>'),
('type_content_1.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  55 => \n  array (\n    ''typeid'' => ''55'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''台、总公司要闻\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  56 => \n  array (\n    ''typeid'' => ''56'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''公司新闻\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  57 => \n  array (\n    ''typeid'' => ''57'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''公司动态\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  58 => \n  array (\n    ''typeid'' => ''58'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''党群工作\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  59 => \n  array (\n    ''typeid'' => ''59'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''交流合作\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  60 => \n  array (\n    ''typeid'' => ''60'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''动画影视资讯\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  61 => \n  array (\n    ''typeid'' => ''61'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''其他活动'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  62 => \n  array (\n    ''typeid'' => ''62'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''政策新闻\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  63 => \n  array (\n    ''typeid'' => ''63'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''业内资讯\r'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n  64 => \n  array (\n    ''typeid'' => ''64'',\n    ''siteid'' => ''1'',\n    ''module'' => ''content'',\n    ''modelid'' => ''0'',\n    ''name'' => ''行业研究'',\n    ''parentid'' => ''0'',\n    ''typedir'' => '''',\n    ''url'' => '''',\n    ''template'' => '''',\n    ''listorder'' => ''0'',\n    ''description'' => '''',\n  ),\n);\n?>'),
('category_items_13.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('vote.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('link.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  1 => \n  array (\n    ''is_post'' => ''1'',\n    ''enablecheckcode'' => ''0'',\n  ),\n);\n?>'),
('type_content_2.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n);\n?>'),
('category_content_2.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  19 => \n  array (\n    ''catid'' => ''19'',\n    ''siteid'' => ''2'',\n    ''type'' => ''0'',\n    ''modelid'' => ''16'',\n    ''parentid'' => ''0'',\n    ''arrparentid'' => ''0'',\n    ''child'' => ''0'',\n    ''arrchildid'' => ''19'',\n    ''catname'' => ''about'',\n    ''style'' => '''',\n    ''image'' => '''',\n    ''description'' => '''',\n    ''parentdir'' => '''',\n    ''catdir'' => ''about'',\n    ''url'' => ''http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=19'',\n    ''items'' => ''0'',\n    ''hits'' => ''0'',\n    ''setting'' => ''{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}'',\n    ''listorder'' => ''19'',\n    ''ismenu'' => ''1'',\n    ''sethtml'' => ''0'',\n    ''letter'' => ''about'',\n    ''usable_type'' => '''',\n    ''create_to_html_root'' => ''0'',\n    ''ishtml'' => ''0'',\n    ''content_ishtml'' => ''0'',\n    ''category_ruleid'' => ''6'',\n    ''show_ruleid'' => ''16'',\n    ''workflowid'' => '''',\n    ''isdomain'' => ''0'',\n  ),\n);\n?>'),
('category_items_16.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  19 => ''0'',\n);\n?>'),
('category_items_17.cache.php', 'caches_commons/caches_data/', '<?php\nreturn array (\n  7 => ''2'',\n  8 => ''2'',\n);\n?>');

-- --------------------------------------------------------

--
-- 表的结构 `v9_category`
--

CREATE TABLE IF NOT EXISTS `v9_category` (
`catid` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `arrchildid` mediumtext NOT NULL,
  `catname` varchar(30) NOT NULL,
  `style` varchar(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `parentdir` varchar(100) NOT NULL,
  `catdir` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` mediumtext NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `letter` varchar(30) NOT NULL,
  `usable_type` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `v9_category`
--

INSERT INTO `v9_category` (`catid`, `siteid`, `module`, `type`, `modelid`, `parentid`, `arrparentid`, `child`, `arrchildid`, `catname`, `style`, `image`, `description`, `parentdir`, `catdir`, `url`, `items`, `hits`, `setting`, `listorder`, `ismenu`, `sethtml`, `letter`, `usable_type`) VALUES
(1, 1, 'content', 1, 0, 0, '0', 1, '1,2,3,4,7,8,28,29', '关于我们', '', '', '', '', 'about', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=1', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 1, 1, 0, 'guanyuwomen', ''),
(2, 1, 'content', 1, 0, 1, '0,1', 0, '2', '公司介绍', '', 'http://yangshi.localhost.com/uploadfile/2017/1128/20171128044012118.jpg', '', 'about/', 'aboutus', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=2', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"\\u5173\\u4e8e\\u6211\\u4eec","meta_keywords":"\\u5173\\u4e8e\\u6211\\u4eec","meta_description":"\\u5173\\u4e8e\\u6211\\u4eec","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 1, 1, 0, 'gongsijieshao', ''),
(3, 1, 'content', 1, 0, 1, '0,1', 0, '3', '企业文化', '', '', '', 'about/', 'cultrue', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=3', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"\\u8054\\u7cfb\\u65b9\\u5f0f","meta_keywords":"\\u8054\\u7cfb\\u65b9\\u5f0f","meta_description":"\\u8054\\u7cfb\\u65b9\\u5f0f","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 2, 1, 0, 'qiyewenhua', ''),
(4, 1, 'content', 1, 0, 1, '0,1', 0, '4', '组织架构', '', '', '', 'about/', 'organizational', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=4', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page_aboutus","meta_title":"\\u7248\\u6743\\u58f0\\u660e","meta_keywords":"\\u7248\\u6743\\u58f0\\u660e","meta_description":"\\u7248\\u6743\\u58f0\\u660e","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 3, 1, 0, 'zuzhijiagou', ''),
(29, 1, 'content', 0, 1, 1, '0,1', 0, '29', '企业风采', '', '', '', 'about/', 'fengcai', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=29', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_fengcai","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 29, 1, 0, 'qiyefengcai', ''),
(7, 1, 'content', 0, 17, 1, '0,1', 0, '7', '发展历程', '', '', '', 'about/', 'history', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=7', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_licheng","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 7, 1, 0, 'fazhanlicheng', ''),
(8, 1, 'content', 0, 17, 1, '0,1', 0, '8', '企业荣誉', '', '', '', 'about/', 'honor', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=8', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_licheng","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 8, 1, 0, 'qiyerongyu', ''),
(28, 1, 'content', 0, 1, 1, '0,1', 0, '28', '领导关怀', '', '', '', 'about/', 'guanhuai', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=28', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list_fengcai","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 28, 1, 0, 'lingdaoguanhuai', ''),
(9, 1, 'content', 0, 11, 0, '0', 0, '9', '动漫家族', '', '', '', '', 'comic', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=9', 1, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category_video","list_template":"list_donghua","show_template":"show_donghua","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 9, 1, 0, 'dongmanjiazu', ''),
(10, 1, 'content', 0, 1, 0, '0', 1, '10,21,22,23,24,25,26,27', '新闻中心', '', '', '', '', 'news', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=10', 2, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 10, 1, 0, 'xinwenzhongxin', ',55,56,57,58,59,60,61,'),
(22, 1, 'content', 0, 1, 10, '0,10', 0, '22', '公司新闻', '', '', '', 'news/', 'cnews', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=22', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 22, 1, 0, 'gongsixinwen', ''),
(12, 1, 'content', 2, 0, 0, '', 0, '', '市场运营', '', '', '', '', '', '/', 0, 0, '{"show_ruleid":"","repeatchargedays":"1"}', 12, 1, 0, '', ''),
(13, 1, 'content', 2, 0, 12, '', 0, '', '零售商场', '', '', '', '', '', '/', 0, 0, '{"show_ruleid":"","repeatchargedays":"1"}', 0, 1, 0, '', ''),
(14, 1, 'content', 2, 0, 12, '', 0, '', '市场运营', '', 'IP授权', '', '', '', '/', 0, 0, '{"show_ruleid":"","repeatchargedays":"1"}', 0, 1, 0, '', ''),
(15, 1, 'content', 0, 1, 0, '0', 1, '15,16,17,18', '人力资源', '', '', '', '', 'resources', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=15', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 15, 1, 0, 'renliziyuan', ''),
(16, 1, 'content', 0, 12, 15, '0,15', 0, '16', '人才招聘', '', '', '', 'resources/', 'recruit', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=16', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 16, 0, 0, 'rencaizhaopin', ''),
(17, 1, 'content', 1, 0, 15, '0,15', 0, '17', '人才理念', '', '', '', 'resources/', 'idea', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=17', 0, 0, '{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 17, 0, 0, 'rencailinian', ''),
(18, 1, 'content', 1, 0, 15, '0,15', 0, '18', '人才储备', '', '', '', 'resources/', 'reserve', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=18', 0, 0, '{"ishtml":"0","template_list":"default","page_template":"page","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 18, 0, 0, 'rencaichubei', ''),
(19, 2, 'content', 0, 16, 0, '0', 0, '19', 'about', '', '', '', '', 'about', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=19', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 19, 1, 0, 'about', ''),
(20, 1, 'content', 1, 0, 0, '0', 0, '20', '联系我们', '', '', '', '', 'contactus', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=20', 0, 0, '{"ishtml":"0","template_list":"","meta_title":"","meta_keywords":"","meta_description":"","category_ruleid":"6","show_ruleid":"","repeatchargedays":"1"}', 20, 1, 0, 'lianxiwomen', ''),
(21, 1, 'content', 0, 1, 10, '0,10', 0, '21', '台、总公司要闻', '', '', '', 'news/', 'tainews', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=21', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 21, 1, 0, 'taizonggongsiyaowen', ''),
(23, 1, 'content', 0, 1, 10, '0,10', 0, '23', '党群工作', '', '', '', 'news/', 'dqwork', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=23', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 23, 1, 0, 'dangqungongzuo', ''),
(24, 1, 'content', 0, 1, 10, '0,10', 0, '24', '交流合作', '', '', '', 'news/', 'jlhz', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=24', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 24, 1, 0, 'jiaoliuhezuo', ''),
(25, 1, 'content', 0, 1, 10, '0,10', 0, '25', '动画影视资讯', '', '', '', 'news/', 'dhys', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=25', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 25, 1, 0, 'donghuayingshizixun', ''),
(26, 1, 'content', 0, 1, 10, '0,10', 0, '26', '行业动态', '', '', '', 'news/', 'hynews', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=26', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 26, 1, 0, 'xingyedongtai', ''),
(27, 1, 'content', 0, 1, 10, '0,10', 0, '27', '其他活动', '', '', '', 'news/', 'othnews', 'http://yangshi.localhost.com/index.php?m=content&c=index&a=lists&catid=27', 0, 0, '{"workflowid":"","ishtml":"0","content_ishtml":"0","create_to_html_root":"0","template_list":"default","category_template":"category","list_template":"list","show_template":"show","meta_title":"","meta_keywords":"","meta_description":"","presentpoint":"1","defaultchargepoint":"0","paytype":"0","repeatchargedays":"1","category_ruleid":"6","show_ruleid":"16"}', 27, 1, 0, 'qitahuodong', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_category_priv`
--

CREATE TABLE IF NOT EXISTS `v9_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_content`
--

CREATE TABLE IF NOT EXISTS `v9_collection_content` (
`id` int(10) unsigned NOT NULL,
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL,
  `title` char(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_history`
--

CREATE TABLE IF NOT EXISTS `v9_collection_history` (
  `md5` char(32) NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_node`
--

CREATE TABLE IF NOT EXISTS `v9_collection_node` (
`nodeid` smallint(6) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sourcecharset` varchar(8) NOT NULL,
  `sourcetype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlpage` text NOT NULL,
  `pagesize_start` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pagesize_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `page_base` char(255) NOT NULL,
  `par_num` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `url_contain` char(100) NOT NULL,
  `url_except` char(100) NOT NULL,
  `url_start` char(100) NOT NULL DEFAULT '',
  `url_end` char(100) NOT NULL DEFAULT '',
  `title_rule` char(100) NOT NULL,
  `title_html_rule` text NOT NULL,
  `author_rule` char(100) NOT NULL,
  `author_html_rule` text NOT NULL,
  `comeform_rule` char(100) NOT NULL,
  `comeform_html_rule` text NOT NULL,
  `time_rule` char(100) NOT NULL,
  `time_html_rule` text NOT NULL,
  `content_rule` char(100) NOT NULL,
  `content_html_rule` text NOT NULL,
  `content_page_start` char(100) NOT NULL,
  `content_page_end` char(100) NOT NULL,
  `content_page_rule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_page` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_nextpage` char(100) NOT NULL,
  `down_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `watermark` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `coll_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customize_config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_collection_program`
--

CREATE TABLE IF NOT EXISTS `v9_collection_program` (
`id` int(10) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_content_check`
--

CREATE TABLE IF NOT EXISTS `v9_content_check` (
  `checkid` char(15) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_copyfrom`
--

CREATE TABLE IF NOT EXISTS `v9_copyfrom` (
`id` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sitename` varchar(30) NOT NULL,
  `siteurl` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_datacall`
--

CREATE TABLE IF NOT EXISTS `v9_datacall` (
`id` int(10) NOT NULL,
  `name` char(40) DEFAULT NULL,
  `dis_type` tinyint(1) unsigned DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `action` char(20) DEFAULT NULL,
  `data` text,
  `template` text,
  `cache` mediumint(8) DEFAULT NULL,
  `num` smallint(6) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_dbsource`
--

CREATE TABLE IF NOT EXISTS `v9_dbsource` (
`id` int(10) NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` int(5) NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `dbtablepre` varchar(30) NOT NULL,
  `charset` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_download`
--

CREATE TABLE IF NOT EXISTS `v9_download` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `systems` varchar(100) NOT NULL DEFAULT 'Win2000/WinXP/Win2003',
  `copytype` varchar(15) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `classtype` varchar(20) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT 'Unkown',
  `stars` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_download_data`
--

CREATE TABLE IF NOT EXISTS `v9_download_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `downfiles` mediumtext NOT NULL,
  `downfile` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_downservers`
--

CREATE TABLE IF NOT EXISTS `v9_downservers` (
`id` mediumint(8) NOT NULL,
  `sitename` varchar(100) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_dynamics`
--

CREATE TABLE IF NOT EXISTS `v9_dynamics` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_dynamics_data`
--

CREATE TABLE IF NOT EXISTS `v9_dynamics_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_en_news`
--

CREATE TABLE IF NOT EXISTS `v9_en_news` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_en_news_data`
--

CREATE TABLE IF NOT EXISTS `v9_en_news_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `voteid` int(10) unsigned NOT NULL DEFAULT '0',
  `copyfrom` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_extend_setting`
--

CREATE TABLE IF NOT EXISTS `v9_extend_setting` (
`id` smallint(5) unsigned NOT NULL,
  `key` char(30) NOT NULL,
  `data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_favorite`
--

CREATE TABLE IF NOT EXISTS `v9_favorite` (
`id` int(10) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_form_rencai`
--

CREATE TABLE IF NOT EXISTS `v9_form_rencai` (
`dataid` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `datetime` int(10) unsigned NOT NULL,
  `ip` char(15) NOT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `sex` varchar(255) NOT NULL DEFAULT '',
  `year` varchar(255) NOT NULL DEFAULT '',
  `city` int(10) unsigned NOT NULL DEFAULT '0',
  `edu_experience` mediumtext NOT NULL,
  `work_experience` mediumtext NOT NULL,
  `self_evaluation` mediumtext NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v9_form_rencai`
--

INSERT INTO `v9_form_rencai` (`dataid`, `userid`, `username`, `datetime`, `ip`, `fullname`, `telephone`, `sex`, `year`, `city`, `edu_experience`, `work_experience`, `self_evaluation`) VALUES
(1, 0, '', 1510146618, '127.0.0.1', '王胜利', '15201110055', '1', '3-5年', 37, '还好', '还好', '还好');

-- --------------------------------------------------------

--
-- 表的结构 `v9_hits`
--

CREATE TABLE IF NOT EXISTS `v9_hits` (
  `hitsid` char(30) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdayviews` int(10) unsigned NOT NULL DEFAULT '0',
  `dayviews` int(10) unsigned NOT NULL DEFAULT '0',
  `weekviews` int(10) unsigned NOT NULL DEFAULT '0',
  `monthviews` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_hits`
--

INSERT INTO `v9_hits` (`hitsid`, `catid`, `views`, `yesterdayviews`, `dayviews`, `weekviews`, `monthviews`, `updatetime`) VALUES
('c-11-4', 9, 0, 0, 0, 0, 0, 1512044404),
('c-1-1', 10, 0, 0, 0, 0, 0, 1510821606),
('c-1-2', 10, 0, 0, 0, 0, 0, 1510821625),
('c-1-3', 11, 0, 0, 0, 0, 0, 1510821653),
('c-1-4', 11, 0, 0, 0, 0, 0, 1510821671),
('c-17-1', 7, 0, 0, 0, 0, 0, 1511859381),
('c-17-2', 7, 0, 0, 0, 0, 0, 1511859392),
('c-17-3', 8, 0, 0, 0, 0, 0, 1511871366),
('c-17-4', 8, 0, 0, 0, 0, 0, 1511871380);

-- --------------------------------------------------------

--
-- 表的结构 `v9_ipbanned`
--

CREATE TABLE IF NOT EXISTS `v9_ipbanned` (
`ipbannedid` smallint(5) NOT NULL,
  `ip` char(15) NOT NULL,
  `expires` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_job`
--

CREATE TABLE IF NOT EXISTS `v9_job` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_job_data`
--

CREATE TABLE IF NOT EXISTS `v9_job_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` mediumtext NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `company_name` varchar(255) NOT NULL DEFAULT '',
  `position_natrue` varchar(255) NOT NULL DEFAULT '',
  `people_nums` varchar(255) NOT NULL DEFAULT '',
  `experience` varchar(255) NOT NULL DEFAULT '',
  `treatment` varchar(255) NOT NULL DEFAULT '',
  `location` int(10) unsigned NOT NULL DEFAULT '0',
  `characteristic` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_keylink`
--

CREATE TABLE IF NOT EXISTS `v9_keylink` (
`keylinkid` smallint(5) unsigned NOT NULL,
  `word` char(40) NOT NULL,
  `url` char(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_keyword`
--

CREATE TABLE IF NOT EXISTS `v9_keyword` (
`id` int(10) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyword` char(100) NOT NULL,
  `pinyin` char(100) NOT NULL,
  `videonum` int(11) NOT NULL DEFAULT '0',
  `searchnums` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `v9_keyword`
--

INSERT INTO `v9_keyword` (`id`, `siteid`, `keyword`, `pinyin`, `videonum`, `searchnums`) VALUES
(1, 1, '动画', 'donghua', 9, 0),
(2, 1, '动态', 'dongtai', 2, 0),
(3, 1, '公司', 'gongsi', 2, 0),
(4, 1, '新闻', 'xinwen', 1, 0),
(5, 1, '行业', 'xingye', 2, 0),
(6, 1, '资讯', 'zixun', 2, 0),
(7, 1, '图片', 'tupian', 1, 0),
(8, 1, '海报', 'haibao', 3, 0),
(9, 1, '视频', 'shipin', 6, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_keyword_data`
--

CREATE TABLE IF NOT EXISTS `v9_keyword_data` (
`id` int(10) unsigned NOT NULL,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `contentid` char(30) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `v9_keyword_data`
--

INSERT INTO `v9_keyword_data` (`id`, `tagid`, `siteid`, `contentid`) VALUES
(1, 1, 1, '1-11'),
(2, 2, 1, '1-1'),
(3, 3, 1, '1-1'),
(4, 2, 1, '2-1'),
(5, 3, 1, '2-1'),
(6, 4, 1, '2-1'),
(7, 5, 1, '3-1'),
(8, 6, 1, '3-1'),
(9, 5, 1, '4-1'),
(10, 6, 1, '4-1'),
(11, 7, 1, '2-11'),
(12, 8, 1, '3-11'),
(13, 1, 1, '4-11'),
(14, 9, 1, '4-11');

-- --------------------------------------------------------

--
-- 表的结构 `v9_link`
--

CREATE TABLE IF NOT EXISTS `v9_link` (
`linkid` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `elite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `v9_link`
--

INSERT INTO `v9_link` (`linkid`, `siteid`, `typeid`, `linktype`, `name`, `url`, `logo`, `introduce`, `username`, `listorder`, `elite`, `passed`, `addtime`) VALUES
(1, 1, 0, 1, 'PHPCMS', 'http://www.phpcms.cn', 'http://www.phpcms.cn/images/logo_88_31.gif', '', '', 0, 0, 1, 1509847186),
(2, 1, 0, 1, '盛大在线', 'http://www.sdo.com', 'http://www.snda.com/cn/logo/comp_logo_sdo.gif', '', '', 0, 0, 1, 1509847186);

-- --------------------------------------------------------

--
-- 表的结构 `v9_linkage`
--

CREATE TABLE IF NOT EXISTS `v9_linkage` (
`linkageid` smallint(5) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `style` varchar(35) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchildid` mediumtext NOT NULL,
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `setting` varchar(255) DEFAULT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3360 ;

--
-- 转存表中的数据 `v9_linkage`
--

INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(1, '中国', '1', 0, 0, '', 0, 0, '', NULL, 0),
(2, '北京市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(3, '上海市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(4, '天津市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(5, '重庆市', '0', 0, 0, '', 1, 0, '', NULL, 0),
(6, '河北省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(7, '山西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(8, '内蒙古', '0', 0, 0, '', 1, 0, '', NULL, 0),
(9, '辽宁省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(10, '吉林省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(11, '黑龙江省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(12, '江苏省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(13, '浙江省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(14, '安徽省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(15, '福建省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(16, '江西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(17, '山东省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(18, '河南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(19, '湖北省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(20, '湖南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(21, '广东省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(22, '广西', '0', 0, 0, '', 1, 0, '', NULL, 0),
(23, '海南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(24, '四川省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(25, '贵州省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(26, '云南省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(27, '西藏', '0', 0, 0, '', 1, 0, '', NULL, 0),
(28, '陕西省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(29, '甘肃省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(30, '青海省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(31, '宁夏', '0', 0, 0, '', 1, 0, '', NULL, 0),
(32, '新疆', '0', 0, 0, '', 1, 0, '', NULL, 0),
(33, '台湾省', '0', 0, 0, '', 1, 0, '', NULL, 0),
(34, '香港', '0', 0, 0, '', 1, 0, '', NULL, 0),
(35, '澳门', '0', 0, 0, '', 1, 0, '', NULL, 0),
(36, '东城区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(37, '西城区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(38, '崇文区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(39, '宣武区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(40, '朝阳区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(41, '石景山区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(42, '海淀区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(43, '门头沟区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(44, '房山区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(45, '通州区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(46, '顺义区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(47, '昌平区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(48, '大兴区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(49, '怀柔区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(50, '平谷区', '0', 2, 0, '', 1, 0, '', NULL, 0),
(51, '密云县', '0', 2, 0, '', 1, 0, '', NULL, 0),
(52, '延庆县', '0', 2, 0, '', 1, 0, '', NULL, 0),
(53, '黄浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(54, '卢湾区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(55, '徐汇区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(56, '长宁区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(57, '静安区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(58, '普陀区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(59, '闸北区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(60, '虹口区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(61, '杨浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(62, '闵行区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(63, '宝山区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(64, '嘉定区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(65, '浦东新区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(66, '金山区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(67, '松江区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(68, '青浦区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(69, '南汇区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(70, '奉贤区', '0', 3, 0, '', 1, 0, '', NULL, 0),
(71, '崇明县', '0', 3, 0, '', 1, 0, '', NULL, 0),
(72, '和平区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(73, '河东区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(74, '河西区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(75, '南开区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(76, '河北区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(77, '红桥区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(78, '塘沽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(79, '汉沽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(80, '大港区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(81, '东丽区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(82, '西青区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(83, '津南区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(84, '北辰区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(85, '武清区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(86, '宝坻区', '0', 4, 0, '', 1, 0, '', NULL, 0),
(87, '宁河县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(88, '静海县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(89, '蓟县', '0', 4, 0, '', 1, 0, '', NULL, 0),
(90, '万州区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(91, '涪陵区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(92, '渝中区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(93, '大渡口区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(94, '江北区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(95, '沙坪坝区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(96, '九龙坡区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(97, '南岸区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(98, '北碚区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(99, '万盛区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(100, '双桥区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(101, '渝北区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(102, '巴南区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(103, '黔江区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(104, '长寿区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(105, '綦江县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(106, '潼南县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(107, '铜梁县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(108, '大足县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(109, '荣昌县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(110, '璧山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(111, '梁平县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(112, '城口县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(113, '丰都县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(114, '垫江县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(115, '武隆县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(116, '忠县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(117, '开县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(118, '云阳县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(119, '奉节县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(120, '巫山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(121, '巫溪县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(122, '石柱县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(123, '秀山县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(124, '酉阳县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(125, '彭水县', '0', 5, 0, '', 1, 0, '', NULL, 0),
(126, '江津区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(127, '合川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(128, '永川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(129, '南川区', '0', 5, 0, '', 1, 0, '', NULL, 0),
(130, '石家庄市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(131, '唐山市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(132, '秦皇岛市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(133, '邯郸市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(134, '邢台市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(135, '保定市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(136, '张家口市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(137, '承德市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(138, '沧州市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(139, '廊坊市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(140, '衡水市', '0', 6, 0, '', 1, 0, '', NULL, 0),
(141, '太原市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(142, '大同市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(143, '阳泉市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(144, '长治市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(145, '晋城市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(146, '朔州市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(147, '晋中市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(148, '运城市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(149, '忻州市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(150, '临汾市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(151, '吕梁市', '0', 7, 0, '', 1, 0, '', NULL, 0),
(152, '呼和浩特市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(153, '包头市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(154, '乌海市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(155, '赤峰市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(156, '通辽市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(157, '鄂尔多斯市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(158, '呼伦贝尔市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(159, '巴彦淖尔市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(160, '乌兰察布市', '0', 8, 0, '', 1, 0, '', NULL, 0),
(161, '兴安盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(162, '锡林郭勒盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(163, '阿拉善盟', '0', 8, 0, '', 1, 0, '', NULL, 0),
(164, '沈阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(165, '大连市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(166, '鞍山市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(167, '抚顺市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(168, '本溪市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(169, '丹东市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(170, '锦州市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(171, '营口市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(172, '阜新市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(173, '辽阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(174, '盘锦市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(175, '铁岭市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(176, '朝阳市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(177, '葫芦岛市', '0', 9, 0, '', 1, 0, '', NULL, 0),
(178, '长春市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(179, '吉林市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(180, '四平市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(181, '辽源市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(182, '通化市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(183, '白山市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(184, '松原市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(185, '白城市', '0', 10, 0, '', 1, 0, '', NULL, 0),
(186, '延边', '0', 10, 0, '', 1, 0, '', NULL, 0),
(187, '哈尔滨市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(188, '齐齐哈尔市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(189, '鸡西市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(190, '鹤岗市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(191, '双鸭山市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(192, '大庆市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(193, '伊春市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(194, '佳木斯市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(195, '七台河市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(196, '牡丹江市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(197, '黑河市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(198, '绥化市', '0', 11, 0, '', 1, 0, '', NULL, 0),
(199, '大兴安岭地区', '0', 11, 0, '', 1, 0, '', NULL, 0),
(200, '南京市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(201, '无锡市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(202, '徐州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(203, '常州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(204, '苏州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(205, '南通市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(206, '连云港市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(207, '淮安市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(208, '盐城市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(209, '扬州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(210, '镇江市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(211, '泰州市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(212, '宿迁市', '0', 12, 0, '', 1, 0, '', NULL, 0),
(213, '杭州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(214, '宁波市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(215, '温州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(216, '嘉兴市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(217, '湖州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(218, '绍兴市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(219, '金华市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(220, '衢州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(221, '舟山市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(222, '台州市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(223, '丽水市', '0', 13, 0, '', 1, 0, '', NULL, 0),
(224, '合肥市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(225, '芜湖市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(226, '蚌埠市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(227, '淮南市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(228, '马鞍山市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(229, '淮北市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(230, '铜陵市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(231, '安庆市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(232, '黄山市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(233, '滁州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(234, '阜阳市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(235, '宿州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(236, '巢湖市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(237, '六安市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(238, '亳州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(239, '池州市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(240, '宣城市', '0', 14, 0, '', 1, 0, '', NULL, 0),
(241, '福州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(242, '厦门市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(243, '莆田市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(244, '三明市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(245, '泉州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(246, '漳州市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(247, '南平市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(248, '龙岩市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(249, '宁德市', '0', 15, 0, '', 1, 0, '', NULL, 0),
(250, '南昌市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(251, '景德镇市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(252, '萍乡市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(253, '九江市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(254, '新余市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(255, '鹰潭市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(256, '赣州市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(257, '吉安市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(258, '宜春市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(259, '抚州市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(260, '上饶市', '0', 16, 0, '', 1, 0, '', NULL, 0),
(261, '济南市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(262, '青岛市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(263, '淄博市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(264, '枣庄市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(265, '东营市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(266, '烟台市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(267, '潍坊市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(268, '济宁市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(269, '泰安市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(270, '威海市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(271, '日照市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(272, '莱芜市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(273, '临沂市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(274, '德州市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(275, '聊城市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(276, '滨州市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(277, '荷泽市', '0', 17, 0, '', 1, 0, '', NULL, 0),
(278, '郑州市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(279, '开封市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(280, '洛阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(281, '平顶山市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(282, '安阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(283, '鹤壁市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(284, '新乡市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(285, '焦作市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(286, '濮阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(287, '许昌市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(288, '漯河市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(289, '三门峡市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(290, '南阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(291, '商丘市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(292, '信阳市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(293, '周口市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(294, '驻马店市', '0', 18, 0, '', 1, 0, '', NULL, 0),
(295, '武汉市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(296, '黄石市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(297, '十堰市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(298, '宜昌市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(299, '襄樊市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(300, '鄂州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(301, '荆门市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(302, '孝感市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(303, '荆州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(304, '黄冈市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(305, '咸宁市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(306, '随州市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(307, '恩施土家族苗族自治州', '0', 19, 0, '', 1, 0, '', NULL, 0),
(308, '仙桃市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(309, '潜江市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(310, '天门市', '0', 19, 0, '', 1, 0, '', NULL, 0),
(311, '神农架林区', '0', 19, 0, '', 1, 0, '', NULL, 0),
(312, '长沙市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(313, '株洲市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(314, '湘潭市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(315, '衡阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(316, '邵阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(317, '岳阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(318, '常德市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(319, '张家界市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(320, '益阳市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(321, '郴州市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(322, '永州市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(323, '怀化市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(324, '娄底市', '0', 20, 0, '', 1, 0, '', NULL, 0),
(325, '湘西土家族苗族自治州', '0', 20, 0, '', 1, 0, '', NULL, 0),
(326, '广州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(327, '韶关市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(328, '深圳市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(329, '珠海市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(330, '汕头市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(331, '佛山市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(332, '江门市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(333, '湛江市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(334, '茂名市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(335, '肇庆市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(336, '惠州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(337, '梅州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(338, '汕尾市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(339, '河源市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(340, '阳江市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(341, '清远市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(342, '东莞市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(343, '中山市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(344, '潮州市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(345, '揭阳市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(346, '云浮市', '0', 21, 0, '', 1, 0, '', NULL, 0),
(347, '南宁市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(348, '柳州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(349, '桂林市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(350, '梧州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(351, '北海市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(352, '防城港市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(353, '钦州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(354, '贵港市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(355, '玉林市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(356, '百色市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(357, '贺州市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(358, '河池市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(359, '来宾市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(360, '崇左市', '0', 22, 0, '', 1, 0, '', NULL, 0),
(361, '海口市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(362, '三亚市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(363, '五指山市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(364, '琼海市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(365, '儋州市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(366, '文昌市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(367, '万宁市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(368, '东方市', '0', 23, 0, '', 1, 0, '', NULL, 0),
(369, '定安县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(370, '屯昌县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(371, '澄迈县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(372, '临高县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(373, '白沙黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(374, '昌江黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(375, '乐东黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(376, '陵水黎族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(377, '保亭黎族苗族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(378, '琼中黎族苗族自治县', '0', 23, 0, '', 1, 0, '', NULL, 0),
(379, '西沙群岛', '0', 23, 0, '', 1, 0, '', NULL, 0),
(380, '南沙群岛', '0', 23, 0, '', 1, 0, '', NULL, 0),
(381, '中沙群岛的岛礁及其海域', '0', 23, 0, '', 1, 0, '', NULL, 0),
(382, '成都市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(383, '自贡市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(384, '攀枝花市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(385, '泸州市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(386, '德阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(387, '绵阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(388, '广元市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(389, '遂宁市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(390, '内江市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(391, '乐山市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(392, '南充市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(393, '眉山市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(394, '宜宾市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(395, '广安市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(396, '达州市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(397, '雅安市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(398, '巴中市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(399, '资阳市', '0', 24, 0, '', 1, 0, '', NULL, 0),
(400, '阿坝州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(401, '甘孜州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(402, '凉山州', '0', 24, 0, '', 1, 0, '', NULL, 0),
(403, '贵阳市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(404, '六盘水市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(405, '遵义市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(406, '安顺市', '0', 25, 0, '', 1, 0, '', NULL, 0),
(407, '铜仁地区', '0', 25, 0, '', 1, 0, '', NULL, 0),
(408, '黔西南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(409, '毕节地区', '0', 25, 0, '', 1, 0, '', NULL, 0),
(410, '黔东南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(411, '黔南州', '0', 25, 0, '', 1, 0, '', NULL, 0),
(412, '昆明市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(413, '曲靖市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(414, '玉溪市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(415, '保山市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(416, '昭通市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(417, '丽江市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(418, '思茅市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(419, '临沧市', '0', 26, 0, '', 1, 0, '', NULL, 0),
(420, '楚雄州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(421, '红河州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(422, '文山州', '0', 26, 0, '', 1, 0, '', NULL, 0),
(423, '西双版纳', '0', 26, 0, '', 1, 0, '', NULL, 0),
(424, '大理', '0', 26, 0, '', 1, 0, '', NULL, 0),
(425, '德宏', '0', 26, 0, '', 1, 0, '', NULL, 0),
(426, '怒江', '0', 26, 0, '', 1, 0, '', NULL, 0),
(427, '迪庆', '0', 26, 0, '', 1, 0, '', NULL, 0),
(428, '拉萨市', '0', 27, 0, '', 1, 0, '', NULL, 0),
(429, '昌都', '0', 27, 0, '', 1, 0, '', NULL, 0),
(430, '山南', '0', 27, 0, '', 1, 0, '', NULL, 0),
(431, '日喀则', '0', 27, 0, '', 1, 0, '', NULL, 0),
(432, '那曲', '0', 27, 0, '', 1, 0, '', NULL, 0),
(433, '阿里', '0', 27, 0, '', 1, 0, '', NULL, 0),
(434, '林芝', '0', 27, 0, '', 1, 0, '', NULL, 0),
(435, '西安市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(436, '铜川市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(437, '宝鸡市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(438, '咸阳市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(439, '渭南市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(440, '延安市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(441, '汉中市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(442, '榆林市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(443, '安康市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(444, '商洛市', '0', 28, 0, '', 1, 0, '', NULL, 0),
(445, '兰州市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(446, '嘉峪关市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(447, '金昌市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(448, '白银市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(449, '天水市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(450, '武威市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(451, '张掖市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(452, '平凉市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(453, '酒泉市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(454, '庆阳市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(455, '定西市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(456, '陇南市', '0', 29, 0, '', 1, 0, '', NULL, 0),
(457, '临夏州', '0', 29, 0, '', 1, 0, '', NULL, 0),
(458, '甘州', '0', 29, 0, '', 1, 0, '', NULL, 0),
(459, '西宁市', '0', 30, 0, '', 1, 0, '', NULL, 0),
(460, '海东地区', '0', 30, 0, '', 1, 0, '', NULL, 0),
(461, '海州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(462, '黄南州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(463, '海南州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(464, '果洛州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(465, '玉树州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(466, '海西州', '0', 30, 0, '', 1, 0, '', NULL, 0),
(467, '银川市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(468, '石嘴山市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(469, '吴忠市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(470, '固原市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(471, '中卫市', '0', 31, 0, '', 1, 0, '', NULL, 0),
(472, '乌鲁木齐市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(473, '克拉玛依市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(474, '吐鲁番地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(475, '哈密地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(476, '昌吉州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(477, '博尔州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(478, '巴音郭楞州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(479, '阿克苏地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(480, '克孜勒苏柯尔克孜自治州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(481, '喀什地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(482, '和田地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(483, '伊犁州', '0', 32, 0, '', 1, 0, '', NULL, 0),
(484, '塔城地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(485, '阿勒泰地区', '0', 32, 0, '', 1, 0, '', NULL, 0),
(486, '石河子市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(487, '阿拉尔市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(488, '图木舒克市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(489, '五家渠市', '0', 32, 0, '', 1, 0, '', NULL, 0),
(490, '台北市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(491, '高雄市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(492, '基隆市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(493, '新竹市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(494, '台中市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(495, '嘉义市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(496, '台南市', '0', 33, 0, '', 1, 0, '', NULL, 0),
(497, '台北县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(498, '桃园县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(499, '新竹县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(500, '苗栗县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(501, '台中县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(502, '彰化县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(503, '南投县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(504, '云林县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(505, '嘉义县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(506, '台南县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(507, '高雄县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(508, '屏东县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(509, '宜兰县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(510, '花莲县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(511, '台东县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(512, '澎湖县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(513, '金门县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(514, '连江县', '0', 33, 0, '', 1, 0, '', NULL, 0),
(515, '中西区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(516, '东区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(517, '南区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(518, '湾仔区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(519, '九龙城区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(520, '观塘区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(521, '深水埗区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(522, '黄大仙区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(523, '油尖旺区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(524, '离岛区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(525, '葵青区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(526, '北区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(527, '西贡区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(528, '沙田区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(529, '大埔区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(530, '荃湾区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(531, '屯门区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(532, '元朗区', '0', 34, 0, '', 1, 0, '', NULL, 0),
(533, '花地玛堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(534, '市圣安多尼堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(535, '大堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(536, '望德堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(537, '风顺堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(538, '嘉模堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(539, '圣方济各堂区', '0', 35, 0, '', 1, 0, '', NULL, 0),
(540, '长安区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(541, '桥东区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(542, '桥西区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(543, '新华区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(544, '井陉矿区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(545, '裕华区', '0', 130, 0, '', 1, 0, '', NULL, 0),
(546, '井陉县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(547, '正定县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(548, '栾城县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(549, '行唐县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(550, '灵寿县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(551, '高邑县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(552, '深泽县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(553, '赞皇县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(554, '无极县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(555, '平山县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(556, '元氏县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(557, '赵县', '0', 130, 0, '', 1, 0, '', NULL, 0),
(558, '辛集市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(559, '藁城市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(560, '晋州市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(561, '新乐市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(562, '鹿泉市', '0', 130, 0, '', 1, 0, '', NULL, 0),
(563, '路南区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(564, '路北区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(565, '古冶区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(566, '开平区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(567, '丰南区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(568, '丰润区', '0', 131, 0, '', 1, 0, '', NULL, 0),
(569, '滦县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(570, '滦南县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(571, '乐亭县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(572, '迁西县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(573, '玉田县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(574, '唐海县', '0', 131, 0, '', 1, 0, '', NULL, 0),
(575, '遵化市', '0', 131, 0, '', 1, 0, '', NULL, 0),
(576, '迁安市', '0', 131, 0, '', 1, 0, '', NULL, 0),
(577, '海港区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(578, '山海关区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(579, '北戴河区', '0', 132, 0, '', 1, 0, '', NULL, 0),
(580, '青龙县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(581, '昌黎县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(582, '抚宁县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(583, '卢龙县', '0', 132, 0, '', 1, 0, '', NULL, 0),
(584, '邯山区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(585, '丛台区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(586, '复兴区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(587, '峰峰矿区', '0', 133, 0, '', 1, 0, '', NULL, 0),
(588, '邯郸县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(589, '临漳县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(590, '成安县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(591, '大名县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(592, '涉县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(593, '磁县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(594, '肥乡县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(595, '永年县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(596, '邱县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(597, '鸡泽县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(598, '广平县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(599, '馆陶县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(600, '魏县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(601, '曲周县', '0', 133, 0, '', 1, 0, '', NULL, 0),
(602, '武安市', '0', 133, 0, '', 1, 0, '', NULL, 0),
(603, '桥东区', '0', 134, 0, '', 1, 0, '', NULL, 0),
(604, '桥西区', '0', 134, 0, '', 1, 0, '', NULL, 0),
(605, '邢台县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(606, '临城县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(607, '内丘县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(608, '柏乡县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(609, '隆尧县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(610, '任县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(611, '南和县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(612, '宁晋县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(613, '巨鹿县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(614, '新河县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(615, '广宗县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(616, '平乡县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(617, '威县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(618, '清河县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(619, '临西县', '0', 134, 0, '', 1, 0, '', NULL, 0),
(620, '南宫市', '0', 134, 0, '', 1, 0, '', NULL, 0),
(621, '沙河市', '0', 134, 0, '', 1, 0, '', NULL, 0),
(622, '新市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(623, '北市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(624, '南市区', '0', 135, 0, '', 1, 0, '', NULL, 0),
(625, '满城县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(626, '清苑县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(627, '涞水县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(628, '阜平县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(629, '徐水县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(630, '定兴县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(631, '唐县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(632, '高阳县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(633, '容城县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(634, '涞源县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(635, '望都县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(636, '安新县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(637, '易县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(638, '曲阳县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(639, '蠡县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(640, '顺平县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(641, '博野县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(642, '雄县', '0', 135, 0, '', 1, 0, '', NULL, 0),
(643, '涿州市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(644, '定州市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(645, '安国市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(646, '高碑店市', '0', 135, 0, '', 1, 0, '', NULL, 0),
(647, '桥东区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(648, '桥西区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(649, '宣化区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(650, '下花园区', '0', 136, 0, '', 1, 0, '', NULL, 0),
(651, '宣化县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(652, '张北县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(653, '康保县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(654, '沽源县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(655, '尚义县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(656, '蔚县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(657, '阳原县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(658, '怀安县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(659, '万全县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(660, '怀来县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(661, '涿鹿县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(662, '赤城县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(663, '崇礼县', '0', 136, 0, '', 1, 0, '', NULL, 0),
(664, '双桥区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(665, '双滦区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(666, '鹰手营子矿区', '0', 137, 0, '', 1, 0, '', NULL, 0),
(667, '承德县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(668, '兴隆县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(669, '平泉县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(670, '滦平县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(671, '隆化县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(672, '丰宁县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(673, '宽城县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(674, '围场县', '0', 137, 0, '', 1, 0, '', NULL, 0),
(675, '新华区', '0', 138, 0, '', 1, 0, '', NULL, 0),
(676, '运河区', '0', 138, 0, '', 1, 0, '', NULL, 0),
(677, '沧县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(678, '青县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(679, '东光县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(680, '海兴县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(681, '盐山县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(682, '肃宁县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(683, '南皮县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(684, '吴桥县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(685, '献县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(686, '孟村县', '0', 138, 0, '', 1, 0, '', NULL, 0),
(687, '泊头市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(688, '任丘市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(689, '黄骅市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(690, '河间市', '0', 138, 0, '', 1, 0, '', NULL, 0),
(691, '安次区', '0', 139, 0, '', 1, 0, '', NULL, 0),
(692, '广阳区', '0', 139, 0, '', 1, 0, '', NULL, 0),
(693, '固安县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(694, '永清县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(695, '香河县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(696, '大城县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(697, '文安县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(698, '大厂县', '0', 139, 0, '', 1, 0, '', NULL, 0),
(699, '霸州市', '0', 139, 0, '', 1, 0, '', NULL, 0),
(700, '三河市', '0', 139, 0, '', 1, 0, '', NULL, 0),
(701, '桃城区', '0', 140, 0, '', 1, 0, '', NULL, 0),
(702, '枣强县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(703, '武邑县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(704, '武强县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(705, '饶阳县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(706, '安平县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(707, '故城县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(708, '景县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(709, '阜城县', '0', 140, 0, '', 1, 0, '', NULL, 0),
(710, '冀州市', '0', 140, 0, '', 1, 0, '', NULL, 0),
(711, '深州市', '0', 140, 0, '', 1, 0, '', NULL, 0),
(712, '小店区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(713, '迎泽区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(714, '杏花岭区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(715, '尖草坪区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(716, '万柏林区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(717, '晋源区', '0', 141, 0, '', 1, 0, '', NULL, 0),
(718, '清徐县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(719, '阳曲县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(720, '娄烦县', '0', 141, 0, '', 1, 0, '', NULL, 0),
(721, '古交市', '0', 141, 0, '', 1, 0, '', NULL, 0),
(722, '城区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(723, '矿区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(724, '南郊区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(725, '新荣区', '0', 142, 0, '', 1, 0, '', NULL, 0),
(726, '阳高县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(727, '天镇县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(728, '广灵县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(729, '灵丘县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(730, '浑源县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(731, '左云县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(732, '大同县', '0', 142, 0, '', 1, 0, '', NULL, 0),
(733, '城区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(734, '矿区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(735, '郊区', '0', 143, 0, '', 1, 0, '', NULL, 0),
(736, '平定县', '0', 143, 0, '', 1, 0, '', NULL, 0),
(737, '盂县', '0', 143, 0, '', 1, 0, '', NULL, 0),
(738, '城区', '0', 144, 0, '', 1, 0, '', NULL, 0),
(739, '郊区', '0', 144, 0, '', 1, 0, '', NULL, 0),
(740, '长治县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(741, '襄垣县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(742, '屯留县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(743, '平顺县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(744, '黎城县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(745, '壶关县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(746, '长子县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(747, '武乡县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(748, '沁县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(749, '沁源县', '0', 144, 0, '', 1, 0, '', NULL, 0),
(750, '潞城市', '0', 144, 0, '', 1, 0, '', NULL, 0),
(751, '城区', '0', 145, 0, '', 1, 0, '', NULL, 0),
(752, '沁水县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(753, '阳城县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(754, '陵川县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(755, '泽州县', '0', 145, 0, '', 1, 0, '', NULL, 0),
(756, '高平市', '0', 145, 0, '', 1, 0, '', NULL, 0),
(757, '朔城区', '0', 146, 0, '', 1, 0, '', NULL, 0),
(758, '平鲁区', '0', 146, 0, '', 1, 0, '', NULL, 0),
(759, '山阴县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(760, '应县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(761, '右玉县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(762, '怀仁县', '0', 146, 0, '', 1, 0, '', NULL, 0),
(763, '榆次区', '0', 147, 0, '', 1, 0, '', NULL, 0),
(764, '榆社县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(765, '左权县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(766, '和顺县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(767, '昔阳县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(768, '寿阳县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(769, '太谷县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(770, '祁县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(771, '平遥县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(772, '灵石县', '0', 147, 0, '', 1, 0, '', NULL, 0),
(773, '介休市', '0', 147, 0, '', 1, 0, '', NULL, 0),
(774, '盐湖区', '0', 148, 0, '', 1, 0, '', NULL, 0),
(775, '临猗县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(776, '万荣县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(777, '闻喜县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(778, '稷山县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(779, '新绛县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(780, '绛县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(781, '垣曲县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(782, '夏县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(783, '平陆县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(784, '芮城县', '0', 148, 0, '', 1, 0, '', NULL, 0),
(785, '永济市', '0', 148, 0, '', 1, 0, '', NULL, 0),
(786, '河津市', '0', 148, 0, '', 1, 0, '', NULL, 0),
(787, '忻府区', '0', 149, 0, '', 1, 0, '', NULL, 0),
(788, '定襄县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(789, '五台县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(790, '代县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(791, '繁峙县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(792, '宁武县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(793, '静乐县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(794, '神池县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(795, '五寨县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(796, '岢岚县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(797, '河曲县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(798, '保德县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(799, '偏关县', '0', 149, 0, '', 1, 0, '', NULL, 0),
(800, '原平市', '0', 149, 0, '', 1, 0, '', NULL, 0),
(801, '尧都区', '0', 150, 0, '', 1, 0, '', NULL, 0),
(802, '曲沃县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(803, '翼城县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(804, '襄汾县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(805, '洪洞县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(806, '古县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(807, '安泽县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(808, '浮山县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(809, '吉县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(810, '乡宁县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(811, '大宁县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(812, '隰县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(813, '永和县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(814, '蒲县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(815, '汾西县', '0', 150, 0, '', 1, 0, '', NULL, 0),
(816, '侯马市', '0', 150, 0, '', 1, 0, '', NULL, 0),
(817, '霍州市', '0', 150, 0, '', 1, 0, '', NULL, 0),
(818, '离石区', '0', 151, 0, '', 1, 0, '', NULL, 0),
(819, '文水县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(820, '交城县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(821, '兴县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(822, '临县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(823, '柳林县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(824, '石楼县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(825, '岚县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(826, '方山县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(827, '中阳县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(828, '交口县', '0', 151, 0, '', 1, 0, '', NULL, 0),
(829, '孝义市', '0', 151, 0, '', 1, 0, '', NULL, 0),
(830, '汾阳市', '0', 151, 0, '', 1, 0, '', NULL, 0),
(831, '新城区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(832, '回民区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(833, '玉泉区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(834, '赛罕区', '0', 152, 0, '', 1, 0, '', NULL, 0),
(835, '土默特左旗', '0', 152, 0, '', 1, 0, '', NULL, 0),
(836, '托克托县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(837, '和林格尔县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(838, '清水河县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(839, '武川县', '0', 152, 0, '', 1, 0, '', NULL, 0),
(840, '东河区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(841, '昆都仑区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(842, '青山区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(843, '石拐区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(844, '白云矿区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(845, '九原区', '0', 153, 0, '', 1, 0, '', NULL, 0),
(846, '土默特右旗', '0', 153, 0, '', 1, 0, '', NULL, 0),
(847, '固阳县', '0', 153, 0, '', 1, 0, '', NULL, 0),
(848, '达尔罕茂明安联合旗', '0', 153, 0, '', 1, 0, '', NULL, 0),
(849, '海勃湾区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(850, '海南区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(851, '乌达区', '0', 154, 0, '', 1, 0, '', NULL, 0),
(852, '红山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(853, '元宝山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(854, '松山区', '0', 155, 0, '', 1, 0, '', NULL, 0),
(855, '阿鲁科尔沁旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(856, '巴林左旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(857, '巴林右旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(858, '林西县', '0', 155, 0, '', 1, 0, '', NULL, 0),
(859, '克什克腾旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(860, '翁牛特旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(861, '喀喇沁旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(862, '宁城县', '0', 155, 0, '', 1, 0, '', NULL, 0),
(863, '敖汉旗', '0', 155, 0, '', 1, 0, '', NULL, 0),
(864, '科尔沁区', '0', 156, 0, '', 1, 0, '', NULL, 0),
(865, '科尔沁左翼中旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(866, '科尔沁左翼后旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(867, '开鲁县', '0', 156, 0, '', 1, 0, '', NULL, 0),
(868, '库伦旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(869, '奈曼旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(870, '扎鲁特旗', '0', 156, 0, '', 1, 0, '', NULL, 0),
(871, '霍林郭勒市', '0', 156, 0, '', 1, 0, '', NULL, 0),
(872, '东胜区', '0', 157, 0, '', 1, 0, '', NULL, 0),
(873, '达拉特旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(874, '准格尔旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(875, '鄂托克前旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(876, '鄂托克旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(877, '杭锦旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(878, '乌审旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(879, '伊金霍洛旗', '0', 157, 0, '', 1, 0, '', NULL, 0),
(880, '海拉尔区', '0', 158, 0, '', 1, 0, '', NULL, 0),
(881, '阿荣旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(882, '莫力达瓦达斡尔族自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(883, '鄂伦春自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(884, '鄂温克族自治旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(885, '陈巴尔虎旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(886, '新巴尔虎左旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(887, '新巴尔虎右旗', '0', 158, 0, '', 1, 0, '', NULL, 0),
(888, '满洲里市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(889, '牙克石市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(890, '扎兰屯市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(891, '额尔古纳市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(892, '根河市', '0', 158, 0, '', 1, 0, '', NULL, 0),
(893, '临河区', '0', 159, 0, '', 1, 0, '', NULL, 0),
(894, '五原县', '0', 159, 0, '', 1, 0, '', NULL, 0),
(895, '磴口县', '0', 159, 0, '', 1, 0, '', NULL, 0),
(896, '乌拉特前旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(897, '乌拉特中旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(898, '乌拉特后旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(899, '杭锦后旗', '0', 159, 0, '', 1, 0, '', NULL, 0),
(900, '集宁区', '0', 160, 0, '', 1, 0, '', NULL, 0),
(901, '卓资县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(902, '化德县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(903, '商都县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(904, '兴和县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(905, '凉城县', '0', 160, 0, '', 1, 0, '', NULL, 0),
(906, '察哈尔右翼前旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(907, '察哈尔右翼中旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(908, '察哈尔右翼后旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(909, '四子王旗', '0', 160, 0, '', 1, 0, '', NULL, 0),
(910, '丰镇市', '0', 160, 0, '', 1, 0, '', NULL, 0),
(911, '乌兰浩特市', '0', 161, 0, '', 1, 0, '', NULL, 0),
(912, '阿尔山市', '0', 161, 0, '', 1, 0, '', NULL, 0),
(913, '科尔沁右翼前旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(914, '科尔沁右翼中旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(915, '扎赉特旗', '0', 161, 0, '', 1, 0, '', NULL, 0),
(916, '突泉县', '0', 161, 0, '', 1, 0, '', NULL, 0),
(917, '二连浩特市', '0', 162, 0, '', 1, 0, '', NULL, 0),
(918, '锡林浩特市', '0', 162, 0, '', 1, 0, '', NULL, 0),
(919, '阿巴嘎旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(920, '苏尼特左旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(921, '苏尼特右旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(922, '东乌珠穆沁旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(923, '西乌珠穆沁旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(924, '太仆寺旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(925, '镶黄旗', '0', 162, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(926, '正镶白旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(927, '正蓝旗', '0', 162, 0, '', 1, 0, '', NULL, 0),
(928, '多伦县', '0', 162, 0, '', 1, 0, '', NULL, 0),
(929, '阿拉善左旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(930, '阿拉善右旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(931, '额济纳旗', '0', 163, 0, '', 1, 0, '', NULL, 0),
(932, '和平区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(933, '沈河区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(934, '大东区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(935, '皇姑区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(936, '铁西区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(937, '苏家屯区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(938, '东陵区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(939, '新城子区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(940, '于洪区', '0', 164, 0, '', 1, 0, '', NULL, 0),
(941, '辽中县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(942, '康平县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(943, '法库县', '0', 164, 0, '', 1, 0, '', NULL, 0),
(944, '新民市', '0', 164, 0, '', 1, 0, '', NULL, 0),
(945, '中山区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(946, '西岗区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(947, '沙河口区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(948, '甘井子区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(949, '旅顺口区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(950, '金州区', '0', 165, 0, '', 1, 0, '', NULL, 0),
(951, '长海县', '0', 165, 0, '', 1, 0, '', NULL, 0),
(952, '瓦房店市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(953, '普兰店市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(954, '庄河市', '0', 165, 0, '', 1, 0, '', NULL, 0),
(955, '铁东区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(956, '铁西区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(957, '立山区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(958, '千山区', '0', 166, 0, '', 1, 0, '', NULL, 0),
(959, '台安县', '0', 166, 0, '', 1, 0, '', NULL, 0),
(960, '岫岩满族自治县', '0', 166, 0, '', 1, 0, '', NULL, 0),
(961, '海城市', '0', 166, 0, '', 1, 0, '', NULL, 0),
(962, '新抚区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(963, '东洲区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(964, '望花区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(965, '顺城区', '0', 167, 0, '', 1, 0, '', NULL, 0),
(966, '抚顺县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(967, '新宾满族自治县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(968, '清原满族自治县', '0', 167, 0, '', 1, 0, '', NULL, 0),
(969, '平山区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(970, '溪湖区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(971, '明山区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(972, '南芬区', '0', 168, 0, '', 1, 0, '', NULL, 0),
(973, '本溪满族自治县', '0', 168, 0, '', 1, 0, '', NULL, 0),
(974, '桓仁满族自治县', '0', 168, 0, '', 1, 0, '', NULL, 0),
(975, '元宝区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(976, '振兴区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(977, '振安区', '0', 169, 0, '', 1, 0, '', NULL, 0),
(978, '宽甸满族自治县', '0', 169, 0, '', 1, 0, '', NULL, 0),
(979, '东港市', '0', 169, 0, '', 1, 0, '', NULL, 0),
(980, '凤城市', '0', 169, 0, '', 1, 0, '', NULL, 0),
(981, '古塔区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(982, '凌河区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(983, '太和区', '0', 170, 0, '', 1, 0, '', NULL, 0),
(984, '黑山县', '0', 170, 0, '', 1, 0, '', NULL, 0),
(985, '义县', '0', 170, 0, '', 1, 0, '', NULL, 0),
(986, '凌海市', '0', 170, 0, '', 1, 0, '', NULL, 0),
(987, '北镇市', '0', 170, 0, '', 1, 0, '', NULL, 0),
(988, '站前区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(989, '西市区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(990, '鲅鱼圈区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(991, '老边区', '0', 171, 0, '', 1, 0, '', NULL, 0),
(992, '盖州市', '0', 171, 0, '', 1, 0, '', NULL, 0),
(993, '大石桥市', '0', 171, 0, '', 1, 0, '', NULL, 0),
(994, '海州区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(995, '新邱区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(996, '太平区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(997, '清河门区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(998, '细河区', '0', 172, 0, '', 1, 0, '', NULL, 0),
(999, '阜新蒙古族自治县', '0', 172, 0, '', 1, 0, '', NULL, 0),
(1000, '彰武县', '0', 172, 0, '', 1, 0, '', NULL, 0),
(1001, '白塔区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1002, '文圣区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1003, '宏伟区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1004, '弓长岭区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1005, '太子河区', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1006, '辽阳县', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1007, '灯塔市', '0', 173, 0, '', 1, 0, '', NULL, 0),
(1008, '双台子区', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1009, '兴隆台区', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1010, '大洼县', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1011, '盘山县', '0', 174, 0, '', 1, 0, '', NULL, 0),
(1012, '银州区', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1013, '清河区', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1014, '铁岭县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1015, '西丰县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1016, '昌图县', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1017, '调兵山市', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1018, '开原市', '0', 175, 0, '', 1, 0, '', NULL, 0),
(1019, '双塔区', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1020, '龙城区', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1021, '朝阳县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1022, '建平县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1023, '喀喇沁左翼蒙古族自治县', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1024, '北票市', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1025, '凌源市', '0', 176, 0, '', 1, 0, '', NULL, 0),
(1026, '连山区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1027, '龙港区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1028, '南票区', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1029, '绥中县', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1030, '建昌县', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1031, '兴城市', '0', 177, 0, '', 1, 0, '', NULL, 0),
(1032, '南关区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1033, '宽城区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1034, '朝阳区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1035, '二道区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1036, '绿园区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1037, '双阳区', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1038, '农安县', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1039, '九台市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1040, '榆树市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1041, '德惠市', '0', 178, 0, '', 1, 0, '', NULL, 0),
(1042, '昌邑区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1043, '龙潭区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1044, '船营区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1045, '丰满区', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1046, '永吉县', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1047, '蛟河市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1048, '桦甸市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1049, '舒兰市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1050, '磐石市', '0', 179, 0, '', 1, 0, '', NULL, 0),
(1051, '铁西区', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1052, '铁东区', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1053, '梨树县', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1054, '伊通满族自治县', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1055, '公主岭市', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1056, '双辽市', '0', 180, 0, '', 1, 0, '', NULL, 0),
(1057, '龙山区', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1058, '西安区', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1059, '东丰县', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1060, '东辽县', '0', 181, 0, '', 1, 0, '', NULL, 0),
(1061, '东昌区', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1062, '二道江区', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1063, '通化县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1064, '辉南县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1065, '柳河县', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1066, '梅河口市', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1067, '集安市', '0', 182, 0, '', 1, 0, '', NULL, 0),
(1068, '八道江区', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1069, '抚松县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1070, '靖宇县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1071, '长白朝鲜族自治县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1072, '江源县', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1073, '临江市', '0', 183, 0, '', 1, 0, '', NULL, 0),
(1074, '宁江区', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1075, '前郭尔罗斯蒙古族自治县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1076, '长岭县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1077, '乾安县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1078, '扶余县', '0', 184, 0, '', 1, 0, '', NULL, 0),
(1079, '洮北区', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1080, '镇赉县', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1081, '通榆县', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1082, '洮南市', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1083, '大安市', '0', 185, 0, '', 1, 0, '', NULL, 0),
(1084, '延吉市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1085, '图们市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1086, '敦化市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1087, '珲春市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1088, '龙井市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1089, '和龙市', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1090, '汪清县', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1091, '安图县', '0', 186, 0, '', 1, 0, '', NULL, 0),
(1092, '道里区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1093, '南岗区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1094, '道外区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1095, '香坊区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1096, '动力区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1097, '平房区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1098, '松北区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1099, '呼兰区', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1100, '依兰县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1101, '方正县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1102, '宾县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1103, '巴彦县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1104, '木兰县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1105, '通河县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1106, '延寿县', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1107, '阿城市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1108, '双城市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1109, '尚志市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1110, '五常市', '0', 187, 0, '', 1, 0, '', NULL, 0),
(1111, '龙沙区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1112, '建华区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1113, '铁锋区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1114, '昂昂溪区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1115, '富拉尔基区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1116, '碾子山区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1117, '梅里斯达斡尔族区', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1118, '龙江县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1119, '依安县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1120, '泰来县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1121, '甘南县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1122, '富裕县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1123, '克山县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1124, '克东县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1125, '拜泉县', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1126, '讷河市', '0', 188, 0, '', 1, 0, '', NULL, 0),
(1127, '鸡冠区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1128, '恒山区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1129, '滴道区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1130, '梨树区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1131, '城子河区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1132, '麻山区', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1133, '鸡东县', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1134, '虎林市', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1135, '密山市', '0', 189, 0, '', 1, 0, '', NULL, 0),
(1136, '向阳区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1137, '工农区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1138, '南山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1139, '兴安区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1140, '东山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1141, '兴山区', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1142, '萝北县', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1143, '绥滨县', '0', 190, 0, '', 1, 0, '', NULL, 0),
(1144, '尖山区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1145, '岭东区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1146, '四方台区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1147, '宝山区', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1148, '集贤县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1149, '友谊县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1150, '宝清县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1151, '饶河县', '0', 191, 0, '', 1, 0, '', NULL, 0),
(1152, '萨尔图区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1153, '龙凤区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1154, '让胡路区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1155, '红岗区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1156, '大同区', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1157, '肇州县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1158, '肇源县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1159, '林甸县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1160, '杜尔伯特蒙古族自治县', '0', 192, 0, '', 1, 0, '', NULL, 0),
(1161, '伊春区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1162, '南岔区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1163, '友好区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1164, '西林区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1165, '翠峦区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1166, '新青区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1167, '美溪区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1168, '金山屯区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1169, '五营区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1170, '乌马河区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1171, '汤旺河区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1172, '带岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1173, '乌伊岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1174, '红星区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1175, '上甘岭区', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1176, '嘉荫县', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1177, '铁力市', '0', 193, 0, '', 1, 0, '', NULL, 0),
(1178, '永红区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1179, '向阳区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1180, '前进区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1181, '东风区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1182, '郊区', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1183, '桦南县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1184, '桦川县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1185, '汤原县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1186, '抚远县', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1187, '同江市', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1188, '富锦市', '0', 194, 0, '', 1, 0, '', NULL, 0),
(1189, '新兴区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1190, '桃山区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1191, '茄子河区', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1192, '勃利县', '0', 195, 0, '', 1, 0, '', NULL, 0),
(1193, '东安区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1194, '阳明区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1195, '爱民区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1196, '西安区', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1197, '东宁县', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1198, '林口县', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1199, '绥芬河市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1200, '海林市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1201, '宁安市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1202, '穆棱市', '0', 196, 0, '', 1, 0, '', NULL, 0),
(1203, '爱辉区', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1204, '嫩江县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1205, '逊克县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1206, '孙吴县', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1207, '北安市', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1208, '五大连池市', '0', 197, 0, '', 1, 0, '', NULL, 0),
(1209, '北林区', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1210, '望奎县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1211, '兰西县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1212, '青冈县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1213, '庆安县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1214, '明水县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1215, '绥棱县', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1216, '安达市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1217, '肇东市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1218, '海伦市', '0', 198, 0, '', 1, 0, '', NULL, 0),
(1219, '呼玛县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1220, '塔河县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1221, '漠河县', '0', 199, 0, '', 1, 0, '', NULL, 0),
(1222, '玄武区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1223, '白下区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1224, '秦淮区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1225, '建邺区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1226, '鼓楼区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1227, '下关区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1228, '浦口区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1229, '栖霞区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1230, '雨花台区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1231, '江宁区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1232, '六合区', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1233, '溧水县', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1234, '高淳县', '0', 200, 0, '', 1, 0, '', NULL, 0),
(1235, '崇安区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1236, '南长区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1237, '北塘区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1238, '锡山区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1239, '惠山区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1240, '滨湖区', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1241, '江阴市', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1242, '宜兴市', '0', 201, 0, '', 1, 0, '', NULL, 0),
(1243, '鼓楼区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1244, '云龙区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1245, '九里区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1246, '贾汪区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1247, '泉山区', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1248, '丰县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1249, '沛县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1250, '铜山县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1251, '睢宁县', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1252, '新沂市', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1253, '邳州市', '0', 202, 0, '', 1, 0, '', NULL, 0),
(1254, '天宁区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1255, '钟楼区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1256, '戚墅堰区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1257, '新北区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1258, '武进区', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1259, '溧阳市', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1260, '金坛市', '0', 203, 0, '', 1, 0, '', NULL, 0),
(1261, '沧浪区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1262, '平江区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1263, '金阊区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1264, '虎丘区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1265, '吴中区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1266, '相城区', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1267, '常熟市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1268, '张家港市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1269, '昆山市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1270, '吴江市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1271, '太仓市', '0', 204, 0, '', 1, 0, '', NULL, 0),
(1272, '崇川区', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1273, '港闸区', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1274, '海安县', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1275, '如东县', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1276, '启东市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1277, '如皋市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1278, '通州市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1279, '海门市', '0', 205, 0, '', 1, 0, '', NULL, 0),
(1280, '连云区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1281, '新浦区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1282, '海州区', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1283, '赣榆县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1284, '东海县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1285, '灌云县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1286, '灌南县', '0', 206, 0, '', 1, 0, '', NULL, 0),
(1287, '清河区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1288, '楚州区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1289, '淮阴区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1290, '清浦区', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1291, '涟水县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1292, '洪泽县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1293, '盱眙县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1294, '金湖县', '0', 207, 0, '', 1, 0, '', NULL, 0),
(1295, '亭湖区', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1296, '盐都区', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1297, '响水县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1298, '滨海县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1299, '阜宁县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1300, '射阳县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1301, '建湖县', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1302, '东台市', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1303, '大丰市', '0', 208, 0, '', 1, 0, '', NULL, 0),
(1304, '广陵区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1305, '邗江区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1306, '维扬区', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1307, '宝应县', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1308, '仪征市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1309, '高邮市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1310, '江都市', '0', 209, 0, '', 1, 0, '', NULL, 0),
(1311, '京口区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1312, '润州区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1313, '丹徒区', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1314, '丹阳市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1315, '扬中市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1316, '句容市', '0', 210, 0, '', 1, 0, '', NULL, 0),
(1317, '海陵区', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1318, '高港区', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1319, '兴化市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1320, '靖江市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1321, '泰兴市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1322, '姜堰市', '0', 211, 0, '', 1, 0, '', NULL, 0),
(1323, '宿城区', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1324, '宿豫区', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1325, '沭阳县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1326, '泗阳县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1327, '泗洪县', '0', 212, 0, '', 1, 0, '', NULL, 0),
(1328, '上城区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1329, '下城区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1330, '江干区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1331, '拱墅区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1332, '西湖区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1333, '滨江区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1334, '萧山区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1335, '余杭区', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1336, '桐庐县', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1337, '淳安县', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1338, '建德市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1339, '富阳市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1340, '临安市', '0', 213, 0, '', 1, 0, '', NULL, 0),
(1341, '海曙区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1342, '江东区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1343, '江北区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1344, '北仑区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1345, '镇海区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1346, '鄞州区', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1347, '象山县', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1348, '宁海县', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1349, '余姚市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1350, '慈溪市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1351, '奉化市', '0', 214, 0, '', 1, 0, '', NULL, 0),
(1352, '鹿城区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1353, '龙湾区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1354, '瓯海区', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1355, '洞头县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1356, '永嘉县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1357, '平阳县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1358, '苍南县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1359, '文成县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1360, '泰顺县', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1361, '瑞安市', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1362, '乐清市', '0', 215, 0, '', 1, 0, '', NULL, 0),
(1363, '秀城区', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1364, '秀洲区', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1365, '嘉善县', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1366, '海盐县', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1367, '海宁市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1368, '平湖市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1369, '桐乡市', '0', 216, 0, '', 1, 0, '', NULL, 0),
(1370, '吴兴区', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1371, '南浔区', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1372, '德清县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1373, '长兴县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1374, '安吉县', '0', 217, 0, '', 1, 0, '', NULL, 0),
(1375, '越城区', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1376, '绍兴县', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1377, '新昌县', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1378, '诸暨市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1379, '上虞市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1380, '嵊州市', '0', 218, 0, '', 1, 0, '', NULL, 0),
(1381, '婺城区', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1382, '金东区', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1383, '武义县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1384, '浦江县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1385, '磐安县', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1386, '兰溪市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1387, '义乌市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1388, '东阳市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1389, '永康市', '0', 219, 0, '', 1, 0, '', NULL, 0),
(1390, '柯城区', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1391, '衢江区', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1392, '常山县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1393, '开化县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1394, '龙游县', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1395, '江山市', '0', 220, 0, '', 1, 0, '', NULL, 0),
(1396, '定海区', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1397, '普陀区', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1398, '岱山县', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1399, '嵊泗县', '0', 221, 0, '', 1, 0, '', NULL, 0),
(1400, '椒江区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1401, '黄岩区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1402, '路桥区', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1403, '玉环县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1404, '三门县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1405, '天台县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1406, '仙居县', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1407, '温岭市', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1408, '临海市', '0', 222, 0, '', 1, 0, '', NULL, 0),
(1409, '莲都区', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1410, '青田县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1411, '缙云县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1412, '遂昌县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1413, '松阳县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1414, '云和县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1415, '庆元县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1416, '景宁畲族自治县', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1417, '龙泉市', '0', 223, 0, '', 1, 0, '', NULL, 0),
(1418, '瑶海区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1419, '庐阳区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1420, '蜀山区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1421, '包河区', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1422, '长丰县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1423, '肥东县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1424, '肥西县', '0', 224, 0, '', 1, 0, '', NULL, 0),
(1425, '镜湖区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1426, '弋江区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1427, '鸠江区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1428, '三山区', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1429, '芜湖县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1430, '繁昌县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1431, '南陵县', '0', 225, 0, '', 1, 0, '', NULL, 0),
(1432, '龙子湖区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1433, '蚌山区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1434, '禹会区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1435, '淮上区', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1436, '怀远县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1437, '五河县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1438, '固镇县', '0', 226, 0, '', 1, 0, '', NULL, 0),
(1439, '大通区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1440, '田家庵区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1441, '谢家集区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1442, '八公山区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1443, '潘集区', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1444, '凤台县', '0', 227, 0, '', 1, 0, '', NULL, 0),
(1445, '金家庄区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1446, '花山区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1447, '雨山区', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1448, '当涂县', '0', 228, 0, '', 1, 0, '', NULL, 0),
(1449, '杜集区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1450, '相山区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1451, '烈山区', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1452, '濉溪县', '0', 229, 0, '', 1, 0, '', NULL, 0),
(1453, '铜官山区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1454, '狮子山区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1455, '郊区', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1456, '铜陵县', '0', 230, 0, '', 1, 0, '', NULL, 0),
(1457, '迎江区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1458, '大观区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1459, '宜秀区', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1460, '怀宁县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1461, '枞阳县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1462, '潜山县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1463, '太湖县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1464, '宿松县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1465, '望江县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1466, '岳西县', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1467, '桐城市', '0', 231, 0, '', 1, 0, '', NULL, 0),
(1468, '屯溪区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1469, '黄山区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1470, '徽州区', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1471, '歙县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1472, '休宁县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1473, '黟县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1474, '祁门县', '0', 232, 0, '', 1, 0, '', NULL, 0),
(1475, '琅琊区', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1476, '南谯区', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1477, '来安县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1478, '全椒县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1479, '定远县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1480, '凤阳县', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1481, '天长市', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1482, '明光市', '0', 233, 0, '', 1, 0, '', NULL, 0),
(1483, '颍州区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1484, '颍东区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1485, '颍泉区', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1486, '临泉县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1487, '太和县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1488, '阜南县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1489, '颍上县', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1490, '界首市', '0', 234, 0, '', 1, 0, '', NULL, 0),
(1491, '埇桥区', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1492, '砀山县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1493, '萧县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1494, '灵璧县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1495, '泗县', '0', 235, 0, '', 1, 0, '', NULL, 0),
(1496, '居巢区', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1497, '庐江县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1498, '无为县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1499, '含山县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1500, '和县', '0', 236, 0, '', 1, 0, '', NULL, 0),
(1501, '金安区', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1502, '裕安区', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1503, '寿县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1504, '霍邱县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1505, '舒城县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1506, '金寨县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1507, '霍山县', '0', 237, 0, '', 1, 0, '', NULL, 0),
(1508, '谯城区', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1509, '涡阳县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1510, '蒙城县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1511, '利辛县', '0', 238, 0, '', 1, 0, '', NULL, 0),
(1512, '贵池区', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1513, '东至县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1514, '石台县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1515, '青阳县', '0', 239, 0, '', 1, 0, '', NULL, 0),
(1516, '宣州区', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1517, '郎溪县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1518, '广德县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1519, '泾县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1520, '绩溪县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1521, '旌德县', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1522, '宁国市', '0', 240, 0, '', 1, 0, '', NULL, 0),
(1523, '鼓楼区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1524, '台江区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1525, '仓山区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1526, '马尾区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1527, '晋安区', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1528, '闽侯县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1529, '连江县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1530, '罗源县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1531, '闽清县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1532, '永泰县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1533, '平潭县', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1534, '福清市', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1535, '长乐市', '0', 241, 0, '', 1, 0, '', NULL, 0),
(1536, '思明区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1537, '海沧区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1538, '湖里区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1539, '集美区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1540, '同安区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1541, '翔安区', '0', 242, 0, '', 1, 0, '', NULL, 0),
(1542, '城厢区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1543, '涵江区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1544, '荔城区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1545, '秀屿区', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1546, '仙游县', '0', 243, 0, '', 1, 0, '', NULL, 0),
(1547, '梅列区', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1548, '三元区', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1549, '明溪县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1550, '清流县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1551, '宁化县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1552, '大田县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1553, '尤溪县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1554, '沙县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1555, '将乐县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1556, '泰宁县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1557, '建宁县', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1558, '永安市', '0', 244, 0, '', 1, 0, '', NULL, 0),
(1559, '鲤城区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1560, '丰泽区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1561, '洛江区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1562, '泉港区', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1563, '惠安县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1564, '安溪县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1565, '永春县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1566, '德化县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1567, '金门县', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1568, '石狮市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1569, '晋江市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1570, '南安市', '0', 245, 0, '', 1, 0, '', NULL, 0),
(1571, '芗城区', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1572, '龙文区', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1573, '云霄县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1574, '漳浦县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1575, '诏安县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1576, '长泰县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1577, '东山县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1578, '南靖县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1579, '平和县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1580, '华安县', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1581, '龙海市', '0', 246, 0, '', 1, 0, '', NULL, 0),
(1582, '延平区', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1583, '顺昌县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1584, '浦城县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1585, '光泽县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1586, '松溪县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1587, '政和县', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1588, '邵武市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1589, '武夷山市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1590, '建瓯市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1591, '建阳市', '0', 247, 0, '', 1, 0, '', NULL, 0),
(1592, '新罗区', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1593, '长汀县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1594, '永定县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1595, '上杭县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1596, '武平县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1597, '连城县', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1598, '漳平市', '0', 248, 0, '', 1, 0, '', NULL, 0),
(1599, '蕉城区', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1600, '霞浦县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1601, '古田县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1602, '屏南县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1603, '寿宁县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1604, '周宁县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1605, '柘荣县', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1606, '福安市', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1607, '福鼎市', '0', 249, 0, '', 1, 0, '', NULL, 0),
(1608, '东湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1609, '西湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1610, '青云谱区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1611, '湾里区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1612, '青山湖区', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1613, '南昌县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1614, '新建县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1615, '安义县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1616, '进贤县', '0', 250, 0, '', 1, 0, '', NULL, 0),
(1617, '昌江区', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1618, '珠山区', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1619, '浮梁县', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1620, '乐平市', '0', 251, 0, '', 1, 0, '', NULL, 0),
(1621, '安源区', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1622, '湘东区', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1623, '莲花县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1624, '上栗县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1625, '芦溪县', '0', 252, 0, '', 1, 0, '', NULL, 0),
(1626, '庐山区', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1627, '浔阳区', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1628, '九江县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1629, '武宁县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1630, '修水县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1631, '永修县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1632, '德安县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1633, '星子县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1634, '都昌县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1635, '湖口县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1636, '彭泽县', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1637, '瑞昌市', '0', 253, 0, '', 1, 0, '', NULL, 0),
(1638, '渝水区', '0', 254, 0, '', 1, 0, '', NULL, 0),
(1639, '分宜县', '0', 254, 0, '', 1, 0, '', NULL, 0),
(1640, '月湖区', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1641, '余江县', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1642, '贵溪市', '0', 255, 0, '', 1, 0, '', NULL, 0),
(1643, '章贡区', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1644, '赣县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1645, '信丰县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1646, '大余县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1647, '上犹县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1648, '崇义县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1649, '安远县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1650, '龙南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1651, '定南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1652, '全南县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1653, '宁都县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1654, '于都县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1655, '兴国县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1656, '会昌县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1657, '寻乌县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1658, '石城县', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1659, '瑞金市', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1660, '南康市', '0', 256, 0, '', 1, 0, '', NULL, 0),
(1661, '吉州区', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1662, '青原区', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1663, '吉安县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1664, '吉水县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1665, '峡江县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1666, '新干县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1667, '永丰县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1668, '泰和县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1669, '遂川县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1670, '万安县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1671, '安福县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1672, '永新县', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1673, '井冈山市', '0', 257, 0, '', 1, 0, '', NULL, 0),
(1674, '袁州区', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1675, '奉新县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1676, '万载县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1677, '上高县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1678, '宜丰县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1679, '靖安县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1680, '铜鼓县', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1681, '丰城市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1682, '樟树市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1683, '高安市', '0', 258, 0, '', 1, 0, '', NULL, 0),
(1684, '临川区', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1685, '南城县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1686, '黎川县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1687, '南丰县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1688, '崇仁县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1689, '乐安县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1690, '宜黄县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1691, '金溪县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1692, '资溪县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1693, '东乡县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1694, '广昌县', '0', 259, 0, '', 1, 0, '', NULL, 0),
(1695, '信州区', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1696, '上饶县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1697, '广丰县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1698, '玉山县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1699, '铅山县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1700, '横峰县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1701, '弋阳县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1702, '余干县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1703, '鄱阳县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1704, '万年县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1705, '婺源县', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1706, '德兴市', '0', 260, 0, '', 1, 0, '', NULL, 0),
(1707, '历下区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1708, '市中区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1709, '槐荫区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1710, '天桥区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1711, '历城区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1712, '长清区', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1713, '平阴县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1714, '济阳县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1715, '商河县', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1716, '章丘市', '0', 261, 0, '', 1, 0, '', NULL, 0),
(1717, '市南区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1718, '市北区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1719, '四方区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1720, '黄岛区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1721, '崂山区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1722, '李沧区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1723, '城阳区', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1724, '胶州市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1725, '即墨市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1726, '平度市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1727, '胶南市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1728, '莱西市', '0', 262, 0, '', 1, 0, '', NULL, 0),
(1729, '淄川区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1730, '张店区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1731, '博山区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1732, '临淄区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1733, '周村区', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1734, '桓台县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1735, '高青县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1736, '沂源县', '0', 263, 0, '', 1, 0, '', NULL, 0),
(1737, '市中区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1738, '薛城区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1739, '峄城区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1740, '台儿庄区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1741, '山亭区', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1742, '滕州市', '0', 264, 0, '', 1, 0, '', NULL, 0),
(1743, '东营区', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1744, '河口区', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1745, '垦利县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1746, '利津县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1747, '广饶县', '0', 265, 0, '', 1, 0, '', NULL, 0),
(1748, '芝罘区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1749, '福山区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1750, '牟平区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1751, '莱山区', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1752, '长岛县', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1753, '龙口市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1754, '莱阳市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1755, '莱州市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1756, '蓬莱市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1757, '招远市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1758, '栖霞市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1759, '海阳市', '0', 266, 0, '', 1, 0, '', NULL, 0),
(1760, '潍城区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1761, '寒亭区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1762, '坊子区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1763, '奎文区', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1764, '临朐县', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1765, '昌乐县', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1766, '青州市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1767, '诸城市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1768, '寿光市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1769, '安丘市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1770, '高密市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1771, '昌邑市', '0', 267, 0, '', 1, 0, '', NULL, 0),
(1772, '市中区', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1773, '任城区', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1774, '微山县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1775, '鱼台县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1776, '金乡县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1777, '嘉祥县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1778, '汶上县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1779, '泗水县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1780, '梁山县', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1781, '曲阜市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1782, '兖州市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1783, '邹城市', '0', 268, 0, '', 1, 0, '', NULL, 0),
(1784, '泰山区', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1785, '岱岳区', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1786, '宁阳县', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1787, '东平县', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1788, '新泰市', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1789, '肥城市', '0', 269, 0, '', 1, 0, '', NULL, 0),
(1790, '环翠区', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1791, '文登市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1792, '荣成市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1793, '乳山市', '0', 270, 0, '', 1, 0, '', NULL, 0),
(1794, '东港区', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1795, '岚山区', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1796, '五莲县', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1797, '莒县', '0', 271, 0, '', 1, 0, '', NULL, 0),
(1798, '莱城区', '0', 272, 0, '', 1, 0, '', NULL, 0),
(1799, '钢城区', '0', 272, 0, '', 1, 0, '', NULL, 0),
(1800, '兰山区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1801, '罗庄区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1802, '河东区', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1803, '沂南县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1804, '郯城县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1805, '沂水县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1806, '苍山县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1807, '费县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1808, '平邑县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1809, '莒南县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1810, '蒙阴县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1811, '临沭县', '0', 273, 0, '', 1, 0, '', NULL, 0),
(1812, '德城区', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1813, '陵县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1814, '宁津县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1815, '庆云县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1816, '临邑县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1817, '齐河县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1818, '平原县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1819, '夏津县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1820, '武城县', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1821, '乐陵市', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1822, '禹城市', '0', 274, 0, '', 1, 0, '', NULL, 0),
(1823, '东昌府区', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1824, '阳谷县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1825, '莘县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1826, '茌平县', '0', 275, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(1827, '东阿县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1828, '冠县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1829, '高唐县', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1830, '临清市', '0', 275, 0, '', 1, 0, '', NULL, 0),
(1831, '滨城区', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1832, '惠民县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1833, '阳信县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1834, '无棣县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1835, '沾化县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1836, '博兴县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1837, '邹平县', '0', 276, 0, '', 1, 0, '', NULL, 0),
(1838, '牡丹区', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1839, '曹县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1840, '单县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1841, '成武县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1842, '巨野县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1843, '郓城县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1844, '鄄城县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1845, '定陶县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1846, '东明县', '0', 277, 0, '', 1, 0, '', NULL, 0),
(1847, '中原区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1848, '二七区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1849, '管城回族区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1850, '金水区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1851, '上街区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1852, '惠济区', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1853, '中牟县', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1854, '巩义市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1855, '荥阳市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1856, '新密市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1857, '新郑市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1858, '登封市', '0', 278, 0, '', 1, 0, '', NULL, 0),
(1859, '龙亭区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1860, '顺河回族区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1861, '鼓楼区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1862, '禹王台区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1863, '金明区', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1864, '杞县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1865, '通许县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1866, '尉氏县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1867, '开封县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1868, '兰考县', '0', 279, 0, '', 1, 0, '', NULL, 0),
(1869, '老城区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1870, '西工区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1871, '廛河回族区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1872, '涧西区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1873, '吉利区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1874, '洛龙区', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1875, '孟津县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1876, '新安县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1877, '栾川县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1878, '嵩县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1879, '汝阳县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1880, '宜阳县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1881, '洛宁县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1882, '伊川县', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1883, '偃师市', '0', 280, 0, '', 1, 0, '', NULL, 0),
(1884, '新华区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1885, '卫东区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1886, '石龙区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1887, '湛河区', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1888, '宝丰县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1889, '叶县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1890, '鲁山县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1891, '郏县', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1892, '舞钢市', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1893, '汝州市', '0', 281, 0, '', 1, 0, '', NULL, 0),
(1894, '文峰区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1895, '北关区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1896, '殷都区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1897, '龙安区', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1898, '安阳县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1899, '汤阴县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1900, '滑县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1901, '内黄县', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1902, '林州市', '0', 282, 0, '', 1, 0, '', NULL, 0),
(1903, '鹤山区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1904, '山城区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1905, '淇滨区', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1906, '浚县', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1907, '淇县', '0', 283, 0, '', 1, 0, '', NULL, 0),
(1908, '红旗区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1909, '卫滨区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1910, '凤泉区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1911, '牧野区', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1912, '新乡县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1913, '获嘉县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1914, '原阳县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1915, '延津县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1916, '封丘县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1917, '长垣县', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1918, '卫辉市', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1919, '辉县市', '0', 284, 0, '', 1, 0, '', NULL, 0),
(1920, '解放区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1921, '中站区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1922, '马村区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1923, '山阳区', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1924, '修武县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1925, '博爱县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1926, '武陟县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1927, '温县', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1928, '济源市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1929, '沁阳市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1930, '孟州市', '0', 285, 0, '', 1, 0, '', NULL, 0),
(1931, '华龙区', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1932, '清丰县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1933, '南乐县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1934, '范县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1935, '台前县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1936, '濮阳县', '0', 286, 0, '', 1, 0, '', NULL, 0),
(1937, '魏都区', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1938, '许昌县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1939, '鄢陵县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1940, '襄城县', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1941, '禹州市', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1942, '长葛市', '0', 287, 0, '', 1, 0, '', NULL, 0),
(1943, '源汇区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1944, '郾城区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1945, '召陵区', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1946, '舞阳县', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1947, '临颍县', '0', 288, 0, '', 1, 0, '', NULL, 0),
(1948, '湖滨区', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1949, '渑池县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1950, '陕县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1951, '卢氏县', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1952, '义马市', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1953, '灵宝市', '0', 289, 0, '', 1, 0, '', NULL, 0),
(1954, '宛城区', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1955, '卧龙区', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1956, '南召县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1957, '方城县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1958, '西峡县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1959, '镇平县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1960, '内乡县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1961, '淅川县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1962, '社旗县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1963, '唐河县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1964, '新野县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1965, '桐柏县', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1966, '邓州市', '0', 290, 0, '', 1, 0, '', NULL, 0),
(1967, '梁园区', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1968, '睢阳区', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1969, '民权县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1970, '睢县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1971, '宁陵县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1972, '柘城县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1973, '虞城县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1974, '夏邑县', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1975, '永城市', '0', 291, 0, '', 1, 0, '', NULL, 0),
(1976, '浉河区', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1977, '平桥区', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1978, '罗山县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1979, '光山县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1980, '新县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1981, '商城县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1982, '固始县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1983, '潢川县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1984, '淮滨县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1985, '息县', '0', 292, 0, '', 1, 0, '', NULL, 0),
(1986, '川汇区', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1987, '扶沟县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1988, '西华县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1989, '商水县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1990, '沈丘县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1991, '郸城县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1992, '淮阳县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1993, '太康县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1994, '鹿邑县', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1995, '项城市', '0', 293, 0, '', 1, 0, '', NULL, 0),
(1996, '驿城区', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1997, '西平县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1998, '上蔡县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(1999, '平舆县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2000, '正阳县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2001, '确山县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2002, '泌阳县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2003, '汝南县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2004, '遂平县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2005, '新蔡县', '0', 294, 0, '', 1, 0, '', NULL, 0),
(2006, '江岸区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2007, '江汉区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2008, '硚口区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2009, '汉阳区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2010, '武昌区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2011, '青山区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2012, '洪山区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2013, '东西湖区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2014, '汉南区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2015, '蔡甸区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2016, '江夏区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2017, '黄陂区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2018, '新洲区', '0', 295, 0, '', 1, 0, '', NULL, 0),
(2019, '黄石港区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2020, '西塞山区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2021, '下陆区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2022, '铁山区', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2023, '阳新县', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2024, '大冶市', '0', 296, 0, '', 1, 0, '', NULL, 0),
(2025, '茅箭区', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2026, '张湾区', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2027, '郧县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2028, '郧西县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2029, '竹山县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2030, '竹溪县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2031, '房县', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2032, '丹江口市', '0', 297, 0, '', 1, 0, '', NULL, 0),
(2033, '西陵区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2034, '伍家岗区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2035, '点军区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2036, '猇亭区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2037, '夷陵区', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2038, '远安县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2039, '兴山县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2040, '秭归县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2041, '长阳土家族自治县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2042, '五峰土家族自治县', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2043, '宜都市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2044, '当阳市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2045, '枝江市', '0', 298, 0, '', 1, 0, '', NULL, 0),
(2046, '襄城区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2047, '樊城区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2048, '襄阳区', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2049, '南漳县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2050, '谷城县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2051, '保康县', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2052, '老河口市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2053, '枣阳市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2054, '宜城市', '0', 299, 0, '', 1, 0, '', NULL, 0),
(2055, '梁子湖区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2056, '华容区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2057, '鄂城区', '0', 300, 0, '', 1, 0, '', NULL, 0),
(2058, '东宝区', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2059, '掇刀区', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2060, '京山县', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2061, '沙洋县', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2062, '钟祥市', '0', 301, 0, '', 1, 0, '', NULL, 0),
(2063, '孝南区', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2064, '孝昌县', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2065, '大悟县', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2066, '云梦县', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2067, '应城市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2068, '安陆市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2069, '汉川市', '0', 302, 0, '', 1, 0, '', NULL, 0),
(2070, '沙市区', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2071, '荆州区', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2072, '公安县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2073, '监利县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2074, '江陵县', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2075, '石首市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2076, '洪湖市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2077, '松滋市', '0', 303, 0, '', 1, 0, '', NULL, 0),
(2078, '黄州区', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2079, '团风县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2080, '红安县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2081, '罗田县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2082, '英山县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2083, '浠水县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2084, '蕲春县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2085, '黄梅县', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2086, '麻城市', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2087, '武穴市', '0', 304, 0, '', 1, 0, '', NULL, 0),
(2088, '咸安区', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2089, '嘉鱼县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2090, '通城县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2091, '崇阳县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2092, '通山县', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2093, '赤壁市', '0', 305, 0, '', 1, 0, '', NULL, 0),
(2094, '曾都区', '0', 306, 0, '', 1, 0, '', NULL, 0),
(2095, '广水市', '0', 306, 0, '', 1, 0, '', NULL, 0),
(2096, '恩施市', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2097, '利川市', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2098, '建始县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2099, '巴东县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2100, '宣恩县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2101, '咸丰县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2102, '来凤县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2103, '鹤峰县', '0', 307, 0, '', 1, 0, '', NULL, 0),
(2104, '芙蓉区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2105, '天心区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2106, '岳麓区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2107, '开福区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2108, '雨花区', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2109, '长沙县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2110, '望城县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2111, '宁乡县', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2112, '浏阳市', '0', 312, 0, '', 1, 0, '', NULL, 0),
(2113, '荷塘区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2114, '芦淞区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2115, '石峰区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2116, '天元区', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2117, '株洲县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2118, '攸县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2119, '茶陵县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2120, '炎陵县', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2121, '醴陵市', '0', 313, 0, '', 1, 0, '', NULL, 0),
(2122, '雨湖区', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2123, '岳塘区', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2124, '湘潭县', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2125, '湘乡市', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2126, '韶山市', '0', 314, 0, '', 1, 0, '', NULL, 0),
(2127, '珠晖区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2128, '雁峰区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2129, '石鼓区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2130, '蒸湘区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2131, '南岳区', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2132, '衡阳县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2133, '衡南县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2134, '衡山县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2135, '衡东县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2136, '祁东县', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2137, '耒阳市', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2138, '常宁市', '0', 315, 0, '', 1, 0, '', NULL, 0),
(2139, '双清区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2140, '大祥区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2141, '北塔区', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2142, '邵东县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2143, '新邵县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2144, '邵阳县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2145, '隆回县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2146, '洞口县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2147, '绥宁县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2148, '新宁县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2149, '城步苗族自治县', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2150, '武冈市', '0', 316, 0, '', 1, 0, '', NULL, 0),
(2151, '岳阳楼区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2152, '云溪区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2153, '君山区', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2154, '岳阳县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2155, '华容县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2156, '湘阴县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2157, '平江县', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2158, '汨罗市', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2159, '临湘市', '0', 317, 0, '', 1, 0, '', NULL, 0),
(2160, '武陵区', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2161, '鼎城区', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2162, '安乡县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2163, '汉寿县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2164, '澧县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2165, '临澧县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2166, '桃源县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2167, '石门县', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2168, '津市市', '0', 318, 0, '', 1, 0, '', NULL, 0),
(2169, '永定区', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2170, '武陵源区', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2171, '慈利县', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2172, '桑植县', '0', 319, 0, '', 1, 0, '', NULL, 0),
(2173, '资阳区', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2174, '赫山区', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2175, '南县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2176, '桃江县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2177, '安化县', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2178, '沅江市', '0', 320, 0, '', 1, 0, '', NULL, 0),
(2179, '北湖区', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2180, '苏仙区', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2181, '桂阳县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2182, '宜章县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2183, '永兴县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2184, '嘉禾县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2185, '临武县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2186, '汝城县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2187, '桂东县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2188, '安仁县', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2189, '资兴市', '0', 321, 0, '', 1, 0, '', NULL, 0),
(2190, '零陵区', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2191, '冷水滩区', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2192, '祁阳县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2193, '东安县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2194, '双牌县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2195, '道县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2196, '江永县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2197, '宁远县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2198, '蓝山县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2199, '新田县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2200, '江华瑶族自治县', '0', 322, 0, '', 1, 0, '', NULL, 0),
(2201, '鹤城区', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2202, '中方县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2203, '沅陵县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2204, '辰溪县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2205, '溆浦县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2206, '会同县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2207, '麻阳苗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2208, '新晃侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2209, '芷江侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2210, '靖州苗族侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2211, '通道侗族自治县', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2212, '洪江市', '0', 323, 0, '', 1, 0, '', NULL, 0),
(2213, '娄星区', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2214, '双峰县', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2215, '新化县', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2216, '冷水江市', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2217, '涟源市', '0', 324, 0, '', 1, 0, '', NULL, 0),
(2218, '吉首市', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2219, '泸溪县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2220, '凤凰县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2221, '花垣县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2222, '保靖县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2223, '古丈县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2224, '永顺县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2225, '龙山县', '0', 325, 0, '', 1, 0, '', NULL, 0),
(2226, '荔湾区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2227, '越秀区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2228, '海珠区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2229, '天河区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2230, '白云区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2231, '黄埔区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2232, '番禺区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2233, '花都区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2234, '南沙区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2235, '萝岗区', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2236, '增城市', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2237, '从化市', '0', 326, 0, '', 1, 0, '', NULL, 0),
(2238, '武江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2239, '浈江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2240, '曲江区', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2241, '始兴县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2242, '仁化县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2243, '翁源县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2244, '乳源瑶族自治县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2245, '新丰县', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2246, '乐昌市', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2247, '南雄市', '0', 327, 0, '', 1, 0, '', NULL, 0),
(2248, '罗湖区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2249, '福田区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2250, '南山区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2251, '宝安区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2252, '龙岗区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2253, '盐田区', '0', 328, 0, '', 1, 0, '', NULL, 0),
(2254, '香洲区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2255, '斗门区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2256, '金湾区', '0', 329, 0, '', 1, 0, '', NULL, 0),
(2257, '龙湖区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2258, '金平区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2259, '濠江区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2260, '潮阳区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2261, '潮南区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2262, '澄海区', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2263, '南澳县', '0', 330, 0, '', 1, 0, '', NULL, 0),
(2264, '禅城区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2265, '南海区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2266, '顺德区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2267, '三水区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2268, '高明区', '0', 331, 0, '', 1, 0, '', NULL, 0),
(2269, '蓬江区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2270, '江海区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2271, '新会区', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2272, '台山市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2273, '开平市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2274, '鹤山市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2275, '恩平市', '0', 332, 0, '', 1, 0, '', NULL, 0),
(2276, '赤坎区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2277, '霞山区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2278, '坡头区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2279, '麻章区', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2280, '遂溪县', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2281, '徐闻县', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2282, '廉江市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2283, '雷州市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2284, '吴川市', '0', 333, 0, '', 1, 0, '', NULL, 0),
(2285, '茂南区', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2286, '茂港区', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2287, '电白县', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2288, '高州市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2289, '化州市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2290, '信宜市', '0', 334, 0, '', 1, 0, '', NULL, 0),
(2291, '端州区', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2292, '鼎湖区', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2293, '广宁县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2294, '怀集县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2295, '封开县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2296, '德庆县', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2297, '高要市', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2298, '四会市', '0', 335, 0, '', 1, 0, '', NULL, 0),
(2299, '惠城区', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2300, '惠阳区', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2301, '博罗县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2302, '惠东县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2303, '龙门县', '0', 336, 0, '', 1, 0, '', NULL, 0),
(2304, '梅江区', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2305, '梅县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2306, '大埔县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2307, '丰顺县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2308, '五华县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2309, '平远县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2310, '蕉岭县', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2311, '兴宁市', '0', 337, 0, '', 1, 0, '', NULL, 0),
(2312, '城区', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2313, '海丰县', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2314, '陆河县', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2315, '陆丰市', '0', 338, 0, '', 1, 0, '', NULL, 0),
(2316, '源城区', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2317, '紫金县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2318, '龙川县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2319, '连平县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2320, '和平县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2321, '东源县', '0', 339, 0, '', 1, 0, '', NULL, 0),
(2322, '江城区', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2323, '阳西县', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2324, '阳东县', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2325, '阳春市', '0', 340, 0, '', 1, 0, '', NULL, 0),
(2326, '清城区', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2327, '佛冈县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2328, '阳山县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2329, '连山壮族瑶族自治县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2330, '连南瑶族自治县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2331, '清新县', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2332, '英德市', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2333, '连州市', '0', 341, 0, '', 1, 0, '', NULL, 0),
(2334, '湘桥区', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2335, '潮安县', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2336, '饶平县', '0', 344, 0, '', 1, 0, '', NULL, 0),
(2337, '榕城区', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2338, '揭东县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2339, '揭西县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2340, '惠来县', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2341, '普宁市', '0', 345, 0, '', 1, 0, '', NULL, 0),
(2342, '云城区', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2343, '新兴县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2344, '郁南县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2345, '云安县', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2346, '罗定市', '0', 346, 0, '', 1, 0, '', NULL, 0),
(2347, '兴宁区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2348, '青秀区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2349, '江南区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2350, '西乡塘区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2351, '良庆区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2352, '邕宁区', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2353, '武鸣县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2354, '隆安县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2355, '马山县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2356, '上林县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2357, '宾阳县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2358, '横县', '0', 347, 0, '', 1, 0, '', NULL, 0),
(2359, '城中区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2360, '鱼峰区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2361, '柳南区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2362, '柳北区', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2363, '柳江县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2364, '柳城县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2365, '鹿寨县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2366, '融安县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2367, '融水苗族自治县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2368, '三江侗族自治县', '0', 348, 0, '', 1, 0, '', NULL, 0),
(2369, '秀峰区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2370, '叠彩区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2371, '象山区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2372, '七星区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2373, '雁山区', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2374, '阳朔县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2375, '临桂县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2376, '灵川县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2377, '全州县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2378, '兴安县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2379, '永福县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2380, '灌阳县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2381, '龙胜各族自治县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2382, '资源县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2383, '平乐县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2384, '荔蒲县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2385, '恭城瑶族自治县', '0', 349, 0, '', 1, 0, '', NULL, 0),
(2386, '万秀区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2387, '蝶山区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2388, '长洲区', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2389, '苍梧县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2390, '藤县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2391, '蒙山县', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2392, '岑溪市', '0', 350, 0, '', 1, 0, '', NULL, 0),
(2393, '海城区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2394, '银海区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2395, '铁山港区', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2396, '合浦县', '0', 351, 0, '', 1, 0, '', NULL, 0),
(2397, '港口区', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2398, '防城区', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2399, '上思县', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2400, '东兴市', '0', 352, 0, '', 1, 0, '', NULL, 0),
(2401, '钦南区', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2402, '钦北区', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2403, '灵山县', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2404, '浦北县', '0', 353, 0, '', 1, 0, '', NULL, 0),
(2405, '港北区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2406, '港南区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2407, '覃塘区', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2408, '平南县', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2409, '桂平市', '0', 354, 0, '', 1, 0, '', NULL, 0),
(2410, '玉州区', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2411, '容县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2412, '陆川县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2413, '博白县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2414, '兴业县', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2415, '北流市', '0', 355, 0, '', 1, 0, '', NULL, 0),
(2416, '右江区', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2417, '田阳县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2418, '田东县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2419, '平果县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2420, '德保县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2421, '靖西县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2422, '那坡县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2423, '凌云县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2424, '乐业县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2425, '田林县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2426, '西林县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2427, '隆林各族自治县', '0', 356, 0, '', 1, 0, '', NULL, 0),
(2428, '八步区', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2429, '昭平县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2430, '钟山县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2431, '富川瑶族自治县', '0', 357, 0, '', 1, 0, '', NULL, 0),
(2432, '金城江区', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2433, '南丹县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2434, '天峨县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2435, '凤山县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2436, '东兰县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2437, '罗城仫佬族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2438, '环江毛南族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2439, '巴马瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2440, '都安瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2441, '大化瑶族自治县', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2442, '宜州市', '0', 358, 0, '', 1, 0, '', NULL, 0),
(2443, '兴宾区', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2444, '忻城县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2445, '象州县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2446, '武宣县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2447, '金秀瑶族自治县', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2448, '合山市', '0', 359, 0, '', 1, 0, '', NULL, 0),
(2449, '江洲区', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2450, '扶绥县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2451, '宁明县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2452, '龙州县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2453, '大新县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2454, '天等县', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2455, '凭祥市', '0', 360, 0, '', 1, 0, '', NULL, 0),
(2456, '秀英区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2457, '龙华区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2458, '琼山区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2459, '美兰区', '0', 361, 0, '', 1, 0, '', NULL, 0),
(2460, '锦江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2461, '青羊区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2462, '金牛区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2463, '武侯区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2464, '成华区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2465, '龙泉驿区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2466, '青白江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2467, '新都区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2468, '温江区', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2469, '金堂县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2470, '双流县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2471, '郫县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2472, '大邑县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2473, '蒲江县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2474, '新津县', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2475, '都江堰市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2476, '彭州市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2477, '邛崃市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2478, '崇州市', '0', 382, 0, '', 1, 0, '', NULL, 0),
(2479, '自流井区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2480, '贡井区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2481, '大安区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2482, '沿滩区', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2483, '荣县', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2484, '富顺县', '0', 383, 0, '', 1, 0, '', NULL, 0),
(2485, '东区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2486, '西区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2487, '仁和区', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2488, '米易县', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2489, '盐边县', '0', 384, 0, '', 1, 0, '', NULL, 0),
(2490, '江阳区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2491, '纳溪区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2492, '龙马潭区', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2493, '泸县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2494, '合江县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2495, '叙永县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2496, '古蔺县', '0', 385, 0, '', 1, 0, '', NULL, 0),
(2497, '旌阳区', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2498, '中江县', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2499, '罗江县', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2500, '广汉市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2501, '什邡市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2502, '绵竹市', '0', 386, 0, '', 1, 0, '', NULL, 0),
(2503, '涪城区', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2504, '游仙区', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2505, '三台县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2506, '盐亭县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2507, '安县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2508, '梓潼县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2509, '北川羌族自治县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2510, '平武县', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2511, '江油市', '0', 387, 0, '', 1, 0, '', NULL, 0),
(2512, '市中区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2513, '元坝区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2514, '朝天区', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2515, '旺苍县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2516, '青川县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2517, '剑阁县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2518, '苍溪县', '0', 388, 0, '', 1, 0, '', NULL, 0),
(2519, '船山区', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2520, '安居区', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2521, '蓬溪县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2522, '射洪县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2523, '大英县', '0', 389, 0, '', 1, 0, '', NULL, 0),
(2524, '市中区', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2525, '东兴区', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2526, '威远县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2527, '资中县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2528, '隆昌县', '0', 390, 0, '', 1, 0, '', NULL, 0),
(2529, '市中区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2530, '沙湾区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2531, '五通桥区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2532, '金口河区', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2533, '犍为县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2534, '井研县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2535, '夹江县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2536, '沐川县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2537, '峨边彝族自治县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2538, '马边彝族自治县', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2539, '峨眉山市', '0', 391, 0, '', 1, 0, '', NULL, 0),
(2540, '顺庆区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2541, '高坪区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2542, '嘉陵区', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2543, '南部县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2544, '营山县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2545, '蓬安县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2546, '仪陇县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2547, '西充县', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2548, '阆中市', '0', 392, 0, '', 1, 0, '', NULL, 0),
(2549, '东坡区', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2550, '仁寿县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2551, '彭山县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2552, '洪雅县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2553, '丹棱县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2554, '青神县', '0', 393, 0, '', 1, 0, '', NULL, 0),
(2555, '翠屏区', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2556, '宜宾县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2557, '南溪县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2558, '江安县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2559, '长宁县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2560, '高县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2561, '珙县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2562, '筠连县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2563, '兴文县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2564, '屏山县', '0', 394, 0, '', 1, 0, '', NULL, 0),
(2565, '广安区', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2566, '岳池县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2567, '武胜县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2568, '邻水县', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2569, '华蓥市', '0', 395, 0, '', 1, 0, '', NULL, 0),
(2570, '通川区', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2571, '达县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2572, '宣汉县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2573, '开江县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2574, '大竹县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2575, '渠县', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2576, '万源市', '0', 396, 0, '', 1, 0, '', NULL, 0),
(2577, '雨城区', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2578, '名山县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2579, '荥经县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2580, '汉源县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2581, '石棉县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2582, '天全县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2583, '芦山县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2584, '宝兴县', '0', 397, 0, '', 1, 0, '', NULL, 0),
(2585, '巴州区', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2586, '通江县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2587, '南江县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2588, '平昌县', '0', 398, 0, '', 1, 0, '', NULL, 0),
(2589, '雁江区', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2590, '安岳县', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2591, '乐至县', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2592, '简阳市', '0', 399, 0, '', 1, 0, '', NULL, 0),
(2593, '汶川县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2594, '理县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2595, '茂县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2596, '松潘县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2597, '九寨沟县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2598, '金川县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2599, '小金县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2600, '黑水县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2601, '马尔康县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2602, '壤塘县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2603, '阿坝县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2604, '若尔盖县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2605, '红原县', '0', 400, 0, '', 1, 0, '', NULL, 0),
(2606, '康定县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2607, '泸定县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2608, '丹巴县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2609, '九龙县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2610, '雅江县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2611, '道孚县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2612, '炉霍县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2613, '甘孜县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2614, '新龙县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2615, '德格县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2616, '白玉县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2617, '石渠县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2618, '色达县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2619, '理塘县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2620, '巴塘县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2621, '乡城县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2622, '稻城县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2623, '得荣县', '0', 401, 0, '', 1, 0, '', NULL, 0),
(2624, '西昌市', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2625, '木里藏族自治县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2626, '盐源县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2627, '德昌县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2628, '会理县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2629, '会东县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2630, '宁南县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2631, '普格县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2632, '布拖县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2633, '金阳县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2634, '昭觉县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2635, '喜德县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2636, '冕宁县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2637, '越西县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2638, '甘洛县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2639, '美姑县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2640, '雷波县', '0', 402, 0, '', 1, 0, '', NULL, 0),
(2641, '南明区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2642, '云岩区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2643, '花溪区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2644, '乌当区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2645, '白云区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2646, '小河区', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2647, '开阳县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2648, '息烽县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2649, '修文县', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2650, '清镇市', '0', 403, 0, '', 1, 0, '', NULL, 0),
(2651, '钟山区', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2652, '六枝特区', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2653, '水城县', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2654, '盘县', '0', 404, 0, '', 1, 0, '', NULL, 0),
(2655, '红花岗区', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2656, '汇川区', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2657, '遵义县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2658, '桐梓县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2659, '绥阳县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2660, '正安县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2661, '道真仡佬族苗族自治县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2662, '务川仡佬族苗族自治县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2663, '凤冈县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2664, '湄潭县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2665, '余庆县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2666, '习水县', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2667, '赤水市', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2668, '仁怀市', '0', 405, 0, '', 1, 0, '', NULL, 0),
(2669, '西秀区', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2670, '平坝县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2671, '普定县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2672, '镇宁布依族苗族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2673, '关岭布依族苗族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2674, '紫云苗族布依族自治县', '0', 406, 0, '', 1, 0, '', NULL, 0),
(2675, '铜仁市', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2676, '江口县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2677, '玉屏侗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2678, '石阡县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2679, '思南县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2680, '印江土家族苗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2681, '德江县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2682, '沿河土家族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2683, '松桃苗族自治县', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2684, '万山特区', '0', 407, 0, '', 1, 0, '', NULL, 0),
(2685, '兴义市', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2686, '兴仁县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2687, '普安县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2688, '晴隆县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2689, '贞丰县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2690, '望谟县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2691, '册亨县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2692, '安龙县', '0', 408, 0, '', 1, 0, '', NULL, 0),
(2693, '毕节市', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2694, '大方县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2695, '黔西县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2696, '金沙县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2697, '织金县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2698, '纳雍县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2699, '威宁彝族回族苗族自治县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2700, '赫章县', '0', 409, 0, '', 1, 0, '', NULL, 0),
(2701, '凯里市', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2702, '黄平县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2703, '施秉县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2704, '三穗县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2705, '镇远县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2706, '岑巩县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2707, '天柱县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2708, '锦屏县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2709, '剑河县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2710, '台江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2711, '黎平县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2712, '榕江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2713, '从江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2714, '雷山县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2715, '麻江县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2716, '丹寨县', '0', 410, 0, '', 1, 0, '', NULL, 0),
(2717, '都匀市', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2718, '福泉市', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2719, '荔波县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2720, '贵定县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2721, '瓮安县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2722, '独山县', '0', 411, 0, '', 1, 0, '', NULL, 0);
INSERT INTO `v9_linkage` (`linkageid`, `name`, `style`, `parentid`, `child`, `arrchildid`, `keyid`, `listorder`, `description`, `setting`, `siteid`) VALUES
(2723, '平塘县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2724, '罗甸县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2725, '长顺县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2726, '龙里县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2727, '惠水县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2728, '三都水族自治县', '0', 411, 0, '', 1, 0, '', NULL, 0),
(2729, '五华区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2730, '盘龙区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2731, '官渡区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2732, '西山区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2733, '东川区', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2734, '呈贡县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2735, '晋宁县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2736, '富民县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2737, '宜良县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2738, '石林彝族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2739, '嵩明县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2740, '禄劝彝族苗族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2741, '寻甸回族彝族自治县', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2742, '安宁市', '0', 412, 0, '', 1, 0, '', NULL, 0),
(2743, '麒麟区', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2744, '马龙县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2745, '陆良县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2746, '师宗县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2747, '罗平县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2748, '富源县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2749, '会泽县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2750, '沾益县', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2751, '宣威市', '0', 413, 0, '', 1, 0, '', NULL, 0),
(2752, '红塔区', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2753, '江川县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2754, '澄江县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2755, '通海县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2756, '华宁县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2757, '易门县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2758, '峨山彝族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2759, '新平彝族傣族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2760, '元江哈尼族彝族傣族自治县', '0', 414, 0, '', 1, 0, '', NULL, 0),
(2761, '隆阳区', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2762, '施甸县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2763, '腾冲县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2764, '龙陵县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2765, '昌宁县', '0', 415, 0, '', 1, 0, '', NULL, 0),
(2766, '昭阳区', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2767, '鲁甸县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2768, '巧家县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2769, '盐津县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2770, '大关县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2771, '永善县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2772, '绥江县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2773, '镇雄县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2774, '彝良县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2775, '威信县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2776, '水富县', '0', 416, 0, '', 1, 0, '', NULL, 0),
(2777, '古城区', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2778, '玉龙纳西族自治县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2779, '永胜县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2780, '华坪县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2781, '宁蒗彝族自治县', '0', 417, 0, '', 1, 0, '', NULL, 0),
(2782, '翠云区', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2783, '普洱哈尼族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2784, '墨江哈尼族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2785, '景东彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2786, '景谷傣族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2787, '镇沅彝族哈尼族拉祜族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2788, '江城哈尼族彝族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2789, '孟连傣族拉祜族佤族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2790, '澜沧拉祜族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2791, '西盟佤族自治县', '0', 418, 0, '', 1, 0, '', NULL, 0),
(2792, '临翔区', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2793, '凤庆县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2794, '云县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2795, '永德县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2796, '镇康县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2797, '双江拉祜族佤族布朗族傣族自治县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2798, '耿马傣族佤族自治县', '0', 419, 0, '', 1, 0, '', NULL, 0),
(2799, '沧源佤族自治县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2800, '楚雄市', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2801, '双柏县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2802, '牟定县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2803, '南华县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2804, '姚安县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2805, '大姚县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2806, '永仁县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2807, '元谋县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2808, '武定县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2809, '禄丰县', '0', 420, 0, '', 1, 0, '', NULL, 0),
(2810, '个旧市', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2811, '开远市', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2812, '蒙自县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2813, '屏边苗族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2814, '建水县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2815, '石屏县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2816, '弥勒县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2817, '泸西县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2818, '元阳县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2819, '红河县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2820, '金平苗族瑶族傣族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2821, '绿春县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2822, '河口瑶族自治县', '0', 421, 0, '', 1, 0, '', NULL, 0),
(2823, '文山县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2824, '砚山县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2825, '西畴县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2826, '麻栗坡县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2827, '马关县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2828, '丘北县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2829, '广南县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2830, '富宁县', '0', 422, 0, '', 1, 0, '', NULL, 0),
(2831, '景洪市', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2832, '勐海县', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2833, '勐腊县', '0', 423, 0, '', 1, 0, '', NULL, 0),
(2834, '大理市', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2835, '漾濞彝族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2836, '祥云县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2837, '宾川县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2838, '弥渡县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2839, '南涧彝族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2840, '巍山彝族回族自治县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2841, '永平县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2842, '云龙县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2843, '洱源县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2844, '剑川县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2845, '鹤庆县', '0', 424, 0, '', 1, 0, '', NULL, 0),
(2846, '瑞丽市', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2847, '潞西市', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2848, '梁河县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2849, '盈江县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2850, '陇川县', '0', 425, 0, '', 1, 0, '', NULL, 0),
(2851, '泸水县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2852, '福贡县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2853, '贡山独龙族怒族自治县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2854, '兰坪白族普米族自治县', '0', 426, 0, '', 1, 0, '', NULL, 0),
(2855, '香格里拉县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2856, '德钦县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2857, '维西傈僳族自治县', '0', 427, 0, '', 1, 0, '', NULL, 0),
(2858, '城关区', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2859, '林周县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2860, '当雄县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2861, '尼木县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2862, '曲水县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2863, '堆龙德庆县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2864, '达孜县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2865, '墨竹工卡县', '0', 428, 0, '', 1, 0, '', NULL, 0),
(2866, '昌都县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2867, '江达县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2868, '贡觉县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2869, '类乌齐县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2870, '丁青县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2871, '察雅县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2872, '八宿县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2873, '左贡县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2874, '芒康县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2875, '洛隆县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2876, '边坝县', '0', 429, 0, '', 1, 0, '', NULL, 0),
(2877, '乃东县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2878, '扎囊县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2879, '贡嘎县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2880, '桑日县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2881, '琼结县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2882, '曲松县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2883, '措美县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2884, '洛扎县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2885, '加查县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2886, '隆子县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2887, '错那县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2888, '浪卡子县', '0', 430, 0, '', 1, 0, '', NULL, 0),
(2889, '日喀则市', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2890, '南木林县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2891, '江孜县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2892, '定日县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2893, '萨迦县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2894, '拉孜县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2895, '昂仁县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2896, '谢通门县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2897, '白朗县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2898, '仁布县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2899, '康马县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2900, '定结县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2901, '仲巴县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2902, '亚东县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2903, '吉隆县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2904, '聂拉木县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2905, '萨嘎县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2906, '岗巴县', '0', 431, 0, '', 1, 0, '', NULL, 0),
(2907, '那曲县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2908, '嘉黎县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2909, '比如县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2910, '聂荣县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2911, '安多县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2912, '申扎县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2913, '索县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2914, '班戈县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2915, '巴青县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2916, '尼玛县', '0', 432, 0, '', 1, 0, '', NULL, 0),
(2917, '普兰县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2918, '札达县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2919, '噶尔县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2920, '日土县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2921, '革吉县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2922, '改则县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2923, '措勤县', '0', 433, 0, '', 1, 0, '', NULL, 0),
(2924, '林芝县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2925, '工布江达县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2926, '米林县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2927, '墨脱县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2928, '波密县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2929, '察隅县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2930, '朗县', '0', 434, 0, '', 1, 0, '', NULL, 0),
(2931, '新城区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2932, '碑林区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2933, '莲湖区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2934, '灞桥区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2935, '未央区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2936, '雁塔区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2937, '阎良区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2938, '临潼区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2939, '长安区', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2940, '蓝田县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2941, '周至县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2942, '户县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2943, '高陵县', '0', 435, 0, '', 1, 0, '', NULL, 0),
(2944, '王益区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2945, '印台区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2946, '耀州区', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2947, '宜君县', '0', 436, 0, '', 1, 0, '', NULL, 0),
(2948, '渭滨区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2949, '金台区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2950, '陈仓区', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2951, '凤翔县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2952, '岐山县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2953, '扶风县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2954, '眉县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2955, '陇县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2956, '千阳县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2957, '麟游县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2958, '凤县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2959, '太白县', '0', 437, 0, '', 1, 0, '', NULL, 0),
(2960, '秦都区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2961, '杨凌区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2962, '渭城区', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2963, '三原县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2964, '泾阳县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2965, '乾县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2966, '礼泉县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2967, '永寿县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2968, '彬县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2969, '长武县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2970, '旬邑县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2971, '淳化县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2972, '武功县', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2973, '兴平市', '0', 438, 0, '', 1, 0, '', NULL, 0),
(2974, '临渭区', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2975, '华县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2976, '潼关县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2977, '大荔县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2978, '合阳县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2979, '澄城县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2980, '蒲城县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2981, '白水县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2982, '富平县', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2983, '韩城市', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2984, '华阴市', '0', 439, 0, '', 1, 0, '', NULL, 0),
(2985, '宝塔区', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2986, '延长县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2987, '延川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2988, '子长县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2989, '安塞县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2990, '志丹县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2991, '吴起县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2992, '甘泉县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2993, '富县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2994, '洛川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2995, '宜川县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2996, '黄龙县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2997, '黄陵县', '0', 440, 0, '', 1, 0, '', NULL, 0),
(2998, '汉台区', '0', 441, 0, '', 1, 0, '', NULL, 0),
(2999, '南郑县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3000, '城固县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3001, '洋县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3002, '西乡县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3003, '勉县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3004, '宁强县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3005, '略阳县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3006, '镇巴县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3007, '留坝县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3008, '佛坪县', '0', 441, 0, '', 1, 0, '', NULL, 0),
(3009, '榆阳区', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3010, '神木县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3011, '府谷县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3012, '横山县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3013, '靖边县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3014, '定边县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3015, '绥德县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3016, '米脂县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3017, '佳县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3018, '吴堡县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3019, '清涧县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3020, '子洲县', '0', 442, 0, '', 1, 0, '', NULL, 0),
(3021, '汉滨区', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3022, '汉阴县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3023, '石泉县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3024, '宁陕县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3025, '紫阳县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3026, '岚皋县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3027, '平利县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3028, '镇坪县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3029, '旬阳县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3030, '白河县', '0', 443, 0, '', 1, 0, '', NULL, 0),
(3031, '商州区', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3032, '洛南县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3033, '丹凤县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3034, '商南县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3035, '山阳县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3036, '镇安县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3037, '柞水县', '0', 444, 0, '', 1, 0, '', NULL, 0),
(3038, '城关区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3039, '七里河区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3040, '西固区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3041, '安宁区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3042, '红古区', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3043, '永登县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3044, '皋兰县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3045, '榆中县', '0', 445, 0, '', 1, 0, '', NULL, 0),
(3046, '金川区', '0', 447, 0, '', 1, 0, '', NULL, 0),
(3047, '永昌县', '0', 447, 0, '', 1, 0, '', NULL, 0),
(3048, '白银区', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3049, '平川区', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3050, '靖远县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3051, '会宁县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3052, '景泰县', '0', 448, 0, '', 1, 0, '', NULL, 0),
(3053, '秦城区', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3054, '北道区', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3055, '清水县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3056, '秦安县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3057, '甘谷县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3058, '武山县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3059, '张家川回族自治县', '0', 449, 0, '', 1, 0, '', NULL, 0),
(3060, '凉州区', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3061, '民勤县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3062, '古浪县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3063, '天祝藏族自治县', '0', 450, 0, '', 1, 0, '', NULL, 0),
(3064, '甘州区', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3065, '肃南裕固族自治县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3066, '民乐县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3067, '临泽县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3068, '高台县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3069, '山丹县', '0', 451, 0, '', 1, 0, '', NULL, 0),
(3070, '崆峒区', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3071, '泾川县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3072, '灵台县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3073, '崇信县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3074, '华亭县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3075, '庄浪县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3076, '静宁县', '0', 452, 0, '', 1, 0, '', NULL, 0),
(3077, '肃州区', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3078, '金塔县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3079, '瓜州县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3080, '肃北蒙古族自治县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3081, '阿克塞哈萨克族自治县', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3082, '玉门市', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3083, '敦煌市', '0', 453, 0, '', 1, 0, '', NULL, 0),
(3084, '西峰区', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3085, '庆城县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3086, '环县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3087, '华池县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3088, '合水县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3089, '正宁县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3090, '宁县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3091, '镇原县', '0', 454, 0, '', 1, 0, '', NULL, 0),
(3092, '安定区', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3093, '通渭县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3094, '陇西县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3095, '渭源县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3096, '临洮县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3097, '漳县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3098, '岷县', '0', 455, 0, '', 1, 0, '', NULL, 0),
(3099, '武都区', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3100, '成县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3101, '文县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3102, '宕昌县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3103, '康县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3104, '西和县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3105, '礼县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3106, '徽县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3107, '两当县', '0', 456, 0, '', 1, 0, '', NULL, 0),
(3108, '临夏市', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3109, '临夏县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3110, '康乐县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3111, '永靖县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3112, '广河县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3113, '和政县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3114, '东乡族自治县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3115, '积石山保安族东乡族撒拉族自治县', '0', 457, 0, '', 1, 0, '', NULL, 0),
(3116, '合作市', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3117, '临潭县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3118, '卓尼县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3119, '舟曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3120, '迭部县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3121, '玛曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3122, '碌曲县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3123, '夏河县', '0', 458, 0, '', 1, 0, '', NULL, 0),
(3124, '城东区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3125, '城中区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3126, '城西区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3127, '城北区', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3128, '大通回族土族自治县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3129, '湟中县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3130, '湟源县', '0', 459, 0, '', 1, 0, '', NULL, 0),
(3131, '平安县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3132, '民和回族土族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3133, '乐都县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3134, '互助土族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3135, '化隆回族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3136, '循化撒拉族自治县', '0', 460, 0, '', 1, 0, '', NULL, 0),
(3137, '门源回族自治县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3138, '祁连县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3139, '海晏县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3140, '刚察县', '0', 461, 0, '', 1, 0, '', NULL, 0),
(3141, '同仁县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3142, '尖扎县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3143, '泽库县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3144, '河南蒙古族自治县', '0', 462, 0, '', 1, 0, '', NULL, 0),
(3145, '共和县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3146, '同德县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3147, '贵德县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3148, '兴海县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3149, '贵南县', '0', 463, 0, '', 1, 0, '', NULL, 0),
(3150, '玛沁县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3151, '班玛县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3152, '甘德县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3153, '达日县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3154, '久治县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3155, '玛多县', '0', 464, 0, '', 1, 0, '', NULL, 0),
(3156, '玉树县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3157, '杂多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3158, '称多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3159, '治多县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3160, '囊谦县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3161, '曲麻莱县', '0', 465, 0, '', 1, 0, '', NULL, 0),
(3162, '格尔木市', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3163, '德令哈市', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3164, '乌兰县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3165, '都兰县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3166, '天峻县', '0', 466, 0, '', 1, 0, '', NULL, 0),
(3167, '兴庆区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3168, '西夏区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3169, '金凤区', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3170, '永宁县', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3171, '贺兰县', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3172, '灵武市', '0', 467, 0, '', 1, 0, '', NULL, 0),
(3173, '大武口区', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3174, '惠农区', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3175, '平罗县', '0', 468, 0, '', 1, 0, '', NULL, 0),
(3176, '利通区', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3177, '盐池县', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3178, '同心县', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3179, '青铜峡市', '0', 469, 0, '', 1, 0, '', NULL, 0),
(3180, '原州区', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3181, '西吉县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3182, '隆德县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3183, '泾源县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3184, '彭阳县', '0', 470, 0, '', 1, 0, '', NULL, 0),
(3185, '沙坡头区', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3186, '中宁县', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3187, '海原县', '0', 471, 0, '', 1, 0, '', NULL, 0),
(3188, '天山区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3189, '沙依巴克区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3190, '新市区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3191, '水磨沟区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3192, '头屯河区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3193, '达坂城区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3194, '东山区', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3195, '乌鲁木齐县', '0', 472, 0, '', 1, 0, '', NULL, 0),
(3196, '独山子区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3197, '克拉玛依区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3198, '白碱滩区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3199, '乌尔禾区', '0', 473, 0, '', 1, 0, '', NULL, 0),
(3200, '吐鲁番市', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3201, '鄯善县', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3202, '托克逊县', '0', 474, 0, '', 1, 0, '', NULL, 0),
(3203, '哈密市', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3204, '巴里坤哈萨克自治县', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3205, '伊吾县', '0', 475, 0, '', 1, 0, '', NULL, 0),
(3206, '昌吉市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3207, '阜康市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3208, '米泉市', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3209, '呼图壁县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3210, '玛纳斯县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3211, '奇台县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3212, '吉木萨尔县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3213, '木垒哈萨克自治县', '0', 476, 0, '', 1, 0, '', NULL, 0),
(3214, '博乐市', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3215, '精河县', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3216, '温泉县', '0', 477, 0, '', 1, 0, '', NULL, 0),
(3217, '库尔勒市', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3218, '轮台县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3219, '尉犁县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3220, '若羌县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3221, '且末县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3222, '焉耆回族自治县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3223, '和静县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3224, '和硕县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3225, '博湖县', '0', 478, 0, '', 1, 0, '', NULL, 0),
(3226, '阿克苏市', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3227, '温宿县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3228, '库车县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3229, '沙雅县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3230, '新和县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3231, '拜城县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3232, '乌什县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3233, '阿瓦提县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3234, '柯坪县', '0', 479, 0, '', 1, 0, '', NULL, 0),
(3235, '阿图什市', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3236, '阿克陶县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3237, '阿合奇县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3238, '乌恰县', '0', 480, 0, '', 1, 0, '', NULL, 0),
(3239, '喀什市', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3240, '疏附县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3241, '疏勒县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3242, '英吉沙县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3243, '泽普县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3244, '莎车县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3245, '叶城县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3246, '麦盖提县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3247, '岳普湖县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3248, '伽师县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3249, '巴楚县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3250, '塔什库尔干塔吉克自治县', '0', 481, 0, '', 1, 0, '', NULL, 0),
(3251, '和田市', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3252, '和田县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3253, '墨玉县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3254, '皮山县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3255, '洛浦县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3256, '策勒县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3257, '于田县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3258, '民丰县', '0', 482, 0, '', 1, 0, '', NULL, 0),
(3259, '伊宁市', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3260, '奎屯市', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3261, '伊宁县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3262, '察布查尔锡伯自治县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3263, '霍城县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3264, '巩留县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3265, '新源县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3266, '昭苏县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3267, '特克斯县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3268, '尼勒克县', '0', 483, 0, '', 1, 0, '', NULL, 0),
(3269, '塔城市', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3270, '乌苏市', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3271, '额敏县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3272, '沙湾县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3273, '托里县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3274, '裕民县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3275, '和布克赛尔蒙古自治县', '0', 484, 0, '', 1, 0, '', NULL, 0),
(3276, '阿勒泰市', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3277, '布尔津县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3278, '富蕴县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3279, '福海县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3280, '哈巴河县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3281, '青河县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3282, '吉木乃县', '0', 485, 0, '', 1, 0, '', NULL, 0),
(3358, '钓鱼岛', '', 0, 0, '', 1, 0, '', NULL, 0),
(3359, '钓鱼岛', '', 3358, 0, '', 1, 0, '', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_log`
--

CREATE TABLE IF NOT EXISTS `v9_log` (
`logid` int(10) unsigned NOT NULL,
  `field` varchar(15) NOT NULL,
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `querystring` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=767 ;

--
-- 转存表中的数据 `v9_log`
--

INSERT INTO `v9_log` (`logid`, `field`, `value`, `module`, `file`, `action`, `querystring`, `data`, `userid`, `username`, `ip`, `time`) VALUES
(1, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-11-05 09:59:55'),
(2, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, '', '127.0.0.1', '2017-11-05 10:00:03'),
(3, '', 0, 'video', '', 'video', '?m=video&c=video&a=subscribe_list', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:03:47'),
(4, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:03:47'),
(5, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:03:49'),
(6, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:04:25'),
(7, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:04:33'),
(8, '', 0, 'video', '', 'video', '?m=video&c=video&a=complete_info', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:04:41'),
(9, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:04:44'),
(10, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=import', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:05:01'),
(11, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 10:05:13'),
(12, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:34:29'),
(13, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:35:25'),
(14, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:35:54'),
(15, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:36:23'),
(16, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:37:59'),
(17, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:38:16'),
(18, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:38:33'),
(19, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:39:08'),
(20, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:42:29'),
(21, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:43:56'),
(22, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:44:08'),
(23, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:44:17'),
(24, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:44:26'),
(25, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:44:36'),
(26, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:45:05'),
(27, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:45:25'),
(28, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:46:07'),
(29, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:46:33'),
(30, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:47:28'),
(31, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:47:45'),
(32, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:48:19'),
(33, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:48:27'),
(34, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:51:54'),
(35, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:52:33'),
(36, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:52:36'),
(37, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:53:05'),
(38, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:53:35'),
(39, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:54:17'),
(40, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:54:47'),
(41, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:54:53'),
(42, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:55:32'),
(43, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 15:56:28'),
(44, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:05:33'),
(45, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:06:26'),
(46, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:06:41'),
(47, '', 0, 'content', '', 'type_manage', '?m=content&c=type_manage&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:11:27'),
(48, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:13:26'),
(49, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:14:19'),
(50, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:15:59'),
(51, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:16:17'),
(52, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:16:34'),
(53, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:16:37'),
(54, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:16:49'),
(55, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:16:59'),
(56, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:17:07'),
(57, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:19:21'),
(58, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:21:19'),
(59, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:21:28'),
(60, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:21:56'),
(61, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:22:13'),
(62, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:22:37'),
(63, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:22:48'),
(64, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:23:20'),
(65, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:23:31'),
(66, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:23:37'),
(67, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=remove', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:23:43'),
(68, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:49:07'),
(69, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:49:23'),
(70, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:49:33'),
(71, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:49:39'),
(72, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:49:51'),
(73, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:49:56'),
(74, '', 0, 'content', '', 'type_manage', '?m=content&c=type_manage&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:50:07'),
(75, '', 0, 'content', '', 'type_manage', '?m=content&c=type_manage&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:51:45'),
(76, '', 0, 'content', '', 'type_manage', '?m=content&c=type_manage&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:51:48'),
(77, '', 0, 'content', '', 'type_manage', '?m=content&c=type_manage&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:52:36'),
(78, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:52:45'),
(79, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=stat', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:54:43'),
(80, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:54:51'),
(81, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:55:08'),
(82, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:55:32'),
(83, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 16:55:39'),
(84, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:30:28'),
(85, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:42'),
(86, '', 0, 'video', '', 'video', '?m=video&c=video&a=import_ku6video', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:43'),
(87, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:44'),
(88, '', 0, 'video', '', 'video', '?m=video&c=video&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:45'),
(89, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:45'),
(90, '', 0, 'video', '', 'video', '?m=video&c=video&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:52'),
(91, '', 0, 'video', '', 'video', '?m=video&c=video&a=open', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:53'),
(92, '', 0, 'video', '', 'video', '?m=video&c=video&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 17:31:53'),
(93, '', 0, 'admin', '', 'menu', '?m=admin&c=menu&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 22:56:32'),
(94, '', 0, 'admin', '', 'menu', '?m=admin&c=menu&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 22:56:39'),
(95, '', 0, 'admin', '', 'keylink', '?m=admin&c=keylink&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-05 23:08:18'),
(96, '', 0, 'admin', '', 'log', '?m=admin&c=log&a=search_log', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:34:30'),
(97, '', 0, 'pay', '', 'payment', '?m=pay&c=payment&a=pay_list', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:34:37'),
(98, '', 0, 'dbsource', '', 'data', '?m=dbsource&c=data&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:34:50'),
(99, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:35:36'),
(100, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:37:04'),
(101, '', 0, 'content', '', 'content', '?m=content&c=content&a=add_othors', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:37:15'),
(102, '', 0, 'content', '', 'content', '?m=content&c=content&a=add_othors', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:37:25'),
(103, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:45:46'),
(104, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:45:50'),
(105, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:47:12'),
(106, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:47:13'),
(107, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:47:14'),
(108, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:47:15'),
(109, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:47:16'),
(110, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 11:48:40'),
(111, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:01:26'),
(112, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:01:35'),
(113, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:01:41'),
(114, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:01:44'),
(115, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:02:18'),
(116, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:05:39'),
(117, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:05:57'),
(118, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:06:34'),
(119, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:11:59'),
(120, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-06 12:16:24'),
(121, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 19:44:29'),
(122, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 19:47:17'),
(123, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 19:49:47'),
(124, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 19:50:15'),
(125, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:00:56'),
(126, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:01:04'),
(127, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:01:33'),
(128, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:01:50'),
(129, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:01:56'),
(130, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:02:28'),
(131, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:04:06'),
(132, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:05:11'),
(133, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:05:50'),
(134, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:05:55'),
(135, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:08:19'),
(136, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:08:25'),
(137, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:10:08'),
(138, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:10:16'),
(139, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:11:00'),
(140, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:11:40'),
(141, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:12:49'),
(142, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:12:55'),
(143, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:13:00'),
(144, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:14:06'),
(145, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:14:34'),
(146, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:15:49'),
(147, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-07 20:16:57'),
(148, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 08:41:06'),
(149, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-08 17:32:22'),
(150, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-08 18:02:10'),
(151, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:41:40'),
(152, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:43:20'),
(153, '', 0, 'admin', '', 'module', '?m=admin&c=module&a=uninstall', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:52:03'),
(154, '', 0, 'admin', '', 'module', '?m=admin&c=module&a=cache', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:52:04'),
(155, '', 0, 'admin', '', 'module', '?m=admin&c=module&a=install', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:52:15'),
(156, '', 0, 'admin', '', 'module', '?m=admin&c=module&a=install', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:52:31'),
(157, '', 0, 'admin', '', 'module', '?m=admin&c=module&a=install', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:52:33'),
(158, '', 0, 'admin', '', 'module', '?m=admin&c=module&a=cache', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:52:36'),
(159, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:54:34'),
(160, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:54:47'),
(161, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:55:07'),
(162, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:55:58'),
(163, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:56:05'),
(164, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:56:24'),
(165, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:57:03'),
(166, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:57:54'),
(167, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:58:14'),
(168, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:59:06'),
(169, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 20:59:10'),
(170, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:00:44'),
(171, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:00:56'),
(172, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:01:14'),
(173, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:01:39'),
(174, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:02:34'),
(175, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:02:45'),
(176, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:03:22'),
(177, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:04:12'),
(178, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:05:28'),
(179, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:05:43'),
(180, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:05:54'),
(181, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:05:58'),
(182, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:06:38'),
(183, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:06:43'),
(184, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:08:55'),
(185, '', 0, 'formguide', '', 'formguide_field', '?m=formguide&c=formguide_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:10:51'),
(186, '', 0, 'formguide', '', 'formguide', '?m=formguide&c=formguide&a=stat', '', 1, 'phpcms', '127.0.0.1', '2017-11-08 21:11:06'),
(187, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-09 13:31:25'),
(188, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-09 13:31:51'),
(189, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 13:34:39'),
(190, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 13:35:09'),
(191, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 13:37:02'),
(192, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 14:15:38'),
(193, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:50:48'),
(194, '', 0, 'attachment', '', 'manage', '?m=attachment&c=manage&a=dir', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:52:41'),
(195, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:53:11'),
(196, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:54:31'),
(197, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:54:57'),
(198, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:55:06'),
(199, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:56:41'),
(200, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:56:56'),
(201, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:57:00'),
(202, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:57:23'),
(203, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:57:39'),
(204, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 16:57:46'),
(205, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:25:58'),
(206, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:26:41'),
(207, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:26:42'),
(208, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:26:43'),
(209, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:26:43'),
(210, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:26:49'),
(211, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:27:40'),
(212, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:27:42'),
(213, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:27:53'),
(214, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:29:26'),
(215, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:31:17'),
(216, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:33:03'),
(217, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:33:58'),
(218, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:35:33'),
(219, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:36:33'),
(220, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:38:11'),
(221, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:43:25'),
(222, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:50:51'),
(223, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:50:59'),
(224, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:51:40'),
(225, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:51:55'),
(226, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:52:06'),
(227, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:52:33'),
(228, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:54:35'),
(229, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:55:17'),
(230, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:55:24'),
(231, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 17:58:48'),
(232, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:00:33'),
(233, '', 0, 'attachment', '', 'manage', '?m=attachment&c=manage&a=dir', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:04:08'),
(234, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:09:08'),
(235, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:09:13'),
(236, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:10:00'),
(237, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:10:05'),
(238, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:11:33'),
(239, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:11:42'),
(240, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:11:46'),
(241, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:13:20'),
(242, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:13:27'),
(243, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:14:23'),
(244, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:15:03'),
(245, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:15:11'),
(246, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:16:38'),
(247, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:17:46'),
(248, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:17:53'),
(249, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 18:18:38'),
(250, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:15:15'),
(251, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:15:37'),
(252, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:16:24'),
(253, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:17:49'),
(254, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:21:18'),
(255, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:21:47'),
(256, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:21:54'),
(257, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:23:10'),
(258, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:24:26'),
(259, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:24:54'),
(260, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:25:18'),
(261, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:25:28'),
(262, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:25:31'),
(263, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:25:33'),
(264, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:25:43'),
(265, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:27:07'),
(266, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:27:19'),
(267, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:27:21'),
(268, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:27:29'),
(269, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:28:19'),
(270, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:28:21'),
(271, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:28:26'),
(272, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-09 20:30:01'),
(273, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 08:01:18'),
(274, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 08:01:28'),
(275, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 08:01:56'),
(276, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 08:02:01'),
(277, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 08:02:21'),
(278, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 08:02:28'),
(279, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 08:03:11'),
(280, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:08:44'),
(281, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:10:49'),
(282, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:11:42'),
(283, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:12:10'),
(284, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:14:31'),
(285, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:15:04'),
(286, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:15:11'),
(287, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:19:48'),
(288, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:19:55'),
(289, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:20:32'),
(290, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 12:20:37'),
(291, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 17:50:43'),
(292, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 17:52:16'),
(293, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 17:54:05'),
(294, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=import', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 17:54:42'),
(295, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=export', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 17:55:04'),
(296, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=import', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 17:55:36'),
(297, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 18:13:18'),
(298, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=import', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:21:01'),
(299, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=import', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:21:35'),
(300, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:26:35'),
(301, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:27:04'),
(302, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:27:57'),
(303, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:28:22'),
(304, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:33:26'),
(305, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:36:09'),
(306, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-10 20:47:52'),
(307, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-11 13:50:09'),
(308, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-11 15:44:48'),
(309, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-12 10:31:23'),
(310, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 10:53:20'),
(311, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 16:27:00'),
(312, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 16:27:13'),
(313, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 16:29:18'),
(314, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 17:41:50'),
(315, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 17:42:24'),
(316, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 17:43:17'),
(317, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:04:27'),
(318, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:04:43'),
(319, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:04:44'),
(320, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:04:50'),
(321, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:04:51'),
(322, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:04:58'),
(323, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:05:07'),
(324, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:05:08'),
(325, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:05:28'),
(326, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-12 19:05:30'),
(327, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-14 15:54:45'),
(328, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-15 18:07:01'),
(329, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-16 10:00:00'),
(330, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-16 10:00:05'),
(331, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 12:29:25'),
(332, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 12:29:46'),
(333, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 14:41:34'),
(334, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 14:41:42'),
(335, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 14:53:47'),
(336, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 14:56:21'),
(337, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 14:56:26'),
(338, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:03:12'),
(339, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:03:15'),
(340, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:03:30'),
(341, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:03:32'),
(342, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:03:43'),
(343, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:03:46'),
(344, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:04:29'),
(345, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:04:32'),
(346, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:04:39'),
(347, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:04:42'),
(348, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:04:49'),
(349, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:04:53'),
(350, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:32:28'),
(351, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:32:48'),
(352, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:32:50'),
(353, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:33:33'),
(354, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:33:54'),
(355, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:35:28'),
(356, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=poster_template', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:35:39'),
(357, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:52:02'),
(358, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:52:07'),
(359, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:52:56'),
(360, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 15:59:49'),
(361, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:00:21'),
(362, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:00:22'),
(363, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:02:29'),
(364, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:02:43'),
(365, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:03:09'),
(366, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=poster_template', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:05:16'),
(367, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=setting', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:05:17'),
(368, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:05:57'),
(369, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:24:56'),
(370, '', 0, 'special', '', 'special', '?m=special&c=special&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:31:48'),
(371, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:32:26'),
(372, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:39:42'),
(373, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:40:06'),
(374, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:40:08'),
(375, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:40:25'),
(376, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:40:30'),
(377, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:40:53'),
(378, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:40:55'),
(379, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 16:41:11'),
(380, '', 0, 'template', '', 'file', '?m=template&c=file&a=edit_pc_tag', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:08:07'),
(381, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:08:24'),
(382, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:08:44'),
(383, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:08:45'),
(384, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:09:32'),
(385, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:10:01'),
(386, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:10:06'),
(387, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:10:59'),
(388, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:11:05'),
(389, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-16 19:15:19'),
(390, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-16 19:21:56'),
(391, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-16 19:21:57'),
(392, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-16 19:22:02'),
(393, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:22:13'),
(394, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:22:36'),
(395, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:23:52'),
(396, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:25:34'),
(397, '', 0, 'block', '', 'block_admin', '?m=block&c=block_admin&a=block_update', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 19:54:35'),
(398, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 20:46:01'),
(399, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 20:47:03');
INSERT INTO `v9_log` (`logid`, `field`, `value`, `module`, `file`, `action`, `querystring`, `data`, `userid`, `username`, `ip`, `time`) VALUES
(400, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 20:47:07'),
(401, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 20:51:08'),
(402, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 20:51:40'),
(403, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 20:51:46'),
(404, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:14:21'),
(405, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:14:38'),
(406, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:14:55'),
(407, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=type_manage', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:14:56'),
(408, '', 0, 'wap', '', 'wap_admin', '?m=wap&c=wap_admin&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:15:09'),
(409, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:15:46'),
(410, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:17:50'),
(411, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:17:54'),
(412, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:18:26'),
(413, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:18:38'),
(414, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:19:18'),
(415, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:19:29'),
(416, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:19:50'),
(417, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:19:53'),
(418, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:20:48'),
(419, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:21:06'),
(420, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:21:26'),
(421, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:21:32'),
(422, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:21:57'),
(423, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:22:08'),
(424, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:22:25'),
(425, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:22:34'),
(426, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-16 21:22:48'),
(427, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:30:29'),
(428, '', 0, 'poster', '', 'space', '?m=poster&c=space&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:32:28'),
(429, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:32:32'),
(430, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:33:43'),
(431, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:42:21'),
(432, '', 0, 'admin', '', 'site', '?m=admin&c=site&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:42:57'),
(433, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:43:12'),
(434, '', 0, 'poster', '', 'poster', '?m=poster&c=poster&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 11:43:56'),
(435, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 12:12:30'),
(436, '', 0, 'content', '', 'content', '?m=content&c=content&a=clear_data', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 13:03:07'),
(437, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=update_urls', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 13:03:12'),
(438, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=show', '', 1, 'phpcms', '127.0.0.1', '2017-11-17 13:03:17'),
(439, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-18 20:58:57'),
(440, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-20 20:21:39'),
(441, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-20 20:53:40'),
(442, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:01:50'),
(443, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:01:59'),
(444, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:10:06'),
(445, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:10:27'),
(446, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:10:36'),
(447, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:11:24'),
(448, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=batch_edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:11:30'),
(449, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:11:37'),
(450, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:15:28'),
(451, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:22:05'),
(452, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:22:11'),
(453, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-20 21:23:29'),
(454, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-28 10:08:33'),
(455, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-28 10:10:23'),
(456, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-28 10:10:30'),
(457, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:02'),
(458, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:10'),
(459, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:15'),
(460, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:21'),
(461, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:35'),
(462, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:41'),
(463, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:45'),
(464, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:14:51'),
(465, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 10:15:19'),
(466, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 11:38:04'),
(467, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 11:38:05'),
(468, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 11:38:15'),
(469, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 11:38:16'),
(470, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 11:38:21'),
(471, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 13:42:30'),
(472, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 13:42:33'),
(473, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 13:42:35'),
(474, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 13:42:35'),
(475, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 13:42:35'),
(476, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 13:42:35'),
(477, '', 0, 'content', '', 'create_html', '?m=content&c=create_html&a=category', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 13:42:36'),
(478, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:28:30'),
(479, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:28:34'),
(480, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:30:02'),
(481, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:30:07'),
(482, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:30:16'),
(483, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:30:21'),
(484, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:31:08'),
(485, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:31:28'),
(486, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:33:39'),
(487, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:33:43'),
(488, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:33:44'),
(489, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:33:53'),
(490, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:34:23'),
(491, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:34:38'),
(492, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:34:53'),
(493, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:34:55'),
(494, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:34:56'),
(495, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:35:06'),
(496, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:35:07'),
(497, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:35:07'),
(498, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:35:18'),
(499, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 14:35:19'),
(500, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:39:37'),
(501, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:40:47'),
(502, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:48:02'),
(503, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:48:23'),
(504, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:48:28'),
(505, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:48:36'),
(506, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:49:01'),
(507, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:49:19'),
(508, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:49:21'),
(509, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:50:24'),
(510, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:50:46'),
(511, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:50:55'),
(512, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:51:10'),
(513, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:51:18'),
(514, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:51:31'),
(515, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:51:37'),
(516, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:51:46'),
(517, '', 0, 'content', '', 'sitemodel', '?m=content&c=sitemodel&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:15'),
(518, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:22'),
(519, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:29'),
(520, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:40'),
(521, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:46'),
(522, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:49'),
(523, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:52'),
(524, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:52:58'),
(525, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:53:04'),
(526, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:53:10'),
(527, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:53:14'),
(528, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:53:20'),
(529, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:53:31'),
(530, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:53:39'),
(531, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:54:11'),
(532, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:54:23'),
(533, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:54:35'),
(534, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:55:09'),
(535, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:55:23'),
(536, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:55:45'),
(537, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:56:21'),
(538, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:56:23'),
(539, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 16:56:32'),
(540, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:15:21'),
(541, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:15:29'),
(542, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:15:45'),
(543, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:16:06'),
(544, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:16:07'),
(545, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:16:20'),
(546, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:16:36'),
(547, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 20:16:48'),
(548, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 21:28:00'),
(549, '', 0, 'content', '', 'type_manage', '?m=content&c=type_manage&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 21:48:00'),
(550, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 21:48:28'),
(551, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 21:49:18'),
(552, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 21:49:47'),
(553, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-28 21:49:53'),
(554, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-29 12:06:57'),
(555, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-29 12:06:59'),
(556, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-29 17:15:05'),
(557, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-29 17:15:06'),
(558, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-29 17:15:13'),
(559, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-29 17:15:14'),
(560, '', 0, 'admin', '', 'index', '?m=admin&c=index&a=login', '', 0, 'phpcms', '127.0.0.1', '2017-11-29 17:15:19'),
(561, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-29 17:15:55'),
(562, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-29 17:16:32'),
(563, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-29 17:17:16'),
(564, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-29 17:17:23'),
(565, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-29 17:19:23'),
(566, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:32:28'),
(567, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:32:46'),
(568, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:49:14'),
(569, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:49:35'),
(570, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:49:46'),
(571, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:50:09'),
(572, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:51:14'),
(573, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:51:17'),
(574, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:51:50'),
(575, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 10:55:37'),
(576, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:41:29'),
(577, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:41:49'),
(578, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:42:23'),
(579, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:42:26'),
(580, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:42:28'),
(581, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:42:38'),
(582, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:44:28'),
(583, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 13:48:50'),
(584, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:08:20'),
(585, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:08:34'),
(586, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:08:45'),
(587, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:12:45'),
(588, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:13:18'),
(589, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:15:58'),
(590, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:16:55'),
(591, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:17:04'),
(592, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:17:35'),
(593, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:18:04'),
(594, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:18:14'),
(595, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:19:00'),
(596, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:20:41'),
(597, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:21:37'),
(598, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:22:27'),
(599, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:23:47'),
(600, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:23:55'),
(601, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:24:28'),
(602, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:24:51'),
(603, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:25:01'),
(604, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:25:34'),
(605, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:25:41'),
(606, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:26:09'),
(607, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:26:24'),
(608, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:05'),
(609, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:20'),
(610, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:36'),
(611, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:38'),
(612, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:42'),
(613, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:44'),
(614, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:46'),
(615, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:27:54'),
(616, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:31:44'),
(617, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:31:46'),
(618, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:31:53'),
(619, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:41:49'),
(620, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:41:53'),
(621, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:41:57'),
(622, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:43:12'),
(623, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:43:39'),
(624, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:43:44'),
(625, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:43:48'),
(626, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:44:10'),
(627, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:44:12'),
(628, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:44:16'),
(629, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:45:31'),
(630, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:45:47'),
(631, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:46:11'),
(632, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:46:43'),
(633, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:47:27'),
(634, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:47:49'),
(635, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:47:55'),
(636, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:48:31'),
(637, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:56:47'),
(638, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:56:52'),
(639, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:56:58'),
(640, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:57:16'),
(641, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:58:04'),
(642, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 14:59:55'),
(643, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:01:04'),
(644, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:01:27'),
(645, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:03:51'),
(646, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:04:32'),
(647, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:04:55'),
(648, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:05:09'),
(649, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:07:02'),
(650, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:07:40'),
(651, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:08:21'),
(652, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:18:51'),
(653, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:21:08'),
(654, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:23:18'),
(655, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:23:31'),
(656, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:23:52'),
(657, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:23:57'),
(658, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:24:36'),
(659, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:24:51'),
(660, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:24:56'),
(661, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:28:43'),
(662, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:28:58'),
(663, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:29:29'),
(664, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:30:09'),
(665, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:30:17'),
(666, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:30:41'),
(667, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:30:55'),
(668, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:30:59'),
(669, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:33:55'),
(670, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:34:19'),
(671, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:35:10'),
(672, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:35:46'),
(673, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:35:47'),
(674, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:35:47'),
(675, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:35:58'),
(676, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:38:32'),
(677, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:38:38'),
(678, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:40:37'),
(679, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:40:45'),
(680, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:40:49'),
(681, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:41:52'),
(682, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 15:43:11'),
(683, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 17:22:06'),
(684, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:28:40'),
(685, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:51:06'),
(686, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:51:13'),
(687, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:51:29'),
(688, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:51:33'),
(689, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:51:36'),
(690, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:52:47'),
(691, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:53:23'),
(692, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:53:31'),
(693, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:54:31'),
(694, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:55:13'),
(695, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:55:26'),
(696, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:55:38'),
(697, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:55:48'),
(698, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:56:13'),
(699, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:56:17'),
(700, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:56:28'),
(701, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:56:34'),
(702, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=listorder', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:58:07'),
(703, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:58:30'),
(704, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:58:35'),
(705, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:58:43'),
(706, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:59:12'),
(707, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:59:45'),
(708, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 19:59:49'),
(709, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:00:23'),
(710, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:00:31'),
(711, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:00:59'),
(712, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:01:06'),
(713, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:01:29'),
(714, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:01:35'),
(715, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:02'),
(716, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:08'),
(717, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:14'),
(718, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:28'),
(719, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:32'),
(720, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:36'),
(721, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:42'),
(722, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:47'),
(723, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:03:51'),
(724, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:04:12'),
(725, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:04:26'),
(726, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:04:29'),
(727, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:08:20'),
(728, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:08:25'),
(729, '', 0, 'content', '', 'content', '?m=content&c=content&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:11:28'),
(730, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:11:31'),
(731, '', 0, 'content', '', 'content', '?m=content&c=content&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:20:04'),
(732, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:20:08'),
(733, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:26:29'),
(734, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:26:46'),
(735, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:27:59'),
(736, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:28:40'),
(737, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:30:42'),
(738, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:32:19'),
(739, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:32:27'),
(740, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:34:29'),
(741, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=disabled', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:35:57'),
(742, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:35:59'),
(743, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=delete', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:36:06'),
(744, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:36:19'),
(745, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:36:36'),
(746, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:37:02'),
(747, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:37:09'),
(748, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:37:21'),
(749, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:40:31'),
(750, '', 0, 'admin', '', 'category', '?m=admin&c=category&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:40:37'),
(751, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 20:41:44'),
(752, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 21:50:50'),
(753, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-11-30 21:53:31'),
(754, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 13:18:54'),
(755, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 13:30:11'),
(756, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 13:30:21'),
(757, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 13:35:40'),
(758, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 17:56:45'),
(759, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:26:23'),
(760, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:26:36'),
(761, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:26:39'),
(762, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:26:51'),
(763, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:26:53'),
(764, '', 0, 'content', '', 'sitemodel_field', '?m=content&c=sitemodel_field&a=add', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:27:03'),
(765, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:27:20'),
(766, '', 0, 'content', '', 'content', '?m=content&c=content&a=edit', '', 1, 'phpcms', '127.0.0.1', '2017-12-01 21:28:21');

-- --------------------------------------------------------

--
-- 表的结构 `v9_member`
--

CREATE TABLE IF NOT EXISTS `v9_member` (
`userid` mediumint(8) unsigned NOT NULL,
  `phpssouid` mediumint(8) unsigned NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `email` char(32) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `areaid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overduedate` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `connectid` char(40) NOT NULL DEFAULT '',
  `from` char(10) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_detail`
--

CREATE TABLE IF NOT EXISTS `v9_member_detail` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_group`
--

CREATE TABLE IF NOT EXISTS `v9_member_group` (
`groupid` tinyint(3) unsigned NOT NULL,
  `name` char(15) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starnum` tinyint(2) unsigned NOT NULL,
  `point` smallint(6) unsigned NOT NULL,
  `allowmessage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowvisit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL,
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL,
  `allowpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) NOT NULL,
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `icon` char(30) NOT NULL,
  `usernamecolor` char(7) NOT NULL,
  `description` char(100) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `v9_member_group`
--

INSERT INTO `v9_member_group` (`groupid`, `name`, `issystem`, `starnum`, `point`, `allowmessage`, `allowvisit`, `allowpost`, `allowpostverify`, `allowsearch`, `allowupgrade`, `allowsendmessage`, `allowpostnum`, `allowattachment`, `price_y`, `price_m`, `price_d`, `icon`, `usernamecolor`, `description`, `sort`, `disabled`) VALUES
(8, '游客', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '', '', '', 0, 0),
(2, '新手上路', 1, 1, 50, 100, 1, 1, 0, 0, 0, 1, 0, 0, '50.00', '10.00', '1.00', '', '', '', 2, 0),
(6, '注册会员', 1, 2, 100, 150, 0, 1, 0, 0, 1, 1, 0, 0, '300.00', '30.00', '1.00', '', '', '', 6, 0),
(4, '中级会员', 1, 3, 150, 500, 1, 1, 0, 1, 1, 1, 0, 0, '500.00', '60.00', '1.00', '', '', '', 4, 0),
(5, '高级会员', 1, 5, 300, 999, 1, 1, 0, 1, 1, 1, 0, 0, '360.00', '90.00', '5.00', '', '', '', 5, 0),
(1, '禁止访问', 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, '0.00', '0.00', '0.00', '', '', '0', 0, 0),
(7, '邮件认证', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', 'images/group/vip.jpg', '#000000', '', 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_menu`
--

CREATE TABLE IF NOT EXISTS `v9_member_menu` (
`id` smallint(6) unsigned NOT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `isurl` enum('1','0') NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `v9_member_menu`
--

INSERT INTO `v9_member_menu` (`id`, `name`, `parentid`, `m`, `c`, `a`, `data`, `listorder`, `display`, `isurl`, `url`) VALUES
(1, 'member_init', 0, 'member', 'index', 'init', 't=0', 0, '1', '', ''),
(2, 'account_manage', 0, 'member', 'index', 'account_manage', 't=1', 0, '1', '', ''),
(3, 'favorite', 0, 'member', 'index', 'favorite', 't=2', 0, '1', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_verify`
--

CREATE TABLE IF NOT EXISTS `v9_member_verify` (
`userid` mediumint(8) unsigned NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) unsigned NOT NULL,
  `regip` char(15) NOT NULL,
  `email` char(32) NOT NULL,
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `modelinfo` char(255) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message` char(100) DEFAULT NULL,
  `mobile` char(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_member_vip`
--

CREATE TABLE IF NOT EXISTS `v9_member_vip` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_menu`
--

CREATE TABLE IF NOT EXISTS `v9_menu` (
`id` smallint(6) unsigned NOT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `project1` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project2` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project3` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project4` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project5` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1657 ;

--
-- 转存表中的数据 `v9_menu`
--

INSERT INTO `v9_menu` (`id`, `name`, `parentid`, `m`, `c`, `a`, `data`, `listorder`, `display`, `project1`, `project2`, `project3`, `project4`, `project5`) VALUES
(1, 'sys_setting', 0, 'admin', 'setting', 'init', '', 1, '1', 0, 1, 1, 1, 1),
(2, 'module', 0, 'admin', 'module', 'init', '', 2, '1', 1, 1, 1, 1, 1),
(872, 'sync_release_point', 873, 'release', 'index', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(4, 'content', 0, 'content', 'content', 'init', '', 4, '1', 1, 1, 1, 1, 1),
(5, 'members', 0, 'member', 'member', 'init', '', 5, '0', 1, 1, 1, 1, 1),
(6, 'userinterface', 0, 'template', 'style', 'init', '', 6, '1', 0, 1, 1, 1, 1),
(30, 'correlative_setting', 1, 'admin', 'admin', 'admin', '', 0, '1', 1, 1, 1, 1, 1),
(31, 'menu_manage', 977, 'admin', 'menu', 'init', '', 8, '1', 1, 1, 1, 1, 1),
(32, 'posid_manage', 975, 'admin', 'position', 'init', '', 7, '1', 1, 1, 1, 1, 1),
(29, 'module_list', 2, 'admin', 'module', '', '', 0, '1', 1, 1, 1, 1, 1),
(82, 'module_manage', 2, 'admin', 'module', '', '', 0, '1', 1, 1, 1, 1, 1),
(10, 'panel', 0, 'admin', 'index', 'public_main', '', 0, '1', 0, 1, 1, 1, 1),
(35, 'menu_add', 31, 'admin', 'menu', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(826, 'template_manager', 6, '', '', '', '', 0, '1', 1, 1, 1, 1, 1),
(54, 'admin_manage', 49, 'admin', 'admin_manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(43, 'category_manage', 975, 'admin', 'category', 'init', 'module=admin', 4, '1', 1, 1, 1, 1, 1),
(42, 'add_category', 43, 'admin', 'category', 'add', 's=0', 1, '1', 1, 1, 1, 1, 1),
(44, 'edit_category', 43, 'admin', 'category', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(45, 'badword_manage', 977, 'admin', 'badword', 'init', '', 10, '1', 1, 1, 1, 1, 1),
(46, 'posid_add', 32, 'admin', 'position', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(49, 'admin_setting', 1, 'admin', '', '', '', 0, '1', 1, 1, 1, 1, 1),
(50, 'role_manage', 49, 'admin', 'role', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(51, 'role_add', 50, 'admin', 'role', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(52, 'category_cache', 43, 'admin', 'category', 'public_cache', 'module=admin', 4, '1', 1, 1, 1, 1, 1),
(55, 'manage_member', 5, 'member', 'member', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(58, 'admin_add', 54, 'admin', 'admin_manage', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(59, 'model_manage', 975, 'content', 'sitemodel', 'init', '', 5, '1', 1, 1, 1, 1, 1),
(64, 'site_management', 30, 'admin', 'site', 'init', '', 2, '1', 1, 1, 1, 1, 1),
(81, 'member_add', 72, 'member', 'member', 'add', '', 2, '0', 1, 1, 1, 1, 1),
(62, 'add_model', 59, 'content', 'sitemodel', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(65, 'release_point_management', 30, 'admin', 'release_point', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(66, 'badword_export', 45, 'admin', 'badword', 'export', '', 0, '1', 1, 1, 1, 1, 1),
(67, 'add_site', 64, 'admin', 'site', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(68, 'badword_import', 45, 'admin', 'badword', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(812, 'member_group_manage', 76, 'member', 'member_group', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(74, 'member_verify', 55, 'member', 'member_verify', 'manage', 's=0', 3, '1', 1, 1, 1, 1, 1),
(76, 'manage_member_group', 5, 'member', 'member_group', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(77, 'manage_member_model', 5, 'member', 'member_model', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(78, 'member_group_add', 812, 'member', 'member_group', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(79, 'member_model_add', 813, 'member', 'member_model', 'add', '', 1, '0', 1, 1, 1, 1, 1),
(80, 'member_model_import', 77, 'member', 'member_model', 'import', '', 2, '0', 1, 1, 1, 1, 1),
(72, 'member_manage', 55, 'member', 'member', 'manage', '', 1, '1', 1, 1, 1, 1, 1),
(813, 'member_model_manage', 77, 'member', 'member_model', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(814, 'site_edit', 64, 'admin', 'site', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(815, 'site_del', 64, 'admin', 'site', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(816, 'release_point_add', 65, 'admin', 'release_point', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(817, 'release_point_del', 65, 'admin', 'release_point', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(818, 'release_point_edit', 65, 'admin', 'release_point', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(821, 'content_publish', 4, 'content', 'content', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(822, 'content_manage', 821, 'content', 'content', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(867, 'linkage', 977, 'admin', 'linkage', 'init', '', 13, '1', 1, 1, 1, 1, 1),
(827, 'template_style', 826, 'template', 'style', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(828, 'import_style', 827, 'template', 'style', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(831, 'template_export', 827, 'template', 'style', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(830, 'template_file', 827, 'template', 'file', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(832, 'template_onoff', 827, 'template', 'style', 'disable', '', 0, '0', 1, 1, 1, 1, 1),
(833, 'template_updatename', 827, 'template', 'style', 'updatename', '', 0, '0', 1, 1, 1, 1, 1),
(834, 'member_lock', 72, 'member', 'member', 'lock', '', 0, '0', 1, 1, 1, 1, 1),
(835, 'member_unlock', 72, 'member', 'member', 'unlock', '', 0, '0', 1, 1, 1, 1, 1),
(836, 'member_move', 72, 'member', 'member', 'move', '', 0, '0', 1, 1, 1, 1, 1),
(837, 'member_delete', 72, 'member', 'member', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(842, 'verify_ignore', 74, 'member', 'member_verify', 'manage', 's=2', 0, '1', 1, 1, 1, 1, 1),
(839, 'member_setting', 55, 'member', 'member_setting', 'manage', '', 4, '1', 1, 1, 1, 1, 1),
(841, 'verify_pass', 74, 'member', 'member_verify', 'manage', 's=1', 0, '1', 1, 1, 1, 1, 1),
(843, 'verify_delete', 74, 'member', 'member_verify', 'manage', 's=3', 0, '0', 1, 1, 1, 1, 1),
(844, 'verify_deny', 74, 'member', 'member_verify', 'manage', 's=4', 0, '1', 1, 1, 1, 1, 1),
(845, 'never_pass', 74, 'member', 'member_verify', 'manage', 's=5', 0, '1', 1, 1, 1, 1, 1),
(846, 'template_file_list', 827, 'template', 'file', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(847, 'template_file_edit', 827, 'template', 'file', 'edit_file', '', 0, '0', 1, 1, 1, 1, 1),
(848, 'file_add_file', 827, 'template', 'file', 'add_file', '', 0, '0', 1, 1, 1, 1, 1),
(850, 'listorder', 76, 'member', 'member_group', 'sort', '', 0, '0', 1, 1, 1, 1, 1),
(852, 'priv_setting', 50, 'admin', 'role', 'priv_setting', '', 0, '0', 1, 1, 1, 1, 1),
(853, 'role_priv', 50, 'admin', 'role', 'role_priv', '', 0, '0', 1, 1, 1, 1, 1),
(857, 'attachment_manage', 821, 'attachment', 'manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(868, 'special', 821, 'special', 'special', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(869, 'template_editor', 827, 'template', 'file', 'edit_file', '', 0, '0', 1, 1, 1, 1, 1),
(870, 'template_visualization', 827, 'template', 'file', 'visualization', '', 0, '0', 1, 1, 1, 1, 1),
(871, 'pc_tag_edit', 827, 'template', 'file', 'edit_pc_tag', '', 0, '0', 1, 1, 1, 1, 1),
(873, 'release_manage', 4, 'release', 'html', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(874, 'type_manage', 975, 'content', 'type_manage', 'init', '', 6, '1', 1, 1, 1, 1, 1),
(875, 'add_type', 874, 'content', 'type_manage', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(876, 'linkageadd', 867, 'admin', 'linkage', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(877, 'failure_list', 872, 'release', 'index', 'failed', '', 0, '1', 1, 1, 1, 1, 1),
(879, 'member_search', 72, 'member', 'member', 'search', '', 0, '0', 1, 1, 1, 1, 1),
(880, 'queue_del', 872, 'release', 'index', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(881, 'member_model_delete', 813, 'member', 'member_model', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(882, 'member_model_edit', 813, 'member', 'member_model', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(885, 'workflow', 977, 'content', 'workflow', 'init', '', 15, '1', 1, 1, 1, 1, 1),
(888, 'add_workflow', 885, 'content', 'workflow', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(889, 'member_modelfield_add', 813, 'member', 'member_modelfield', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(890, 'member_modelfield_edit', 813, 'member', 'member_modelfield', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(891, 'member_modelfield_delete', 813, 'member', 'member_modelfield', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(892, 'member_modelfield_manage', 813, 'member', 'member_modelfield', 'manage', '', 0, '0', 1, 1, 1, 1, 1),
(895, 'sitemodel_import', 59, 'content', 'sitemodel', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(896, 'pay', 29, 'pay', 'payment', 'pay_list', 's=3', 0, '1', 1, 1, 1, 1, 1),
(897, 'payments', 896, 'pay', 'payment', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(898, 'paylist', 896, 'pay', 'payment', 'pay_list', '', 0, '1', 1, 1, 1, 1, 1),
(899, 'add_content', 822, 'content', 'content', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(900, 'modify_deposit', 896, 'pay', 'payment', 'modify_deposit', 's=1', 0, '1', 1, 1, 1, 1, 1),
(901, 'check_content', 822, 'content', 'content', 'pass', '', 0, '0', 1, 1, 1, 1, 1),
(902, 'dbsource', 29, 'dbsource', 'data', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(905, 'create_content_html', 873, 'content', 'create_html', 'show', '', 2, '1', 1, 1, 1, 1, 1),
(904, 'external_data_sources', 902, 'dbsource', 'dbsource_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(906, 'update_urls', 873, 'content', 'create_html', 'update_urls', '', 1, '1', 1, 1, 1, 1, 1),
(960, 'node_add', 957, 'collection', 'node', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(909, 'fulltext_search', 29, 'search', 'search_type', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(910, 'manage_type', 909, 'search', 'search_type', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(911, 'search_setting', 909, 'search', 'search_admin', 'setting', '', 0, '1', 1, 1, 1, 1, 1),
(912, 'createindex', 909, 'search', 'search_admin', 'createindex', '', 0, '1', 1, 1, 1, 1, 1),
(913, 'add_search_type', 909, 'search', 'search_type', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(914, 'database_toos', 977, 'admin', 'database', 'export', '', 6, '1', 1, 1, 1, 1, 1),
(915, 'database_export', 914, 'admin', 'database', 'export', '', 0, '1', 1, 1, 1, 1, 1),
(916, 'database_import', 914, 'admin', 'database', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(917, 'dbsource_add', 902, 'dbsource', 'dbsource_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(918, 'dbsource_edit', 902, 'dbsource', 'dbsource_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(919, 'dbsource_del', 902, 'dbsource', 'dbsource_admin', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(920, 'dbsource_data_add', 902, 'dbsource', 'data', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(921, 'dbsource_data_edit', 902, 'dbsource', 'data', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(922, 'dbsource_data_del', 902, 'dbsource', 'data', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(926, 'add_special', 868, 'special', 'special', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(927, 'edit_special', 868, 'special', 'special', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(928, 'special_list', 868, 'special', 'special', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(929, 'special_elite', 868, 'special', 'special', 'elite', '', 0, '0', 1, 1, 1, 1, 1),
(930, 'delete_special', 868, 'special', 'special', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(931, 'badword_add', 45, 'admin', 'badword', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(932, 'badword_edit', 45, 'admin', 'badword', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(933, 'badword_delete', 45, 'admin', 'badword', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(934, 'special_listorder', 868, 'special', 'special', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(935, 'special_content_list', 868, 'special', 'content', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(936, 'special_content_add', 935, 'special', 'content', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(937, 'special_content_list', 935, 'special', 'content', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(938, 'special_content_edit', 935, 'special', 'content', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(939, 'special_content_delete', 935, 'special', 'content', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(940, 'special_content_listorder', 935, 'special', 'content', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(941, 'special_content_import', 935, 'special', 'special', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(942, 'history_version', 827, 'template', 'template_bak', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(943, 'restore_version', 827, 'template', 'template_bak', 'restore', '', 0, '0', 1, 1, 1, 1, 1),
(944, 'del_history_version', 827, 'template', 'template_bak', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(945, 'block', 821, 'block', 'block_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(946, 'block_add', 945, 'block', 'block_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(950, 'block_edit', 945, 'block', 'block_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(951, 'block_del', 945, 'block', 'block_admin', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(952, 'block_update', 945, 'block', 'block_admin', 'block_update', '', 0, '0', 1, 1, 1, 1, 1),
(953, 'block_restore', 945, 'block', 'block_admin', 'history_restore', '', 0, '0', 1, 1, 1, 1, 1),
(954, 'history_del', 945, 'block', 'block_admin', 'history_del', '', 0, '0', 1, 1, 1, 1, 1),
(978, 'urlrule_manage', 977, 'admin', 'urlrule', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(957, 'collection_node', 821, 'collection', 'node', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(979, 'safe_config', 30, 'admin', 'setting', 'init', '&tab=2', 11, '1', 1, 1, 1, 1, 1),
(959, 'basic_config', 30, 'admin', 'setting', 'init', '', 10, '1', 1, 1, 1, 1, 1),
(961, 'position_edit', 32, 'admin', 'position', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(962, 'collection_node_edit', 957, 'collection', 'node', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(963, 'collection_node_delete', 957, 'collection', 'node', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(990, 'col_url_list', 957, 'collection', 'node', 'col_url_list', '', 0, '0', 1, 1, 1, 1, 1),
(965, 'collection_node_publish', 957, 'collection', 'node', 'publist', '', 0, '0', 1, 1, 1, 1, 1),
(966, 'collection_node_import', 957, 'collection', 'node', 'node_import', '', 0, '0', 1, 1, 1, 1, 1),
(967, 'collection_node_export', 957, 'collection', 'node', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(968, 'collection_node_collection_content', 957, 'collection', 'node', 'col_content', '', 0, '0', 1, 1, 1, 1, 1),
(969, 'googlesitemap', 977, 'admin', 'googlesitemap', 'set', '', 11, '1', 1, 1, 1, 1, 1),
(970, 'admininfo', 10, 'admin', 'admin_manage', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(971, 'editpwd', 970, 'admin', 'admin_manage', 'public_edit_pwd', '', 1, '1', 1, 1, 1, 1, 1),
(972, 'editinfo', 970, 'admin', 'admin_manage', 'public_edit_info', '', 0, '1', 1, 1, 1, 1, 1),
(973, 'keylink', 977, 'admin', 'keylink', 'init', '', 12, '1', 1, 1, 1, 1, 1),
(974, 'add_keylink', 973, 'admin', 'keylink', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(975, 'content_settings', 4, 'content', 'content_settings', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(7, 'extend', 0, 'admin', 'extend', 'init_extend', '', 7, '1', 0, 1, 1, 1, 1),
(977, 'extend_all', 7, 'admin', 'extend_all', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(980, 'sso_config', 30, 'admin', 'setting', 'init', '&tab=3', 12, '1', 1, 1, 1, 1, 1),
(981, 'email_config', 30, 'admin', 'setting', 'init', '&tab=4', 13, '1', 1, 1, 1, 1, 1),
(982, 'module_manage', 82, 'admin', 'module', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(983, 'ipbanned', 977, 'admin', 'ipbanned', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(984, 'add_ipbanned', 983, 'admin', 'ipbanned', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(993, 'collection_content_import', 957, 'collection', 'node', 'import', '', 0, '0', 1, 1, 1, 1, 1),
(991, 'copy_node', 957, 'collection', 'node', 'copy', '', 0, '0', 1, 1, 1, 1, 1),
(992, 'content_del', 957, 'collection', 'node', 'content_del', '', 0, '0', 1, 1, 1, 1, 1),
(989, 'downsites', 977, 'admin', 'downservers', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(994, 'import_program_add', 957, 'collection', 'node', 'import_program_add', '', 0, '0', 1, 1, 1, 1, 1),
(995, 'import_program_del', 957, 'collection', 'node', 'import_program_del', '', 0, '0', 1, 1, 1, 1, 1),
(996, 'import_content', 957, 'collection', 'node', 'import_content', '', 0, '0', 1, 1, 1, 1, 1),
(997, 'log', 977, 'admin', 'log', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(998, 'add_page', 43, 'admin', 'category', 'add', 's=1', 2, '1', 1, 1, 1, 1, 1),
(999, 'add_cat_link', 43, 'admin', 'category', 'add', 's=2', 2, '1', 1, 1, 1, 1, 1),
(1000, 'count_items', 43, 'admin', 'category', 'count_items', '', 5, '1', 1, 1, 1, 1, 1),
(1001, 'cache_all', 977, 'admin', 'cache_all', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1002, 'create_list_html', 873, 'content', 'create_html', 'category', '', 0, '1', 1, 1, 1, 1, 1),
(1003, 'create_html_quick', 10, 'content', 'create_html_opt', 'index', '', 0, '1', 1, 1, 1, 1, 1),
(1004, 'create_index', 1003, 'content', 'create_html', 'public_index', '', 0, '1', 1, 1, 1, 1, 1),
(1005, 'scan', 977, 'scan', 'index', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1006, 'scan_report', 1005, 'scan', 'index', 'scan_report', '', 0, '1', 1, 1, 1, 1, 1),
(1007, 'md5_creat', 1005, 'scan', 'index', 'md5_creat', '', 0, '1', 1, 1, 1, 1, 1),
(1008, 'album_import', 868, 'special', 'album', 'import', '', 0, '1', 1, 1, 1, 1, 1),
(8, 'phpsso', 0, 'admin', 'phpsso', 'menu', '', 7, '1', 0, 1, 1, 1, 1),
(1011, 'edit_content', 822, 'content', 'content', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1012, 'push_to_special', 822, 'content', 'push', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1023, 'delete_log', 997, 'admin', 'log', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1024, 'delete_ip', 983, 'admin', 'ipbanned', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1026, 'delete_keylink', 973, 'admin', 'keylink', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1027, 'edit_keylink', 973, 'admin', 'keylink', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1034, 'operation_pass', 74, 'member', 'member_verify', 'pass', '', 0, '0', 1, 1, 1, 1, 1),
(1035, 'operation_delete', 74, 'member', 'member_verify', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1039, 'operation_ignore', 74, 'member', 'member_verify', 'ignore', '', 0, '0', 1, 1, 1, 1, 1),
(1038, 'settingsave', 30, 'admin', 'setting', 'save', '', 0, '0', 1, 1, 1, 1, 1),
(1040, 'admin_edit', 54, 'admin', 'admin_manage', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1041, 'operation_reject', 74, 'member', 'member_verify', 'reject', '', 0, '0', 1, 1, 1, 1, 1),
(1042, 'admin_delete', 54, 'admin', 'admin_manage', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1043, 'card', 54, 'admin', 'admin_manage', 'card', '', 0, '0', 1, 1, 1, 1, 1),
(1044, 'creat_card', 54, 'admin', 'admin_manage', 'creat_card', '', 0, '0', 1, 1, 1, 1, 1),
(1045, 'remove_card', 54, 'admin', 'admin_manage', 'remove_card', '', 0, '0', 1, 1, 1, 1, 1),
(1049, 'member_group_edit', 812, 'member', 'member_group', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1048, 'member_edit', 72, 'member', 'member', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1050, 'role_edit', 50, 'admin', 'role', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1051, 'member_group_delete', 812, 'member', 'member_group', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1052, 'member_manage', 50, 'admin', 'role', 'member_manage', '', 0, '0', 1, 1, 1, 1, 1),
(1053, 'role_delete', 50, 'admin', 'role', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1054, 'member_model_export', 77, 'member', 'member_model', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(1055, 'member_model_sort', 77, 'member', 'member_model', 'sort', '', 0, '0', 1, 1, 1, 1, 1),
(1056, 'member_model_move', 77, 'member', 'member_model', 'move', '', 0, '0', 1, 1, 1, 1, 1),
(1057, 'payment_add', 897, 'pay', 'payment', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1058, 'payment_delete', 897, 'pay', 'payment', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1059, 'payment_edit', 897, 'pay', 'payment', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1060, 'spend_record', 896, 'pay', 'spend', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1061, 'pay_stat', 896, 'pay', 'payment', 'pay_stat', '', 0, '1', 1, 1, 1, 1, 1),
(1062, 'fields_manage', 59, 'content', 'sitemodel_field', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1063, 'edit_model_content', 59, 'content', 'sitemodel', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1064, 'disabled_model', 59, 'content', 'sitemodel', 'disabled', '', 0, '0', 1, 1, 1, 1, 1),
(1065, 'delete_model', 59, 'content', 'sitemodel', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1066, 'export_model', 59, 'content', 'sitemodel', 'export', '', 0, '0', 1, 1, 1, 1, 1),
(1067, 'delete', 874, 'content', 'type_manage', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1068, 'edit', 874, 'content', 'type_manage', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1069, 'add_urlrule', 978, 'admin', 'urlrule', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1070, 'edit_urlrule', 978, 'admin', 'urlrule', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1071, 'delete_urlrule', 978, 'admin', 'urlrule', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1072, 'edit_menu', 31, 'admin', 'menu', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1073, 'delete_menu', 31, 'admin', 'menu', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1074, 'edit_workflow', 885, 'content', 'workflow', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1075, 'delete_workflow', 885, 'content', 'workflow', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1076, 'creat_html', 868, 'special', 'special', 'html', '', 0, '1', 1, 1, 1, 1, 1),
(1093, 'connect_config', 30, 'admin', 'setting', 'init', '&tab=5', 14, '1', 1, 1, 1, 1, 1),
(1102, 'view_modelinfo', 74, 'member', 'member_verify', 'modelinfo', '', 0, '0', 1, 1, 1, 1, 1),
(1202, 'create_special_list', 868, 'special', 'special', 'create_special_list', '', 0, '1', 1, 1, 1, 1, 1),
(1240, 'view_memberlinfo', 72, 'member', 'member', 'memberinfo', '', 0, '0', 1, 1, 1, 1, 1),
(1239, 'copyfrom_manage', 977, 'admin', 'copyfrom', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1241, 'move_content', 822, 'content', 'content', 'remove', '', 0, '0', 1, 1, 1, 1, 1),
(1242, 'poster_template', 56, 'poster', 'space', 'poster_template', '', 0, '1', 1, 1, 1, 1, 1),
(1243, 'create_index', 873, 'content', 'create_html', 'public_index', '', 0, '1', 1, 1, 1, 1, 1),
(1244, 'add_othors', 822, 'content', 'content', 'add_othors', '', 0, '1', 1, 1, 1, 1, 1),
(1295, 'attachment_manager_dir', 857, 'attachment', 'manage', 'dir', '', 2, '1', 1, 1, 1, 1, 1),
(1296, 'attachment_manager_db', 857, 'attachment', 'manage', 'init', '', 1, '1', 1, 1, 1, 1, 1),
(1346, 'attachment_address_replace', 857, 'attachment', 'address', 'init', '', 3, '1', 1, 1, 1, 1, 1),
(1347, 'attachment_address_update', 857, 'attachment', 'address', 'update', '', 0, '0', 1, 1, 1, 1, 1),
(1348, 'delete_content', 822, 'content', 'content', 'delete', '', 0, '1', 1, 1, 1, 1, 1),
(1349, 'member_menu_manage', 977, 'member', 'member_menu', 'manage', '', 0, '1', 1, 1, 1, 1, 1),
(1350, 'member_menu_add', 1349, 'member', 'member_menu', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1351, 'member_menu_edit', 1349, 'member', 'member_menu', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1352, 'member_menu_delete', 1349, 'member', 'member_menu', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1353, 'batch_show', 822, 'content', 'create_html', 'batch_show', '', 0, '1', 1, 1, 1, 1, 1),
(1354, 'pay_delete', 898, 'pay', 'payment', 'pay_del', '', 0, '0', 1, 1, 1, 1, 1),
(1355, 'pay_cancel', 898, 'pay', 'payment', 'pay_cancel', '', 0, '0', 1, 1, 1, 1, 1),
(1356, 'discount', 898, 'pay', 'payment', 'discount', '', 0, '0', 1, 1, 1, 1, 1),
(1360, 'category_batch_edit', 43, 'admin', 'category', 'batch_edit', '', 6, '1', 1, 1, 1, 1, 1),
(1500, 'listorder', 822, 'content', 'content', 'listorder', '', 0, '0', 1, 1, 1, 1, 1),
(1501, 'a_clean_data', 873, 'content', 'content', 'clear_data', '', 0, '1', 0, 0, 0, 0, 0),
(9, 'video', 0, 'video', 'video', 'init', '', 11, '1', 1, 1, 1, 1, 1),
(1589, 'video', 9, 'video', 'video', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1583, 'sub_delete', 1589, 'video', 'video', 'sub_del', '', 0, '0', 1, 1, 1, 1, 1),
(1582, 'subscribe_manage', 1589, 'video', 'video', 'subscribe_list', '', 0, '1', 1, 1, 1, 1, 1),
(1581, 'video_open', 1589, 'video', 'video', 'open', '', 0, '1', 1, 1, 1, 1, 1),
(1592, 'complete_info', 1581, 'video', 'video', 'complete_info', '', 0, '1', 1, 1, 1, 1, 1),
(1591, 'video_inputinfo', 1581, 'video', 'video', 'open', '', 0, '1', 1, 1, 1, 1, 1),
(1577, 'video_manage', 1589, 'video', 'video', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1590, 'player_manage', 1589, 'video', 'player', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1585, 'import_ku6_video', 1589, 'video', 'video', 'import_ku6video', '', 0, '1', 1, 1, 1, 1, 1),
(1579, 'video_edit', 1589, 'video', 'video', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1580, 'video_delete', 1589, 'video', 'video', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1578, 'video_upload', 1589, 'video', 'video', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1593, 'video_stat', 1589, 'video', 'stat', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1586, 'video_store', 1589, 'video', 'video', 'video2content', '', 0, '0', 1, 1, 1, 1, 1),
(1594, 'announce', 29, 'announce', 'admin_announce', 'init', 's=1', 0, '1', 1, 1, 1, 1, 1),
(1595, 'announce_add', 1594, 'announce', 'admin_announce', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1596, 'edit_announce', 1594, 'announce', 'admin_announce', 'edit', 's=1', 0, '0', 1, 1, 1, 1, 1),
(1597, 'check_announce', 1594, 'announce', 'admin_announce', 'init', 's=2', 0, '1', 1, 1, 1, 1, 1),
(1598, 'overdue', 1594, 'announce', 'admin_announce', 'init', 's=3', 0, '1', 1, 1, 1, 1, 1),
(1599, 'del_announce', 1594, 'announce', 'admin_announce', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1600, 'link', 29, 'link', 'link', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1601, 'add_link', 1600, 'link', 'link', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1602, 'edit_link', 1600, 'link', 'link', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1603, 'delete_link', 1600, 'link', 'link', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1604, 'link_setting', 1600, 'link', 'link', 'setting', '', 0, '1', 1, 1, 1, 1, 1),
(1605, 'add_type', 1600, 'link', 'link', 'add_type', '', 0, '1', 1, 1, 1, 1, 1),
(1606, 'list_type', 1600, 'link', 'link', 'list_type', '', 0, '1', 1, 1, 1, 1, 1),
(1607, 'check_register', 1600, 'link', 'link', 'check_register', '', 0, '1', 1, 1, 1, 1, 1),
(1608, 'message', 29, 'message', 'message', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1609, 'send_one', 1608, 'message', 'message', 'send_one', '', 0, '1', 1, 1, 1, 1, 1),
(1610, 'delete_message', 1608, 'message', 'message', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1611, 'message_send', 1608, 'message', 'message', 'message_send', '', 0, '0', 1, 1, 1, 1, 1),
(1612, 'message_group_manage', 1608, 'message', 'message', 'message_group_manage', '', 0, '1', 1, 1, 1, 1, 1),
(1613, 'poster', 29, 'poster', 'space', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1614, 'add_space', 1613, 'poster', 'space', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1615, 'edit_space', 1613, 'poster', 'space', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1616, 'del_space', 1613, 'poster', 'space', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1617, 'poster_list', 1613, 'poster', 'poster', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1618, 'add_poster', 1613, 'poster', 'poster', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1619, 'edit_poster', 1613, 'poster', 'poster', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1620, 'del_poster', 1613, 'poster', 'poster', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1621, 'poster_stat', 1613, 'poster', 'poster', 'stat', '', 0, '0', 1, 1, 1, 1, 1),
(1622, 'poster_setting', 1613, 'poster', 'space', 'setting', '', 0, '0', 1, 1, 1, 1, 1),
(1623, 'create_poster_js', 1613, 'poster', 'space', 'create_js', '', 0, '1', 1, 1, 1, 1, 1),
(1624, 'poster_template', 1613, 'poster', 'space', 'poster_template', '', 0, '1', 1, 1, 1, 1, 1),
(1652, 'formguide_delete', 1647, 'formguide', 'formguide', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1656, 'module_setting', 1647, 'formguide', 'formguide', 'setting', '', 0, '0', 1, 1, 1, 1, 1),
(1653, 'formguide_stat', 1647, 'formguide', 'formguide', 'stat', '', 0, '0', 1, 1, 1, 1, 1),
(1647, 'formguide', 29, 'formguide', 'formguide', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1654, 'add_public_field', 1647, 'formguide', 'formguide_field', 'add', '', 0, '1', 1, 1, 1, 1, 1),
(1655, 'list_public_field', 1647, 'formguide', 'formguide_field', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1650, 'form_info_list', 1647, 'formguide', 'formguide_info', 'init', '', 0, '0', 1, 1, 1, 1, 1),
(1649, 'formguide_edit', 1647, 'formguide', 'formguide', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1648, 'formguide_add', 1647, 'formguide', 'formguide', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1651, 'formguide_disabled', 1647, 'formguide', 'formguide', 'disabled', '', 0, '0', 1, 1, 1, 1, 1),
(1635, 'wap', 29, 'wap', 'wap_admin', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1636, 'wap_add', 1635, 'wap', 'wap_admin', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1637, 'wap_edit', 1635, 'wap', 'wap_admin', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1638, 'wap_delete', 1635, 'wap', 'wap_admin', 'delete', '', 0, '0', 1, 1, 1, 1, 1),
(1639, 'wap_type_manage', 1635, 'wap', 'wap_admin', 'type_manage', '', 0, '0', 1, 1, 1, 1, 1),
(1640, 'wap_type_edit', 1635, 'wap', 'wap_admin', 'type_edit', '', 0, '0', 1, 1, 1, 1, 1),
(1641, 'wap_type_delete', 1635, 'wap', 'wap_admin', 'type_delete', '', 0, '0', 1, 1, 1, 1, 1),
(1642, 'tag', 826, 'tag', 'tag', 'init', '', 0, '1', 1, 1, 1, 1, 1),
(1643, 'add_tag', 1642, 'tag', 'tag', 'add', '', 0, '0', 1, 1, 1, 1, 1),
(1644, 'edit_tag', 1642, 'tag', 'tag', 'edit', '', 0, '0', 1, 1, 1, 1, 1),
(1645, 'delete_tag', 1642, 'tag', 'tag', 'del', '', 0, '0', 1, 1, 1, 1, 1),
(1646, 'tag_lists', 1642, 'tag', 'tag', 'lists', '', 0, '0', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_message`
--

CREATE TABLE IF NOT EXISTS `v9_message` (
`messageid` int(10) unsigned NOT NULL,
  `send_from_id` char(30) NOT NULL DEFAULT '0',
  `send_to_id` char(30) NOT NULL DEFAULT '0',
  `folder` enum('all','inbox','outbox') NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_time` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` char(80) DEFAULT NULL,
  `content` text NOT NULL,
  `replyid` int(10) unsigned NOT NULL DEFAULT '0',
  `del_type` tinyint(1) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_message_data`
--

CREATE TABLE IF NOT EXISTS `v9_message_data` (
`id` int(4) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `group_message_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_message_group`
--

CREATE TABLE IF NOT EXISTS `v9_message_group` (
`id` smallint(5) unsigned NOT NULL,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `subject` char(80) DEFAULT NULL,
  `content` text NOT NULL COMMENT '内容',
  `inputtime` int(10) unsigned DEFAULT '0',
  `status` tinyint(2) unsigned DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_model`
--

CREATE TABLE IF NOT EXISTS `v9_model` (
`modelid` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `description` char(100) NOT NULL,
  `tablename` char(20) NOT NULL,
  `setting` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_style` char(30) NOT NULL,
  `category_template` char(30) NOT NULL,
  `list_template` char(30) NOT NULL,
  `show_template` char(30) NOT NULL,
  `js_template` varchar(30) NOT NULL,
  `admin_list_template` char(30) NOT NULL,
  `member_add_template` varchar(30) NOT NULL,
  `member_list_template` varchar(30) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `v9_model`
--

INSERT INTO `v9_model` (`modelid`, `siteid`, `name`, `description`, `tablename`, `setting`, `addtime`, `items`, `enablesearch`, `disabled`, `default_style`, `category_template`, `list_template`, `show_template`, `js_template`, `admin_list_template`, `member_add_template`, `member_list_template`, `sort`, `type`) VALUES
(1, 1, '文章模型', '', 'news', '', 0, 0, 1, 0, 'default', 'category', 'list', 'show', '', '', '', '', 0, 0),
(2, 1, '下载模型', '', 'download', '', 0, 0, 1, 0, 'default', 'category_download', 'list_download', 'show_download', '', '', '', '', 0, 0),
(3, 1, '图片模型', '', 'picture', '', 0, 0, 1, 0, 'default', 'category_picture', 'list_picture', 'show_picture', '', '', '', '', 0, 0),
(10, 1, '普通会员', '普通会员', 'member_detail', '', 0, 0, 1, 0, '', '', '', '', '', '', '', '', 0, 2),
(11, 1, '视频模型', '', 'video', '', 0, 0, 1, 0, 'default', 'category_video', 'list_video', 'show_video', '', '', '', '', 0, 0),
(12, 1, '招聘模型', '招聘模型', 'job', '', 0, 0, 1, 0, 'default', 'category', 'list', 'show', '', '', '', '', 0, 0),
(13, 1, '公司动态', '公司动态', 'dynamics', '', 0, 0, 1, 0, 'default', 'category', 'list', 'show', '', '', '', '', 0, 0),
(15, 1, '人才储备', '人才储备信息', 'rencai', '{"enabletime":"0","starttime":"1510070400","endtime":"","sendmail":"0","mails":"","allowmultisubmit":"0","allowunreg":"1"}', 1510145784, 1, 1, 0, 'default', '', '', 'show', 'show_js', '', '', '', 0, 3),
(16, 2, '文章模型', '文章模型', 'en_news', '', 0, 0, 1, 0, 'default', 'category', 'list', 'show', '', '', '', '', 0, 0),
(17, 1, '时间轴', '发展历程/企业荣誉', 'time_l', '', 0, 0, 1, 0, 'default', 'category', 'list_licheng', 'show', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_model_field`
--

CREATE TABLE IF NOT EXISTS `v9_model_field` (
`fieldid` mediumint(8) unsigned NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tips` text NOT NULL,
  `css` varchar(30) NOT NULL,
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=231 ;

--
-- 转存表中的数据 `v9_model_field`
--

INSERT INTO `v9_model_field` (`fieldid`, `modelid`, `siteid`, `field`, `name`, `tips`, `css`, `minlength`, `maxlength`, `pattern`, `errortips`, `formtype`, `setting`, `formattribute`, `unsetgroupids`, `unsetroleids`, `iscore`, `issystem`, `isunique`, `isbase`, `issearch`, `isadd`, `isfulltext`, `isposition`, `listorder`, `disabled`, `isomnipotent`) VALUES
(1, 1, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(2, 1, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  ''minnumber'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(3, 1, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(4, 1, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => '''',\n  ''show_type'' => ''1'',\n  ''upload_maxsize'' => ''1024'',\n  ''upload_allowext'' => ''jpg|jpeg|gif|png|bmp'',\n  ''watermark'' => ''0'',\n  ''isselectimage'' => ''1'',\n  ''images_width'' => '''',\n  ''images_height'' => '''',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(5, 1, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  ''size'' => ''100'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(6, 1, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  ''width'' => ''98'',\r\n  ''height'' => ''46'',\r\n  ''defaultvalue'' => '''',\r\n  ''enablehtml'' => ''0'',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(7, 1, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  ''dateformat'' => ''int'',\r\n  ''format'' => ''Y-m-d H:i:s'',\r\n  ''defaulttype'' => ''1'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(8, 1, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  ''toolbar'' => ''full'',\n  ''defaultvalue'' => '''',\n  ''enablekeylink'' => ''1'',\n  ''replacenum'' => ''2'',\n  ''link_mode'' => ''0'',\n  ''enablesaveimage'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(9, 1, 1, 'voteid', '添加投票', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''text\\'' name=\\''info[voteid]\\'' id=\\''voteid\\'' value=\\''{FIELD_VALUE}\\'' size=\\''3\\''> \r\n<input type=\\''button\\'' value="选择已有投票" onclick="omnipotent(\\''selectid\\'',\\''?m=vote&c=vote&a=public_get_votelist&from_api=1\\'',\\''选择已有投票\\'')" class="button">\r\n<input type=\\''button\\'' value="新增投票" onclick="omnipotent(\\''addvote\\'',\\''?m=vote&c=vote&a=add&from_api=1\\'',\\''添加投票\\'',0)" class="button">'',\n  ''fieldtype'' => ''mediumint'',\n  ''minnumber'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 1, 0, 21, 0, 0),
(10, 1, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(11, 1, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''fieldtype'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(12, 1, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  ''cols'' => ''4'',\n  ''width'' => ''125'',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(13, 1, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(14, 1, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(15, 1, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(16, 1, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  ''size'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(17, 1, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  ''groupids'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(18, 1, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  ''minnumber'' => ''1'',\n  ''maxnumber'' => ''99999'',\n  ''decimaldigits'' => ''0'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(19, 1, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''hidden\\'' name=\\''info[relation]\\'' id=\\''relation\\'' value=\\''{FIELD_VALUE}\\'' style=\\''50\\'' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\''button\\'' value="添加相关" onclick="omnipotent(\\''selectid\\'',\\''?m=content&c=content&a=public_relationlist&modelid={MODELID}\\'',\\''添加相关文章\\'',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\''button\\'' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(20, 1, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''允许评论|1\r\n不允许评论|0'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''tinyint'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''1'',\n  ''filtertype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(21, 1, 1, 'copyfrom', '来源', '', '', 0, 100, '', '', 'copyfrom', 'array (\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(80, 1, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(22, 2, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(23, 2, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  ''minnumber'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 1, 0),
(24, 2, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(25, 2, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  ''size'' => ''100'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(26, 2, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  ''width'' => ''98'',\r\n  ''height'' => ''46'',\r\n  ''defaultvalue'' => '''',\r\n  ''enablehtml'' => ''0'',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(27, 2, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  ''dateformat'' => ''int'',\r\n  ''format'' => ''Y-m-d H:i:s'',\r\n  ''defaulttype'' => ''1'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(28, 2, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  ''toolbar'' => ''full'',\n  ''defaultvalue'' => '''',\n  ''enablekeylink'' => ''1'',\n  ''replacenum'' => ''2'',\n  ''link_mode'' => ''0'',\n  ''enablesaveimage'' => ''1'',\n  ''height'' => '''',\n  ''disabled_page'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(29, 2, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => '''',\n  ''show_type'' => ''1'',\n  ''upload_maxsize'' => ''1024'',\n  ''upload_allowext'' => ''jpg|jpeg|gif|png|bmp'',\n  ''watermark'' => ''0'',\n  ''isselectimage'' => ''1'',\n  ''images_width'' => '''',\n  ''images_height'' => '''',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(30, 2, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''hidden\\'' name=\\''info[relation]\\'' id=\\''relation\\'' value=\\''{FIELD_VALUE}\\'' style=\\''50\\'' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\''button\\'' value="添加相关" onclick="omnipotent(\\''selectid\\'',\\''?m=content&c=content&a=public_relationlist&modelid={MODELID}\\'',\\''添加相关文章\\'',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\''button\\'' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(31, 2, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 1, 0),
(32, 2, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''fieldtype'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(33, 2, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  ''cols'' => ''4'',\n  ''width'' => ''125'',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(34, 2, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  ''groupids'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(35, 2, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(36, 2, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(37, 2, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  ''size'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(38, 2, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''允许评论|1\r\n不允许评论|0'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''tinyint'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''1'',\n  ''filtertype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(39, 2, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(40, 2, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  ''minnumber'' => ''1'',\n  ''maxnumber'' => ''99999'',\n  ''decimaldigits'' => ''0'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(41, 2, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(42, 2, 1, 'downfiles', '本地下载', '', '', 0, 0, '', '', 'downfiles', 'array (\n  ''upload_allowext'' => ''rar|zip'',\n  ''isselectimage'' => ''0'',\n  ''upload_number'' => ''10'',\n  ''downloadlink'' => ''1'',\n  ''downloadtype'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(43, 2, 1, 'downfile', '镜像下载', '', '', 0, 0, '', '', 'downfile', 'array (\n  ''downloadlink'' => ''1'',\n  ''downloadtype'' => ''1'',\n  ''upload_allowext'' => ''rar|zip'',\n  ''isselectimage'' => ''0'',\n  ''upload_number'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 9, 0, 0),
(44, 2, 1, 'systems', '软件平台', '<select name=''selectSystem'' onchange="ChangeInput(this,document.myform.systems,''/'')">\r\n	<option value=''WinXP''>WinXP</option>\r\n	<option value=''Vista''>Windows 7</option>\r\n	<option value=''Win2000''>Win2000</option>\r\n	<option value=''Win2003''>Win2003</option>\r\n	<option value=''Unix''>Unix</option>\r\n	<option value=''Linux''>Linux</option>\r\n	<option value=''MacOS''>MacOS</option>\r\n</select>', '', 0, 100, '', '', 'text', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => ''Win2000/WinXP/Win2003'',\n  ''ispassword'' => ''0'',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 0, 14, 0, 0),
(45, 2, 1, 'copytype', '软件授权形式', '', '', 0, 15, '', '', 'box', 'array (\n  ''options'' => ''免费版|免费版\r\n共享版|共享版\r\n试用版|试用版\r\n演示版|演示版\r\n注册版|注册版\r\n破解版|破解版\r\n零售版|零售版\r\nOEM版|OEM版'',\n  ''boxtype'' => ''select'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n  ''cols'' => ''5'',\n  ''width'' => ''80'',\n  ''size'' => ''1'',\n  ''default_select_value'' => ''免费版'',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 12, 0, 0),
(46, 2, 1, 'language', '软件语言', '', '', 0, 16, '', '', 'box', 'array (\n  ''options'' => ''英文|英文\r\n简体中文|简体中文\r\n繁体中文|繁体中文\r\n简繁中文|简繁中文\r\n多国语言|多国语言\r\n其他语言|其他语言'',\n  ''boxtype'' => ''select'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n  ''cols'' => ''5'',\n  ''width'' => ''80'',\n  ''size'' => ''1'',\n  ''default_select_value'' => ''简体中文'',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 13, 0, 0),
(47, 2, 1, 'classtype', '软件类型', '', '', 0, 20, '', '', 'box', 'array (\n  ''options'' => ''国产软件|国产软件\r\n国外软件|国外软件\r\n汉化补丁|汉化补丁\r\n程序源码|程序源码\r\n其他|其他'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n  ''cols'' => ''5'',\n  ''width'' => ''80'',\n  ''size'' => ''1'',\n  ''default_select_value'' => ''国产软件'',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 17, 0, 0),
(48, 2, 1, 'version', '版本号', '', '', 0, 20, '', '', 'text', 'array (\n  ''size'' => ''10'',\n  ''defaultvalue'' => '''',\n  ''ispassword'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 1, 0, 13, 0, 0),
(49, 2, 1, 'filesize', '文件大小', '', '', 0, 10, '', '', 'text', 'array (\n  ''size'' => ''10'',\n  ''defaultvalue'' => ''未知'',\n  ''ispassword'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 1, 0, 14, 0, 0),
(50, 2, 1, 'stars', '评分等级', '', '', 0, 20, '', '', 'box', 'array (\n  ''options'' => ''★☆☆☆☆|★☆☆☆☆\r\n★★☆☆☆|★★☆☆☆\r\n★★★☆☆|★★★☆☆\r\n★★★★☆|★★★★☆\r\n★★★★★|★★★★★'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n  ''cols'' => ''5'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''default_select_value'' => ''★★★☆☆'',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 17, 0, 0),
(51, 3, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''允许评论|1\r\n不允许评论|0'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''tinyint'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''1'',\n  ''filtertype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(52, 3, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  ''size'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(53, 3, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(54, 3, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(55, 3, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  ''cols'' => ''4'',\n  ''width'' => ''125'',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(56, 3, 1, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', 'array (\n  ''groupids'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(57, 3, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''fieldtype'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(58, 3, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(59, 3, 1, 'relation', '相关组图', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''hidden\\'' name=\\''info[relation]\\'' id=\\''relation\\'' value=\\''{FIELD_VALUE}\\'' style=\\''50\\'' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\''button\\'' value="添加相关" onclick="omnipotent(\\''selectid\\'',\\''?m=content&c=content&a=public_relationlist&modelid={MODELID}\\'',\\''添加相关文章\\'',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\''button\\'' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(60, 3, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => '''',\n  ''show_type'' => ''1'',\n  ''upload_maxsize'' => ''1024'',\n  ''upload_allowext'' => ''jpg|jpeg|gif|png|bmp'',\n  ''watermark'' => ''0'',\n  ''isselectimage'' => ''1'',\n  ''images_width'' => '''',\n  ''images_height'' => '''',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(61, 3, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 0, 999999, '', '', 'editor', 'array (\n  ''toolbar'' => ''full'',\n  ''defaultvalue'' => '''',\n  ''enablekeylink'' => ''1'',\n  ''replacenum'' => ''2'',\n  ''link_mode'' => ''0'',\n  ''enablesaveimage'' => ''1'',\n  ''height'' => '''',\n  ''disabled_page'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(62, 3, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  ''dateformat'' => ''int'',\r\n  ''format'' => ''Y-m-d H:i:s'',\r\n  ''defaulttype'' => ''1'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(63, 3, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  ''width'' => ''98'',\r\n  ''height'' => ''46'',\r\n  ''defaultvalue'' => '''',\r\n  ''enablehtml'' => ''0'',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(64, 3, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(65, 3, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  ''size'' => ''100'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(66, 3, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  ''minnumber'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(67, 3, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(68, 3, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(69, 3, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  ''minnumber'' => ''1'',\n  ''maxnumber'' => ''99999'',\n  ''decimaldigits'' => ''0'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(70, 3, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(71, 3, 1, 'pictureurls', '组图', '', '', 0, 0, '', '', 'images', 'array (\n  ''upload_allowext'' => ''gif|jpg|jpeg|png|bmp'',\n  ''isselectimage'' => ''1'',\n  ''upload_number'' => ''50'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 15, 0, 0),
(72, 3, 1, 'copyfrom', '来源', '', '', 0, 0, '', '', 'copyfrom', 'array (\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(73, 1, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(74, 2, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(75, 3, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(83, 10, 1, 'birthday', '生日', '', '', 0, 0, '', '生日格式错误', 'datetime', 'array (\n  ''fieldtype'' => ''date'',\n  ''format'' => ''Y-m-d'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(84, 11, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(85, 11, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  ''minnumber'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(86, 11, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', 'array (\n)', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(87, 11, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\n  ''size'' => ''100'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(88, 11, 1, 'description', '简介', '', '', 0, 1000, '', '', 'textarea', '{"width":"98","height":"100","defaultvalue":"","enablehtml":"0"}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(89, 11, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''dateformat'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''1'',\n  ''defaultvalue'' => '''',\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(90, 11, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 0, 999999, '', '内容不能为空', 'editor', 'array (\n  ''toolbar'' => ''full'',\n  ''defaultvalue'' => '''',\n  ''enablekeylink'' => ''1'',\n  ''replacenum'' => ''2'',\n  ''link_mode'' => ''0'',\n  ''enablesaveimage'' => ''1'',\n  ''height'' => '''',\n  ''disabled_page'' => ''0'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 1, 0),
(91, 11, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => '''',\n  ''show_type'' => ''1'',\n  ''upload_maxsize'' => ''1024'',\n  ''upload_allowext'' => ''jpg|jpeg|gif|png|bmp'',\n  ''watermark'' => ''0'',\n  ''isselectimage'' => ''1'',\n  ''images_width'' => '''',\n  ''images_height'' => '''',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(92, 11, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''hidden\\'' name=\\''info[relation]\\'' id=\\''relation\\'' value=\\''{FIELD_VALUE}\\'' style=\\''50\\'' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\''button\\'' value="添加相关" onclick="omnipotent(\\''selectid\\'',\\''?m=content&c=content&a=public_relationlist&modelid={MODELID}\\'',\\''添加相关文章\\'',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\''button\\'' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 1, 0),
(93, 11, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', 'array (\n)', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 1, 0),
(94, 11, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''fieldtype'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(95, 11, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  ''cols'' => ''4'',\n  ''width'' => ''125'',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 1, 0),
(96, 11, 1, 'groupids_view', '阅读权限', '', '', 0, 100, '', '', 'groupid', 'array (\n  ''groupids'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 1, 0),
(97, 11, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(98, 11, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(99, 11, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  ''size'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(100, 11, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''允许评论|1\r\n不允许评论|0'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''tinyint'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 1, 0),
(101, 11, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(102, 11, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  ''minnumber'' => ''1'',\n  ''maxnumber'' => ''99999'',\n  ''decimaldigits'' => ''0'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 1, 0),
(103, 11, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', 'array (\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(104, 11, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', 'array (\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 20, 1, 0),
(105, 11, 1, 'video', '视频上传', '', '', 0, 0, '', '', 'video', 'array (\n  ''upload_allowext'' => ''flv|rm|mp4|rmv'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 1, 0),
(106, 11, 1, 'vision', '画质', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''高清|1\r\n普通|2'',\n  ''boxtype'' => ''select'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''80'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''0'',\n  ''outputtype'' => ''1'',\n  ''filtertype'' => ''1'',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 9, 1, 0),
(107, 11, 1, 'video_category', '视频分类', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''喜剧|1\r\n爱情|2\r\n科幻|3\r\n剧情|4\r\n动作|5\r\n伦理|6'',\n  ''boxtype'' => ''select'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''80'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''1'',\n  ''filtertype'' => ''1'',\n)', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 9, 1, 0),
(108, 12, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(109, 12, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  ''minnumber'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(110, 12, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(111, 12, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  ''size'' => ''100'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 1, 0),
(112, 12, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  ''width'' => ''98'',\r\n  ''height'' => ''46'',\r\n  ''defaultvalue'' => '''',\r\n  ''enablehtml'' => ''0'',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(113, 12, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  ''dateformat'' => ''int'',\r\n  ''format'' => ''Y-m-d H:i:s'',\r\n  ''defaulttype'' => ''1'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(114, 12, 1, 'content', '招聘职位详细介绍', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', '{"toolbar":"full","defaultvalue":"","enablekeylink":"1","replacenum":"2","link_mode":"0","enablesaveimage":"1","height":"","disabled_page":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(115, 12, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => '''',\n  ''show_type'' => ''1'',\n  ''upload_maxsize'' => ''1024'',\n  ''upload_allowext'' => ''jpg|jpeg|gif|png|bmp'',\n  ''watermark'' => ''0'',\n  ''isselectimage'' => ''1'',\n  ''images_width'' => '''',\n  ''images_height'' => '''',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(116, 12, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''hidden\\'' name=\\''info[relation]\\'' id=\\''relation\\'' value=\\''{FIELD_VALUE}\\'' style=\\''50\\'' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\''button\\'' value="添加相关" onclick="omnipotent(\\''selectid\\'',\\''?m=content&c=content&a=public_relationlist&modelid={MODELID}\\'',\\''添加相关文章\\'',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\''button\\'' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(117, 12, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(118, 12, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''fieldtype'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(119, 12, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  ''cols'' => ''4'',\n  ''width'' => ''125'',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(120, 12, 1, 'groupids_view', '阅读权限', '', '', 0, 100, '', '', 'groupid', 'array (\n  ''groupids'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(121, 12, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(122, 12, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(123, 12, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  ''size'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(124, 12, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''允许评论|1\r\n不允许评论|0'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''tinyint'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(125, 12, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(126, 12, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  ''minnumber'' => ''1'',\n  ''maxnumber'' => ''99999'',\n  ''decimaldigits'' => ''0'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(127, 12, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(128, 12, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 20, 0, 0),
(129, 12, 1, 'company_name', '公司名称', '', '', 0, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(130, 12, 1, 'position_natrue', '职位性质', '', '', 0, 0, '', '', 'box', '{"options":"\\u5168\\u804c|\\u5168\\u804c\\r\\n\\u517c\\u804c|\\u517c\\u804c","boxtype":"select","fieldtype":"varchar","minnumber":"1","width":"80","size":"1","defaultvalue":"","outputtype":"1","filtertype":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(131, 13, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(132, 13, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  ''minnumber'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(133, 13, 1, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(134, 13, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  ''size'' => ''100'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(135, 13, 1, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', 'array (\r\n  ''width'' => ''98'',\r\n  ''height'' => ''46'',\r\n  ''defaultvalue'' => '''',\r\n  ''enablehtml'' => ''0'',\r\n)', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(136, 13, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  ''dateformat'' => ''int'',\r\n  ''format'' => ''Y-m-d H:i:s'',\r\n  ''defaulttype'' => ''1'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(137, 13, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  ''toolbar'' => ''full'',\n  ''defaultvalue'' => '''',\n  ''enablekeylink'' => ''1'',\n  ''replacenum'' => ''2'',\n  ''link_mode'' => ''0'',\n  ''enablesaveimage'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(138, 13, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => '''',\n  ''show_type'' => ''1'',\n  ''upload_maxsize'' => ''1024'',\n  ''upload_allowext'' => ''jpg|jpeg|gif|png|bmp'',\n  ''watermark'' => ''0'',\n  ''isselectimage'' => ''1'',\n  ''images_width'' => '''',\n  ''images_height'' => '''',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(139, 13, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''hidden\\'' name=\\''info[relation]\\'' id=\\''relation\\'' value=\\''{FIELD_VALUE}\\'' style=\\''50\\'' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\''button\\'' value="添加相关" onclick="omnipotent(\\''selectid\\'',\\''?m=content&c=content&a=public_relationlist&modelid={MODELID}\\'',\\''添加相关文章\\'',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\''button\\'' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(140, 13, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(141, 13, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''fieldtype'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(142, 13, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  ''cols'' => ''4'',\n  ''width'' => ''125'',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(143, 13, 1, 'groupids_view', '阅读权限', '', '', 0, 100, '', '', 'groupid', 'array (\n  ''groupids'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(144, 13, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(145, 13, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(146, 13, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  ''size'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(147, 13, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''允许评论|1\r\n不允许评论|0'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''tinyint'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(148, 13, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(149, 13, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  ''minnumber'' => ''1'',\n  ''maxnumber'' => ''99999'',\n  ''decimaldigits'' => ''0'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(150, 13, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(151, 13, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 20, 0, 0),
(152, 12, 1, 'people_nums', '招聘人数', '人', '', 0, 0, '', '', 'text', '{"size":"10","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(153, 12, 1, 'experience', '工作经验', '年', '', 0, 0, '', '', 'text', '{"size":"10","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(154, 12, 1, 'treatment', '工资待遇', '', '', 0, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(155, 12, 1, 'location', '工作地点', '', '', 0, 0, '', '', 'linkage', '{"linkageid":"1","showtype":"1","space":"-","filtertype":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(156, 12, 1, 'characteristic', '职位特点', '', '', 0, 0, '', '', 'textarea', '{"width":"100","height":"46","defaultvalue":"","enablehtml":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(157, 15, 1, 'fullname', '姓名', '', '', 1, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 15, 1, 'telephone', '手机', '', '', 1, 0, '/^(1)[0-9]{10}$/', '手机号码错误', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 15, 1, 'sex', '性别', '', '', 1, 0, '', '', 'box', '{"options":"\\u5973|0\\r\\n\\u7537|1","boxtype":"radio","fieldtype":"varchar","minnumber":"1","cols":"5","width":"80","size":"1","defaultvalue":""}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 15, 1, 'year', '经验', '', '', 1, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 15, 1, 'city', '所在城市', '', '', 0, 0, '', '', 'linkage', '{"linkageid":"1","space":""}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 15, 1, 'edu_experience', '教育经历', '', '', 0, 0, '', '', 'textarea', '{"width":"100%","height":"46","defaultvalue":"","enablehtml":"0"}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 15, 1, 'work_experience', '工作经历', '', '', 0, 0, '', '', 'textarea', '{"width":"100%","height":"46","defaultvalue":"","enablehtml":"0"}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 15, 1, 'self_evaluation', '自我评价', '', '', 0, 0, '', '', 'textarea', '{"width":"100%","height":"46","defaultvalue":"","enablehtml":"0"}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 16, 2, 'title', '标题', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(171, 16, 2, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', '{"defaultvalue":""}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(172, 16, 2, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', '{"minnumber":"","defaultvalue":""}', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(169, 11, 1, 'upload_video', '视频1', '', '', 0, 0, '', '', 'videofile', '{"downloadlink":"1","downloadtype":"1","upload_allowext":"swf","isselectimage":"0","upload_number":"1"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 3, 0, 0),
(220, 11, 1, 'shipin2', '视频2', '', '', 0, 0, '', '', 'videofile', '{"downloadlink":"1","downloadtype":"1","upload_allowext":"swf","isselectimage":"0","upload_number":"10"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 4, 0, 0),
(174, 16, 2, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', '{"size":"100","defaultvalue":""}', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 0, 0),
(175, 16, 2, 'description', '摘要', '', '', 0, 255, '', '', 'textarea', '{"width":"98","height":"46","defaultvalue":"","enablehtml":"0"}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(176, 16, 2, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', '{"dateformat":"int","format":"Y-m-d H:i:s","defaulttype":"1","defaultvalue":""}', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(177, 16, 2, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', '{"toolbar":"full","defaultvalue":"","enablekeylink":"1","replacenum":"2","link_mode":"0","enablesaveimage":"1"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 0, 0),
(178, 16, 2, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', '{"size":"50","defaultvalue":"","show_type":"1","upload_maxsize":"1024","upload_allowext":"jpg|jpeg|gif|png|bmp","watermark":"0","isselectimage":"1","images_width":"","images_height":""}', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 0, 0),
(192, 16, 2, 'voteid', '添加投票', '', '', 0, 0, '', '', 'omnipotent', '{"formtext":"<input type=''text'' name=''info[voteid]'' id=''voteid'' value=''{FIELD_VALUE}'' size=''3''> \\r\\n<input type=''button'' value=\\"\\u9009\\u62e9\\u5df2\\u6709\\u6295\\u7968\\" onclick=\\"omnipotent(''selectid'',''?m=vote&c=vote&a=public_get_votelist&from_api=1'',''\\u9009\\u62e9\\u5df2\\u6709\\u6295\\u7968'')\\" class=\\"button\\">\\r\\n<input type=''button'' value=\\"\\u65b0\\u589e\\u6295\\u7968\\" onclick=\\"omnipotent(''addvote'',''?m=vote&c=vote&a=add&from_api=1'',''\\u6dfb\\u52a0\\u6295\\u7968'',0)\\" class=\\"button\\">","fieldtype":"mediumint","minnumber":"1"}', '', '', '', 0, 0, 0, 1, 0, 0, 1, 0, 21, 0, 0),
(179, 16, 2, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', '{"formtext":"<input type=''hidden'' name=''info[relation]'' id=''relation'' value=''{FIELD_VALUE}'' style=''50'' >\\r\\n<ul class=\\"list-dot\\" id=\\"relation_text\\"><\\/ul>\\r\\n<div>\\r\\n<input type=''button'' value=\\"\\u6dfb\\u52a0\\u76f8\\u5173\\" onclick=\\"omnipotent(''selectid'',''?m=content&c=content&a=public_relationlist&modelid={MODELID}'',''\\u6dfb\\u52a0\\u76f8\\u5173\\u6587\\u7ae0'',1)\\" class=\\"button\\" style=\\"width:66px;\\">\\r\\n<span class=\\"edit_content\\">\\r\\n<input type=''button'' value=\\"\\u663e\\u793a\\u5df2\\u6709\\" onclick=\\"show_relation({MODELID},{ID})\\" class=\\"button\\" style=\\"width:66px;\\">\\r\\n<\\/span>\\r\\n<\\/div>","fieldtype":"varchar","minnumber":"1"}', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 0, 0),
(180, 16, 2, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0),
(181, 16, 2, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', '{"fieldtype":"int","format":"Y-m-d H:i:s","defaulttype":"0"}', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(182, 16, 2, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', '{"cols":"4","width":"125"}', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 0, 0),
(183, 16, 2, 'groupids_view', '阅读权限', '', '', 0, 0, '', '', 'groupid', '{"groupids":""}', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 0, 0),
(184, 16, 2, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(185, 16, 2, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(186, 16, 2, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', '{"size":"","defaultvalue":""}', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(187, 16, 2, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', '{"options":"\\u5141\\u8bb8\\u8bc4\\u8bba|1\\r\\n\\u4e0d\\u5141\\u8bb8\\u8bc4\\u8bba|0","boxtype":"radio","fieldtype":"tinyint","minnumber":"1","width":"88","size":"1","defaultvalue":"1","outputtype":"1","filtertype":"0"}', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0),
(188, 16, 2, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(189, 16, 2, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', '{"minnumber":"1","maxnumber":"99999","decimaldigits":"0","defaultvalue":""}', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0),
(190, 16, 2, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(191, 16, 2, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 0, 0, 1, 0, 0, 30, 0, 0),
(193, 16, 2, 'copyfrom', '来源', '', '', 0, 100, '', '', 'copyfrom', '{"defaultvalue":""}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 8, 0, 0),
(194, 17, 1, 'catid', '栏目', '', '', 1, 6, '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'array (\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0),
(195, 17, 1, 'typeid', '类别', '', '', 0, 0, '', '', 'typeid', 'array (\n  ''minnumber'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '', '', 0, 1, 0, 1, 1, 1, 0, 0, 2, 0, 0),
(196, 17, 1, 'title', '时间点', '', 'inputtitle', 1, 80, '', '请输入标题', 'title', '', '', '', '', 0, 1, 0, 1, 1, 1, 1, 1, 4, 0, 0),
(197, 17, 1, 'keywords', '关键词', '多关键词之间用空格或者“,”隔开', '', 0, 40, '', '', 'keyword', 'array (\r\n  ''size'' => ''100'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '-99', '-99', 0, 1, 0, 1, 1, 1, 1, 0, 7, 1, 0),
(198, 17, 1, 'description', '描述', '', '', 0, 255, '', '', 'textarea', '{"width":"98","height":"300","defaultvalue":"","enablehtml":"0"}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 1, 10, 0, 0),
(199, 17, 1, 'updatetime', '更新时间', '', '', 0, 0, '', '', 'datetime', 'array (\r\n  ''dateformat'' => ''int'',\r\n  ''format'' => ''Y-m-d H:i:s'',\r\n  ''defaulttype'' => ''1'',\r\n  ''defaultvalue'' => '''',\r\n)', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0),
(200, 17, 1, 'content', '内容', '<div class="content_attr"><label><input name="add_introduce" type="checkbox"  value="1" checked>是否截取内容</label><input type="text" name="introcude_length" value="200" size="3">字符至内容摘要\r\n<label><input type=''checkbox'' name=''auto_thumb'' value="1" checked>是否获取内容第</label><input type="text" name="auto_thumb_no" value="1" size="2" class="">张图片作为标题图片\r\n</div>', '', 1, 999999, '', '内容不能为空', 'editor', 'array (\n  ''toolbar'' => ''full'',\n  ''defaultvalue'' => '''',\n  ''enablekeylink'' => ''1'',\n  ''replacenum'' => ''2'',\n  ''link_mode'' => ''0'',\n  ''enablesaveimage'' => ''1'',\n)', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 13, 1, 0),
(201, 17, 1, 'thumb', '缩略图', '', '', 0, 100, '', '', 'image', 'array (\n  ''size'' => ''50'',\n  ''defaultvalue'' => '''',\n  ''show_type'' => ''1'',\n  ''upload_maxsize'' => ''1024'',\n  ''upload_allowext'' => ''jpg|jpeg|gif|png|bmp'',\n  ''watermark'' => ''0'',\n  ''isselectimage'' => ''1'',\n  ''images_width'' => '''',\n  ''images_height'' => '''',\n)', '', '', '', 0, 1, 0, 0, 0, 1, 0, 1, 14, 1, 0);
INSERT INTO `v9_model_field` (`fieldid`, `modelid`, `siteid`, `field`, `name`, `tips`, `css`, `minlength`, `maxlength`, `pattern`, `errortips`, `formtype`, `setting`, `formattribute`, `unsetgroupids`, `unsetroleids`, `iscore`, `issystem`, `isunique`, `isbase`, `issearch`, `isadd`, `isfulltext`, `isposition`, `listorder`, `disabled`, `isomnipotent`) VALUES
(202, 17, 1, 'relation', '相关文章', '', '', 0, 0, '', '', 'omnipotent', 'array (\n  ''formtext'' => ''<input type=\\''hidden\\'' name=\\''info[relation]\\'' id=\\''relation\\'' value=\\''{FIELD_VALUE}\\'' style=\\''50\\'' >\r\n<ul class="list-dot" id="relation_text"></ul>\r\n<div>\r\n<input type=\\''button\\'' value="添加相关" onclick="omnipotent(\\''selectid\\'',\\''?m=content&c=content&a=public_relationlist&modelid={MODELID}\\'',\\''添加相关文章\\'',1)" class="button" style="width:66px;">\r\n<span class="edit_content">\r\n<input type=\\''button\\'' value="显示已有" onclick="show_relation({MODELID},{ID})" class="button" style="width:66px;">\r\n</span>\r\n</div>'',\n  ''fieldtype'' => ''varchar'',\n  ''minnumber'' => ''1'',\n)', '', '2,6,4,5,1,17,18,7', '', 0, 0, 0, 0, 0, 0, 1, 0, 15, 1, 0),
(203, 17, 1, 'pages', '分页方式', '', '', 0, 0, '', '', 'pages', '', '', '-99', '-99', 0, 0, 0, 1, 0, 0, 0, 0, 16, 1, 0),
(204, 17, 1, 'inputtime', '发布时间', '', '', 0, 0, '', '', 'datetime', 'array (\n  ''fieldtype'' => ''int'',\n  ''format'' => ''Y-m-d H:i:s'',\n  ''defaulttype'' => ''0'',\n)', '', '', '', 0, 1, 0, 0, 0, 0, 0, 1, 17, 0, 0),
(205, 17, 1, 'posids', '推荐位', '', '', 0, 0, '', '', 'posid', 'array (\n  ''cols'' => ''4'',\n  ''width'' => ''125'',\n)', '', '', '', 0, 1, 0, 1, 0, 0, 0, 0, 18, 1, 0),
(206, 17, 1, 'groupids_view', '阅读权限', '', '', 0, 100, '', '', 'groupid', 'array (\n  ''groupids'' => '''',\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 19, 1, 0),
(207, 17, 1, 'url', 'URL', '', '', 0, 100, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 50, 0, 0),
(208, 17, 1, 'listorder', '排序', '', '', 0, 6, '', '', 'number', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 51, 0, 0),
(209, 17, 1, 'template', '内容页模板', '', '', 0, 30, '', '', 'template', 'array (\n  ''size'' => '''',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0),
(210, 17, 1, 'allow_comment', '允许评论', '', '', 0, 0, '', '', 'box', 'array (\n  ''options'' => ''允许评论|1\r\n不允许评论|0'',\n  ''boxtype'' => ''radio'',\n  ''fieldtype'' => ''tinyint'',\n  ''minnumber'' => ''1'',\n  ''width'' => ''88'',\n  ''size'' => ''1'',\n  ''defaultvalue'' => ''1'',\n  ''outputtype'' => ''0'',\n)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 54, 1, 0),
(211, 17, 1, 'status', '状态', '', '', 0, 2, '', '', 'box', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 55, 0, 0),
(212, 17, 1, 'readpoint', '阅读收费', '', '', 0, 5, '', '', 'readpoint', 'array (\n  ''minnumber'' => ''1'',\n  ''maxnumber'' => ''99999'',\n  ''decimaldigits'' => ''0'',\n  ''defaultvalue'' => '''',\n)', '', '-99', '-99', 0, 0, 0, 0, 0, 0, 0, 0, 55, 1, 0),
(213, 17, 1, 'username', '用户名', '', '', 0, 20, '', '', 'text', '', '', '', '', 1, 1, 0, 1, 0, 0, 0, 0, 98, 0, 0),
(214, 17, 1, 'islink', '转向链接', '', '', 0, 0, '', '', 'islink', '', '', '', '', 0, 1, 0, 1, 0, 1, 0, 0, 20, 1, 0),
(218, 11, 1, 'haibao1', '精彩视频', '', '', 0, 0, '', '', 'images_dong', '{"upload_allowext":"gif|jpg|jpeg|png|bmp","isselectimage":"0","upload_number":"10"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 2, 0, 0),
(219, 11, 1, 'banner', '详情banner', '', '', 0, 0, '', '', 'image', '{"size":"","defaultvalue":"","show_type":"0","upload_maxsize":"","upload_allowext":"gif|jpg|jpeg|png|bmp","watermark":"0","isselectimage":"1","images_width":"","images_height":""}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0),
(221, 11, 1, 'shipin3', '视频3', '', '', 0, 0, '', '', 'videofile', '{"downloadlink":"1","downloadtype":"1","upload_allowext":"swf|mp4|flv","isselectimage":"0","upload_number":"10"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 5, 0, 0),
(222, 11, 1, 'film', '电影', '', '', 0, 0, '', '', 'images_dong', '{"upload_allowext":"gif|jpg|jpeg|png|bmp","isselectimage":"0","upload_number":"3"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(223, 11, 1, 'stage', '舞台剧', '', '', 0, 0, '', '', 'images_dong', '{"upload_allowext":"gif|jpg|jpeg|png|bmp","isselectimage":"0","upload_number":"3"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(224, 11, 1, 'yansheng', '衍生相关', '', '', 0, 0, '', '', 'images_dong', '{"upload_allowext":"gif|jpg|jpeg|png|bmp","isselectimage":"0","upload_number":"6"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(225, 11, 1, 'activity', '线上线下活动', '', '', 0, 0, '', '', 'images_dong', '{"upload_allowext":"gif|jpg|jpeg|png|bmp","isselectimage":"0","upload_number":"3"}', '', '', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(227, 11, 1, 'list_des', '列表描述', '', '', 0, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(228, 11, 1, 'time', '时长', '', '', 0, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(229, 11, 1, 'jishu', '技术', '', '', 0, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(230, 11, 1, 'shouzhong', '受众', '', '', 0, 0, '', '', 'text', '{"size":"50","defaultvalue":"","ispassword":"0"}', '', '', '', 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_module`
--

CREATE TABLE IF NOT EXISTS `v9_module` (
  `module` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '0000-00-00',
  `updatedate` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_module`
--

INSERT INTO `v9_module` (`module`, `name`, `url`, `iscore`, `version`, `description`, `setting`, `listorder`, `disabled`, `installdate`, `updatedate`) VALUES
('admin', 'admin', '', 1, '1.0', '', 'array (\n  ''admin_email'' => ''phpcms@phpcms.cn'',\n  ''adminaccessip'' => ''0'',\n  ''maxloginfailedtimes'' => ''8'',\n  ''maxiplockedtime'' => ''15'',\n  ''minrefreshtime'' => ''2'',\n  ''mail_type'' => ''1'',\n  ''mail_server'' => ''smtp.qq.com'',\n  ''mail_port'' => ''25'',\n  ''mail_user'' => ''phpcms.cn@foxmail.com'',\n  ''mail_auth'' => ''1'',\n  ''mail_from'' => ''phpcms.cn@foxmail.com'',\n  ''mail_password'' => '''',\n  ''errorlog_size'' => ''20'',\n)', 0, 0, '2010-10-18', '2010-10-18'),
('member', '会员', '', 1, '1.0', '', 'array (\n  ''allowregister'' => ''1'',\n  ''choosemodel'' => ''1'',\n  ''enablemailcheck'' => ''0'',\n  ''registerverify'' => ''0'',\n  ''showapppoint'' => ''0'',\n  ''rmb_point_rate'' => ''10'',\n  ''defualtpoint'' => ''0'',\n  ''defualtamount'' => ''0'',\n  ''showregprotocol'' => ''0'',\n  ''regprotocol'' => ''		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 '',\n  ''registerverifymessage'' => '' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}'',\n  ''forgetpassword'' => '' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}'',\n)', 0, 0, '2010-09-06', '2010-09-06'),
('pay', '支付', '', 1, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('digg', '顶一下', '', 0, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('special', '专题', '', 0, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('content', '内容模块', '', 1, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('search', '全站搜索', '', 0, '1.0', '', 'array (\n  ''fulltextenble'' => ''1'',\n  ''relationenble'' => ''1'',\n  ''suggestenable'' => ''1'',\n  ''sphinxenable'' => ''0'',\n  ''sphinxhost'' => ''10.228.134.102'',\n  ''sphinxport'' => ''9312'',\n)', 0, 0, '2010-09-06', '2010-09-06'),
('scan', '木马扫描', 'scan', 0, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('attachment', '附件', 'attachment', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('block', '碎片', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('collection', '采集模块', 'collection', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('dbsource', '数据源', '', 1, '', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('template', '模板风格', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('release', '发布点', '', 1, '1.0', '', '', 0, 0, '2010-09-01', '2010-09-06'),
('video', '视频库', '', 0, '1.0', '', '', 0, 0, '2012-09-28', '2012-09-28'),
('announce', '公告', 'announce/', 0, '1.0', '公告', '', 0, 0, '2017-11-05', '2017-11-05'),
('link', '友情链接', '', 0, '1.0', '', 'array (\n  1 => \n  array (\n    ''is_post'' => ''1'',\n    ''enablecheckcode'' => ''0'',\n  ),\n)', 0, 0, '2010-09-06', '2010-09-06'),
('message', '短消息', '', 0, '1.0', '', '', 0, 0, '2010-09-06', '2010-09-06'),
('poster', '广告模块', 'poster/', 0, '1.0', '广告模块', '', 0, 0, '2017-11-05', '2017-11-05'),
('formguide', '表单向导', 'formguide/', 0, '1.0', 'formguide', 'array (\n  ''allowmultisubmit'' => ''1'',\n  ''interval'' => ''30'',\n  ''allowunreg'' => ''0'',\n  ''mailmessage'' => ''用户向我们提交了表单数据，赶快去看看吧。'',\n)', 0, 0, '2010-10-20', '2010-10-20'),
('wap', '手机门户', 'wap/', 0, '1.0', '手机门户', '', 0, 0, '2017-11-05', '2017-11-05'),
('tag', '标签向导', 'tag/', 0, '1.0', '标签向导', '', 0, 0, '2017-11-05', '2017-11-05');

-- --------------------------------------------------------

--
-- 表的结构 `v9_news`
--

CREATE TABLE IF NOT EXISTS `v9_news` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `v9_news`
--

INSERT INTO `v9_news` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `description`, `posids`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`) VALUES
(1, 22, 57, '公司动态测试1', '', '', '动态 公司', '世界上的就是打开', 0, 'http://yangshi.localhost.com/index.php?m=content&c=index&a=show&catid=10&id=1', 0, 99, 1, 0, 'phpcms', 1510821582, 1510821606),
(2, 22, 57, '公司动态新闻测试2', '', '', '动态 公司 新闻', '说的就是的就是打开', 0, 'http://yangshi.localhost.com/index.php?m=content&c=index&a=show&catid=10&id=2', 0, 99, 1, 0, 'phpcms', 1510821608, 1510821625);

-- --------------------------------------------------------

--
-- 表的结构 `v9_news_data`
--

CREATE TABLE IF NOT EXISTS `v9_news_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` mediumtext NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `voteid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `copyfrom` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_news_data`
--

INSERT INTO `v9_news_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `relation`, `voteid`, `allow_comment`, `copyfrom`) VALUES
(1, '世界上的就是打开', 0, '', 0, 10000, '', 0, '', 0, 1, '|0'),
(2, '说的就是的就是打开', 0, '', 0, 10000, '', 0, '', 0, 1, '|0');

-- --------------------------------------------------------

--
-- 表的结构 `v9_page`
--

CREATE TABLE IF NOT EXISTS `v9_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) NOT NULL,
  `style` varchar(24) NOT NULL,
  `keywords` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_page`
--

INSERT INTO `v9_page` (`catid`, `title`, `style`, `keywords`, `content`, `template`, `updatetime`) VALUES
(2, '公司介绍', ';', '', '这里是公司介绍的内容', '', 0),
(3, '企业文化', ';', '', '这里是企业文化的内容', '', 0),
(4, '组织架构', ';', '', '这里是组织架构的内容', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_account`
--

CREATE TABLE IF NOT EXISTS `v9_pay_account` (
`id` mediumint(8) unsigned NOT NULL,
  `trade_sn` char(50) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `contactname` char(50) NOT NULL,
  `email` char(40) NOT NULL,
  `telephone` char(20) NOT NULL,
  `discount` float(8,2) NOT NULL DEFAULT '0.00',
  `money` char(8) NOT NULL,
  `quantity` int(8) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `usernote` char(255) NOT NULL,
  `pay_id` tinyint(3) NOT NULL,
  `pay_type` enum('offline','recharge','selfincome','online') NOT NULL DEFAULT 'recharge',
  `payment` char(90) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  `ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  `status` enum('succ','failed','error','progress','timeout','cancel','waitting','unpay') NOT NULL DEFAULT 'unpay',
  `adminnote` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_payment`
--

CREATE TABLE IF NOT EXISTS `v9_pay_payment` (
`pay_id` tinyint(3) unsigned NOT NULL,
  `name` varchar(120) NOT NULL,
  `pay_name` varchar(120) NOT NULL,
  `pay_code` varchar(20) NOT NULL,
  `pay_desc` text NOT NULL,
  `pay_method` tinyint(1) DEFAULT NULL,
  `pay_fee` varchar(10) NOT NULL,
  `config` text NOT NULL,
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_pay_spend`
--

CREATE TABLE IF NOT EXISTS `v9_pay_spend` (
`id` int(10) unsigned NOT NULL,
  `creat_at` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logo` varchar(20) NOT NULL,
  `value` int(5) NOT NULL,
  `op_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `op_username` char(20) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_picture`
--

CREATE TABLE IF NOT EXISTS `v9_picture` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_picture_data`
--

CREATE TABLE IF NOT EXISTS `v9_picture_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `pictureurls` mediumtext NOT NULL,
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_position`
--

CREATE TABLE IF NOT EXISTS `v9_position` (
`posid` smallint(5) unsigned NOT NULL,
  `modelid` smallint(5) unsigned DEFAULT '0',
  `catid` smallint(5) unsigned DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  `extention` char(100) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `v9_position`
--

INSERT INTO `v9_position` (`posid`, `modelid`, `catid`, `name`, `maxnum`, `extention`, `listorder`, `siteid`, `thumb`) VALUES
(1, 0, 0, '首页焦点图推荐', 20, NULL, 1, 1, ''),
(2, 0, 0, '首页头条推荐', 20, NULL, 4, 1, ''),
(13, 82, 0, '栏目页焦点图', 20, NULL, 0, 1, ''),
(5, 69, 0, '推荐下载', 20, NULL, 0, 1, ''),
(8, 30, 54, '图片频道首页焦点图', 20, NULL, 0, 1, ''),
(9, 0, 0, '网站顶部推荐', 20, NULL, 0, 1, ''),
(10, 0, 0, '栏目首页推荐', 20, NULL, 0, 1, ''),
(12, 0, 0, '首页图片推荐', 20, NULL, 0, 1, ''),
(14, 0, 0, '视频首页焦点图', 20, '', 0, 1, ''),
(15, 0, 0, '视频首页头条推荐', 20, '', 0, 1, ''),
(16, 0, 0, '视频首页每日热点', 20, '', 0, 1, ''),
(17, 0, 0, '视频栏目精彩推荐', 20, '', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_position_data`
--

CREATE TABLE IF NOT EXISTS `v9_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `modelid` smallint(6) unsigned DEFAULT '0',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `data` mediumtext,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `listorder` mediumint(8) DEFAULT '0',
  `expiration` int(10) NOT NULL,
  `extention` char(30) DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_poster`
--

CREATE TABLE IF NOT EXISTS `v9_poster` (
`id` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL,
  `spaceid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `setting` text NOT NULL,
  `startdate` int(10) unsigned NOT NULL DEFAULT '0',
  `enddate` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicks` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `v9_poster`
--

INSERT INTO `v9_poster` (`id`, `siteid`, `name`, `spaceid`, `type`, `setting`, `startdate`, `enddate`, `addtime`, `hits`, `clicks`, `listorder`, `disabled`) VALUES
(22, 1, '首页背景图', 13, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1117\\/20171117114327776.png","alt":""}}', 1510889552, 1513481552, 1510889623, 0, 0, 0, 0),
(20, 1, '姚晨美图', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116092222477.jpg","alt":""}}', 1510838528, 1513430528, 1510838545, 0, 0, 0, 0),
(21, 1, '井柏然', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116092245311.jpg","alt":""}}', 1510838554, 1513430554, 1510838568, 0, 0, 0, 0),
(19, 1, '保剑锋', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116092153523.jpg","alt":""}}', 1510838492, 1513430492, 1510838517, 0, 0, 0, 0),
(18, 1, '沙溢美图', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116092123576.jpg","alt":""}}', 1510838466, 1513430466, 1510838486, 0, 0, 0, 0),
(17, 1, '冯绍峰', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116092044771.jpg","alt":""}}', 1510838393, 1513430393, 1510838448, 0, 0, 0, 0),
(16, 1, '杜淳美图', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116091944405.png","alt":""}}', 1510838369, 1513430369, 1510838390, 0, 0, 0, 0),
(15, 1, '马苏美图', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116091852455.png","alt":""}}', 1510838318, 1513430318, 1510838358, 0, 0, 0, 0),
(13, 1, '杨颖美图', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116091654109.png","alt":""}}', 1510838146, 1513430146, 1510838270, 0, 0, 0, 0),
(14, 1, '霍思燕', 12, 'images', '{"1":{"linkurl":"","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116091822672.jpg","alt":""}}', 1510838274, 1513430274, 1510838306, 0, 0, 0, 0),
(11, 1, 'banner1', 11, 'images', '{"1":{"linkurl":"http:\\/\\/www.baidu.com","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116033520964.jpg","alt":""}}', 1510817634, 1513409634, 1510817728, 6, 1, 0, 0),
(12, 1, 'banner2', 11, 'images', '{"1":{"linkurl":"http:\\/\\/www.sina.com.cn","imageurl":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1116\\/20171116035251612.jpg","alt":""}}', 1510818727, 1513410727, 1510818776, 6, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_poster_201711`
--

CREATE TABLE IF NOT EXISTS `v9_poster_201711` (
`id` int(10) unsigned NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `v9_poster_201711`
--

INSERT INTO `v9_poster_201711` (`id`, `pid`, `siteid`, `spaceid`, `username`, `area`, `ip`, `referer`, `clicktime`, `type`) VALUES
(1, 11, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php?m=poster&c=space&a=public_preview&spaceid=11&pc_hash=sWNDYG', 1510818784, 0),
(2, 12, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php?m=poster&c=space&a=public_preview&spaceid=11&pc_hash=sWNDYG', 1510818784, 0),
(3, 11, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php?m=poster&c=space&a=public_preview&spaceid=11&pc_hash=sWNDYG', 1510818832, 0),
(4, 12, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php?m=poster&c=space&a=public_preview&spaceid=11&pc_hash=sWNDYG', 1510818832, 0),
(5, 11, 1, 0, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php?m=poster&c=space&a=public_preview&spaceid=11&pc_hash=sWNDYG', 1510818851, 1),
(6, 12, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php?m=poster&c=space&a=public_preview&spaceid=11&pc_hash=sWNDYG', 1510819367, 0),
(7, 11, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php?m=poster&c=space&a=public_preview&spaceid=11&pc_hash=sWNDYG', 1510819367, 0),
(8, 12, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php', 1510819460, 0),
(9, 11, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/index.php', 1510819460, 0),
(10, 12, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/', 1510820204, 0),
(11, 11, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/', 1510820204, 0),
(12, 12, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/', 1510820253, 0),
(13, 11, 1, 11, '', 'LAN', '127.0.0.1', 'http://yangshi.localhost.com/', 1510820253, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_poster_space`
--

CREATE TABLE IF NOT EXISTS `v9_poster_space` (
`spaceid` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(50) NOT NULL,
  `type` char(30) NOT NULL,
  `path` char(40) NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `setting` char(100) NOT NULL,
  `description` char(100) NOT NULL,
  `items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `v9_poster_space`
--

INSERT INTO `v9_poster_space` (`spaceid`, `siteid`, `name`, `type`, `path`, `width`, `height`, `setting`, `description`, `items`, `disabled`) VALUES
(13, 1, '首页背景图', 'banner', 'poster_js/13.js', 1920, 1800, '{"paddleft":"","paddtop":""}', '', 1, 0),
(12, 1, '首页动画家族', 'banner', 'poster_js/12.js', 280, 350, '{"paddleft":"","paddtop":""}', '', 9, 0),
(11, 1, '首页banner', 'imagechange', 'poster_js/11.js', 1920, 800, '{"paddleft":"","paddtop":""}', '', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_queue`
--

CREATE TABLE IF NOT EXISTS `v9_queue` (
`id` int(10) NOT NULL,
  `type` char(5) DEFAULT NULL,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `path` varchar(100) DEFAULT NULL,
  `status1` tinyint(1) DEFAULT '0',
  `status2` tinyint(1) DEFAULT '0',
  `status3` tinyint(1) DEFAULT '0',
  `status4` tinyint(1) DEFAULT '0',
  `times` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_release_point`
--

CREATE TABLE IF NOT EXISTS `v9_release_point` (
`id` mediumint(8) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `port` varchar(10) DEFAULT '21',
  `pasv` tinyint(1) DEFAULT '0',
  `ssl` tinyint(1) DEFAULT '0',
  `path` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_search`
--

CREATE TABLE IF NOT EXISTS `v9_search` (
`searchid` int(10) unsigned NOT NULL,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adddate` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `v9_search`
--

INSERT INTO `v9_search` (`searchid`, `typeid`, `id`, `adddate`, `data`, `siteid`) VALUES
(12, 0, 4, 1512043891, '动画视频 动画 视频 动画 考虑 视频 手机 圣诞节 大家 了解 收到 觉得 数码 速度 深刻 几十 速度加快 临时 肯定 就是 结束 时代 快乐 分钟 离开 决定 借口 历史 开始', 1),
(2, 1, 1, 1510821582, '公司动态测试1 动态 公司 就是 世界 公司 动态 打开 测试', 1),
(3, 1, 2, 1510821608, '公司动态新闻测试2 动态 公司 新闻 就是 打开 新闻 动态 公司 测试', 1),
(4, 1, 3, 1510821630, '行业资讯测试1 行业 资讯 就是 考虑 思考 时间 行业 资讯 测试', 1),
(5, 1, 4, 1510821655, '行业资讯测试2 行业 资讯 就是 看到 行业 资讯 就是说 测试', 1),
(6, 65, 1, 1511859345, '1991  速度 睡觉 开机 来看 介绍 大家 圣诞节 开始 速度加快', 1),
(7, 65, 2, 1511859383, '1992  房间 四大 趋势 打开 圣诞节 快乐', 1),
(8, 65, 3, 1511871345, '1992.02  空间 睡觉 多久 进来 速度 圣诞节 快乐 四大', 1),
(9, 65, 4, 1511871367, '1994.05  圣诞节 大家 评委 就是 打击 介绍 深刻 设计 来到 程序 交流 收到 快乐 来看 拍摄 模块', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_search_keyword`
--

CREATE TABLE IF NOT EXISTS `v9_search_keyword` (
  `keyword` char(20) NOT NULL,
  `pinyin` char(20) NOT NULL,
  `searchnums` int(10) unsigned NOT NULL,
  `data` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_session`
--

CREATE TABLE IF NOT EXISTS `v9_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_session`
--

INSERT INTO `v9_session` (`sessionid`, `userid`, `ip`, `lastvisit`, `roleid`, `groupid`, `m`, `c`, `a`, `data`) VALUES
('50ghb6hkpukiek81o6443d9mr2', 1, '127.0.0.1', 1512136936, 1, 0, 'admin', 'index', 'public_session_life', 'code|s:0:"";userid|s:1:"1";roleid|s:1:"1";pc_hash|s:6:"QD91KR";lock_screen|i:0;');

-- --------------------------------------------------------

--
-- 表的结构 `v9_site`
--

CREATE TABLE IF NOT EXISTS `v9_site` (
`siteid` smallint(5) unsigned NOT NULL,
  `name` char(30) DEFAULT '',
  `dirname` char(255) DEFAULT '',
  `domain` char(255) DEFAULT '',
  `site_title` char(255) DEFAULT '',
  `keywords` char(255) DEFAULT '',
  `description` char(255) DEFAULT '',
  `release_point` text,
  `default_style` char(50) DEFAULT NULL,
  `template` text,
  `setting` mediumtext,
  `uuid` char(40) DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `v9_site`
--

INSERT INTO `v9_site` (`siteid`, `name`, `dirname`, `domain`, `site_title`, `keywords`, `description`, `release_point`, `default_style`, `template`, `setting`, `uuid`) VALUES
(1, '中文站点', '', 'http://yangshi.localhost.com/', 'PHPCMS演示站', 'PHPCMS演示站', 'PHPCMS演示站', '', 'default', 'default', '{"upload_maxsize":"8192","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf|mp4|flv","watermark_enable":"0","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\/images\\/water\\/\\/mark.png","watermark_pct":"0","watermark_quality":"80","watermark_pos":"9"}', '0ae66acf-c1cd-11e7-bc03-001bb1f03571'),
(2, '英文站点', 'en', 'http://yangshi.localhost.com/html/en/', '英文站点', '', '', '', 'en', 'en', '{"upload_maxsize":"8092","upload_allowext":"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf","watermark_enable":"0","watermark_minwidth":"300","watermark_minheight":"300","watermark_img":"statics\\/images\\/water\\/http:\\/\\/yangshi.localhost.com\\/mark.gif","watermark_pct":"100","watermark_quality":"80","watermark_pos":"9"}', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_special`
--

CREATE TABLE IF NOT EXISTS `v9_special` (
`id` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL,
  `typeids` char(100) NOT NULL,
  `thumb` char(100) NOT NULL,
  `banner` char(100) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ispage` tinyint(1) unsigned NOT NULL,
  `filename` char(40) NOT NULL,
  `pics` char(100) NOT NULL,
  `voteid` char(60) NOT NULL,
  `style` char(20) NOT NULL,
  `index_template` char(40) NOT NULL,
  `list_template` char(40) NOT NULL,
  `show_template` char(60) NOT NULL,
  `css` text NOT NULL,
  `username` char(40) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL,
  `elite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isvideo` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_special_content`
--

CREATE TABLE IF NOT EXISTS `v9_special_content` (
`id` mediumint(8) unsigned NOT NULL,
  `specialid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `style` char(24) NOT NULL,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thumb` char(100) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `curl` char(15) NOT NULL,
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isdata` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `videoid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_special_c_data`
--

CREATE TABLE IF NOT EXISTS `v9_special_c_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `paginationtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `style` char(20) NOT NULL,
  `show_template` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sphinx_counter`
--

CREATE TABLE IF NOT EXISTS `v9_sphinx_counter` (
  `counter_id` int(11) unsigned NOT NULL,
  `max_doc_id` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_admin`
--

CREATE TABLE IF NOT EXISTS `v9_sso_admin` (
`id` smallint(6) NOT NULL,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT '0',
  `lastlogin` int(10) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v9_sso_admin`
--

INSERT INTO `v9_sso_admin` (`id`, `username`, `password`, `encrypt`, `issuper`, `lastlogin`, `ip`) VALUES
(1, 'phpcms', '47759f24555ff1b4d7973fc5dd0f04d7', 'FySAqN', 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_applications`
--

CREATE TABLE IF NOT EXISTS `v9_sso_applications` (
`appid` smallint(6) unsigned NOT NULL,
  `type` char(16) NOT NULL DEFAULT '',
  `name` char(20) NOT NULL DEFAULT '',
  `url` char(255) NOT NULL DEFAULT '',
  `authkey` char(255) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `apifilename` char(30) NOT NULL DEFAULT 'phpsso.php',
  `charset` char(8) NOT NULL DEFAULT '',
  `synlogin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v9_sso_applications`
--

INSERT INTO `v9_sso_applications` (`appid`, `type`, `name`, `url`, `authkey`, `ip`, `apifilename`, `charset`, `synlogin`) VALUES
(1, 'phpcms_v9', 'phpcms v9', 'http://yangshi.localhost.com/', 'iVIgkqg0HyRhceYzBffD7gFgUeoqnDUh', '', 'api.php?op=phpsso', 'utf-8', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_members`
--

CREATE TABLE IF NOT EXISTS `v9_sso_members` (
`uid` int(10) unsigned NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `random` char(8) NOT NULL DEFAULT '',
  `email` char(32) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '0',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `appname` char(15) NOT NULL,
  `type` enum('app','connect') DEFAULT NULL,
  `avatar` tinyint(1) NOT NULL DEFAULT '0',
  `ucuserid` mediumint(8) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_messagequeue`
--

CREATE TABLE IF NOT EXISTS `v9_sso_messagequeue` (
`id` int(10) unsigned NOT NULL,
  `operation` char(32) NOT NULL,
  `succeed` tinyint(1) NOT NULL DEFAULT '0',
  `totalnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `noticedata` mediumtext NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `appstatus` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_session`
--

CREATE TABLE IF NOT EXISTS `v9_sso_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_sso_settings`
--

CREATE TABLE IF NOT EXISTS `v9_sso_settings` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_sso_settings`
--

INSERT INTO `v9_sso_settings` (`name`, `data`) VALUES
('denyemail', ''),
('denyusername', ''),
('creditrate', ''),
('sp4', ''),
('ucenter', '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_tag`
--

CREATE TABLE IF NOT EXISTS `v9_tag` (
`id` mediumint(8) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` text NOT NULL,
  `name` char(40) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module` char(20) NOT NULL,
  `action` char(20) NOT NULL,
  `data` text NOT NULL,
  `page` char(15) NOT NULL,
  `return` char(20) NOT NULL,
  `cache` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_template_bak`
--

CREATE TABLE IF NOT EXISTS `v9_template_bak` (
`id` int(10) NOT NULL,
  `creat_at` int(10) unsigned DEFAULT '0',
  `fileid` char(50) DEFAULT NULL,
  `userid` mediumint(8) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `template` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_times`
--

CREATE TABLE IF NOT EXISTS `v9_times` (
  `username` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_time_l`
--

CREATE TABLE IF NOT EXISTS `v9_time_l` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `v9_time_l`
--

INSERT INTO `v9_time_l` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `description`, `posids`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`) VALUES
(1, 7, 0, '1991', '', '', '', '速度加快速度圣诞节开始了大家上的介绍来的; \r\n爱睡觉了开机速度来看', 0, 'http://yangshi.localhost.com/index.php?m=content&c=index&a=show&catid=7&id=1', 0, 99, 1, 0, 'phpcms', 1511859345, 1511859381),
(2, 7, 0, '1992', '', '', '', '圣诞节快乐的房间打开了房间趋势几点睡的看四大皆空', 0, 'http://yangshi.localhost.com/index.php?m=content&c=index&a=show&catid=7&id=2', 0, 99, 1, 0, 'phpcms', 1511859383, 1511859392),
(3, 8, 0, '1992.02', '', '', '', '圣诞节快乐四大皆空l速度进来第六空间\r\n睡觉了多久了', 0, 'http://yangshi.localhost.com/index.php?m=content&c=index&a=show&catid=8&id=3', 0, 99, 1, 0, 'phpcms', 1511871345, 1511871366),
(4, 8, 0, '1994.05', '', '', '', '圣诞节收到了交流是看得见; 圣诞节快乐大家是大家来看围殴拍摄的程序模块设计的评委就是;都没了; 上到哪啦; 撒娇的劳动节来到了快圣诞节受打击了深刻的介绍到了快圣诞节', 0, 'http://yangshi.localhost.com/index.php?m=content&c=index&a=show&catid=8&id=4', 0, 99, 1, 0, 'phpcms', 1511871367, 1511871408);

-- --------------------------------------------------------

--
-- 表的结构 `v9_time_l_data`
--

CREATE TABLE IF NOT EXISTS `v9_time_l_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_time_l_data`
--

INSERT INTO `v9_time_l_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `allow_comment`, `relation`) VALUES
(1, '', 0, '', 0, 0, '', 0, 1, ''),
(2, '', 0, '', 0, 0, '', 0, 1, ''),
(3, '', 0, '', 0, 0, '', 0, 1, ''),
(4, '', 0, '', 0, 0, '', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_type`
--

CREATE TABLE IF NOT EXISTS `v9_type` (
`typeid` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` char(15) NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typedir` char(20) NOT NULL,
  `url` char(100) NOT NULL,
  `template` char(30) NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- 转存表中的数据 `v9_type`
--

INSERT INTO `v9_type` (`typeid`, `siteid`, `module`, `modelid`, `name`, `parentid`, `typedir`, `url`, `template`, `listorder`, `description`) VALUES
(52, 1, 'search', 0, '专题', 0, 'special', '', '', 4, '专题'),
(1, 1, 'search', 1, '新闻', 0, '', '', '', 1, '新闻模型搜索'),
(2, 1, 'search', 2, '下载', 0, '', '', '', 3, '下载模型搜索'),
(3, 1, 'search', 3, '图片', 0, '', '', '', 2, '图片模型搜索'),
(53, 1, 'search', 12, '招聘模型', 0, '', '', '', 0, ''),
(54, 1, 'search', 13, '公司动态', 0, '', '', '', 0, ''),
(55, 1, 'content', 0, '台、总公司要闻\r', 0, '', '', '', 0, ''),
(56, 1, 'content', 0, '公司新闻\r', 0, '', '', '', 0, ''),
(57, 1, 'content', 0, '公司动态\r', 0, '', '', '', 0, ''),
(58, 1, 'content', 0, '党群工作\r', 0, '', '', '', 0, ''),
(59, 1, 'content', 0, '交流合作\r', 0, '', '', '', 0, ''),
(60, 1, 'content', 0, '动画影视资讯\r', 0, '', '', '', 0, ''),
(61, 1, 'content', 0, '其他活动', 0, '', '', '', 0, ''),
(62, 1, 'content', 0, '政策新闻\r', 0, '', '', '', 0, ''),
(63, 1, 'content', 0, '业内资讯\r', 0, '', '', '', 0, ''),
(64, 1, 'content', 0, '行业研究', 0, '', '', '', 0, ''),
(65, 1, 'search', 17, '时间轴', 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `v9_urlrule`
--

CREATE TABLE IF NOT EXISTS `v9_urlrule` (
`urlruleid` smallint(5) unsigned NOT NULL,
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlrule` varchar(255) NOT NULL,
  `example` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `v9_urlrule`
--

INSERT INTO `v9_urlrule` (`urlruleid`, `module`, `file`, `ishtml`, `urlrule`, `example`) VALUES
(1, 'content', 'category', 1, '{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html', 'news/china/1000.html'),
(6, 'content', 'category', 0, 'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}', 'index.php?m=content&c=index&a=lists&catid=1&page=1'),
(11, 'content', 'show', 1, '{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html', '2010/catdir_0720/1_2.html'),
(12, 'content', 'show', 1, '{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html', 'it/product/2010/0720/1_2.html'),
(16, 'content', 'show', 0, 'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}', 'index.php?m=content&c=index&a=show&catid=1&id=1'),
(17, 'content', 'show', 0, 'show-{$catid}-{$id}-{$page}.html', 'show-1-2-1.html'),
(18, 'content', 'show', 0, 'content-{$catid}-{$id}-{$page}.html', 'content-1-2-1.html'),
(30, 'content', 'category', 0, 'list-{$catid}-{$page}.html', 'list-1-1.html');

-- --------------------------------------------------------

--
-- 表的结构 `v9_video`
--

CREATE TABLE IF NOT EXISTS `v9_video` (
`id` mediumint(8) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `vision` varchar(255) NOT NULL DEFAULT '',
  `video_category` varchar(255) NOT NULL DEFAULT '',
  `list_des` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `v9_video`
--

INSERT INTO `v9_video` (`id`, `catid`, `typeid`, `title`, `style`, `thumb`, `keywords`, `description`, `posids`, `url`, `listorder`, `status`, `sysadd`, `islink`, `username`, `inputtime`, `updatetime`, `vision`, `video_category`, `list_des`) VALUES
(4, 9, 0, '动画视频', '', 'http://yangshi.localhost.com/uploadfile/2017/1130/20171130082831104.jpg', '动画 视频', '手机的历史的借口临时决定离开卡里的啊;的开始考虑的圣诞节卡洛斯;觉得,山东矿机山东矿机手机, 撒大家;阿兰卡的数码快了解打卡机速度加快速度\r\n啥都没了深刻的几十块的了解收到没考虑到', 0, 'http://yangshi.localhost.com/index.php?m=content&c=index&a=show&catid=9&id=4', 0, 99, 1, 0, 'phpcms', 1512043891, 1512134901, '', '', '圣诞节快乐时代结束了肯定就是看了大家');

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_content`
--

CREATE TABLE IF NOT EXISTS `v9_video_content` (
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `videoid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_data`
--

CREATE TABLE IF NOT EXISTS `v9_video_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `video` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upload_video` varchar(255) NOT NULL DEFAULT '',
  `haibao1` mediumtext NOT NULL,
  `banner` varchar(255) NOT NULL DEFAULT '',
  `shipin2` varchar(255) NOT NULL DEFAULT '',
  `shipin3` varchar(255) NOT NULL DEFAULT '',
  `film` mediumtext NOT NULL,
  `stage` mediumtext NOT NULL,
  `yansheng` mediumtext NOT NULL,
  `activity` mediumtext NOT NULL,
  `time` varchar(255) NOT NULL DEFAULT '',
  `jishu` varchar(255) NOT NULL DEFAULT '',
  `shouzhong` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_video_data`
--

INSERT INTO `v9_video_data` (`id`, `content`, `readpoint`, `groupids_view`, `paginationtype`, `maxcharperpage`, `template`, `paytype`, `allow_comment`, `relation`, `video`, `upload_video`, `haibao1`, `banner`, `shipin2`, `shipin3`, `film`, `stage`, `yansheng`, `activity`, `time`, `jishu`, `shouzhong`) VALUES
(4, '', 0, '', 0, 0, '', 0, 1, '', 0, 'http://player.youku.com/player.php/sid/XMjc3ODU1NzkwNA==/v.swf|', '{"alia":"\\u7cbe\\u5f69\\u89c6\\u9891|Wonderfull video","pic":{"0":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081303216.jpg","alt":"dongx_09"},"1":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347495.jpg","alt":"dongx_09"},"2":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347315.jpg","alt":"dongx_09"}}}', 'http://yangshi.localhost.com/uploadfile/2017/1130/20171130081619811.jpg', 'http://player.youku.com/player.php/sid/XMjc3ODU1NzkwNA==/v.swf|', 'http://player.youku.com/player.php/sid/XMjc3ODU1NzkwNA==/v.swf|', '{"alia":"\\u7535\\u5f71|film","pic":{"0":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081303216.jpg","alt":"\\u54c7\\u54c8\\u54c8"},"1":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347495.jpg","alt":"\\u54c7\\u54c8\\u54c8\\u54c8"},"2":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347315.jpg","alt":"\\u54c7\\u54c8\\u54c8\\u54c8"}}}', '{"alia":"\\u821e\\u53f0\\u5267|stage show","pic":{"0":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081303216.jpg","alt":"dongx_09"},"1":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347495.jpg","alt":"dongx_09"},"2":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347315.jpg","alt":"dongx_09"}}}', '{"alia":"\\u884d\\u751f\\u76f8\\u5173|yansheng","pic":{"0":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081531300.jpg","alt":"yansheng_01"},"1":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081531365.jpg","alt":"yansheng_03"},"2":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081531524.jpg","alt":"yansheng_04"},"3":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081531920.jpg","alt":"yansheng_07"},"4":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081531496.jpg","alt":"yansheng_09"},"5":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081532194.jpg","alt":"yansheng_11"}}}', '{"alia":"\\u7ebf\\u4e0a\\u7ebf\\u4e0b\\u6d3b\\u52a8|activity","pic":{"0":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081303216.jpg","alt":"dongx_09"},"1":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347315.jpg","alt":"dongx_09"},"2":{"url":"http:\\/\\/yangshi.localhost.com\\/uploadfile\\/2017\\/1130\\/20171130081347495.jpg","alt":"dongx_09"}}}', '120 集 X 13分钟', '二维', '4-10岁');

-- --------------------------------------------------------

--
-- 表的结构 `v9_video_store`
--

CREATE TABLE IF NOT EXISTS `v9_video_store` (
`videoid` int(10) unsigned NOT NULL,
  `title` char(60) NOT NULL,
  `vid` char(40) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `picpath` char(120) NOT NULL,
  `size` char(20) NOT NULL,
  `timelen` mediumint(9) NOT NULL DEFAULT '0',
  `userupload` tinyint(1) NOT NULL DEFAULT '0',
  `channelid` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `v9_wap`
--

CREATE TABLE IF NOT EXISTS `v9_wap` (
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sitename` char(30) NOT NULL,
  `logo` char(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `setting` mediumtext,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `v9_wap`
--

INSERT INTO `v9_wap` (`siteid`, `sitename`, `logo`, `domain`, `setting`, `status`) VALUES
(1, 'PHPCMS手机门户', '/statics/images/wap/wlogo.gif', '', 'array (\n  ''listnum'' => ''10'',\n  ''thumb_w'' => ''220'',\n  ''thumb_h'' => ''0'',\n  ''c_num'' => ''1000'',\n  ''index_template'' => ''index'',\n  ''category_template'' => ''category'',\n  ''list_template'' => ''list'',\n  ''show_template'' => ''show'',\n)', 1);

-- --------------------------------------------------------

--
-- 表的结构 `v9_wap_type`
--

CREATE TABLE IF NOT EXISTS `v9_wap_type` (
`typeid` smallint(5) NOT NULL,
  `cat` smallint(5) NOT NULL,
  `parentid` smallint(5) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `siteid` smallint(5) NOT NULL,
  `listorder` smallint(5) DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v9_wap_type`
--

INSERT INTO `v9_wap_type` (`typeid`, `cat`, `parentid`, `typename`, `siteid`, `listorder`) VALUES
(1, 9, 0, '动漫家族', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v9_workflow`
--

CREATE TABLE IF NOT EXISTS `v9_workflow` (
`workflowid` smallint(5) unsigned NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `steps` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workname` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `setting` text NOT NULL,
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `v9_workflow`
--

INSERT INTO `v9_workflow` (`workflowid`, `siteid`, `steps`, `workname`, `description`, `setting`, `flag`) VALUES
(1, 1, 1, '一级审核', '审核一次', '', 0),
(2, 1, 2, '二级审核', '审核两次', '', 0),
(3, 1, 3, '三级审核', '审核三次', '', 0),
(4, 1, 4, '四级审核', '四级审核', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `v9_admin`
--
ALTER TABLE `v9_admin`
 ADD PRIMARY KEY (`userid`), ADD KEY `username` (`username`);

--
-- Indexes for table `v9_admin_panel`
--
ALTER TABLE `v9_admin_panel`
 ADD UNIQUE KEY `userid` (`menuid`,`userid`);

--
-- Indexes for table `v9_admin_role`
--
ALTER TABLE `v9_admin_role`
 ADD PRIMARY KEY (`roleid`), ADD KEY `listorder` (`listorder`), ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `v9_admin_role_priv`
--
ALTER TABLE `v9_admin_role_priv`
 ADD KEY `roleid` (`roleid`,`m`,`c`,`a`,`siteid`);

--
-- Indexes for table `v9_announce`
--
ALTER TABLE `v9_announce`
 ADD PRIMARY KEY (`aid`), ADD KEY `siteid` (`siteid`,`passed`,`endtime`);

--
-- Indexes for table `v9_attachment`
--
ALTER TABLE `v9_attachment`
 ADD PRIMARY KEY (`aid`), ADD KEY `authcode` (`authcode`);

--
-- Indexes for table `v9_attachment_index`
--
ALTER TABLE `v9_attachment_index`
 ADD KEY `keyid` (`keyid`), ADD KEY `aid` (`aid`);

--
-- Indexes for table `v9_badword`
--
ALTER TABLE `v9_badword`
 ADD PRIMARY KEY (`badid`), ADD UNIQUE KEY `badword` (`badword`), ADD KEY `usetimes` (`replaceword`,`listorder`), ADD KEY `hits` (`listorder`);

--
-- Indexes for table `v9_block`
--
ALTER TABLE `v9_block`
 ADD PRIMARY KEY (`id`), ADD KEY `pos` (`pos`), ADD KEY `type` (`type`), ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_block_history`
--
ALTER TABLE `v9_block_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_block_priv`
--
ALTER TABLE `v9_block_priv`
 ADD PRIMARY KEY (`id`), ADD KEY `blockid` (`blockid`), ADD KEY `roleid` (`roleid`,`siteid`);

--
-- Indexes for table `v9_cache`
--
ALTER TABLE `v9_cache`
 ADD PRIMARY KEY (`filename`,`path`);

--
-- Indexes for table `v9_category`
--
ALTER TABLE `v9_category`
 ADD PRIMARY KEY (`catid`), ADD KEY `module` (`module`,`parentid`,`listorder`,`catid`), ADD KEY `siteid` (`siteid`,`type`);

--
-- Indexes for table `v9_category_priv`
--
ALTER TABLE `v9_category_priv`
 ADD KEY `catid` (`catid`,`roleid`,`is_admin`,`action`), ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_collection_content`
--
ALTER TABLE `v9_collection_content`
 ADD PRIMARY KEY (`id`), ADD KEY `nodeid` (`nodeid`,`siteid`), ADD KEY `status` (`status`);

--
-- Indexes for table `v9_collection_history`
--
ALTER TABLE `v9_collection_history`
 ADD PRIMARY KEY (`md5`,`siteid`);

--
-- Indexes for table `v9_collection_node`
--
ALTER TABLE `v9_collection_node`
 ADD PRIMARY KEY (`nodeid`), ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_collection_program`
--
ALTER TABLE `v9_collection_program`
 ADD PRIMARY KEY (`id`), ADD KEY `siteid` (`siteid`), ADD KEY `nodeid` (`nodeid`);

--
-- Indexes for table `v9_content_check`
--
ALTER TABLE `v9_content_check`
 ADD KEY `username` (`username`), ADD KEY `checkid` (`checkid`), ADD KEY `status` (`status`,`inputtime`);

--
-- Indexes for table `v9_copyfrom`
--
ALTER TABLE `v9_copyfrom`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_datacall`
--
ALTER TABLE `v9_datacall`
 ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`);

--
-- Indexes for table `v9_dbsource`
--
ALTER TABLE `v9_dbsource`
 ADD PRIMARY KEY (`id`), ADD KEY `siteid` (`siteid`);

--
-- Indexes for table `v9_download`
--
ALTER TABLE `v9_download`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_download_data`
--
ALTER TABLE `v9_download_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_downservers`
--
ALTER TABLE `v9_downservers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_dynamics`
--
ALTER TABLE `v9_dynamics`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_dynamics_data`
--
ALTER TABLE `v9_dynamics_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_en_news`
--
ALTER TABLE `v9_en_news`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_en_news_data`
--
ALTER TABLE `v9_en_news_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_extend_setting`
--
ALTER TABLE `v9_extend_setting`
 ADD PRIMARY KEY (`id`), ADD KEY `key` (`key`);

--
-- Indexes for table `v9_favorite`
--
ALTER TABLE `v9_favorite`
 ADD PRIMARY KEY (`id`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `v9_form_rencai`
--
ALTER TABLE `v9_form_rencai`
 ADD PRIMARY KEY (`dataid`);

--
-- Indexes for table `v9_hits`
--
ALTER TABLE `v9_hits`
 ADD PRIMARY KEY (`hitsid`);

--
-- Indexes for table `v9_ipbanned`
--
ALTER TABLE `v9_ipbanned`
 ADD PRIMARY KEY (`ipbannedid`);

--
-- Indexes for table `v9_job`
--
ALTER TABLE `v9_job`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_job_data`
--
ALTER TABLE `v9_job_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_keylink`
--
ALTER TABLE `v9_keylink`
 ADD PRIMARY KEY (`keylinkid`);

--
-- Indexes for table `v9_keyword`
--
ALTER TABLE `v9_keyword`
 ADD PRIMARY KEY (`id`), ADD KEY `keyword` (`keyword`,`siteid`);

--
-- Indexes for table `v9_keyword_data`
--
ALTER TABLE `v9_keyword_data`
 ADD PRIMARY KEY (`id`), ADD KEY `tagid` (`tagid`,`siteid`);

--
-- Indexes for table `v9_link`
--
ALTER TABLE `v9_link`
 ADD PRIMARY KEY (`linkid`), ADD KEY `typeid` (`typeid`,`passed`,`listorder`,`linkid`);

--
-- Indexes for table `v9_linkage`
--
ALTER TABLE `v9_linkage`
 ADD PRIMARY KEY (`linkageid`,`keyid`), ADD KEY `parentid` (`parentid`,`listorder`);

--
-- Indexes for table `v9_log`
--
ALTER TABLE `v9_log`
 ADD PRIMARY KEY (`logid`), ADD KEY `module` (`module`,`file`,`action`), ADD KEY `username` (`username`,`action`);

--
-- Indexes for table `v9_member`
--
ALTER TABLE `v9_member`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `username` (`username`), ADD KEY `email` (`email`(20)), ADD KEY `phpssouid` (`phpssouid`);

--
-- Indexes for table `v9_member_detail`
--
ALTER TABLE `v9_member_detail`
 ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `v9_member_group`
--
ALTER TABLE `v9_member_group`
 ADD PRIMARY KEY (`groupid`), ADD KEY `disabled` (`disabled`), ADD KEY `listorder` (`sort`);

--
-- Indexes for table `v9_member_menu`
--
ALTER TABLE `v9_member_menu`
 ADD PRIMARY KEY (`id`), ADD KEY `listorder` (`listorder`), ADD KEY `parentid` (`parentid`), ADD KEY `module` (`m`,`c`,`a`);

--
-- Indexes for table `v9_member_verify`
--
ALTER TABLE `v9_member_verify`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `username` (`username`), ADD KEY `email` (`email`(20));

--
-- Indexes for table `v9_member_vip`
--
ALTER TABLE `v9_member_vip`
 ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `v9_menu`
--
ALTER TABLE `v9_menu`
 ADD PRIMARY KEY (`id`), ADD KEY `listorder` (`listorder`), ADD KEY `parentid` (`parentid`), ADD KEY `module` (`m`,`c`,`a`);

--
-- Indexes for table `v9_message`
--
ALTER TABLE `v9_message`
 ADD PRIMARY KEY (`messageid`), ADD KEY `msgtoid` (`send_to_id`,`folder`), ADD KEY `replyid` (`replyid`), ADD KEY `folder` (`send_from_id`,`folder`);

--
-- Indexes for table `v9_message_data`
--
ALTER TABLE `v9_message_data`
 ADD PRIMARY KEY (`id`), ADD KEY `message` (`userid`,`group_message_id`);

--
-- Indexes for table `v9_message_group`
--
ALTER TABLE `v9_message_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_model`
--
ALTER TABLE `v9_model`
 ADD PRIMARY KEY (`modelid`), ADD KEY `type` (`type`,`siteid`);

--
-- Indexes for table `v9_model_field`
--
ALTER TABLE `v9_model_field`
 ADD PRIMARY KEY (`fieldid`), ADD KEY `modelid` (`modelid`,`disabled`), ADD KEY `field` (`field`,`modelid`);

--
-- Indexes for table `v9_module`
--
ALTER TABLE `v9_module`
 ADD PRIMARY KEY (`module`);

--
-- Indexes for table `v9_news`
--
ALTER TABLE `v9_news`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_news_data`
--
ALTER TABLE `v9_news_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_page`
--
ALTER TABLE `v9_page`
 ADD KEY `catid` (`catid`);

--
-- Indexes for table `v9_pay_account`
--
ALTER TABLE `v9_pay_account`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`), ADD KEY `userid` (`userid`), ADD KEY `trade_sn` (`trade_sn`,`money`,`status`,`id`);

--
-- Indexes for table `v9_pay_payment`
--
ALTER TABLE `v9_pay_payment`
 ADD PRIMARY KEY (`pay_id`), ADD KEY `pay_code` (`pay_code`);

--
-- Indexes for table `v9_pay_spend`
--
ALTER TABLE `v9_pay_spend`
 ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`), ADD KEY `creat_at` (`creat_at`), ADD KEY `logo` (`logo`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `v9_picture`
--
ALTER TABLE `v9_picture`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_picture_data`
--
ALTER TABLE `v9_picture_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_position`
--
ALTER TABLE `v9_position`
 ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `v9_position_data`
--
ALTER TABLE `v9_position_data`
 ADD KEY `posid` (`posid`), ADD KEY `listorder` (`listorder`);

--
-- Indexes for table `v9_poster`
--
ALTER TABLE `v9_poster`
 ADD PRIMARY KEY (`id`), ADD KEY `spaceid` (`spaceid`,`siteid`,`disabled`,`listorder`);

--
-- Indexes for table `v9_poster_201711`
--
ALTER TABLE `v9_poster_201711`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`,`type`,`ip`);

--
-- Indexes for table `v9_poster_space`
--
ALTER TABLE `v9_poster_space`
 ADD PRIMARY KEY (`spaceid`), ADD KEY `disabled` (`disabled`,`siteid`);

--
-- Indexes for table `v9_queue`
--
ALTER TABLE `v9_queue`
 ADD PRIMARY KEY (`id`), ADD KEY `siteid` (`siteid`), ADD KEY `times` (`times`);

--
-- Indexes for table `v9_release_point`
--
ALTER TABLE `v9_release_point`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_search`
--
ALTER TABLE `v9_search`
 ADD PRIMARY KEY (`searchid`), ADD KEY `typeid` (`typeid`,`id`), ADD KEY `siteid` (`siteid`), ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `v9_search_keyword`
--
ALTER TABLE `v9_search_keyword`
 ADD UNIQUE KEY `keyword` (`keyword`), ADD UNIQUE KEY `pinyin` (`pinyin`), ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `v9_session`
--
ALTER TABLE `v9_session`
 ADD PRIMARY KEY (`sessionid`), ADD KEY `lastvisit` (`lastvisit`);

--
-- Indexes for table `v9_site`
--
ALTER TABLE `v9_site`
 ADD PRIMARY KEY (`siteid`);

--
-- Indexes for table `v9_special`
--
ALTER TABLE `v9_special`
 ADD PRIMARY KEY (`id`), ADD KEY `disabled` (`disabled`,`siteid`);

--
-- Indexes for table `v9_special_content`
--
ALTER TABLE `v9_special_content`
 ADD PRIMARY KEY (`id`), ADD KEY `specialid` (`specialid`,`typeid`,`isdata`), ADD KEY `typeid` (`typeid`,`isdata`);

--
-- Indexes for table `v9_special_c_data`
--
ALTER TABLE `v9_special_c_data`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `v9_sphinx_counter`
--
ALTER TABLE `v9_sphinx_counter`
 ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `v9_sso_admin`
--
ALTER TABLE `v9_sso_admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `v9_sso_applications`
--
ALTER TABLE `v9_sso_applications`
 ADD PRIMARY KEY (`appid`), ADD KEY `synlogin` (`synlogin`);

--
-- Indexes for table `v9_sso_members`
--
ALTER TABLE `v9_sso_members`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `username` (`username`), ADD KEY `email` (`email`), ADD KEY `ucuserid` (`ucuserid`);

--
-- Indexes for table `v9_sso_messagequeue`
--
ALTER TABLE `v9_sso_messagequeue`
 ADD PRIMARY KEY (`id`), ADD KEY `dateline` (`dateline`), ADD KEY `succeed` (`succeed`,`id`);

--
-- Indexes for table `v9_sso_session`
--
ALTER TABLE `v9_sso_session`
 ADD PRIMARY KEY (`sessionid`), ADD KEY `lastvisit` (`lastvisit`);

--
-- Indexes for table `v9_sso_settings`
--
ALTER TABLE `v9_sso_settings`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `v9_tag`
--
ALTER TABLE `v9_tag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v9_template_bak`
--
ALTER TABLE `v9_template_bak`
 ADD PRIMARY KEY (`id`), ADD KEY `fileid` (`fileid`);

--
-- Indexes for table `v9_times`
--
ALTER TABLE `v9_times`
 ADD PRIMARY KEY (`username`,`isadmin`);

--
-- Indexes for table `v9_time_l`
--
ALTER TABLE `v9_time_l`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_time_l_data`
--
ALTER TABLE `v9_time_l_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_type`
--
ALTER TABLE `v9_type`
 ADD PRIMARY KEY (`typeid`), ADD KEY `module` (`module`,`parentid`,`siteid`,`listorder`);

--
-- Indexes for table `v9_urlrule`
--
ALTER TABLE `v9_urlrule`
 ADD PRIMARY KEY (`urlruleid`);

--
-- Indexes for table `v9_video`
--
ALTER TABLE `v9_video`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`,`listorder`,`id`), ADD KEY `listorder` (`catid`,`status`,`listorder`,`id`), ADD KEY `catid` (`catid`,`status`,`id`);

--
-- Indexes for table `v9_video_content`
--
ALTER TABLE `v9_video_content`
 ADD KEY `videoid` (`videoid`);

--
-- Indexes for table `v9_video_data`
--
ALTER TABLE `v9_video_data`
 ADD KEY `id` (`id`);

--
-- Indexes for table `v9_video_store`
--
ALTER TABLE `v9_video_store`
 ADD PRIMARY KEY (`videoid`), ADD KEY `videoid` (`videoid`,`status`);

--
-- Indexes for table `v9_wap`
--
ALTER TABLE `v9_wap`
 ADD PRIMARY KEY (`siteid`);

--
-- Indexes for table `v9_wap_type`
--
ALTER TABLE `v9_wap_type`
 ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `v9_workflow`
--
ALTER TABLE `v9_workflow`
 ADD PRIMARY KEY (`workflowid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `v9_admin`
--
ALTER TABLE `v9_admin`
MODIFY `userid` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `v9_admin_role`
--
ALTER TABLE `v9_admin_role`
MODIFY `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `v9_announce`
--
ALTER TABLE `v9_announce`
MODIFY `aid` smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_attachment`
--
ALTER TABLE `v9_attachment`
MODIFY `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `v9_badword`
--
ALTER TABLE `v9_badword`
MODIFY `badid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_block`
--
ALTER TABLE `v9_block`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `v9_block_history`
--
ALTER TABLE `v9_block_history`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `v9_block_priv`
--
ALTER TABLE `v9_block_priv`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_category`
--
ALTER TABLE `v9_category`
MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `v9_collection_content`
--
ALTER TABLE `v9_collection_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_collection_node`
--
ALTER TABLE `v9_collection_node`
MODIFY `nodeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_collection_program`
--
ALTER TABLE `v9_collection_program`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_copyfrom`
--
ALTER TABLE `v9_copyfrom`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_datacall`
--
ALTER TABLE `v9_datacall`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_dbsource`
--
ALTER TABLE `v9_dbsource`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_download`
--
ALTER TABLE `v9_download`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_downservers`
--
ALTER TABLE `v9_downservers`
MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_dynamics`
--
ALTER TABLE `v9_dynamics`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_en_news`
--
ALTER TABLE `v9_en_news`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_extend_setting`
--
ALTER TABLE `v9_extend_setting`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_favorite`
--
ALTER TABLE `v9_favorite`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_form_rencai`
--
ALTER TABLE `v9_form_rencai`
MODIFY `dataid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `v9_ipbanned`
--
ALTER TABLE `v9_ipbanned`
MODIFY `ipbannedid` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_job`
--
ALTER TABLE `v9_job`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_keylink`
--
ALTER TABLE `v9_keylink`
MODIFY `keylinkid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_keyword`
--
ALTER TABLE `v9_keyword`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `v9_keyword_data`
--
ALTER TABLE `v9_keyword_data`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `v9_link`
--
ALTER TABLE `v9_link`
MODIFY `linkid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `v9_linkage`
--
ALTER TABLE `v9_linkage`
MODIFY `linkageid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3360;
--
-- AUTO_INCREMENT for table `v9_log`
--
ALTER TABLE `v9_log`
MODIFY `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=767;
--
-- AUTO_INCREMENT for table `v9_member`
--
ALTER TABLE `v9_member`
MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_member_group`
--
ALTER TABLE `v9_member_group`
MODIFY `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `v9_member_menu`
--
ALTER TABLE `v9_member_menu`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `v9_member_verify`
--
ALTER TABLE `v9_member_verify`
MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_menu`
--
ALTER TABLE `v9_menu`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1657;
--
-- AUTO_INCREMENT for table `v9_message`
--
ALTER TABLE `v9_message`
MODIFY `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_message_data`
--
ALTER TABLE `v9_message_data`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_message_group`
--
ALTER TABLE `v9_message_group`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_model`
--
ALTER TABLE `v9_model`
MODIFY `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `v9_model_field`
--
ALTER TABLE `v9_model_field`
MODIFY `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `v9_news`
--
ALTER TABLE `v9_news`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `v9_pay_account`
--
ALTER TABLE `v9_pay_account`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_pay_payment`
--
ALTER TABLE `v9_pay_payment`
MODIFY `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_pay_spend`
--
ALTER TABLE `v9_pay_spend`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_picture`
--
ALTER TABLE `v9_picture`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_position`
--
ALTER TABLE `v9_position`
MODIFY `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `v9_poster`
--
ALTER TABLE `v9_poster`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `v9_poster_201711`
--
ALTER TABLE `v9_poster_201711`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `v9_poster_space`
--
ALTER TABLE `v9_poster_space`
MODIFY `spaceid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `v9_queue`
--
ALTER TABLE `v9_queue`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_release_point`
--
ALTER TABLE `v9_release_point`
MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_search`
--
ALTER TABLE `v9_search`
MODIFY `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `v9_site`
--
ALTER TABLE `v9_site`
MODIFY `siteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `v9_special`
--
ALTER TABLE `v9_special`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_special_content`
--
ALTER TABLE `v9_special_content`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_sso_admin`
--
ALTER TABLE `v9_sso_admin`
MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `v9_sso_applications`
--
ALTER TABLE `v9_sso_applications`
MODIFY `appid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `v9_sso_members`
--
ALTER TABLE `v9_sso_members`
MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_sso_messagequeue`
--
ALTER TABLE `v9_sso_messagequeue`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_tag`
--
ALTER TABLE `v9_tag`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_template_bak`
--
ALTER TABLE `v9_template_bak`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_time_l`
--
ALTER TABLE `v9_time_l`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `v9_type`
--
ALTER TABLE `v9_type`
MODIFY `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `v9_urlrule`
--
ALTER TABLE `v9_urlrule`
MODIFY `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `v9_video`
--
ALTER TABLE `v9_video`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `v9_video_store`
--
ALTER TABLE `v9_video_store`
MODIFY `videoid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `v9_wap_type`
--
ALTER TABLE `v9_wap_type`
MODIFY `typeid` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `v9_workflow`
--
ALTER TABLE `v9_workflow`
MODIFY `workflowid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
