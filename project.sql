-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-12 11:21:11
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- 表的结构 `pro_imgs`
--

CREATE TABLE `pro_imgs` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pro_imgs`
--

INSERT INTO `pro_imgs` (`id`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3000/images/shouban.png', '手办'),
(2, 'http://127.0.0.1:3000/images/gaoda.png', '高达'),
(3, 'http://127.0.0.1:3000/images/shipin.png', '饰品'),
(4, 'http://127.0.0.1:3000/images/zhongbiao.png', '钟表'),
(5, 'http://127.0.0.1:3000/images/xiangbao.png', '箱包'),
(6, 'http://127.0.0.1:3000/images/jiaju.png', '家居'),
(7, 'http://127.0.0.1:3000/images/shuma.png', '数码'),
(8, 'http://127.0.0.1:3000/images/lingshi.png', '零食'),
(9, 'http://127.0.0.1:3000/images/cos.png', 'cos'),
(10, 'http://127.0.0.1:3000/images/zhuoyou.png', '桌游'),
(11, 'http://127.0.0.1:3000/images/shebei.png', '设备'),
(12, 'http://127.0.0.1:3000/images/qianbao.png', '钱包');

-- --------------------------------------------------------

--
-- 表的结构 `pro_news`
--

CREATE TABLE `pro_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pro_news`
--

INSERT INTO `pro_news` (`id`, `title`, `content`, `click`, `img_url`, `ctime`) VALUES
(1, '123', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:21:12'),
(2, '123', '123', 0, 'http://127.0.0.1:3000/images/banner2.png', '2018-09-27 22:21:32'),
(3, '123', '123', 0, 'http://127.0.0.1:3000/images/banner2.png', '2018-09-27 22:22:02'),
(4, '123', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02'),
(5, '124', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02'),
(6, '125', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02'),
(7, '126', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02'),
(8, '127', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02'),
(9, '128', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02'),
(10, '129', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:02'),
(11, '123', '123', 0, 'http://127.0.0.1:3000/images/banner2.png', '2018-09-27 22:22:12'),
(12, '123', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12'),
(13, '124', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12'),
(14, '125', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12'),
(15, '126', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12'),
(16, '127', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12'),
(17, '128', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12'),
(18, '129', '123', 0, 'http://127.0.0.1:3000/images/banner1.png', '2018-09-27 22:22:12');

-- --------------------------------------------------------

--
-- 表的结构 `pro_products`
--

CREATE TABLE `pro_products` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `p_imgurl` varchar(255) DEFAULT NULL,
  `ptitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pro_products`
--

INSERT INTO `pro_products` (`id`, `pid`, `p_imgurl`, `ptitle`) VALUES
(1, 1, 'http://127.0.0.1:3000/images/index_gaoda_2.jpg', '夏亚专用扎古'),
(2, 2, 'http://127.0.0.1:3000/images/index_gaoda_3.jpg', '报丧女妖爆甲'),
(3, 3, 'http://127.0.0.1:3000/images/index_gaoda_4.jpg', '万代强袭自由'),
(4, 4, 'http://127.0.0.1:3000/images/index_gaoda_5.jpg', '高达00升降机'),
(5, 5, 'http://127.0.0.1:3000/images/index_shouban_1.jpg', 'Love Live! 雪人南小鸟'),
(6, 6, 'http://127.0.0.1:3000/images/index_shouban_2.jpg', '太刃黑岩'),
(7, 7, 'http://127.0.0.1:3000/images/index_shouban_3.jpg', '初音歌姬计划小红帽'),
(8, 8, 'http://127.0.0.1:3000/images/index_shouban_4.jpg', '初音歌姬计划小红帽');

-- --------------------------------------------------------

--
-- 表的结构 `pro_user`
--

CREATE TABLE `pro_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(25) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pro_user`
--

INSERT INTO `pro_user` (`uid`, `uname`, `upwd`) VALUES
(1, 'tom', '202cb962ac59075b964b07152d234b70'),
(2, 'jerry', '202cb962ac59075b964b07152d234b70'),
(3, 'dongdong', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pro_imgs`
--
ALTER TABLE `pro_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_news`
--
ALTER TABLE `pro_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_products`
--
ALTER TABLE `pro_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_user`
--
ALTER TABLE `pro_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pro_imgs`
--
ALTER TABLE `pro_imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `pro_news`
--
ALTER TABLE `pro_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `pro_products`
--
ALTER TABLE `pro_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `pro_user`
--
ALTER TABLE `pro_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
