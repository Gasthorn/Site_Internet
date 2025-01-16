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
(3,'Fripouille',5,'Blanc','Dormeur','M','fripouille.jpg',"Fripouille est un chat de 5 ans, au pelage tout blanc et à l'esprit calme. Trouvé errant dans la rue, il a été amené à la SPC, où il a trouvé un endroit sûr et paisible. Très dormeur, il passe la plupart de son temps à se reposer dans des coins confortables. Bien qu'il soit discret et peu demandeur d'attention, il sait apprécier les moments de calme et de sérénité. Un chat tranquille et doux, parfait pour les amateurs de siestes !"),
(4,'Courgette',3,'Orange','Joueur','M','courgette.jpg',"Courgette est un chat de 3 ans au pelage orange éclatant et à l'énergie débordante. Trouvé dans un jardin privé, il a été rapidement pris en charge et amené à la SPC. Très joueur, il adore courir après ses jouets et explorer son environnement. Toujours prêt à s'amuser, Courgette est un compagnon dynamique qui apporte une touche de vivacité et de joie à chaque moment."),
(5,'Peach',14,'Calico','Actif','F','peach.jpg',"Peach est une chatte calico de 14 ans, pleine de vie et d'énergie. Amenée à la SPC parce que ses précédents maîtres ne pouvaient plus s'occuper d'elle, elle cherche un foyer chaleureux pour y passer ses belles années. Bien qu'elle soit un peu plus âgée, elle reste active et curieuse, toujours prête à explorer son environnement. Affectueuse et attentive, Peach a encore beaucoup d'amour à offrir à une famille prête à l'accueillir. Un compagnon fidèle et plein de charme !"),
(6,'Léon',13,'Orange','Dormeur','M','leon.jpg',"Léon est un majestueux chat de 13 ans, à la fourrure orange éclatante. Ce vieux monsieur paisible et dormeur a traversé des épreuves, ayant perdu son foyer et connu l’incertitude. Heureusement, il a été recueilli par la SPC, où il profite désormais d’un environnement calme et sécurisant. Léon rêve de retrouver une famille aimante pour partager sa douceur et ses siestes interminables."),
(7,'Nougatine',7,'Brun','Affectueux','F','nougatine.jpg',"Nougatine est une charmante chatte de 7 ans, au pelage brun soyeux, qui respire la douceur et l’affection. Retrouvée errante près des poubelles d’un supermarché, elle a vécu des jours difficiles avant d’être sauvée par la SPC. Maintenant en sécurité, Nougatine montre chaque jour son amour pour la compagnie humaine et espère trouver un foyer chaleureux qui saura lui offrir la tendresse qu’elle mérite."),
(8,'Vroum',2,'Bicolore','Actif','M','vroum.jpg',"Vroum est un jeune chat de 2 ans, à la robe bicolore éclatante mêlant orange et blanc, qui déborde d’énergie et de curiosité. Actif et joueur, il a été trouvé errant dans les rues, explorant son environnement avec audace malgré les dangers. Recueilli par la SPC, il attend désormais un nouveau départ dans une maison où son dynamisme et sa joie de vivre seront pleinement appréciés."),
(9,'Pudding',6,'Gris','Gourmand','M','pudding.jpg',"Pudding est un adorable chat gris de 6 ans, connu pour son amour inconditionnel de la nourriture et sa bouille irrésistible. Ce gourmand au grand cœur a malheureusement été laissé à l’abandon, livrant son sort à l’incertitude. Recueilli par la SPC, il commence à reprendre confiance et espère trouver une famille attentionnée, prête à lui offrir une vie stable et des friandises (avec modération)."),
(10,'Moka',3,'Brun','Timide','F','moka.jpg',"Moka est une élégante chatte au pelage brun, âgée de 3 ans, dont la timidité touchante révèle une grande sensibilité. Amenée à la SPC par une personne bienveillante, elle s’adapte doucement à son nouvel environnement, découvrant peu à peu qu’elle est en sécurité. Avec un peu de patience et beaucoup de douceur, Moka rêve de trouver un foyer calme où elle pourra s’épanouir et offrir sa tendresse discrète."),
(11,'Zorro',4,'Noir','Affectueux','M','zorro.jpg',"Zorro est un magnifique chat noir de 4 ans, au regard perçant mais au caractère infiniment doux. Trouvé errant en pleine campagne, il semblait chercher désespérément une présence humaine à aimer. Affectueux et sociable, il a été recueilli par la SPC, où il charme tout le monde par ses ronronnements apaisants. Zorro attend désormais un foyer aimant pour partager sa tendresse et sa fidélité"),
(12,'Saphir',2,'Gris','Affectueux','M','saphir.jpg',"Saphir est un chat gris de 2 ans, au tempérament doux et affectueux, qui a connu la tristesse de l’abandon. Ses anciens propriétaires l’ont laissé derrière eux, mais malgré cela, il reste un compagnon chaleureux, toujours prêt à donner de l’amour. Recueilli par la SPC, il s’épanouit lentement dans un environnement sécurisant, espérant trouver enfin une famille qui saura lui offrir la stabilité et l’affection qu’il mérite."),
(13,'Perle',6,'Blanc','Timide','F','perle.jpg',"Perle est une chatte blanche angora de 6 ans, au pelage soyeux et éclatant, mais à la personnalité plus réservée. Elle a été trouvée dans un carton abandonné aux portes de la SPC, où elle a été recueillie dans un environnement sécurisant. Timide au début, Perle cherche lentement à accorder sa confiance, mais une fois apprivoisée, elle devient un compagnon doux et délicat. Elle rêve d’un foyer calme et aimant, où elle pourra enfin se sentir chez elle."),
(14,'Pépito',4,'Bicolore','Joueur','M','pepito.jpg',"Pépito est un chat bicolore de 4 ans, au pelage chimère unique qui mêle des teintes noires et oranges. Trouvé errant dans la rue, puis amené à la SPC, ce jeune mâle joueur et curieux a rapidement montré son caractère vif et espiègle. Malgré son passé difficile, Pépito s’adapte bien à son nouvel environnement et aime explorer chaque recoin avec enthousiasme. Il cherche désormais une famille active et pleine d’amour, prête à partager ses moments de jeu et de tendresse."),
(15,'Sir Meowington',8,'Brun','Dormeur','M','Sir_Meowington.jpg',"Sir Meowington est un chat brun de 8 ans, au regard tranquille et à la personnalité douce. Ce véritable dormeur adore passer ses journées à se reposer, savourant chaque moment de calme. Il s'est retrouvé sans maîtres lorsque ses propriétaires, trop âgés pour s'occuper de lui, ont dû se séparer de lui. Bien qu'un peu réservé au début, Sir Meowington est un compagnon affectueux qui cherche désormais un foyer stable et paisible où il pourra profiter de ses siestes et de l’affection de ses nouveaux maîtres."),
(16,'Tigri-Mignon',4,'Orange','Affectueux','M','tigri_mignon.jpg',"Tigri-Mignon est un chat orange de 4 ans, au caractère doux et affectueux, qui n’a pas toujours connu la douceur d’un foyer. Ancien chat errant, il a longtemps vécu seul dans la rue avant d’être recueilli par la SPC. Aujourd’hui, il a retrouvé la sécurité et la chaleur d’un refuge, où il se révèle être un compagnon tendre et câlin. Tigri-Mignon cherche désormais une famille aimante et attentionnée, prête à lui offrir la stabilité qu’il mérite."),
(17,'Câline',7,'Bicolore','Affectueux','F','caline.jpg',"Câline est une chatte bicolore de 7 ans, au pelage type tuxedo noir et blanc qui lui donne une allure élégante et charmante. Trouvée errante, elle a rapidement montré son côté doux et affectueux, cherchant à établir des liens avec les humains. Malgré son passé difficile, Câline est un véritable rayon de soleil, prête à offrir son amour et ses câlins. Elle espère désormais trouver un foyer calme où elle pourra enfin se poser et profiter de la compagnie d’une famille bienveillante."),
(18,'Catastrophe',2,'Noir','Joueur','M','catastrophe.jpg',"aCatastrophe est un chat noir de 2 ans, au caractère dynamique et joueur, mais aussi un peu maladroit dans ses mouvements. Retrouvé sous une voiture, il a été sauvé d’une situation dangereuse et a vite fait sourire les gens autour de lui par ses petites gaffes. Malgré son nom, qui lui va si bien, il est aussi affectueux et adore recevoir des câlins après ses moments de jeu. Catastrophe cherche maintenant un foyer où il pourra partager ses aventures, ses maladresses et beaucoup de douceur."),
(19,'Chat-perlipopette',4,'Blanc','Actif','M','chat_perlipopette.jpg',"Chat-Perlipopette est un chat blanc de 4 ans, débordant d’énergie et toujours prêt à courir, sauter et explorer son environnement. Malmené par ses anciens propriétaires, il a dû surmonter des épreuves avant d'être recueilli par la SPC, mais son caractère actif et curieux est resté intact. Lorsqu'il n'est pas en train de se dépenser, il cherche à nouer des liens avec les humains, preuve de sa capacité à offrir de l'affection. Chat-Perlipopette rêve désormais de trouver un foyer où il pourra canaliser toute son énergie et vivre pleinement ses aventures."),
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