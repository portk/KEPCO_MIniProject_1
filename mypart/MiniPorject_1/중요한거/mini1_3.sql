-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.34 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- mini1 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `mini1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mini1`;

-- 테이블 mini1.elec 구조 내보내기
CREATE TABLE IF NOT EXISTS `elec` (
  `num` int NOT NULL AUTO_INCREMENT,
  `연도` year NOT NULL,
  `local_id` int NOT NULL,
  `주거용` int NOT NULL,
  `업무용` int NOT NULL,
  `산업용` int NOT NULL,
  PRIMARY KEY (`num`),
  KEY `FK_elec_loc` (`local_id`),
  CONSTRAINT `FK_elec_loc` FOREIGN KEY (`local_id`) REFERENCES `loc` (`local_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mini1.elec:~136 rows (대략적) 내보내기
DELETE FROM `elec`;
INSERT INTO `elec` (`num`, `연도`, `local_id`, `주거용`, `업무용`, `산업용`) VALUES
	(1, '2015', 31, 15607128, 35926057, 53514818),
	(2, '2015', 38, 4057544, 9465814, 20352968),
	(3, '2016', 32, 1928362, 7518305, 7052102),
	(4, '2016', 31, 16311036, 37556383, 55536480),
	(5, '2016', 38, 4226226, 9805211, 20466039),
	(6, '2017', 32, 1940933, 7604170, 7007712),
	(7, '2017', 31, 16587710, 38968213, 59291937),
	(8, '2017', 38, 4260988, 10095297, 20291580),
	(9, '2018', 32, 2060563, 7936747, 6848525),
	(10, '2018', 31, 18016468, 41387394, 63292092),
	(11, '2018', 38, 4482335, 10429993, 20246284),
	(12, '2019', 32, 2081091, 7731338, 6555844),
	(13, '2019', 31, 18228494, 41428415, 63365396),
	(14, '2019', 38, 4475991, 10190050, 19805974),
	(15, '2020', 32, 2197106, 7560921, 6362040),
	(16, '2020', 31, 19387551, 41953369, 63348043),
	(17, '2020', 38, 4718536, 10310749, 19040688),
	(18, '2021', 32, 2289719, 7877226, 6641060),
	(19, '2021', 31, 20775255, 43240946, 69429747),
	(20, '2021', 38, 4826057, 10479951, 20428050),
	(21, '2022', 32, 2332244, 8188727, 6804548),
	(22, '2022', 31, 21128150, 46694471, 72708390),
	(23, '2022', 38, 4863307, 10893843, 20433769),
	(24, '2015', 32, 1888434, 7167806, 7150379),
	(25, '2016', 34, 2629227, 8232709, 37591996),
	(26, '2017', 34, 2691823, 8254052, 39234334),
	(27, '2018', 34, 2897959, 8523766, 40590982),
	(28, '2019', 34, 2887131, 8496826, 41260895),
	(29, '2020', 34, 3038547, 8529998, 38854186),
	(30, '2021', 34, 3184715, 8352589, 37264321),
	(31, '2022', 34, 3250541, 8913143, 38095951),
	(32, '2015', 34, 2509792, 7760316, 37015953),
	(33, '2015', 35, 2276416, 5669138, 14141306),
	(34, '2016', 35, 2340425, 5871554, 14521517),
	(35, '2017', 35, 2326183, 6007286, 14466179),
	(36, '2018', 35, 2431432, 6272350, 14258176),
	(37, '2019', 35, 2397329, 6153950, 13729412),
	(38, '2020', 35, 2519052, 6115793, 11904066),
	(39, '2021', 35, 2588903, 6228546, 12669411),
	(40, '2022', 35, 2597581, 6430646, 12810244),
	(41, '2015', 39, 675632, 2229196, 1524725),
	(42, '2016', 39, 735092, 2428538, 1574571),
	(43, '2017', 39, 782601, 2610459, 1620486),
	(44, '2018', 39, 831090, 2752105, 1689407),
	(45, '2019', 39, 850988, 2795399, 1727896),
	(46, '2020', 39, 917914, 2773654, 1681719),
	(47, '2021', 39, 971492, 2960503, 1755734),
	(48, '2022', 39, 1005271, 3204253, 1835829),
	(49, '2015', 33, 1940308, 5670154, 15338569),
	(50, '2016', 33, 2011175, 5857157, 16140531),
	(51, '2017', 33, 2027281, 6071778, 16744435),
	(52, '2018', 33, 2184680, 6372071, 17683143),
	(53, '2019', 33, 2179833, 6321413, 18231055),
	(54, '2020', 33, 2291890, 6478375, 18131628),
	(55, '2021', 33, 2385627, 6725731, 19290704),
	(56, '2022', 33, 2434712, 7027841, 19949670),
	(57, '2015', 37, 3176918, 9324696, 32455222),
	(58, '2016', 37, 3293587, 9662786, 31691131),
	(59, '2017', 37, 3302463, 10065517, 32087631),
	(60, '2018', 37, 3498309, 10446240, 32014265),
	(61, '2019', 37, 3466430, 10187406, 30660931),
	(62, '2020', 37, 3631035, 10067606, 27302986),
	(63, '2021', 37, 3709248, 10495165, 30053884),
	(64, '2022', 37, 3763344, 11329025, 30013122),
	(65, '2015', 24, 1880747, 3555976, 2897150),
	(66, '2016', 24, 1948144, 3664480, 2945743),
	(67, '2017', 24, 1954876, 3740500, 2988274),
	(68, '2018', 24, 2056435, 3846709, 2870668),
	(69, '2019', 24, 2038974, 3781402, 2782921),
	(70, '2020', 24, 2154034, 3690145, 2686929),
	(71, '2021', 24, 2215918, 3840898, 2916630),
	(72, '2022', 24, 2249750, 3475436, 2882415),
	(73, '2015', 22, 3024175, 5950706, 5972827),
	(74, '2016', 22, 3143661, 6148555, 5975895),
	(75, '2017', 22, 3151904, 6296834, 5937633),
	(76, '2018', 22, 3314918, 6502828, 5858003),
	(77, '2019', 22, 3252483, 6395581, 5617521),
	(78, '2020', 22, 3411777, 6215181, 5131610),
	(79, '2021', 22, 3461331, 6428824, 5553794),
	(80, '2022', 22, 3580477, 5936595, 5710982),
	(81, '2015', 29, 272724, 766151, 1602260),
	(82, '2016', 29, 333148, 865474, 1603240),
	(83, '2017', 29, 384903, 945099, 1588760),
	(84, '2018', 29, 470529, 1031090, 1586070),
	(85, '2019', 29, 507707, 1096300, 1622170),
	(86, '2020', 29, 558990, 1133200, 1701040),
	(87, '2021', 29, 612111, 1863160, 1820090),
	(88, '2022', 29, 645445, 659935, 1876700),
	(89, '2015', 26, 1450240, 3928440, 24907500),
	(90, '2016', 26, 1488490, 4293300, 26313400),
	(91, '2017', 26, 1487140, 4139250, 25983500),
	(92, '2018', 26, 1552260, 4285260, 27910700),
	(93, '2019', 26, 1546260, 4055990, 28536800),
	(94, '2020', 26, 1611700, 4072000, 27474100),
	(95, '2021', 26, 1638730, 4003040, 27951400),
	(96, '2022', 26, 1648160, 4021490, 27249500),
	(97, '2015', 23, 3662380, 7266540, 12282800),
	(98, '2016', 23, 3819580, 7738040, 12318200),
	(99, '2017', 23, 3856850, 8076160, 12582300),
	(100, '2018', 23, 4112200, 8558320, 12251400),
	(101, '2019', 23, 4121500, 8574750, 11584400),
	(102, '2020', 23, 4294880, 8262540, 11081200),
	(103, '2021', 23, 4586790, 8516170, 11798200),
	(104, '2022', 23, 4704960, 9108880, 11693000),
	(105, '2015', 36, 2205170, 6045340, 24387300),
	(106, '2016', 36, 2281950, 6353410, 24461500),
	(107, '2017', 36, 2284120, 6654680, 24623300),
	(108, '2018', 36, 2380290, 6878720, 24859400),
	(109, '2019', 36, 2358630, 7049510, 22977200),
	(110, '2020', 36, 2500680, 6886400, 21586900),
	(111, '2021', 36, 2578820, 7113320, 23794700),
	(112, '2022', 36, 2606960, 7300350, 24757800),
	(113, '2015', 25, 1849215, 4728122, 2605400),
	(114, '2015', 21, 4352290, 8385914, 7264105),
	(115, '2015', 11, 12964825, 30375292, 2041365),
	(116, '2016', 25, 1899110, 4881042, 2599482),
	(117, '2016', 21, 4472262, 8760626, 7234203),
	(118, '2016', 11, 13311577, 31251430, 1930229),
	(119, '2017', 25, 1872890, 4910602, 2640312),
	(120, '2017', 21, 4473510, 8888045, 7645804),
	(121, '2017', 11, 13131172, 31228879, 1938107),
	(122, '2018', 25, 1970225, 5128876, 2549723),
	(123, '2018', 21, 4660700, 9105731, 7450174),
	(124, '2018', 11, 13766796, 32297703, 1745711),
	(125, '2019', 25, 1938646, 5107237, 2369817),
	(126, '2019', 21, 4624742, 8866658, 7311010),
	(127, '2019', 11, 13499067, 32037947, 1630192),
	(128, '2020', 25, 2019639, 5056113, 2329469),
	(129, '2020', 21, 4837487, 8666639, 6999843),
	(130, '2020', 11, 13982706, 30292410, 1512810),
	(131, '2021', 25, 2102655, 5219786, 2426180),
	(132, '2021', 21, 4974889, 8787262, 7305682),
	(133, '2021', 11, 14656127, 31074389, 1565291),
	(134, '2022', 11, 14550100, 32705710, 1532863),
	(135, '2022', 21, 5054430, 9253410, 7185808),
	(136, '2022', 25, 2142124, 5478454, 2396299);

-- 테이블 mini1.loc 구조 내보내기
CREATE TABLE IF NOT EXISTS `loc` (
  `local_id` int NOT NULL,
  `location` varchar(12) NOT NULL,
  PRIMARY KEY (`local_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mini1.loc:~17 rows (대략적) 내보내기
DELETE FROM `loc`;
INSERT INTO `loc` (`local_id`, `location`) VALUES
	(11, '서울'),
	(21, '부산'),
	(22, '대구'),
	(23, '인천'),
	(24, '광주'),
	(25, '대전'),
	(26, '울산'),
	(29, '세종'),
	(31, '경기'),
	(32, '강원'),
	(33, '충북'),
	(34, '충남'),
	(35, '전북'),
	(36, '전남'),
	(37, '경북'),
	(38, '경남'),
	(39, '제주');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
