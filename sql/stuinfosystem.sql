

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` varchar(50) NOT NULL,
  `class_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table class add primary key(class_id);


DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `res_id` int(50) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `res_num` int(11) NOT NULL,
  `res_term` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
  `stu_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_sex` varchar(4) NOT NULL,
  `stu_tele` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `sub_id` varchar(50) NOT NULL,
  `sub_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_term` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sub_id`,`sub_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tea_id` varchar(10) NOT NULL,
  `tea_name` varchar(50) NOT NULL,
  `tea_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123',
  `tea_sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tea_tele` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `admin` VALUES ('admin1', '管理员1', '123');
INSERT INTO `admin` VALUES ('admin2', '管理员2', '123');
INSERT INTO `admin` VALUES ('admin3', '管理员3', '123');

INSERT INTO `class` VALUES ('100013', '计算机科学与技术1班');
INSERT INTO `class` VALUES ('100014', '计算机科学与技术2班');
INSERT INTO `class` VALUES ('100012', '计算机科学与技术3班');
INSERT INTO `class` VALUES ('100015', '计算机科学与技术4班');
INSERT INTO `class` VALUES ('100016', '软件工程1班');
INSERT INTO `class` VALUES ('100017', '软件工程2班');
INSERT INTO `class` VALUES ('112323', '网络工程1班');
INSERT INTO `class` VALUES ('112325', '网络工程3班');

INSERT INTO `student` VALUES ('201905556501', '王1', '123', '计算机科学与技术1班', '男', '18876627778');
INSERT INTO `student` VALUES ('201905556502', '王7', '123', '计算机科学与技术2班', '女', '18876627778');
INSERT INTO `student` VALUES ('201905556503', '王2', '123', '软件工程2班', '男', '18876627778');
INSERT INTO `student` VALUES ('201905556504', '王8', '123', '计算机科学与技术2班', '男', '18876627778');
INSERT INTO `student` VALUES ('201905556505', '王9', '123', '网络工程2班', '女', '18876627778');
INSERT INTO `student` VALUES ('201905556506', '李飞', '123', '计算机科学与技术3班', '男', '18876627778');
INSERT INTO `student` VALUES ('201905556507', '李1', '123', '网络工程2班', '男', '18876627771');
INSERT INTO `student` VALUES ('201905556508', '李2', '123', '计算机科学与技术3班', '女', '18876627772');
INSERT INTO `student` VALUES ('201905556509', '李3', '123', '网络工程1班', '女', '18876627773');
INSERT INTO `student` VALUES ('201905556510', '李4', '123', '软件工程2班', '男', '18876627774');
INSERT INTO `student` VALUES ('201805556501', '李5', '123', '软件工程1班', '男', '18876627775');
INSERT INTO `student` VALUES ('201805556502', '李6', '123', '计算机科学与技术3班', '女', '18876627776');
INSERT INTO `student` VALUES ('201805556503', '李7', '123', '网络工程1班', '女', '18876627777');
INSERT INTO `student` VALUES ('201805556504', '李8', '123', '软件工程1班', '男', '18876627778');
INSERT INTO `student` VALUES ('201805556505', '李9', '123', '计算机科学与技术3班', '男', '18876627728');
INSERT INTO `student` VALUES ('201805556506', '李12', '123', '计算机科学与技术4班', '男', '18876627738');
INSERT INTO `student` VALUES ('201805556507', '时5', '123', '网络工程1班', '女', '11561651612');
INSERT INTO `student` VALUES ('201805556508', '林桑', '123', '网络工程1班', '女', '18876627755');
INSERT INTO `student` VALUES ('201805556509', '王5', '123', '计算机科学与技术2班', '女', '18876627778');
INSERT INTO `student` VALUES ('201805556510', '王6', '123', '计算机科学与技术1班', '女', '18876627778');

INSERT INTO `subject` VALUES ('1', '高等数学上', '18-2020-1');
INSERT INTO `subject` VALUES ('2', '计算机网络', '18-2020-1');
INSERT INTO `subject` VALUES ('3', '数据结构', '18-2020-1');
INSERT INTO `subject` VALUES ('4', '计算机操作系统', '18-2020-1');
INSERT INTO `subject` VALUES ('5', '大学英语1', '18-2020-1');
INSERT INTO `subject` VALUES ('6', '数据库概论', '18-2020-1');
INSERT INTO `subject` VALUES ('7', 'Java', '18-2020-1');
INSERT INTO `subject` VALUES ('8', '软件工程', '18-2020-2');
INSERT INTO `subject` VALUES ('9', 'Java实验', '18-2020-2');
INSERT INTO `subject` VALUES ('10', '数据机构实验', '18-2020-2');
INSERT INTO `subject` VALUES ('11', '操作系统实验', '18-2020-2');
INSERT INTO `subject` VALUES ('12', '计算机网络实验', '18-2020-2');
INSERT INTO `subject` VALUES ('13', '线性代数', '18-2020-2');
INSERT INTO `subject` VALUES ('14', '大学英语2', '18-2020-2');

INSERT INTO `result` VALUES ('1','201905556501', '数据结构', '90', '18-2020-1');
INSERT INTO `result` VALUES ('2','201905556502', '计算机操作系统', '88', '18-2020-1');
INSERT INTO `result` VALUES ('3','201905556502', '高等数学上', '78', '18-2020-1');
INSERT INTO `result` VALUES ('4','201905556502', 'Java', '78', '18-2020-2');
INSERT INTO `result` VALUES ('5','201905556502', '数据结构', '88', '18-2020-2');
INSERT INTO `result` VALUES ('6','201905556503', '数据库概论', '78', '18-2020-1');
INSERT INTO `result` VALUES ('7','201905556504', '高等数学上', '78', '18-2020-1');
INSERT INTO `result` VALUES ('8','201905556505', '计算机网络', '97', '18-2020-1');
INSERT INTO `result` VALUES ('9','201905556506', '数据结构', '87', '18-2020-1');
INSERT INTO `result` VALUES ('10','201905556007', '计算机操作系统', '60', '18-2020-1');
INSERT INTO `result` VALUES ('11','201905556508', '大学英语1', '64', '18-2020-1');
INSERT INTO `result` VALUES ('12','201905556509', '数据库概论', '77', '18-2020-1');
INSERT INTO `result` VALUES ('13','201905556510', 'Java', '96', '18-2020-1');
INSERT INTO `result` VALUES ('14','201805556501', '高等数学上', '50', '18-2020-1');
INSERT INTO `result` VALUES ('15','201805556502', '计算机网络', '60', '18-2020-1');
INSERT INTO `result` VALUES ('16','201805556503', '数据结构', '88', '18-2020-1');
INSERT INTO `result` VALUES ('17','201805556504', '计算机操作系统', '60', '18-2020-1');
INSERT INTO `result` VALUES ('18','201805556505', '大学英语1', '64', '18-2020-1');
INSERT INTO `result` VALUES ('19','201805556506', '数据库概论', '78', '18-2020-1');
INSERT INTO `result` VALUES ('20','201805556507', 'Java', '78', '18-2020-1');
INSERT INTO `result` VALUES ('21','201805556508', '高等数学上', '88', '18-2020-1');
INSERT INTO `result` VALUES ('22','201805556509', '计算机网络', '87', '18-2020-1');
INSERT INTO `result` VALUES ('23','201805556510', '数据结构', '58', '18-2020-1');

INSERT INTO `teacher` VALUES ('1111', '林老师', '123', '女', '18876627266');
INSERT INTO `teacher` VALUES ('1113', '李四', '123', '男', '18876627223');
INSERT INTO `teacher` VALUES ('1114', '张三', '123', '男', '18876627222');
INSERT INTO `teacher` VALUES ('1116', '武天', '123', '女', '18876627232');
INSERT INTO `teacher` VALUES ('1155', '刘老师', '123', '男', '18876627211');
INSERT INTO `teacher` VALUES ('1157', '王五', '123', '女', '18876627222');
INSERT INTO `teacher` VALUES ('1232', '司马懿', '123', '男', '18876627223');
INSERT INTO `teacher` VALUES ('2122', '孟飞', '123', '男', '18876627222');
INSERT INTO `teacher` VALUES ('2321', '刘备', '123', '女', '18876627223');