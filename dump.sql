# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Database: studentsmanagement
# Generation Time: 2018-07-11 16:23:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table class_students
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class_students`;

CREATE TABLE `class_students` (
  `student_id` int(11) NOT NULL,
  `klass_id` int(11) NOT NULL,
  KEY `class_students_students_id_index` (`student_id`),
  KEY `class_students_class_id_index` (`klass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `class_students` WRITE;
/*!40000 ALTER TABLE `class_students` DISABLE KEYS */;

INSERT INTO `class_students` (`student_id`, `klass_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `class_students` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table classes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `level_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;

INSERT INTO `classes` (`id`, `name`, `description`, `level_id`, `teacher_id`, `created_at`, `updated_at`)
VALUES
	(1,'Upper Intermediate B1',NULL,1,1,'2018-07-11 14:27:17','2018-07-11 14:27:17');

/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `name`, `code`)
VALUES
	(1,'Afghanistan','AF'),
	(2,'Albania','AL'),
	(3,'Algeria','DZ'),
	(4,'American Samoa','DS'),
	(5,'Andorra','AD'),
	(6,'Angola','AO'),
	(7,'Anguilla','AI'),
	(8,'Antarctica','AQ'),
	(9,'Antigua and Barbuda','AG'),
	(10,'Argentina','AR'),
	(11,'Armenia','AM'),
	(12,'Aruba','AW'),
	(13,'Australia','AU'),
	(14,'Austria','AT'),
	(15,'Azerbaijan','AZ'),
	(16,'Bahamas','BS'),
	(17,'Bahrain','BH'),
	(18,'Bangladesh','BD'),
	(19,'Barbados','BB'),
	(20,'Belarus','BY'),
	(21,'Belgium','BE'),
	(22,'Belize','BZ'),
	(23,'Benin','BJ'),
	(24,'Bermuda','BM'),
	(25,'Bhutan','BT'),
	(26,'Bolivia','BO'),
	(27,'Bosnia and Herzegovina','BA'),
	(28,'Botswana','BW'),
	(29,'Bouvet Island','BV'),
	(30,'Brazil','BR'),
	(31,'British Indian Ocean Territory','IO'),
	(32,'Brunei Darussalam','BN'),
	(33,'Bulgaria','BG'),
	(34,'Burkina Faso','BF'),
	(35,'Burundi','BI'),
	(36,'Cambodia','KH'),
	(37,'Cameroon','CM'),
	(38,'Canada','CA'),
	(39,'Cape Verde','CV'),
	(40,'Cayman Islands','KY'),
	(41,'Central African Republic','CF'),
	(42,'Chad','TD'),
	(43,'Chile','CL'),
	(44,'China','CN'),
	(45,'Christmas Island','CX'),
	(46,'Cocos (Keeling) Islands','CC'),
	(47,'Colombia','CO'),
	(48,'Comoros','KM'),
	(49,'Congo','CG'),
	(50,'Cook Islands','CK'),
	(51,'Costa Rica','CR'),
	(52,'Croatia (Hrvatska)','HR'),
	(53,'Cuba','CU'),
	(54,'Cyprus','CY'),
	(55,'Czech Republic','CZ'),
	(56,'Denmark','DK'),
	(57,'Djibouti','DJ'),
	(58,'Dominica','DM'),
	(59,'Dominican Republic','DO'),
	(60,'East Timor','TP'),
	(61,'Ecuador','EC'),
	(62,'Egypt','EG'),
	(63,'El Salvador','SV'),
	(64,'Equatorial Guinea','GQ'),
	(65,'Eritrea','ER'),
	(66,'Estonia','EE'),
	(67,'Ethiopia','ET'),
	(68,'Falkland Islands (Malvinas)','FK'),
	(69,'Faroe Islands','FO'),
	(70,'Fiji','FJ'),
	(71,'Finland','FI'),
	(72,'France','FR'),
	(73,'France, Metropolitan','FX'),
	(74,'French Guiana','GF'),
	(75,'French Polynesia','PF'),
	(76,'French Southern Territories','TF'),
	(77,'Gabon','GA'),
	(78,'Gambia','GM'),
	(79,'Georgia','GE'),
	(80,'Germany','DE'),
	(81,'Ghana','GH'),
	(82,'Gibraltar','GI'),
	(83,'Guernsey','GK'),
	(84,'Greece','GR'),
	(85,'Greenland','GL'),
	(86,'Grenada','GD'),
	(87,'Guadeloupe','GP'),
	(88,'Guam','GU'),
	(89,'Guatemala','GT'),
	(90,'Guinea','GN'),
	(91,'Guinea-Bissau','GW'),
	(92,'Guyana','GY'),
	(93,'Haiti','HT'),
	(94,'Heard and Mc Donald Islands','HM'),
	(95,'Honduras','HN'),
	(96,'Hong Kong','HK'),
	(97,'Hungary','HU'),
	(98,'Iceland','IS'),
	(99,'India','IN'),
	(100,'Isle of Man','IM'),
	(101,'Indonesia','ID'),
	(102,'Iran (Islamic Republic of)','IR'),
	(103,'Iraq','IQ'),
	(104,'Ireland','IE'),
	(105,'Israel','IL'),
	(106,'Italy','IT'),
	(107,'Ivory Coast','CI'),
	(108,'Jersey','JE'),
	(109,'Jamaica','JM'),
	(110,'Japan','JP'),
	(111,'Jordan','JO'),
	(112,'Kazakhstan','KZ'),
	(113,'Kenya','KE'),
	(114,'Kiribati','KI'),
	(115,'Korea, Democratic People\'s Republic of','KP'),
	(116,'Korea, Republic of','KR'),
	(117,'Kosovo','XK'),
	(118,'Kuwait','KW'),
	(119,'Kyrgyzstan','KG'),
	(120,'Lao People\'s Democratic Republic','LA'),
	(121,'Latvia','LV'),
	(122,'Lebanon','LB'),
	(123,'Lesotho','LS'),
	(124,'Liberia','LR'),
	(125,'Libyan Arab Jamahiriya','LY'),
	(126,'Liechtenstein','LI'),
	(127,'Lithuania','LT'),
	(128,'Luxembourg','LU'),
	(129,'Macau','MO'),
	(130,'Macedonia','MK'),
	(131,'Madagascar','MG'),
	(132,'Malawi','MW'),
	(133,'Malaysia','MY'),
	(134,'Maldives','MV'),
	(135,'Mali','ML'),
	(136,'Malta','MT'),
	(137,'Marshall Islands','MH'),
	(138,'Martinique','MQ'),
	(139,'Mauritania','MR'),
	(140,'Mauritius','MU'),
	(141,'Mayotte','TY'),
	(142,'Mexico','MX'),
	(143,'Micronesia, Federated States of','FM'),
	(144,'Moldova, Republic of','MD'),
	(145,'Monaco','MC'),
	(146,'Mongolia','MN'),
	(147,'Montenegro','ME'),
	(148,'Montserrat','MS'),
	(149,'Morocco','MA'),
	(150,'Mozambique','MZ'),
	(151,'Myanmar','MM'),
	(152,'Namibia','NA'),
	(153,'Nauru','NR'),
	(154,'Nepal','NP'),
	(155,'Netherlands','NL'),
	(156,'Netherlands Antilles','AN'),
	(157,'New Caledonia','NC'),
	(158,'New Zealand','NZ'),
	(159,'Nicaragua','NI'),
	(160,'Niger','NE'),
	(161,'Nigeria','NG'),
	(162,'Niue','NU'),
	(163,'Norfolk Island','NF'),
	(164,'Northern Mariana Islands','MP'),
	(165,'Norway','NO'),
	(166,'Oman','OM'),
	(167,'Pakistan','PK'),
	(168,'Palau','PW'),
	(169,'Palestine','PS'),
	(170,'Panama','PA'),
	(171,'Papua New Guinea','PG'),
	(172,'Paraguay','PY'),
	(173,'Peru','PE'),
	(174,'Philippines','PH'),
	(175,'Pitcairn','PN'),
	(176,'Poland','PL'),
	(177,'Portugal','PT'),
	(178,'Puerto Rico','PR'),
	(179,'Qatar','QA'),
	(180,'Reunion','RE'),
	(181,'Romania','RO'),
	(182,'Russian Federation','RU'),
	(183,'Rwanda','RW'),
	(184,'Saint Kitts and Nevis','KN'),
	(185,'Saint Lucia','LC'),
	(186,'Saint Vincent and the Grenadines','VC'),
	(187,'Samoa','WS'),
	(188,'San Marino','SM'),
	(189,'Sao Tome and Principe','ST'),
	(190,'Saudi Arabia','SA'),
	(191,'Senegal','SN'),
	(192,'Serbia','RS'),
	(193,'Seychelles','SC'),
	(194,'Sierra Leone','SL'),
	(195,'Singapore','SG'),
	(196,'Slovakia','SK'),
	(197,'Slovenia','SI'),
	(198,'Solomon Islands','SB'),
	(199,'Somalia','SO'),
	(200,'South Africa','ZA'),
	(201,'South Georgia South Sandwich Islands','GS'),
	(202,'Spain','ES'),
	(203,'Sri Lanka','LK'),
	(204,'St. Helena','SH'),
	(205,'St. Pierre and Miquelon','PM'),
	(206,'Sudan','SD'),
	(207,'Suriname','SR'),
	(208,'Svalbard and Jan Mayen Islands','SJ'),
	(209,'Swaziland','SZ'),
	(210,'Sweden','SE'),
	(211,'Switzerland','CH'),
	(212,'Syrian Arab Republic','SY'),
	(213,'Taiwan','TW'),
	(214,'Tajikistan','TJ'),
	(215,'Tanzania, United Republic of','TZ'),
	(216,'Thailand','TH'),
	(217,'Togo','TG'),
	(218,'Tokelau','TK'),
	(219,'Tonga','TO'),
	(220,'Trinidad and Tobago','TT'),
	(221,'Tunisia','TN'),
	(222,'Turkey','TR'),
	(223,'Turkmenistan','TM'),
	(224,'Turks and Caicos Islands','TC'),
	(225,'Tuvalu','TV'),
	(226,'Uganda','UG'),
	(227,'Ukraine','UA'),
	(228,'United Arab Emirates','AE'),
	(229,'United Kingdom','GB'),
	(230,'United States','US'),
	(231,'United States minor outlying islands','UM'),
	(232,'Uruguay','UY'),
	(233,'Uzbekistan','UZ'),
	(234,'Vanuatu','VU'),
	(235,'Vatican City State','VA'),
	(236,'Venezuela','VE'),
	(237,'Vietnam','VN'),
	(238,'Virgin Islands (British)','VG'),
	(239,'Virgin Islands (U.S.)','VI'),
	(240,'Wallis and Futuna Islands','WF'),
	(241,'Western Sahara','EH'),
	(242,'Yemen','YE'),
	(243,'Zaire','ZR'),
	(244,'Zambia','ZM'),
	(245,'Zimbabwe','ZW');

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_time` int(11) DEFAULT NULL,
  `duration_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendece` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `name`, `duration_time`, `duration_type`, `attendece`, `created_at`, `updated_at`)
VALUES
	(1,'6 months',6,'M',85,'2018-07-11 14:24:44','2018-07-11 16:09:40'),
	(2,'45 days',45,'d',85,'2018-07-11 16:09:54','2018-07-11 16:10:31');

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),
	(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(8,1,'avatar','image','Avatar',0,0,1,1,1,1,NULL,8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(12,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),
	(13,2,'id','number','ID',1,0,0,0,0,0,'',1),
	(14,2,'name','text','Name',1,1,1,1,1,1,'',2),
	(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
	(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
	(17,3,'id','number','ID',1,0,0,0,0,0,'',1),
	(18,3,'name','text','Name',1,1,1,1,1,1,'',2),
	(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
	(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
	(21,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),
	(22,1,'role_id','text','Role',0,1,1,1,1,1,NULL,9),
	(23,4,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(24,4,'name','text','Name',0,1,1,1,1,1,NULL,2),
	(25,4,'tax_id','text','Tax ID',0,1,1,1,1,1,NULL,3),
	(26,4,'address_street','text','Street',0,0,1,1,1,1,NULL,4),
	(27,4,'address_number','text','Number',0,0,1,1,1,1,NULL,5),
	(28,4,'address_other','text','Other',0,0,1,1,1,1,NULL,6),
	(29,4,'address_city','text','City',0,1,1,1,1,1,NULL,7),
	(31,4,'address_state','text','State',0,0,1,1,1,1,NULL,10),
	(32,4,'address_country','text','Country',0,0,1,1,1,1,NULL,11),
	(33,4,'phone_number','text','Phone Number',0,1,1,1,1,1,NULL,13),
	(34,4,'email','text','E-mail',0,1,1,1,1,1,NULL,14),
	(35,4,'website','text','Website',0,0,1,1,1,1,NULL,15),
	(36,4,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,16),
	(37,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,17),
	(39,5,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(40,5,'name','text','Name',0,1,1,1,1,1,NULL,2),
	(41,5,'document','text','Document',0,0,1,1,1,1,NULL,3),
	(43,5,'address_street','text','Street',0,0,1,1,1,1,NULL,6),
	(44,5,'address_number','text','Number',0,0,1,1,1,1,NULL,7),
	(45,5,'address_other','text','Other',0,0,1,1,1,1,NULL,8),
	(46,5,'address_neighborhood','text','Neighborhood',0,0,1,1,1,1,NULL,9),
	(47,5,'address_city','text','City',0,0,1,1,1,1,NULL,10),
	(48,5,'address_state','text','State',0,0,1,1,1,1,NULL,11),
	(49,5,'address_postalcode','text','Postal Code',0,0,1,1,1,1,NULL,12),
	(50,5,'address_country','text','Country',0,1,1,1,1,1,NULL,13),
	(52,5,'email','text','E-mail',0,1,1,1,1,1,NULL,16),
	(53,5,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,17),
	(54,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,20),
	(57,4,'institution_hasone_country_relationship','relationship','Country',0,1,1,1,1,1,'{\"model\":\"App\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"address_country\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"countries\",\"pivot\":\"0\",\"taggable\":\"0\"}',12),
	(58,4,'address_postalcode','text','Postal Code',0,0,1,1,1,1,NULL,9),
	(59,4,'address_neighborhood','text','Neighborhood',0,0,1,1,1,1,NULL,8),
	(60,5,'student_belongsto_country_relationship','relationship','Country',0,1,1,1,1,1,'{\"model\":\"App\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"address_country\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"countries\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),
	(61,5,'phone_number','text','Phone Number',0,1,1,1,1,1,NULL,15),
	(62,6,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(63,6,'name','text','Name',0,1,1,1,1,1,NULL,2),
	(64,6,'document','text','Document',0,1,1,1,1,1,NULL,3),
	(65,6,'address_street','text','Street',0,0,1,1,1,1,NULL,6),
	(66,6,'address_number','text','Number',0,0,1,1,1,1,NULL,7),
	(67,6,'address_other','text','Other',0,0,1,1,1,1,NULL,8),
	(68,6,'address_neighborhood','text','Neighborhood',0,0,1,1,1,1,NULL,9),
	(69,6,'address_postalcode','text','Postalcode',0,0,1,1,1,1,NULL,10),
	(70,6,'address_city','text','City',0,0,1,1,1,1,NULL,11),
	(71,6,'address_state','text','State',0,0,1,1,1,1,NULL,12),
	(72,6,'address_country','text','Country',0,0,1,1,1,1,NULL,13),
	(73,6,'phone_number','text','Phone Number',0,1,1,1,1,1,NULL,15),
	(74,6,'email','text','E-mail',0,1,1,1,1,1,NULL,16),
	(75,6,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,17),
	(76,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,18),
	(77,6,'teacher_belongsto_country_relationship','relationship','Country',0,1,1,1,1,1,'{\"model\":\"App\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"address_country\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"countries\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),
	(80,7,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(81,7,'name','text','Name',0,1,1,1,1,1,NULL,2),
	(82,7,'duration_time','text','Duration',0,1,1,1,1,1,NULL,3),
	(83,7,'duration_type','select_dropdown','Type',0,1,1,1,1,1,'{\"default\":\"week\",\"options\":{\"d\":\"Day(s)\",\"w\":\"Week(s)\",\"M\":\"Month(s)\",\"y\":\"Year(s)\"}}',4),
	(84,7,'attendece','text','Attendece',0,0,1,1,1,1,NULL,5),
	(85,7,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,6),
	(86,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(95,9,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(96,9,'student_id','text','Student Id',0,1,1,1,1,1,NULL,2),
	(97,9,'course_id','text','Course Id',0,1,1,1,1,1,NULL,4),
	(98,9,'institution_id','text','Institution Id',0,1,1,1,1,1,NULL,6),
	(99,9,'beginning','date','Beginning',0,1,1,1,1,1,NULL,8),
	(100,9,'end','date','End',0,1,1,1,1,1,NULL,9),
	(101,9,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,10),
	(102,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,11),
	(103,9,'enrollment_belongsto_student_relationship','relationship','Student',0,1,1,1,1,1,'{\"model\":\"App\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"countries\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
	(104,9,'enrollment_belongsto_institution_relationship','relationship','Institution',0,1,1,1,1,1,'{\"model\":\"App\\\\Institution\",\"table\":\"institutions\",\"type\":\"belongsTo\",\"column\":\"institution_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"countries\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
	(105,9,'enrollment_belongsto_course_relationship','relationship','Course',0,1,1,1,1,1,'{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"countries\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
	(106,10,'id','text','Id',1,1,0,0,0,0,NULL,1),
	(107,10,'name','text','Name',0,1,1,1,1,1,NULL,2),
	(108,10,'decription','text_area','Decription',0,0,1,1,1,1,NULL,3),
	(109,10,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),
	(110,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),
	(123,17,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(124,17,'name','text','Name',0,1,1,1,1,1,NULL,2),
	(125,17,'description','text','Description',0,0,1,1,1,1,NULL,3),
	(126,17,'level_id','text','Level',0,1,1,1,1,1,NULL,4),
	(127,17,'teacher_id','text','Teacher',0,1,1,1,1,1,NULL,6),
	(128,17,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,8),
	(129,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,9),
	(130,17,'class_belongsto_teacher_relationship','relationship','Teacher',0,1,1,1,1,1,'{\"model\":\"App\\\\Teacher\",\"table\":\"teachers\",\"type\":\"belongsTo\",\"column\":\"teacher_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"classes\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
	(131,17,'class_belongsto_level_relationship','relationship','Level',0,1,1,1,1,1,'{\"model\":\"App\\\\Level\",\"table\":\"levels\",\"type\":\"belongsTo\",\"column\":\"level_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"classes\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
	(132,17,'class_belongstomany_student_relationship','relationship','Students',0,0,1,1,1,1,'{\"model\":\"App\\\\Student\",\"table\":\"students\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"class_students\",\"pivot\":\"1\",\"taggable\":\"on\"}',10);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy',NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-10 18:03:02','2018-07-11 12:45:43'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-07-10 18:03:02','2018-07-10 18:03:02'),
	(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-07-10 18:03:02','2018-07-10 18:03:02'),
	(4,'institutions','institutions','Institution','Institutions','voyager-home','App\\Institution',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\"}','2018-07-10 18:34:13','2018-07-10 18:34:13'),
	(5,'students','students','Student','Students','voyager-people','App\\Student',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\"}','2018-07-10 18:52:14','2018-07-10 18:52:14'),
	(6,'teachers','teachers','Teacher','Teachers','voyager-study','App\\Teacher',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\"}','2018-07-10 19:44:18','2018-07-10 19:50:40'),
	(7,'courses','courses','Course','Courses','voyager-book','App\\Course',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\"}','2018-07-10 20:09:04','2018-07-10 20:09:04'),
	(9,'enrollments','enrollments','Enrollment','Enrollments','voyager-activity','App\\Enrollment',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\"}','2018-07-10 20:49:23','2018-07-10 20:49:23'),
	(10,'levels','levels','Level','Levels','voyager-double-up','App\\Level',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\"}','2018-07-11 12:33:58','2018-07-11 12:33:58'),
	(17,'classes','classes','Class','Classes','voyager-group','App\\Klass',NULL,NULL,NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\"}','2018-07-11 14:07:06','2018-07-11 14:07:06');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table enrollments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enrollments`;

CREATE TABLE `enrollments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `beginning` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;

INSERT INTO `enrollments` (`id`, `student_id`, `course_id`, `institution_id`, `beginning`, `end`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,'2018-08-01','2019-02-01','2018-07-11 14:30:53','2018-07-11 14:30:53');

/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table institutions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `institutions`;

CREATE TABLE `institutions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` text COLLATE utf8mb4_unicode_ci,
  `address_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_other` text COLLATE utf8mb4_unicode_ci,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` int(11) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `institutions` WRITE;
/*!40000 ALTER TABLE `institutions` DISABLE KEYS */;

INSERT INTO `institutions` (`id`, `name`, `tax_id`, `address_street`, `address_number`, `address_other`, `address_city`, `address_postalcode`, `address_state`, `address_country`, `phone_number`, `email`, `website`, `created_at`, `updated_at`, `address_neighborhood`)
VALUES
	(1,'RightWorld Institute','123123123',NULL,NULL,NULL,NULL,NULL,NULL,104,NULL,NULL,NULL,'2018-07-11 14:19:02','2018-07-11 14:19:27',NULL);

/*!40000 ALTER TABLE `institutions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table levels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `levels`;

CREATE TABLE `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decription` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;

INSERT INTO `levels` (`id`, `name`, `decription`, `created_at`, `updated_at`)
VALUES
	(1,'Upper Intermediate',NULL,'2018-07-11 14:25:19','2018-07-11 14:25:19');

/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-07-10 18:03:02','2018-07-10 18:03:02','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,5,6,'2018-07-10 18:03:02','2018-07-10 18:26:52','voyager.media.index',NULL),
	(3,1,'Users','','_self','voyager-person',NULL,12,2,'2018-07-10 18:03:02','2018-07-11 14:10:39','voyager.users.index',NULL),
	(4,1,'Roles','','_self','voyager-lock',NULL,12,1,'2018-07-10 18:03:02','2018-07-10 18:26:31','voyager.roles.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,5,'2018-07-10 18:03:02','2018-07-11 12:34:26',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-07-10 18:03:03','2018-07-10 18:26:21','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-07-10 18:03:03','2018-07-10 18:26:22','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-07-10 18:03:03','2018-07-10 18:26:22','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2018-07-10 18:03:03','2018-07-10 18:26:22','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,6,'2018-07-10 18:03:03','2018-07-11 12:34:26','voyager.settings.index',NULL),
	(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2018-07-10 18:03:03','2018-07-10 18:26:22','voyager.hooks',NULL),
	(12,1,'Configurations','','_self','voyager-settings','#000000',NULL,4,'2018-07-10 18:26:15','2018-07-10 20:53:46',NULL,''),
	(13,1,'Institutions','','_self','voyager-home',NULL,16,1,'2018-07-10 18:34:13','2018-07-10 18:54:34','voyager.institutions.index',NULL),
	(15,1,'Students','','_self','voyager-people',NULL,16,3,'2018-07-10 18:52:14','2018-07-11 14:19:54','voyager.students.index',NULL),
	(16,1,'Registers','','_self','voyager-list-add','#000000',NULL,2,'2018-07-10 18:54:24','2018-07-10 18:54:42',NULL,''),
	(17,1,'Teachers','','_self','voyager-study','#000000',16,2,'2018-07-10 19:44:18','2018-07-11 14:19:47','voyager.teachers.index','null'),
	(18,1,'Courses','','_self','voyager-book',NULL,16,4,'2018-07-10 20:09:04','2018-07-11 14:19:54','voyager.courses.index',NULL),
	(20,1,'Enrollments','','_self','voyager-activity',NULL,21,1,'2018-07-10 20:49:23','2018-07-10 20:53:41','voyager.enrollments.index',NULL),
	(21,1,'Routines','','_self','voyager-refresh','#000000',NULL,3,'2018-07-10 20:53:33','2018-07-10 20:53:45',NULL,''),
	(22,1,'Levels','','_self','voyager-double-up',NULL,16,5,'2018-07-11 12:33:58','2018-07-11 14:19:54','voyager.levels.index',NULL),
	(24,1,'Classes','','_self','voyager-group',NULL,21,2,'2018-07-11 14:07:06','2018-07-11 14:10:41','voyager.classes.index',NULL);

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2018-07-10 18:03:02','2018-07-10 18:03:02');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_05_19_173453_create_menu_table',1),
	(6,'2016_10_21_190000_create_roles_table',1),
	(7,'2016_10_21_190000_create_settings_table',1),
	(8,'2016_11_30_135954_create_permission_table',1),
	(9,'2016_11_30_141208_create_permission_role_table',1),
	(10,'2016_12_26_201236_data_types__add__server_side',1),
	(11,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(12,'2017_01_14_005015_create_translations_table',1),
	(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(14,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(15,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(17,'2017_08_05_000000_add_group_to_settings_table',1),
	(18,'2017_11_26_013050_add_user_role_relationship',1),
	(19,'2017_11_26_015000_create_user_roles_table',1),
	(20,'2018_03_11_000000_add_user_settings',1),
	(21,'2018_03_14_000000_add_details_to_data_types_table',1),
	(22,'2018_03_16_000000_make_settings_value_nullable',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(2,'browse_bread',NULL,'2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(3,'browse_database',NULL,'2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(4,'browse_media',NULL,'2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(5,'browse_compass',NULL,'2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(6,'browse_menus','menus','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(7,'read_menus','menus','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(8,'edit_menus','menus','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(9,'add_menus','menus','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(10,'delete_menus','menus','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(11,'browse_roles','roles','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(12,'read_roles','roles','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(13,'edit_roles','roles','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(14,'add_roles','roles','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(15,'delete_roles','roles','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(16,'browse_users','users','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(17,'read_users','users','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(18,'edit_users','users','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(19,'add_users','users','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(20,'delete_users','users','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(21,'browse_settings','settings','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(22,'read_settings','settings','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(23,'edit_settings','settings','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(24,'add_settings','settings','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(25,'delete_settings','settings','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(26,'browse_hooks',NULL,'2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(27,'browse_institutions','institutions','2018-07-10 18:34:13','2018-07-10 18:34:13'),
	(28,'read_institutions','institutions','2018-07-10 18:34:13','2018-07-10 18:34:13'),
	(29,'edit_institutions','institutions','2018-07-10 18:34:13','2018-07-10 18:34:13'),
	(30,'add_institutions','institutions','2018-07-10 18:34:13','2018-07-10 18:34:13'),
	(31,'delete_institutions','institutions','2018-07-10 18:34:13','2018-07-10 18:34:13'),
	(32,'browse_students','students','2018-07-10 18:52:14','2018-07-10 18:52:14'),
	(33,'read_students','students','2018-07-10 18:52:14','2018-07-10 18:52:14'),
	(34,'edit_students','students','2018-07-10 18:52:14','2018-07-10 18:52:14'),
	(35,'add_students','students','2018-07-10 18:52:14','2018-07-10 18:52:14'),
	(36,'delete_students','students','2018-07-10 18:52:14','2018-07-10 18:52:14'),
	(37,'browse_teachers','teachers','2018-07-10 19:44:18','2018-07-10 19:44:18'),
	(38,'read_teachers','teachers','2018-07-10 19:44:18','2018-07-10 19:44:18'),
	(39,'edit_teachers','teachers','2018-07-10 19:44:18','2018-07-10 19:44:18'),
	(40,'add_teachers','teachers','2018-07-10 19:44:18','2018-07-10 19:44:18'),
	(41,'delete_teachers','teachers','2018-07-10 19:44:18','2018-07-10 19:44:18'),
	(42,'browse_courses','courses','2018-07-10 20:09:04','2018-07-10 20:09:04'),
	(43,'read_courses','courses','2018-07-10 20:09:04','2018-07-10 20:09:04'),
	(44,'edit_courses','courses','2018-07-10 20:09:04','2018-07-10 20:09:04'),
	(45,'add_courses','courses','2018-07-10 20:09:04','2018-07-10 20:09:04'),
	(46,'delete_courses','courses','2018-07-10 20:09:04','2018-07-10 20:09:04'),
	(52,'browse_enrollments','enrollments','2018-07-10 20:49:23','2018-07-10 20:49:23'),
	(53,'read_enrollments','enrollments','2018-07-10 20:49:23','2018-07-10 20:49:23'),
	(54,'edit_enrollments','enrollments','2018-07-10 20:49:23','2018-07-10 20:49:23'),
	(55,'add_enrollments','enrollments','2018-07-10 20:49:23','2018-07-10 20:49:23'),
	(56,'delete_enrollments','enrollments','2018-07-10 20:49:23','2018-07-10 20:49:23'),
	(57,'browse_levels','levels','2018-07-11 12:33:58','2018-07-11 12:33:58'),
	(58,'read_levels','levels','2018-07-11 12:33:58','2018-07-11 12:33:58'),
	(59,'edit_levels','levels','2018-07-11 12:33:58','2018-07-11 12:33:58'),
	(60,'add_levels','levels','2018-07-11 12:33:58','2018-07-11 12:33:58'),
	(61,'delete_levels','levels','2018-07-11 12:33:58','2018-07-11 12:33:58'),
	(67,'browse_classes','classes','2018-07-11 14:07:06','2018-07-11 14:07:06'),
	(68,'read_classes','classes','2018-07-11 14:07:06','2018-07-11 14:07:06'),
	(69,'edit_classes','classes','2018-07-11 14:07:06','2018-07-11 14:07:06'),
	(70,'add_classes','classes','2018-07-11 14:07:06','2018-07-11 14:07:06'),
	(71,'delete_classes','classes','2018-07-11 14:07:06','2018-07-11 14:07:06');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2018-07-10 18:03:03','2018-07-10 18:03:03'),
	(2,'user','Normal User','2018-07-10 18:03:03','2018-07-10 18:03:03');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table students
# ------------------------------------------------------------

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` text COLLATE utf8mb4_unicode_ci,
  `address_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` int(11) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;

INSERT INTO `students` (`id`, `name`, `document`, `address_street`, `address_number`, `address_other`, `address_neighborhood`, `address_city`, `address_state`, `address_postalcode`, `address_country`, `phone_number`, `email`, `created_at`, `updated_at`)
VALUES
	(1,'Marcos Paegle','123123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,'2018-07-11 14:24:22','2018-07-11 14:24:22');

/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teachers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` int(11) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;

INSERT INTO `teachers` (`id`, `name`, `document`, `address_street`, `address_number`, `address_other`, `address_neighborhood`, `address_postalcode`, `address_city`, `address_state`, `address_country`, `phone_number`, `email`, `created_at`, `updated_at`)
VALUES
	(1,'Una','123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,104,NULL,NULL,'2018-07-11 14:23:55','2018-07-11 14:23:55');

/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,1,'Marcos Paegle','marcos.paegle@gmail.com','users/default.png','$2y$10$oqRxzJze0xZNYo20jzmbXO/8ufFUOEiDM15xzSzuDW4eoJwe8Fsou',NULL,NULL,'2018-07-10 18:04:18','2018-07-10 18:04:18');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
