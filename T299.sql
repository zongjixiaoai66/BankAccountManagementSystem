/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t299`;
CREATE DATABASE IF NOT EXISTS `t299` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t299`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `cuenquyewu`;
CREATE TABLE IF NOT EXISTS `cuenquyewu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaihu_id` int DEFAULT NULL COMMENT '开户',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `cuenquyewu_price` decimal(10,2) DEFAULT NULL COMMENT '存取金额',
  `cuenquyewu_types` int DEFAULT NULL COMMENT '存取类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '存取时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='存取业务';

DELETE FROM `cuenquyewu`;
INSERT INTO `cuenquyewu` (`id`, `kaihu_id`, `yonghu_id`, `cuenquyewu_price`, `cuenquyewu_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 631.32, 2, '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(3, 3, 2, 936.86, 2, '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(4, 4, 1, 176.81, 1, '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(5, 5, 3, 625.12, 1, '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(10, 3, 1, 76.95, 2, '2022-04-02 13:41:48', '2022-04-02 13:41:48');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'kaihu_types', '账户类型', 1, '账户类型1', NULL, NULL, '2022-04-02 12:37:31'),
	(2, 'kaihu_types', '账户类型', 2, '账户类型2', NULL, NULL, '2022-04-02 12:37:31'),
	(3, 'kaihu_types', '账户类型', 3, '账户类型3', NULL, NULL, '2022-04-02 12:37:31'),
	(4, 'cuenquyewu_types', '存取类型', 1, '存钱', NULL, NULL, '2022-04-02 12:37:31'),
	(5, 'cuenquyewu_types', '存取类型', 2, '取钱', NULL, NULL, '2022-04-02 12:37:31'),
	(6, 'guashi_types', '挂失类型', 1, '挂失类型1', NULL, NULL, '2022-04-02 12:37:31'),
	(7, 'guashi_types', '挂失类型', 2, '挂失类型2', NULL, NULL, '2022-04-02 12:37:31'),
	(8, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-02 12:37:31'),
	(9, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-02 12:37:31'),
	(10, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-02 12:37:31'),
	(11, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-02 12:37:31'),
	(12, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-02 12:37:31');

DROP TABLE IF EXISTS `guashi`;
CREATE TABLE IF NOT EXISTS `guashi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaihu_id` int DEFAULT NULL COMMENT '账户',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `guashi_types` int DEFAULT NULL COMMENT '挂失类型 Search111 ',
  `guashi_content` text COMMENT '挂失备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '挂失时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='挂失信息';

DELETE FROM `guashi`;
INSERT INTO `guashi` (`id`, `kaihu_id`, `yonghu_id`, `guashi_types`, `guashi_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '挂失备注1', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(2, 2, 1, 1, '挂失备注2', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(3, 3, 2, 2, '挂失备注3', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(4, 4, 1, 1, '挂失备注4', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(5, 5, 3, 2, '挂失备注5', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(6, 3, 1, 2, '<p>123</p>', '2022-04-02 13:42:00', '2022-04-02 13:42:00'),
	(7, 2, 2, 2, '<p><span style="color: rgb(96, 98, 102);">挂失备注3332</span></p>', '2022-04-02 13:43:05', '2022-04-02 13:43:05');

DROP TABLE IF EXISTS `kaihu`;
CREATE TABLE IF NOT EXISTS `kaihu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `kaihu_uuid_number` varchar(200) DEFAULT NULL COMMENT '卡号 Search111',
  `kaihu_types` int DEFAULT NULL COMMENT '账户类型 Search111',
  `kaihu_money` decimal(10,2) DEFAULT NULL COMMENT '账户余额',
  `kaihu_content` text COMMENT '开户备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '开户时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='账户信息';

DELETE FROM `kaihu`;
INSERT INTO `kaihu` (`id`, `yonghu_id`, `kaihu_uuid_number`, `kaihu_types`, `kaihu_money`, `kaihu_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '164890306307719', 3, 271.34, '开户备注1', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(2, 2, '16489030630775', 3, 500.00, '开户备注2', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(3, 1, '16489030630781', 1, 500.00, '开户备注3', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(4, 3, '16489030630788', 2, 31.44, '开户备注4', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(5, 3, '16489030630785', 1, 424.03, '开户备注5', '2022-04-02 12:37:43', '2022-04-02 12:37:43'),
	(6, 1, '1648906927721', 2, 0.00, '<p><span style="color: rgb(96, 98, 102);">开户备注1233</span></p>', '2022-04-02 13:42:15', '2022-04-02 13:42:15'),
	(7, 2, '1648906989898', 3, 50.00, '<p><span style="color: rgb(96, 98, 102);">开户备注3321</span></p>', '2022-04-02 13:43:18', '2022-04-02 13:43:18');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/yinhangzhanghuzhanghu/upload/news1.jpg', '2022-04-02 12:37:43', '公告详情1', '2022-04-02 12:37:43'),
	(2, '公告标题2', 3, 'http://localhost:8080/yinhangzhanghuzhanghu/upload/news2.jpg', '2022-04-02 12:37:43', '公告详情2', '2022-04-02 12:37:43'),
	(3, '公告标题3', 3, 'http://localhost:8080/yinhangzhanghuzhanghu/upload/news3.jpg', '2022-04-02 12:37:43', '公告详情3', '2022-04-02 12:37:43'),
	(4, '公告标题4', 2, 'http://localhost:8080/yinhangzhanghuzhanghu/upload/news4.jpg', '2022-04-02 12:37:43', '公告详情4', '2022-04-02 12:37:43'),
	(5, '公告标题5', 3, 'http://localhost:8080/yinhangzhanghuzhanghu/upload/news5.jpg', '2022-04-02 12:37:43', '公告详情5', '2022-04-02 12:37:43');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '9mckfpd72d2parg4awcvcfv6l1d43r7d', '2022-04-02 13:10:42', '2024-07-24 06:05:57'),
	(2, 1, 'a1', 'yonghu', '用户', 'vxm3m76yowqzmn9fpcu02z6dkwq7jlnj', '2022-04-02 13:23:34', '2024-07-24 06:06:58'),
	(3, 2, 'a2', 'yonghu', '用户', 'rcoy75yluxly4cal14hxkspnjvnloesx', '2022-04-02 13:42:31', '2022-04-02 14:42:31');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/yinhangzhanghuzhanghu/upload/yonghu1.jpg', '17703786901', '1@qq.com', 2, 1, '2022-04-02 12:37:43'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/yinhangzhanghuzhanghu/upload/yonghu2.jpg', '17703786902', '2@qq.com', 1, 1, '2022-04-02 12:37:43'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/yinhangzhanghuzhanghu/upload/yonghu3.jpg', '17703786903', '3@qq.com', 2, 1, '2022-04-02 12:37:43');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
