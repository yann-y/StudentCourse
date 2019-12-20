-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- Server version:               5.5.56 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for studentdb
CREATE DATABASE IF NOT EXISTS `studentdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `studentdb`;

-- Dumping structure for table studentdb.course
CREATE TABLE IF NOT EXISTS `course` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table studentdb.course: ~1 rows (approximately)
DELETE FROM `course`;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`id`, `name`, `score`, `item`) VALUES
	('2017032', '数学', '66', '1');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- Dumping structure for table studentdb.loginusers
CREATE TABLE IF NOT EXISTS `loginusers` (
  `adminid` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table studentdb.loginusers: ~2 rows (approximately)
DELETE FROM `loginusers`;
/*!40000 ALTER TABLE `loginusers` DISABLE KEYS */;
INSERT INTO `loginusers` (`adminid`, `username`, `password`) VALUES
	(1, 'admin', 'admin'),
	(2, 'kth', '123');
/*!40000 ALTER TABLE `loginusers` ENABLE KEYS */;

-- Dumping structure for table studentdb.studentmanager
CREATE TABLE IF NOT EXISTS `studentmanager` (
  `ID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `数学` int(255) DEFAULT NULL,
  `英语` int(255) DEFAULT NULL,
  `语文` int(255) DEFAULT NULL,
  `物理` int(255) DEFAULT NULL,
  `生物` int(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table studentdb.studentmanager: ~8 rows (approximately)
DELETE FROM `studentmanager`;
/*!40000 ALTER TABLE `studentmanager` DISABLE KEYS */;
INSERT INTO `studentmanager` (`ID`, `Name`, `数学`, `英语`, `语文`, `物理`, `生物`) VALUES
	('1234', 'hello', 0, 0, 0, 0, 0),
	('2017031', 'student1', 100, 100, 33, 33, 33),
	('2017032', '刘某某', 66, 100, 66, 66, 66),
	('2017033', 'student2', 55, 80, 100, 55, 55),
	('2017034', 'student3', 99, 80, 100, 100, 44),
	('2017108243', 'yzq', 0, 0, 0, 0, 0),
	('23432', '喊喊', 0, 0, 0, 0, 0),
	('2343234', '喊喊', 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `studentmanager` ENABLE KEYS */;

-- Dumping structure for table studentdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `userpwd` varchar(255) DEFAULT NULL,
  `sexy` varchar(255) DEFAULT NULL,
  `classgrade` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `type` int(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table studentdb.users: ~12 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userid`, `username`, `userpwd`, `sexy`, `classgrade`, `usertype`, `type`) VALUES
	('11111', '张三', '1234567890', '男', '云计算一班', '教师', 0),
	('1200101', 'teacher1', 'lpp123456', '男', '1班', '教师', 1),
	('1200102', 'teacher2', '1200102', '女', '2班', '教师', 0),
	('1200103', 'teacher3', '1200103', '女', '3班', '教师', 0),
	('1234', 'hello', '123456', '男', '2班', '学生', 0),
	('2017031', 'student1', '2017031', '男', '1班', '学生', 0),
	('2017032', '刘某某', '2017032', '女', '1班', '学生', 0),
	('2017033', 'student2', '2017033', '女', '2班', '学生', 0),
	('2017034', 'student3', '2017034', '女', '3班', '学生', 0),
	('2017108243', 'yzq', '123456', '男', '云计算', '学生', 0),
	('23432', '喊喊', '123456', '男', '云计算', '学生', 0),
	('2343234', '喊喊', '123456', '男', '云计算一班', '学生', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
