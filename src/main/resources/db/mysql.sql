DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


insert  into `t_user`(`id`,`name`,`password`,`age`) values (1,'admin','123456',22);