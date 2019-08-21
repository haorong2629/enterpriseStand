-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 �?08 �?06 �?20:07
-- 服务器版本: 5.5.40
-- PHP 版本: 5.6.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `hlbservice`
--

-- --------------------------------------------------------

--
-- 表的结构 `pp_about_us`
--

CREATE TABLE IF NOT EXISTS `pp_about_us` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` text NOT NULL COMMENT '文章',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1-正常，0-删除',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `update_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `video_path` varchar(200) NOT NULL DEFAULT '' COMMENT '视频地址',
  `type` int(1) NOT NULL COMMENT '文章属性 1 公司简介，2 公司理念3挂牌四板,4服务客户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `pp_about_us`
--

INSERT INTO `pp_about_us` (`id`, `content`, `status`, `create_id`, `update_id`, `create_time`, `update_time`, `title`, `video_path`, `type`) VALUES
(28, '<h3>\r\n	标题\r\n</h3>\r\n<table style="width:100%;" cellspacing="0" cellpadding="2" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<h3>\r\n					标题1\r\n				</h3>\r\n			</td>\r\n			<td>\r\n				<h3>\r\n					标题1\r\n				</h3>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				内容1\r\n			</td>\r\n			<td>\r\n				内容2\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				内容3\r\n			</td>\r\n			<td>\r\n				内容4\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	表格说明\r\n</p>', 1, 0, 0, 1535469116, 1535794050, '发行股份1111', '的 v 奋斗222', 1),
(29, '', 1, 0, 0, 1535469985, 1535470004, '法国恢复刚吃1111', '法国法111', 2),
(30, '<span style="line-height:1;">\r\n<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n</span>', 1, 0, 0, 1535470635, 1535794241, '洒大地1111', '洒饿的111', 2),
(31, '<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 1, 0, 0, 1535551419, 1535794419, '幸福 v 的111', '收到发生的111', 3),
(32, '', 0, 0, 0, 1535552483, 1535552496, '数字地方111', '十分饿啊', 4),
(33, '<h3>\r\n	标题\r\n</h3>\r\n<table style="width:100%;" cellspacing="0" cellpadding="2" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<h3>\r\n					标题1\r\n				</h3>\r\n			</td>\r\n			<td>\r\n				<h3>\r\n					标题1\r\n				</h3>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				内容1\r\n			</td>\r\n			<td>\r\n				内容2\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				内容3\r\n			</td>\r\n			<td>\r\n				内容4\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	表格说明\r\n</p>', 1, 0, 0, 1535552513, 1535794589, '的正在发生的', '电风扇', 4),
(34, '<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 1, 0, 0, 1535794086, 0, 'www', 'ss', 1),
(35, '<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 1, 0, 0, 1535794259, 0, 'www', 'www', 2),
(36, 'wwwwwww', 1, 0, 0, 1535794439, 0, 'www', 'wwwwww', 3),
(37, '', 1, 0, 0, 1535794606, 0, 'wwwwww', 'wwwwwww', 4),
(38, '', 0, 0, 0, 1535794608, 0, 'wwwwww', 'wwwwwww', 4),
(39, '111111111\r\n<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 1, 0, 0, 1535794667, 1535794692, '1111', '11111111111', 4),
(40, 'fsfdszcscds', 1, 0, 0, 1535881001, 1535881013, 'sfsfczxcz', '', 1),
(41, '<em></em>xcxzzczcxz', 1, 0, 0, 1535881073, 1535881080, 'zczx1111', '', 2),
(42, 'cvxzcxvxzvzxc', 1, 0, 0, 1535881194, 1535881202, 'xcxzvxcvcxcxvzx', '', 3),
(43, 'scdscdscczCxZCx', 1, 0, 0, 1535881276, 1535881281, 'sxsczcZz', '', 4);

-- --------------------------------------------------------

--
-- 表的结构 `pp_api_detail`
--

CREATE TABLE IF NOT EXISTS `pp_api_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL DEFAULT '0' COMMENT '主表ID',
  `method` tinyint(1) NOT NULL DEFAULT '1' COMMENT '方法名称：1-GET 2-POST 3-PUT 4-PATCH 5-DELETE',
  `api_name` varchar(100) NOT NULL DEFAULT '0' COMMENT '接口名称',
  `api_url` varchar(100) NOT NULL DEFAULT '0' COMMENT '接口地址',
  `detail` text COMMENT '返回结果，正确或错误',
  `audit_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '审核时间',
  `audit_id` int(11) NOT NULL DEFAULT '0' COMMENT '审核人',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态：0-暂停使用，1-正在开发，2-正在审核，3-正常，4-未通过',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_main_id` (`source_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='API附表' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `pp_api_detail`
--

INSERT INTO `pp_api_detail` (`id`, `source_id`, `method`, `api_name`, `api_url`, `detail`, `audit_time`, `audit_id`, `status`, `create_id`, `update_id`, `create_time`, `update_time`) VALUES
(1, 1, 1, '获取单个sku库存', '/v0/stock', '#### 简要描述：\n\n- 用户库存接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 1, 3, 1, 1, 1507617867, 1516284409),
(2, 1, 3, '更新库存接口', '/v0/stock/:id', '#### 更新库存简要描述：\n\n- 更新库存接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 1, 3, 1, 1, 1507619939, 1516284492),
(3, 2, 1, '获取订单列表接口', '/v0/order', '#### 获取订单列表接口\n\n- 用户登录接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1507699351, 1516286722),
(4, 3, 2, '新增商品接口', '/v0/product', '#### 新增商品接口\n\n- 新增商品接口接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1515762214, 1516286707),
(5, 4, 1, '获取交易总额', '/v0/trade', '#### 获取交易总额\n\n- 用户登录接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1515763734, 1516286689),
(6, 5, 5, '删除评价接口', '/v0/evaluate/:id', '#### 删除评价接口：\n\n- 用户登录接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1515763795, 1516286674),
(7, 6, 1, '获取物流详情', '/v0/delivery', '#### 获取物流详情\n\n- 用户登录接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1515763945, 1516286639),
(8, 6, 3, '更新物流信息', '/v0/delivery', '#### 更新物流信息：\n\n- 用户登录接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1515764025, 1516286625),
(9, 3, 1, '获取商品列表', '/product', '#### 简要描述：\n\n                    - 用户登录接口\n\n                    #### 接口版本：\n\n                    |版本号|制定人|制定日期|修订日期|\n                    |:----    |:---|:----- |-----   |\n                    |2.1.0 |秦亮  |2017-03-20 |  xxxx-xx-xx |\n\n                    #### 请求URL:\n\n                    - http://xx.com/api/login\n\n                    #### 请求方式：\n\n                    - GET\n                    - POST\n\n                    #### 请求头：\n\n                    |参数名|是否必须|类型|说明|\n                    |:----    |:---|:----- |-----   |\n                    |Content-Type |是  |string |请求类型： application/json   |\n                    |Content-MD5 |是  |string | 请求内容签名    |\n\n\n                    #### 请求参数:\n\n                    |参数名|是否必须|类型|说明|\n                    |:----    |:---|:----- |-----   |\n                    |username |是  |string |用户名   |\n                    |password |是  |string | 密码    |\n\n                    #### 返回示例:\n\n                    **正确时返回:**\n\n                    ```\n                    {\n                        "errcode": 0,\n                        "data": {\n                            "uid": "1",\n                            "account": "admin",\n                            "nickname": "Minho",\n                            "group_level": 0 ,\n                            "create_time": "1436864169",\n                            "last_login_time": "0",\n                        }\n                    }\n                    ```\n\n                    **错误时返回:**\n\n\n                    ```\n                    {\n                        "errcode": 500,\n                        "errmsg": "invalid appid"\n                    }\n                    ```\n\n                    #### 返回参数说明:\n\n                    |参数名|类型|说明|\n                    |:-----  |:-----|-----                           |\n                    |group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n                    #### 备注:\n\n                    - 更多返回错误代码请看首页的错误代码描述', 0, 0, 4, 1, 1, 1515937531, 1516286613),
(10, 3, 5, '删除商品接口', '/v0/product', '#### 删除商品接口：\n\n- 用户登录接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1515981318, 1516286600),
(11, 4, 4, '修改交易状态', '/v0/delivery', '#### 修改交易状态\n\n- 用户登录接口\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 0, 0, 3, 1, 1, 1516003820, 1516377141);

-- --------------------------------------------------------

--
-- 表的结构 `pp_api_public`
--

CREATE TABLE IF NOT EXISTS `pp_api_public` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_public_name` varchar(100) NOT NULL DEFAULT '0' COMMENT '公共文档名称',
  `sort` int(11) unsigned NOT NULL DEFAULT '99' COMMENT '排序，越小越往前',
  `detail` text NOT NULL COMMENT '详情',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常，0-删除',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_main_id` (`api_public_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='API参数表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pp_api_public`
--

INSERT INTO `pp_api_public` (`id`, `api_public_name`, `sort`, `detail`, `status`, `create_id`, `update_id`, `create_time`, `update_time`) VALUES
(1, '平台接口简介', 1, '#### 平台接口简介\n\n- 这是一个测试接口平台\n\n#### 阅读对象\n - 给开发人员的看的', 1, 1, 1, 1516071841, 1516282117),
(2, '接入须知', 2, '#### key 和secret获取：\n\n- 直接联系商务人员索取\n\n#### 公共参数\n|参数名|说明|\n|:-------   |:-----   |\n|time |接口调用时的时间戳，即当前时间戳（时间戳：当前距离Epoch（1970年1月1日) 以秒计算的时间，即unix-timestamp，请使用精确到秒的时间戳。|\n|app-key|上文获取的三方商家系统的唯一标示|\n|sign|输入参数的签名结果，签名方法见下节|\n\n#### 返回格式\n```\n{\n	success:true/false,\n	data:\n	error_code:\n	error_msg:\n}\n```', 1, 1, 1, 1516080573, 1516283006),
(3, '回调说明', 3, '#### 加密算法\n\n- 使用用户配置的URL地址替换url路径，然后采用sign签名计算小节的方法，即可得到正确的签名结果\n\n#### 返回结果\n\n|参数名|类型|取值说明|\n|:----   |:-----  |: -----    |\n|success |Boolean |接口执行结果;为true表示执行成功; 为false表示执行失败  |\n|error_msg |String |错误信息描述|\n|error_code|String|错误码，如有具体涉及错误码请严格按照给到的错误码|\n|data|String|返回结果|', 1, 1, 1, 1516282746, 1516282746);

-- --------------------------------------------------------

--
-- 表的结构 `pp_api_source`
--

CREATE TABLE IF NOT EXISTS `pp_api_source` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '分组ID',
  `source_name` varchar(50) NOT NULL DEFAULT '0' COMMENT '接口名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态：1-正常，0-删除',
  `audit_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '审核人ID',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `audit_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '审核人时间',
  PRIMARY KEY (`id`),
  KEY `idx_group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='API主表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pp_api_source`
--

INSERT INTO `pp_api_source` (`id`, `group_id`, `source_name`, `status`, `audit_id`, `create_id`, `update_id`, `create_time`, `update_time`, `audit_time`) VALUES
(1, 2, '库存', 1, 0, 1, 1, 1507616276, 1516283236, 0),
(2, 2, '订单', 1, 0, 1, 1, 1507616329, 1516283124, 0),
(3, 2, '商品', 1, 0, 1, 1, 1507616394, 1516283140, 0),
(4, 1, '交易', 1, 0, 1, 1, 1507616421, 1516283245, 0),
(5, 1, '评价', 1, 0, 1, 1, 1510122234, 1516283256, 0),
(6, 3, '物流', 1, 0, 1, 1, 1515575836, 1516286650, 0),
(7, 3, '订单', 0, 0, 1, 1, 1515914737, 1516281455, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pp_brand_creativity`
--

CREATE TABLE IF NOT EXISTS `pp_brand_creativity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` text NOT NULL COMMENT '文章',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1-正常，0-删除',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `update_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `video_path` varchar(200) NOT NULL DEFAULT '' COMMENT '视频地址',
  `url_path` varchar(200) NOT NULL,
  `type` int(1) NOT NULL COMMENT '文章属性 1 品牌创意，2 数字营销 3活动公告,4创新文创',
  `ispctype` int(11) DEFAULT NULL COMMENT '1pc,2',
  `thumbnails_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '缩略图地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `pp_brand_creativity`
--

INSERT INTO `pp_brand_creativity` (`id`, `content`, `status`, `create_id`, `update_id`, `create_time`, `update_time`, `title`, `video_path`, `url_path`, `type`, `ispctype`, `thumbnails_path`) VALUES
(1, '', 0, 0, 0, 0, 0, 'ceshi', 'www.baidu.com', '', 0, NULL, NULL),
(2, '', 0, 0, 0, 0, 0, 'ceshi', 'www.baidu.com', '', 0, NULL, NULL),
(3, '', 0, 0, 0, 0, 0, 'ceshi', 'www.baidu.com', '', 0, NULL, NULL),
(4, 'asasss饿饿死的中小城镇下', 0, 0, 0, 1534990384, 0, 'ceshi', 'www.baidu.com', '', 1, NULL, NULL),
(5, '', 0, 0, 0, 1534992603, 0, '', '', '', 1, 0, NULL),
(6, 'asasss饿饿死的中小城镇下', 0, 0, 0, 1534992966, 1535019233, 'ceshi', 'www.baidu.com', '', 1, 0, ''),
(7, '', 0, 0, 0, 1534993941, 0, 'zxcZC', 'zcZC', '', 1, 0, ''),
(8, '<p>\r\n	<img src="/static/upload/image/20180823/timg.jpg" alt="" title="" width="500" height="156" align="" />\r\n</p>\r\n<p>\r\n	asdsafdsafcadsfad\r\n</p>\r\n<p>\r\n	sdfdafsadfasf\r\n</p>\r\n<p>\r\n	<img src="/static/upload/image/20180823/timg3 (1).jpg" alt="" title="" width="500" height="333" align="" />\r\n</p>', 0, 0, 0, 1534994019, 0, 'test', 'www.baidu.com', '', 1, NULL, NULL),
(9, '<p>\r\n	<img src="/static/upload/image/20180823/timg.jpg" alt="" title="" width="500" height="156" align="" /> \r\n</p>\r\n<p>\r\n	asdsafdsafcadsfad\r\n</p>\r\n<p>\r\n	sdfdafsadfasf\r\n</p>\r\n<p>\r\n	<img src="/static/upload/image/20180823/timg3 (1).jpg" alt="" title="" width="500" height="333" align="" /> \r\n</p>', 0, 0, 0, 1534994104, 0, 'Zzdcs', 'sdxs', '', 1, 0, ''),
(10, '<p>\r\n	<img src="/static/upload/image/20180823/timg.jpg" alt="" title="" width="500" height="156" align="" /> \r\n</p>\r\n<p>\r\n	asdsafdsafcadsfad\r\n</p>\r\n<p>\r\n	sdfdafsadfasf\r\n</p>\r\n<p>\r\n	<img src="/static/upload/image/20180823/timg3 (1).jpg" alt="" title="" width="500" height="333" align="" /> \r\n</p>', 0, 0, 0, 1534994156, 0, 'AZSxsZ', 'sxaxsZ', '', 1, 0, ''),
(11, '<p>\r\n	<img src="/static/upload/image/20180823/timg.jpg" alt="" title="" width="500" height="156" align="" /> \r\n</p>\r\n<p>\r\n	asdsafdsafcadsfad\r\n</p>\r\n<p>\r\n	sdfdafsadfasf\r\n</p>\r\n<p>\r\n	<img src="/static/upload/image/20180823/timg3 (1).jpg" alt="" title="" width="500" height="333" align="" /> \r\n</p>', 0, 0, 0, 1534994204, 0, 'AZSxsZ', 'sxaxsZ', '', 1, 0, ''),
(12, '<img src="/static/upload/image/20181013/02.jpg" alt="" />', 0, 0, 0, 1535017759, 1539445973, 'zsxsZC', 'csCS', '', 1, 0, ''),
(13, '', 0, 0, 0, 1535017876, 0, 'sfvdv', 'drvdsf', '', 1, NULL, NULL),
(14, '', 0, 0, 0, 1535018033, 1535019106, 'dcdxzc111', 'svfdzv111', '', 1, NULL, NULL),
(15, '<img src="/static/upload/image/20181019/05.jpg" alt="" /><img src="/static/upload/image/20181013/02.jpg" alt="" />', 1, 0, 0, 1535022744, 1539950205, '地址是对的选择', '速度速度速度', '', 1, 0, '<img src="/static/upload/image/20181019/04.jpg" alt="" />'),
(16, '<img src="/static/upload/image/20181019/05.jpg" alt="" /><img src="/static/upload/image/20181013/01.jpg" alt="" />', 1, 0, 0, 1535092957, 1539950172, '设身处地数字', '市场上', '', 1, 0, '<img src="/static/upload/image/20181019/08.jpg" alt="" />'),
(17, '', 0, 0, 0, 1535093023, 0, '收到测试', '市场上', '', 2, NULL, NULL),
(18, '<img src="/static/upload/image/20180930/bank7.png" alt="" />', 1, 0, 0, 1535093127, 1539950147, '数字城市1', '上擦请求', '', 1, 0, '<img src="/static/upload/image/20181019/05.jpg" alt="" />'),
(19, '<img src="/static/upload/image/20180930/bank8.png" alt="" />', 1, 0, 0, 1535095952, 1539949949, '测试34这才是', '测试3收到测试', '', 2, 0, '<img src="/static/upload/image/20181019/03.jpg" alt="" />'),
(20, '<img src="/static/upload/image/20180930/bank4.png" alt="" />', 1, 0, 0, 1535096101, 1539949934, '这是从S', '第三次第四章', '', 2, 0, '<img src="/static/upload/image/20181019/03.jpg" alt="" />'),
(21, '<img src="/static/upload/image/20180930/bank2.png" alt="" />', 1, 0, 0, 1535096845, 1539950137, '收到测试中', '在草地上', '', 1, 0, '<img src="/static/upload/image/20181019/04.jpg" alt="" />'),
(22, '<img src="/static/upload/image/20180929/banner1.jpg" alt="" />', 1, 0, 0, 1535101450, 1539950000, '图4', '图4', '', 3, 0, '<img src="/static/upload/image/20181019/05.jpg" alt="" />'),
(23, '<img src="/static/upload/image/20180929/bank1.png" alt="" />', 1, 0, 0, 1535101667, 1539949989, '图3', '查询', '', 3, 0, '<img src="/static/upload/image/20181019/04.jpg" alt="" />'),
(24, '', 0, 0, 0, 1535120155, 0, '收到发多少', '收到测试', '', 4, NULL, NULL),
(25, '<img src="/static/upload/image/20180930/service1.jpg" alt="" />', 1, 0, 0, 1535120251, 1539950049, 'hhjh111', 'ygyu111', '', 4, 0, '<img src="/static/upload/image/20181019/03.jpg" alt="" />'),
(26, '<img src="/static/upload/image/20180930/phone_index04.jpg" alt="" />', 1, 0, 0, 1535466517, 1539950037, 'sddssd111', 'sdds111', '', 4, 0, '<img src="/static/upload/image/20181019/05.jpg" alt="" />'),
(27, '<h3>\r\n	<img src="/static/upload/image/20180930/bank3.png" alt="" /><br />\r\n</h3>', 1, 0, 0, 1535792647, 1539949902, '热啊飞', '四方大厦', '', 2, 0, '<img src="/static/upload/image/20181019/02.jpg" alt="" />'),
(28, '<img src="/static/upload/image/20181016/01.jpg" alt="" />', 1, 0, 0, 1535793172, 1539949884, 'dvdvfds', 'xdcsz', '', 2, 0, '<img src="/static/upload/image/20181019/02.jpg" alt="" />'),
(29, '<img src="/static/upload/image/20180929/about_er.png" alt="" />', 1, 0, 0, 1535793417, 1539949975, '图2', '图2', '', 3, 0, '<img src="/static/upload/image/20181019/04.jpg" alt="" />'),
(30, '<img src="/static/upload/image/20180930/joinus_banner.jpg" alt="" />', 1, 0, 0, 1535793662, 1539950024, 'zcsd', '', '', 4, 0, '<img src="/static/upload/image/20181019/05.jpg" alt="" />'),
(31, '<img src="/static/upload/image/20180930/bank1.png" alt="" />', 1, 0, 0, 1535793782, 1539950126, 'sfdasad', 'scasdadc', '', 1, 0, '<img src="/static/upload/image/20181019/04.jpg" alt="" />'),
(32, '<img src="/static/upload/image/20180904/1483707457459.jpg" alt="" title="" width="500" height="500" align="" />sdssdds', 0, 0, 0, 1535880422, 1536037367, 'dcx111', '', '', 2, NULL, NULL),
(33, '<img src="/static/upload/image/20180929/about_phone.png" alt="" />', 1, 0, 0, 1535880595, 1539949964, '图1', '图1', '', 3, 0, '<img src="/static/upload/image/20181019/03.jpg" alt="" />'),
(34, '<img src="/static/upload/image/20180930/index_nav.jpg" alt="" />', 1, 0, 0, 1535880687, 1539950013, 'sfds', '', '', 4, 0, '<img src="/static/upload/image/20181019/04.jpg" alt="" />'),
(35, 'dweeewe', 0, 0, 0, 1535880815, 1535880821, 'sfsdfdas111', '', '', 1, NULL, NULL),
(36, '<img src="/static/upload/image/20180929/userface.jpg" alt="" />', 0, 0, 0, 1538152805, 0, '图5', '图5', '', 3, NULL, NULL),
(37, '<img src="/static/upload/image/20180929/userface.jpg" alt="" />', 0, 0, 0, 1538152915, 0, '图5', '图5', '', 3, NULL, NULL),
(38, '<img src="/static/upload/image/20180929/bank1.png" alt="" />', 1, 0, 0, 1538236491, 1545324658, '电脑1', '前往汶川', 'http://www.baidu.com', 8, 1, ''),
(39, '<img src="/static/upload/image/20180929/bank2.png" alt="" />', 1, 0, 0, 1538236531, 0, '电脑2', '的C', '', 8, 1, NULL),
(40, '<img src="/static/upload/image/20180929/bank3.png" alt="" />', 1, 0, 0, 1538236583, 0, '电脑3', '', '', 8, 1, NULL),
(41, '<img src="/static/upload/image/20180929/zi1.gif" alt="" />', 1, 0, 0, 1538236641, 0, '移动1', 'w', '', 8, 2, NULL),
(42, '<img src="/static/upload/image/20180929/zi2.gif" alt="" />', 1, 0, 0, 1538236716, 0, '移动2', '', '', 8, 2, NULL),
(43, '<img src="/static/upload/image/20180929/about_phone.png" alt="" />', 1, 0, 0, 1538236756, 1545319981, '移动3', '', 'http://www.baidu.com', 8, 2, ''),
(44, 'dfgdfg', 0, 0, 0, 1539256691, 0, 'dfgd', 'fdg', '', 1, 0, NULL),
(45, '<img src="/static/upload/image/20181019/08.jpg" alt="" />', 1, 0, 0, 1539947074, 1539947417, 'SAQ', 'asd', '', 2, 0, '<img src="/static/upload/image/20181019/03.jpg" alt="" />'),
(46, '<img src="/static/upload/image/20181019/03.jpg" alt="" />', 1, 0, 0, 1539948380, 1539948550, 'dsa', 'asdas', '', 3, 0, '<img src="/static/upload/image/20181019/01.jpg" alt="" /><br />'),
(47, '<img src="/static/upload/image/20181019/03.jpg" alt="" />', 1, 0, 0, 1539948937, 1539948957, 'dfas', 'fdsds', '', 4, 0, '<img src="/static/upload/image/20181019/02.jpg" alt="" /><br />'),
(48, '<img src="/static/upload/image/20181019/03.jpg" alt="" />', 1, 0, 0, 1539949330, 1539949350, 'asda', 'fsdadfas', '', 1, 0, '<img src="/static/upload/image/20181019/01.jpg" alt="" /><br />');

-- --------------------------------------------------------

--
-- 表的结构 `pp_join_article`
--

CREATE TABLE IF NOT EXISTS `pp_join_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` text NOT NULL COMMENT '文章',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1-正常，0-删除',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `update_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `video_path` varchar(200) NOT NULL DEFAULT '' COMMENT '视频地址',
  `type` int(1) NOT NULL COMMENT '文章属性 1 公司简介，2 公司理念3挂牌四板,4服务客户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pp_join_us`
--

CREATE TABLE IF NOT EXISTS `pp_join_us` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` text NOT NULL COMMENT '文章',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1-正常，0-删除',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `update_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `video_path` varchar(200) NOT NULL DEFAULT '' COMMENT '视频地址',
  `type` int(1) NOT NULL COMMENT '文章属性 1 商务合作，2 代理合作 3 加入团队',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `pp_join_us`
--

INSERT INTO `pp_join_us` (`id`, `content`, `status`, `create_id`, `update_id`, `create_time`, `update_time`, `title`, `video_path`, `type`) VALUES
(32, '', 0, 0, 0, 1535768568, 0, 'Sfdasd', 'sfcasd', 1),
(33, '<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 1, 0, 0, 1535768604, 1535794840, 'adas1111', 'fvdsfvds11111', 1),
(34, '<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 1, 0, 0, 1535769560, 1535795001, 'zcdsdgs2222', 'drgsdg2222', 2),
(35, '', 0, 0, 0, 1535769613, 1535769633, 'xfvfsgbg1111', 'dgfdhgfs11111', 2),
(36, '', 0, 0, 0, 1535770548, 1535770568, 'zscdsdcassdsa1111', 'dvfdsvfdsq1111', 3),
(37, '', 0, 0, 0, 1535785137, 0, '色发色', '说法二世', 3),
(38, '', 1, 0, 0, 1535785139, 0, '色发色', '说法二世', 3),
(39, '<table style="width:100%;" cellspacing="0" cellpadding="2" bordercolor="#000000" border="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', 1, 0, 0, 1535785157, 1535795223, '这是从S', '下的迟早的事', 3),
(40, '2222222', 1, 0, 0, 1535794858, 0, '22222', '22222', 1),
(41, '11111111', 1, 0, 0, 1535795017, 0, '1111111', '11111', 2),
(42, '1111111', 1, 0, 0, 1535795239, 0, '1111', '111111', 3),
(43, 'cscxzvczxvasdfdasdfvda', 1, 0, 0, 1535881372, 1535881378, 'zcs', '', 1),
(44, '<img src="/static/upload/image/20180904/1483707457459.jpg" alt="" title="" width="500" height="500" align="" />', 1, 0, 0, 1535881497, 1536040386, 'sfssdfsf', '', 2),
(45, 'sadadazxczcx', 1, 0, 0, 1535881683, 1535881693, 'adasdszczc', '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pp_set_code`
--

CREATE TABLE IF NOT EXISTS `pp_set_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '0' COMMENT '状态码',
  `desc` varchar(255) NOT NULL DEFAULT '0' COMMENT '描述',
  `detail` varchar(255) NOT NULL DEFAULT '0' COMMENT '备注',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1-正常 0禁用',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_env_name` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='环境分组表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pp_set_code`
--

INSERT INTO `pp_set_code` (`id`, `code`, `desc`, `detail`, `status`, `create_id`, `update_id`, `create_time`, `update_time`) VALUES
(1, '200', '返回成功', '请求成功', 1, 0, 0, 1506328003, 1506328037),
(2, '300', '返回错误', '请求失败', 1, 0, 0, 1506328023, 1506328023),
(3, '302', '请求成功', '错误', 0, 0, 0, 1506328070, 1506334951);

-- --------------------------------------------------------

--
-- 表的结构 `pp_set_env`
--

CREATE TABLE IF NOT EXISTS `pp_set_env` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `env_name` varchar(50) NOT NULL DEFAULT '' COMMENT '环境名称',
  `env_host` varchar(255) NOT NULL DEFAULT '0' COMMENT '环境host',
  `detail` varchar(255) NOT NULL DEFAULT '0' COMMENT '备注',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1-正常 0禁用',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_env_name` (`env_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='环境分组表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pp_set_env`
--

INSERT INTO `pp_set_env` (`id`, `env_name`, `env_host`, `detail`, `status`, `create_id`, `update_id`, `create_time`, `update_time`) VALUES
(1, '测试地址', 'http://test.haodaquan.com', '测试地址', 1, 0, 1, 1506316614, 1516283029),
(2, '测试地址3', 'http://127.0.0.1:8083', '测试地址3', 0, 0, 0, 1506316696, 1506316850),
(3, '正式环境', 'http://api.haodaquan.com', '这个也是测试内容', 1, 1, 1, 1515140110, 1516281840);

-- --------------------------------------------------------

--
-- 表的结构 `pp_set_group`
--

CREATE TABLE IF NOT EXISTS `pp_set_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '组名',
  `detail` varchar(1000) NOT NULL DEFAULT '' COMMENT '说明',
  `env_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '环境ID，1,2',
  `code_ids` varchar(200) NOT NULL COMMENT '状态码id 1,2',
  `api_public_ids` varchar(200) NOT NULL COMMENT '公共文档ids 1,2',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态：1-正常，0-删除',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `update_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_create_id` (`create_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pp_set_group`
--

INSERT INTO `pp_set_group` (`id`, `group_name`, `detail`, `env_ids`, `code_ids`, `api_public_ids`, `status`, `create_id`, `update_id`, `create_time`, `update_time`) VALUES
(1, '供应商', '这是供应商', '1,3', '1,2', '1,2,3', 1, 0, 1, 1506237536, 1516283091),
(2, '大商户', '关于大商户的接口', '1,3', '1,2', '1,2,3', 1, 0, 1, 1506237621, 1516283080),
(3, 'Top商户', '有关订单的接口', '1,3', '1,2', '1,2,3', 1, 1, 1, 1516281298, 1516371024);

-- --------------------------------------------------------

--
-- 表的结构 `pp_set_template`
--

CREATE TABLE IF NOT EXISTS `pp_set_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(100) NOT NULL DEFAULT '0' COMMENT '模板ID',
  `detail` text NOT NULL COMMENT '详情',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常，0-删除',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_main_id` (`template_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='API参数表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pp_set_template`
--

INSERT INTO `pp_set_template` (`id`, `template_name`, `detail`, `status`, `create_id`, `update_id`, `create_time`, `update_time`) VALUES
(1, '接口通用模板', '#### 简要描述：\n\n- 用户登录接口\n#### 请求头：\n\n|参数名|是否必须|类型|说明|\n|:----    |:---|:----- |-----   |\n|Content-Type |是  |string |请求类型： application/json   |\n|Content-MD5 |是  |string | 请求内容签名    |\n\n\n#### 请求参数:\n\n|参数名|是否必须|类型|说明|示例值\n|:----    |:---|:----- |-----   |-----   |\n|username |是  |string |用户名   | george518\n|password |是  |string | 密码    | george518\n\n#### 返回参数:\n\n|参数名|类型|说明|\n|:-----  |:-----|-----                           |\n|group_level |int   |用户组id，1：超级管理员；2：普通用户  |\n\n#### 返回示例:\n\n**正确时返回:**\n\n```\n{\n"status": 200,\n"message": "Success",\n"data": {\n    "uid": "1",\n    "account": "admin",\n    "nickname": "Minho",\n    "group_level": 0 ,\n    "create_time": "1436864169",\n    "last_login_time": "0",\n}\n}\n```\n\n**错误时返回:**\n\n\n```\n{\n"status": 300,\n"message": "invalid username"\n"data":{\n    \n}\n}\n```\n\n#### 调用示例:\n\n```\n\n<?php\n    echo "Hello world";\n```\n#### 备注:\n\n- 更多返回错误代码请看首页的错误代码描述\n\n#### 接口版本：\n\n|版本号|制定人|制定日期|修订日期|\n|:----    |:---|:----- |-----   |\n|2.1.0 |郝大全  |2018-01-15 |  2018-01-15 |', 1, 1, 1, 1516085341, 1516281815),
(2, '公共文档模板', '#### 这是标题\n\n- 这是内容这是一个AP管理的内容模板\n内容模板啊啊', 1, 1, 1, 1516085369, 1516281799);

-- --------------------------------------------------------

--
-- 表的结构 `pp_uc_admin`
--

CREATE TABLE IF NOT EXISTS `pp_uc_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `real_name` varchar(32) NOT NULL DEFAULT '0' COMMENT '真实姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `role_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT '角色id字符串，如：2,3,4',
  `phone` varchar(20) NOT NULL DEFAULT '0' COMMENT '手机号码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `salt` char(10) NOT NULL DEFAULT '' COMMENT '密码盐',
  `last_login` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` char(15) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态，1-正常 0禁用',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_name` (`login_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='管理员表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pp_uc_admin`
--

INSERT INTO `pp_uc_admin` (`id`, `login_name`, `real_name`, `password`, `role_ids`, `phone`, `email`, `salt`, `last_login`, `last_ip`, `status`, `create_id`, `update_id`, `create_time`, `update_time`) VALUES
(1, 'admin', '超级管理员', '840fa1e5f049c861c7ed245293afcf8d', '0', '13888888889', 'haodaquan2008@163.com', 'kmcB', 1535882087, '[::1]', 1, 0, 0, 0, 1506128438),
(2, 'george518', 'georgeHao', 'e5d77ebaffd5e4fe7164b31c6d7f1921', '1,2', '13811558899', '12@11.com', 'ONNy', 1506125048, '127.0.0.1', 0, 0, 0, 0, 1515116737),
(3, 'haodaquan', '郝大全', 'e9fa9187e7497892c237433aee966cc1', '2,1', '13811559988', 'hao@123.com', '6fWE', 1505960085, '127.0.0.1', 1, 1, 0, 1505919245, 1513388240),
(4, 'ceshizhanghao', '测试姓名', 'fa3fb5825c2e64bc764f29245dd1ec7a', '2', '13988009988', '232@124.com', 'i8Nf', 0, '', 1, 1, 0, 1506047337, 1513388111),
(5, 'liucy', 'liucy', '2db17e5e1933e41c2b4b9dd7ed5f1c99', '2', '13522222222', 'l@163.com', 'yssx', 0, '', 1, 1, 1, 1535774679, 1535774679),
(6, 'liucy001', 'liucy', '2404c7fa74e49659c63904be92027a0a', '2,1', '13565433456', '11@163.com', '36GV', 1545321340, '127.0.0.1', 1, 1, 1, 1535879823, 1535879823),
(7, 'headline', '蝈蝈', '05e2cd9f08b4c14d111a8a3fe07acacc', '2,1', '13811494456', '294128246@qq.com', 'Wrok', 0, '', 1, 6, 6, 1538204691, 1538204691);

-- --------------------------------------------------------

--
-- 表的结构 `pp_uc_auth`
--

CREATE TABLE IF NOT EXISTS `pp_uc_auth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID，0为顶级',
  `auth_name` varchar(64) NOT NULL DEFAULT '0' COMMENT '权限名称',
  `auth_url` varchar(255) NOT NULL DEFAULT '0' COMMENT 'URL地址',
  `sort` int(1) unsigned NOT NULL DEFAULT '999' COMMENT '排序，越小越前',
  `icon` varchar(255) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示，0-隐藏，1-显示',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作者ID',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改者ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常，0-删除',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='权限因子' AUTO_INCREMENT=100 ;

--
-- 转存表中的数据 `pp_uc_auth`
--

INSERT INTO `pp_uc_auth` (`id`, `pid`, `auth_name`, `auth_url`, `sort`, `icon`, `is_show`, `user_id`, `create_id`, `update_id`, `status`, `create_time`, `update_time`) VALUES
(1, 0, '所有权限', '/', 1, '', 0, 1, 1, 1, 1, 1505620970, 1505620970),
(2, 1, '权限管理', '/', 999, 'fa-id-card', 1, 1, 0, 1, 1, 0, 1505622360),
(3, 2, '管理员', '/admin/list', 1, 'fa-user-o', 1, 1, 1, 1, 1, 1505621186, 1505621186),
(4, 2, '角色管理', '/role/list', 2, 'fa-user-circle-o', 1, 1, 0, 1, 1, 0, 1505621852),
(5, 3, '新增', '/admin/add', 1, '', 0, 1, 0, 1, 1, 0, 1505621685),
(6, 3, '修改', '/admin/edit', 2, '', 0, 1, 0, 1, 1, 0, 1505621697),
(7, 3, '删除', '/admin/ajaxdel', 3, '', 0, 1, 1, 1, 1, 1505621756, 1505621756),
(8, 4, '新增', '/role/add', 1, '', 1, 1, 0, 1, 1, 0, 1505698716),
(9, 4, '修改', '/role/edit', 2, '', 0, 1, 1, 1, 1, 1505621912, 1505621912),
(10, 4, '删除', '/role/ajaxdel', 3, '', 0, 1, 1, 1, 1, 1505621951, 1505621951),
(11, 2, '权限因子', '/auth/list', 3, 'fa-list', 1, 1, 1, 1, 1, 1505621986, 1505621986),
(12, 11, '新增', '/auth/add', 1, '', 0, 1, 1, 1, 1, 1505622009, 1505622009),
(13, 11, '修改', '/auth/edit', 2, '', 0, 1, 1, 1, 1, 1505622047, 1505622047),
(14, 11, '删除', '/auth/ajaxdel', 3, '', 0, 1, 1, 1, 1, 1505622111, 1505622111),
(15, 1, '个人中心', 'profile/edit', 1001, 'fa-user-circle-o', 1, 1, 0, 1, 1, 0, 1506001114),
(16, 1, 'API管理', '/', 1, 'fa-cubes', 0, 1, 0, 1, 1, 0, 1535879738),
(17, 16, 'API接口', '/api/list', 1, 'fa-link', 1, 1, 1, 1, 1, 1505622447, 1505622447),
(19, 20, '公共文档', '/apipublic/list', 3, 'fa-files-o', 1, 1, 0, 1, 1, 0, 1516155852),
(20, 1, '基础设置', '/', 2, 'fa-cogs', 0, 1, 0, 1, 1, 0, 1535879765),
(21, 20, '分组设置', '/group/list', 1, 'fa-object-ungroup', 1, 1, 1, 1, 1, 1505622645, 1505622645),
(22, 20, '环境设置', '/env/list', 2, 'fa-tree', 1, 1, 1, 1, 1, 1505622681, 1505622681),
(23, 20, '状态码设置', '/code/list', 3, 'fa-code', 1, 1, 1, 1, 1, 1505622728, 1505622728),
(24, 15, '资料修改', '/user/edit', 1, 'fa-edit', 1, 1, 0, 1, 1, 0, 1506057468),
(25, 21, '新增', '/group/add', 1, 'n', 0, 1, 0, 1, 1, 0, 1513324170),
(26, 21, '修改', '/group/edit', 2, 'fa', 0, 0, 0, 0, 1, 1506237920, 1506237920),
(27, 21, '删除', '/group/ajaxdel', 3, 'fa', 0, 0, 0, 0, 1, 1506237948, 1506237948),
(28, 22, '新增', '/env/add', 1, 'fa', 0, 0, 0, 0, 1, 1506316506, 1506316506),
(29, 22, '修改', '/env/edit', 2, 'fa', 0, 0, 0, 0, 1, 1506316532, 1506316532),
(30, 22, '删除', '/env/ajaxdel', 3, 'fa', 0, 0, 0, 0, 1, 1506316567, 1506316567),
(31, 23, '新增', '/code/add', 1, 'fa', 0, 0, 0, 0, 1, 1506327812, 1506327812),
(32, 23, '修改', '/code/edit', 2, 'fa', 0, 0, 0, 0, 1, 1506327831, 1506327831),
(33, 23, '删除', '/code/ajadel', 3, 'fa', 0, 0, 0, 0, 1, 1506327857, 1506327857),
(34, 17, '新增接口', '/api/add', 1, 'fa-link', 1, 1, 0, 1, 1, 0, 1515984869),
(35, 17, '修改接口', '/api/edit', 2, 'fa-link', 1, 1, 0, 1, 1, 0, 1515984880),
(36, 17, '删除接口', '/api/ajaxdel', 3, 'fa-link', 1, 1, 0, 1, 1, 0, 1515984893),
(37, 17, '查看接口', '/api/detail', 4, '', 0, 1, 0, 1, 1, 0, 1515984908),
(38, 17, '批量审核接口', '/api/ajaxchangestatus', 5, '', 0, 1, 0, 1, 1, 0, 1516000160),
(39, 16, 'API资源', '/apisource/list', 1, 'fa-skyatlas', 1, 1, 0, 1, 1, 0, 1515984925),
(40, 39, '新增', '/apisource/add', 1, '', 0, 1, 0, 1, 1, 0, 1515905034),
(41, 39, '修改', '/apisource/edit', 2, '', 0, 1, 0, 1, 1, 0, 1515905044),
(42, 39, '删除', '/apisource/ajaxdel', 3, '', 0, 1, 0, 1, 1, 0, 1515905055),
(43, 17, '审核页面', '/api/audit', 6, '', 0, 1, 1, 1, 1, 1516000189, 1516000189),
(44, 19, '新增', '/apipublic/add', 1, '', 0, 1, 1, 1, 1, 1516067809, 1516067809),
(45, 19, '修改', '/apipublic/edit', 2, '', 0, 1, 1, 1, 1, 1516067841, 1516067841),
(46, 19, '删除', '/apipublic/ajaxdel', 3, '', 0, 1, 1, 1, 1, 1516067881, 1516067881),
(47, 20, '模板设置', '/template/list', 4, 'fa-file-text', 1, 1, 1, 1, 1, 1516083233, 1516083233),
(48, 47, '新增', '/template/add', 1, '', 0, 1, 1, 1, 1, 1516083262, 1516083262),
(49, 47, '修改', '/template/edit', 2, '', 0, 1, 1, 1, 1, 1516083296, 1516083296),
(50, 47, '删除', '/template/ajaxdel', 3, '', 0, 1, 1, 1, 1, 1516083335, 1516083335),
(51, 1, '服务', '/', 100, 'address-book-o', 1, 1, 0, 1, 1, 0, 1534403863),
(52, 51, '品牌创意', '/brandcreativity/list', 111, '', 1, 1, 0, 1, 1, 0, 1534473200),
(53, 51, '数字营销', '/marketing/list', 102, '', 1, 1, 0, 1, 1, 0, 1535091760),
(54, 51, '活动公告', '/announcement/list', 103, '', 1, 6, 0, 6, 1, 0, 1539446254),
(55, 51, '创新文创', '/innovation/list', 104, '', 1, 1, 0, 1, 1, 0, 1535119770),
(56, 1, '作品视频', '/', 200, 'lightbulb-o', 1, 6, 0, 6, 1, 0, 1539447497),
(57, 56, '品牌作品视频', '/brandworks/list', 201, '', 1, 6, 0, 6, 1, 0, 1539447520),
(58, 1, '关于我们', '/', 300, '', 1, 1, 1, 1, 1, 1534404097, 1534404097),
(59, 58, '公司简介', '/companyprofile/list', 301, '', 1, 1, 0, 1, 1, 0, 1535124805),
(60, 58, '公司理念', '/companyconcept/list', 302, 'hand-rock-o', 1, 1, 0, 1, 1, 0, 1535469637),
(61, 58, '挂牌四板', '/companylisted/list', 303, '', 1, 1, 0, 1, 1, 0, 1535550709),
(62, 58, '服务客户', '/companyservice/list', 304, '', 1, 1, 0, 1, 1, 0, 1535552117),
(63, 1, '加入我们', '/', 400, '', 1, 1, 1, 1, 1, 1534407655, 1534407655),
(64, 63, '商务合作', '/business/list', 401, '', 1, 1, 0, 1, 1, 0, 1535553740),
(65, 63, '代理合作', '/agent/list', 402, '', 1, 1, 0, 1, 1, 0, 1535769217),
(66, 63, '加入团队', '/jointeam/list', 403, '', 1, 1, 0, 1, 1, 0, 1535770219),
(67, 52, '新增', '/brandcreativity/add', 111, '', 1, 1, 1, 1, 1, 1534475006, 1534475006),
(68, 52, '编辑', '/brandcreativity/edit', 111, '', 1, 1, 1, 1, 1, 1534475060, 1534475060),
(69, 52, '详情', '/brandcreativity/detail', 111, '', 1, 1, 1, 1, 1, 1534475094, 1534475094),
(70, 52, '删除', '/brandcreativity/del', 111, '', 1, 1, 1, 1, 1, 1534475116, 1534475116),
(71, 20, '图片上传', '/uploads/uploads', 700, '', 0, 1, 0, 1, 1, 0, 1535770635),
(72, 52, '新增接口', '/brandcreativity/ajaxsave1', 111, '', 1, 1, 0, 1, 0, 0, 1535096819),
(73, 53, '新增', '/marketing/add', 102, '', 1, 1, 1, 1, 1, 1535092892, 1535092892),
(74, 53, '详情', '/marketing/detail', 102, '', 1, 1, 1, 1, 1, 1535093606, 1535093606),
(75, 53, '编辑', '/marketing/edit', 102, '', 1, 1, 1, 1, 1, 1535094248, 1535094248),
(76, 54, '新增', '/announcement/add', 103, '', 1, 1, 1, 1, 1, 1535101431, 1535101431),
(77, 54, '编辑', '/announcement/edit', 103, '', 1, 1, 1, 1, 1, 1535101611, 1535101611),
(78, 55, '新增', '/innovation/add', 104, '', 1, 1, 1, 1, 1, 1535120136, 1535120136),
(79, 55, '编辑', '/innovation/edit', 104, '', 1, 1, 1, 1, 1, 1535120228, 1535120228),
(80, 59, '新增', '/companyprofile/add', 301, '', 0, 1, 0, 1, 1, 0, 1535468582),
(81, 59, '编辑', '/companyprofile/edit', 301, '', 0, 1, 1, 1, 1, 1535468679, 1535468679),
(82, 60, '新增', '/companyconcept/add', 302, 'hand-rock-o', 0, 1, 1, 1, 1, 1535469923, 1535469923),
(83, 60, '编辑', '/companyconcept/edit', 302, 'hand-rock-o', 0, 1, 1, 1, 1, 1535469967, 1535469967),
(84, 61, '新增', '/companylisted/add', 108, '', 0, 1, 0, 1, 1, 0, 1535552463),
(85, 61, '编辑', '/companylisted/edit', 108, '', 0, 1, 1, 1, 1, 1535551400, 1535551400),
(86, 62, '新增', '/companyservice/add', 304, '', 0, 1, 1, 1, 1, 1535552404, 1535552404),
(87, 62, '编辑', '/companyservice/edit', 304, '', 0, 1, 1, 1, 1, 1535552436, 1535552436),
(88, 64, '新增', '/business/add', 401, '', 0, 1, 1, 1, 1, 1535554518, 1535554518),
(89, 64, '编辑', '/business/edit', 401, '', 0, 1, 1, 1, 1, 1535768691, 1535768691),
(90, 65, '新增', '/agent/add', 402, '', 0, 1, 1, 1, 1, 1535769340, 1535769340),
(91, 65, '编辑', '/agent/edit', 402, '', 0, 1, 1, 1, 1, 1535769382, 1535769382),
(92, 66, '新增', '/jointeam/add', 444, '', 0, 1, 1, 1, 1, 1535770276, 1535770276),
(93, 66, '编辑', '/jointeam/edit', 403, '', 0, 1, 1, 1, 1, 1535770319, 1535770319),
(94, 57, '新增', '/brandworks/add', 222, '', 0, 1, 1, 1, 1, 1535783504, 1535783504),
(95, 57, '编辑', '/brandworks/edit', 222, '', 0, 1, 0, 1, 1, 0, 1535784016),
(96, 1, '首页轮播图', '/', 100, '', 1, 6, 6, 6, 1, 1538236234, 1538236234),
(97, 96, '电脑和移动的轮播图', '/lunbo/list', 100, '', 1, 6, 6, 6, 1, 1538236315, 1538236315),
(98, 97, '新增', '/lunbo/add', 100, '', 1, 6, 6, 6, 1, 1538236407, 1538236407),
(99, 97, '编辑', '/lunbo/edit', 100, '', 1, 6, 6, 6, 1, 1538236432, 1538236432);

-- --------------------------------------------------------

--
-- 表的结构 `pp_uc_role`
--

CREATE TABLE IF NOT EXISTS `pp_uc_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_name` varchar(32) NOT NULL DEFAULT '0' COMMENT '角色名称',
  `detail` varchar(255) NOT NULL DEFAULT '0' COMMENT '备注',
  `create_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `update_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改这ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1-正常，0-删除',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='角色表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pp_uc_role`
--

INSERT INTO `pp_uc_role` (`id`, `role_name`, `detail`, `create_id`, `update_id`, `status`, `create_time`, `update_time`) VALUES
(1, 'API管理员', '拥有API所有权限', 0, 1, 1, 1535775438, 1535775438),
(2, '系统管理员', '系统管理员', 0, 6, 1, 1538236447, 1538236447);

-- --------------------------------------------------------

--
-- 表的结构 `pp_uc_role_auth`
--

CREATE TABLE IF NOT EXISTS `pp_uc_role_auth` (
  `role_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `auth_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '权限ID',
  PRIMARY KEY (`role_id`,`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限和角色关系表';

--
-- 转存表中的数据 `pp_uc_role_auth`
--

INSERT INTO `pp_uc_role_auth` (`role_id`, `auth_id`) VALUES
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99);

-- --------------------------------------------------------

--
-- 表的结构 `pp_works`
--

CREATE TABLE IF NOT EXISTS `pp_works` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` text NOT NULL COMMENT '文章',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1-正常，0-删除',
  `create_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `update_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `video_path` varchar(512) NOT NULL DEFAULT '' COMMENT '视频地址',
  `type` int(1) NOT NULL COMMENT '作品视频 1 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `pp_works`
--

INSERT INTO `pp_works` (`id`, `content`, `status`, `create_id`, `update_id`, `create_time`, `update_time`, `title`, `video_path`, `type`) VALUES
(34, '', 0, 0, 0, 1535783981, 1535784040, 'zcdsdgs2222111', 'drgsdg2222111', 1),
(35, '', 0, 0, 0, 1535785091, 0, 'zSxcSZ', '是的撒上', 1),
(36, '', 0, 0, 0, 1535787766, 0, 'zscdZ', 'zscdS', 1),
(37, 'sdfsafvd', 0, 0, 0, 1535787854, 0, '111', '111', 1),
(38, 'gujhujhgj', 0, 0, 0, 1535788019, 0, 'sfd', 'xvfc', 1),
(39, '2222', 0, 0, 0, 1535788283, 0, '222', '222', 1),
(40, '4444', 0, 0, 0, 1535788468, 0, '444', '444', 1),
(41, '66666666666', 0, 0, 0, 1535788528, 0, '666', '66', 1),
(42, '水分擦拭', 0, 0, 0, 1535788839, 0, '想到处都是在', '早上吃的撒的', 1),
(43, 'q2222222<img src="/static/upload/image/20180901/timg1.jpg" alt="" />', 1, 0, 0, 1535789121, 1539449950, '111', 'http://08headline.oss-cn-zhangjiakou.aliyuncs.com/%E7%BD%91%E7%AB%99%E8%A7%86%E9%A2%91%E4%BD%9C%E5%93%81/mp4.mp4?Expires=1539452415&OSSAccessKeyId=TMP.AQFMejXzjNKeYgRazWEbFVQ3-8jS2jCV4siDmyu6q9p9qFLuFyjjp_73cOYEADAtAhQ-G2rqadMketPZVpUYXlQxdX81xQIVAMl5AtFqWbwX5x5OYh-I0EBFh2xZ&Signature=KIk%2F%2Fa%2FkjSweB4Bqf5rAYArACms%3D', 1),
(44, '<img src="/static/upload/image/20180930/bank3.png" alt="" />', 1, 0, 0, 1535789445, 1539449932, 'AXA', 'http://08headline.oss-cn-zhangjiakou.aliyuncs.com/%E7%BD%91%E7%AB%99%E8%A7%86%E9%A2%91%E4%BD%9C%E5%93%81/mp4.mp4?Expires=1539452415&OSSAccessKeyId=TMP.AQFMejXzjNKeYgRazWEbFVQ3-8jS2jCV4siDmyu6q9p9qFLuFyjjp_73cOYEADAtAhQ-G2rqadMketPZVpUYXlQxdX81xQIVAMl5AtFqWbwX5x5OYh-I0EBFh2xZ&Signature=KIk%2F%2Fa%2FkjSweB4Bqf5rAYArACms%3D', 1),
(45, '<img src="/static/upload/image/20180930/bank2.png" alt="" />', 1, 0, 0, 1535790884, 1539449914, '在S测试地址', 'http://08headline.oss-cn-zhangjiakou.aliyuncs.com/%E7%BD%91%E7%AB%99%E8%A7%86%E9%A2%91%E4%BD%9C%E5%93%81/mp4.mp4?Expires=1539452415&OSSAccessKeyId=TMP.AQFMejXzjNKeYgRazWEbFVQ3-8jS2jCV4siDmyu6q9p9qFLuFyjjp_73cOYEADAtAhQ-G2rqadMketPZVpUYXlQxdX81xQIVAMl5AtFqWbwX5x5OYh-I0EBFh2xZ&Signature=KIk%2F%2Fa%2FkjSweB4Bqf5rAYArACms%3D', 1),
(46, '<img src="/static/upload/image/20180930/bank1.png" alt="" />', 1, 0, 0, 1535880856, 1539449857, 'fdcdas', 'http://08headline.oss-cn-zhangjiakou.aliyuncs.com/%E7%BD%91%E7%AB%99%E8%A7%86%E9%A2%91%E4%BD%9C%E5%93%81/mp4.mp4?Expires=1539452415&OSSAccessKeyId=TMP.AQFMejXzjNKeYgRazWEbFVQ3-8jS2jCV4siDmyu6q9p9qFLuFyjjp_73cOYEADAtAhQ-G2rqadMketPZVpUYXlQxdX81xQIVAMl5AtFqWbwX5x5OYh-I0EBFh2xZ&Signature=KIk%2F%2Fa%2FkjSweB4Bqf5rAYArACms%3D', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
