-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 07 jan. 2025 à 11:32
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `s172601`
--

-- --------------------------------------------------------

--
-- Structure de la table `chats`
--

/*DROP TABLE `chats`;
CREATE TABLE IF NOT EXISTS `chats` (
  `id` int NOT NULL,
  `prenom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age` int NOT NULL,
  `couleur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `caractere` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sexe` enum('M','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `paragraphe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;*/

CREATE TABLE IF NOT EXISTS `chats` (
  `id` int NOT NULL,
  `prenom` text NOT NULL,
  `age` int NOT NULL,
  `couleur` text NOT NULL,
  `caractere` text NOT NULL,
  `sexe` enum('M','F') NOT NULL,
  `photo` text NOT NULL,
  `paragraphe` text NOT NULL
);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

insert into chats values 
(1,'Rhéa',1,'Calico','Joueur','F','Rhea.jpg',"Rhéa est une adorable chatte calico d'un an, pleine de vie et de curiosité. Trouvée à l'âge d'un mois, cachée dans un moteur de voiture, elle a été rapidement amenée à la SPC. Avec son pelage tricolore et ses yeux pétillants, elle charme tout le monde par sa douceur et son énergie débordante. Très joueuse, elle adore courir après ses jouets et se divertir dans chaque recoin de la maison. Un véritable rayon de soleil !"),
(2,'Cléo',2,'Calico','Gourmand','F','cleo.jpeg',"Cléo est une chatte calico de 2 ans, douce mais indépendante, et particulièrement gourmande. Trouvée dans un carton abandonné dans les bois, elle a été recueillie par la SPC et cherche un foyer. Bien qu'elle n'aime pas les caresses, elle est très attachée à sa tranquillité et apprécie surtout ses repas. Elle est un peu timide, mais son côté gourmand fait toujours le bonheur de ceux qui lui offrent une petite friandise."),
(3,'Fripouille',5,'Blanc','Dormeur','M','fripouille.jpg',"a"),
(4,'Courgette',3,'Orange','Joueur','M','courgette.jpg',"a"),
(5,'Peach',14,'Calico','Actif','F','peach.jpg',"a"),
(6,'Léon',13,'Orange','Dormeur','M','leon.jpg',"a"),
(7,'Nougatine',7,'Brun','Affectueux','F','nougatine.jpg',"a"),
(8,'Vroum',2,'Bicolore','Actif','M','vroum.jpg',"a"),
(9,'Pudding',6,'Gris','Gourmand','M','pudding.jpg',"a"),
(10,'Moka',3,'Brun','Timide','F','moka.jpg',"a"),
(11,'Zorro',4,'Noir','Affectueux','M','zorro.jpg',"a"),
(12,'Saphir',2,'Gris','Affectueux','M','saphir.jpg',"a"),
(13,'Perle',6,'Blanc','Timide','F','perle.jpg',"a"),
(14,'Pépito',4,'Bicolore','Joueur','M','pepito.jpg',"a"),
(15,'Sir Meowington',8,'Brun','Dormeur','M','Sir_Meowington.jpg',"a"),
(16,'Tigri-Mignon',4,'Orange','Affectueux','M','tigri_mignon.jpg',"a"),
(17,'Câline',7,'Bicolore','Affectueux','F','caline.jpg',"a"),
(18,'Catastrophe',2,'Noir','Joueur','M','catastrophe.jpg',"a"),
(19,'Chat-perlipopette',4,'Blanc','Actif','M','chat_perlipopette.jpg',"a"),
(20,'Patate',1,'Bicolore','Dormeur','F','patate.jpg',"a"),
(21,'Miss Miaou',6,'Calico','Joueur','F','miss_miaou.jpg',"a"),
(22,'Chipie',5,'Orange','Actif','F','chipie.jpg',"a"),
(23,'Pétale',9,'Gris','Gourmand','F','petale.jpg',"a"),
(24,'Gaufrette',2,'Calico','Timide','F','gaufrette.jpg',"a"),
(25,'Patapouf',9,'Bicolore','Dormeur','M','patapouf.jpg',"a"),
(26,'Froussard',6,'Noir','Timide','M','froussard.jpg',"a"),
(27,'Zaza',5,'Gris','Dormeur','F','zaza.jpg',"a"),
(28,'Pif',4,'Blanc','Joueur','M','pif.jpg',"a"),
(29,'Violette',10,'Bicolore','Affectueux','F','violette.jpg',"a"),
(30,'Choupinette',11,'Calico','Timide','F','choupinette.jpg',"a");