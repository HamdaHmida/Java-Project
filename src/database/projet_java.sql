-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 06 avr. 2022 à 22:35
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_java`
--

-- --------------------------------------------------------

--
-- Structure de la table `ad_foyer`
--

DROP TABLE IF EXISTS `ad_foyer`;
CREATE TABLE IF NOT EXISTS `ad_foyer` (
  `ID_AD_FOYER` int(4) NOT NULL,
  `USER` varchar(32) NOT NULL,
  `PASSWORD` varchar(32) NOT NULL,
  `NOM` varchar(25) NOT NULL,
  `PRENOM` varchar(25) NOT NULL,
  `MAIL` varchar(60) NOT NULL,
  `NUM_TEL` int(8) NOT NULL,
  PRIMARY KEY (`ID_AD_FOYER`),
  UNIQUE KEY `USER` (`USER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ad_foyer`
--

INSERT INTO `ad_foyer` (`ID_AD_FOYER`, `USER`, `PASSWORD`, `NOM`, `PRENOM`, `MAIL`, `NUM_TEL`) VALUES
(9001, '9999', '9999', 'Saida', 'Saida', 'NULL', 99887766);

-- --------------------------------------------------------

--
-- Structure de la table `ad_resto`
--

DROP TABLE IF EXISTS `ad_resto`;
CREATE TABLE IF NOT EXISTS `ad_resto` (
  `ID_AD_RESTO` int(4) NOT NULL,
  `USER` varchar(32) NOT NULL,
  `PASSWORD` varchar(32) NOT NULL,
  `NOM` varchar(25) NOT NULL,
  `PRENOM` varchar(25) NOT NULL,
  `MAIL` varchar(60) NOT NULL,
  `NUM_TEL` int(8) NOT NULL,
  PRIMARY KEY (`ID_AD_RESTO`),
  UNIQUE KEY `USER` (`USER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ad_resto`
--

INSERT INTO `ad_resto` (`ID_AD_RESTO`, `USER`, `PASSWORD`, `NOM`, `PRENOM`, `MAIL`, `NUM_TEL`) VALUES
(8001, '8001', '8001', 'Rim', 'Rim', 'NULL', 91827364);

-- --------------------------------------------------------

--
-- Structure de la table `ann_foy`
--

DROP TABLE IF EXISTS `ann_foy`;
CREATE TABLE IF NOT EXISTS `ann_foy` (
  `ID_ANN_FOYER` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(1024) NOT NULL,
  `DATE_ANN` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_ANN_FOYER`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ann_foy`
--

INSERT INTO `ann_foy` (`ID_ANN_FOYER`, `DESCRIPTION`, `DATE_ANN`) VALUES
(1, 'Foyer ysaker 00:00', '2022-04-03 23:43:29');

-- --------------------------------------------------------

--
-- Structure de la table `ann_res`
--

DROP TABLE IF EXISTS `ann_res`;
CREATE TABLE IF NOT EXISTS `ann_res` (
  `ID_ANN_RESTO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` text NOT NULL,
  `DATE_ANN` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_ANN_RESTO`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ann_res`
--

INSERT INTO `ann_res` (`ID_ANN_RESTO`, `DESCRIPTION`, `DATE_ANN`) VALUES
(1, 'Le restaurant travaille pendant les Weekend au moins du RAMDHANE ^_^', '2022-04-03 19:59:46'),
(20, 'nhar la7ad mafamma chay', '2022-04-03 21:45:58');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `ID_ETUDIANT` int(4) NOT NULL,
  `USER` varchar(32) NOT NULL,
  `PASSWORD` varchar(32) NOT NULL,
  `NOM` varchar(25) NOT NULL,
  `PRENOM` varchar(25) NOT NULL,
  `MAIL` varchar(60) NOT NULL,
  `NUM_ROOM` varchar(5) NOT NULL,
  `NUM_TEL` int(8) NOT NULL,
  PRIMARY KEY (`ID_ETUDIANT`),
  UNIQUE KEY `NUM_ROMM` (`NUM_ROOM`),
  UNIQUE KEY `USER` (`USER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`ID_ETUDIANT`, `USER`, `PASSWORD`, `NOM`, `PRENOM`, `MAIL`, `NUM_ROOM`, `NUM_TEL`) VALUES
(2101, '2101', '2101', 'Abdelkafi', 'Raed', 'raed.abdelkafi@ept.ucar.tn', 'R110', 98765432),
(2105, 'arouay', '2105', 'Arouay', 'Omar', 'omar.arouay@ept.ucar.tn', 'CS', 53736469),
(2124, 'hamda', '2124', 'Hamida', 'Hamda', 'hamda.hamida@ept.ucar.tn', 'C002', 99990666),
(2118, '2118', '2118', 'Dekhil', 'Sarra', 'sarra.dekhil@ept.ucar.tn', 'R111', 29890438),
(2149, '2149', '2149', 'Zagouji', 'Siwar', 'siwar.zagouji@ept.ucar.tn', 'R149', 93460544),
(2150, '2150', '2150', 'Zairi', 'Kais', 'kais.zairi@ept.ucar.tn', 'R109', 90909090);

-- --------------------------------------------------------

--
-- Structure de la table `historique_rec_foy`
--

DROP TABLE IF EXISTS `historique_rec_foy`;
CREATE TABLE IF NOT EXISTS `historique_rec_foy` (
  `ID_REC_FOYER` int(5) NOT NULL,
  `ID_ETUDIANT` int(4) NOT NULL,
  `TYPE` varchar(25) NOT NULL,
  `URG` varchar(25) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DATE_SAISIE_REC` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique_rec_foy`
--

INSERT INTO `historique_rec_foy` (`ID_REC_FOYER`, `ID_ETUDIANT`, `TYPE`, `URG`, `DESCRIPTION`, `DATE_SAISIE_REC`) VALUES
(53, 2150, 'eau', 'Non urgente ', 'hnjh', '2022-04-01'),
(27, 2105, 'equipement', 'equipement', 'sdqgfsd', '2022-03-31');

-- --------------------------------------------------------

--
-- Structure de la table `menu_jour`
--

DROP TABLE IF EXISTS `menu_jour`;
CREATE TABLE IF NOT EXISTS `menu_jour` (
  `ID_MJ` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(15) NOT NULL,
  `date` varchar(20) NOT NULL,
  `pdej1` int(11) NOT NULL,
  `pdej2` int(11) NOT NULL,
  `pdej3` int(11) NOT NULL,
  `dej1` int(11) NOT NULL,
  `dej2` int(11) NOT NULL,
  `dej3` int(11) NOT NULL,
  `din1` int(11) NOT NULL,
  `din2` int(11) NOT NULL,
  `din3` int(11) NOT NULL,
  PRIMARY KEY (`ID_MJ`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `menu_jour`
--

INSERT INTO `menu_jour` (`ID_MJ`, `jour`, `date`, `pdej1`, `pdej2`, `pdej3`, `dej1`, `dej2`, `dej3`, `din1`, `din2`, `din3`) VALUES
(11, 'samedi', '18-04-2022', 2, 12, 53, 48, 51, 12, 2, 48, 52),
(9, 'lundi', '04-04-2022', 2, 25, 52, 8, 47, 52, 8, 56, 65),
(10, 'vendredi', '11-04-2022', 7, 11, 2000, 26, 11, 2022, 74, 7, 45),
(12, 'mardi', '18-04-2022', 48, 2, 52, 52, 2, 53, 53, 51, 48),
(13, 'lundi', '18-04-2022', 2, 52, 51, 48, 2, 2, 48, 52, 52),
(14, 'mercredi', '25-04-2022', 2, 2, 2, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `menu_semaine`
--

DROP TABLE IF EXISTS `menu_semaine`;
CREATE TABLE IF NOT EXISTS `menu_semaine` (
  `ID_MS` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(12) NOT NULL,
  `lun` int(11) NOT NULL,
  `mar` int(11) NOT NULL,
  `mer` int(11) NOT NULL,
  `jeu` int(11) NOT NULL,
  `ven` int(11) NOT NULL,
  `sam` int(11) NOT NULL,
  `dim` int(11) NOT NULL,
  PRIMARY KEY (`ID_MS`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `menu_semaine`
--

INSERT INTO `menu_semaine` (`ID_MS`, `date`, `lun`, `mar`, `mer`, `jeu`, `ven`, `sam`, `dim`) VALUES
(4, '11-04-2022', 0, 0, 0, 0, 10, 0, 0),
(3, '04-04-2022', 9, 0, 0, 0, 0, 0, 0),
(5, '18-04-2022', 13, 12, 0, 0, 0, 11, 0);

-- --------------------------------------------------------

--
-- Structure de la table `plat_dispo`
--

DROP TABLE IF EXISTS `plat_dispo`;
CREATE TABLE IF NOT EXISTS `plat_dispo` (
  `plat_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(25) NOT NULL,
  `contenu` varchar(32) NOT NULL,
  `vote_oui` int(11) NOT NULL,
  `nb_vote` int(11) NOT NULL,
  PRIMARY KEY (`plat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plat_dispo`
--

INSERT INTO `plat_dispo` (`plat_id`, `type`, `contenu`, `vote_oui`, `nb_vote`) VALUES
(12, 'plat principale', 'riz safrané', 4, 4),
(2, 'entrée', 'pizza', 0, 1),
(53, 'plat principale', 'tastira', 1, 1),
(52, 'entrée', 'couscous', 0, 0),
(48, 'dessert', 'gateau', 2, 3),
(51, 'entree', 'soupe de poisson', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rec_foyer`
--

DROP TABLE IF EXISTS `rec_foyer`;
CREATE TABLE IF NOT EXISTS `rec_foyer` (
  `ID_REC_FOYER` int(5) NOT NULL AUTO_INCREMENT,
  `ID_ETUDIANT` int(4) NOT NULL,
  `TYPE` varchar(25) NOT NULL,
  `URG` varchar(20) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DATE_SAISIE_REC` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_REC_FOYER`),
  UNIQUE KEY `ID_REC_FOYER_2` (`ID_REC_FOYER`),
  KEY `ID_REC_FOYER` (`ID_REC_FOYER`),
  KEY `ID_REC_FOYER_3` (`ID_REC_FOYER`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rec_foyer`
--

INSERT INTO `rec_foyer` (`ID_REC_FOYER`, `ID_ETUDIANT`, `TYPE`, `URG`, `DESCRIPTION`, `DATE_SAISIE_REC`) VALUES
(1, 2105, 'eau', '', 'maymchich', '2022-03-24 12:41:22'),
(3, 2105, 'eau', '', '5ayeb', '2022-03-24 12:41:22'),
(4, 2149, 'chaffage', '', 'dh3iiif', '2022-03-24 12:41:22'),
(5, 2149, 'bain', '', 'el ridowat mgat3iiiin (&#65078;&#65081;&#65082;)', '2022-03-24 12:43:41'),
(6, 2149, 'electricity', '', 'ampoula t7arget\r\n', '2022-03-24 12:44:32'),
(8, 2101, 'equipement', '', 'bab bloc C mkasser', '2022-03-24 13:46:42'),
(10, 2105, 'electricity', '', 'biti mafihach dhaw', '2022-03-24 14:20:14'),
(11, 2105, 'wc', '', 'twalat emas5a', '2022-03-24 14:43:36'),
(12, 2105, 'equipement', '', 'test reu', '2022-03-24 16:40:48'),
(15, 2124, 'wc', '', 'nagsin lama3an ^_^', '2022-03-24 17:38:23'),
(57, 2150, 'autres', 'Non urgente ', 'ooooo', '2022-04-04 23:18:15'),
(50, 2105, 'eau', 'Urgence non vital ', 'qgddg', '2022-03-31 23:04:17'),
(51, 2105, 'chaffage', 'Urgence non vital ', 'en fin a marche !!!\r\nayuuuuuuuuuuuuuz &#11619;', '2022-03-31 23:04:44'),
(52, 2105, 'equipement', 'Urgence majeure ', 'TAWLTI  TKSRET', '2022-04-01 00:14:13'),
(54, 2150, 'eau', 'Non urgente ', 'hnjh', '2022-04-01 18:32:01'),
(55, 2150, 'chaffage', 'Non urgente ', 'tay7oulna il me fil rkeyeb \r\n#ilyess', '2022-04-01 21:02:10'),
(56, 2150, 'equipement', 'Urgence non vital ', 'chfama ya5iiii !!!!', '2022-04-01 21:46:42');

-- --------------------------------------------------------

--
-- Structure de la table `rec_resto`
--

DROP TABLE IF EXISTS `rec_resto`;
CREATE TABLE IF NOT EXISTS `rec_resto` (
  `ID_REC_RESTO` int(5) NOT NULL AUTO_INCREMENT,
  `ID_ETUDIANT` int(4) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DATE_SAISIE_REC` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_REC_RESTO`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rec_resto`
--

INSERT INTO `rec_resto` (`ID_REC_RESTO`, `ID_ETUDIANT`, `DESCRIPTION`, `DATE_SAISIE_REC`) VALUES
(1, 2105, 'el l7aaam chareeef -_-\r\n', '2022-03-24 14:12:44'),
(6, 2124, 'chorbotkom mch bnina \r\n\r\nzeroooooo', '2022-03-24 17:38:46'),
(12, 0, 'waaaaaaaaw', '2022-04-01 00:16:08'),
(10, 2149, 'makla bnina', '2022-03-31 08:14:15');

-- --------------------------------------------------------

--
-- Structure de la table `resultat_vote_menu`
--

DROP TABLE IF EXISTS `resultat_vote_menu`;
CREATE TABLE IF NOT EXISTS `resultat_vote_menu` (
  `id_semaine` int(11) NOT NULL,
  `jour` varchar(10) NOT NULL,
  `sr1` int(11) NOT NULL,
  `nbv1` int(11) NOT NULL,
  `sr2` int(11) NOT NULL,
  `nbv2` int(11) NOT NULL,
  `sr3` int(11) NOT NULL,
  `nbv3` int(11) NOT NULL,
  PRIMARY KEY (`jour`,`id_semaine`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `resultat_vote_menu`
--

INSERT INTO `resultat_vote_menu` (`id_semaine`, `jour`, `sr1`, `nbv1`, `sr2`, `nbv2`, `sr3`, `nbv3`) VALUES
(5, 'mar', 1, 1, 1, 1, 1, 1),
(5, 'lun', 4, 2, 6, 2, 10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sondage_resto`
--

DROP TABLE IF EXISTS `sondage_resto`;
CREATE TABLE IF NOT EXISTS `sondage_resto` (
  `ID_SONDAGE_RESTO` int(11) NOT NULL AUTO_INCREMENT,
  `qst` text NOT NULL,
  `nb_oui` int(11) NOT NULL,
  `nb_vote` int(11) NOT NULL,
  `DATE_SON` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_SONDAGE_RESTO`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sondage_resto`
--

INSERT INTO `sondage_resto` (`ID_SONDAGE_RESTO`, `qst`, `nb_oui`, `nb_vote`, `DATE_SON`) VALUES
(13, 'Est ce que vous voulez avoir du LBAN avec un MASFOUF au SHOUR ?', 2, 5, '2022-04-03 23:28:15');

-- --------------------------------------------------------

--
-- Structure de la table `vote_menu`
--

DROP TABLE IF EXISTS `vote_menu`;
CREATE TABLE IF NOT EXISTS `vote_menu` (
  `id_semaine` int(11) NOT NULL,
  `jour` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `id_etudiant` int(4) NOT NULL,
  `vote` int(1) NOT NULL,
  PRIMARY KEY (`jour`,`id_semaine`,`type`,`id_etudiant`),
  KEY `id_etudiant` (`id_etudiant`),
  KEY `id_semaine` (`id_semaine`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vote_menu`
--

INSERT INTO `vote_menu` (`id_semaine`, `jour`, `type`, `id_etudiant`, `vote`) VALUES
(5, 'mar', 'dejeuner', 2105, 1),
(5, 'mar', 'petit dejeuner', 2105, 1),
(5, 'lun', 'diner', 2105, 5),
(5, 'lun', 'dejeuner', 2105, 3),
(5, 'lun', 'petit dejeuner', 2105, 2),
(5, 'mar', 'diner', 2105, 1),
(5, 'lun', 'petit dejeuner', 2118, 2),
(5, 'lun', 'dejeuner', 2118, 3),
(5, 'lun', 'diner', 2118, 5);

-- --------------------------------------------------------

--
-- Structure de la table `vote_plat_dispo`
--

DROP TABLE IF EXISTS `vote_plat_dispo`;
CREATE TABLE IF NOT EXISTS `vote_plat_dispo` (
  `id_plat` int(11) NOT NULL,
  `id_ET` int(11) NOT NULL,
  `vote` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_plat`,`id_ET`),
  KEY `id_ET` (`id_ET`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vote_plat_dispo`
--

INSERT INTO `vote_plat_dispo` (`id_plat`, `id_ET`, `vote`) VALUES
(12, 2150, 'oui'),
(12, 2105, 'oui'),
(12, 2149, 'oui'),
(12, 2124, 'oui'),
(2, 2124, 'oui'),
(51, 2124, 'non'),
(48, 2124, 'oui'),
(48, 2105, 'non');

-- --------------------------------------------------------

--
-- Structure de la table `vote_sondage`
--

DROP TABLE IF EXISTS `vote_sondage`;
CREATE TABLE IF NOT EXISTS `vote_sondage` (
  `ID_VOTE` int(11) NOT NULL,
  `id_ET` int(11) NOT NULL,
  `vote` varchar(3) NOT NULL,
  PRIMARY KEY (`id_ET`,`ID_VOTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vote_sondage`
--

INSERT INTO `vote_sondage` (`ID_VOTE`, `id_ET`, `vote`) VALUES
(13, 2150, 'non'),
(13, 2149, 'oui'),
(13, 2118, 'non'),
(13, 2124, 'oui');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
