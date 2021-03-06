-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 17 Février 2020 à 17:23
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ensupbdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(100) NOT NULL,
  `heures` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`id`, `theme`, `heures`) VALUES
(1, 'maths', 2);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE IF NOT EXISTS `ecole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `directeur` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE IF NOT EXISTS `enseignant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `matiere` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `idDirector` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `mail`, `adresse`, `telephone`, `matiere`, `password`, `idDirector`) VALUES
(1, 'guillemot', '', '', '', '', '', 'password', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `date_naissance` varchar(15) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `idCours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `email`, `adresse`, `telephone`, `date_naissance`, `password`, `idCours`) VALUES
(2, 'benji', 'benji', 'benji', 'benji', '0622412911', 'benji', 'benji', 0),
(3, 'guillemot', 'lorris', 'null', '37 rue henri golaudin', '0622412911', 'null', '', 0),
(4, 'guillemot', 'lorris', 'null', '37 rue henri golaudin', '0622412911', 'null', NULL, 0),
(5, 'guillemot', 'lorris', 'null', '37 rue henri golaudin', '0622412911', 'null', NULL, NULL),
(6, 'guillemot', 'lorris97@hotmail.fr', 'null', '37 rue henri golaudin', '0622412911', '', NULL, NULL),
(7, 'guillemot', 'lorris97@hotmail.fr', 'null', '37 rue henri golaudin', '0622412911', '', NULL, NULL),
(8, 'guillemot', 'lorris97@hotmail.fr', 'null', '37 rue henri golaudin', '0622412911', 'null', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
