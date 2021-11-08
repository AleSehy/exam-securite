-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 28 sep. 2020 à 13:33
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de données : `MiniProjSehy`
--
CREATE DATABASE IF NOT EXISTS `MiniProjSehy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `MiniProjSehy`;

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `AdresseMail` varchar(50) NOT NULL,
  `nDeLicense` varchar(17) NOT NULL,
  `Sexe` varchar(1) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `DateNais` varchar(10) NOT NULL,
  `Adresse1` varchar(50) NOT NULL,
  `CP` varchar(5) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `MotDePasse` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`AdresseMail`, `nDeLicense`, `Sexe`, `Nom`, `Prenom`, `DateNais`, `Adresse1`, `CP`, `Ville`, `MotDePasse`) VALUES
('A.AUGUSTIN@laposte.net', ' 17 05 40 010 446', 'M', 'DUCRICK', 'AUGUSTIN', '03/12/1996', '31, rue du chanoine Pierron', '54600', 'Villers les nancy', '123'),
('A.DEPERRIN@laposte.net', ' 17 05 40 010 351', 'M', 'DEPERRIN', 'ARNAUD', '31/12/1982', '40 rue Paul Bert', '54600', 'Villers les Nancy', '123'),
('A.HASFELD@laposte.net', ' 17 05 40 010 420', 'F', 'HASFELD', 'AUXANE', '08/03/1999', '32, allee de l\'observatoire', '54520', 'Laxou', '123'),
('B.BIDELOT@laposte.net', ' 17 05 40 010 399', 'F', 'BIDELOT', 'BRIGITTE', '20/09/1958', '5, rue des trois epis', '54600', 'Villers les Nancy', '123'),
('B.DEPRETRE@laposte.net', ' 17 05 40 010 409', 'F', 'DEPRETRE', 'BEATRICE', '27/01/1998', '26, rue du petit etang', '54110', 'Buissoncourt', '123'),
('C.BANDILELLA@laposte.net', ' 17 05 40 010 443', 'M', 'BANDILELLA', 'CLEMENT', '26/07/1998', '30, rue Widric 1er', '54600', 'Villers les Nancy', '123'),
('C.BILLOT@laposte.net', ' 17 05 40 010 329', 'F', 'BILLOT', 'CLAIRE', '07/06/1963', '6, rue de la Sapiniere', '54600', 'Villers les Nancy', '123'),
('C.HAGENBACH@laposte.net', ' 17 05 40 010 382', 'F', 'HAGENBACH', 'CLEMENTINE', '26/11/1997', '19, rue de Lavaux', '54520', 'Laxou', '123'),
('C.LAFIEGLON@laposte.net', ' 17 05 40 010 432', 'M', 'LAFIEGLON', 'CLEMENT', '16/11/2002', '62, avenue Paul Deroulede', '54600', 'Villers les Nancy', '123'),
('C.LOTANG@laposte.net', ' 17 05 40 010 439', 'M', 'LOTANG', 'CYPRIEN', '30/09/1999', '16, rue de Gerbeviller', '54000', 'Nancy', '123'),
('D.BILLOT@laposte.net', ' 17 05 40 010 308', 'M', 'BILLOT', 'DIDIER', '24/09/1962', '6, rue de la Sapiniere', '54600', 'Villers les Nancy', '123'),
('E.LUQUE@laposte.net', ' 17 05 40 010 364', 'M', 'LUQUE', 'ETIENNE', '26/12/1951', '1, rue de Normandie', '54500', 'Vandoeuvre', '123'),
('E.REMILLON@laposte.net', ' 17 05 40 010 438', 'M', 'REMILLON', 'ELIOT', '13/11/2001', '3, rue de l\'Embanie', '54520', 'Laxou', '123'),
('F.COTIN@laposte.net', ' 17 05 40 010 402', 'M', 'COTIN', 'FLORIAN', '15/04/1995', '14 route de Toul', '54113', 'Blenod les toul', '123'),
('G.GARBILLON@laposte.net', ' 17 05 40 010 395', 'M', 'GARBILLON', 'GILLES', '08/07/1963', '31, avenue de Marron', '54600', 'Villers les nancy', '123'),
('G.LAMOINE@laposte.net', ' 17 05 40 010 429', 'M', 'LAMOINE', 'GREGOIRE', '23/07/1993', '65, rue de la sivrite', '54600', 'Villers les Nancy', '123'),
('G.SILBERT@laposte.net', ' 17 05 40 010 121', 'M', 'SILBERT', 'GILLES', '03/01/1957', '2 , grande rue', '54210', 'Azelot', '123'),
('I.HUMBERT@laposte.net', ' 17 05 40 010 341', 'F', 'HUMERT', 'ISABELLE', '04/06/1976', '4 rue du marechal Gallieni', '54600', 'Villers les Nancy', '123'),
('J.BIDELOT@laposte.net', ' 17 05 40 010 442', 'F', 'BIDELOT', 'JULIE', '30/11/1991', '5, rue des trois epis', '54600', 'Villers les Nancy', '123'),
('L.BERBIER@laposte.net', ' 17 05 40 010 340', 'F', 'BERBIER', 'LUCILLE', '24/03/1998', '12, rue de Marron', '54600', 'Villers les Nancy', '123'),
('L.CHEVOITINE@laposte.net', ' 17 05 40 010 441', 'M', 'CHEVOITINE', 'LOUIS', '29/03/1998', '40, rue de la republique', '54320', 'Maxeville', '123'),
('L.SILBERT@laposte.net', ' 17 05 40 010 447', 'F', 'SILBERT', 'LEA', '14/04/2000', '1, allee du cenacle', '54520', 'Laxou', '123'),
('M.BILLOT@laposte.net', ' 17 05 40 010 254', 'F', 'BILLOT', 'MARIANNE', '28/09/1986', '6, rue de la Sapiniere', '54600', 'Villers les Nancy', '123'),
('M.BINNET@laposte.net', ' 17 05 40 010 407', 'M', 'BINNET', 'MARIUS', '21/08/1997', '12, rue Edouard Grosjean', '54520', 'Laxou', '123'),
('M.ZOECKEL@laposte.net', ' 17 05 40 010 437', 'M', 'ZOECKEL', 'MATHIEU', '02/06/2000', '15, rue de la Seille', '54320', 'Maxeville', '123'),
('N.CHEOLLE@laposte.net', ' 17 05 40 010 428', 'M', 'CHEOLLE', 'NICOLAS', '19/04/1983', '46, rue de l\'abbe Didelot', '54520', 'Laxou', '123'),
('N.LANIELLE@laposte.net', ' 17 05 40 010 419', 'M', 'LANIELLE', 'NICOLAS', '02/09/1998', '10, rue des orchidees', '54600', 'Villers les Nancy', '123'),
('NA.LIEVIN@laposte.net', ' 17 05 40 010 401', 'M', 'LIEVIN', 'NATHAN', '24/01/1997', '42, rue de la commanderie', '54840', 'Sexey les bois', '123'),
('P.PERNOT@laposte.net', ' 17 05 40 010 353', 'M', 'PERNOT', 'PAUL', '26/04/1996', '6, rue Winston Churchill', '54000', 'Nancy', '123'),
('P.TORTEMANN@laposte.net', ' 17 05 40 010 405', 'M', 'TORTEMANN', 'PIERRE', '13/10/1997', '34, rue de Badonviller', '54000', 'Nancy', '123'),
('R.BECKER@laposte.net', ' 17 05 40 010 309', 'M', 'BECKER', 'ROMAIN', '28/03/1998', '1, rue des Mesanges', '54600', 'Villers les Nancy', '123'),
('S.ZUEL@laposte.net', ' 17 05 40 010 418', 'F', 'ZUEL', 'STEPHANIE', '25/09/1970', '8, sentier de Saint-Arriant', '54520', 'Laxou', '123'),
('T.BERBIER@laposte.net', ' 17 05 40 010 338', 'M', 'BERBIER', 'THEO', '24/03/1998', '12, rue de Marron', '54600', 'Villers les Nancy', '123'),
('T.CALDI@laposte.net', ' 17 05 40 010 444', 'M', 'CALDI', 'THOMAS', '22/09/1998', '12, rue de Malzeville', '54000', 'Nancy', '123'),
('T.CASTEL@laposte.net', ' 17 05 40 010 431', 'M', 'CASTEL', 'TIMOTHE', '10/06/1998', '26, rue de l\'abbe Didelot', '54600', 'Villers les Nancy', '123'),
('T.CHOUARNO@laposte.net', ' 17 05 40 010 440', 'M', 'CHOUARNO', 'TOM', '02/08/1999', '168, avenue de Boufflers', '54000', 'Nancy', '123'),
('T.ZUERO@laposte.net', ' 17 05 40 010 448', 'M', 'ZUERO', 'THOMAS', '14/08/2000', 'immeuble Savoie', '54520', 'Laxou', '123'),
('U.CHERPION@laposte.net', ' 17 05 40 010 414', 'M', 'CHERPION', 'UGO', '24/09/1999', '63, rue Français', '54000', 'Nancy', '123'),
('V.BIACQUEL@laposte.net', ' 17 05 40 010 334', 'F', 'BIACQUEL', 'VERONIQUE', '09/12/1962', '27, rue de Santifontaine', '54000', 'Nancy', '123'),
('Y.GARBILLON@laposte.net', ' 17 05 40 010 338', 'M', 'GARBILLON', 'YANN', '21/03/1994', '31, avenue de Marron', '54600', 'Villers les Nancy', '123');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`AdresseMail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
