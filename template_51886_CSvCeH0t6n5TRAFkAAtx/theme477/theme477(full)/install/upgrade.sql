-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2014 at 03:03 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `477`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(15, 'slideshow', 1),
(16, 'banners', 1),
(21, 'banner-aside', 1),
(22, 'banner-bottom', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL auto_increment,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=886 ;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(732, 15, 'index.php?route=product/product&amp;amp;product_id=29', 'data/slide-1.jpg'),
(731, 15, 'index.php?route=product/product&amp;amp;product_id=32', 'data/slide-3.jpg'),
(730, 15, 'index.php?route=product/product&amp;amp;product_id=28', 'data/slide-2.jpg'),
(840, 16, 'index.php?route=product/product&amp;product_id=33', 'data/banner-1.jpg'),
(841, 21, 'index.php?route=product/product&amp;product_id=46', 'data/banner-aside.jpg'),
(839, 16, 'index.php?route=product/product&amp;product_id=36', 'data/banner-2.jpg'),
(838, 16, 'index.php?route=product/product&amp;product_id=35', 'data/banner-3.jpg'),
(837, 16, 'index.php?route=product/product&amp;product_id=29', 'data/banner-4.jpg'),
(836, 16, 'index.php?route=product/product&amp;product_id=32', 'data/banner-5.jpg'),
(835, 16, 'index.php?route=product/special', 'data/banner-6.jpg'),
(885, 22, 'index.php?route=product/product&amp;path=20&amp;product_id=33', 'data/banner-bottom1.jpg'),
(884, 22, 'index.php?route=product/product&amp;path=20&amp;product_id=35', 'data/banner-bottom2.jpg'),
(883, 22, 'index.php?route=product/product&amp;path=20&amp;product_id=46', 'data/banner-bottom3.jpg'),
(882, 22, 'index.php?route=product/product&amp;path=20&amp;product_id=29', 'data/banner-bottom4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(841, 3, 21, 'banner-1', 0x266c743b7370616e2667743b266c743b7370616e2667743b46726565266c743b2f7370616e2667743b266c743b62722667743b5368697070696e67266c743b2f7370616e2667743b266c743b62722667743b0d0a4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642e),
(841, 2, 21, 'banner-1', 0x266c743b7370616e2667743b266c743b7370616e2667743b46726565266c743b2f7370616e2667743b266c743b62722667743b5368697070696e67266c743b2f7370616e2667743b266c743b62722667743b0d0a4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642e),
(840, 2, 16, 'banner-1', 0x266c743b6469762667743b266c743b7370616e2667743b436f6f6b77617265266c743b2f7370616e2667743b266c743b2f6469762667743b),
(840, 3, 16, 'banner-1', 0x266c743b6469762667743b266c743b7370616e2667743b436f6f6b77617265266c743b2f7370616e2667743b266c743b2f6469762667743b),
(841, 1, 21, 'banner-1', 0x266c743b7370616e2667743b266c743b7370616e2667743b46726565266c743b2f7370616e2667743b266c743b62722667743b5368697070696e67266c743b2f7370616e2667743b266c743b62722667743b0d0a4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642e),
(838, 3, 16, 'banner-3', 0x266c743b6469762667743b266c743b7370616e2667743b576f6b73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(839, 1, 16, 'banner-2', 0x266c743b6469762667743b266c743b7370616e2667743b436f6f6b696e67205574656e73696c73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(839, 2, 16, 'banner-2', 0x266c743b6469762667743b266c743b7370616e2667743b436f6f6b696e67205574656e73696c73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(839, 3, 16, 'banner-2', 0x266c743b6469762667743b266c743b7370616e2667743b436f6f6b696e67205574656e73696c73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(840, 1, 16, 'banner-1', 0x266c743b6469762667743b266c743b7370616e2667743b436f6f6b77617265266c743b2f7370616e2667743b266c743b2f6469762667743b),
(838, 2, 16, 'banner-3', 0x266c743b6469762667743b266c743b7370616e2667743b576f6b73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(838, 1, 16, 'banner-3', 0x266c743b6469762667743b266c743b7370616e2667743b576f6b73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(837, 3, 16, 'banner-4', 0x266c743b6469762667743b266c743b7370616e2667743b4772696c6c2050616e73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(837, 1, 16, 'banner-4', 0x266c743b6469762667743b266c743b7370616e2667743b4772696c6c2050616e73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(837, 2, 16, 'banner-4', 0x266c743b6469762667743b266c743b7370616e2667743b4772696c6c2050616e73266c743b2f7370616e2667743b266c743b2f6469762667743b),
(836, 3, 16, 'banner-5', 0x266c743b6469762667743b266c743b7370616e2667743b4b6e69766573266c743b2f7370616e2667743b266c743b2f6469762667743b),
(836, 1, 16, 'banner-5', 0x266c743b6469762667743b266c743b7370616e2667743b4b6e69766573266c743b2f7370616e2667743b266c743b2f6469762667743b),
(836, 2, 16, 'banner-5', 0x266c743b6469762667743b266c743b7370616e2667743b4b6e69766573266c743b2f7370616e2667743b266c743b2f6469762667743b),
(835, 1, 16, 'banner-6', 0x266c743b64697620636c6173733d2671756f743b62616e6e65722d73616c652671756f743b2667743b0d0a266c743b7370616e2667743b5341564520266c743b7370616e2667743b323025266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b62722667743b0d0a4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642e0d0a266c743b2f6469762667743b),
(835, 3, 16, 'banner-6', 0x266c743b64697620636c6173733d2671756f743b62616e6e65722d73616c652671756f743b2667743b0d0a266c743b7370616e2667743b5341564520266c743b7370616e2667743b323025266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b62722667743b0d0a4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642e0d0a266c743b2f6469762667743b),
(732, 3, 15, 'slide-1', ''),
(835, 2, 16, 'banner-6', 0x266c743b64697620636c6173733d2671756f743b62616e6e65722d73616c652671756f743b2667743b0d0a266c743b7370616e2667743b5341564520266c743b7370616e2667743b323025266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b62722667743b0d0a4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642e0d0a266c743b2f6469762667743b),
(732, 2, 15, 'slide-1', ''),
(732, 1, 15, 'slide-1', ''),
(731, 3, 15, 'slide-2', ''),
(731, 2, 15, 'slide-2', ''),
(731, 1, 15, 'slide-2', ''),
(730, 3, 15, 'slide-3', ''),
(730, 2, 15, 'slide-3', ''),
(730, 1, 15, 'slide-3', ''),
(885, 3, 22, 'Lorem ipsum dolor ', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33332671756f743b2667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33332671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(885, 1, 22, 'Lorem ipsum dolor ', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33332671756f743b2667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33332671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(885, 2, 22, 'Lorem ipsum dolor ', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33332671756f743b2667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e73266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33332671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(882, 3, 22, 'Isum dolor sit amet', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d32392671756f743b2667743b4973756d20646f6c6f722073697420616d657420636f6e73266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b706174683d323026616d703b616d703b70726f647563745f69643d32392671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(883, 1, 22, 'Non proident, sunt', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d34362671756f743b2667743b4e6f6e2070726f6964656e742c2073756e7420696e2063756c706120717569206f66266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d34362671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(883, 2, 22, 'Non proident, sunt', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d34362671756f743b2667743b4e6f6e2070726f6964656e742c2073756e7420696e2063756c706120717569206f66266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d34362671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(883, 3, 22, 'Non proident, sunt', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d34362671756f743b2667743b4e6f6e2070726f6964656e742c2073756e7420696e2063756c706120717569206f66266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d34362671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(884, 1, 22, 'Excepteur sint occaecat', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33352671756f743b2667743b4578636570746575722073696e74206f6363616563617420637570696461746174266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33352671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(884, 2, 22, 'Excepteur sint occaecat', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33352671756f743b2667743b4578636570746575722073696e74206f6363616563617420637570696461746174266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33352671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(884, 3, 22, 'Excepteur sint occaecat', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33352671756f743b2667743b4578636570746575722073696e74206f6363616563617420637570696461746174266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d33352671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(882, 1, 22, 'Isum dolor sit amet', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d32392671756f743b2667743b4973756d20646f6c6f722073697420616d657420636f6e73266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d32392671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b),
(882, 2, 22, 'Isum dolor sit amet', 0x266c743b68312667743b266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d32392671756f743b2667743b4973756d20646f6c6f722073697420616d657420636f6e73266c743b2f612667743b266c743b2f68312667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e0d0a266c743b6120687265663d2671756f743b696e6465782e7068703f726f7574653d70726f647563742f70726f6475637426616d703b616d703b706174683d323026616d703b616d703b70726f647563745f69643d32392671756f743b2667743b266c743b6920636c6173733d2671756f743b66612066612d616e676c652d72696768742671756f743b2667743b266c743b2f692667743b266c743b2f612667743b266c743b2f702667743b);

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY  (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=498 ;

--
-- Dumping data for table `extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(468, 'module', 'latest'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(445, 'module', 'filter'),
(464, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(444, 'module', 'featured'),
(440, 'module', 'banner'),
(467, 'module', 'information'),
(465, 'module', 'affiliate'),
(466, 'module', 'bestseller'),
(493, 'module', 'newcarousel'),
(449, 'module', 'special'),
(481, 'shipping', 'free'),
(494, 'module', 'compare'),
(495, 'module', 'vqmod_manager'),
(496, 'module', 'category'),
(497, 'module', 'manufacturer');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL auto_increment,
  `store_id` int(11) NOT NULL default '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY  (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6204 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(5884, 0, 'newcarousel', 'newcarousel_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"15";s:5:"width";s:4:"1920";s:6:"height";s:3:"938";s:9:"layout_id";s:1:"1";s:8:"position";s:10:"header_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(3047, 0, 'flat', 'flat_sort_order', '1', 0),
(3046, 0, 'flat', 'flat_status', '1', 0),
(3045, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(3044, 0, 'flat', 'flat_tax_class_id', '9', 0),
(3043, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(4804, 0, 'account', 'account_module', 'a:7:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:6;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5892, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"268";s:12:"image_height";s:3:"252";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(4810, 0, 'compare', 'compare_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(4805, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5238, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5243, 0, 'information', 'information_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(6203, 0, 'config', 'config_google_analytics', '', 0),
(6202, 0, 'config', 'config_error_filename', 'error.txt', 0),
(6201, 0, 'config', 'config_error_log', '1', 0),
(6196, 0, 'config', 'config_maintenance', '0', 0),
(6197, 0, 'config', 'config_password', '1', 0),
(6198, 0, 'config', 'config_encryption', '26f7a697fcdb5900b830d493cb67f7b9', 0),
(6199, 0, 'config', 'config_compression', '0', 0),
(6200, 0, 'config', 'config_error_display', '1', 0),
(6195, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(6193, 0, 'config', 'config_seo_url', '0', 0),
(6194, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(2056, 0, 'newslideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"14";s:5:"width";s:4:"1000";s:6:"height";s:3:"400";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(3051, 0, 'free', 'free_sort_order', '2', 0),
(3050, 0, 'free', 'free_status', '0', 0),
(3049, 0, 'free', 'free_geo_zone_id', '0', 0),
(3048, 0, 'free', 'free_total', '', 0),
(5894, 0, 'bestseller', 'bestseller_module', 'a:3:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"268";s:12:"image_height";s:3:"252";s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"268";s:12:"image_height";s:3:"252";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"268";s:12:"image_height";s:3:"252";s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(6192, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwget\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(6191, 0, 'config', 'config_shared', '0', 0),
(6190, 0, 'config', 'config_secure', '0', 0),
(5893, 0, 'latest', 'latest_module', 'a:2:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"268";s:12:"image_height";s:3:"252";s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"268";s:12:"image_height";s:3:"252";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5889, 0, 'featured', 'product', '', 0),
(5890, 0, 'featured', 'featured_product', '32,29,36,33,35,46', 0),
(5891, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"6";s:11:"image_width";s:3:"268";s:12:"image_height";s:3:"252";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(6188, 0, 'config', 'config_fraud_score', '', 0),
(6189, 0, 'config', 'config_fraud_status_id', '7', 0),
(6187, 0, 'config', 'config_fraud_key', '', 0),
(6186, 0, 'config', 'config_fraud_detection', '0', 0),
(6185, 0, 'config', 'config_alert_emails', '', 0),
(6184, 0, 'config', 'config_account_mail', '0', 0),
(6183, 0, 'config', 'config_alert_mail', '0', 0),
(6182, 0, 'config', 'config_smtp_timeout', '5', 0),
(6181, 0, 'config', 'config_smtp_port', '25', 0),
(6178, 0, 'config', 'config_smtp_host', '', 0),
(6179, 0, 'config', 'config_smtp_username', '', 0),
(6180, 0, 'config', 'config_smtp_password', '', 0),
(6177, 0, 'config', 'config_mail_parameter', '', 0),
(6176, 0, 'config', 'config_mail_protocol', 'mail', 0),
(6175, 0, 'config', 'config_ftp_status', '0', 0),
(4803, 0, 'category', 'category_module', 'a:11:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:6;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:8;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:9;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:10;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(5242, 0, 'manufacturer', 'manufacturer_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(6174, 0, 'config', 'config_ftp_root', '', 0),
(6172, 0, 'config', 'config_ftp_username', '', 0),
(6173, 0, 'config', 'config_ftp_password', '', 0),
(6170, 0, 'config', 'config_ftp_host', '192.168.9.2', 0),
(6171, 0, 'config', 'config_ftp_port', '21', 0),
(6169, 0, 'config', 'config_image_cart_height', '44', 0),
(6168, 0, 'config', 'config_image_cart_width', '47', 0),
(6167, 0, 'config', 'config_image_wishlist_height', '44', 0),
(6165, 0, 'config', 'config_image_compare_height', '85', 0),
(6166, 0, 'config', 'config_image_wishlist_width', '47', 0),
(6164, 0, 'config', 'config_image_compare_width', '90', 0),
(6163, 0, 'config', 'config_image_related_height', '158', 0),
(6161, 0, 'config', 'config_image_additional_height', '66', 0),
(6162, 0, 'config', 'config_image_related_width', '168', 0),
(6160, 0, 'config', 'config_image_additional_width', '70', 0),
(6159, 0, 'config', 'config_image_product_height', '252', 0),
(6158, 0, 'config', 'config_image_product_width', '268', 0),
(6157, 0, 'config', 'config_image_popup_height', '564', 0),
(6156, 0, 'config', 'config_image_popup_width', '600', 0),
(6155, 0, 'config', 'config_image_thumb_height', '254', 0),
(6154, 0, 'config', 'config_image_thumb_width', '270', 0),
(6153, 0, 'config', 'config_image_category_height', '181', 0),
(6152, 0, 'config', 'config_image_category_width', '193', 0),
(6151, 0, 'config', 'config_icon', 'data/favicon.png', 0),
(6150, 0, 'config', 'config_logo', 'data/logo.png', 0),
(6149, 0, 'config', 'config_return_status_id', '2', 0),
(6148, 0, 'config', 'config_return_id', '0', 0),
(6147, 0, 'config', 'config_commission', '5', 0),
(6146, 0, 'config', 'config_affiliate_id', '4', 0),
(6145, 0, 'config', 'config_stock_status_id', '5', 0),
(6144, 0, 'config', 'config_stock_checkout', '0', 0),
(6143, 0, 'config', 'config_stock_warning', '0', 0),
(6142, 0, 'config', 'config_stock_display', '0', 0),
(6141, 0, 'config', 'config_complete_status_id', '5', 0),
(6140, 0, 'config', 'config_order_status_id', '1', 0),
(6139, 0, 'config', 'config_invoice_prefix', 'INV-2012-00', 0),
(6138, 0, 'config', 'config_order_edit', '100', 0),
(6137, 0, 'config', 'config_checkout_id', '5', 0),
(6136, 0, 'config', 'config_guest_checkout', '1', 0),
(6135, 0, 'config', 'config_cart_weight', '1', 0),
(6134, 0, 'config', 'config_account_id', '3', 0),
(6133, 0, 'config', 'config_customer_price', '0', 0),
(6131, 0, 'config', 'config_customer_group_id', '1', 0),
(6132, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(5888, 0, 'banner', 'banner_module', 'a:3:{i:0;a:7:{s:9:"banner_id";s:2:"16";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:9:"layout_id";s:1:"1";s:8:"position";s:10:"header_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:9:"banner_id";s:2:"21";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:7:{s:9:"banner_id";s:2:"22";s:5:"width";s:3:"570";s:6:"height";s:3:"256";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(6130, 0, 'config', 'config_customer_online', '0', 0),
(6129, 0, 'config', 'config_tax_customer', 'shipping', 0),
(6128, 0, 'config', 'config_tax_default', 'shipping', 0),
(6127, 0, 'config', 'config_vat', '0', 0),
(6126, 0, 'config', 'config_tax', '1', 0),
(6125, 0, 'config', 'config_voucher_max', '1000', 0),
(6123, 0, 'config', 'config_download', '1', 0),
(6124, 0, 'config', 'config_voucher_min', '1', 0),
(6122, 0, 'config', 'config_review_status', '1', 0),
(6121, 0, 'config', 'config_product_count', '0', 0),
(6120, 0, 'config', 'config_admin_limit', '20', 0),
(6119, 0, 'config', 'config_catalog_limit', '6', 0),
(6118, 0, 'config', 'config_weight_class_id', '1', 0),
(6117, 0, 'config', 'config_length_class_id', '1', 0),
(6116, 0, 'config', 'config_currency_auto', '1', 0),
(6115, 0, 'config', 'config_currency', 'USD', 0),
(6113, 0, 'config', 'config_language', 'en', 0),
(6114, 0, 'config', 'config_admin_language', 'en', 0),
(6112, 0, 'config', 'config_zone_id', '3563', 0),
(6105, 0, 'config', 'config_telephone', '1-800-234-5677', 0),
(6106, 0, 'config', 'config_fax', '1-800-234-5678', 0),
(6107, 0, 'config', 'config_title', 'Kitchen supplies online store', 0),
(6108, 0, 'config', 'config_meta_description', 'Kitchen supplies online store', 0),
(6109, 0, 'config', 'config_template', 'theme477', 0),
(6110, 0, 'config', 'config_layout_id', '4', 0),
(6111, 0, 'config', 'config_country_id', '222', 0),
(6104, 0, 'config', 'config_email', 'admin@demolink.org', 0),
(6103, 0, 'config', 'config_address', '8901 Marmora Road, Glasgow, D04 89GR', 0),
(6102, 0, 'config', 'config_owner', 'Kitchen supplies online store', 0),
(6101, 0, 'config', 'config_name', 'Kitchen supplies', 0);
