CREATE TABLE `alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alert_id` bigint(100) NOT NULL,
  `imp` bigint(10) NOT NULL,
  `imp_info` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `infor` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `dt` date NOT NULL,
  `audience` bigint(10) NOT NULL,
  `cen_dr` bigint(10) NOT NULL,
  `stu_ad` bigint(100) NOT NULL,
  `rep` int(100) NOT NULL,
  `student` int(100) NOT NULL,
  `teacher` int(100) NOT NULL,
  `ac` int(11) NOT NULL,
  `lis` int(11) NOT NULL,
  `lism` int(11) NOT NULL,
  `tm` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `status` bigint(50) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `alerts_read` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `alert_id` bigint(100) NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `dated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `alerts_reply` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `alert_id` bigint(100) NOT NULL,
  `msg` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `arf` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `dated` date NOT NULL,
  `nr` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `action_owner` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `report_by` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `report_to` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `customer` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `teacher` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `reception1` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cs1` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `other1` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `reception2` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `lcd` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `lis` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cs2` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `other2` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `instruction` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `material` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `programme` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `premisses` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `administration` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `other3` varchar(70) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `cd_makeup_class` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `schedule_date` date NOT NULL,
  `dated` date NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `cd_makeup_class_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `centre` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cen_no` int(100) NOT NULL,
  `cen_tel_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cen_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cen_dir_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `street_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `area` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `unit_day` int(100) NOT NULL,
  `start_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `end_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `class_start_time` time NOT NULL,
  `class_end_time` time NOT NULL,
  `cen_no_clas` int(100) NOT NULL,
  `invoice_from` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `centre` VALUES ('1', 'Men Mubarraz', '1', '05487889765', 'center1@berlitz-ksa.com', 'Ahmed Varachia', 'Thurayat Street', 'Hofuf', 'Choose your state (if applicable)', '189', '0', '0:', ':', '08:00:00', '17:00:00', '1', '01', '2013-08-26 13:17:02', '1', '0000-00-00 00:00:00', '0');

CREATE TABLE `centre_group_size` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(100) NOT NULL,
  `size_from` bigint(100) NOT NULL,
  `size_to` bigint(100) NOT NULL,
  `total_size` bigint(100) NOT NULL,
  `week_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `week_id1` bigint(100) NOT NULL,
  `units` bigint(100) NOT NULL,
  `effect_units` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `centre_group_size` VALUES ('1', '51', '1', '1', '0', '', '1', '40', '0', '1');
INSERT INTO `centre_group_size` VALUES ('2', '52', '2', '3', '1', '', '1', '40', '0', '1');
INSERT INTO `centre_group_size` VALUES ('3', '53', '4', '6', '2', '', '2', '60', '0', '1');
INSERT INTO `centre_group_size` VALUES ('4', '54', '7', '9', '2', '', '3', '70', '0', '1');
INSERT INTO `centre_group_size` VALUES ('5', '55', '10', '12', '2', '', '4', '80', '0', '1');
INSERT INTO `centre_group_size` VALUES ('6', '56', '13', '150', '137', '', '4', '90', '0', '1');

CREATE TABLE `centre_room` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `centre_id` bigint(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `no` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `centre_room` VALUES ('1', '1', 'Classroom 1', '12');

CREATE TABLE `centre_vacation` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `sid` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `frm` date NOT NULL,
  `tto` date NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `status` bigint(10) NOT NULL,
  `no_days` bigint(10) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `class_cancel` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `cancel_date` date NOT NULL,
  `cancel_by` bigint(100) NOT NULL,
  `comments` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `comment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `comment` VALUES ('1', 'Attendance', 'Your attendance is complete - ?????? ??????');
INSERT INTO `comment` VALUES ('2', 'Attendance', 'Your attendance is near perfect');
INSERT INTO `comment` VALUES ('3', 'Attendance', 'Your attendance was satisfactory, however you needed to attend more classes');
INSERT INTO `comment` VALUES ('4', 'Attendance', 'Your attendance was minimal');
INSERT INTO `comment` VALUES ('5', 'Attendance', 'Regularly tardy which resulted in missing lessos');
INSERT INTO `comment` VALUES ('1', 'Participation', 'Your contribution within the lesson goes well beyond that expected of someone at your level.');
INSERT INTO `comment` VALUES ('2', 'Participation', 'Your contribution within the lesson excceds that expected of someone at your level.');
INSERT INTO `comment` VALUES ('3', 'Participation', 'Your contribution has facilitated language development in the classroom.');
INSERT INTO `comment` VALUES ('4', 'Participation', 'More active participation would allow you to put your knowledge into practice.');
INSERT INTO `comment` VALUES ('5', 'Participation', 'Further progress will be extremely difficult without sgnificantly more active participation during the lesson.');
INSERT INTO `comment` VALUES ('1', 'Homework', 'All assigned homework is comopleted, allowing for thorough review and support of material covered in class.');
INSERT INTO `comment` VALUES ('2', 'Homework', 'Almost all assigned homework is completed, allwing for review and support of material covered in class.');
INSERT INTO `comment` VALUES ('3', 'Homework', 'Most assigned homework is completed.');
INSERT INTO `comment` VALUES ('4', 'Homework', 'Homework is sometimes completed. Regular homework completion is necessary to achieve your language goals.');
INSERT INTO `comment` VALUES ('5', 'Homework', 'Further progress will be extremely difficult without more attention to self-study. Regular homework completion is necessary to achieve your language goals.');
INSERT INTO `comment` VALUES ('1', 'Fluency', 'Your fluency demonstrates a mastery of the topics far beyond what would be expected for your level.');
INSERT INTO `comment` VALUES ('2', 'Fluency', 'Your fluency demonstrates a solid mastery of the topics covered so far.');
INSERT INTO `comment` VALUES ('3', 'Fluency', 'Your fluency within the topics covered so far meets expectations. More fluency practice with your supplementary materials may be advised for specific points.');
INSERT INTO `comment` VALUES ('4', 'Fluency', 'Your fluency is somewhat limited to specific words or phrases. More fluency practice with your supplementary materials is advised for specific points.');
INSERT INTO `comment` VALUES ('5', 'Fluency', 'Your speech lacks the luency expected for your level. Thorough review and practive of the syllabus content would be required to improve your fluency.');
INSERT INTO `comment` VALUES ('1', 'Pronunciation', 'The clarity of your pronunciation is easily understandable to all speakers of the language.');
INSERT INTO `comment` VALUES ('2', 'Pronunciation', 'The clarity of your pronunciation is understandble to all speakers of the language.');
INSERT INTO `comment` VALUES ('3', 'Pronunciation', 'Your pronunciation conveys your meaning but may have distinctive elements from your native language.');
INSERT INTO `comment` VALUES ('4', 'Pronunciation', 'Your pronunciation may at times interfere with your meaning and has distinctie elements from your native language. the audio excercises in your supplementary material would be benificail for you.');
INSERT INTO `comment` VALUES ('5', 'Pronunciation', 'Your pronunciation activedly impedes the message you wish to communicate. Further work with the supplementary audio excercises is highly recommended.');
INSERT INTO `comment` VALUES ('1', 'Grammer', 'Your use of the grammatical points covered so far demonstrates a mastery beyond what would be expected for your leve.');
INSERT INTO `comment` VALUES ('2', 'Grammer', 'Your use of the grammatical points covered so far demonstrates a solid understanding for your level.');
INSERT INTO `comment` VALUES ('3', 'Grammer', 'Your use of the grammatical points covered so far is reasonably good. Further review of specific points is advised.');
INSERT INTO `comment` VALUES ('4', 'Grammer', 'Your awareness of the grammar structures covered so far is limited. You are strongly advised to review the majority o grammer points covered so far.');
INSERT INTO `comment` VALUES ('5', 'Grammer', 'Your awareness of the grammar structures covered so far will restrict your further language development. In-depth reiew of grammar structures indicated are necessary for further development.');
INSERT INTO `comment` VALUES ('1', 'Vocabulary', 'Your range of expression includes all of the material covered so far and goes beyond the expected content for your level.');
INSERT INTO `comment` VALUES ('2', 'Vocabulary', 'Your range of expression includes all of the materail covered so far for your level.');
INSERT INTO `comment` VALUES ('3', 'Vocabulary', 'Your range of expression includes the most significant points from the material covered so far for your level.');
INSERT INTO `comment` VALUES ('4', 'Vocabulary', 'Your range of expression covers several of the points introduced. You could benefit greatly by reviewing the relevant phrases and vocabulary in your supplementary material and your student reader.');
INSERT INTO `comment` VALUES ('5', 'Vocabulary', 'Your range of expression is relatively limited for your level. Thorough review of the syllabus content would be required to improve you vocabulary.');
INSERT INTO `comment` VALUES ('1', 'Comprehension', 'You easily understand all instructions and questions. You perform communicative tasks extremely well.');
INSERT INTO `comment` VALUES ('2', 'Comprehension', 'You have a good understanding of questions and instuctions. You perform communicative tasks well.');
INSERT INTO `comment` VALUES ('3', 'Comprehension', 'You understand instructions and questions with limited repetition. You performance in communicative tasks is satisfactory.');
INSERT INTO `comment` VALUES ('4', 'Comprehension', 'You understand most utterances and tend to translate on rare occasions. After a bit of repetition, you can perform the communicatie tasks.');
INSERT INTO `comment` VALUES ('5', 'Comprehension', 'You tend to translate often and require frequent repetition of questions. Some difficulty understanding communicatie tasks. :)  ??');

CREATE TABLE `common` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

INSERT INTO `common` VALUES ('1', 'Part time - ???? ????', 'user status', '0000-00-00 00:00:00', '0', '2013-05-28 17:54:56', '1');
INSERT INTO `common` VALUES ('2', 'Full Time - ???? ????', 'user status', '0000-00-00 00:00:00', '0', '2013-05-28 17:54:26', '1');
INSERT INTO `common` VALUES ('3', 'Morning', 'teacher preference', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('4', 'Afternoons', 'teacher preference', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('5', 'Evening', 'teacher preference', '0000-00-00 00:00:00', '0', '2012-03-21 10:07:05', '1');
INSERT INTO `common` VALUES ('6', 'Enrolled', 'student status', '0000-00-00 00:00:00', '0', '2011-12-29 14:28:37', '1');
INSERT INTO `common` VALUES ('7', 'Potential', 'student status', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('8', 'Cancelled', 'student status', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('9', 'Waiting list', 'student status', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('10', 'Student progress on stop', 'student status', '0000-00-00 00:00:00', '0', '2012-02-10 12:42:05', '1');
INSERT INTO `common` VALUES ('11', 'Templete 11', 'work week ', '0000-00-00 00:00:00', '0', '2012-02-06 18:49:16', '1');
INSERT INTO `common` VALUES ('12', 'Sunday', 'work week ', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('13', 'Monday', 'work week', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('14', 'Tuesday', 'work week', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('15', 'Wednesday', 'work week', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('16', 'Thusday', 'work week', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('17', 'Friday', 'work week', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('32', 'Information', 'alert type', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('33', 'Alerts', 'alert type', '0000-00-00 00:00:00', '0', '2011-12-29 15:10:58', '1');
INSERT INTO `common` VALUES ('31', 'Critical Alert', 'alert type', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('43', 'Word of Mouth', 'lead type', '0000-00-00 00:00:00', '0', '2013-01-22 01:04:22', '1');
INSERT INTO `common` VALUES ('44', 'Friend - ????', 'lead type', '0000-00-00 00:00:00', '0', '2013-05-28 18:04:47', '1');
INSERT INTO `common` VALUES ('45', 'Website - ??????', 'lead type', '0000-00-00 00:00:00', '0', '2013-05-28 18:04:38', '1');
INSERT INTO `common` VALUES ('51', 'P1', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('52', 'P2', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('53', 'G1', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('54', 'G2', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('55', 'G3', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('56', 'G4', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('57', 'Flexible (flex)', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('61', 'POS - ????', 'payment type', '0000-00-00 00:00:00', '0', '2013-05-28 18:08:07', '1');
INSERT INTO `common` VALUES ('60', 'Cash - ???', 'payment type', '0000-00-00 00:00:00', '0', '2013-05-28 18:08:14', '1');
INSERT INTO `common` VALUES ('62', 'Student Book - ???? ??????', 'material type', '0000-00-00 00:00:00', '0', '2013-05-28 17:56:03', '1');
INSERT INTO `common` VALUES ('63', 'CD', 'material type', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('64', 'CDROM', 'material type', '0000-00-00 00:00:00', '0', '2011-12-29 14:29:32', '1');
INSERT INTO `common` VALUES ('70', 'Magazine - ????', 'material type', '2011-12-29 14:29:45', '1', '2013-05-28 17:55:52', '1');
INSERT INTO `common` VALUES ('75', '1', 'Unit No', '2012-01-11 16:14:26', '1', '2012-02-02 14:41:16', '1');
INSERT INTO `common` VALUES ('76', '2', 'Unit No', '2012-01-11 16:14:30', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('92', 'Facebook - ????????', 'lead type', '2012-03-27 02:43:09', '1', '2013-05-28 18:04:28', '1');
INSERT INTO `common` VALUES ('98', 'School Student - ???? ?????', 'Type', '2012-07-17 16:19:02', '1', '2013-05-28 18:00:33', '1');
INSERT INTO `common` VALUES ('99', 'University Student - ???? ?????', 'Type', '2012-07-17 16:19:45', '1', '2013-05-28 18:00:21', '1');
INSERT INTO `common` VALUES ('100', 'Housewife - ??? ?????', 'Type', '2012-07-17 16:19:57', '1', '2013-05-28 18:00:08', '1');
INSERT INTO `common` VALUES ('101', 'Employed - ????', 'Type', '2012-07-17 16:20:04', '1', '2013-05-28 17:59:59', '1');
INSERT INTO `common` VALUES ('102', 'Unemployed - ???? ?? ?????', 'Type', '2012-07-17 16:20:10', '1', '2013-05-28 17:59:51', '1');
INSERT INTO `common` VALUES ('128', '3', 'Unit No', '2012-09-03 01:57:13', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('129', '4', 'Unit No', '2012-09-03 01:57:18', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('130', 'Binder - ???', 'material type', '2012-09-25 03:33:34', '1', '2013-05-28 17:55:35', '1');
INSERT INTO `common` VALUES ('131', 'Cheque - ???', 'payment type', '2012-09-25 03:34:19', '1', '2013-05-28 18:07:58', '1');
INSERT INTO `common` VALUES ('132', 'G6', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('133', '5', 'Unit No', '2012-10-30 03:33:51', '7', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('134', 'Family - ?????', 'lead type', '2013-01-22 01:04:36', '1', '2013-05-28 18:04:15', '1');
INSERT INTO `common` VALUES ('135', 'Mixed', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('136', 'Weekends', 'teacher preference', '2013-02-04 02:26:48', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('137', 'Update', 'alert type', '2013-02-04 02:29:26', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('138', 'DVD', 'material type', '2013-02-04 02:32:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('139', '6', 'Unit No', '2013-02-04 02:33:49', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('141', 'Brochure - ?????', 'lead type', '2013-02-04 02:49:01', '1', '2013-05-28 18:00:55', '1');
INSERT INTO `common` VALUES ('142', 'Action', 'alert type', '2013-05-28 17:57:56', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `common` VALUES ('143', 'Government', 'group group', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');

CREATE TABLE `conditions` (
  `id` bigint(10) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `conditions` VALUES ('1', 'Receipts\r\n\r\nTerms and Condition:\r\n\r\n:???? ???????\r\n\r\nUpdate', 'Challan');
INSERT INTO `conditions` VALUES ('2', 'Invoice\r\n\r\nTerms and Condition:\r\n\r\n:???? ???????\r\n', 'Invoice');
INSERT INTO `conditions` VALUES ('3', '9000', 'Logout Time');
INSERT INTO `conditions` VALUES ('4', 'http://berlitz-ksa.com/mySMS/logo/logo.png', 'Logo path');
INSERT INTO `conditions` VALUES ('5', 'http://berlitz-ksa.com/mySMS/logo/logo_big.png', 'Logo Big');
INSERT INTO `conditions` VALUES ('6', 'http://berlitz-ksa.com/mySMS/images/left-img.jpg', 'Logo Big Left');
INSERT INTO `conditions` VALUES ('7', '90', 'Bed Debt');
INSERT INTO `conditions` VALUES ('8', 'Asia/Riyadh', 'TimeZone');

CREATE TABLE `countries` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `value` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=latin1;

INSERT INTO `countries` VALUES ('1', 'Afghanistan', 'C');
INSERT INTO `countries` VALUES ('2', '&Aring;land&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('3', 'Albania', 'C');
INSERT INTO `countries` VALUES ('4', 'Algeria', 'C');
INSERT INTO `countries` VALUES ('5', 'American&nbsp;Samoa', 'C');
INSERT INTO `countries` VALUES ('6', 'Andorra', 'C');
INSERT INTO `countries` VALUES ('7', 'Angola', 'C');
INSERT INTO `countries` VALUES ('8', 'Anguilla', 'C');
INSERT INTO `countries` VALUES ('9', 'Antarctica', 'C');
INSERT INTO `countries` VALUES ('10', 'Antigua&nbsp;and&nbsp;Barbuda', 'C');
INSERT INTO `countries` VALUES ('11', 'Argentina', 'C');
INSERT INTO `countries` VALUES ('12', 'Armenia', 'C');
INSERT INTO `countries` VALUES ('13', 'Aruba', 'C');
INSERT INTO `countries` VALUES ('14', 'Australia', 'C');
INSERT INTO `countries` VALUES ('15', 'Austria', 'C');
INSERT INTO `countries` VALUES ('16', 'Azerbaijan', 'C');
INSERT INTO `countries` VALUES ('17', 'Bahamas', 'C');
INSERT INTO `countries` VALUES ('18', 'Bahrain', 'C');
INSERT INTO `countries` VALUES ('19', 'Bangladesh', 'C');
INSERT INTO `countries` VALUES ('20', 'Barbados', 'C');
INSERT INTO `countries` VALUES ('21', 'Belarus', 'C');
INSERT INTO `countries` VALUES ('22', 'Belgium', 'C');
INSERT INTO `countries` VALUES ('23', 'Belize', 'C');
INSERT INTO `countries` VALUES ('24', 'Benin', 'C');
INSERT INTO `countries` VALUES ('25', 'Bermuda', 'C');
INSERT INTO `countries` VALUES ('26', 'Bhutan', 'C');
INSERT INTO `countries` VALUES ('27', 'Bolivia', 'C');
INSERT INTO `countries` VALUES ('28', 'Bosnia&nbsp;and&nbsp;Herzegovina', 'C');
INSERT INTO `countries` VALUES ('29', 'Botswana', 'C');
INSERT INTO `countries` VALUES ('30', 'Bouvet&nbsp;Island', 'C');
INSERT INTO `countries` VALUES ('31', 'Brazil', 'C');
INSERT INTO `countries` VALUES ('32', 'British&nbsp;Indian&nbsp;Ocean&nbsp;territory', 'C');
INSERT INTO `countries` VALUES ('33', 'Brunei&nbsp;Darussalam', 'C');
INSERT INTO `countries` VALUES ('34', 'Bulgaria', 'C');
INSERT INTO `countries` VALUES ('35', 'Burkina&nbsp;Faso', 'C');
INSERT INTO `countries` VALUES ('36', 'Burundi', 'C');
INSERT INTO `countries` VALUES ('37', 'Cambodia', 'C');
INSERT INTO `countries` VALUES ('38', 'Cameroon', 'C');
INSERT INTO `countries` VALUES ('39', 'Canada', 'C');
INSERT INTO `countries` VALUES ('40', 'Cape&nbsp;Verde', 'C');
INSERT INTO `countries` VALUES ('41', 'Cayman&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('42', 'Central&nbsp;African&nbsp;Republic', 'C');
INSERT INTO `countries` VALUES ('43', 'Chad', 'C');
INSERT INTO `countries` VALUES ('44', 'Chile', 'C');
INSERT INTO `countries` VALUES ('45', 'China', 'C');
INSERT INTO `countries` VALUES ('46', 'Christmas&nbsp;Island', 'C');
INSERT INTO `countries` VALUES ('47', 'Cocos&nbsp;(Keeling)&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('48', 'Colombia', 'C');
INSERT INTO `countries` VALUES ('49', 'Comoros', 'C');
INSERT INTO `countries` VALUES ('50', 'Congo', 'C');
INSERT INTO `countries` VALUES ('51', 'Congo', 'C');
INSERT INTO `countries` VALUES ('52', '&nbsp;Democratic&nbsp;Republic', 'C');
INSERT INTO `countries` VALUES ('53', 'Cook&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('54', 'Costa&nbsp;Rica', 'C');
INSERT INTO `countries` VALUES ('55', 'C&ocirc;te&nbsp;d&#39;Ivoire&nbsp;(Ivory&nbsp;Coast)', 'C');
INSERT INTO `countries` VALUES ('56', 'Croatia&nbsp;(Hrvatska)', 'C');
INSERT INTO `countries` VALUES ('57', 'Cuba', 'C');
INSERT INTO `countries` VALUES ('58', 'Cyprus', 'C');
INSERT INTO `countries` VALUES ('59', 'Czech&nbsp;Republic', 'C');
INSERT INTO `countries` VALUES ('60', 'Denmark', 'C');
INSERT INTO `countries` VALUES ('61', 'Djibouti', 'C');
INSERT INTO `countries` VALUES ('62', 'Dominica', 'C');
INSERT INTO `countries` VALUES ('63', 'Dominican&nbsp;Republic', 'C');
INSERT INTO `countries` VALUES ('64', 'East&nbsp;Timor', 'C');
INSERT INTO `countries` VALUES ('65', 'Ecuador', 'C');
INSERT INTO `countries` VALUES ('66', 'Egypt', 'C');
INSERT INTO `countries` VALUES ('67', 'El&nbsp;Salvador', 'C');
INSERT INTO `countries` VALUES ('68', 'Equatorial&nbsp;Guinea', 'C');
INSERT INTO `countries` VALUES ('69', 'Eritrea', 'C');
INSERT INTO `countries` VALUES ('70', 'Estonia', 'C');
INSERT INTO `countries` VALUES ('71', 'Ethiopia', 'C');
INSERT INTO `countries` VALUES ('72', 'Falkland&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('73', 'Faroe&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('74', 'Fiji', 'C');
INSERT INTO `countries` VALUES ('75', 'Finland', 'C');
INSERT INTO `countries` VALUES ('76', 'France', 'C');
INSERT INTO `countries` VALUES ('77', 'French&nbsp;Guiana', 'C');
INSERT INTO `countries` VALUES ('78', 'French&nbsp;Polynesia', 'C');
INSERT INTO `countries` VALUES ('79', 'French&nbsp;Southern&nbsp;Territories', 'C');
INSERT INTO `countries` VALUES ('80', 'Gabon', 'C');
INSERT INTO `countries` VALUES ('81', 'Gambia', 'C');
INSERT INTO `countries` VALUES ('82', 'Georgia', 'C');
INSERT INTO `countries` VALUES ('83', 'Germany', 'C');
INSERT INTO `countries` VALUES ('84', 'Ghana', 'C');
INSERT INTO `countries` VALUES ('85', 'Gibraltar', 'C');
INSERT INTO `countries` VALUES ('86', 'Greece', 'C');
INSERT INTO `countries` VALUES ('87', 'Greenland', 'C');
INSERT INTO `countries` VALUES ('88', 'Grenada', 'C');
INSERT INTO `countries` VALUES ('89', 'Guadeloupe', 'C');
INSERT INTO `countries` VALUES ('90', 'Guam', 'C');
INSERT INTO `countries` VALUES ('91', 'Guatemala', 'C');
INSERT INTO `countries` VALUES ('92', 'Guinea', 'C');
INSERT INTO `countries` VALUES ('93', 'Guinea-Bissau', 'C');
INSERT INTO `countries` VALUES ('94', 'Guyana', 'C');
INSERT INTO `countries` VALUES ('95', 'Haiti', 'C');
INSERT INTO `countries` VALUES ('96', 'Heard&nbsp;and&nbsp;McDonald&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('97', 'Honduras', 'C');
INSERT INTO `countries` VALUES ('98', 'Hong&nbsp;Kong', 'C');
INSERT INTO `countries` VALUES ('99', 'Hungary', 'C');
INSERT INTO `countries` VALUES ('100', 'Iceland', 'C');
INSERT INTO `countries` VALUES ('101', 'India', 'C');
INSERT INTO `countries` VALUES ('102', 'Indonesia', 'C');
INSERT INTO `countries` VALUES ('103', 'Iran', 'C');
INSERT INTO `countries` VALUES ('104', 'Iraq', 'C');
INSERT INTO `countries` VALUES ('105', 'Ireland', 'C');
INSERT INTO `countries` VALUES ('106', 'Israel', 'C');
INSERT INTO `countries` VALUES ('107', 'Italy', 'C');
INSERT INTO `countries` VALUES ('108', 'Jamaica', 'C');
INSERT INTO `countries` VALUES ('109', 'Japan', 'C');
INSERT INTO `countries` VALUES ('110', 'Jordan', 'C');
INSERT INTO `countries` VALUES ('111', 'Kazakhstan', 'C');
INSERT INTO `countries` VALUES ('112', 'Kenya', 'C');
INSERT INTO `countries` VALUES ('113', 'Kiribati', 'C');
INSERT INTO `countries` VALUES ('114', 'Korea&nbsp;(north)', 'C');
INSERT INTO `countries` VALUES ('115', 'Korea&nbsp;(south)', 'C');
INSERT INTO `countries` VALUES ('116', 'Kuwait', 'C');
INSERT INTO `countries` VALUES ('117', 'Kyrgyzstan', 'C');
INSERT INTO `countries` VALUES ('118', 'Lao&nbsp;People&#39;s&nbsp;Democratic&nbsp;Republic', 'C');
INSERT INTO `countries` VALUES ('119', 'Latvia', 'C');
INSERT INTO `countries` VALUES ('120', 'Lebanon', 'C');
INSERT INTO `countries` VALUES ('121', 'Lesotho', 'C');
INSERT INTO `countries` VALUES ('122', 'Liberia', 'C');
INSERT INTO `countries` VALUES ('123', 'Libyan&nbsp;Arab&nbsp;Jamahiriya', 'C');
INSERT INTO `countries` VALUES ('124', 'Liechtenstein', 'C');
INSERT INTO `countries` VALUES ('125', 'Lithuania', 'C');
INSERT INTO `countries` VALUES ('126', 'Luxembourg', 'C');
INSERT INTO `countries` VALUES ('127', 'Macao', 'C');
INSERT INTO `countries` VALUES ('128', 'Macedonia', 'C');
INSERT INTO `countries` VALUES ('129', 'Madagascar', 'C');
INSERT INTO `countries` VALUES ('130', 'Malawi', 'C');
INSERT INTO `countries` VALUES ('131', 'Malaysia', 'C');
INSERT INTO `countries` VALUES ('132', 'Maldives', 'C');
INSERT INTO `countries` VALUES ('133', 'Mali', 'C');
INSERT INTO `countries` VALUES ('134', 'Malta', 'C');
INSERT INTO `countries` VALUES ('135', 'Marshall&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('136', 'Martinique', 'C');
INSERT INTO `countries` VALUES ('137', 'Mauritania', 'C');
INSERT INTO `countries` VALUES ('138', 'Mauritius', 'C');
INSERT INTO `countries` VALUES ('139', 'Mayotte', 'C');
INSERT INTO `countries` VALUES ('140', 'Mexico', 'C');
INSERT INTO `countries` VALUES ('141', 'Micronesia', 'C');
INSERT INTO `countries` VALUES ('142', 'Moldova', 'C');
INSERT INTO `countries` VALUES ('143', 'Monaco', 'C');
INSERT INTO `countries` VALUES ('144', 'Mongolia', 'C');
INSERT INTO `countries` VALUES ('145', 'Montserrat', 'C');
INSERT INTO `countries` VALUES ('146', 'Morocco', 'C');
INSERT INTO `countries` VALUES ('147', 'Mozambique', 'C');
INSERT INTO `countries` VALUES ('148', 'Myanmar', 'C');
INSERT INTO `countries` VALUES ('149', 'Namibia', 'C');
INSERT INTO `countries` VALUES ('150', 'Nauru', 'C');
INSERT INTO `countries` VALUES ('151', 'Nepal', 'C');
INSERT INTO `countries` VALUES ('152', 'Netherlands', 'C');
INSERT INTO `countries` VALUES ('153', 'Netherlands&nbsp;Antilles', 'C');
INSERT INTO `countries` VALUES ('154', 'New&nbsp;Caledonia', 'C');
INSERT INTO `countries` VALUES ('155', 'New&nbsp;Zealand', 'C');
INSERT INTO `countries` VALUES ('156', 'Nicaragua', 'C');
INSERT INTO `countries` VALUES ('157', 'Niger', 'C');
INSERT INTO `countries` VALUES ('158', 'Nigeria', 'C');
INSERT INTO `countries` VALUES ('159', 'Niue', 'C');
INSERT INTO `countries` VALUES ('160', 'Norfolk&nbsp;Island', 'C');
INSERT INTO `countries` VALUES ('161', 'Northern&nbsp;Mariana&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('162', 'Norway', 'C');
INSERT INTO `countries` VALUES ('163', 'Oman', 'C');
INSERT INTO `countries` VALUES ('164', 'Pakistan', 'C');
INSERT INTO `countries` VALUES ('165', 'Palau', 'C');
INSERT INTO `countries` VALUES ('166', 'Palestinian&nbsp;Territories', 'C');
INSERT INTO `countries` VALUES ('167', 'Panama', 'C');
INSERT INTO `countries` VALUES ('168', 'Papua&nbsp;New&nbsp;Guinea', 'C');
INSERT INTO `countries` VALUES ('169', 'Paraguay', 'C');
INSERT INTO `countries` VALUES ('170', 'Peru', 'C');
INSERT INTO `countries` VALUES ('171', 'Philippines', 'C');
INSERT INTO `countries` VALUES ('172', 'Pitcairn', 'C');
INSERT INTO `countries` VALUES ('173', 'Poland', 'C');
INSERT INTO `countries` VALUES ('174', 'Portugal', 'C');
INSERT INTO `countries` VALUES ('175', 'Puerto&nbsp;Rico', 'C');
INSERT INTO `countries` VALUES ('176', 'Qatar', 'C');
INSERT INTO `countries` VALUES ('177', 'R&eacute;union', 'C');
INSERT INTO `countries` VALUES ('178', 'Romania', 'C');
INSERT INTO `countries` VALUES ('179', 'Russian&nbsp;Federation', 'C');
INSERT INTO `countries` VALUES ('180', 'Rwanda', 'C');
INSERT INTO `countries` VALUES ('181', 'Saint&nbsp;Helena', 'C');
INSERT INTO `countries` VALUES ('182', 'Saint&nbsp;Kitts&nbsp;and&nbsp;Nevis', 'C');
INSERT INTO `countries` VALUES ('183', 'Saint&nbsp;Lucia', 'C');
INSERT INTO `countries` VALUES ('184', 'Saint&nbsp;Pierre&nbsp;and&nbsp;Miquelon', 'C');
INSERT INTO `countries` VALUES ('185', 'Saint&nbsp;Vincent', 'C');
INSERT INTO `countries` VALUES ('186', 'Samoa', 'C');
INSERT INTO `countries` VALUES ('187', 'San&nbsp;Marino', 'C');
INSERT INTO `countries` VALUES ('188', 'Sao&nbsp;Tome&nbsp;and&nbsp;Principe', 'C');
INSERT INTO `countries` VALUES ('189', 'Saudi&nbsp;Arabia', 'C');
INSERT INTO `countries` VALUES ('190', 'Senegal', 'C');
INSERT INTO `countries` VALUES ('191', 'Serbia&nbsp;and&nbsp;Montenegro', 'C');
INSERT INTO `countries` VALUES ('192', 'Seychelles', 'C');
INSERT INTO `countries` VALUES ('193', 'Sierra&nbsp;Leone', 'C');
INSERT INTO `countries` VALUES ('194', 'Singapore', 'C');
INSERT INTO `countries` VALUES ('195', 'Slovakia', 'C');
INSERT INTO `countries` VALUES ('196', 'Slovenia', 'C');
INSERT INTO `countries` VALUES ('197', 'Solomon&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('198', 'Somalia', 'C');
INSERT INTO `countries` VALUES ('199', 'South&nbsp;Africa', 'C');
INSERT INTO `countries` VALUES ('200', 'South&nbsp;Georgia&nbsp;and&nbsp;the&nbsp;South&nbsp;Sandwich&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('201', 'Spain', 'C');
INSERT INTO `countries` VALUES ('202', 'Sri&nbsp;Lanka', 'C');
INSERT INTO `countries` VALUES ('203', 'Sudan', 'C');
INSERT INTO `countries` VALUES ('204', 'Suriname', 'C');
INSERT INTO `countries` VALUES ('205', 'Svalbard&nbsp;and&nbsp;Jan&nbsp;Mayen&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('206', 'Swaziland', 'C');
INSERT INTO `countries` VALUES ('207', 'Sweden', 'C');
INSERT INTO `countries` VALUES ('208', 'Switzerland', 'C');
INSERT INTO `countries` VALUES ('209', 'Syria', 'C');
INSERT INTO `countries` VALUES ('210', 'Taiwan', 'C');
INSERT INTO `countries` VALUES ('211', 'Tajikistan', 'C');
INSERT INTO `countries` VALUES ('212', 'Tanzania', 'C');
INSERT INTO `countries` VALUES ('213', 'Thailand', 'C');
INSERT INTO `countries` VALUES ('214', 'Togo', 'C');
INSERT INTO `countries` VALUES ('215', 'Tokelau', 'C');
INSERT INTO `countries` VALUES ('216', 'Tonga', 'C');
INSERT INTO `countries` VALUES ('217', 'Trinidad&nbsp;and&nbsp;Tobago', 'C');
INSERT INTO `countries` VALUES ('218', 'Tunisia', 'C');
INSERT INTO `countries` VALUES ('219', 'Turkey', 'C');
INSERT INTO `countries` VALUES ('220', 'Turkmenistan', 'C');
INSERT INTO `countries` VALUES ('221', 'Turks&nbsp;and&nbsp;Caicos&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('222', 'Tuvalu', 'C');
INSERT INTO `countries` VALUES ('223', 'Uganda', 'C');
INSERT INTO `countries` VALUES ('224', 'Ukraine', 'C');
INSERT INTO `countries` VALUES ('225', 'United&nbsp;Arab&nbsp;Emirates', 'C');
INSERT INTO `countries` VALUES ('226', 'United&nbsp;Kingdom', 'C');
INSERT INTO `countries` VALUES ('227', 'United&nbsp;States&nbsp;of&nbsp;America', 'C');
INSERT INTO `countries` VALUES ('228', 'Uruguay', 'C');
INSERT INTO `countries` VALUES ('229', 'Uzbekistan', 'C');
INSERT INTO `countries` VALUES ('230', 'Vanuatu', 'C');
INSERT INTO `countries` VALUES ('231', 'Vatican&nbsp;City', 'C');
INSERT INTO `countries` VALUES ('232', 'Venezuela', 'C');
INSERT INTO `countries` VALUES ('233', 'Vietnam', 'C');
INSERT INTO `countries` VALUES ('234', 'Virgin&nbsp;Islands&nbsp;(British)', 'C');
INSERT INTO `countries` VALUES ('235', 'Virgin&nbsp;Islands&nbsp;(US)', 'C');
INSERT INTO `countries` VALUES ('236', 'Wallis&nbsp;and&nbsp;Futuna&nbsp;Islands', 'C');
INSERT INTO `countries` VALUES ('237', 'Western&nbsp;Sahara', 'C');
INSERT INTO `countries` VALUES ('238', 'Yemen', 'C');
INSERT INTO `countries` VALUES ('239', 'Zaire', 'C');
INSERT INTO `countries` VALUES ('240', 'Zambia', 'C');
INSERT INTO `countries` VALUES ('241', 'Zimbabwe', 'C');
INSERT INTO `countries` VALUES ('242', 'Alaska', 'S');
INSERT INTO `countries` VALUES ('243', 'Arizona', 'S');
INSERT INTO `countries` VALUES ('244', 'Arkansas', 'S');
INSERT INTO `countries` VALUES ('245', 'California', 'S');
INSERT INTO `countries` VALUES ('246', 'Colorado', 'S');
INSERT INTO `countries` VALUES ('247', 'Connecticut', 'S');
INSERT INTO `countries` VALUES ('248', 'Delaware', 'S');
INSERT INTO `countries` VALUES ('249', 'Florida', 'S');
INSERT INTO `countries` VALUES ('250', 'Georgia', 'S');
INSERT INTO `countries` VALUES ('251', 'Hawaii', 'S');
INSERT INTO `countries` VALUES ('252', 'Idaho', 'S');
INSERT INTO `countries` VALUES ('253', 'Illinois', 'S');
INSERT INTO `countries` VALUES ('254', 'Indiana', 'S');
INSERT INTO `countries` VALUES ('255', 'Iowa', 'S');
INSERT INTO `countries` VALUES ('256', 'Kansas', 'S');
INSERT INTO `countries` VALUES ('257', 'Kentucky', 'S');
INSERT INTO `countries` VALUES ('258', 'Louisiana', 'S');
INSERT INTO `countries` VALUES ('259', 'Maine', 'S');
INSERT INTO `countries` VALUES ('260', 'Maryland', 'S');
INSERT INTO `countries` VALUES ('261', 'Massachusetts', 'S');
INSERT INTO `countries` VALUES ('262', 'Michigan', 'S');
INSERT INTO `countries` VALUES ('263', 'Minnesota', 'S');
INSERT INTO `countries` VALUES ('264', 'Mississippi', 'S');
INSERT INTO `countries` VALUES ('265', 'Missouri', 'S');
INSERT INTO `countries` VALUES ('266', 'Montana', 'S');
INSERT INTO `countries` VALUES ('267', 'Nebraska', 'S');
INSERT INTO `countries` VALUES ('268', 'Nevada', 'S');
INSERT INTO `countries` VALUES ('269', 'New Hampshire', 'S');
INSERT INTO `countries` VALUES ('270', 'New Jersey', 'S');
INSERT INTO `countries` VALUES ('271', 'New Mexico', 'S');
INSERT INTO `countries` VALUES ('272', 'New York', 'S');
INSERT INTO `countries` VALUES ('273', 'North Carolina', 'S');
INSERT INTO `countries` VALUES ('274', 'North Dakota', 'S');
INSERT INTO `countries` VALUES ('275', 'Ohio', 'S');
INSERT INTO `countries` VALUES ('276', 'Oklahoma', 'S');
INSERT INTO `countries` VALUES ('277', 'Oregon', 'S');
INSERT INTO `countries` VALUES ('278', 'Pennsylvania', 'S');
INSERT INTO `countries` VALUES ('279', 'Rhode Island', 'S');
INSERT INTO `countries` VALUES ('280', 'South Carolina', 'S');
INSERT INTO `countries` VALUES ('281', 'South Dakota', 'S');
INSERT INTO `countries` VALUES ('282', 'Tennessee', 'S');
INSERT INTO `countries` VALUES ('283', 'Texas', 'S');
INSERT INTO `countries` VALUES ('284', 'Utah', 'S');
INSERT INTO `countries` VALUES ('285', 'Vermont', 'S');
INSERT INTO `countries` VALUES ('286', 'Virginia', 'S');
INSERT INTO `countries` VALUES ('287', 'Washington', 'S');
INSERT INTO `countries` VALUES ('288', 'West Virginia', 'S');
INSERT INTO `countries` VALUES ('289', 'Wisconsin', 'S');
INSERT INTO `countries` VALUES ('290', 'Wyoming', 'S');
INSERT INTO `countries` VALUES ('291', 'Alabama', 'S');

CREATE TABLE `course` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `slno` bigint(100) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `descr` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `fees` float NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `course` VALUES ('1', 'Berlitz English Level 1 - ?????? ?????????? ??????? 1', '1', 'BE1', '', '0', '2013-08-27 12:13:08', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `course` VALUES ('2', 'Berlitz English Level 2 - ?????? ?????????? ??????? 2', '2', 'BE2', '', '0', '2013-08-27 12:13:40', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `course` VALUES ('3', 'Berlitz English Level 3 - ?????? ?????????? ??????? 3', '3', 'BE3', '', '0', '2013-08-27 12:14:02', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `course` VALUES ('4', 'Berlitz English Level 4 - ?????? ?????????? ??????? 4', '4', 'BE4', '', '0', '2013-08-27 12:14:20', '1', '0000-00-00 00:00:00', '0');

CREATE TABLE `course_fee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(100) NOT NULL,
  `fees` decimal(10,0) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `course_fee` VALUES ('1', '1', '3300', '1');
INSERT INTO `course_fee` VALUES ('2', '2', '3300', '1');
INSERT INTO `course_fee` VALUES ('3', '3', '3300', '1');
INSERT INTO `course_fee` VALUES ('4', '4', '3300', '1');

CREATE TABLE `currency_setup` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `currency` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `symbol` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `use_currency` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

INSERT INTO `currency_setup` VALUES ('1', 'KSA', 'SR - &#65020;', '1');
INSERT INTO `currency_setup` VALUES ('2', 'USD', '$', '0');
INSERT INTO `currency_setup` VALUES ('3', 'AFN', '?', '0');
INSERT INTO `currency_setup` VALUES ('4', 'ARS', '$', '0');
INSERT INTO `currency_setup` VALUES ('5', 'AWG', '', '0');
INSERT INTO `currency_setup` VALUES ('6', 'AUD', '$', '0');
INSERT INTO `currency_setup` VALUES ('7', 'AZN', '???', '0');
INSERT INTO `currency_setup` VALUES ('8', 'BSD', '$', '0');
INSERT INTO `currency_setup` VALUES ('9', 'BBD', '$', '0');
INSERT INTO `currency_setup` VALUES ('10', 'BYR', 'p.', '0');
INSERT INTO `currency_setup` VALUES ('11', 'EUR', '', '0');
INSERT INTO `currency_setup` VALUES ('12', 'BZD', 'BZ$', '0');
INSERT INTO `currency_setup` VALUES ('13', 'BMD', '$', '0');
INSERT INTO `currency_setup` VALUES ('14', 'BOB', '$b', '0');
INSERT INTO `currency_setup` VALUES ('15', 'BAM', 'KM', '0');
INSERT INTO `currency_setup` VALUES ('16', 'BWP', 'P', '0');
INSERT INTO `currency_setup` VALUES ('17', 'BGN', '??', '0');
INSERT INTO `currency_setup` VALUES ('18', 'BRL', 'R$', '0');
INSERT INTO `currency_setup` VALUES ('19', 'GBP', '', '0');
INSERT INTO `currency_setup` VALUES ('20', 'BND', '$', '0');
INSERT INTO `currency_setup` VALUES ('21', 'KHR', '?', '0');
INSERT INTO `currency_setup` VALUES ('22', 'CAD', '$', '0');
INSERT INTO `currency_setup` VALUES ('25', 'CNY', '', '0');
INSERT INTO `currency_setup` VALUES ('27', 'CRC', '?', '0');
INSERT INTO `currency_setup` VALUES ('28', 'HRK', 'kn', '0');
INSERT INTO `currency_setup` VALUES ('29', 'CUP', '?', '0');
INSERT INTO `currency_setup` VALUES ('30', 'EUR', '', '0');
INSERT INTO `currency_setup` VALUES ('31', 'CZK', 'K?', '0');
INSERT INTO `currency_setup` VALUES ('32', 'DKK', 'kr', '0');
INSERT INTO `currency_setup` VALUES ('33', 'DOP', 'RD$', '0');
INSERT INTO `currency_setup` VALUES ('35', 'EGP', '', '0');
INSERT INTO `currency_setup` VALUES ('41', 'GHC', '', '0');
INSERT INTO `currency_setup` VALUES ('43', 'GTQ', 'Q', '0');
INSERT INTO `currency_setup` VALUES ('46', 'HNL', 'L', '0');
INSERT INTO `currency_setup` VALUES ('48', 'HUF', 'Ft', '0');
INSERT INTO `currency_setup` VALUES ('49', 'ISK', 'kr', '0');
INSERT INTO `currency_setup` VALUES ('50', 'INR', 'Rs', '0');
INSERT INTO `currency_setup` VALUES ('51', 'IDR', 'Rp', '0');
INSERT INTO `currency_setup` VALUES ('52', 'IRR', '?', '0');
INSERT INTO `currency_setup` VALUES ('54', 'ILS', '?', '0');
INSERT INTO `currency_setup` VALUES ('55', 'JMD', 'J$', '0');
INSERT INTO `currency_setup` VALUES ('58', 'KZT', '??', '0');
INSERT INTO `currency_setup` VALUES ('59', 'KPW', '?', '0');
INSERT INTO `currency_setup` VALUES ('61', 'KGS', '??', '0');
INSERT INTO `currency_setup` VALUES ('62', 'LAK', '?', '0');
INSERT INTO `currency_setup` VALUES ('63', 'LVL', 'Ls', '0');
INSERT INTO `currency_setup` VALUES ('66', 'CHF', 'CHF', '0');
INSERT INTO `currency_setup` VALUES ('67', 'LTL', 'Lt', '0');
INSERT INTO `currency_setup` VALUES ('68', 'MKD', '???', '0');
INSERT INTO `currency_setup` VALUES ('69', 'MYR', 'RM', '0');
INSERT INTO `currency_setup` VALUES ('70', 'MUR', '?', '0');
INSERT INTO `currency_setup` VALUES ('72', 'MNT', '?', '0');
INSERT INTO `currency_setup` VALUES ('73', 'MZN', 'MT', '0');
INSERT INTO `currency_setup` VALUES ('75', 'NPR', '?', '0');
INSERT INTO `currency_setup` VALUES ('76', 'ANG', '', '0');
INSERT INTO `currency_setup` VALUES ('78', 'NIO', 'C$', '0');
INSERT INTO `currency_setup` VALUES ('79', 'NGN', '?', '0');
INSERT INTO `currency_setup` VALUES ('80', 'KPW', '?', '0');
INSERT INTO `currency_setup` VALUES ('81', 'NOK', 'kr', '0');
INSERT INTO `currency_setup` VALUES ('82', 'OMR', '?', '0');
INSERT INTO `currency_setup` VALUES ('83', 'PKR', '?', '0');
INSERT INTO `currency_setup` VALUES ('84', 'PAB', 'B/.', '0');
INSERT INTO `currency_setup` VALUES ('85', 'PYG', 'Gs', '0');
INSERT INTO `currency_setup` VALUES ('86', 'PEN', 'S/.', '0');
INSERT INTO `currency_setup` VALUES ('87', 'PHP', 'Php', '0');
INSERT INTO `currency_setup` VALUES ('88', 'PLN', 'z?', '0');
INSERT INTO `currency_setup` VALUES ('89', 'QAR', '?', '0');
INSERT INTO `currency_setup` VALUES ('90', 'RON', 'lei', '0');
INSERT INTO `currency_setup` VALUES ('91', 'RUB', '???', '0');
INSERT INTO `currency_setup` VALUES ('94', 'RSD', '???.', '0');
INSERT INTO `currency_setup` VALUES ('95', 'SCR', '?', '0');
INSERT INTO `currency_setup` VALUES ('98', 'SOS', 'S', '0');
INSERT INTO `currency_setup` VALUES ('99', 'ZAR', 'R', '0');
INSERT INTO `currency_setup` VALUES ('100', 'KRW', '?', '0');
INSERT INTO `currency_setup` VALUES ('101', 'TWD', 'NT$', '0');
INSERT INTO `currency_setup` VALUES ('102', 'THB', '?', '0');
INSERT INTO `currency_setup` VALUES ('103', 'TTD', 'TT$', '0');
INSERT INTO `currency_setup` VALUES ('104', 'TRY', 'TL', '0');
INSERT INTO `currency_setup` VALUES ('107', 'UAH', '?', '0');
INSERT INTO `currency_setup` VALUES ('109', 'UYU', '$U', '0');
INSERT INTO `currency_setup` VALUES ('110', 'UZS', '??', '0');
INSERT INTO `currency_setup` VALUES ('111', 'VEF', 'Bs', '0');
INSERT INTO `currency_setup` VALUES ('112', 'VND', '?', '0');
INSERT INTO `currency_setup` VALUES ('113', 'YER', '?', '0');
INSERT INTO `currency_setup` VALUES ('114', 'ZWD', 'Z$', '0');

CREATE TABLE `email_history` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` datetime NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `msg` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `send_to` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `type` int(10) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `send_date` date NOT NULL,
  `msg_from` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `automatic` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `page_full_path` longtext CHARACTER SET ucs2 COLLATE ucs2_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `email_history` VALUES ('1', '2013-08-26 01:17:32', '1', 'Your login details', 'Teacher', '', '0', '0', '2013-08-26', 'Your login details', 'Yes', '/mySMS/admin/user_process.php?action=insert');
INSERT INTO `email_history` VALUES ('2', '2013-08-27 11:14:55', '1', 'Your login details', 'Teacher', '', '0', '0', '2013-08-27', 'Your login details', 'Yes', '/mySMS/admin/user_process.php?action=insert');
INSERT INTO `email_history` VALUES ('3', '2013-08-27 12:16:55', '126', 'Your login details', 'Student Advisor and Center Director', 'ahmedv@gmail.com', '0', '1', '2013-08-27', 'Admin for Approved or Rejected of the Cancellation', 'Yes', '/mySMS/sa/user_process.php?action=insert');
INSERT INTO `email_history` VALUES ('4', '2013-08-27 12:22:53', '1', 'Your login details', 'Teacher', '', '0', '0', '2013-08-27', 'Your login details', 'Yes', '/mySMS/admin/teacher1_process.php?action=insert');
INSERT INTO `email_history` VALUES ('5', '2013-08-27 04:45:31', '1', 'Your login details', 'Teacher', '', '0', '0', '2013-08-27', 'Your login details', 'Yes', '/mySMS/admin/user_process.php?action=insert');
INSERT INTO `email_history` VALUES ('6', '2013-08-28 11:30:20', '125', 'Sick leave has been Approved', 'Student Advisor and Center Director', 'ahmedv@gmail.com', '0', '1', '2013-08-28', 'Admin for Approved or Rejected of the Cancellation', 'Yes', '/mySMS/cd/sick_leave_process.php');
INSERT INTO `email_history` VALUES ('7', '2013-08-28 12:49:27', '1', 'Your login details', 'Teacher', '', '0', '0', '2013-08-28', 'Your login details', 'Yes', '/mySMS/admin/teacher1_process.php?action=insert');

CREATE TABLE `email_templete` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `email_templete` VALUES ('2', 'Email Templete', '<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" style=\"border: 1px solid rgb(109, 146, 201);\" width=\"662\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td bgcolor=\"#FF9900\" colspan=\"2\" height=\"80\">\r\n\t\t\t\t<img alt=\"\" src=\"http://www.bletprojects.com/schedule/images/logo.png\" style=\"width: 105px; height: 30px;\" /></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t&nbsp;</td>\r\n\t\t\t<td>\r\n\t\t\t\t<span style=\"font-family: comic sans ms,cursive;\">Demo Announcement</span></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t&nbsp;</td>\r\n\t\t\t<td>\r\n\t\t\t\t&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t&nbsp;</td>\r\n\t\t\t<td>\r\n\t\t\t\t<p>\r\n\t\t\t\t\t<span style=\"font-family: comic sans ms,cursive;\"><span style=\"font-size: 12px;\">Thank you,<br />\r\n\t\t\t\t\tB</span></span><span style=\"font-family: comic sans ms,cursive;\"><span style=\"font-size: 12px;\">erliz AlAhsa, a Dar Al-Khibra Human Resourses Development Company</span></span><br />\r\n\t\t\t\t\t<span style=\"font-family: comic sans ms,cursive;\"><span style=\"font-size: 12px;\"> email : info@berlitz-ksa.com<br />\r\n\t\t\t\t\twww.facebok.com/berlitzalahsa</span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t\t&nbsp;</td>\r\n\t\t\t<td>\r\n\t\t\t\t&nbsp;</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<p>\r\n\t&nbsp;</p>\r\n');

CREATE TABLE `email_templetes` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO `email_templetes` VALUES ('1', 'Alerts for Certificate printing !!!', 'Dear %cd%,\r\n\r\n%teacher% ??? ?? ???????? ????? ??? 3 ????. ????? ???? ?? ???? ??????? ??????.\r\n\r\nThanks1\r\nAdministrator');
INSERT INTO `email_templetes` VALUES ('2', 'Alerts for Filled up the Certificate grade !!!', 'Dear %cd%,\r\n\r\n%teacher% has been completed his course before 3 days. So you have to printing the certificate for the students.');
INSERT INTO `email_templetes` VALUES ('3', 'e-PEDCARD Alert Message !!!', 'Dear Mr/Ms, %teacher%\r\n\r\nYou have not Filled up your Attendance on %att_dt% for the Group %groupname%.\r\nPlease fill the Attendance As soon As Possible.\r\n\r\nThanks');
INSERT INTO `email_templetes` VALUES ('4', 'Alerts for complete the Progress reports', 'Dear %teacher%,\r\n\r\nYour course has been 50% completed and Progress report fields are not completed. Please complete your Progress reports as soon as possible.\r\n\r\nThanks');
INSERT INTO `email_templetes` VALUES ('5', 'Cancellation request from %username%', 'Dear %cd%,\r\n\r\nThis student is requesting to me for \"CANCELLATION\". See the details below.');
INSERT INTO `email_templetes` VALUES ('6', 'Group size has been changed Notification !!!', 'Dear %teacher%,\r\n\r\nNow, the ePed card needs to adjust the total remaining units for this course from a remaining of %pending_units% units for the previously %groupname% group to a remaining of %dec_right_value_is% units for the newly formed %g3_name% group.\r\n\r\nAdd %unit% units to this group due to adding %no_student_remove% students to a %student% %groupname% group that has completed %no_unit_finined% units at the time of adding these %no_student_remove% students.');
INSERT INTO `email_templetes` VALUES ('7', 'Payment has been changed by Accountant', 'Dear Center Director And Student Advisor,\r\n\r\nPayment has been changed by the Accountant of the below student.');
INSERT INTO `email_templetes` VALUES ('8', 'Sick leave has been %status%', 'Dear %teacher%,\r\n\r\nYour sick leave has %status% from dated %leavefrom% to %leaveto%.\r\n\r\nThanks\r\n%cd_name%');
INSERT INTO `email_templetes` VALUES ('9', 'Request for transfer from %username%', 'Dear %cd%,\r\n\r\nSome students want to transfer from my centre to another. Please see the Transfer Menu on your profile in the Application.\r\n\r\nThanks\r\n%teacher%');
INSERT INTO `email_templetes` VALUES ('10', 'Student on-hold request from %username%', 'The following student would like to hold their courses. ????? ?????? ??????? ???? ?? ??? ???????.');
INSERT INTO `email_templetes` VALUES ('11', 'Alerts for number students in All centre !!!', 'Alerts for creating a group has been scheduled within a school/university date\r\n\r\n\r\nDear All Students,\r\n         Are you aware that there is a school or university exam during this course.\r\n\r\n\r\nThanks\r\nBerlitz');
INSERT INTO `email_templetes` VALUES ('12', 'On Hold request has been %status% By %from_name%', 'Dear %cd%\r\n\r\nThis student is requesting to me for \"CANCALLATION\". See the details below.');
INSERT INTO `email_templetes` VALUES ('13', 'On Hold request has been %status% By %from_name%', 'Dear %cd%,\r\n\r\nI have filled the ARF form of the %studentname%. Please capture the Information.\r\n\r\nThanks');
INSERT INTO `email_templetes` VALUES ('14', 'Your course has finished. Please filled up the Progress Reports', 'Dear %teachername%,\r\n\r\nYour course has been completed. Please Complete your certificate grade.\r\n\r\n\r\nThanks\r\nBerlitz');
INSERT INTO `email_templetes` VALUES ('15', '%studentname% absent for %noof_days% days', 'Dear %cd%,\r\n\r\n%studentname% has been absent in his class since last %noof_days% days with any information. You are requested to kindly take appropriate action for the same.\r\n\r\n\r\nThanks\r\nBerlitz');
INSERT INTO `email_templetes` VALUES ('16', 'Sick leave from %teacher%', 'Dear %cd%,\r\n\r\nI have some problem. I have to Leave from dated %from_date% to %to_date%. So I will be absent for above days.\r\n\r\n\r\nThanks\r\nTeacher');

CREATE TABLE `exam_vacation` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `frm` date NOT NULL,
  `tto` date NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `status` bigint(10) NOT NULL,
  `no_days` bigint(10) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `grade` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `frm` bigint(100) NOT NULL,
  `tto` bigint(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `grade` VALUES ('6', '90', '95', 'Excellent', '2013-07-31 14:14:32', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `grade` VALUES ('2', '80', '89', 'Very Good', '2012-09-03 02:14:11', '5', '0000-00-00 00:00:00', '0');
INSERT INTO `grade` VALUES ('3', '70', '79', 'Good', '2012-09-03 02:14:25', '5', '0000-00-00 00:00:00', '0');
INSERT INTO `grade` VALUES ('4', '51', '69', 'Satisfactory', '2012-09-03 02:14:41', '5', '0000-00-00 00:00:00', '0');
INSERT INTO `grade` VALUES ('5', '0', '50', 'Fair', '2012-09-03 02:14:56', '5', '0000-00-00 00:00:00', '0');
INSERT INTO `grade` VALUES ('7', '96', '100', 'Brilliant', '2013-07-31 14:14:58', '1', '0000-00-00 00:00:00', '0');

CREATE TABLE `grade_sheet` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `frm` bigint(100) NOT NULL,
  `tto` bigint(100) NOT NULL,
  `nos` bigint(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `grade_sheet` VALUES ('1', '1', '4', '5', 'Insufficent', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `grade_sheet` VALUES ('2', '5', '12', '4', 'Fair', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `grade_sheet` VALUES ('3', '13', '24', '3', 'Satisfactory', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `grade_sheet` VALUES ('4', '25', '36', '2', 'Good', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `grade_sheet` VALUES ('5', '37', '40', '1', 'Very Good', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');

CREATE TABLE `group_list` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `commonid` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `group_size` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(100) NOT NULL,
  `size_from` bigint(100) NOT NULL,
  `size_to` bigint(100) NOT NULL,
  `total_size` bigint(100) NOT NULL,
  `week_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `week_id1` bigint(100) NOT NULL,
  `units` bigint(100) NOT NULL,
  `effect_units` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `group_size` VALUES ('1', '51', '1', '1', '0', '4 weeks', '1', '40', '0');
INSERT INTO `group_size` VALUES ('2', '52', '2', '3', '1', '4 weeks', '1', '40', '0');
INSERT INTO `group_size` VALUES ('3', '53', '4', '6', '2', '6 weeks', '2', '60', '0');
INSERT INTO `group_size` VALUES ('4', '54', '7', '9', '2', '7 weeks', '3', '70', '4');
INSERT INTO `group_size` VALUES ('5', '55', '10', '12', '2', '8 weeks', '4', '80', '4');
INSERT INTO `group_size` VALUES ('6', '56', '13', '150', '137', '8 weeks', '4', '90', '4');

CREATE TABLE `help` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `descr` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cen_dr` int(11) NOT NULL,
  `stu_ad` int(11) NOT NULL,
  `rep` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `teacher` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `lis` int(11) NOT NULL,
  `lism` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `links` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cen_dr` bigint(100) NOT NULL,
  `stu_ad` bigint(100) NOT NULL,
  `rep` int(100) NOT NULL,
  `student` int(100) NOT NULL,
  `teacher` int(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alert_id` bigint(100) NOT NULL,
  `imp` bigint(10) NOT NULL,
  `imp_info` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `infor` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `dt` date NOT NULL,
  `audience` bigint(10) NOT NULL,
  `cen_dr` bigint(10) NOT NULL,
  `stu_ad` bigint(100) NOT NULL,
  `rep` int(100) NOT NULL,
  `student` int(100) NOT NULL,
  `teacher` int(100) NOT NULL,
  `tm` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `status` bigint(50) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ped` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `estart_date` date NOT NULL,
  `material` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `bl` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `arf_submit` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `level` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `comments` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `checklist` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `point_cover1` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `point_date1` date NOT NULL,
  `point_cover2` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `point_date2` date NOT NULL,
  `ini_feedback` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `inst1` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `date1` date NOT NULL,
  `arf1` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `dby1` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `dby1_date1` date NOT NULL,
  `cby1` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cby1_date1` date NOT NULL,
  `inst2` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `inst2_date2` date NOT NULL,
  `counselling` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `inst3` varchar(100) NOT NULL,
  `inst3_date3` date NOT NULL,
  `inst4` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `inst4_date4` date NOT NULL,
  `not_apply` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `distrbute_by` varchar(110) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `distrbute_date` date NOT NULL,
  `collect_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `collect_date` date NOT NULL,
  `pro_report` varchar(5) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `ped` VALUES ('1', '1', '1', '1', '0000-00-00', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', '');

CREATE TABLE `ped_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ped_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `shift1` char(1) NOT NULL,
  `shift2` char(1) NOT NULL,
  `shift3` char(2) NOT NULL,
  `shift4` char(2) NOT NULL,
  `shift5` char(2) NOT NULL,
  `shift6` char(2) NOT NULL,
  `shift7` char(2) NOT NULL,
  `shift8` char(2) NOT NULL,
  `shift9` char(2) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `dated` date NOT NULL,
  `attend_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `ped_attendance` VALUES ('1', '1', '1', '1', '1', '2', '1', 'X', 'X', '', '', '', '', '', '', '', '', '2013-08-27', '2013-08-27');
INSERT INTO `ped_attendance` VALUES ('2', '1', '1', '1', '1', '2', '2', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('3', '1', '1', '1', '1', '2', '3', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('4', '1', '1', '1', '1', '2', '4', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('5', '1', '1', '1', '1', '2', '5', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('6', '1', '1', '1', '1', '2', '6', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('7', '1', '1', '1', '1', '2', '7', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('8', '1', '1', '1', '1', '2', '8', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('9', '1', '1', '1', '1', '2', '9', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('10', '1', '1', '1', '1', '2', '10', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('11', '1', '1', '1', '1', '2', '11', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('12', '1', '1', '1', '1', '2', '12', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('13', '1', '1', '1', '1', '2', '13', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('14', '1', '1', '1', '1', '2', '14', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('15', '1', '1', '1', '1', '2', '15', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('16', '1', '1', '1', '1', '2', '16', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('17', '1', '1', '1', '1', '2', '17', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('18', '1', '1', '1', '1', '2', '18', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('19', '1', '1', '1', '1', '2', '19', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');
INSERT INTO `ped_attendance` VALUES ('20', '1', '1', '1', '1', '2', '20', '', '', '', '', '', '', '', '', '', '', '2013-08-27', '0000-00-00');

CREATE TABLE `ped_comment` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(100) NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `dated` datetime NOT NULL,
  `comments` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ped_daily_status` (
  `dated` date NOT NULL,
  `teacher_id` bigint(100) NOT NULL,
  `ped_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `ped_daily_status` VALUES ('2013-08-27', '1', '1', '1', '1');

CREATE TABLE `ped_daily_status_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `teacher_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `ped_daily_status_dtls` VALUES ('1', '2013-08-27', '1', '0', '0');
INSERT INTO `ped_daily_status_dtls` VALUES ('2', '2013-08-28', '1', '1', '0');

CREATE TABLE `ped_units` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `ped_id` bigint(100) NOT NULL,
  `teacher_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `units` bigint(100) NOT NULL,
  `dated` date NOT NULL,
  `attd` bigint(100) NOT NULL,
  `instructor` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `material_overed` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `homework` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `ped_units` VALUES ('1', '1', '1', '1', '1', '1', '2013-08-27', '0', '', 'L1 Chapter 5654', 'P72');
INSERT INTO `ped_units` VALUES ('2', '1', '1', '1', '1', '2', '2013-08-27', '0', '', '', '');

CREATE TABLE `quick_links` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `link_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `prec` bigint(100) NOT NULL,
  `links` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `module_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `quick_links` VALUES ('1', '', 'ADMIN_MENU_RULE_SMS', '12', 'sms_gateway_manage.php', 'Administrator', '0', '0');
INSERT INTO `quick_links` VALUES ('2', '', 'ADMIN_MENU_USERS', '34', 'user_manage.php', 'Administrator', '0', '0');

CREATE TABLE `quick_menu` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `link_constant` varchar(100) NOT NULL,
  `arabic_menu` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `links` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `module_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=latin1;

INSERT INTO `quick_menu` VALUES ('1', 'Manage Week', 'ADMIN_MENU_RULE_WEEK', '', 'week_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('2', 'Manage Group Type', 'ADMIN_MENU_RULE_TYPE', '', 'group_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('3', 'Manage Group Size', 'ADMIN_MENU_RULE_GROUP', '', 'group_size_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('4', 'Manage User Status', 'ADMIN_MENU_RULE_USER_STATUS', '', 'user_status_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('5', 'Manage Teacher Preference', 'ADMIN_MENU_RULE_PREFER', '', 'teacher_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('6', 'Manage Student Status', '', '', 'student_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('7', 'New Alerts Type', 'ADMIN_MENU_RULE_ALERTS', '', 'alert_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('8', 'Manage Teacher', 'ADMIN_MENU_RULE_TEACHER', '', 'teacher1_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('9', 'Manage Material', 'ADMIN_MENU_RULE_MATERIAL', '', 'material_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('10', 'Manage Unit', 'ADMIN_MENU_RULE_UNI', '', 'unit_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('11', 'Manage Comments', 'ADMIN_MENU_RULE_COMMENTS', '', 'comments_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('12', 'Set Logout Time', 'ADMIN_MENU_RULE_LOGOUT_TIME', '', 'timeout_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('13', 'SMS Gateway Configuration', 'ADMIN_MENU_RULE_SMS', '', 'sms_gateway_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('14', 'Group Sizes', 'ADMIN_MENU_RULE_VIEW_GROUP_SIZE', '', 'view_group_size.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('15', 'View Group History', 'ADMIN_MENU_RULE_VIEW_GROUP_HISTORY', '', 'view_group_history.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('16', 'Student Comments History', 'ADMIN_MENU_RULE_VIEW_COMMENT_HISTORY', '', 'view_student_comments_history.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('17', 'Currency Setup', 'ADMIN_MENU_RULE_CURRENCY', '', 'currency_setup.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('18', 'Manage help Document', 'ADMIN_MENU_RULE_HELP', '', 'help_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('19', 'Type of Students', 'TYPE_OF_STUDENTS', '', 'type_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('20', 'Leads', 'ADMIN_MENU_LEADS', '', 'lead_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('21', 'Grades', 'ADMIN_MENU_GRADES', '', 'grade_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('22', 'Type of Payment', 'ADMIN_MENU_TYPEOFPAYMENT', '', 'payment_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('23', 'Recepts Terms And Condition', 'ADMIN_MENU_RECEIPT', '', 'challan_cond.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('24', 'Invoice Terms And Condition', 'ADMIN_MENU_INVOICE', '', 'invoice_cond.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('25', 'Bed Debt Configure', 'ADMIN_BED_DEBT_CONFIRE', '', 'bed_debt_config.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('26', 'Centre', 'ADMIN_MENU_CENTRE', '', 'center_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('27', 'Student To Student Transfer', 'SA_STUDENT_TO_STUDENT', '', 'student_to_student_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('28', 'Center to Center Transfer', 'SA_CENTER_CENTER', '', 'center_to_center_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('29', 'Centre Vacation', 'ADMIN_MENU_VAC_CENTRE', '', 'vacation_center_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('30', 'Teacher Vacation', 'ADMIN_MENU_VAC_TEACHER', '', 'vacation_teacher_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('31', 'Exam Vacation', 'ADMIN_MENU_VAC_EXAM', '', 'vacation_exam_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('32', 'Student Request Vacation', 'ADMIN_MENU_VAC_STUDENT', '', 'vacation_student_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('33', 'Manage Sick Leave', 'CD_MENU_MANAGE_SICK_LEAVE', '', 'sick_leave_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('34', 'Course', 'ADMIN_MENU_COURSE', '', 'course_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('35', 'Users', 'ADMIN_MENU_USERS', '', 'user_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('36', 'News', 'ADMIN_MENU_NEWS', '', 'news_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('37', 'Links', 'ADMIN_MENU_LINKS', '', 'link_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('38', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert1_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('39', 'Manage SMS Template', 'ADMIN_MENU_SMS_TEMP', '', 'sms_template_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('40', 'SMS Parameter Template', 'ADMIN_SMS_PARAMETER_TEMPLETE_SMS_PARA_TEMP', '', 'sms_parameter_templete.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('41', 'Manage SMS History', 'ADMIN_MENU_SMS_HISTORY', '', 'sms_history.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('42', 'Manage Email Template', 'ADMIN_EMAIL_MANAGE_EMAIL_TEMPLETE', '', 'email_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('43', 'manage Email Parameter', 'ADMIN_MENU_EMAIL_TEMP', '', 'email_parameter_templete.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('44', 'Student Details', 'ADMIN_REPORT_STUDENT_GROUP_GRADE_STUDENTDETAILS', '', 's_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('45', 'Cancellation Request', 'CANCELLATION_REQUEST', '', 'cancel_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('46', 'By-Teacher Groups', 'ADMIN_MENU_REPORTS_BOARD', '', 'report_teacher_board.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('47', 'Teacher(s) Schedule', 'ADMIN_MENU_REPORTS_SCHEDULE', '', 'report_teacher_schedule.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('48', 'Students awaiting a course', 'ADMIN_MENU_REPORTS_AWAIT', '', 'report_student_awaiting.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('49', 'Groups to Finish', 'ADMIN_MENU_REPORTS_FINISH', '', 'report_group_to_finish.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('50', 'Certificates not collected', 'ADMIN_MENU_REPORTS_COLLECT', '', 'report_certificate_not_collect.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('51', 'Student Absence Report', 'ADMIN_MENU_REPORTS_ABSENT', '', 'report_absent_report.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('52', 'Teacher Leave Report', 'ADMIN_MENU_REPORTS_TEACHER_LEAVE', '', 'report_teacher_leave_report.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('53', 'Teacher Overtime Report', 'ADMIN_MENU_REPORTS_TEACHER_OVER', '', 'report_teacher_overtime_report.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('54', 'Teacher Capacity', 'ADMIN_MENU_REPORTS_TEACHER_CAPACITY', '', 'report_teacher_capacity.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('55', 'Students Results', 'ADMIN_MENU_REPORTS_SUMMARY', '', 'report_certificate_report.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('56', 'VIP Students', 'ADMIN_MENU_REPORTS_CUSTOMER', '', 'report_freq_customer_report.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('57', 'Detailed Students Results', 'ADMIN_MENU_REPORTS_GROUP_GRADE', '', 'report_student_group_grade.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('58', 'Students Statuses', 'ADMIN_MENU_REPORTS_NOT_ENROLLED', '', 'report_student_not_enrolled.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('59', 'Student on Hold', 'ADMIN_MENU_REPORTS_ON_HOLD', '', 'report_student_on_hold.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('60', 'Statistic Report', 'ADMIN_MENU_REPORTS_STATISTIC', '', 'report_statistic.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('61', 'Student Life Cycle', 'REPORT_STUDENT_LIFE_CYCLE', '', 'report_student_cycle.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('62', 'Management Report', 'MANAGEMENT_REPORT', '', 'report_management.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('63', 'Single certificate', 'SINGLE_CERTIFICATE', '', 'certificate.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('64', 'Multiple certificate', 'MULTIPLE_CERTIFICATE', '', 'certificate_multi.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('65', 'My Account', 'ADMIN_MENU_MY_ACCOUNT', '', 'my_account.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('66', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('67', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'Administrator');
INSERT INTO `quick_menu` VALUES ('68', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('69', 'Enquiry', 'SA_MENU_QUICKADD', '', 'student_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('70', 'Step-By-Step New Student', 'CD_MENU_WIZBASESTD', '', 's_age.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('71', 'Quick Enrollment', 'SA_MENU_CLASSIC', '', 's_classic.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('72', 'Action ARF Reports', 'ACTION_ARF_REPORT', '', 'arf_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('73', 'Cancellation Request', 'CANCELLATION_REQUEST', '', 'cancel_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('74', 'Manage On-Hold Request', 'MANAGE_ONHOLD', '', 'hold_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('75', 'Student Information', 'STUDENT_INFORMATON', '', 'single-student.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('76', 'Student Services', 'MENU_STUDENT_SERVICES', '', 'search.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('77', 'Step-By-Step New Group', 'SA_MENU_WIZARD_BASED', '', 'group_course.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('78', 'Quick Add new Group', 'QUICK_ADD_GROUP', '', 'group_quick.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('79', 'Manage Grouping', 'SA_MENU_GROUP', '', 'group_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('80', 'Group Sizes', 'SA_MENU_GROUP_SIZE', '', 'view_group_size.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('81', 'View Group History', 'ADMIN_MENU_RULE_VIEW_GROUP_HISTORY', '', 'view_group_history.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('82', 'Student To Student Transfer', 'SA_STUDENT_TO_STUDENT', '', 'student_to_student_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('83', 'Student To Center Transer', 'SA_STUDENT_TO_CENTER', '', 'student_to_different_center_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('84', 'Student from Another Center', 'DIFFERENT_CENTER', '', 'student_from_another_center_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('85', 'Center to Center Transfer', 'SA_CENTER_CENTER', '', 'center_to_center_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('86', 'Date Converter', 'RE_MENU_CONVERTER', '', 'calc_converter.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('87', 'Language Converter', '', '', 'translate.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('88', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('89', 'SMS', 'ADMIN_MENU_SMS', '', 'sms.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('90', 'E-Mail', 'ADMIN_MENU_EMAIL', '', 'email.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('91', 'View in Gantt Chart', 'CD_MENU_V_GANTT', '', 'centre_schedule.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('92', 'View Table by Teacher', 'CD_MENU_V_TABLE_TEACHER', '', 'centre_schedule_teacher.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('93', 'View Table by Level', 'CD_MENU_V_TABLE_LEVEL', '', 'centre_schedule_table.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('94', 'View By Start Date', 'CD_MENU_V_START', '', 'centre_schedule_startdate.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('95', 'View By End Date', 'CD_MENU_V_END', '', 'centre_schedule_enddate.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('96', 'View By Date Range', 'CD_MENU_V_RANGE', '', 'centre_schedule_rangedate.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('97', 'Certificate Report', 'CD_MENU_CENTRE_REPORT', '', 'report_centre_director_main.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('98', 'Group Progress Report', 'CD_MENU_GROUP_PROGRESS_REPORT', '', 'report_group_progress.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('99', 'Personal Progress Report', 'CD_MENU_PERSONAL_PROGRESS_REPORT', '', 'report_teacher_progress.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('100', 'Epedcard', 'TE_MENU_EPEDCARD', '', 'ped.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('101', 'By-Teacher Groups', 'ADMIN_MENU_REPORTS_BOARD', '', 'report_teacher_board.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('102', 'Teacher(s) Schedule', 'ADMIN_MENU_REPORTS_SCHEDULE', '', 'report_teacher_schedule.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('103', 'Students awaiting a Course', 'ADMIN_MENU_REPORTS_AWAIT', '', 'report_student_awaiting.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('104', 'Group to finish', 'ADMIN_MENU_REPORTS_FINISH', '', 'report_group_to_finish.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('105', 'Certificates not Collected', 'ADMIN_MENU_REPORTS_COLLECT', '', 'report_certificate_not_collect.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('106', 'Student Absense Report', 'ADMIN_MENU_REPORTS_ABSENT', '', 'report_absent_report.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('107', 'Teacher Leave Report', 'ADMIN_MENU_REPORTS_TEACHER_LEAVE', '', 'report_teacher_leave_report.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('108', 'Teacher overtime Report', 'ADMIN_MENU_REPORTS_TEACHER_OVER', '', 'report_teacher_overtime_report.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('109', 'Teacher Capacity', 'ADMIN_MENU_REPORTS_TEACHER_CAPACITY', '', 'report_teacher_capacity.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('110', 'Students Results', 'ADMIN_MENU_REPORTS_SUMMARY', '', 'report_certificate_report.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('111', 'VIP Students', 'ADMIN_MENU_REPORTS_CUSTOMER', '', 'report_freq_customer_report.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('112', 'Detailed Students Results', 'ADMIN_MENU_REPORTS_GROUP_GRADE', '', 'report_student_group_grade.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('113', 'Students Statuses', 'ADMIN_MENU_REPORTS_NOT_ENROLLED', '', 'report_student_not_enrolled.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('114', 'Student on Hold', 'ADMIN_MENU_REPORTS_ON_HOLD', '', 'report_student_on_hold.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('115', 'Statistic Report', 'CD_MENU_STATISTIC_REPORT', '', 'report_statistic.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('116', 'Students Comments History', 'ADMIN_MENU_RULE_VIEW_COMMENT_HISTORY', '', 'view_student_comments_history.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('117', 'Manage SMS History', 'ADMIN_MENU_SMS_HISTORY', '', 'manage_sms_history.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('118', 'Managegement Report', 'MANAGEMENT_REPORT', '', 'report_management.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('119', 'Student Lie Cycle', 'REPORT_STUDENT_LIFE_CYCLE', '', 'report_student_cycle.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('120', 'Removing student from group', 'CD_MENU_REMOVE', '', 'ep_removing_student.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('121', 'Scheduling of a make up class', 'CD_MENU_SCHEDULING', '', 'ep_scheduling_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('122', 'Change a classroom', 'CD_MENU_CHANGE', '', 'ep_change_classroom.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('123', 'Addition of student to a group', 'CD_MENU_ADDITION', '', 'ep_adding_student.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('124', 'Cancellation of Class', 'CD_MENU_CANCEL', '', 'ep_class_cancel_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('125', 'Centre Vacation', 'ADMIN_MENU_VAC_CENTRE', '', 'vacation_center_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('126', 'Exam Vacation', 'ADMIN_MENU_VAC_EXAM', '', 'vacation_exam_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('127', 'Teacher Vacation', 'ADMIN_MENU_VAC_TEACHER', '', 'vacation_teacher_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('128', 'Manage Sick Leave', 'CD_MENU_MANAGE_SICK_LEAVE', '', 'sick_leave_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('129', 'Single Certificate', 'SINGLE_CERTIFICATE', '', 'certificate.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('130', 'Multiple Certificate', 'MULTIPLE_CERTIFICATE', '', 'certificate_multi.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('131', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('132', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('133', 'Students Credentials', 'STUDENT_CREDENT', '', 'user_manage.php', 'Center Director');
INSERT INTO `quick_menu` VALUES ('134', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('135', 'Enquiry', 'SA_MENU_QUICKADD', '', 'student_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('136', 'Step-By-Step New Student', 'CD_MENU_WIZBASESTD', '', 's_age.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('137', 'Quick Enrollment', 'SA_MENU_CLASSIC', '', 's_classic.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('138', 'Edit Student Appointment', 'SA_MENU_APPOINT', '', 'student_appoint_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('139', 'Action ARF Reports', 'ACTION_ARF_REPORT', '', 'arf_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('140', 'Cancellation Request', 'CANCELLATION_REQUEST', '', 'cancel_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('141', 'Manage On-Hold Request', 'MANAGE_ONHOLD', '', 'hold_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('142', 'Student Information', 'STUDENT_INFORMATON', '', 'single-student.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('143', 'Student Services', 'MENU_STUDENT_SERVICES', '', 'search.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('144', 'Step-By-Step New Group', 'SA_MENU_WIZARD_BASED', '', 'group_course.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('145', 'Quick Add New Group', 'QUICK_ADD_GROUP', '', 'group_quick.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('146', 'Manage Grouping', 'SA_MENU_GROUP', '', 'group_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('147', 'Group Sizes', 'SA_MENU_GROUP_SIZE', '', 'view_group_size.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('148', 'Student To Student Transfer', 'SA_STUDENT_TO_STUDENT', '', 'student_to_student_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('149', 'Student To Center Transfer', 'SA_STUDENT_TO_CENTER', '', 's-to-s-different-center-manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('150', 'Center To Center Transfer', 'SA_CENTER_CENTER', '', 'center_to_center_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('151', 'By-Teacher Groups', 'ADMIN_MENU_REPORTS_BOARD', '', 'report_teacher_board.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('152', 'Teacher(s) Schedule', 'ADMIN_MENU_REPORTS_SCHEDULE', '', 'report_teacher_schedule.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('153', 'Students awaiting a course', 'ADMIN_MENU_REPORTS_AWAIT', '', 'report_student_awaiting.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('154', 'Groups to Finish', 'ADMIN_MENU_REPORTS_FINISH', '', 'report_group_to_finish.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('155', 'Certficates not collected', 'ADMIN_MENU_REPORTS_COLLECT', '', 'report_certificate_not_collect.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('156', 'Student Absense Report', 'ADMIN_MENU_REPORTS_ABSENT', '', 'report_absent_report.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('157', 'Teacher Leave Report', 'ADMIN_MENU_REPORTS_TEACHER_LEAVE', '', 'report_teacher_leave_report.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('158', 'Teacher Capacity', 'ADMIN_MENU_REPORTS_TEACHER_CAPACITY', '', 'report_teacher_capacity.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('159', 'Students Results', 'ADMIN_MENU_REPORTS_SUMMARY', '', 'report_certificate_report.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('160', 'VIP Students', 'ADMIN_MENU_REPORTS_CUSTOMER', '', 'report_freq_customer_report.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('161', 'Detailed Students Results', 'ADMIN_MENU_REPORTS_GROUP_GRADE', '', 'report_student_group_grade.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('162', 'Students Statuses', 'ADMIN_MENU_REPORTS_NOT_ENROLLED', '', 'report_student_not_enrolled.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('163', 'Students on Hold', 'ADMIN_MENU_REPORTS_ON_HOLD', '', 'report_student_on_hold.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('164', 'Students Comments History', 'ADMIN_MENU_RULE_VIEW_COMMENT_HISTORY', '', 'view_student_comments_history.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('165', 'Student Life Cycle', 'REPORT_STUDENT_LIFE_CYCLE', '', 'report_student_cycle.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('166', 'Date Converter', 'STUDENT_CALC_CONVERTER_DATA_CONVERTER', '', 'calc_converter.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('167', 'Language Converter', 'ADMIN_MENU_LANGUAGE_CONVERTER', '', 'translate.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('168', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('169', 'SMS', 'ADMIN_MENU_SMS', '', 'sms.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('170', 'E-Mail', 'ADMIN_MENU_EMAIL', '', 'email.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('171', 'Centre Schedule', 'RE_MENU_CS', '', 'centre_schedule.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('172', 'Epedcard', 'TE_MENU_EPEDCARD', '', 'ped.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('173', 'Progress Reports [Multi]', 'SINGLE_GROUP', '', 'report_group_progress.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('174', 'Progress Reports [Student]', 'STUDENT_WISE', '', 'report_teacher_progress.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('175', 'Single Certificate', 'SINGLE_CERTIFICATE', '', 'certificate.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('176', 'Multiple Certificate', 'MULTIPLE_CERTIFICATE', '', 'certificate_multi.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('177', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('178', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('179', 'Students Credentials', 'STUDENT_CREDENT', '', 'user_manage.php', 'Student Advisor');
INSERT INTO `quick_menu` VALUES ('180', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('181', 'My Groups', 'TE_MENU_MY_GROUP', '', 'my_groups.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('182', 'My Schedules', 'TE_MENU_MY_SCHEDULE', '', 'my_schedules.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('183', 'ePEDCARD', 'TE_MENU_EPEDCARD', '', 'ped.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('184', 'Progress Reports', 'TE_MENU_PR', '', 'report_teacher_progress.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('185', 'Certificate Reports', 'TE_MENU_CR', '', 'report_center_director.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('186', 'ARF', 'RE_MENU_ARF', '', 'arf_manage.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('187', 'Sick Leave', 'TE_MENU_SL', '', 'manage_sick_leave.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('188', 'Date Converter', 'STUDENT_CALC_CONVERTER_DATA_CONVERTER', '', 'calc_converter.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('189', 'Language Converter', 'ADMIN_MENU_LANGUAGE_CONVERTER', '', 'translate.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('190', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('191', 'Student Absence Report', 'ADMIN_MENU_REPORTS_ABSENT', '', 'report_absent_report.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('192', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('193', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'Teacher');
INSERT INTO `quick_menu` VALUES ('194', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('195', 'Students Appointment', 'RE_MENU_APP', '', 'student_appoint_manage.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('196', 'Student Services', 'MENU_STUDENT_SERVICES', '', 'search.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('197', 'Groups', 'RE_MENU_GROUPS', '', 'group_manage.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('198', 'By-Teacher Groups', 'ADMIN_MENU_REPORTS_BOARD', '', 'report_teacher_board.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('199', 'Teacher(s) Schedule', 'ADMIN_MENU_REPORTS_SCHEDULE', '', 'report_teacher_schedule.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('200', 'Students awaiting a course', 'ADMIN_MENU_REPORTS_AWAIT', '', 'report_student_awaiting.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('201', 'Groups to finish', 'ADMIN_MENU_REPORTS_FINISH', '', 'report_group_to_finish.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('202', 'Certificate not collected', 'ADMIN_MENU_REPORTS_COLLECT', '', 'report_certificate_not_collect.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('203', 'Student Absence Report', 'ADMIN_MENU_REPORTS_ABSENT', '', 'report_absent_report.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('204', 'Date Converter', 'STUDENT_CALC_CONVERTER_DATA_CONVERTER', '', 'calc_converter.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('205', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('206', 'SMS', 'ADMIN_MENU_SMS', '', 'sms.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('207', 'E-Mail', 'ADMIN_MENU_EMAIL', '', 'email.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('208', 'Centre Schedule', 'RE_MENU_CS', '', 'centre_schedule.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('209', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('210', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'Receptionist');
INSERT INTO `quick_menu` VALUES ('211', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('212', 'Type of Payment', 'ADMIN_MENU_TYPEOFPAYMENT', '', 'payment_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('213', 'Receipts Terms And Condition', 'ADMIN_MENU_RECEIPT', '', 'challan_cond.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('214', 'Invoice Terms And Condition', 'ADMIN_MENU_INVOICE', '', 'invoice_cond.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('215', 'Move to Bed Debt', 'AC_MOVETO_BED_DEBT', '', 'move_to_beddebt.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('216', 'Audit Data', 'STUDENT_AUDITDATA', '', 'audit_history.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('217', 'Payment History', 'STUDENT_MYACCOUNT_PAYMENTHISTORY', '', 'payment_history.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('218', 'Teacher Vacation', 'ADMIN_MENU_VAC_TEACHER', '', 'vacation_teacher_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('219', 'Manage Sick Leave', 'CD_MENU_MANAGE_SICK_LEAVE', '', 'sick_leave_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('220', 'Student Details', 'ADMIN_REPORT_STUDENT_GROUP_GRADE_STUDENTDETAILS', '', 'search.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('221', 'Cancellation Request', 'CANCELLATION_REQUEST', '', 'cancel_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('222', 'Course', 'ADMIN_MENU_COURSE', '', 'course_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('223', 'Student To Student Transfer', 'SA_STUDENT_TO_STUDENT', '', 'student_to_student_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('224', 'Center To Center Transfer', 'SA_CENTER_CENTER', '', 'center_to_center_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('225', 'Single Certificate', 'SINGLE_CERTIFICATE', '', 'certificate.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('226', 'Multiple Certificate', 'MULTIPLE_CERTIFICATE', '', 'certificate_multi.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('227', 'Date Converter', 'RE_MENU_CONVERTER', '', 'calc_converter.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('228', 'Alerts', '', '', 'alert.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('229', 'News', '', '', 'news_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('230', 'SMS', 'ADMIN_MENU_SMS', '', 'sms.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('231', 'E-Mail', 'ADMIN_MENU_EMAIL', '', 'email.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('232', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('233', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('234', 'Students Transactions', 'ACCOUNTANT_TRANS', '', 'report_transaction.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('235', 'Students Ledger', 'ACCOUNTANT_STUDENT_LEDGER', '', 'report_student_ledger_search.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('236', 'Group Ledger', 'ACCOUNTANT_GROUP_LEDGER', '', 'report_group_ledger.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('237', 'Discounts Reports', 'ACCOUNTANT_DISCOUNTS', '', 'report_discount.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('238', 'Transfer (Center To Center)', 'ACCOUNTANT_CE_CE', '', 'report_center_to_center.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('239', 'Transfer (Student To Student)', 'SA_STUDENT_TO_CENTER', '', 'student_to_different_center_manage.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('240', 'Transfer (Same Center)', 'ACCOUNTANT_ST_CE', '', 'report_student_to_center.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('241', 'Enrollment and Re-enrollment', 'ACCOUNTANT_EN_RE', '', 'report_enrolled.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('242', 'Sales Summary', 'ACCOUNTANT_SUMMERY', '', 'report_sales_summary.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('243', 'Student Overdue', 'ACCOUNTANT_OVERDUE', '', 'report_overdue.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('244', 'Bad Debt Report', 'ACCOUNTANT_BADDEBT', '', 'report_baddebt.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('245', 'Students on credit balance', 'ACCOUNTANT_CREDIT', '', 'report_credit_balance.php', 'Accountant');
INSERT INTO `quick_menu` VALUES ('246', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('247', 'Student Services', 'MENU_STUDENT_SERVICES', '', 'search.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('248', 'Single Certificate', 'SINGLE_CERTIFICATE', '', 'certificate.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('249', 'Multiple Certificate', 'MULTIPLE_CERTIFICATE', '', 'certificate_multi.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('250', 'ePEDCARD', 'TE_MENU_EPEDCARD', '', 'ped.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('251', 'Progress Reports', 'TE_MENU_PR', '', 'report_teacher_progress.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('252', 'Teacher Vacation', 'ADMIN_MENU_VAC_TEACHER', '', 'vacation_teacher_manage.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('253', 'Manage Sick Leave', 'CD_MENU_MANAGE_SICK_LEAVE', '', 'sick_leave_manage.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('254', 'Date Converter', 'STUDENT_CALC_CONVERTER_DATA_CONVERTER', '', 'calc_converter.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('255', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert1_manage.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('256', 'News', 'ADMIN_MENU_NEWS', '', 'news_manage.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('257', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('258', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('259', 'Units taught', 'LIS_UNITS_TAUGHT', '', 'report_unit_taught.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('260', 'ePedCard Student Statuses', 'LIS_EPED_STATUS', '', 'report_eped_status.php', 'LIS');
INSERT INTO `quick_menu` VALUES ('261', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('262', 'Student Services', 'MENU_STUDENT_SERVICES', '', 'search.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('263', 'Single Certificate', 'SINGLE_CERTIFICATE', '', 'certificate.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('264', 'Multiple Certificate', 'MULTIPLE_CERTIFICATE', '', 'certificate_multi.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('265', 'ePEDCARD', 'TE_MENU_EPEDCARD', '', 'ped.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('266', 'Progress Reports', 'TE_MENU_PR', '', 'report_teacher_progress.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('267', 'Teacher Vacation', 'ADMIN_MENU_VAC_TEACHER', '', 'vacation_teacher_manage.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('268', 'Users', 'ADMIN_MENU_USERS', '', 'user_manage.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('269', 'Date Converter', 'STUDENT_CALC_CONVERTER_DATA_CONVERTER', '', 'calc_converter.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('270', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert1_manage.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('271', 'News', 'ADMIN_MENU_NEWS', '', 'news_manage.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('272', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('273', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('274', 'Sick/Leave Days', 'LIS_SICK_LEAVE', '', 'report_sick_leave.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('275', 'Outstanding Approval', 'LIS_OUT_APP', '', 'report_outstanding.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('276', 'Missed ePedcard Alert', 'LISM_MISSED_EPED', '', 'report_missed_eped.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('277', 'Missed Progress Report', 'LISM_MISSED_PROGRESS', '', 'report_missed_progress.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('278', 'Missed Certificate Alert', 'LISM_MISSED_CERTIFICATE', '', 'report_missed_certificate.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('279', 'Management Report', 'MANAGEMENT_REPORT', '', 'report_management.php', 'LIS Manager');
INSERT INTO `quick_menu` VALUES ('280', 'Home', 'ADMIN_MENU_HOME', '', 'home.php', 'Student');
INSERT INTO `quick_menu` VALUES ('281', 'My Schedules', 'STUDENT_MENU_MY_SCHEDULE', '', 'myschedule.php', 'Student');
INSERT INTO `quick_menu` VALUES ('282', 'My Account', 'ADMIN_MENU_MY_ACCOUNT', '', 'myaccount.php', 'Student');
INSERT INTO `quick_menu` VALUES ('283', 'Audit Data', 'STUDENT_AUDITDATA', '', 'audit.php', 'Student');
INSERT INTO `quick_menu` VALUES ('284', 'My Progress Report', 'STUDENT_MENU_MY_PROGRESS', '', 'progress_report.php', 'Student');
INSERT INTO `quick_menu` VALUES ('285', 'Certificate Grade', 'STUDENT_MENU_CERTIFICATE_GRADES', '', 'certificate_report.php', 'Student');
INSERT INTO `quick_menu` VALUES ('286', 'Date Converter', 'STUDENT_MENU_DATE_CONVERTER', '', 'calc_converter.php', 'Student');
INSERT INTO `quick_menu` VALUES ('287', 'Alerts', 'ADMIN_MENU_ALERTS', '', 'alert.php', 'Student');
INSERT INTO `quick_menu` VALUES ('288', 'Leave', 'STUDENT_MENU_LEAVE', '', 'leave_manage.php', 'Student');
INSERT INTO `quick_menu` VALUES ('289', 'Change Password', 'ADMIN_MENU_CHANGE_PASSWORD', '', 'password.php', 'Student');
INSERT INTO `quick_menu` VALUES ('290', 'Quick Links', 'ADMIN_MENU_QUICK_LINKS', '', 'quicklink_manage.php', 'Student');
INSERT INTO `quick_menu` VALUES ('291', 'SMS Gateway Configuration', 'ADMIN_SMS_GATEWAY_MANAGE_SMSGATEWAYCONFIGURATION', '', 'sms_allowed.php', 'Student');

CREATE TABLE `sick_leave` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `sick_reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `sick_attachment` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `sick_notes` text CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `sick_status` tinyint(4) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `sick_leave` VALUES ('1', '1', '2013-09-01', '2013-09-02', 'Medical report', '', '', '1', '0');

CREATE TABLE `sick_leave_centre` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `sick_leave_centre` VALUES ('1', '1', '1');

CREATE TABLE `sms_gateway` (
  `user` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `your_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `sms_gateway` VALUES ('berlitz', 'faisal13', '966547378399', 'Berlitz', 'Enable');

CREATE TABLE `sms_history` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` datetime NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `msg` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `send_to` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `type` int(10) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `send_date` date NOT NULL,
  `msg_from` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `automatic` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `page_full_path` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `sms_history` VALUES ('1', '2013-08-27 12:29:43', '0', 'Tarik Nebi has not been updated the e-PEDcard last 2 days.', 'Teacher', 'CRON - SMS', '0', '0', '0000-00-00', 'CRON', 'Yes', '/mySMS/login_process.php');
INSERT INTO `sms_history` VALUES ('2', '2013-08-28 11:26:53', '0', 'Tarik Nebi has not been updated the e-PEDcard last 2 days.', 'Teacher', 'CRON - SMS', '0', '0', '0000-00-00', 'CRON', 'Yes', '/mySMS/login_process.php');
INSERT INTO `sms_history` VALUES ('3', '2013-08-28 11:27:54', '0', 'Dear cd,\r\n\r\nI have some problem. I have to Leave from dated 2013-09-01 to 2013-09-02. So I will be absent for above days.\r\n\r\n\r\nThanks\r\nTeacher', 'Teacher', 'CRON - SMS', '0', '0', '0000-00-00', 'Sick Leave', 'Yes', '/mySMS/teacher/sick_process.php?action=save');

CREATE TABLE `sms_history_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `sms_templete` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `contents` varchar(160) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `sms_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

INSERT INTO `sms_templete` VALUES ('1', 'Templete 1', 'Call me now.', '2012-02-06 18:43:06', '');
INSERT INTO `sms_templete` VALUES ('2', 'Templete 2', 'How about lunch ?', '2012-02-06 18:43:29', '');
INSERT INTO `sms_templete` VALUES ('3', 'Templete 3', 'Be right back', '2012-02-06 18:43:58', '');
INSERT INTO `sms_templete` VALUES ('4', 'Templete 4', 'I am busy now.', '2012-02-06 18:44:17', '');
INSERT INTO `sms_templete` VALUES ('5', 'Templete 5', 'Sorry !', '2012-02-06 18:44:31', '');
INSERT INTO `sms_templete` VALUES ('6', 'Templete 6', 'Thank you !', '2012-02-06 18:44:47', '');
INSERT INTO `sms_templete` VALUES ('7', 'Templete 7', 'How was the days ?', '2012-02-06 18:45:03', '');
INSERT INTO `sms_templete` VALUES ('8', 'Templete 8', 'Long time no see.', '2012-02-06 18:45:31', '');
INSERT INTO `sms_templete` VALUES ('9', 'Templete 9', 'Lots of luv !', '2012-02-06 18:45:49', '');
INSERT INTO `sms_templete` VALUES ('10', 'Templete 10', 'How are you ?', '2012-02-06 18:46:01', '');
INSERT INTO `sms_templete` VALUES ('11', 'Templete 11', 'You Exam is held on 03-02-2012.', '2012-02-06 18:47:10', '');
INSERT INTO `sms_templete` VALUES ('13', ' ', '%teacher% has been completed his course before 3 days. So you have to printing the certificate for the students', '2012-07-30 14:26:23', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('14', '', 'The Course %course_name% is 50% Completed. Please filled up the Progress Report', '2012-07-30 14:37:30', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('15', '', '%teacher% will be available on tommorrow', '2012-07-30 14:37:28', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('16', '', 'Your course will be starting from %date%', '2012-07-30 14:42:10', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('17', '', 'Best of luck for your exam.', '2012-07-30 14:45:44', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('18', '', 'Dear %first_name%, your payment of %fee_amt% for Berlitz %course_name% is due today. Please expedite payment.', '2012-07-30 14:48:48', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('19', '', 'Dear %first_name%, your payment of %fee_amt% for Berlitz %course_name% is past due. Please expedite payment or risk of further penalties.', '2012-07-30 14:59:53', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('20', '', 'Dear %first_name%, your payment of %fee_amt% for Berlitz %course_name% is 5 days past due. Please expedite payment.', '2012-07-30 15:03:32', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('21', '', 'Dear %first_name%, your payment of %fee_amt% for Berlitz %course_name% is due today. Please expedite payment.', '2012-07-30 15:04:36', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('22', '', '%teacher% has been completed the course so have to printing the certificate for the students', '2012-07-30 15:13:37', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('23', '', '%teacher% has not been updated the e-PEDcard last 2 days.', '2012-07-30 15:15:57', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('24', '', '%teacher% will be vacation from %startdate% to %enddate%', '2012-07-30 15:19:02', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('25', '', 'Thanks for Re-enrollment.', '2012-07-30 15:21:19', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('26', '', 'Add %unit% units to this group due to adding a student to a %std% %grp% group that has completed %unt_fnd% units at the time of adding this student.', '2012-07-30 15:40:42', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('27', '', 'Add %unit% units to this group due to adding %nos% student to a %std% %grp% group that has completed %ufin% units at the time of adding these %nos% students.', '2012-07-30 15:52:40', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('28', '', 'Dear student, Your class will be start on %date%', '2012-07-30 15:56:05', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('29', '', 'Reduce %u% units from group due to remove %nos% students from a %std% %grp% group that has completed %uf% units at the time of withdraw of these %nos% students.', '2012-07-30 16:00:36', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('30', '', '%no_of_students% No of students waiting for this group.', '2012-07-30 16:05:12', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('31', '', 'Dear %first_name%, your initial payment of %ad_amt% has been received by Berlitz.', '2012-07-30 16:15:52', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('32', '', '%first_name% have a Appointment on %date%', '2012-07-30 16:20:48', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('33', '', '%first_name% is applying for cancellaion of class', '2012-07-30 16:47:27', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('34', '', 'You have paid %amount% for initial payment', '2012-07-30 16:55:39', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('35', '', 'You are absent from last %at_count% days. Please get back to us with appropriate reasons.', '2012-07-30 16:57:07', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('36', '', 'Congratulation !!! Your result is %grade_name% And you have %final_grade% percent out of 100', '2012-07-30 16:59:30', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('37', '', 'Request for transfer from (SA) %teacher%', '2012-08-02 11:39:40', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('39', 'Congratulations - ?????', '?????', '2012-10-30 06:50:59', '');
INSERT INTO `sms_templete` VALUES ('40', '', 'Classes on hold due to %teacher% vacation', '2012-10-31 00:00:00', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('41', '', 'Classes on hold due to students request / exams etc.', '2012-10-31 00:00:00', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('42', '', 'Classes on hold resuming ', '2012-10-31 11:25:38', 'Dynamic');
INSERT INTO `sms_templete` VALUES ('43', '', 'Centre Director has been %status% your request for transfer', '2012-11-14 10:37:37', 'Dynamic');

CREATE TABLE `student` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `age` bigint(100) NOT NULL,
  `guardian_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `guardian_contact` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `guardian_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `first_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `first_name1` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `student_first_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `middle_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `last_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `arabic_name` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `father_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `grandfather_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `family_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `father_name1` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `grandfather_name1` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `family_name1` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `country_id` bigint(100) NOT NULL,
  `id_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `student_id` bigint(10) NOT NULL,
  `student_mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `alt_contact` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `studentstatus_id` bigint(100) NOT NULL,
  `student_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `certificate_collect` bigint(10) NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `level_complete` bigint(10) NOT NULL,
  `ob_amt` float NOT NULL,
  `discount` float NOT NULL,
  `payment_type` bigint(10) NOT NULL,
  `payment_date` date NOT NULL,
  `web` bigint(10) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  `register_date` date NOT NULL,
  `app_date` date NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `invoice_sl` bigint(100) NOT NULL,
  `invoice_no` varchar(500) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `sms_status` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `student` VALUES ('1', '0', '', '', '', 'Don Rivera', 'Don', 'Don', '', '', '', 'Exequiel', 'Victorino', 'Rivera', '', '', ' ?????', '', '0', '', '0', '00966547378399', '', '', '0', 'Student called to ask about level 1\r\n', '0', '', '0', '0', '0', '0', '0000-00-00', '0', '2013-08-27 11:56:42', '0', '0000-00-00 00:00:00', '0', '2013-08-27', '2013-08-27', '1', '0', '', '0', '0', '1');
INSERT INTO `student` VALUES ('2', '17', '', '', '', 'Ahmed Varachia', 'Ahmed', '????????', '', '', '', 'Ayoub', 'AbdulHaq', 'Varachia', '', '', ' ????????', 'male', '189', 'Passport', '5466454', '00966547378398', '009665', 'ahmedv@gmail.com', '0', '', '0', '', '0', '0', '0', '0', '0000-00-00', '0', '2013-08-27 12:08:19', '126', '0000-00-00 00:00:00', '0', '0000-00-00', '0000-00-00', '1', '0', '', '0', '0', '1');
INSERT INTO `student` VALUES ('3', '0', '', '', '', 'Abdullah  Al-Moula', 'Abdullah ', '??????? ', '', '', '', 'Fouad', 'Abdullah ', 'Al-Moula', '', '', ' ??-????', '', '0', '', '0', '966548650001', '', '', '0', '????? ????? ????????? \r\n????????? ?? ????? ??????? ', '0', '', '0', '0', '0', '0', '0000-00-00', '0', '2013-08-27 04:52:23', '0', '0000-00-00 00:00:00', '0', '2013-08-27', '2013-08-27', '1', '0', '', '0', '0', '1');
INSERT INTO `student` VALUES ('4', '19', '', '', '', 'Ahmed Abu Anqah', 'Ahmed', '????', '', '', '', 'Khalefa', 'Ibrahim', 'Abu Anqah', '', '', ' ??? ?????', 'male', '189', 'National ID', '1085070876', '00966553883171', '00966553663974', '10ahmeda@gmail.com', '0', '', '0', '', '0', '0', '0', '0', '0000-00-00', '0', '2013-08-27 17:40:04', '126', '0000-00-00 00:00:00', '0', '0000-00-00', '0000-00-00', '1', '0', '', '0', '0', '1');

CREATE TABLE `student_appointment` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `comments` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `entry_date` datetime NOT NULL,
  `status` bigint(10) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `action_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `student_appointment` VALUES ('1', '2013-08-30', '1', 'Student called to ask about level 1\r\n', '126', '2013-08-27 11:59:21', '0', '1', '1');
INSERT INTO `student_appointment` VALUES ('2', '2013-08-27', '3', '????? ????? ????????? \r\n????????? ?? ????? ??????? ', '126', '0000-00-00 00:00:00', '1', '1', '0');

CREATE TABLE `student_cancel` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(50) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_dated` date NOT NULL,
  `admin_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `admin_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `admin_dated` date NOT NULL,
  `created_date` date NOT NULL,
  `created_by` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `student_certificate` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `print_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `student_comment` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `comments` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `student_comment` VALUES ('1', '1', '126', 'Student called to ask about level 1\r\n', '2013-08-27 11:56:42', '1');
INSERT INTO `student_comment` VALUES ('2', '2', '126', 'Student wants to sign up ASAP', '2013-08-27 12:08:19', '0');
INSERT INTO `student_comment` VALUES ('3', '2', '126', 'kdfjkldfjg', '2013-08-27 12:15:59', '0');
INSERT INTO `student_comment` VALUES ('4', '3', '126', '????? ????? ????????? \r\n????????? ?? ????? ??????? ', '2013-08-27 04:52:23', '1');
INSERT INTO `student_comment` VALUES ('5', '4', '126', '??? ????????? ?????? ??????? ???? ?????? ????? ????? ??????? ????', '2013-08-27 17:40:04', '0');

CREATE TABLE `student_course` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO `student_course` VALUES ('1', '2', '1');
INSERT INTO `student_course` VALUES ('2', '2', '2');
INSERT INTO `student_course` VALUES ('3', '2', '3');
INSERT INTO `student_course` VALUES ('8', '4', '1');

CREATE TABLE `student_enroll` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `certificate_collect` bigint(10) NOT NULL,
  `level_complete` bigint(10) NOT NULL,
  `ob_amt` float NOT NULL,
  `discount` float NOT NULL,
  `other_amt` float NOT NULL,
  `payment_type` bigint(10) NOT NULL,
  `payment_date` date NOT NULL,
  `beddebt_amt` decimal(10,0) NOT NULL,
  `beddebt_date` date NOT NULL,
  `web` bigint(10) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `invoice_sl` bigint(100) NOT NULL,
  `invoice_no` varchar(500) NOT NULL,
  `prev_invoice_no` varchar(100) NOT NULL,
  `status_id` int(11) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `fee_id` bigint(100) NOT NULL,
  `course_fee` float NOT NULL,
  `created_by` bigint(100) NOT NULL,
  `enroll_date` date NOT NULL,
  `othertext` varchar(250) NOT NULL,
  `invoice_note` longtext NOT NULL,
  `balance_status_for_sms` bigint(10) NOT NULL,
  `page_full_path` longtext NOT NULL,
  `tr_ob_amt` float NOT NULL,
  `tr_discount` float NOT NULL,
  `tr_other_amt` float NOT NULL,
  `enrolled_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `student_enroll` VALUES ('1', '2', '0', '0', '0', '100', '0', '60', '0000-00-00', '0', '0000-00-00', '0', '1', '0', '', '', '4', '1', '1', '1', '0', '126', '2013-08-27', '', 'kljkljk', '0', '/mySMS/sa/search_adding_group_process.php', '0', '0', '0', 'New Enrollment');

CREATE TABLE `student_fee_edit_history` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `fld_name` varchar(250) NOT NULL,
  `chg_from` varchar(250) NOT NULL,
  `chg_to` varchar(250) NOT NULL,
  `by_user` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `student_fee_edit_history` VALUES ('1', 'Payment Type', '', '', '126', '2013-08-27 12:08:23', '2', '1', '0000-00-00');
INSERT INTO `student_fee_edit_history` VALUES ('2', 'Discount  Amount', '0', '100', '126', '2013-08-27 12:08:23', '2', '1', '0000-00-00');

CREATE TABLE `student_fees` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `fee_date` date NOT NULL,
  `fee_amt` float NOT NULL,
  `paid_date` date NOT NULL,
  `payment_type` bigint(100) NOT NULL,
  `paid_amt` float NOT NULL,
  `status` bigint(10) NOT NULL,
  `comments` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `invoice_sl` bigint(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `student_fees` VALUES ('1', '2', '2013-08-27', '3200', '2013-08-27', '60', '3200', '1', 'kljkljk', '1', '1', '100001', '13080100001', 'opening', '2013-08-27 03:27:36', '126');

CREATE TABLE `student_group` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(100) NOT NULL,
  `group_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `teacher_id` bigint(100) NOT NULL,
  `units` bigint(100) NOT NULL,
  `week_no` bigint(100) NOT NULL,
  `dated` date NOT NULL,
  `teacher_date` date NOT NULL,
  `teacher_time` time NOT NULL,
  `teacher_endtime` time NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` enum('Not Started','Continue','Completed') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `group_time` varchar(100) NOT NULL,
  `group_time_end` varchar(100) NOT NULL,
  `group_start_time` time NOT NULL,
  `group_end_time` time NOT NULL,
  `completed_date` date NOT NULL,
  `sa_id` bigint(100) NOT NULL,
  `preport_update_date` datetime NOT NULL,
  `preport_filled` varchar(50) NOT NULL,
  `certificate_update_date` datetime NOT NULL,
  `certificate_filled` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  `is_sms_cron` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `student_group` VALUES ('1', '51', 'Arkansas', '1', '1', '1', '76', '0', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '1', 'Continue', '2013-08-27', '2013-10-08', '03:00 PM', '04:30 PM', '00:00:00', '00:00:00', '0000-00-00', '126', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0');

CREATE TABLE `student_group_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `room_id` bigint(100) NOT NULL,
  `book_received` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `student_group_dtls` VALUES ('1', '1', '2', '51', '1', '1', '1', '0');

CREATE TABLE `student_group_history` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` datetime NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `type` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `student_group_history_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `student_hold` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(50) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_dated` date NOT NULL,
  `created_date` date NOT NULL,
  `created_by` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `student_lead` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `lead_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `student_lead` VALUES ('2', '1', '44');
INSERT INTO `student_lead` VALUES ('3', '1', '92');
INSERT INTO `student_lead` VALUES ('4', '2', '92');
INSERT INTO `student_lead` VALUES ('10', '3', '141');
INSERT INTO `student_lead` VALUES ('9', '3', '44');
INSERT INTO `student_lead` VALUES ('7', '4', '44');
INSERT INTO `student_lead` VALUES ('8', '4', '141');

CREATE TABLE `student_material` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `mate_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `student_material` VALUES ('6', '2', '1', '70');
INSERT INTO `student_material` VALUES ('5', '2', '1', '64');
INSERT INTO `student_material` VALUES ('4', '2', '1', '62');

CREATE TABLE `student_moving` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `status_id` bigint(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `grade_online` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `grade_speak` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `student_moving` VALUES ('1', '1', '0', '0', '1', '2013-08-27 11:56:42', '126', '', '');
INSERT INTO `student_moving` VALUES ('2', '2', '0', '1', '4', '2013-08-27 12:08:19', '126', '', '');
INSERT INTO `student_moving` VALUES ('3', '3', '0', '0', '1', '2013-08-27 04:52:23', '126', '', '');
INSERT INTO `student_moving` VALUES ('4', '4', '0', '0', '2', '2013-08-27 05:40:04', '126', '', '');

CREATE TABLE `student_moving_history` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `status_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `student_moving_history` VALUES ('1', '1', '0', '0', '2013-08-27 11:56:42', '126', '1');
INSERT INTO `student_moving_history` VALUES ('2', '2', '0', '0', '2013-08-27 12:08:19', '126', '2');
INSERT INTO `student_moving_history` VALUES ('3', '2', '1', '1', '2013-08-27 12:25:23', '126', '4');
INSERT INTO `student_moving_history` VALUES ('4', '3', '0', '0', '2013-08-27 04:52:23', '126', '1');
INSERT INTO `student_moving_history` VALUES ('5', '4', '0', '0', '2013-08-27 05:40:04', '126', '2');

CREATE TABLE `student_status` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO `student_status` VALUES ('1', 'Enquiry');
INSERT INTO `student_status` VALUES ('2', 'Potential');
INSERT INTO `student_status` VALUES ('3', 'Waiting');
INSERT INTO `student_status` VALUES ('4', 'Enrolled');
INSERT INTO `student_status` VALUES ('5', 'Active');
INSERT INTO `student_status` VALUES ('6', 'On Hold');
INSERT INTO `student_status` VALUES ('7', 'Cancelled');
INSERT INTO `student_status` VALUES ('8', 'Completed');
INSERT INTO `student_status` VALUES ('9', 'Legally Critical');

CREATE TABLE `student_type` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(100) NOT NULL,
  `type_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `student_type` VALUES ('1', '2', '100');
INSERT INTO `student_type` VALUES ('2', '4', '98');

CREATE TABLE `student_vacation` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `frm` date NOT NULL,
  `tto` date NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `teacher` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `country_id` int(100) NOT NULL,
  `teacher_status` bigint(100) NOT NULL,
  `unit` bigint(100) NOT NULL,
  `overtime` bigint(100) NOT NULL,
  `prefer_time` bigint(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `teacher` VALUES ('1', 'Tarik Nebi', '00966523432423', '14', '2', '10', '0', '5', 'ahmedv@gmail.com', '2013-08-27 12:22:53', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `teacher` VALUES ('2', 'Don', '00966561367402', '189', '2', '0', '1', '4', 'don@berlitz-ksa.com', '2013-08-28 12:49:27', '1', '0000-00-00 00:00:00', '0');

CREATE TABLE `teacher_centre` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `teacher_centre` VALUES ('1', '1', '1');
INSERT INTO `teacher_centre` VALUES ('2', '2', '1');

CREATE TABLE `teacher_progress` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `grade_submit` date NOT NULL,
  `report_print` date NOT NULL,
  `report_print_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `certificate_print` date NOT NULL,
  `certificate_print_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `progress_report_date` date NOT NULL,
  `certificate` varchar(150) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `narration` longtext CHARACTER SET ucs2 COLLATE ucs2_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `teacher_progress` VALUES ('1', '1', '1', '1', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '');

CREATE TABLE `teacher_progress_certificate` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `fluency` bigint(100) NOT NULL,
  `fluency_perc` bigint(100) NOT NULL,
  `pronunciation` bigint(100) NOT NULL,
  `pronunciation_perc` bigint(100) NOT NULL,
  `grammer` bigint(100) NOT NULL,
  `grammer_perc` bigint(100) NOT NULL,
  `vocabulary` bigint(100) NOT NULL,
  `vocabulary_perc` bigint(100) NOT NULL,
  `listening` bigint(100) NOT NULL,
  `listening_perc` bigint(100) NOT NULL,
  `comprehension` bigint(100) NOT NULL,
  `end_of_level` bigint(100) NOT NULL,
  `end_of_level_perc` bigint(100) NOT NULL,
  `attendance` bigint(100) NOT NULL,
  `attendance_perc` bigint(100) NOT NULL,
  `parent_id` bigint(100) NOT NULL,
  `print_status` int(11) NOT NULL,
  `print_date` date NOT NULL,
  `final_percent` float NOT NULL,
  `grade_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `teacher_progress_certificate` VALUES ('1', '1', '1', '2', '1', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', '0', '1', '0', '2', '1', '1', '0', '0000-00-00', '79', '3');

CREATE TABLE `teacher_progress_course` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `group_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `course_partication` bigint(100) NOT NULL,
  `course_partication_perc` bigint(100) NOT NULL,
  `course_homework` bigint(100) NOT NULL,
  `course_homework_perc` bigint(100) NOT NULL,
  `course_fluency` bigint(100) NOT NULL,
  `course_fluency_perc` bigint(100) NOT NULL,
  `course_pro` bigint(100) NOT NULL,
  `course_pro_perc` bigint(100) NOT NULL,
  `course_grammer` bigint(100) NOT NULL,
  `course_grammer_perc` bigint(100) NOT NULL,
  `course_voca` bigint(100) NOT NULL,
  `course_voca_perc` bigint(100) NOT NULL,
  `course_listen` bigint(100) NOT NULL,
  `course_listen_perc` bigint(100) NOT NULL,
  `course_attendance` bigint(100) NOT NULL,
  `course_attendance_perc` bigint(100) NOT NULL,
  `course_comp` bigint(100) NOT NULL,
  `parent_id` bigint(100) NOT NULL,
  `print_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `teacher_progress_course` VALUES ('1', '1', '1', '2', '1', '1', '15', '1', '15', '1', '15', '1', '15', '1', '15', '1', '15', '1', '15', '2', '12', '0', '1', '0');

CREATE TABLE `teacher_vacation` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `frm` date NOT NULL,
  `tto` date NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_affect` int(11) NOT NULL,
  `status` bigint(10) NOT NULL,
  `no_days` bigint(10) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(3) NOT NULL,
  `last_updated` datetime NOT NULL,
  `updated_by` bigint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `teacher_vacation_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(100) NOT NULL,
  `vacation_id` bigint(100) NOT NULL,
  `dated` date NOT NULL,
  `course_id` bigint(100) NOT NULL,
  `order_sl` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transfer_centre_to_centre` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `centre_from` bigint(100) NOT NULL,
  `from_id` bigint(100) NOT NULL,
  `centre_to` bigint(100) NOT NULL,
  `to_id` bigint(100) NOT NULL,
  `from_status_id` bigint(100) NOT NULL,
  `to_status_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `to_student_id` bigint(100) NOT NULL,
  `from_course_id` bigint(100) NOT NULL,
  `to_course_id` bigint(100) NOT NULL,
  `tr_ob_amt` float NOT NULL,
  `tr_discount` float NOT NULL,
  `tr_other_amt` float NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_date` date NOT NULL,
  `created_by` bigint(50) NOT NULL,
  `status` varchar(50) CHARACTER SET ucs2 COLLATE ucs2_czech_ci NOT NULL,
  `final_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `final_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transfer_centre_to_centre_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transfer_different_centre` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `centre_from` bigint(100) NOT NULL,
  `from_id` bigint(100) NOT NULL,
  `centre_to` bigint(100) NOT NULL,
  `to_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_date` date NOT NULL,
  `created_by` bigint(50) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `final_status` varchar(100) NOT NULL,
  `final_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transfer_different_centre_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transfer_student_to_student` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `from_id` bigint(100) NOT NULL,
  `to_id` bigint(100) NOT NULL,
  `from_status_id` bigint(100) NOT NULL,
  `to_status_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  `to_student_id` bigint(100) NOT NULL,
  `from_course_id` bigint(100) NOT NULL,
  `to_course_id` bigint(100) NOT NULL,
  `tr_ob_amt` float NOT NULL,
  `tr_discount` float NOT NULL,
  `tr_other_amt` float NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cd_comment` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `created_date` date NOT NULL,
  `created_by` bigint(50) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transfer_student_to_student_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(100) NOT NULL,
  `student_id` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `user` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `commonid` bigint(10) NOT NULL,
  `user_status` int(11) NOT NULL,
  `uid` bigint(100) NOT NULL,
  `is_online` bigint(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `center_id` bigint(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` bigint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

INSERT INTO `user` VALUES ('1', 'Administrator', 'support@berlitz-ksa.com', 'admin', 'WVdSdGFXND0=', 'Administrator', '00966547378399', '1', '0', '0', '1', '', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `user` VALUES ('125', 'Center Director', 'ahmedv@gmail.com', 'cd', 'WTJRPQ==', 'cd', '00966523432423', '2', '0', '0', '1', '', '1', '2013-08-26 13:17:31', '1');
INSERT INTO `user` VALUES ('126', 'Student Advisor', 'ahmedv@gmail.com', 'sa', 'YzJFPQ==', 'sa', '00966547378399', '2', '0', '0', '1', '', '1', '2013-08-27 11:14:55', '1');
INSERT INTO `user` VALUES ('127', 'Student', 'ahmedv@gmail.com', 'st', 'YzNRPQ==', 'Ahmed Varachia', '00966547378398', '0', '0', '2', '1', '', '1', '2013-08-27 12:16:54', '126');
INSERT INTO `user` VALUES ('128', 'Teacher', 'ahmedv@gmail.com', 'tarik', 'ZEdGeWFXcz0=', 'Tarik Nebi', '00966523432423', '0', '0', '1', '1', '', '0', '2013-08-27 15:21:57', '1');
INSERT INTO `user` VALUES ('130', 'Teacher', 'don@berlitz-ksa.com', 'don', 'Y21sMlpYSmg=', 'Don', '00966561367402', '0', '0', '2', '0', '', '0', '2013-08-28 12:49:27', '1');

CREATE TABLE `vacation_dtls` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `dated` date NOT NULL,
  `teacher_id` bigint(100) NOT NULL,
  `centre_id` bigint(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `working_day` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `dyname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `working_day` VALUES ('1', 'Saturday - ??? ????????', 'Saturday', '1');
INSERT INTO `working_day` VALUES ('2', 'Sunday - ??? ????? ', 'Sunday', '0');
INSERT INTO `working_day` VALUES ('3', 'Monday - ??? ??????? ', 'Monday', '0');
INSERT INTO `working_day` VALUES ('4', 'Tuesday - ??? ??????????? ', 'Tuesday', '0');
INSERT INTO `working_day` VALUES ('5', 'Wednesday - ??? ?????????? ', 'Wednesday', '0');
INSERT INTO `working_day` VALUES ('6', 'Thursday - ??? ???????? ', 'Thursday', '0');
INSERT INTO `working_day` VALUES ('7', 'Friday - ??? ????????? ', 'Friday', '1');

