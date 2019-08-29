/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.11 : Database - elective
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`elective` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `elective`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cid` varchar(10) NOT NULL,
  `tid` varchar(20) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `ctype` varchar(20) DEFAULT NULL,
  `ccredit` float DEFAULT NULL,
  `cmax` int(4) DEFAULT NULL,
  `cnote` tinytext,
  `cprecid` int(4) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `course_tid01` (`tid`),
  CONSTRAINT `course_tid01` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`cid`,`tid`,`cname`,`ctype`,`ccredit`,`cmax`,`cnote`,`cprecid`) values ('1001','201001','建筑与环境','必修课',10,35,'教学楼A202',35),('1002','201001','心理学','选修课',3,5,'教学楼A501',0),('1003','201002','高数','必修课',10,35,'教学楼A305',35),('1004','201003','应用化学','必修课',10,35,'教学楼B305',35),('1005','201004','英语','必修课',10,35,'教学楼B909',35),('1006','201005','JAVA','必修课',10,35,'教学楼A406',35),('1009','201004','游泳','选修课',3,5,'游泳馆2F',1),('1010','201005','空气动力学','选修课',3,2,'教学楼A302',1),('1097','201001','福克斯','选修课',3,1,'教学楼A201',1);

/*Table structure for table `elect` */

DROP TABLE IF EXISTS `elect`;

CREATE TABLE `elect` (
  `sid` varchar(20) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `score` double DEFAULT NULL,
  KEY `elect_cid01` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `elect` */

insert  into `elect`(`sid`,`cid`,`score`) values ('103040801','1001',0),('103040802','1001',0),('103040803','1001',0),('103040804','1001',0),('103040805','1001',0),('103040806','1001',0),('103040807','1001',0),('103040801','1003',59),('103040802','1003',0),('103040803','1003',0),('103040804','1003',0),('103040805','1003',0),('103040806','1003',0),('103040807','1003',0),('103040801','1004',0),('103040802','1004',0),('103040803','1004',0),('103040804','1004',0),('103040805','1004',0),('103040806','1004',0),('103040807','1004',0),('103040801','1005',0),('103040802','1005',0),('103040803','1005',0),('103040804','1005',0),('103040805','1005',0),('103040806','1005',0),('103040807','1005',0),('103040801','1006',0),('103040802','1006',0),('103040803','1006',0),('103040804','1006',0),('103040805','1006',0),('103040806','1006',0),('103040807','1006',0),('103040808','1001',0),('103040808','1003',0),('103040808','1004',0),('103040808','1005',0),('103040808','1006',0),('103040809','1001',0),('103040809','1003',0),('103040809','1004',0),('103040809','1005',0),('103040809','1006',0),('103040801','1010',0),('103040897','1001',0),('103040897','1003',0),('103040897','1004',0),('103040897','1005',0),('103040897','1006',0),('103040801','1009',0),('103040801','1097',0);

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `mid` varchar(10) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `mpass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `manager` */

insert  into `manager`(`mid`,`mname`,`mpass`) values ('10','教务处长','123456');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sid` varchar(20) NOT NULL,
  `skey` varchar(40) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `ssex` varchar(2) DEFAULT NULL,
  `sage` int(4) DEFAULT NULL,
  `scredit` float DEFAULT NULL,
  `saddress` varchar(50) DEFAULT NULL,
  `sphone` varchar(50) DEFAULT NULL,
  `semail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`sid`,`skey`,`sname`,`ssex`,`sage`,`scredit`,`saddress`,`sphone`,`semail`) values ('103040801','123456','魏晨晨','男',26,0,'西安市未央区石化大道','15829263508','weichenchen@163.com'),('103040802','123456','陈思亮','男',25,0,'西安市长安区凤栖西路','18309220836','chensiliang@163.com'),('103040803','123456','张峰','男',25,0,'西安市新城区长乐公园','17699023531','zhangfeng@163.com'),('103040804','123456','薛国良','男',25,0,'西安市未央区明光路','17789120823','xueguoliang@163.com'),('103040805','123456','刘李飞','男',25,0,'西安市灞桥区向阳沟小区','18092595890','liulifei@163.com'),('103040806','123456','李径宇','男',26,0,'西安市新城区万寿路','13992337353','lijingyu@163.com'),('103040807','123456','赵康','男',21,0,'西安市长安区韦曲街道','18789425376','zhaokang@163.com'),('103040808','123456','何西宁','男',25,0,'西安市长安区韦曲街道','18993333999','18993333999@163.com'),('103040809','123456','贺晨阳','男',23,0,'西安市新城区长乐公园','13234567890','13234567890@qq.com');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tid` varchar(20) NOT NULL,
  `tkey` varchar(40) DEFAULT NULL,
  `tname` varchar(20) DEFAULT NULL,
  `tsex` varchar(2) DEFAULT NULL,
  `tage` int(4) DEFAULT NULL,
  `tphone` varchar(50) DEFAULT NULL,
  `tmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`tid`,`tkey`,`tname`,`tsex`,`tage`,`tphone`,`tmail`) values ('201001','123456','张讲师','男',32,'18789425376','18789425376@163.com'),('201002','123456','钱教授','女',28,'18789425376','18789425376@163.com'),('201003','123456','刘教授','男',30,'18789425376','18789425376@163.com'),('201004','123456','贺讲师','女',36,'18789425376','18789425376@163.com'),('201005','123456','都讲师','男',35,'18789425376','18789425376@163.com'),('201006','123456','赵教授','男',56,'18789425376','18789425376@qq.com'),('201007','123456','王讲师','女',30,'13300000000','wang@163.com'),('201012','123456','东方不败','女',35,'18789425376','18789425376@163.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
