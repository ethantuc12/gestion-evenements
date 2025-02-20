-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 03:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE `evenement` (
  `id_eve` int(11) NOT NULL,
  `Video` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Petit_txt` varchar(1000) NOT NULL,
  `Petit_titre` varchar(1000) NOT NULL,
  `Texte` varchar(1000) NOT NULL,
  `Titre` varchar(100) NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_echeance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`id_eve`, `Video`, `Image`, `Petit_txt`, `Petit_titre`, `Texte`, `Titre`, `date_debut`, `date_echeance`) VALUES
(209, '../Video/4x4.mp4', '../Image/4x4.webp', 'Concours de tuning de 4x4 : une rencontre exceptionnelle pour les passionnés de tout-terrain, avec Supercar présent pour dévoiler les dernières tendances en matière de tuning et les nouveaux modèles de 4x4 les plus attendus de l\'année', 'Des passionnés d\'automobiles venus de différentes régions du pays se rassemblent pour admirer des voitures de luxe.', 'Supercar est heureux de partager avec vous le retour sur le concours de tuning de 4x4, une rencontre unique qui a rassemblé les passionnés de tout-terrain et de voitures modifiées. Cet événement a été l\'occasion pour les visiteurs de découvrir les dernières tendances en matière de tuning 4x4, avec des véhicules impressionnants qui ont su attirer l\'attention de tous les participants.\r\n<br><br>\r\nLe concours a eu lieu dans un endroit exceptionnel, où les visiteurs ont pu admirer les véhicules les plus puissants et les plus impressionnants du moment. Les propriétaires des 4x4 ont présenté leur véhicule avec fierté, montrant les modifications effectuées pour améliorer les performances et l\'apparence de leurs voitures.\r\n<br><br>\r\nLes participants ont été jugés sur différents critères, notamment l\'esthétique, la puissance et la qualité des modifications. Les véhicules les plus impressionnants ont attiré l\'attention des visiteurs, qui ont pu discuter avec les propriétaires pour en savoir plus ', 'Concours de tuning de 4x4', '2024-03-18', '2024-03-20'),
(498, '..\\Video\\bmw showroom.mp4', '..\\Image\\testtttt.webp', 'Quand le luxe rencontre l\'excellence : retour sur le showroom exceptionnel de Supercar en collaboration avec BMW, présentant les dernières innovations en matière de voitures haut de gamme', 'Retour sur notre showroom exceptionnel en collaboration avec BMW\n', '\n    Nous avons récemment eu l\'opportunité de collaborer avec BMW pour organiser un showroom exceptionnel. Cet événement a été l\'occasion pour les amateurs de voitures de découvrir les dernières innovations en matière de voitures de luxe.\n    <br><br>\n    Le showroom s\'est tenu dans un lieu prestigieux, où les visiteurs ont pu admirer les derniers modèles de BMW. Les deux marques ont présenté une sélection de voitures sophistiquées, élégantes et performantes, qui ont attiré l\'attention des visiteurs dès leur arrivée. \n    <br><br>\n    Les représentants de Supercar et BMW étaient présents tout au long de l\'événement pour répondre aux questions des visiteurs et leur fournir des informations détaillées sur les caractéristiques et les fonctionnalités des véhicules présentés. \n    <br><br>\n    Les visiteurs ont été particulièrement impressionnés par la qualité de la présentation, qui mettait en valeur la beauté et l\'excellence des voitures exposées. Les designs modernes et élégants de BMW o', 'Showroom BMW\r\n', '2024-03-18', '2024-03-19'),
(825, '../Video/car meet.mp4', '../Image/car meet.webp', 'Rencontre de voitures de prestige : l\'événement automobile de l\'année rassemble les passionnés de l\'automobile venus de tout le pays pour découvrir les dernières nouveautés en matière de voitures haut de gamme, avec Supercar à la tête de la rencontre', 'Des passionnés d\'automobiles venus de différentes régions du pays se rassemblent pour admirer des voitures de luxe.\r\n  ', '\r\n    Supercar est fier de partager avec vous l\'un des événements automobiles les plus attendus de l\'année, qui a rassemblé des amateurs de voitures des quatre coins du pays pour une rencontre exceptionnelle. Cette occasion unique a permis à des passionnés de l\'automobile de se rencontrer, d\'échanger et de découvrir les dernières nouveautés en matière de voitures de prestige.\r\n    <br><br>\r\n    L\'événement a eu lieu dans un lieu prestigieux où les visiteurs ont pu admirer les voitures les plus exclusives et les plus impressionnantes du moment. Des représentants de Supercar étaient présents pour répondre aux questions des visiteurs et pour partager leur expertise en matière de voitures de luxe.\r\n    <br><br>\r\n    Les voitures exposées étaient toutes plus impressionnantes les unes que les autres, avec des designs innovants et des performances époustouflantes. Les visiteurs ont pu admirer les derniers modèles de Supercar, ainsi que d\'autres marques prestigieuses telles que Ferrari, Lambor', 'Rencontre de voitures de prestige', '2024-02-12', '2024-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `inscription`
--

CREATE TABLE `inscription` (
  `idinscription` int(9) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `nom` varchar(97) NOT NULL,
  `email` varchar(47) NOT NULL,
  `mot_de_passe` varchar(60) NOT NULL,
  `numero_de_telephone` varchar(20) NOT NULL,
  `civilite` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inscription`
--

INSERT INTO `inscription` (`idinscription`, `prenom`, `nom`, `email`, `mot_de_passe`, `numero_de_telephone`, `civilite`) VALUES
(534, 'Ethan', 'Tuckmansing2', 'tuckmansing2004@gmail.com', 'ctwqf43n', '58426274', 'Mauricien'),
(535, 'Jean', 'Cabris', 'jean@gmail.com', 'ctwqf43n', '58426274', 'Mauricien'),
(536, 'Nikhil', 'Mohit', 'madtuck2222@gmail.com', 'ctwqf43n', '58426274', 'Mauricien'),
(553, 'Nasser', 'Maudarbocus', 'nasserm@mccibs.ac.mu', '12345', '58426274', 'Mauricien'),
(554, 'Madison', 'Tuckmansing', 'madisontuckmansing@gmail.com', 'ctwqf43n', '59185182', 'Nation');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
