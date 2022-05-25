/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : spbsfzyyjwzglpt

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2022-03-04 20:31:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `juanzengjilu`
-- ----------------------------
DROP TABLE IF EXISTS `juanzengjilu`;
CREATE TABLE `juanzengjilu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wuzimingchen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物资名称',
  `juanzengshuliang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '捐赠数量',
  `juanzengdiqu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '捐赠地区',
  `lianxifangshi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `juanzengzhuangtai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '待确认' COMMENT '捐赠状态',
  `beizhu` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `juanzengren` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '捐赠人',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='捐赠记录';

-- ----------------------------
-- Records of juanzengjilu
-- ----------------------------
INSERT INTO `juanzengjilu` VALUES ('1', '口罩', '1000', '丰台区', '13333333333', '未到位', 'sgfs', 'admin', '2022-02-27 00:00:00');

-- ----------------------------
-- Table structure for `toubiaojilu`
-- ----------------------------
DROP TABLE IF EXISTS `toubiaojilu`;
CREATE TABLE `toubiaojilu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `zhaobiaomingchen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '招标名称',
  `toubiaoriqi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投标日期',
  `toubiaodanwei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投标单位',
  `toubiaojine` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投标金额',
  `beizhu` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标书',
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '待开标' COMMENT '是否中标',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='投标记录';

-- ----------------------------
-- Records of toubiaojilu
-- ----------------------------
INSERT INTO `toubiaojilu` VALUES ('2', '采购XX防疫物资一批', '2022-02-27', '管理员', '123456', null, null, '待开标', '2022-02-27 00:00:00');
INSERT INTO `toubiaojilu` VALUES ('4', '采购XX防疫物资一批', '2022-02-27', '企业角色', '123456', 'sfg', null, '待开标', '2022-02-28 00:00:00');
INSERT INTO `toubiaojilu` VALUES ('5', '采购XX防疫物资一批', '2022-02-27', '企业角色', '6666', '二村', null, '待开标', '2022-03-02 00:00:00');
INSERT INTO `toubiaojilu` VALUES ('6', '采购XX防疫物资一批', '2022-02-27', '政府角色', '555', null, null, '待开标', '2022-03-02 00:00:00');
INSERT INTO `toubiaojilu` VALUES ('7', '采购XX防疫物资一批', '2022-02-27', '管理员', '5555', null, '/files/1646235834558', '是', '2022-03-02 00:00:00');

-- ----------------------------
-- Table structure for `tousujilu`
-- ----------------------------
DROP TABLE IF EXISTS `tousujilu`;
CREATE TABLE `tousujilu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `biaoti` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `tousuduixiang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投诉对象',
  `tousuliyou` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投诉理由',
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证明材料',
  `tousuren` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投诉人',
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '待处理' COMMENT '是否成立',
  `jieguofankui` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结果反馈',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='投诉记录';

-- ----------------------------
-- Records of tousujilu
-- ----------------------------
INSERT INTO `tousujilu` VALUES ('1', '关于XX的投诉', '张三', 'affdadf', null, 'admin', '是', 'fdafadf', '2022-02-27 00:00:00');
INSERT INTO `tousujilu` VALUES ('2', 'asdf', 'dfs', 'asdf', null, '003', '是', 'dfadfadf', '2022-03-02 00:00:00');

-- ----------------------------
-- Table structure for `t_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dicttype` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类别',
  `parentid` bigint(20) DEFAULT '0' COMMENT '父ID',
  `dictvalue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典值',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数据字典';

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', '性别', '0', '', '');
INSERT INTO `t_dict` VALUES ('2', '', '1', '男', '');
INSERT INTO `t_dict` VALUES ('3', '', '1', '女', '');
INSERT INTO `t_dict` VALUES ('4', '', '1', '未知', '');
INSERT INTO `t_dict` VALUES ('5', '资讯文章', '0', '', '');
INSERT INTO `t_dict` VALUES ('93', '地区', '0', '', '');
INSERT INTO `t_dict` VALUES ('94', '', '93', '东城区', '');
INSERT INTO `t_dict` VALUES ('95', '', '93', '西城区', '');
INSERT INTO `t_dict` VALUES ('96', '', '93', '朝阳区', '');
INSERT INTO `t_dict` VALUES ('97', '', '93', '丰台区', '');
INSERT INTO `t_dict` VALUES ('98', '', '93', '石景山区', '');
INSERT INTO `t_dict` VALUES ('99', '', '93', '海淀区', '');
INSERT INTO `t_dict` VALUES ('100', '', '93', '门头沟区', '');
INSERT INTO `t_dict` VALUES ('101', '', '93', '房山区', '');
INSERT INTO `t_dict` VALUES ('102', '', '93', '通州区', '');
INSERT INTO `t_dict` VALUES ('103', '', '93', '顺义区', '');
INSERT INTO `t_dict` VALUES ('104', '', '93', '昌平区', '');
INSERT INTO `t_dict` VALUES ('105', '', '93', '大兴区', '');
INSERT INTO `t_dict` VALUES ('106', '', '93', '怀柔区', '');
INSERT INTO `t_dict` VALUES ('107', '', '93', '平谷区', '');
INSERT INTO `t_dict` VALUES ('108', '', '93', '密云区', '');
INSERT INTO `t_dict` VALUES ('109', '', '93', '延庆区', '');
INSERT INTO `t_dict` VALUES ('110', '物资需求状态', '0', '', '');
INSERT INTO `t_dict` VALUES ('111', '', '110', '筹集中', '');
INSERT INTO `t_dict` VALUES ('112', '', '110', '已筹满', '');
INSERT INTO `t_dict` VALUES ('113', '捐赠状态', '0', '', '');
INSERT INTO `t_dict` VALUES ('114', '', '113', '未到位', '');
INSERT INTO `t_dict` VALUES ('115', '', '113', '已到位', '');
INSERT INTO `t_dict` VALUES ('116', '招标状态', '0', '', '');
INSERT INTO `t_dict` VALUES ('117', '', '116', '公示期', '');
INSERT INTO `t_dict` VALUES ('118', '', '116', '竞标中', '');
INSERT INTO `t_dict` VALUES ('119', '', '116', '已完成', '');
INSERT INTO `t_dict` VALUES ('120', '运输状态', '0', '', '');
INSERT INTO `t_dict` VALUES ('121', '', '120', '运输中', '');
INSERT INTO `t_dict` VALUES ('122', '', '120', '已送达', '');
INSERT INTO `t_dict` VALUES ('124', '', '5', '新闻速递', '');
INSERT INTO `t_dict` VALUES ('125', '', '5', '物资分配', '');

-- ----------------------------
-- Table structure for `t_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统日志';

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('172', '更新角色：超级管理员', '2022-02-21 13:58:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('173', '更新角色：超级管理员', '2022-02-21 14:00:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('174', '更新角色：超级管理员', '2022-02-21 14:01:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('175', '用户 admin 退出系统', '2022-02-21 14:16:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('176', '用户 admin 登录系统', '2022-02-21 14:16:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('177', '用户 admin 退出系统', '2022-02-21 14:16:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('178', '用户 admin 登录系统', '2022-02-21 14:26:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('179', '用户 admin 退出系统', '2022-02-21 14:31:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('180', '用户 admin 登录系统', '2022-02-21 14:31:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('181', '用户 admin 退出系统', '2022-02-21 15:06:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('182', '用户 admin 登录系统', '2022-02-21 15:06:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('183', '用户 admin 登录系统', '2022-02-21 17:16:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('184', '用户 admin 退出系统', '2022-02-21 17:18:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('185', '用户 admin 登录系统', '2022-02-24 10:46:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('186', '用户 admin 登录系统', '2022-02-24 10:52:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('187', '用户 admin 登录系统', '2022-02-24 15:22:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('188', '用户 admin 退出系统', '2022-02-24 15:23:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('189', '用户 admin 登录系统', '2022-02-24 15:23:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('190', '更新角色：超级管理员', '2022-02-24 15:24:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('191', '用户 admin 登录系统', '2022-02-24 16:53:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('192', '用户 admin 退出系统', '2022-02-24 17:54:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('193', '用户 li 登录系统', '2022-02-24 17:55:04', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('194', '用户 li 退出系统', '2022-02-24 17:55:09', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('195', '用户 admin 登录系统', '2022-02-24 17:55:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('196', '更新角色：普通用户', '2022-02-24 17:55:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('197', '用户 admin 退出系统', '2022-02-24 17:55:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('198', '用户 li 登录系统', '2022-02-24 17:55:31', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('199', '用户 li 登录系统', '2022-02-24 17:57:06', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('200', '用户 admin 登录系统', '2022-02-24 20:15:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('201', '用户 admin 登录系统', '2022-02-24 20:18:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('202', '更新角色：普通用户', '2022-02-24 20:19:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('203', '用户 admin 退出系统', '2022-02-24 20:19:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('204', '用户 admin 登录系统', '2022-02-24 20:19:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('205', '更新角色：超级管理员', '2022-02-24 20:19:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('206', '用户 admin 登录系统', '2022-02-24 20:27:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('207', '更新角色：超级管理员', '2022-02-24 20:27:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('208', '更新角色：普通用户', '2022-02-24 20:27:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('209', '用户 admin 登录系统', '2022-02-24 20:40:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('210', '用户 admin 登录系统', '2022-02-24 20:55:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('211', '用户 admin 登录系统', '2022-02-24 22:03:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('212', '用户 admin 登录系统', '2022-02-24 22:44:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('213', '用户 admin 登录系统', '2022-02-25 00:44:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('214', '更新角色：超级管理员', '2022-02-25 00:44:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('215', '更新角色：普通用户', '2022-02-25 00:52:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('216', '用户 admin 退出系统', '2022-02-25 00:52:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('217', '用户 li 登录系统', '2022-02-25 00:52:45', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('218', '用户 admin 登录系统', '2022-02-25 00:53:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('219', '用户 admin 退出系统', '2022-02-25 00:53:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('220', '用户 li 登录系统', '2022-02-25 00:53:59', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('221', '更新用户：li ', '2022-02-25 01:20:18', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('222', '用户 li 退出系统', '2022-02-25 01:20:40', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('223', '用户 li 登录系统', '2022-02-25 01:20:49', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('224', '用户 li 退出系统', '2022-02-25 01:21:11', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('225', '用户 admin 登录系统', '2022-02-25 01:21:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('226', '用户 admin 登录系统', '2022-02-25 10:00:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('227', '用户 admin 登录系统', '2022-02-25 10:24:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('228', '用户 admin 登录系统', '2022-02-25 10:29:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('229', '用户 admin 登录系统', '2022-02-25 10:38:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('230', '新增权限菜单：收藏管理', '2022-02-25 11:11:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('231', '更新权限菜单：收藏管理', '2022-02-25 11:11:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('232', '用户 admin 退出系统', '2022-02-25 11:13:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('233', '用户 admin 登录系统', '2022-02-25 11:13:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('234', '用户 admin 登录系统', '2022-02-25 11:13:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('235', '更新权限菜单：收藏管理', '2022-02-25 11:16:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('236', '更新权限菜单：收藏管理', '2022-02-25 11:33:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('237', '删除权限菜单：留言评论', '2022-02-25 11:34:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('238', '删除权限菜单：资讯文章', '2022-02-25 11:34:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('239', '删除权限菜单：音乐信息', '2022-02-25 11:34:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('240', '删除权限菜单：系统日志', '2022-02-25 11:34:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('241', '更新角色：普通用户', '2022-02-25 11:35:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('242', '用户 admin 退出系统', '2022-02-25 11:35:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('243', '用户 li 登录系统', '2022-02-25 11:35:32', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('244', '用户 li 退出系统', '2022-02-25 11:36:04', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('245', '用户 admin 登录系统', '2022-02-25 11:39:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('246', '用户 admin 登录系统', '2022-02-25 20:01:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('247', '用户 admin 登录系统', '2022-02-25 21:01:44', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('248', '用户 admin 登录系统', '2022-02-25 22:08:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('249', '用户 admin 退出系统', '2022-02-25 23:35:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('250', '用户 li 登录系统', '2022-02-25 23:35:36', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('251', '用户 li 登录系统', '2022-02-25 23:35:36', 'li', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('252', '用户 admin 登录系统', '2022-02-25 23:43:51', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('253', '删除权限菜单：权限管理', '2022-02-25 23:54:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('254', '用户 admin 退出系统', '2022-02-25 23:56:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('255', '用户 555 注册账号成功', '2022-02-25 23:57:25', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('256', '用户 555 登录系统', '2022-02-25 23:57:28', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('257', '更新用户：555 ', '2022-02-25 23:58:08', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('258', '用户 555 退出系统', '2022-02-25 23:58:13', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('259', '用户 admin 登录系统', '2022-02-25 23:59:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('260', '更新角色：超级管理员', '2022-02-26 00:00:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('261', '更新角色：超级管理员', '2022-02-26 00:00:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('262', '用户 admin 退出系统', '2022-02-26 00:01:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('263', '用户 666 注册账号成功', '2022-02-26 00:02:05', '666', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('264', '用户 666 登录系统', '2022-02-26 00:02:12', '666', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('265', '更新用户：666 ', '2022-02-26 00:02:59', '666', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('266', '用户 666 退出系统', '2022-02-26 00:03:15', '666', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('267', '用户 666 登录系统', '2022-02-26 00:03:21', '666', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('268', '用户 666 退出系统', '2022-02-26 00:03:28', '666', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('269', '用户 admin 登录系统', '2022-02-26 01:54:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('270', '用户 admin 登录系统', '2022-02-26 02:09:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('271', '用户 admin 登录系统', '2022-02-26 02:32:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('272', '用户 admin 登录系统', '2022-02-26 03:02:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('273', '用户 admin 登录系统', '2022-02-26 03:25:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('274', '用户 admin 登录系统', '2022-02-26 15:48:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('275', '用户 admin 登录系统', '2022-02-26 16:32:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('276', '用户 admin 登录系统', '2022-02-26 16:37:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('277', '用户 admin 登录系统', '2022-02-26 18:41:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('278', '更新角色：超级管理员', '2022-02-26 18:42:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('279', '更新角色：超级管理员', '2022-02-26 18:42:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('280', '更新角色：普通用户', '2022-02-26 18:51:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('281', '用户 admin 退出系统', '2022-02-26 18:52:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('282', '用户 555 登录系统', '2022-02-26 18:52:27', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('283', '用户 555 退出系统', '2022-02-26 18:53:24', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('284', '用户 admin 登录系统', '2022-02-26 18:53:28', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('285', '更新角色：普通用户', '2022-02-26 18:53:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('286', '用户 admin 退出系统', '2022-02-26 18:53:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('287', '用户 555 登录系统', '2022-02-26 18:53:46', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('288', '用户 555 退出系统', '2022-02-26 18:55:28', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('289', '用户 admin 登录系统', '2022-02-26 18:55:31', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('290', '用户 admin 登录系统', '2022-02-26 19:52:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('291', '用户 admin 退出系统', '2022-02-26 19:58:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('292', '用户 admin 登录系统', '2022-02-26 19:58:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('293', '用户 admin 退出系统', '2022-02-26 20:29:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('294', '用户 555 登录系统', '2022-02-26 20:29:32', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('295', '用户 555 登录系统', '2022-02-26 21:02:01', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('296', '用户 555 退出系统', '2022-02-26 21:05:02', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('297', '用户 admin 登录系统', '2022-02-26 23:49:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('298', '用户 admin 退出系统', '2022-02-26 23:49:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('299', '用户 555 登录系统', '2022-02-26 23:49:21', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('300', '用户 555 退出系统', '2022-02-26 23:49:34', '555', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('301', '用户 admin 登录系统', '2022-02-26 23:49:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('302', '更新角色：超级管理员', '2022-02-26 23:49:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('303', '更新角色：超级管理员', '2022-02-26 23:50:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('304', '更新角色：超级管理员', '2022-02-26 23:59:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('305', '用户 admin 登录系统', '2022-02-27 02:18:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('306', '用户 admin 退出系统', '2022-02-27 02:23:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('307', '用户 admin 登录系统', '2022-02-27 02:23:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('308', '更新角色：超级管理员', '2022-02-27 02:24:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('309', '更新角色：超级管理员', '2022-02-27 02:24:33', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('310', '更新角色：超级管理员', '2022-02-27 02:24:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('311', '更新角色：政府', '2022-02-27 02:32:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('312', '新增角色：普通用户', '2022-02-27 02:32:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('313', '新增角色：红十字会', '2022-02-27 02:33:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('314', '新增角色：运输公司', '2022-02-27 02:33:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('315', '新增角色：社区', '2022-02-27 02:33:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('316', '新增角色：医院', '2022-02-27 02:33:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('317', '新增角色：企业', '2022-02-27 02:33:57', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('318', '更新角色：政府', '2022-02-27 02:36:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('319', '更新角色：普通用户', '2022-02-27 02:37:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('320', '更新角色：红十字会', '2022-02-27 02:37:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('321', '更新角色：社区', '2022-02-27 02:38:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('322', '更新角色：医院', '2022-02-27 02:38:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('323', '更新角色：企业', '2022-02-27 02:39:12', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('324', '更新角色：红十字会', '2022-02-27 02:47:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('325', '用户 admin 登录系统', '2022-02-27 10:01:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('326', '用户 admin 退出系统', '2022-02-27 10:14:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('327', '用户 admin 登录系统', '2022-02-27 10:25:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('328', '用户 admin 登录系统', '2022-02-27 13:07:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('329', '更新权限菜单：资讯文章', '2022-02-27 13:08:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('330', '更新角色：超级管理员', '2022-02-27 13:08:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('331', '用户 admin 登录系统', '2022-02-27 13:50:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('332', '更新角色：超级管理员', '2022-02-27 13:50:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('333', '用户 admin 登录系统', '2022-02-27 14:06:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('334', '删除权限菜单：模型信息', '2022-02-27 14:07:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('335', '更新角色：超级管理员', '2022-02-27 14:07:59', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('336', '更新角色：超级管理员', '2022-02-27 14:08:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('337', '用户 admin 登录系统', '2022-02-27 15:32:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('338', '更新用户：001 ', '2022-02-27 16:23:08', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('339', '更新用户：002 ', '2022-02-27 16:23:17', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('340', '更新用户：003 ', '2022-02-27 16:23:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('341', '更新用户：004 ', '2022-02-27 16:23:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('342', '更新用户：002 ', '2022-02-27 16:23:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('343', '更新用户：002 ', '2022-02-27 16:23:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('344', '更新用户：003 ', '2022-02-27 16:23:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('345', '更新用户：003 ', '2022-02-27 16:23:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('346', '更新用户：004 ', '2022-02-27 16:24:00', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('347', '更新用户：004 ', '2022-02-27 16:24:02', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('348', '更新用户：001 ', '2022-02-27 16:25:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('349', '更新用户：002 ', '2022-02-27 16:25:48', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('350', '更新用户：003 ', '2022-02-27 16:25:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('351', '更新用户：004 ', '2022-02-27 16:26:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('352', '用户 admin 登录系统', '2022-02-27 18:44:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('353', '用户 admin 登录系统', '2022-02-27 19:36:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('354', '更新角色：政府', '2022-02-27 19:38:30', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('355', '更新角色：政府', '2022-02-27 19:38:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('356', '更新角色：普通用户', '2022-02-27 19:39:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('357', '更新角色：普通用户', '2022-02-27 19:39:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('358', '更新角色：红十字会', '2022-02-27 19:39:35', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('359', '更新角色：运输公司', '2022-02-27 19:39:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('360', '更新角色：社区', '2022-02-27 19:40:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('361', '更新角色：医院', '2022-02-27 19:40:23', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('362', '更新角色：企业', '2022-02-27 19:40:37', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('363', '新增用户：005 ', '2022-02-27 19:41:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('364', '更新用户：005 ', '2022-02-27 19:41:54', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('365', '新增用户：006 ', '2022-02-27 19:42:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('366', '新增用户：007 ', '2022-02-27 19:42:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('367', '更新用户：007 ', '2022-02-27 19:42:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('368', '更新用户：006 ', '2022-02-27 19:42:49', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('369', '用户 admin 退出系统', '2022-02-27 20:11:29', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('370', '用户 001 登录系统', '2022-02-27 20:11:35', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('371', '更新用户：001 ', '2022-02-27 20:12:37', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('372', '用户 001 退出系统', '2022-02-27 20:14:04', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('373', '用户 002 登录系统', '2022-02-27 20:14:12', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('374', '更新用户：002 ', '2022-02-27 20:15:29', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('375', '用户 002 退出系统', '2022-02-27 20:16:40', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('376', '用户 003 登录系统', '2022-02-27 20:18:42', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('377', '用户 admin 登录系统', '2022-02-27 21:56:20', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('378', '用户 admin 退出系统', '2022-02-27 21:56:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('379', '用户 003 登录系统', '2022-02-27 21:56:56', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('380', '更新用户：003 ', '2022-02-27 21:59:04', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('381', '用户 003 退出系统', '2022-02-27 21:59:09', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('382', '用户 004 登录系统', '2022-02-27 21:59:34', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('383', '更新用户：004 ', '2022-02-27 21:59:53', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('384', '用户 004 退出系统', '2022-02-27 22:00:08', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('385', '用户 005 登录系统', '2022-02-27 22:00:40', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('386', '更新用户：005 ', '2022-02-27 22:01:59', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('387', '用户 005 退出系统', '2022-02-27 22:02:09', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('388', '用户 006 登录系统', '2022-02-27 22:02:15', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('389', '更新用户：006 ', '2022-02-27 22:02:58', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('390', '用户 006 退出系统', '2022-02-27 22:05:40', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('391', '用户 006 登录系统', '2022-02-27 22:05:54', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('392', '用户 006 退出系统', '2022-02-27 22:06:00', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('393', '用户 007 登录系统', '2022-02-27 22:06:06', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('394', '更新用户：007 ', '2022-02-27 22:06:42', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('395', '用户 admin 登录系统', '2022-02-28 07:43:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('396', '更新用户：admin ', '2022-02-28 07:43:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('397', '更新用户：admin ', '2022-02-28 07:43:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('398', '更新用户：admin ', '2022-02-28 07:44:06', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('399', '更新用户：admin ', '2022-02-28 07:46:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('400', '更新用户：admin ', '2022-02-28 07:46:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('401', '更新用户：admin ', '2022-02-28 07:50:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('402', '用户 admin 登录系统', '2022-02-28 08:37:50', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('403', '更新角色：普通用户', '2022-02-28 08:43:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('404', '更新角色：政府', '2022-02-28 08:43:25', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('405', '更新角色：政府', '2022-02-28 08:44:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('406', '更新角色：普通用户', '2022-02-28 08:44:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('407', '更新角色：政府', '2022-02-28 08:44:45', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('408', '用户 admin 登录系统', '2022-02-28 11:09:16', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('409', '用户 admin 登录系统', '2022-02-28 22:36:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('410', '用户 admin 退出系统', '2022-02-28 23:29:40', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('411', '用户 admin 登录系统', '2022-02-28 23:30:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('412', '用户 admin 退出系统', '2022-02-28 23:31:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('413', '用户 002 登录系统', '2022-02-28 23:31:50', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('414', '用户 002 退出系统', '2022-02-28 23:32:02', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('415', '用户 001 登录系统', '2022-02-28 23:32:11', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('416', '用户 001 退出系统', '2022-02-28 23:32:25', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('417', '用户 003 登录系统', '2022-02-28 23:32:30', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('418', '用户 003 退出系统', '2022-02-28 23:32:35', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('419', '用户 004 登录系统', '2022-02-28 23:32:41', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('420', '用户 004 退出系统', '2022-02-28 23:32:48', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('421', '用户 005 登录系统', '2022-02-28 23:32:52', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('422', '用户 005 退出系统', '2022-02-28 23:32:57', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('423', '用户 006 登录系统', '2022-02-28 23:33:02', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('424', '用户 006 退出系统', '2022-02-28 23:33:16', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('425', '用户 007 登录系统', '2022-02-28 23:33:21', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('426', '用户 007 退出系统', '2022-02-28 23:33:31', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('427', '用户 admin 登录系统', '2022-03-01 00:15:24', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('428', '用户 admin 登录系统', '2022-03-01 06:08:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('429', '用户 admin 登录系统', '2022-03-01 13:22:03', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('430', '用户 admin 登录系统', '2022-03-01 14:01:41', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('431', '用户 admin 登录系统', '2022-03-01 16:21:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('432', '用户 admin 退出系统', '2022-03-01 16:45:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('433', '用户 admin 登录系统', '2022-03-01 16:45:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('434', '更新用户：admin ', '2022-03-01 16:50:19', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('435', '用户 admin 登录系统', '2022-03-01 17:27:04', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('436', '用户 admin 登录系统', '2022-03-02 00:01:43', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('437', '用户 admin 登录系统', '2022-03-02 04:16:32', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('438', '用户 admin 登录系统', '2022-03-02 05:12:36', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('439', '更新角色：超级管理员', '2022-03-02 05:12:58', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('440', '用户 admin 退出系统', '2022-03-02 05:33:14', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('441', '用户 001 登录系统', '2022-03-02 05:33:32', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('442', '用户 admin 登录系统', '2022-03-02 05:35:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('443', '更新角色：政府', '2022-03-02 05:36:21', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('444', '更新角色：政府', '2022-03-02 05:36:55', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('445', '更新角色：政府', '2022-03-02 05:37:42', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('446', '更新角色：普通用户', '2022-03-02 05:39:09', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('447', '用户 001 退出系统', '2022-03-02 05:39:17', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('448', '用户 001 登录系统', '2022-03-02 05:39:23', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('449', '更新用户：001 ', '2022-03-02 05:39:46', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('450', '更新用户：001 ', '2022-03-02 05:39:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('451', '更新用户：007 ', '2022-03-02 05:39:53', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('452', '更新用户：007 ', '2022-03-02 05:39:56', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('453', '用户 001 退出系统', '2022-03-02 05:40:07', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('454', '用户 001 登录系统', '2022-03-02 05:40:12', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('455', '用户 001 登录系统', '2022-03-02 05:59:18', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('456', '用户 admin 登录系统', '2022-03-02 06:04:38', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('457', '用户 001 退出系统', '2022-03-02 06:11:55', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('458', '用户 002 登录系统', '2022-03-02 06:12:02', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('459', '用户 002 退出系统', '2022-03-02 06:16:46', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('460', '用户 001 登录系统', '2022-03-02 06:16:51', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('461', '更新角色：政府', '2022-03-02 06:17:13', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('462', '用户 001 退出系统', '2022-03-02 06:17:22', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('463', '用户 001 登录系统', '2022-03-02 06:17:29', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('464', '用户 001 退出系统', '2022-03-02 06:19:08', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('465', '用户 002 登录系统', '2022-03-02 06:19:16', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('466', '用户 002 退出系统', '2022-03-02 06:22:34', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('467', '用户 004 登录系统', '2022-03-02 06:22:42', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('468', '用户 004 退出系统', '2022-03-02 06:30:21', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('469', '用户 007 登录系统', '2022-03-02 06:30:28', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('470', '用户 007 退出系统', '2022-03-02 06:36:50', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('471', '用户 005 登录系统', '2022-03-02 06:36:58', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('472', '用户 005 退出系统', '2022-03-02 06:38:05', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('473', '用户 006 登录系统', '2022-03-02 06:38:11', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('474', '更新角色：企业', '2022-03-02 06:38:34', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('475', '用户 006 退出系统', '2022-03-02 06:38:40', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('476', '用户 006 登录系统', '2022-03-02 06:38:46', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('477', '用户 admin 登录系统', '2022-03-02 07:21:07', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('478', '用户 admin 退出系统', '2022-03-02 07:53:01', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('479', '用户 007 登录系统', '2022-03-02 07:53:06', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('480', '用户 admin 登录系统', '2022-03-02 08:31:26', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('481', '用户 admin 登录系统', '2022-03-02 10:06:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('482', '更新角色：超级管理员', '2022-03-02 11:39:52', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('483', '更新角色：超级管理员', '2022-03-02 11:40:39', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('484', '用户 admin 登录系统', '2022-03-02 22:15:10', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('485', '用户 admin 退出系统', '2022-03-02 22:15:47', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('486', '用户 001 登录系统', '2022-03-02 22:17:11', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('487', '用户 admin 登录系统', '2022-03-02 23:42:18', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('488', '用户 admin 退出系统', '2022-03-02 23:44:27', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('489', '用户 007 登录系统', '2022-03-02 23:44:38', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('490', '用户 007 登录系统', '2022-03-02 23:44:38', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('491', '用户 007 退出系统', '2022-03-02 23:44:49', '007', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('492', '用户 006 登录系统', '2022-03-02 23:44:54', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('493', '用户 006 退出系统', '2022-03-02 23:45:01', '006', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('494', '用户 005 登录系统', '2022-03-02 23:45:05', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('495', '用户 005 退出系统', '2022-03-02 23:45:16', '005', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('496', '用户 004 登录系统', '2022-03-02 23:45:20', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('497', '用户 004 退出系统', '2022-03-02 23:45:28', '004', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('498', '用户 003 登录系统', '2022-03-02 23:45:34', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('499', '用户 003 退出系统', '2022-03-02 23:45:47', '003', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('500', '用户 002 登录系统', '2022-03-02 23:45:51', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('501', '用户 002 退出系统', '2022-03-02 23:45:58', '002', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('502', '用户 001 登录系统', '2022-03-02 23:46:05', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('503', '用户 001 退出系统', '2022-03-02 23:46:35', '001', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('504', '用户 admin 登录系统', '2022-03-04 20:10:11', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('505', '用户 admin 退出系统', '2022-03-04 20:11:15', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('506', '用户 admin 登录系统', '2022-03-04 20:15:22', 'admin', '0:0:0:0:0:0:0:1');
INSERT INTO `t_log` VALUES ('507', '删除权限菜单：权限管理', '2022-03-04 20:15:47', 'admin', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `t_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COMMENT '内容',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint(20) DEFAULT '0' COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='留言评论';

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('73', 'test', 'admin', '2022-02-26 16:41:00', null, '1000005');
INSERT INTO `t_message` VALUES ('74', '111111111111', 'admin', '2022-02-26 16:41:10', '73', '1000005');
INSERT INTO `t_message` VALUES ('76', 'test', 'admin', '2022-03-01 16:49:07', null, '0');
INSERT INTO `t_message` VALUES ('77', '回复测试', 'admin', '2022-03-01 16:49:23', '76', '0');
INSERT INTO `t_message` VALUES ('78', '大概需要a', 'admin', '2022-03-01 16:49:48', null, '1000001');
INSERT INTO `t_message` VALUES ('79', '回复测试', 'admin', '2022-03-01 16:50:00', '78', '1000001');
INSERT INTO `t_message` VALUES ('80', '干杯', 'admin', '2022-03-01 16:50:43', null, '1000002');
INSERT INTO `t_message` VALUES ('82', 'fadfa', '001', '2022-03-02 22:17:22', null, '1000004');
INSERT INTO `t_message` VALUES ('83', 'dfadf', 'admin', '2022-03-02 23:42:38', null, '1000001');
INSERT INTO `t_message` VALUES ('84', 'adfadf', 'admin', '2022-03-02 23:42:42', '83', '1000001');
INSERT INTO `t_message` VALUES ('85', 'dfa', 'admin', '2022-03-02 23:44:24', null, '0');

-- ----------------------------
-- Table structure for `t_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `biaoti` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `leibie` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类别',
  `zhaiyao` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '摘要',
  `img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '../../images/nopic.jpg' COMMENT '主图',
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `faburen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '发布人',
  `dianjilv` bigint(20) DEFAULT '1' COMMENT '点击率',
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '否' COMMENT '审核',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='资讯文章';

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('1', '冬奥会成功闭幕', '新闻速递', '冬奥会成功闭幕', '/files/1645424864099', '/files/1645385974196', '<p>冬奥会成功闭幕sfgsfg</p>', 'admin', '2', '是', '2022-03-01 00:00:00');
INSERT INTO `t_news` VALUES ('2', '热烈祝贺本站成功上线', '新闻速递', '热烈祝贺本站成功上线', '/files/1645422101299', '', '<p>热烈祝贺本站成功上线&nbsp;</p>', 'admin', '99', '是', '2022-03-01 00:00:00');
INSERT INTO `t_news` VALUES ('3', '北京市关于XX物资分配的指导意见', '物资分配', '北京市关于XX物资分配的指导意见', '', '', '<p>北京市关于XX物资分配的指导意见</p>', '001', '1', '否', '2022-03-02 00:00:00');
INSERT INTO `t_news` VALUES ('4', '北京市关于XX的紧急通知', '物资分配', '北京市关于XX的紧急通知', '../../images/nopic.jpg', '', '<p>北京市关于XX的紧急通知</p>', '001', '1', '否', '2022-03-02 05:50:01');

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告表';

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('4', '系统公告', '系统公告ghdfhdf', '2022-02-20 15:29:29');
INSERT INTO `t_notice` VALUES ('5', '系统简介', '系统简介', '2022-02-20 15:30:08');
INSERT INTO `t_notice` VALUES ('6', '关于我们', '关于我们', '2022-02-20 15:30:42');

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `path` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) DEFAULT 's-data' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '用户管理', '用户管理', 'user', 'user-solid');
INSERT INTO `t_permission` VALUES ('2', '角色管理', '角色管理', 'role', 's-cooperation');
INSERT INTO `t_permission` VALUES ('5', '数据字典', '数据字典', 'dict', 'info');
INSERT INTO `t_permission` VALUES ('6', '公告管理', '公告管理', 'notice', 'data-board');
INSERT INTO `t_permission` VALUES ('19', '资讯文章', '资讯文章', 'news', 'news');
INSERT INTO `t_permission` VALUES ('25', '捐赠记录', '捐赠记录', 'juanzengjilu', 's-data');
INSERT INTO `t_permission` VALUES ('28', '灾情信息', '灾情信息', 'zaiqingxinxi', 's-data');
INSERT INTO `t_permission` VALUES ('29', '运输记录', '运输记录', 'yunshujilu', 's-data');
INSERT INTO `t_permission` VALUES ('30', '投诉记录', '投诉记录', 'tousujilu', 's-data');
INSERT INTO `t_permission` VALUES ('31', '物资调度', '物资调度', 'wuzidiaodu', 's-data');
INSERT INTO `t_permission` VALUES ('32', '投标记录', '投标记录', 'toubiaojilu', 's-data');
INSERT INTO `t_permission` VALUES ('33', '招标信息', '招标信息', 'zhaobiaoxinxi', 's-data');
INSERT INTO `t_permission` VALUES ('34', '物资需求', '物资需求', 'wuzixuqiu', 's-data');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '超级管理员', '所有权限', '[1,2,27,106,121,122,123,10,11,12,18,5,6,19,24,26,28]');
INSERT INTO `t_role` VALUES ('2', '普通用户', '本看各地物资需求、提交捐赠物资信息、查看物资运输信息、查看灾情信息及新闻', '[10,11,12,18,28,24,29,25]');
INSERT INTO `t_role` VALUES ('3', '政府', '受理投诉、发布物资分配建议指令、发布招标信息', '[26,33,32,19,30,31]');
INSERT INTO `t_role` VALUES ('4', '红十字会', '审批物资需求、调度物资、提交捐赠物资信息', '[25,31,24]');
INSERT INTO `t_role` VALUES ('5', '运输公司', '运输公司角色', '[29]');
INSERT INTO `t_role` VALUES ('6', '社区', '提交投诉、提交物资需求、确认捐赠物资到货信息', '[30,24,25]');
INSERT INTO `t_role` VALUES ('7', '医院', '提交投诉、提交物资需求、确认捐赠物资到货信息', '[24,25,30]');
INSERT INTO `t_role` VALUES ('8', '企业', '查看招投标信息、参与投标活动', '[26,32,33]');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', '管理员', '8395905@qq.com', '13566118543', '1646124619650', '[1]', '浙江', '22');
INSERT INTO `t_user` VALUES ('2', '001', '123456', '政府角色', 'zhang@qq.com', '13333333333', '1645963957922', '[3]', '浙江', '24');
INSERT INTO `t_user` VALUES ('3', '002', '123456', '红十字会', 'li@qq.com', '13888888888', '1645964129726', '[4]', '上海', '22');
INSERT INTO `t_user` VALUES ('4', '003', '123456', '社区角色', 'afadf@ddd.com', '13333333333', '1645970344446', '[6]', null, null);
INSERT INTO `t_user` VALUES ('5', '004', '123456', '医院角色', 'dfdk@dkdkd.com', '13555555555', '1645970393047', '[7]', null, null);
INSERT INTO `t_user` VALUES ('6', '005', '123456', '运输公司角色', null, null, '1645970519524', '[5]', null, null);
INSERT INTO `t_user` VALUES ('7', '006', '123456', '企业角色', null, null, '1645970578376', '[8]', null, null);
INSERT INTO `t_user` VALUES ('8', '007', '123456', '普通用户角色', null, null, '1645970802901', '[2]', null, null);

-- ----------------------------
-- Table structure for `wuzidiaodu`
-- ----------------------------
DROP TABLE IF EXISTS `wuzidiaodu`;
CREATE TABLE `wuzidiaodu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wuzimingchen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物资名称',
  `xuyaoshuliang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '需要数量',
  `jiezhiriqi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '截止日期',
  `diaoduliyou` text COLLATE utf8mb4_unicode_ci COMMENT '调度理由',
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '待审批' COMMENT '是否批准',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='物资调度';

-- ----------------------------
-- Records of wuzidiaodu
-- ----------------------------
INSERT INTO `wuzidiaodu` VALUES ('1', '口罩', '5000', '2022-03-05', 'addfafa', '是', '2022-02-27 00:00:00');

-- ----------------------------
-- Table structure for `wuzixuqiu`
-- ----------------------------
DROP TABLE IF EXISTS `wuzixuqiu`;
CREATE TABLE `wuzixuqiu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wuzimingchen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物资名称',
  `img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '../../images/nopic.jpg' COMMENT '主图',
  `xuyaoshuliang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '需要数量',
  `jiezhiriqi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '截止日期',
  `suoshudiqu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属地区',
  `fabudanwei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布单位',
  `dangqianzhuangtai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `qingkuangmiaoshu` text COLLATE utf8mb4_unicode_ci COMMENT '情况描述',
  `faburen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布人',
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '(时间)0100000?添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='物资需求';

-- ----------------------------
-- Records of wuzixuqiu
-- ----------------------------
INSERT INTO `wuzixuqiu` VALUES ('1', '医用口罩', '/files/1646169258196', '1000', '2022-02-28', '朝阳区', 'XX医院', '筹集中', '急缺口罩一批', 'admin', '是', '2022-03-02 00:00:00');
INSERT INTO `wuzixuqiu` VALUES ('2', 'N95口罩', '/files/1646169246122', '666', '2022-03-12', '朝阳区', '单位A', '筹集中', 'adf', 'admin', '待审核', '2022-03-02 00:00:00');
INSERT INTO `wuzixuqiu` VALUES ('3', '洗手液', '/files/1646169270345', '888', '2022-03-08', '海淀区', null, '筹集中', 'ad', 'admin', '待审核', '2022-03-02 00:00:00');
INSERT INTO `wuzixuqiu` VALUES ('4', '野外帐篷', '/files/1646169851898', '500', '2022-03-08', '大兴区', 'asdf', '筹集中', 'dfdfs', 'admin', '待审核', '2022-03-02 00:00:00');

-- ----------------------------
-- Table structure for `yunshujilu`
-- ----------------------------
DROP TABLE IF EXISTS `yunshujilu`;
CREATE TABLE `yunshujilu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `yunshuriqi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运输日期',
  `chufadi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目的地',
  `chepaihao` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `dangqianzhuangtai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `wuzijianjie` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物资简介',
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '清单附件',
  `yunshugongsi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运输公司',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='运输记录';

-- ----------------------------
-- Records of yunshujilu
-- ----------------------------
INSERT INTO `yunshujilu` VALUES ('1', '2022-02-27', '地点A', '地点B', '京A88888', '运输中', 'fsdggfgfs', null, '运输公司角色', '2022-02-27 00:00:00');

-- ----------------------------
-- Table structure for `zaiqingxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `zaiqingxinxi`;
CREATE TABLE `zaiqingxinxi` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `riqi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '日期',
  `diqu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地区',
  `jinrixinzeng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '今日新增',
  `leijiquezhen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '累计确诊',
  `beizhu` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='灾情信息';

-- ----------------------------
-- Records of zaiqingxinxi
-- ----------------------------
INSERT INTO `zaiqingxinxi` VALUES ('1', '2022-02-27', '东城区', '1', '168', 'sgf', '2022-02-27 14:28:18');
INSERT INTO `zaiqingxinxi` VALUES ('2', '2022-02-28', '西城区', '0', '66', null, '2022-02-28 11:33:57');
INSERT INTO `zaiqingxinxi` VALUES ('3', '2022-03-01', '朝阳区', '0', '345', null, '2022-03-01 14:29:52');
INSERT INTO `zaiqingxinxi` VALUES ('4', '2022-03-01', '丰台区', '0', '12', null, '2022-03-01 14:30:41');
INSERT INTO `zaiqingxinxi` VALUES ('5', '2022-03-01', '石景山区', '0', '5', null, '2022-03-01 14:30:58');
INSERT INTO `zaiqingxinxi` VALUES ('6', '2022-03-01', '海淀区', '0', '501', null, '2022-03-01 14:31:23');
INSERT INTO `zaiqingxinxi` VALUES ('7', '2022-03-01', '门头沟区', '1', '234', null, '2022-03-01 14:32:43');
INSERT INTO `zaiqingxinxi` VALUES ('8', '2022-03-01', '房山区', '0', '78', null, '2022-03-01 14:33:04');
INSERT INTO `zaiqingxinxi` VALUES ('9', '2022-03-01', '通州区', '0', '9', null, '2022-03-01 14:37:05');
INSERT INTO `zaiqingxinxi` VALUES ('10', '2022-03-01', '顺义区', '0', '6', null, '2022-03-01 14:36:46');
INSERT INTO `zaiqingxinxi` VALUES ('11', '2022-03-01', '昌平区', '0', '110', null, '2022-03-01 14:36:48');
INSERT INTO `zaiqingxinxi` VALUES ('12', '2022-03-01', '大兴区', '0', '350', null, '2022-03-01 14:36:51');
INSERT INTO `zaiqingxinxi` VALUES ('13', '2022-03-01', '怀柔区', '0', '48', null, '2022-03-01 14:37:13');
INSERT INTO `zaiqingxinxi` VALUES ('14', '2022-03-01', '平谷区', '0', '420', null, '2022-03-01 14:36:55');
INSERT INTO `zaiqingxinxi` VALUES ('15', '2022-03-01', '密云区', '0', '7', null, '2022-03-01 14:37:18');
INSERT INTO `zaiqingxinxi` VALUES ('16', '2022-03-01', '延庆区', '0', '560', null, '2022-03-01 14:37:20');

-- ----------------------------
-- Table structure for `zhaobiaoxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `zhaobiaoxinxi`;
CREATE TABLE `zhaobiaoxinxi` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `zhaobiaomingchen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '招标名称',
  `img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '../../images/nopic.jpg' COMMENT '海报',
  `toubiaoriqi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投标日期',
  `zhaobiaodanwei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '招标单位',
  `lianxifangshi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `narongjianjie` text COLLATE utf8mb4_unicode_ci COMMENT '内容简介',
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附件',
  `dangqianzhuangtai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='招标信息';

-- ----------------------------
-- Records of zhaobiaoxinxi
-- ----------------------------
INSERT INTO `zhaobiaoxinxi` VALUES ('1', '采购XX防疫物资一批', '../../images/nopic.jpg', '2022-02-27', '单位A', '010-88888888', 'dfd', null, '公示期', '2022-03-02 05:06:54');
