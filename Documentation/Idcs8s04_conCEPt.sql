-- phpMyAdmin SQL Dump
-- version 4.0.10.17
-- https://www.phpmyadmin.net
--
-- Host: mysql.dur.ac.uk
-- Generation Time: Feb 20, 2017 at 03:42 PM
-- Server version: 5.1.39-community-log
-- PHP Version: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Idcs8s04_conCEPt`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `Admin_ID` char(8) NOT NULL,
  `Fname` char(30) NOT NULL,
  `Lname` char(30) NOT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`Admin_ID`, `Fname`, `Lname`) VALUES
('bmjx76', 'Fluffy', 'Marshmallow'),
('dcs8s04', 'Chocolate', 'Cookie'),
('gcdk35', 'Ryan', 'Collins'),
('ltsw23', 'Cameron', 'Shepherd');

-- --------------------------------------------------------

--
-- Table structure for table `BaseForm`
--

CREATE TABLE IF NOT EXISTS `BaseForm` (
  `BForm_ID` int(3) NOT NULL AUTO_INCREMENT,
  `Form_Title` varchar(30) NOT NULL,
  `Deadline` date NOT NULL,
  PRIMARY KEY (`BForm_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `BaseForm`
--

INSERT INTO `BaseForm` (`BForm_ID`, `Form_Title`, `Deadline`) VALUES
(1, 'Design Report', '2017-01-24'),
(2, 'Presentation', '2017-01-23'),
(3, 'Project Paper', '2017-01-31'),
(4, 'Project Poster', '2017-02-15'),
(5, 'Oral', '2017-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `Form`
--

CREATE TABLE IF NOT EXISTS `Form` (
  `Form_ID` int(4) NOT NULL AUTO_INCREMENT,
  `BForm_ID` int(3) NOT NULL,
  `IsSubmitted` tinyint(1) NOT NULL,
  `IsMerged` tinyint(1) NOT NULL,
  `Comment` text NOT NULL,
  `Time_Stamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Form_ID`,`Time_Stamp`),
  KEY `BForm_ID` (`BForm_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `Form`
--

INSERT INTO `Form` (`Form_ID`, `BForm_ID`, `IsSubmitted`, `IsMerged`, `Comment`, `Time_Stamp`) VALUES
(1, 1, 1, 0, 'Initial submission', '2017-02-18 20:25:50'),
(2, 2, 1, 1, 'Initial submission', '2017-02-20 13:22:32'),
(3, 3, 0, 0, '', '0000-00-00 00:00:00'),
(4, 4, 1, 1, 'Initial submission', '2017-02-20 12:40:14'),
(5, 5, 0, 1, 'Initial submission', '2017-02-20 15:11:02'),
(8, 1, 0, 0, '', '0000-00-00 00:00:00'),
(9, 2, 1, 1, 'Initial submission', '2017-02-20 13:14:18'),
(10, 3, 0, 0, '', '0000-00-00 00:00:00'),
(11, 4, 1, 1, 'Initial submission', '2017-02-20 12:40:03'),
(12, 5, 0, 1, 'Initial submission', '2017-02-20 15:11:02'),
(15, 1, 1, 1, 'Initial submission', '2017-02-20 11:52:17'),
(16, 2, 0, 0, '', '0000-00-00 00:00:00'),
(17, 3, 0, 0, '', '0000-00-00 00:00:00'),
(18, 4, 0, 0, '', '0000-00-00 00:00:00'),
(19, 5, 0, 0, '', '0000-00-00 00:00:00'),
(22, 1, 1, 1, 'Initial submission', '2017-02-20 12:10:41'),
(23, 2, 0, 0, '', '0000-00-00 00:00:00'),
(24, 3, 0, 0, '', '0000-00-00 00:00:00'),
(25, 4, 0, 0, '', '0000-00-00 00:00:00'),
(26, 5, 0, 0, '', '0000-00-00 00:00:00'),
(29, 1, 0, 0, '', '0000-00-00 00:00:00'),
(30, 2, 0, 0, '', '0000-00-00 00:00:00'),
(31, 3, 0, 0, '', '0000-00-00 00:00:00'),
(32, 4, 0, 0, '', '0000-00-00 00:00:00'),
(33, 5, 0, 0, '', '0000-00-00 00:00:00'),
(36, 1, 0, 0, '', '0000-00-00 00:00:00'),
(37, 2, 0, 0, '', '0000-00-00 00:00:00'),
(38, 3, 0, 0, '', '0000-00-00 00:00:00'),
(39, 4, 0, 0, '', '0000-00-00 00:00:00'),
(40, 5, 0, 0, '', '0000-00-00 00:00:00'),
(43, 1, 0, 0, '', '0000-00-00 00:00:00'),
(44, 2, 0, 0, '', '0000-00-00 00:00:00'),
(45, 3, 0, 0, '', '0000-00-00 00:00:00'),
(46, 4, 0, 0, '', '0000-00-00 00:00:00'),
(47, 5, 0, 0, '', '0000-00-00 00:00:00'),
(50, 1, 0, 0, '', '0000-00-00 00:00:00'),
(51, 2, 0, 0, '', '0000-00-00 00:00:00'),
(52, 3, 0, 0, '', '0000-00-00 00:00:00'),
(53, 4, 0, 0, '', '0000-00-00 00:00:00'),
(54, 5, 0, 0, '', '0000-00-00 00:00:00'),
(57, 1, 1, -1, '', '2017-02-20 15:12:20'),
(58, 1, 0, 0, '', '0000-00-00 00:00:00'),
(59, 2, 0, 0, '', '0000-00-00 00:00:00'),
(60, 3, 0, 0, '', '0000-00-00 00:00:00'),
(61, 4, 0, 0, '', '0000-00-00 00:00:00'),
(62, 5, 0, 0, '', '0000-00-00 00:00:00'),
(65, 1, 0, 0, '', '0000-00-00 00:00:00'),
(66, 2, 0, 0, '', '0000-00-00 00:00:00'),
(67, 3, 0, 0, '', '0000-00-00 00:00:00'),
(68, 4, 0, 0, '', '0000-00-00 00:00:00'),
(69, 5, 0, 0, '', '0000-00-00 00:00:00'),
(72, 4, 0, -1, '', '0000-00-00 00:00:00'),
(73, 1, 0, 0, '', '0000-00-00 00:00:00'),
(74, 2, 0, 0, '', '0000-00-00 00:00:00'),
(75, 3, 0, 0, '', '0000-00-00 00:00:00'),
(76, 4, 0, 0, '', '0000-00-00 00:00:00'),
(77, 5, 0, 0, '', '0000-00-00 00:00:00'),
(80, 2, 1, -1, '', '2017-02-20 13:23:34'),
(81, 1, 0, 0, '', '0000-00-00 00:00:00'),
(82, 2, 0, 0, '', '0000-00-00 00:00:00'),
(83, 3, 0, 0, '', '0000-00-00 00:00:00'),
(84, 4, 0, 0, '', '0000-00-00 00:00:00'),
(85, 5, 0, 0, '', '0000-00-00 00:00:00'),
(88, 1, 0, 0, '', '0000-00-00 00:00:00'),
(89, 2, 0, 0, '', '0000-00-00 00:00:00'),
(90, 3, 0, 0, '', '0000-00-00 00:00:00'),
(91, 4, 0, 0, '', '0000-00-00 00:00:00'),
(92, 5, 0, 0, '', '0000-00-00 00:00:00'),
(95, 1, 0, 0, '', '0000-00-00 00:00:00'),
(96, 2, 0, 0, '', '0000-00-00 00:00:00'),
(97, 3, 0, 0, '', '0000-00-00 00:00:00'),
(98, 4, 0, 0, '', '0000-00-00 00:00:00'),
(99, 5, 0, 0, '', '0000-00-00 00:00:00'),
(102, 1, 0, 0, '', '0000-00-00 00:00:00'),
(103, 2, 0, 0, '', '0000-00-00 00:00:00'),
(104, 3, 0, 0, '', '0000-00-00 00:00:00'),
(105, 4, 0, 0, '', '0000-00-00 00:00:00'),
(106, 5, 0, 0, '', '0000-00-00 00:00:00'),
(109, 1, 0, 0, '', '0000-00-00 00:00:00'),
(110, 2, 0, 0, '', '0000-00-00 00:00:00'),
(111, 3, 0, 0, '', '0000-00-00 00:00:00'),
(112, 4, 0, 0, '', '0000-00-00 00:00:00'),
(113, 5, 0, 0, '', '0000-00-00 00:00:00'),
(116, 1, 0, 0, '', '0000-00-00 00:00:00'),
(117, 2, 0, 0, '', '0000-00-00 00:00:00'),
(118, 3, 0, 0, '', '0000-00-00 00:00:00'),
(119, 4, 0, 0, '', '0000-00-00 00:00:00'),
(120, 5, 0, 0, '', '0000-00-00 00:00:00'),
(123, 5, 0, -1, '', '0000-00-00 00:00:00'),
(124, 5, 1, 1, 'Initial submission', '2017-02-20 13:18:00'),
(125, 5, 1, 1, 'Initial submission', '2017-02-20 15:11:02'),
(126, 1, 0, 0, '', '0000-00-00 00:00:00'),
(127, 2, 0, 0, '', '0000-00-00 00:00:00'),
(128, 3, 0, 0, '', '0000-00-00 00:00:00'),
(129, 4, 0, 0, '', '0000-00-00 00:00:00'),
(130, 5, 0, 0, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Marker`
--

CREATE TABLE IF NOT EXISTS `Marker` (
  `Marker_ID` char(8) NOT NULL,
  `Fname` char(30) NOT NULL,
  `Lname` char(30) NOT NULL,
  PRIMARY KEY (`Marker_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Marker`
--

INSERT INTO `Marker` (`Marker_ID`, `Fname`, `Lname`) VALUES
('camm01', 'Herbert', 'Garrison'),
('camm02', 'PC', 'Principal'),
('camm03', 'Diane', 'Choksondik'),
('ghhg67', 'person', 'person'),
('lknw27', 'Stephen', 'McGough'),
('ltsw23', 'Cameron', 'Shepherd'),
('mmgw12', 'Aqua', 'Spark'),
('wznd85', 'Indigo', 'Beetle');

-- --------------------------------------------------------

--
-- Table structure for table `MergedForm`
--

CREATE TABLE IF NOT EXISTS `MergedForm` (
  `MForm_ID` int(3) NOT NULL,
  `EForm_ID` int(3) NOT NULL,
  `SForm_ID` int(3) NOT NULL,
  `IsEdited` tinyint(1) NOT NULL,
  PRIMARY KEY (`MForm_ID`,`EForm_ID`,`SForm_ID`),
  KEY `MergedForm_ibfk_2` (`EForm_ID`),
  KEY `MergedForm_ibfk_3` (`SForm_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MergedForm`
--

INSERT INTO `MergedForm` (`MForm_ID`, `EForm_ID`, `SForm_ID`, `IsEdited`) VALUES
(57, 15, 22, 1),
(72, 4, 11, 0),
(80, 2, 9, 1),
(123, 5, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MS`
--

CREATE TABLE IF NOT EXISTS `MS` (
  `MS_ID` int(3) NOT NULL AUTO_INCREMENT,
  `Marker_ID` char(8) NOT NULL,
  `Student_ID` char(7) NOT NULL,
  `IsSupervisor` int(1) NOT NULL,
  PRIMARY KEY (`MS_ID`),
  UNIQUE KEY `Student_ID_2` (`Student_ID`,`Marker_ID`,`IsSupervisor`),
  KEY `Marker_ID` (`Marker_ID`),
  KEY `Student_ID` (`Student_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `MS`
--

INSERT INTO `MS` (`MS_ID`, `Marker_ID`, `Student_ID`, `IsSupervisor`) VALUES
(10, 'camm01', 'camt01', 1),
(9, 'camm02', 'camt01', 0),
(11, 'camm01', 'camt03', 1),
(6, 'lknw27', 'camt03', 1),
(5, 'wznd85', 'camt03', 0),
(12, 'camm01', 'camt04', 1),
(14, 'ltsw23', 'camt04', 0),
(17, 'camm01', 'camt06', 1),
(16, 'ltsw23', 'camt06', 0),
(2, 'mmgw12', 'jhhf98', 1),
(1, 'wznd85', 'jhhf98', 0),
(3, 'mmgw12', 'jkbk86', 0),
(4, 'wznd85', 'jkbk86', 1),
(18, 'camm01', 'ltsw23', 1),
(7, 'lknw27', 'vjhv74', 0),
(8, 'wznd85', 'vjhv74', 1);

-- --------------------------------------------------------

--
-- Table structure for table `MS_Form`
--

CREATE TABLE IF NOT EXISTS `MS_Form` (
  `MS_ID` int(3) NOT NULL,
  `Form_ID` int(4) NOT NULL,
  PRIMARY KEY (`MS_ID`,`Form_ID`),
  KEY `MS_Form_ibfk_2` (`Form_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MS_Form`
--

INSERT INTO `MS_Form` (`MS_ID`, `Form_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(6, 36),
(6, 37),
(6, 38),
(6, 39),
(6, 40),
(7, 43),
(7, 44),
(7, 45),
(7, 46),
(7, 47),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(9, 58),
(9, 59),
(9, 60),
(9, 61),
(9, 62),
(10, 65),
(10, 66),
(10, 67),
(10, 68),
(10, 69),
(11, 73),
(11, 74),
(11, 75),
(11, 76),
(11, 77),
(12, 81),
(12, 82),
(12, 83),
(12, 84),
(12, 85),
(14, 88),
(14, 89),
(14, 90),
(14, 91),
(14, 92),
(16, 95),
(16, 96),
(16, 97),
(16, 98),
(16, 99),
(17, 102),
(17, 103),
(17, 104),
(17, 105),
(17, 106),
(18, 109),
(18, 110),
(18, 111),
(18, 112),
(18, 113),
(1, 124),
(2, 125);

-- --------------------------------------------------------

--
-- Table structure for table `Section`
--

CREATE TABLE IF NOT EXISTS `Section` (
  `Sec_ID` int(2) NOT NULL AUTO_INCREMENT,
  `Sec_Name` varchar(30) NOT NULL,
  `BForm_ID` int(3) NOT NULL,
  `Sec_Criteria` text NOT NULL,
  `Sec_Percent` decimal(3,1) NOT NULL,
  `Sec_Order` int(2) NOT NULL,
  PRIMARY KEY (`Sec_ID`),
  KEY `BForm_ID` (`BForm_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `Section`
--

INSERT INTO `Section` (`Sec_ID`, `Sec_Name`, `BForm_ID`, `Sec_Criteria`, `Sec_Percent`, `Sec_Order`) VALUES
(1, 'Design', 1, 'Adequacy of the proposed solution\r\nSpecification and design\r\nIdentification of requirements\r\nDescription of tools used\r\nOverview of architecture\r\nDescription of life cycle', '65.0', 3),
(2, 'General Comments', 1, '', '0.0', 5),
(3, 'Introduction', 1, 'Description of purpose of project\r\nSpecification of deliverables and aims', '15.0', 2),
(4, 'Structured Abstract', 1, 'Adequacy of summary of project\r\nUses required headings of Background/Context, Aims, Method, Proposed Solution', '10.0', 1),
(5, 'Writing Skills', 1, 'Clarity of presentation of ideas\r\nConformance to paper format standards as specified in Paper Template\r\nQuality of writing (readability, grammar)\r\nReferences', '10.0', 4),
(13, 'Introduction', 2, 'Title and name on first slide\r\nStudent introduce self\r\nLevel of detail appropriate\r\nGood coverage of background isues\r\nProject''s goals explained\r\nProblem being solved\r\nWork placed in context', '20.0', 1),
(14, 'Achievements', 2, 'Adequate discussion of planning\r\nClarity of explanation of the deliverables and what has been achieved\r\nHow will the project be evaluated?\r\nNote: It is the presentation that is being assessed, not the progress of the project itself.', '20.0', 2),
(15, 'Presentation quality', 2, 'Clear speaking\r\nDid the student make eye contact with the audience?\r\nWas the student familiar with the presentation? (no excessive use of notes)\r\nPurpose is stated clearly near the beginning\r\nOrganization throughout the presentation is made clear with slides and language cues', '20.0', 3),
(16, 'Timing', 2, 'Was the presentaiton well-paced and did it finish on time?', '10.0', 4),
(17, 'Questions', 2, 'Questions anticipated\r\nClarification sought for ambiguous or unclear questions\r\nClear answers; good suggestions even if answers unknown', '10.0', 5),
(18, 'Visual aids', 2, 'Well-prepared, interesting, easy-to-read slides that support the content of the presentation and enhance the audience''s understanding of the key points.\r\nAppropriate text size and formatting, good visual appeal with varied representations\r\nNumber of slides appropriate for time limit\r\nNo unfamiliar acronyms, errors in grammar, spelling etc. that distract the audience', '20.0', 6),
(19, 'General Comments', 2, '', '0.0', 7),
(20, 'Abstract and Introduction', 3, 'Adequacy of Abstract\r\nDescription of Background\r\nDiscussion of aims and achievements', '5.0', 1),
(21, 'Related Work', 3, 'Adequacy of literature\r\nCritical analysis', '15.0', 2),
(22, 'Solution', 3, 'Adequacy of the solution\r\nSpecification and design\r\nOutline of implementation issues\r\nDescription of tools used\r\nVerification and validation\r\nDiscussion of testing', '25.0', 3),
(23, 'Results', 3, 'Description of the evaluation method adopted\r\nClarity of the results', '25.0', 4),
(24, 'Evaluation', 3, 'Suitability of approach\r\nDiscussions of strengths and limitations of the system\r\nDiscussion of algorithms used\r\nAppraisal of project organisation', '20.0', 5),
(25, 'Conclusions', 3, 'Description of main findings\r\nClairty of conclusions\r\nDiscussion of further work', '5.0', 6),
(26, 'Writing skills', 3, 'Presentation of ideas\r\nConformance to format\r\nReadability, grammar', '5.0', 7),
(27, 'General Comments', 3, '', '0.0', 8),
(28, 'Poster', 4, 'Visual Appearance\r\nStructure of information\r\nRelevant points highlighted', '60.0', 1),
(29, 'Student', 4, 'Student interaction duing poster session\r\nResponse to questions', '40.0', 2),
(30, 'General Comments', 4, '', '0.0', 3),
(31, 'Requirements', 5, 'BASIC requirements\r\n                                                                                                  INTERMEDIATE requirements\r\nADVANCED requirements', '33.3', 1),
(32, 'Quality', 5, 'Complexity of the system \r\nRobustness of the system as demonstrated \r\nUsability, accessibility and ease of use', '33.3', 2),
(33, 'Skills', 5, 'Clarity of the introduction to the project\r\nCohesive and comprehensive demonstration\r\nAbility to answer questions\r\nDemonstration of mastery of the problem domain', '33.3', 3),
(34, 'General Comments', 5, '', '0.0', 4);

-- --------------------------------------------------------

--
-- Table structure for table `SectionConflict`
--

CREATE TABLE IF NOT EXISTS `SectionConflict` (
  `Form_ID` int(3) NOT NULL,
  `Sec_ID` int(2) NOT NULL,
  PRIMARY KEY (`Form_ID`,`Sec_ID`),
  KEY `Section_ID` (`Sec_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SectionConflict`
--

INSERT INTO `SectionConflict` (`Form_ID`, `Sec_ID`) VALUES
(123, 31),
(123, 33);

-- --------------------------------------------------------

--
-- Table structure for table `SectionMarking`
--

CREATE TABLE IF NOT EXISTS `SectionMarking` (
  `Sec_ID` int(2) NOT NULL,
  `Form_ID` int(4) NOT NULL,
  `Comment` text NOT NULL,
  `Mark` decimal(4,1) NOT NULL,
  PRIMARY KEY (`Sec_ID`,`Form_ID`),
  KEY `Form_ID` (`Form_ID`),
  KEY `Sec_ID` (`Sec_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SectionMarking`
--

INSERT INTO `SectionMarking` (`Sec_ID`, `Form_ID`, `Comment`, `Mark`) VALUES
(1, 1, '<p contenteditable="false"> </p><p contenteditable="true">Testing</p>', '0.0'),
(1, 8, '', '0.0'),
(1, 15, '<p contenteditable="true">Some requirements mentioned can''t be evaluated</p>', '67.0'),
(1, 22, '<p contenteditable="true">needs some proof-reading but very good in general</p>', '70.0'),
(1, 29, '', '0.0'),
(1, 36, '', '0.0'),
(1, 43, '', '0.0'),
(1, 50, '', '0.0'),
(1, 57, '<p contenteditable="true">Some requirements mentioned can''t be evaluated.</p> <p contenteditable="true">Also needs some proof-reading but very good in general.</p>', '68.5'),
(1, 58, '', '0.0'),
(1, 65, '', '0.0'),
(1, 73, '', '0.0'),
(1, 81, '', '0.0'),
(1, 88, '', '0.0'),
(1, 95, '', '0.0'),
(1, 102, '', '0.0'),
(1, 109, '', '0.0'),
(2, 1, '<p contenteditable="true">Testing</p>', '0.0'),
(2, 8, '', '0.0'),
(2, 15, '<p contenteditable="true">It was very good in general</p>', '0.0'),
(2, 22, '<p contenteditable="true">very good in general</p>', '0.0'),
(2, 29, '', '0.0'),
(2, 36, '', '0.0'),
(2, 43, '', '0.0'),
(2, 50, '', '0.0'),
(2, 57, '<p contenteditable="true">It was very good in general.</p>', '0.0'),
(2, 58, '', '0.0'),
(2, 65, '', '0.0'),
(2, 73, '', '0.0'),
(2, 81, '', '0.0'),
(2, 88, '', '0.0'),
(2, 95, '', '0.0'),
(2, 102, '', '0.0'),
(2, 109, '', '0.0'),
(3, 1, '<p contenteditable="false"> </p><p contenteditable="true">Testing</p>', '0.0'),
(3, 8, '', '0.0'),
(3, 15, '<p contenteditable="false"> </p><p contenteditable="true">Excellent</p>', '80.0'),
(3, 22, '<p contenteditable="true">Excellent</p>', '85.0'),
(3, 29, '', '0.0'),
(3, 36, '', '0.0'),
(3, 43, '', '0.0'),
(3, 50, '', '0.0'),
(3, 57, '<p contenteditable="false"> </p><p contenteditable="true">Excellent</p> <p contenteditable="true"><br></p>', '82.5'),
(3, 58, '', '0.0'),
(3, 65, '', '0.0'),
(3, 73, '', '0.0'),
(3, 81, '', '0.0'),
(3, 88, '', '0.0'),
(3, 95, '', '0.0'),
(3, 102, '', '0.0'),
(3, 109, '', '0.0'),
(4, 1, '<p contenteditable="false"> </p><p contenteditable="true">Testing</p>', '0.0'),
(4, 8, '', '0.0'),
(4, 15, '<p contenteditable="false"> </p><p contenteditable="true">Clear and complete, however it is missing some minor details.</p>', '70.0'),
(4, 22, '<p contenteditable="true">Excellent</p>', '75.0'),
(4, 29, '', '0.0'),
(4, 36, '', '0.0'),
(4, 43, '', '0.0'),
(4, 50, '', '0.0'),
(4, 57, '<p contenteditable="false"> </p><p contenteditable="true">Clear and complete, however it is missing some minor details.</p> <p contenteditable="true"><br></p>', '72.5'),
(4, 58, '', '0.0'),
(4, 65, '', '0.0'),
(4, 73, '', '0.0'),
(4, 81, '', '0.0'),
(4, 88, '', '0.0'),
(4, 95, '', '0.0'),
(4, 102, '', '0.0'),
(4, 109, '', '0.0'),
(5, 1, '<p contenteditable="false"> </p><p contenteditable="true">Testing</p>', '0.0'),
(5, 8, '', '0.0'),
(5, 15, '<p contenteditable="false"> </p><p contenteditable="true">Excellent</p>', '80.0'),
(5, 22, '<p contenteditable="true">very good</p>', '75.0'),
(5, 29, '', '0.0'),
(5, 36, '', '0.0'),
(5, 43, '', '0.0'),
(5, 50, '', '0.0'),
(5, 57, '<p contenteditable="false"> </p><p contenteditable="true">Excellent</p> <p contenteditable="true"><br></p>', '77.5'),
(5, 58, '', '0.0'),
(5, 65, '', '0.0'),
(5, 73, '', '0.0'),
(5, 81, '', '0.0'),
(5, 88, '', '0.0'),
(5, 95, '', '0.0'),
(5, 102, '', '0.0'),
(5, 109, '', '0.0'),
(13, 2, '<p contenteditable="false" class="placeholder"> Your text here...</p><p contenteditable="true"> </p>', '55.0'),
(13, 9, '<p contenteditable="false"> </p><p contenteditable="true">GOOD</p>', '60.0'),
(13, 16, '', '0.0'),
(13, 23, '', '0.0'),
(13, 30, '', '0.0'),
(13, 37, '', '0.0'),
(13, 44, '', '0.0'),
(13, 51, '', '0.0'),
(13, 59, '', '0.0'),
(13, 66, '', '0.0'),
(13, 74, '', '0.0'),
(13, 80, '<p contenteditable="true"> </p> <p contenteditable="false"> </p><p contenteditable="true">GOOD</p>', '57.5'),
(13, 82, '', '0.0'),
(13, 89, '', '0.0'),
(13, 96, '', '0.0'),
(13, 103, '', '0.0'),
(13, 110, '', '0.0'),
(14, 2, '<p contenteditable="false"> </p><p contenteditable="true"> </p>', '60.0'),
(14, 9, '<p contenteditable="false"> </p><p contenteditable="true">Needs a lot of improvement</p>', '55.0'),
(14, 16, '', '0.0'),
(14, 23, '', '0.0'),
(14, 30, '', '0.0'),
(14, 37, '', '0.0'),
(14, 44, '', '0.0'),
(14, 51, '', '0.0'),
(14, 59, '', '0.0'),
(14, 66, '', '0.0'),
(14, 74, '', '0.0'),
(14, 80, '<p contenteditable="false"> </p><p contenteditable="true"> </p> <p contenteditable="false"> </p><p contenteditable="true">Needs a lot of improvement</p>', '57.5'),
(14, 82, '', '0.0'),
(14, 89, '', '0.0'),
(14, 96, '', '0.0'),
(14, 103, '', '0.0'),
(14, 110, '', '0.0'),
(15, 2, '<p contenteditable="false"> </p><p contenteditable="true"> </p>', '75.0'),
(15, 9, '<p contenteditable="false"> </p><p contenteditable="true">very good</p>', '78.0'),
(15, 16, '', '0.0'),
(15, 23, '', '0.0'),
(15, 30, '', '0.0'),
(15, 37, '', '0.0'),
(15, 44, '', '0.0'),
(15, 51, '', '0.0'),
(15, 59, '', '0.0'),
(15, 66, '', '0.0'),
(15, 74, '', '0.0'),
(15, 80, '<p contenteditable="false"> </p><p contenteditable="true"> </p> <p contenteditable="false"> </p><p contenteditable="true">very good</p>', '76.5'),
(15, 82, '', '0.0'),
(15, 89, '', '0.0'),
(15, 96, '', '0.0'),
(15, 103, '', '0.0'),
(15, 110, '', '0.0'),
(16, 2, '<p contenteditable="false"> </p><p contenteditable="true"> </p>', '63.0'),
(16, 9, '<p contenteditable="false"> </p><p contenteditable="true">a bit rushed</p>', '67.0'),
(16, 16, '', '0.0'),
(16, 23, '', '0.0'),
(16, 30, '', '0.0'),
(16, 37, '', '0.0'),
(16, 44, '', '0.0'),
(16, 51, '', '0.0'),
(16, 59, '', '0.0'),
(16, 66, '', '0.0'),
(16, 74, '', '0.0'),
(16, 80, '<p contenteditable="false"> </p><p contenteditable="true"> </p> <p contenteditable="false"> </p><p contenteditable="true">a bit rushed</p>', '65.0'),
(16, 82, '', '0.0'),
(16, 89, '', '0.0'),
(16, 96, '', '0.0'),
(16, 103, '', '0.0'),
(16, 110, '', '0.0'),
(17, 2, '<p contenteditable="false"> </p><p contenteditable="true"> </p>', '78.0'),
(17, 9, '<p contenteditable="false"> </p><p contenteditable="true">well prepared&nbsp;</p>', '76.0'),
(17, 16, '', '0.0'),
(17, 23, '', '0.0'),
(17, 30, '', '0.0'),
(17, 37, '', '0.0'),
(17, 44, '', '0.0'),
(17, 51, '', '0.0'),
(17, 59, '', '0.0'),
(17, 66, '', '0.0'),
(17, 74, '', '0.0'),
(17, 80, '<p contenteditable="false"> </p><p contenteditable="true"> </p> <p contenteditable="false"> </p><p contenteditable="true">well prepared&nbsp;</p>', '77.0'),
(17, 82, '', '0.0'),
(17, 89, '', '0.0'),
(17, 96, '', '0.0'),
(17, 103, '', '0.0'),
(17, 110, '', '0.0'),
(18, 2, '<p contenteditable="false"> </p><p contenteditable="true"> </p>', '85.0'),
(18, 9, '<p contenteditable="false"> </p><p contenteditable="true">nice slides</p>', '80.0'),
(18, 16, '', '0.0'),
(18, 23, '', '0.0'),
(18, 30, '', '0.0'),
(18, 37, '', '0.0'),
(18, 44, '', '0.0'),
(18, 51, '', '0.0'),
(18, 59, '', '0.0'),
(18, 66, '', '0.0'),
(18, 74, '', '0.0'),
(18, 80, '<p contenteditable="false"> </p><p contenteditable="true"> </p> <p contenteditable="false"> </p><p contenteditable="true">nice slides</p>', '82.5'),
(18, 82, '', '0.0'),
(18, 89, '', '0.0'),
(18, 96, '', '0.0'),
(18, 103, '', '0.0'),
(18, 110, '', '0.0'),
(19, 2, '<p contenteditable="true">Generally ok.</p>', '0.0'),
(19, 9, '<p contenteditable="true">good</p>', '0.0'),
(19, 16, '', '0.0'),
(19, 23, '', '0.0'),
(19, 30, '', '0.0'),
(19, 37, '', '0.0'),
(19, 44, '', '0.0'),
(19, 51, '', '0.0'),
(19, 59, '', '0.0'),
(19, 66, '', '0.0'),
(19, 74, '', '0.0'),
(19, 80, '<p contenteditable="true">Generally good.</p>', '0.0'),
(19, 82, '', '0.0'),
(19, 89, '', '0.0'),
(19, 96, '', '0.0'),
(19, 103, '', '0.0'),
(19, 110, '', '0.0'),
(20, 3, '', '0.0'),
(20, 10, '', '0.0'),
(20, 17, '', '0.0'),
(20, 24, '', '0.0'),
(20, 31, '', '0.0'),
(20, 38, '', '0.0'),
(20, 45, '', '0.0'),
(20, 52, '', '0.0'),
(20, 60, '', '0.0'),
(20, 67, '', '0.0'),
(20, 75, '', '0.0'),
(20, 83, '', '0.0'),
(20, 90, '', '0.0'),
(20, 97, '', '0.0'),
(20, 104, '', '0.0'),
(20, 111, '', '0.0'),
(21, 3, '', '0.0'),
(21, 10, '', '0.0'),
(21, 17, '', '0.0'),
(21, 24, '', '0.0'),
(21, 31, '', '0.0'),
(21, 38, '', '0.0'),
(21, 45, '', '0.0'),
(21, 52, '', '0.0'),
(21, 60, '', '0.0'),
(21, 67, '', '0.0'),
(21, 75, '', '0.0'),
(21, 83, '', '0.0'),
(21, 90, '', '0.0'),
(21, 97, '', '0.0'),
(21, 104, '', '0.0'),
(21, 111, '', '0.0'),
(22, 3, '', '0.0'),
(22, 10, '', '0.0'),
(22, 17, '', '0.0'),
(22, 24, '', '0.0'),
(22, 31, '', '0.0'),
(22, 38, '', '0.0'),
(22, 45, '', '0.0'),
(22, 52, '', '0.0'),
(22, 60, '', '0.0'),
(22, 67, '', '0.0'),
(22, 75, '', '0.0'),
(22, 83, '', '0.0'),
(22, 90, '', '0.0'),
(22, 97, '', '0.0'),
(22, 104, '', '0.0'),
(22, 111, '', '0.0'),
(23, 3, '', '0.0'),
(23, 10, '', '0.0'),
(23, 17, '', '0.0'),
(23, 24, '', '0.0'),
(23, 31, '', '0.0'),
(23, 38, '', '0.0'),
(23, 45, '', '0.0'),
(23, 52, '', '0.0'),
(23, 60, '', '0.0'),
(23, 67, '', '0.0'),
(23, 75, '', '0.0'),
(23, 83, '', '0.0'),
(23, 90, '', '0.0'),
(23, 97, '', '0.0'),
(23, 104, '', '0.0'),
(23, 111, '', '0.0'),
(24, 3, '', '0.0'),
(24, 10, '', '0.0'),
(24, 17, '', '0.0'),
(24, 24, '', '0.0'),
(24, 31, '', '0.0'),
(24, 38, '', '0.0'),
(24, 45, '', '0.0'),
(24, 52, '', '0.0'),
(24, 60, '', '0.0'),
(24, 67, '', '0.0'),
(24, 75, '', '0.0'),
(24, 83, '', '0.0'),
(24, 90, '', '0.0'),
(24, 97, '', '0.0'),
(24, 104, '', '0.0'),
(24, 111, '', '0.0'),
(25, 3, '', '0.0'),
(25, 10, '', '0.0'),
(25, 17, '', '0.0'),
(25, 24, '', '0.0'),
(25, 31, '', '0.0'),
(25, 38, '', '0.0'),
(25, 45, '', '0.0'),
(25, 52, '', '0.0'),
(25, 60, '', '0.0'),
(25, 67, '', '0.0'),
(25, 75, '', '0.0'),
(25, 83, '', '0.0'),
(25, 90, '', '0.0'),
(25, 97, '', '0.0'),
(25, 104, '', '0.0'),
(25, 111, '', '0.0'),
(26, 3, '', '0.0'),
(26, 10, '', '0.0'),
(26, 17, '', '0.0'),
(26, 24, '', '0.0'),
(26, 31, '', '0.0'),
(26, 38, '', '0.0'),
(26, 45, '', '0.0'),
(26, 52, '', '0.0'),
(26, 60, '', '0.0'),
(26, 67, '', '0.0'),
(26, 75, '', '0.0'),
(26, 83, '', '0.0'),
(26, 90, '', '0.0'),
(26, 97, '', '0.0'),
(26, 104, '', '0.0'),
(26, 111, '', '0.0'),
(27, 3, '', '0.0'),
(27, 10, '', '0.0'),
(27, 17, '', '0.0'),
(27, 24, '', '0.0'),
(27, 31, '', '0.0'),
(27, 38, '', '0.0'),
(27, 45, '', '0.0'),
(27, 52, '', '0.0'),
(27, 60, '', '0.0'),
(27, 67, '', '0.0'),
(27, 75, '', '0.0'),
(27, 83, '', '0.0'),
(27, 90, '', '0.0'),
(27, 97, '', '0.0'),
(27, 104, '', '0.0'),
(27, 111, '', '0.0'),
(28, 4, '<p contenteditable="true"><b>The </b>poster looked good.</p>', '80.0'),
(28, 11, '<p contenteditable="true">Very <u>good</u></p>', '78.0'),
(28, 18, '', '0.0'),
(28, 25, '', '0.0'),
(28, 32, '', '0.0'),
(28, 39, '', '0.0'),
(28, 46, '', '0.0'),
(28, 53, '', '0.0'),
(28, 61, '', '0.0'),
(28, 68, '', '0.0'),
(28, 72, '<p contenteditable="true"><b>The </b>poster looked good.</p> <p contenteditable="true">Very <u>good</u></p>', '79.0'),
(28, 76, '', '0.0'),
(28, 84, '', '0.0'),
(28, 91, '', '0.0'),
(28, 98, '', '0.0'),
(28, 105, '', '0.0'),
(28, 112, '', '0.0'),
(29, 4, '<p contenteditable="true">Student was hesitant to answer questions</p>', '60.0'),
(29, 11, '<p contenteditable="false"> </p><p contenteditable="true"><b>need</b> to be more <i>confident</i>&nbsp;</p>', '65.0'),
(29, 18, '', '0.0'),
(29, 25, '', '0.0'),
(29, 32, '', '0.0'),
(29, 39, '', '0.0'),
(29, 46, '', '0.0'),
(29, 53, '', '0.0'),
(29, 61, '', '0.0'),
(29, 68, '', '0.0'),
(29, 72, '<p contenteditable="true">Student was hesitant to answer questions</p> <p contenteditable="false"> </p><p contenteditable="true"><b>need</b> to be more <i>confident</i>&nbsp;</p>', '62.5'),
(29, 76, '', '0.0'),
(29, 84, '', '0.0'),
(29, 91, '', '0.0'),
(29, 98, '', '0.0'),
(29, 105, '', '0.0'),
(29, 112, '', '0.0'),
(30, 4, '<p contenteditable="true">Overall, a <u>good </u>effort.</p>', '0.0'),
(30, 11, '<p contenteditable="true">Overall good</p>', '0.0'),
(30, 18, '', '0.0'),
(30, 25, '', '0.0'),
(30, 32, '', '0.0'),
(30, 39, '', '0.0'),
(30, 46, '', '0.0'),
(30, 53, '', '0.0'),
(30, 61, '', '0.0'),
(30, 68, '', '0.0'),
(30, 72, '<p contenteditable="true">Overall, a <u>good </u>effort.</p> <p contenteditable="true">Overall good</p>', '0.0'),
(30, 76, '', '0.0'),
(30, 84, '', '0.0'),
(30, 91, '', '0.0'),
(30, 98, '', '0.0'),
(30, 105, '', '0.0'),
(30, 112, '', '0.0'),
(31, 5, '<p contenteditable="true">Missed some requirements</p>', '50.0'),
(31, 12, 'very good', '0.0'),
(31, 19, '', '0.0'),
(31, 26, '', '0.0'),
(31, 33, '', '0.0'),
(31, 40, '', '0.0'),
(31, 47, '', '0.0'),
(31, 54, '', '0.0'),
(31, 62, '', '0.0'),
(31, 69, '', '0.0'),
(31, 77, '', '0.0'),
(31, 85, '', '0.0'),
(31, 92, '', '0.0'),
(31, 99, '', '0.0'),
(31, 106, '', '0.0'),
(31, 113, '', '0.0'),
(31, 123, '<p contenteditable="true">Missed some requirements</p> very good', '25.0'),
(31, 124, '<p contenteditable="true">Missed some requirements</p>', '50.0'),
(31, 125, 'very good', '0.0'),
(32, 5, '<p contenteditable="true">Generally good quality</p>', '75.0'),
(32, 12, '<p contenteditable="true">Complex and robust</p>', '70.0'),
(32, 19, '', '0.0'),
(32, 26, '', '0.0'),
(32, 33, '', '0.0'),
(32, 40, '', '0.0'),
(32, 47, '', '0.0'),
(32, 54, '', '0.0'),
(32, 62, '', '0.0'),
(32, 69, '', '0.0'),
(32, 77, '', '0.0'),
(32, 85, '', '0.0'),
(32, 92, '', '0.0'),
(32, 99, '', '0.0'),
(32, 106, '', '0.0'),
(32, 113, '', '0.0'),
(32, 123, '<p contenteditable="true">Generally good quality</p> <p contenteditable="true">Complex and robust</p>', '72.5'),
(32, 124, '<p contenteditable="true">Generally good quality</p>', '75.0'),
(32, 125, '<p contenteditable="true">Complex and robust</p>', '70.0'),
(33, 5, '<p contenteditable="true">Some parts were confusing</p>', '60.0'),
(33, 12, '<p contenteditable="true">Excellent</p>', '80.0'),
(33, 19, '', '0.0'),
(33, 26, '', '0.0'),
(33, 33, '', '0.0'),
(33, 40, '', '0.0'),
(33, 47, '', '0.0'),
(33, 54, '', '0.0'),
(33, 62, '', '0.0'),
(33, 69, '', '0.0'),
(33, 77, '', '0.0'),
(33, 85, '', '0.0'),
(33, 92, '', '0.0'),
(33, 99, '', '0.0'),
(33, 106, '', '0.0'),
(33, 113, '', '0.0'),
(33, 123, '<p contenteditable="true">Some parts were confusing</p> <p contenteditable="true">Excellent</p>', '70.0'),
(33, 124, '<p contenteditable="true">Some parts were confusing</p>', '60.0'),
(33, 125, '<p contenteditable="true">Excellent</p>', '80.0'),
(34, 5, '<p contenteditable="true">Overall, generally good.</p>', '0.0'),
(34, 12, 'very good', '0.0'),
(34, 19, '', '0.0'),
(34, 26, '', '0.0'),
(34, 33, '', '0.0'),
(34, 40, '', '0.0'),
(34, 47, '', '0.0'),
(34, 54, '', '0.0'),
(34, 62, '', '0.0'),
(34, 69, '', '0.0'),
(34, 77, '', '0.0'),
(34, 85, '', '0.0'),
(34, 92, '', '0.0'),
(34, 99, '', '0.0'),
(34, 106, '', '0.0'),
(34, 113, '', '0.0'),
(34, 123, '<p contenteditable="true">Overall, generally good.</p> very good', '0.0'),
(34, 124, '<p contenteditable="true">Overall, generally good.</p>', '0.0'),
(34, 125, 'very good', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE IF NOT EXISTS `Student` (
  `Student_ID` char(7) NOT NULL,
  `Fname` char(30) NOT NULL,
  `Lname` char(30) NOT NULL,
  `Year_Level` int(1) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Student_ID`, `Fname`, `Lname`, `Year_Level`) VALUES
('camt01', 'Tweak', 'Tweak', 4),
('camt03', 'Timothy', 'Burch', 4),
('camt04', 'Eric', 'Cartman', 4),
('camt06', 'kenny', 'mccormick', 4),
('jhhf98', 'Kyle', 'Broflovski', 4),
('jkbk86', 'Stan', 'Marsh', 3),
('ltsw23', 'Eric', 'Cartman', 5),
('vjhv74', 'Bebe', 'Stevens', 3);

-- --------------------------------------------------------

--
-- Table structure for table `SuperAdmin`
--

CREATE TABLE IF NOT EXISTS `SuperAdmin` (
  `SuperAdmin_ID` char(8) NOT NULL,
  `Fname` char(30) NOT NULL,
  `Lname` char(30) NOT NULL,
  PRIMARY KEY (`SuperAdmin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SuperAdmin`
--

INSERT INTO `SuperAdmin` (`SuperAdmin_ID`, `Fname`, `Lname`) VALUES
('bmjx76', 'Fluffy', 'Marshmallow'),
('gcdk35', 'Ryan', 'Collins'),
('mmgw12', 'Blue', 'Iguana');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Form`
--
ALTER TABLE `Form`
  ADD CONSTRAINT `Form_ibfk_1` FOREIGN KEY (`BForm_ID`) REFERENCES `BaseForm` (`BForm_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MergedForm`
--
ALTER TABLE `MergedForm`
  ADD CONSTRAINT `MergedForm_ibfk_3` FOREIGN KEY (`SForm_ID`) REFERENCES `Form` (`Form_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MergedForm_ibfk_1` FOREIGN KEY (`MForm_ID`) REFERENCES `Form` (`Form_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MergedForm_ibfk_2` FOREIGN KEY (`EForm_ID`) REFERENCES `Form` (`Form_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MS`
--
ALTER TABLE `MS`
  ADD CONSTRAINT `MS_ibfk_1` FOREIGN KEY (`Marker_ID`) REFERENCES `Marker` (`Marker_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MS_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `Student` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MS_Form`
--
ALTER TABLE `MS_Form`
  ADD CONSTRAINT `MS_Form_ibfk_2` FOREIGN KEY (`Form_ID`) REFERENCES `Form` (`Form_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MS_Form_ibfk_1` FOREIGN KEY (`MS_ID`) REFERENCES `MS` (`MS_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Section`
--
ALTER TABLE `Section`
  ADD CONSTRAINT `Section_ibfk_1` FOREIGN KEY (`BForm_ID`) REFERENCES `BaseForm` (`BForm_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SectionConflict`
--
ALTER TABLE `SectionConflict`
  ADD CONSTRAINT `SectionConflict_ibfk_3` FOREIGN KEY (`Sec_ID`) REFERENCES `SectionMarking` (`Sec_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SectionConflict_ibfk_2` FOREIGN KEY (`Form_ID`) REFERENCES `SectionMarking` (`Form_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SectionMarking`
--
ALTER TABLE `SectionMarking`
  ADD CONSTRAINT `SectionMarking_ibfk_3` FOREIGN KEY (`Form_ID`) REFERENCES `Form` (`Form_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SectionMarking_ibfk_2` FOREIGN KEY (`Sec_ID`) REFERENCES `Section` (`Sec_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
