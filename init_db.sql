-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 11 juil. 2019 à 20:19
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `upload_photos`
--

-- --------------------------------------------------------

--
-- Structure de la table `markers`
--

DROP TABLE IF EXISTS `markers`;
CREATE TABLE IF NOT EXISTS `markers` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lng` float NOT NULL,
  `lat` float NOT NULL,
  `altitude` int(11) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lng`, `lat`, `altitude`, `upload_date`, `type`) VALUES
(1, 'Love.Fish', '580 Darling Street, Rozelle, NSW', 151.172, -33.861, NULL, NULL, 'jpeg'),
(2, 'Young Henrys', '76 Wilford Street, Newtown, NSW', 151.174, -33.8981, NULL, NULL, 'png'),
(3, 'Hunter Gatherer', 'Greenwood Plaza, 36 Blue St, North Sydney NSW', 151.207, -33.8403, NULL, NULL, 'png'),
(4, 'The Potting Shed', '7A, 2 Huntley Street, Alexandria, NSW', 151.194, -33.9108, NULL, NULL, 'png'),
(5, 'Nomad', '16 Foster Street, Surry Hills, NSW', 151.21, -33.8799, NULL, NULL, 'png'),
(6, 'Three Blue Ducks', '43 Macpherson Street, Bronte, NSW', 151.264, -33.9064, NULL, NULL, 'jpeg'),
(42, 'Quiberon', 'John Doe', -3.14242, 47.4902, NULL, '2019-06-27 02:58:52', 'jpeg'),
(10, 'Kerfany', 'Kerfany', 47.8079, -3.71054, NULL, NULL, 'jpeg'),
(11, 'Quimper', 'Quimper', -4.09666, 47.9963, NULL, NULL, 'jpg'),
(35, 'Brest', 'Brest', -4.46736, 48.4228, NULL, '2019-06-19 00:00:00', 'jpeg'),
(23, 'test', 'John Doe', -3.39569, 47.7027, NULL, '2019-06-15 03:41:40', 'jpeg'),
(27, 'Ecosse', 'John Doe', -6.18284, 57.4577, NULL, '2019-06-18 13:51:45', 'jpeg'),
(32, 'Canada', 'testCA', -64.4223, 43.988, NULL, '2019-06-19 00:00:00', 'jpeg'),
(44, 'Kenya', 'John Doe', 47.8079, -5.71054, 100, '2019-06-19 00:00:00', 'jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE IF NOT EXISTS `photos` (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `exif` varchar(255) NOT NULL,
  `finalname` varchar(255) NOT NULL DEFAULT '0',
  `upload_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`id`, `name`, `filesize`, `exif`, `finalname`, `upload_date`) VALUES
(1, 'dfssf', 0, '4', '', '2019-05-24 00:00:00'),
(2, 'Ecosse', 0, '4', '', '2019-05-26 00:00:00'),
(3, 'Moi', 0, '4', '', '2019-05-26 00:00:00'),
(4, 'tihany', 0, '4', '', '2019-05-27 00:00:00'),
(5, 'tihany', 0, '4', '', '2019-05-27 00:00:00'),
(6, 'Budapest', 0, '4', '', '2019-05-27 00:00:00'),
(9, 'tihany', 0, '4', '0', '2019-05-27 21:56:17'),
(10, 'tihany', 0, '4', '0', '2019-05-27 22:52:38'),
(11, 'dfsfsdf', 0, '4', '0', '2019-05-27 22:52:50'),
(12, 'dfsfsdf', 0, '4', '0', '2019-05-31 04:55:49'),
(13, 'dfsfsdf', 0, '4', '0', '2019-05-31 04:56:05'),
(14, 'Dji', 0, '4', '0', '2019-05-31 04:56:33'),
(15, 'dji', 0, '4', '0', '2019-05-31 04:56:46'),
(17, 'drone', 0, '4', '0', '2019-06-01 18:32:05'),
(18, 'drone', 0, '4', '0', '2019-06-01 18:32:12'),
(19, 'titre', 0, '4', '0', '2019-06-06 22:35:01'),
(20, 'titre', 0, '4', '0', '2019-06-06 22:37:41'),
(21, 'titre', 0, '4', '0', '2019-06-06 22:43:39'),
(22, 'pano', 0, '4', '0', '2019-06-07 06:07:47'),
(23, 'pano', 0, '4', '0', '2019-06-07 06:13:25'),
(24, 'pano', 0, '4', '0', '2019-06-07 06:14:25'),
(25, 'pano', 0, '4', '0', '2019-06-07 22:02:42'),
(26, 'pano', 0, '4', '0', '2019-06-07 22:03:11'),
(27, 'pano', 0, '4', '0', '2019-06-07 22:17:59'),
(28, 'pano', 0, '4', '0', '2019-06-07 22:30:42'),
(29, 'pano', 0, '4', '0', '2019-06-07 22:57:29'),
(30, 'pano', 0, '4', '0', '2019-06-07 22:58:45'),
(31, 'pano', 0, '4', '0', '2019-06-07 23:57:57'),
(32, 'pano', 0, '4', '0', '2019-06-08 01:30:45'),
(33, 'pano', 0, '4', '0', '2019-06-08 01:31:30'),
(34, 'pano', 0, '4', '0', '2019-06-08 01:32:13'),
(35, 'pano', 0, '4', '0', '2019-06-08 04:08:57'),
(36, 'pano', 0, '4', '0', '2019-06-08 04:36:04'),
(37, 'pano', 0, '4', '0', '2019-06-08 04:36:40'),
(38, 'pano', 0, '4', '0', '2019-06-08 04:37:04'),
(39, 'pano', 0, '4', '0', '2019-06-08 04:49:04'),
(40, 'pano', 0, '4', '0', '2019-06-08 04:50:01'),
(41, 'pano', 0, '4', '0', '2019-06-08 04:52:03'),
(42, 'pano', 0, '4', '0', '2019-06-08 04:52:26'),
(43, 'pano', 0, '4', '0', '2019-06-08 04:54:21'),
(44, 'pano', 0, '4', '0', '2019-06-08 04:54:30'),
(45, 'pano', 0, '4', '0', '2019-06-08 04:55:32'),
(46, 'pano', 0, '4', '0', '2019-06-08 04:56:17'),
(47, 'pano', 0, '4', '0', '2019-06-08 04:56:38'),
(48, 'pano', 0, '4', '0', '2019-06-08 04:57:16'),
(49, 'pano', 0, '4', '0', '2019-06-08 04:57:40'),
(50, 'pano', 0, '4', '0', '2019-06-08 04:59:27'),
(51, 'pano', 0, '4', '0', '2019-06-08 05:00:34'),
(52, 'pano', 0, '4', '0', '2019-06-08 05:02:25'),
(53, 'pano', 0, '4', '0', '2019-06-08 05:04:27'),
(54, 'pano', 0, '4', '0', '2019-06-08 05:05:14'),
(55, 'pano', 0, '4', '0', '2019-06-08 05:07:36'),
(56, 'pano', 0, '4', '0', '2019-06-08 05:07:51'),
(57, 'pano', 0, '4', '0', '2019-06-08 06:08:48'),
(58, 'pano', 0, '4', '0', '2019-06-08 06:09:53'),
(59, 'pano', 0, '4', '0', '2019-06-08 06:10:11'),
(60, 'pano', 0, '4', '0', '2019-06-08 06:11:10'),
(61, 'pano', 0, '4', '0', '2019-06-08 06:11:21'),
(62, 'pano', 0, '4', '0', '2019-06-08 06:16:46'),
(63, 'pano', 0, '4', '0', '2019-06-08 06:17:26'),
(64, 'pano', 0, '4', '0', '2019-06-08 06:18:01'),
(65, 'pano', 0, '4', '0', '2019-06-08 06:18:23'),
(66, 'pano', 0, '4', '0', '2019-06-08 06:18:40'),
(67, 'pano', 0, '4', '0', '2019-06-08 06:18:48'),
(68, 'pano', 0, '4', '0', '2019-06-08 06:20:04'),
(69, 'pano', 0, '4', '0', '2019-06-08 06:20:12'),
(70, 'pano', 0, '4', '0', '2019-06-08 06:43:46'),
(71, 'pano', 0, '4', '0', '2019-06-08 06:44:31'),
(72, 'pano', 0, '4', '0', '2019-06-08 06:45:18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
