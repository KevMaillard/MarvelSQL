-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 27 juil. 2021 à 14:35
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `MCU`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Birthdate` date NOT NULL,
  `Creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modification_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`ID`, `Name`, `Firstname`, `Birthdate`, `Creation_date`, `Modification_date`) VALUES
(1, 'Downey Jr', 'Robert', '1965-04-04', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(2, 'Evans', 'Chris', '1981-06-13', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(3, 'Johansson', 'Scarlett', '1984-11-22', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(4, 'Cumberbatch', 'Benedict', '1976-07-19', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(5, 'Boseman', 'Chadwick', '1976-11-29', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(6, 'Holland', 'Tom', '1996-06-01', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(7, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(8, 'Pratt', 'Chris', '1979-06-21', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(9, 'Rudd', 'Paul', '1969-04-06', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(10, 'Larson', 'Brie', '1989-10-01', '2021-07-27 13:14:14', '2021-07-27 13:15:03'),
(11, 'Lee', 'Stan', '1922-12-28', '2021-07-27 14:01:31', '2021-07-27 14:01:31');

-- --------------------------------------------------------

--
-- Structure de la table `jointure`
--

DROP TABLE IF EXISTS `jointure`;
CREATE TABLE IF NOT EXISTS `jointure` (
  `ID_Movie` int(50) NOT NULL,
  `ID_Actor` int(50) NOT NULL,
  KEY `ID_Actor` (`ID_Actor`),
  KEY `ID_Movie` (`ID_Movie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jointure`
--

INSERT INTO `jointure` (`ID_Movie`, `ID_Actor`) VALUES
(1, 1),
(2, 7),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 7),
(5, 8),
(6, 9),
(7, 4),
(8, 6),
(9, 5),
(10, 10),
(11, 3),
(2, 11),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(1, 11);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Release_date` date NOT NULL,
  `Running_time` int(50) NOT NULL,
  `Director` varchar(50) NOT NULL,
  `Creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`ID`, `Title`, `Release_date`, `Running_time`, `Director`, `Creation_date`, `Modification_date`) VALUES
(1, 'Iron Man', '2008-05-02', 126, 'Jon Favreau', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(2, 'Thor', '2011-05-06', 114, 'Kenneth Branagh', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(3, 'Captain America', '2011-07-22', 124, 'Joe Johnston', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(4, 'Avengers', '2012-05-04', 143, 'Josh Whedon', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(5, 'Les Gardiens de la Galaxie', '2014-08-01', 121, 'James Gunn', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(6, 'Ant Man', '2015-07-17', 117, 'Peyton Reed', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(7, 'Doctor Strange', '2016-11-04', 115, 'Scott Dericksson', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(8, 'SpiderMan', '2017-07-07', 133, 'Jon Watts', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(9, 'Black Panther', '2018-02-16', 134, 'Ryan Coogler', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(10, 'Captain Marvel', '2019-03-08', 124, 'Anna Boden', '2021-07-27 13:15:51', '2021-07-27 13:16:15'),
(11, 'Black Widow', '2021-07-09', 134, 'Cate Shortland', '2021-07-27 13:56:25', '2021-07-27 13:56:25');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `jointure`
--
ALTER TABLE `jointure`
  ADD CONSTRAINT `jointure_ibfk_1` FOREIGN KEY (`ID_Actor`) REFERENCES `actors` (`ID`),
  ADD CONSTRAINT `jointure_ibfk_2` FOREIGN KEY (`ID_Movie`) REFERENCES `movies` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
