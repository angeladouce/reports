-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2019 at 11:07 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `reports`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`) VALUES
(2, 'rice'),
(3, 'vegetables'),
(4, 'potetoes'),
(5, 'irishpotetoes'),
(6, 'meat'),
(7, 'beans'),
(8, 'skol'),
(9, 'cream'),
(10, ''),
(11, 'Icecream'),
(12, 'green vegetables'),
(13, 'tomatoes'),
(14, 'tomatoes'),
(15, 'package skol'),
(16, 'cak');

-- --------------------------------------------------------

--
-- Table structure for table `product_form`
--

CREATE TABLE IF NOT EXISTS `product_form` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` int(250) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_form`
--


-- --------------------------------------------------------

--
-- Table structure for table `stock_in`
--

CREATE TABLE IF NOT EXISTS `stock_in` (
  `product_id` int(250) NOT NULL,
  `date` date NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `unity_price` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

INSERT INTO `stock_in` (`product_id`, `date`, `quantity`, `unity_price`) VALUES
(3, '2019-07-25', '10', 700),
(2, '2019-07-25', '7', 600),
(2, '2019-07-25', '78', 87889);

-- --------------------------------------------------------

--
-- Table structure for table `stock_out`
--

CREATE TABLE IF NOT EXISTS `stock_out` (
  `product_id` int(250) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

INSERT INTO `stock_out` (`product_id`, `date`, `quantity`) VALUES
(3, '2019-07-25', 3),
(6, '2019-07-30', 5),
(4, '2019-07-25', 6),
(4, '2019-07-25', 6),
(4, '2019-07-25', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(34) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'mugisha', 'pac', 'pac', 'mugisha'),
(2, 'hirwa', 'ange', 'ange ladouce', 'blandine');
