-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2012 at 10:52 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ipl`
--

-- --------------------------------------------------------

--
-- Table structure for table `match_schedule`
--

CREATE TABLE IF NOT EXISTS `match_schedule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(15) NOT NULL,
  `DateTime` datetime NOT NULL,
  `match_no` varchar(30) NOT NULL,
  `team1` varchar(255) NOT NULL,
  `team2` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `winner` varchar(255) NOT NULL,
  `status` varchar(125) NOT NULL DEFAULT 'NOTPLAYED',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `match_schedule`
--

INSERT INTO `match_schedule` (`ID`, `day`, `DateTime`, `match_no`, `team1`, `team2`, `venue`, `winner`, `status`) VALUES
(1, 'Wednesday', '2012-04-04 20:00:00', '1', 'Chennai Super Kings', 'Mumbai Indians', 'Chennai\r', '', 'NOTPLAYED'),
(2, 'Thursday', '2012-04-05 20:00:00', '2', 'Kolkata Knight Riders', 'Delhi Daredevils', 'Kolkata\r', '', 'NOTPLAYED'),
(3, 'Friday', '2012-04-06 16:00:00', '3', 'Mumbai Indians', 'Pune Warriors India', 'Mumbai\r', '', 'NOTPLAYED'),
(4, 'Friday', '2012-04-06 20:00:00', '4', 'Rajasthan Royals', 'Kings XI Punjab', 'Jaipur\r', '', 'NOTPLAYED'),
(5, 'Saturday', '2012-04-07 16:00:00', '5', 'Royal Challengers Bangalore', 'Delhi Daredevils', 'Bangalore\r', '', 'NOTPLAYED'),
(6, 'Saturday', '2012-04-07 20:00:00', '6', 'Deccan Chargers', 'Chennai Super Kings', 'Vizag\r', '', 'NOTPLAYED'),
(7, 'Sunday', '2012-04-08 16:00:00', '7', 'Rajasthan Royals', 'Kolkata Knight Riders', 'Jaipur\r', '', 'NOTPLAYED'),
(8, 'Sunday', '2012-04-08 20:00:00', '8', 'Pune Warriors India', 'Kings XI Punjab', 'Pune\r', '', 'NOTPLAYED'),
(9, 'Monday', '2012-04-09 20:00:00', '9', 'Deccan Chargers', 'Mumbai Indians', 'Vizag\r', '', 'NOTPLAYED'),
(10, 'Tuesday', '2012-04-10 16:00:00', '10', 'Royal Challengers Bangalore', 'Kolkata Knight Riders', 'Bangalore\r', '', 'NOTPLAYED'),
(11, 'Tuesday', '2012-04-10 20:00:00', '11', 'Delhi Daredevils', 'Chennai Super Kings', 'Delhi\r', '', 'NOTPLAYED'),
(12, 'Wednesday', '2012-04-11 20:00:00', '12', 'Mumbai Indians', 'Rajasthan Royals', 'Mumbai\r', '', 'NOTPLAYED'),
(13, 'Thursday', '2012-04-12 16:00:00', '13', 'Chennai Super Kings', 'Royal Challengers Bangalore', 'Chennai\r', '', 'NOTPLAYED'),
(14, 'Thursday', '2012-04-12 20:00:00', '14', 'Kings XI Punjab', 'Pune Warriors India', 'Mohali\r', '', 'NOTPLAYED'),
(15, 'Friday', '2012-04-13 20:00:00', '15', 'Kolkata Knight Riders', 'Rajasthan Royals', 'Kolkata\r', '', 'NOTPLAYED'),
(16, 'Saturday', '2012-04-14 16:00:00', '16', 'Delhi Daredevils', 'Deccan Chargers', 'Delhi\r', '', 'NOTPLAYED'),
(17, 'Saturday', '2012-04-14 20:00:00', '17', 'Pune Warriors India', 'Chennai Super Kings', 'Pune\r', '', 'NOTPLAYED'),
(18, 'Sunday', '2012-04-15 16:00:00', '18', 'Kolkata Knight Riders', 'Kings XI Punjab', 'Kolkata\r', '', 'NOTPLAYED'),
(19, 'Sunday', '2012-04-15 20:00:00', '19', 'Royal Challengers Bangalore', 'Rajasthan Royals', 'Bangalore\r', '', 'NOTPLAYED'),
(20, 'Monday', '2012-04-16 20:00:00', '20', 'Mumbai Indians', 'Delhi Daredevils', 'Mumbai\r', '', 'NOTPLAYED'),
(21, 'Tuesday', '2012-04-17 16:00:00', '21', 'Rajasthan Royals', 'Deccan Chargers', 'Jaipur\r', '', 'NOTPLAYED'),
(22, 'Tuesday', '2012-04-17 20:00:00', '22', 'Royal Challengers Bangalore', 'Pune Warriors India', 'Bangalore\r', '', 'NOTPLAYED'),
(23, 'Wednesday', '2012-04-18 20:00:00', '23', 'Kings XI Punjab', 'Kolkata Knight Riders', 'Mohali\r', '', 'NOTPLAYED'),
(24, 'Thursday', '2012-04-19 16:00:00', '24', 'Deccan Chargers', 'Delhi Daredevils', 'Hyderabad / Cuttack\r', '', 'NOTPLAYED'),
(25, 'Thursday', '2012-04-19 20:00:00', '25', 'Chennai Super Kings', 'Pune Warriors India', 'Chennai\r', '', 'NOTPLAYED'),
(26, 'Friday', '2012-04-20 20:00:00', '26', 'Kings XI Punjab', 'Royal Challengers Bangalore', 'Mohali\r', '', 'NOTPLAYED'),
(27, 'Saturday', '2012-04-21 16:00:00', '27', 'Chennai Super Kings', 'Rajasthan Royals', 'Chennai\r', '', 'NOTPLAYED'),
(28, 'Saturday', '2012-04-21 20:00:00', '28', 'Delhi Daredevils', 'Pune Warriors India', 'Delhi\r', '', 'NOTPLAYED'),
(29, 'Sunday', '2012-04-22 16:00:00', '29', 'Mumbai Indians', 'Kings XI Punjab', 'Mumbai\r', '', 'NOTPLAYED'),
(30, 'Sunday', '2012-04-22 20:00:00', '30', 'Deccan Chargers', 'Kolkata Knight Riders', 'Hyderabad / Cuttack\r', '', 'NOTPLAYED'),
(31, 'Monday', '2012-04-23 20:00:00', '31', 'Rajasthan Royals', 'Royal Challengers Bangalore', 'Jaipur\r', '', 'NOTPLAYED'),
(32, 'Tuesday', '2012-04-24 16:00:00', '32', 'Pune Warriors India', 'Delhi Daredevils', 'Pune\r', '', 'NOTPLAYED'),
(33, 'Tuesday', '2012-04-24 20:00:00', '33', 'Kolkata Knight Riders', 'Deccan Chargers', 'Kolkata\r', '', 'NOTPLAYED'),
(34, 'Wednesday', '2012-04-25 16:00:00', '34', 'Kings XI Punjab', 'Mumbai Indians', 'Mohali\r', '', 'NOTPLAYED'),
(35, 'Wednesday', '2012-04-25 20:00:00', '35', 'Royal Challengers Bangalore', 'Chennai Super Kings', 'Bangalore\r', '', 'NOTPLAYED'),
(36, 'Thursday', '2012-04-26 20:00:00', '36', 'Pune Warriors India', 'Deccan Chargers', 'Pune\r', '', 'NOTPLAYED'),
(37, 'Friday', '2012-04-27 20:00:00', '37', 'Delhi Daredevils', 'Mumbai Indians', 'Delhi\r', '', 'NOTPLAYED'),
(38, 'Saturday', '2012-04-28 16:00:00', '38', 'Chennai Super Kings', 'Kings XI Punjab', 'Chennai\r', '', 'NOTPLAYED'),
(39, 'Saturday', '2012-04-28 20:00:00', '39', 'Kolkata Knight Riders', 'Royal Challengers Bangalore', 'Kolkata\r', '', 'NOTPLAYED'),
(40, 'Sunday', '2012-04-29 16:00:00', '40', 'Delhi Daredevils', 'Rajasthan Royals', 'Delhi\r', '', 'NOTPLAYED'),
(41, 'Sunday', '2012-04-29 20:00:00', '41', 'Mumbai Indians', 'Deccan Chargers', 'Mumbai\r', '', 'NOTPLAYED'),
(42, 'Monday', '2012-04-30 20:00:00', '42', 'Chennai Super Kings', 'Kolkata Knight Riders', 'Chennai\r', '', 'NOTPLAYED'),
(43, 'Tuesday', '2012-05-01 16:00:00', '43', 'Deccan Chargers', 'Pune Warriors India', 'Hyderabad\r', '', 'NOTPLAYED'),
(44, 'Tuesday', '2012-05-01 20:00:00', '44', 'Rajasthan Royals', 'Delhi Daredevils', 'Jaipur\r', '', 'NOTPLAYED'),
(45, 'Wednesday', '2012-05-02 20:00:00', '45', 'Royal Challengers Bangalore', 'Kings XI Punjab', 'Bangalore\r', '', 'NOTPLAYED'),
(46, 'Thursday', '2012-05-03 20:00:00', '46', 'Pune Warriors India', 'Mumbai Indians', 'Pune\r', '', 'NOTPLAYED'),
(47, 'Friday', '2012-05-04 20:00:00', '47', 'Chennai Super Kings', 'Deccan Chargers', 'Chennai\r', '', 'NOTPLAYED'),
(48, 'Saturday', '2012-05-05 16:00:00', '48', 'Kolkata Knight Riders', 'Pune Warriors India', 'Kolkata\r', '', 'NOTPLAYED'),
(49, 'Saturday', '2012-05-05 20:00:00', '49', 'Kings XI Punjab', 'Rajasthan Royals', 'Mohali\r', '', 'NOTPLAYED'),
(50, 'Sunday', '2012-05-06 16:00:00', '50', 'Mumbai Indians', 'Chennai Super Kings', 'Mumbai\r', '', 'NOTPLAYED'),
(51, 'Sunday', '2012-05-06 20:00:00', '51', 'Royal Challengers Bangalore', 'Deccan Chargers', 'Bangalore\r', '', 'NOTPLAYED'),
(52, 'Monday', '2012-05-07 20:00:00', '52', 'Delhi Daredevils', 'Kolkata Knight Riders', 'Delhi\r', '', 'NOTPLAYED'),
(53, 'Tuesday', '2012-05-08 16:00:00', '53', 'Pune Warriors India', 'Rajasthan Royals', 'Pune\r', '', 'NOTPLAYED'),
(54, 'Tuesday', '2012-05-08 20:00:00', '54', 'Deccan Chargers', 'Kings XI Punjab', 'Hyderabad\r', '', 'NOTPLAYED'),
(55, 'Wednesday', '2012-05-09 20:00:00', '55', 'Mumbai Indians', 'Royal Challengers Bangalore', 'Mumbai\r', '', 'NOTPLAYED'),
(56, 'Thursday', '2012-05-10 20:00:00', '56', 'Rajasthan Royals', 'Chennai Super Kings', 'Jaipur\r', '', 'NOTPLAYED'),
(57, 'Friday', '2012-05-11 20:00:00', '57', 'Pune Warriors India', 'Royal Challengers Bangalore', 'Pune\r', '', 'NOTPLAYED'),
(58, 'Saturday', '2012-05-12 16:00:00', '58', 'Kolkata Knight Riders', 'Mumbai Indians', 'Kolkata\r', '', 'NOTPLAYED'),
(59, 'Saturday', '2012-05-12 20:00:00', '59', 'Chennai Super Kings', 'Delhi Daredevils', 'Chennai\r', '', 'NOTPLAYED'),
(60, 'Sunday', '2012-05-13 16:00:00', '60', 'Rajasthan Royals', 'Pune Warriors India', 'Jaipur\r', '', 'NOTPLAYED'),
(61, 'Sunday', '2012-05-13 20:00:00', '61', 'Kings XI Punjab', 'Deccan Chargers', 'Mohali\r', '', 'NOTPLAYED'),
(62, 'Monday', '2012-05-14 16:00:00', '62', 'Royal Challengers Bangalore', 'Mumbai Indians', 'Bangalore\r', '', 'NOTPLAYED'),
(63, 'Monday', '2012-05-14 20:00:00', '63', 'Kolkata Knight Riders', 'Chennai Super Kings', 'Kolkata\r', '', 'NOTPLAYED'),
(64, 'Tuesday', '2012-05-15 20:00:00', '64', 'Delhi Daredevils', 'Kings XI Punjab', 'Delhi\r', '', 'NOTPLAYED'),
(65, 'Wednesday', '2012-05-16 20:00:00', '65', 'Mumbai Indians', 'Kolkata Knight Riders', 'Mumbai\r', '', 'NOTPLAYED'),
(66, 'Thursday', '2012-05-17 16:00:00', '66', 'Kings XI Punjab', 'Chennai Super Kings', 'Dharamsala\r', '', 'NOTPLAYED'),
(67, 'Thursday', '2012-05-17 20:00:00', '67', 'Delhi Daredevils', 'Royal Challengers Bangalore', 'Delhi\r', '', 'NOTPLAYED'),
(68, 'Friday', '2012-05-18 20:00:00', '68', 'Deccan Chargers', 'Rajasthan Royals', 'Hyderabad\r', '', 'NOTPLAYED'),
(69, 'Saturday', '2012-05-19 16:00:00', '69', 'Kings XI Punjab', 'Delhi Daredevils', 'Dharamsala\r', '', 'NOTPLAYED'),
(70, 'Saturday', '2012-05-19 20:00:00', '70', 'Pune Warriors India', 'Kolkata Knight Riders', 'Pune\r', '', 'NOTPLAYED'),
(71, 'Sunday', '2012-05-20 16:00:00', '71', 'Deccan Chargers', 'Royal Challengers Bangalore', 'Hyderabad\r', '', 'NOTPLAYED'),
(72, 'Sunday', '2012-05-20 20:00:00', '72', 'Rajasthan Royals', 'Mumbai Indians', 'Jaipur\r', '', 'NOTPLAYED'),
(73, 'Tuesday', '2012-05-22 20:00:00', 'QUALIFIER 1', 'First Placed Team', 'Second Placed Team', 'Bangalore\r', '', 'NOTPLAYED'),
(74, 'Wednesday', '2012-05-23 20:00:00', 'ELIMINATOR', 'Third Placed Team', 'Fourth Placed Team', 'Bangalore\r', '', 'NOTPLAYED'),
(75, 'Friday', '2012-05-25 20:00:00', 'QUALIFIER 2', 'Winner of Eliminator', 'Loser of Qualifier 1', 'Chennai\r', '', 'NOTPLAYED'),
(76, 'Sunday', '2012-05-27 20:00:00', 'FINAL', 'Winner of Qualifier 1', 'Winner of Qualifier 2', 'Chennai\r', '', 'NOTPLAYED');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `type` enum('All Rounder','Batsman','Bowler','Wicketkeeper') NOT NULL,
  `price` int(11) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`ID`, `name`, `team`, `type`, `price`) VALUES
(1, 'Sachin Tendulkar', 'Mumbai Indians', 'Batsman', 105),
(2, 'Abu Nechim', 'Mumbai Indians', 'Bowler', 70),
(3, 'Yuzvendra Chahal', 'Mumbai Indians', 'Bowler', 70),
(4, 'Herschelle Gibbs', 'Mumbai Indians', 'Batsman', 90),
(5, 'Davy Jacobs', 'Mumbai Indians', 'Wicketkeeper', 85),
(6, 'Aiden Blizzard', 'Mumbai Indians', 'Batsman', 85),
(7, 'James Franklin', 'Mumbai Indians', 'All Rounder', 90),
(8, 'Harbhajan Singh', 'Mumbai Indians', 'Bowler', 90),
(9, 'Mitchell Johnson', 'Mumbai Indians', 'Bowler', 90),
(10, 'Dhaval Kulkarni', 'Mumbai Indians', 'Bowler', 80),
(11, 'Dinesh Karthik', 'Mumbai Indians', 'Wicketkeeper', 85),
(12, 'Richard Levi', 'Mumbai Indians', 'Batsman', 85),
(13, 'Clint Mckay', 'Mumbai Indians', 'Bowler', 90),
(14, 'Lasith Malinga', 'Mumbai Indians', 'Bowler', 95),
(15, 'Munaf Patel', 'Mumbai Indians', 'Bowler', 85),
(16, 'R P Singh', 'Mumbai Indians', 'Bowler', 85),
(17, 'Pragyan Ojha', 'Mumbai Indians', 'Bowler', 90),
(18, 'Thisara Perera', 'Mumbai Indians', 'All Rounder', 90),
(19, 'Ambati Rayadu', 'Mumbai Indians', 'Batsman', 85),
(20, 'Rohit Sharma', 'Mumbai Indians', 'Batsman', 95),
(21, 'Robin Peterson', 'Mumbai Indians', 'Bowler', 80),
(22, 'Kieron Pollard', 'Mumbai Indians', 'All Rounder', 100),
(23, 'T Suman ', 'Mumbai Indians', 'Batsman', 80),
(24, 'Aditya Tare', 'Mumbai Indians', 'Wicketkeeper', 80),
(25, 'Suryakumar Yadav', 'Mumbai Indians', 'Batsman', 75),
(26, 'Ms Dhoni ', 'Chennai Super Kings', 'Wicketkeeper', 100),
(27, 'S Badrinath', 'Chennai Super Kings', 'Batsman', 85),
(28, 'S Anirudha', 'Chennai Super Kings', 'Batsman', 80),
(29, 'R Ashwin', 'Chennai Super Kings', 'Bowler', 90),
(30, 'S Raina', 'Chennai Super Kings', 'Batsman', 95),
(31, 'R Jadeja', 'Chennai Super Kings', 'All Rounder', 90),
(32, 'Doug Bollinger ', 'Chennai Super Kings', 'Bowler', 90),
(33, 'Faf Du Plessis', 'Chennai Super Kings', 'Batsman', 85),
(34, 'Dwayne Bravo', 'Chennai Super Kings', 'All Rounder', 90),
(35, 'George Bailey', 'Chennai Super Kings', 'Batsman', 80),
(36, 'Mike Hussey', 'Chennai Super Kings', 'Batsman', 100),
(37, 'Ben Hilfenhaus', 'Chennai Super Kings', 'Bowler', 90),
(38, 'S Jakati', 'Chennai Super Kings', 'Bowler', 85),
(39, 'S Randiv ', 'Chennai Super Kings', 'Bowler', 85),
(40, 'Albie Morkel', 'Chennai Super Kings', 'All Rounder', 95),
(41, 'Nuwan Kulasekara', 'Chennai Super Kings', 'Bowler', 90),
(42, 'Joginder Sharma ', 'Chennai Super Kings', 'Bowler', 80),
(43, 'Yomahesh', 'Chennai Super Kings', 'Bowler', 75),
(44, 'Murali Vijay', 'Chennai Super Kings', 'Batsman', 85),
(45, 'Abhinav Mukund', 'Chennai Super Kings', 'Batsman', 80),
(46, 'Scott Styris', 'Chennai Super Kings', 'All Rounder', 85),
(47, 'Sudeep Tyagi', 'Chennai Super Kings', 'Bowler', 80),
(48, 'G Vignesh', 'Chennai Super Kings', 'Batsman', 75),
(49, 'W Saha', 'Chennai Super Kings', 'Wicketkeeper', 80),
(50, 'Rahul Dravid ', 'Rajasthan Royals', 'Batsman', 100),
(51, 'Stuart Binny', 'Rajasthan Royals', 'Batsman', 80),
(52, 'Johan Botha', 'Rajasthan Royals', 'All Rounder', 90),
(53, 'Shane Watson', 'Rajasthan Royals', 'All Rounder', 100),
(54, 'Dinesh Chandimal', 'Rajasthan Royals', 'Wicketkeeper', 90),
(55, 'Aakash Chopra', 'Rajasthan Royals', 'Batsman', 75),
(56, 'Paul Colingwood', 'Rajasthan Royals', 'Batsman', 90),
(57, 'Aditya Dole', 'Rajasthan Royals', 'Bowler', 75),
(58, 'Shaun Tait', 'Rajasthan Royals', 'Bowler', 90),
(59, 'Ashok Maneria', 'Rajasthan Royals', 'Batsman', 85),
(60, 'Faiz Fazal ', 'Rajasthan Royals', 'Batsman', 80),
(61, 'Brad Hodge', 'Rajasthan Royals', 'Batsman', 90),
(62, 'Brad Hogg', 'Rajasthan Royals', 'Bowler', 85),
(63, 'Pinal Shah', 'Rajasthan Royals', 'Wicketkeeper', 85),
(64, 'Oawis Shah', 'Rajasthan Royals', 'Batsman', 90),
(65, 'Siddharth Trivedi', 'Rajasthan Royals', 'Bowler', 85),
(66, 'Amit Singh', 'Rajasthan Royals', 'Bowler', 85),
(67, 'Sreesanth', 'Rajasthan Royals', 'Bowler', 90),
(68, 'Ajinkya Rahane ', 'Rajasthan Royals', 'Batsman', 90),
(69, 'Abhishek Raut', 'Rajasthan Royals', 'Batsman', 85),
(70, 'D Yagnik', 'Rajasthan Royals', 'Wicketkeeper', 75),
(71, 'Virender Sehwag', 'Delhi Daredevils', 'Batsman', 100),
(72, 'Varun Aaron', 'Delhi Daredevils', 'Bowler', 85),
(73, 'Ajit Agarkar', 'Delhi Daredevils', 'Bowler', 85),
(74, 'Manprit Juneja', 'Delhi Daredevils', 'Batsman', 80),
(75, 'Doug Bracewell', 'Delhi Daredevils', 'Bowler', 90),
(76, 'Mahela Jayawardene', 'Delhi Daredevils', 'Batsman', 100),
(77, 'Aaron Finch', 'Delhi Daredevils', 'Batsman', 90),
(78, 'Naman Ojha', 'Delhi Daredevils', 'Wicketkeeper', 85),
(79, 'Kevin Pieterson', 'Delhi Daredevils', 'Batsman', 95),
(80, 'Yogesh Nagar', 'Delhi Daredevils', 'Batsman', 85),
(81, 'Morne Morkel', 'Delhi Daredevils', 'Bowler', 90),
(82, 'Irfan Pathan', 'Delhi Daredevils', 'All Rounder', 90),
(83, 'A Salvi ', 'Delhi Daredevils', 'Bowler', 80),
(84, 'Andre Russell', 'Delhi Daredevils', 'Bowler', 85),
(85, 'Venu Gopal Rao', 'Delhi Daredevils', 'Batsman', 85),
(86, 'Van Der Merwe', 'Delhi Daredevils', 'All Rounder', 90),
(87, 'Ross Taylor', 'Delhi Daredevils', 'Batsman', 95),
(88, 'David Warner', 'Delhi Daredevils', 'Batsman', 100),
(89, 'Umesh Yadav', 'Delhi Daredevils', 'Bowler', 85),
(90, 'Colin Ingram', 'Delhi Daredevils', 'Batsman', 85),
(91, 'Travis Birt', 'Delhi Daredevils', 'Batsman', 85),
(92, 'Daniel Vettori', 'Royal Challengers Bangalore', 'All Rounder', 95),
(93, 'Mayank Agarwal', 'Royal Challengers Bangalore', 'Batsman', 85),
(94, 'Ab De Villiers', 'Royal Challengers Bangalore', 'Wicketkeeper', 95),
(95, 'T Dilshan', 'Royal Challengers Bangalore', 'Batsman', 95),
(96, 'Chris Gayle', 'Royal Challengers Bangalore', 'Batsman', 105),
(97, 'Virat Kohli', 'Royal Challengers Bangalore', 'Batsman', 100),
(98, 'S Aravind', 'Royal Challengers Bangalore', 'Bowler', 85),
(99, 'Arun Karthik', 'Royal Challengers Bangalore', 'Batsman', 80),
(100, 'Mohammad Kaif', 'Royal Challengers Bangalore', 'Batsman', 80),
(101, 'Zaheer Khan', 'Royal Challengers Bangalore', 'Bowler', 95),
(102, 'Abhimanyu Mithun', 'Royal Challengers Bangalore', 'Bowler', 85),
(103, 'M Muralidharan', 'Royal Challengers Bangalore', 'Bowler', 95),
(104, 'Charl Lageveldt', 'Royal Challengers Bangalore', 'Bowler', 90),
(105, 'Andrew Mcdonald', 'Royal Challengers Bangalore', 'All Rounder', 85),
(106, 'Pomersbach', 'Royal Challengers Bangalore', 'Batsman', 90),
(107, 'Dirk Nannes', 'Royal Challengers Bangalore', 'Bowler', 90),
(108, 'Cheteshwar Pujara', 'Royal Challengers Bangalore', 'Batsman', 85),
(109, 'Asad Pathan', 'Royal Challengers Bangalore', 'Bowler', 75),
(110, 'Vinay Kumar', 'Royal Challengers Bangalore', 'Bowler', 90),
(111, 'Saurabh Tiwari', 'Royal Challengers Bangalore', 'Batsman', 90),
(112, 'Gautam Gambhir', 'Kolkata Knight Riders', 'Batsman', 100),
(113, 'L Balaji', 'Kolkata Knight Riders', 'Bowler', 85),
(114, 'Rajat Bhatia', 'Kolkata Knight Riders', 'Bowler', 80),
(115, 'J Kallis', 'Kolkata Knight Riders', 'All Rounder', 105),
(116, 'Brad Haddin ', 'Kolkata Knight Riders', 'Wicketkeeper', 85),
(117, 'Brett Lee', 'Kolkata Knight Riders', 'Bowler', 90),
(118, 'Yousuf Pathan', 'Kolkata Knight Riders', 'All Rounder', 95),
(119, 'M Bisla', 'Kolkata Knight Riders', 'Batsman', 80),
(120, 'Iqbal Abdulla', 'Kolkata Knight Riders', 'Bowler', 90),
(121, 'Marchant De Lange', 'Kolkata Knight Riders', 'Batsman', 85),
(122, 'Brendon Mcullum', 'Kolkata Knight Riders', 'Wicketkeeper', 95),
(123, 'Sunil Naraine', 'Kolkata Knight Riders', 'Bowler', 85),
(124, 'Shakib Al Hasan', 'Kolkata Knight Riders', 'All Rounder', 95),
(125, 'Eoin Morgan', 'Kolkata Knight Riders', 'Batsman', 90),
(126, 'James Pattinson', 'Kolkata Knight Riders', 'Bowler', 85),
(127, 'Manoj Tiwary', 'Kolkata Knight Riders', 'Batsman', 90),
(128, 'Jaydev Unadkat', 'Kolkata Knight Riders', 'Bowler', 85),
(129, 'Doeschate', 'Kolkata Knight Riders', 'All Rounder', 85),
(130, 'L Shukla', 'Kolkata Knight Riders', 'Batsman', 80),
(131, 'Pradeep Sangwan', 'Kolkata Knight Riders', 'Bowler', 85),
(132, 'K Sangakara', 'Kings XI Punjab', 'Wicketkeeper', 105),
(133, 'Ashish Reddy', 'Kings XI Punjab', 'Batsman', 75),
(134, 'Darren Bravo', 'Kings XI Punjab', 'Batsman', 90),
(135, 'Daniel Christian', 'Kings XI Punjab', 'All Rounder', 90),
(136, 'Shikhar Dhawan', 'Kings XI Punjab', 'Batsman', 85),
(137, 'Bharat Chipli', 'Kings XI Punjab', 'Batsman', 80),
(138, 'Jp Duminy', 'Kings XI Punjab', 'All Rounder', 95),
(139, 'Manpreet Gony', 'Kings XI Punjab', 'Bowler', 80),
(140, 'Abhishek Jhunjhunwala', 'Kings XI Punjab', 'Batsman', 80),
(141, 'Daniel Harris', 'Kings XI Punjab', 'Batsman', 75),
(142, 'Amit Mishra', 'Kings XI Punjab', 'Bowler', 90),
(143, 'Parthiv Patel ', 'Kings XI Punjab', 'Wicketkeeper', 85),
(144, 'Ravi Teja', 'Kings XI Punjab', 'Batsman', 85),
(145, 'Ishant Sharma', 'Kings XI Punjab', 'Bowler', 90),
(146, 'Sunny Sohal', 'Kings XI Punjab', 'Batsman', 85),
(147, 'Dale Steyn', 'Kings XI Punjab', 'Bowler', 95),
(148, 'Tanmay Shrivastava', 'Kings XI Punjab', 'Batsman', 75),
(149, 'Rusty Theron', 'Kings XI Punjab', 'Bowler', 90),
(150, 'Cameron White', 'Kings XI Punjab', 'All Rounder', 90),
(151, 'Chris Lynn', 'Kings XI Punjab', 'Batsman', 80),
(152, 'Adam Gilchrist', 'Deccan Chargers', 'Wicketkeeper', 105),
(153, 'Azhar Mahmood', 'Deccan Chargers', 'Bowler', 75),
(154, 'Stuart Broad', 'Deccan Chargers', 'All Rounder', 90),
(155, 'Piyush Chawala', 'Deccan Chargers', 'Bowler', 90),
(156, 'Siddharth Chitnis', 'Deccan Chargers', 'Batsman', 75),
(157, 'Paras Dogra', 'Deccan Chargers', 'Batsman', 75),
(158, 'James Faulkner', 'Deccan Chargers', 'Batsman', 85),
(159, 'Harmeet Singh ', 'Deccan Chargers', 'Bowler', 85),
(160, 'Ryan Harris', 'Deccan Chargers', 'Bowler', 90),
(161, 'David Hussey ', 'Deccan Chargers', 'All Rounder', 95),
(162, 'Praveen Kumar ', 'Deccan Chargers', 'Bowler', 90),
(163, 'Bhargav Bhat', 'Deccan Chargers', 'Bowler', 75),
(164, 'Bipul Sharma', 'Deccan Chargers', 'Batsman', 80),
(165, 'Lov Ablish', 'Deccan Chargers', 'Batsman', 80),
(166, 'Amit Yadav', 'Deccan Chargers', 'Batsman', 80),
(167, 'Shaun Marsh', 'Deccan Chargers', 'Batsman', 90),
(168, 'Dimitri Mascharenhas', 'Deccan Chargers', 'Bowler', 85),
(169, 'Mandeep Singh', 'Deccan Chargers', 'Batsman', 80),
(170, 'Abhishek Nayar', 'Deccan Chargers', 'Batsman', 85),
(171, 'David Miller', 'Deccan Chargers', 'Batsman', 85),
(172, 'Ramesh Powar', 'Deccan Chargers', 'Bowler', 80),
(173, 'R Sathish', 'Deccan Chargers', 'Batsman', 85),
(174, 'Paul Valthaty', 'Deccan Chargers', 'Batsman', 90),
(175, 'Sunny Singh', 'Deccan Chargers', 'Bowler', 80),
(176, 'Saurav Ganguly', 'Pune Warriors India', 'Batsman', 95),
(177, 'Eklavya Dwivedi', 'Pune Warriors India', 'Wicketkeeper', 85),
(178, 'Ashok Dinda', 'Pune Warriors India', 'Bowler', 90),
(179, 'Callum Ferguson', 'Pune Warriors India', 'Batsman', 85),
(180, 'R Gomez', 'Pune Warriors India', 'All Rounder', 85),
(181, 'Harpreet Singh', 'Pune Warriors India', 'Batsman', 85),
(182, 'James Hopes', 'Pune Warriors India', 'All Rounder', 85),
(183, 'Dheeraj Jadhav', 'Pune Warriors India', 'Batsman', 80),
(184, 'Kamran Khan', 'Pune Warriors India', 'Bowler', 85),
(185, 'Murali Kharthik', 'Pune Warriors India', 'Bowler', 85),
(186, 'Harshad Khadiawala', 'Pune Warriors India', 'Batsman', 80),
(187, 'Bhuvanesh Kumar', 'Pune Warriors India', 'Bowler', 80),
(188, 'Nathan Mccullum', 'Pune Warriors India', 'All Rounder', 90),
(189, 'Mithun Manhas', 'Pune Warriors India', 'Batsman', 75),
(190, 'Angelo Mathews', 'Pune Warriors India', 'All Rounder', 90),
(191, 'Manish Pandey', 'Pune Warriors India', 'Batsman', 85),
(192, 'Ashish Nehra', 'Pune Warriors India', 'Bowler', 90),
(193, 'Ali Murtaza', 'Pune Warriors India', 'Bowler', 85),
(194, 'Wayne Parnell', 'Pune Warriors India', 'Bowler', 90),
(195, 'Jesse Ryder', 'Pune Warriors India', 'Batsman', 85),
(196, 'Greame Smith', 'Pune Warriors India', 'Batsman', 90),
(197, 'Mitchell Marsh', 'Pune Warriors India', 'Bowler', 85),
(198, 'Marlon Samuels', 'Pune Warriors India', 'Batsman', 90),
(199, 'Rahul Sharma', 'Pune Warriors India', 'Bowler', 90),
(200, 'Alfonso Thomas', 'Pune Warriors India', 'Bowler', 90),
(201, 'Steven Smith', 'Pune Warriors India', 'Bowler', 85),
(202, 'Robin Uthappa', 'Pune Warriors India', 'Wicketkeeper', 95),
(203, 'Luke Wright', 'Pune Warriors India', 'Batsman', 85),
(204, 'Mohnish Mishra', 'Pune Warriors India', 'Batsman', 75);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `day_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `confirm` int(1) NOT NULL DEFAULT '0',
  `confirm_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `pass`, `email`, `first_name`, `last_name`, `last_activity`, `nick`, `ip`, `confirm`, `confirm_string`) VALUES
(1, 'test', '098f6bcd4621d373cade4e832627b4f6', 'test@daiict.ac.in', 'rr', 'fdhgd', '2012-03-28 20:10:46', 'hdf', '127.0.0.1', 0, 'dGVzdA=='),
(2, 'vds', '51888604cf507f0d151b78db9eed4e30', 'vds@da.cn', 'dfhf', 'hdfh', '2012-03-28 20:11:05', 'ng', '127.0.0.1', 0, 'dmRz');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `last_login_date` datetime NOT NULL,
  `ip` varchar(75) NOT NULL,
  `ctime` varchar(220) NOT NULL,
  `ckey` varchar(220) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`ID`, `USER_ID`, `last_login_date`, `ip`, `ctime`, `ckey`) VALUES
(1, 1, '2012-03-28 20:29:27', '127.0.0.1', '1332966567', 'fmdze27');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `user_ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `total_score` int(11) DEFAULT NULL,
  `coin` int(11) NOT NULL,
  `Chennai Super Kings` varchar(2500) DEFAULT NULL,
  `Deccan Chargers` varchar(2500) DEFAULT NULL,
  `Kings XI Punjab` varchar(2500) DEFAULT NULL,
  `Kolkata Knight Riders` varchar(2500) DEFAULT NULL,
  `Mumbai Indians` varchar(2500) DEFAULT NULL,
  `Pune Warriors India` varchar(2500) DEFAULT NULL,
  `Delhi Daredevils` varchar(2500) DEFAULT NULL,
  `Rajasthan Royals` varchar(2500) DEFAULT NULL,
  `Royal Challengers Bangalore` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_ID`, `username`, `total_score`, `coin`, `Chennai Super Kings`, `Deccan Chargers`, `Kings XI Punjab`, `Kolkata Knight Riders`, `Mumbai Indians`, `Pune Warriors India`, `Delhi Daredevils`, `Rajasthan Royals`, `Royal Challengers Bangalore`) VALUES
(1, 'test', 454, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'vds', 457, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
