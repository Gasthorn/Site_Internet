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
(1, 'Rhea', 1, 'Calico', 'Joueur', 'F', 'Rhea.jpg', "Rhea est une adorable chatte calico d un an, pleine de vie et de curiosite. Trouvee a l age d un mois, cachee dans un moteur de voiture, elle a ete rapidement amenee a la SPC. Avec son pelage tricolore et ses yeux petillants, elle charme tout le monde par sa douceur et son energie debordante. Tres joueuse, elle adore courir apres ses jouets et se divertir dans chaque recoin de la maison. Un veritable rayon de soleil !"),
(2, 'Cleo', 2, 'Calico', 'Gourmand', 'F', 'cleo.jpeg', "Cleo est une chatte calico de 2 ans, douce mais independante, et particulierement gourmande. Trouvee dans un carton abandonne dans les bois, elle a ete recueillie par la SPC et cherche un foyer. Bien qu elle n aime pas les caresses, elle est tres attachee a sa tranquillite et apprecie surtout ses repas. Elle est un peu timide, mais son cote gourmand fait toujours le bonheur de ceux qui lui offrent une petite friandise."),
(3, 'Fripouille', 5, 'Blanc', 'Dormeur', 'M', 'fripouille.jpg', "Fripouille est un chat de 5 ans, au pelage tout blanc et a l esprit calme. Trouve errant dans la rue, il a ete amene a la SPC, ou il a trouve un endroit sur et paisible. Tres dormeur, il passe la plupart de son temps a se reposer dans des coins confortables. Bien qu il soit discret et peu demandeur d attention, il sait apprecier les moments de calme et de serenite. Un chat tranquille et doux, parfait pour les amateurs de siestes !"),
(4, 'Courgette', 3, 'Orange', 'Joueur', 'M', 'courgette.jpg', "Courgette est un chat de 3 ans au pelage orange eclatant et a l energie debordante. Trouve dans un jardin prive, il a ete rapidement pris en charge et amene a la SPC. Tres joueur, il adore courir apres ses jouets et explorer son environnement. Toujours pret a s amuser, Courgette est un compagnon dynamique qui apporte une touche de vivacite et de joie a chaque moment."),
(5, 'Peach', 14, 'Calico', 'Actif', 'F', 'peach.jpg', "Peach est une chatte calico de 14 ans, pleine de vie et d energie. Amee a la SPC parce que ses precedents maitres ne pouvaient plus s occuper d elle, elle cherche un foyer chaleureux pour y passer ses belles annees. Bien qu elle soit un peu plus agee, elle reste active et curieuse, toujours prete a explorer son environnement. Affectueuse et attentive, Peach a encore beaucoup d amour a offrir a une famille prete a l accueillir. Un compagnon fidele et plein de charme !"),
(6, 'Leon', 13, 'Orange', 'Dormeur', 'M', 'leon.jpg', "Leon est un majestueux chat de 13 ans, a la fourrure orange eclatante. Ce vieux monsieur paisible et dormeur a traverse des epreuves, ayant perdu son foyer et connu l incertitude. Heureusement, il a ete recueilli par la SPC, ou il profite desormais d un environnement calme et securisant. Leon reve de retrouver une famille aimante pour partager sa douceur et ses siestes interminables."),
(7, 'Nougatine', 7, 'Brun', 'Affectueux', 'F', 'nougatine.jpg', "Nougatine est une charmante chatte de 7 ans, au pelage brun soyeux, qui respire la douceur et l affection. Retrouvee errante pres des poubelles d un supermarche, elle a vecu des jours difficiles avant d etre sauvee par la SPC. Maintenant en securite, Nougatine montre chaque jour son amour pour la compagnie humaine et espere trouver un foyer chaleureux qui saura lui offrir la tendresse qu elle merite."),
(8, 'Vroum', 2, 'Bicolore', 'Actif', 'M', 'vroum.jpg', "Vroum est un jeune chat de 2 ans, a la robe bicolore eclatante melant orange et blanc, qui deborde d energie et de curiosite. Actif et joueur, il a ete trouve errant dans les rues, explorant son environnement avec audace malgre les dangers. Recueilli par la SPC, il attend desormais un nouveau depart dans une maison ou son dynamisme et sa joie de vivre seront pleinement apprecies."),
(9, 'Pudding', 6, 'Gris', 'Gourmand', 'M', 'pudding.jpg', "Pudding est un adorable chat gris de 6 ans, connu pour son amour inconditionnel de la nourriture et sa bouille irresistible. Ce gourmand au grand coeur a malheureusement ete laisse a l abandon, livrant son sort a l incertitude. Recueilli par la SPC, il commence a reprendre confiance et espere trouver une famille attentionnee, prete a lui offrir une vie stable et des friandises (avec moderation)."),
(10, 'Moka', 3, 'Brun', 'Timide', 'F', 'moka.jpg', "Moka est une elegante chatte au pelage brun, agee de 3 ans, dont la timidity touchante revele une grande sensibilite. Amee a la SPC par une personne bienveillante, elle s adapte doucement a son nouvel environnement, decouvrant peu a peu qu elle est en securite. Avec un peu de patience et beaucoup de douceur, Moka reve de trouver un foyer calme ou elle pourra s epanouir et offrir sa tendresse discrète."),
(11, 'Zorro', 4, 'Noir', 'Affectueux', 'M', 'zorro.jpg', "Zorro est un magnifique chat noir de 4 ans, au regard perçant mais au caractere infiniment doux. Trouve errant en pleine campagne, il semblait chercher desesperement une presence humaine a aimer. Affectueux et sociable, il a ete recueilli par la SPC, ou il charme tout le monde par ses ronronnements apaisants. Zorro attend desormais un foyer aimant pour partager sa tendresse et sa fidelite."),
(12, 'Saphir', 2, 'Gris', 'Affectueux', 'M', 'saphir.jpg', "Saphir est un chat gris de 2 ans, au temperament doux et affectueux, qui a connu la tristesse de l abandonment. Ses anciens proprietaires l ont laisse derriere eux, mais malgre cela, il reste un compagnon chaleureux, toujours pret a donner de l amour. Recueilli par la SPC, il s epanouit lentement dans un environnement securisant, esperant trouver enfin une famille qui saura lui offrir la stabilite et l affection qu il merite."),
(13, 'Perle', 6, 'Blanc', 'Timide', 'F', 'perle.jpg', "Perle est une chatte blanche angora de 6 ans, au pelage soyeux et eclatant, mais a la personnalite plus reservee. Elle a ete trouvee dans un carton abandonne aux portes de la SPC, ou elle a ete recueillie dans un environnement securisant. Timide au debut, Perle cherche lentement a accorder sa confiance, mais une fois apprivoisee, elle devient un compagnon doux et delicat. Elle reve d un foyer calme et aimant, ou elle pourra enfin se sentir chez elle."),
(14, 'Pepito', 4, 'Bicolore', 'Joueur', 'M', 'pepito.jpg', "Pepito est un chat bicolore de 4 ans, au pelage chimere unique qui mele des teintes noires et oranges. Trouve errant dans la rue, puis amene a la SPC, ce jeune male joueur et curieux a rapidement montre son caractere vif et espiègle. Malgre son passe difficile, Pepito s adapte bien a son nouvel environnement et aime explorer chaque recoin avec enthousiasme. Il cherche desormais une famille active et pleine d amour, prete a partager ses moments de jeu et de tendresse."),
(15, 'Sir Meowington', 8, 'Brun', 'Dormeur', 'M', 'Sir_Meowington.jpg', "Sir Meowington est un chat brun de 8 ans, au regard tranquille et a la personnalite douce. Ce veritable dormeur adore passer ses journees a se reposer, savourant chaque moment de calme. Il s est retrouve sans maitres lorsque ses proprietaires, trop ages pour s occuper de lui, ont du se separer de lui. Bien qu un peu reserve au debut, Sir Meowington est un compagnon affectueux qui cherche desormais un foyer stable et paisible ou il pourra profiter de ses siestes et de l affection de ses nouveaux maitres."),
(16, 'TigriMignon', 4, 'Orange', 'Affectueux', 'M', 'tigri_mignon.jpg', "TigriMignon est un chat orange de 4 ans, au caractere doux et affectueux, qui na pas toujours connu la douceur dun foyer. Ancien chat errant, il a longtemps vecu seul dans la rue avant detre recueilli par la SPC. Aujourdhui, il a retrouve la securite et la chaleur dun refuge, ou il se revele etre un compagnon tendre et calin. TigriMignon cherche desormais une famille aimante et attentionnee, prete a lui offrir la stabilite quil merite."),
(17, 'Caline', 7, 'Bicolore', 'Affectueux', 'F', 'caline.jpg', "Caline est une chatte bicolore de 7 ans, au pelage type tuxedo noir et blanc qui lui donne une allure elegante et charmante. Trouvee errante, elle a rapidement montre son cote doux et affectueux, cherchant a etablir des liens avec les humains. Malgre son passe difficile, Caline est un veritable rayon de soleil, prete a offrir son amour et ses calins. Elle espere desormais trouver un foyer calme ou elle pourra enfin se poser et profiter de la compagnie d une famille bienveillante."),
(18, 'Catastrophe', 2, 'Noir', 'Joueur', 'M', 'catastrophe.jpg', "Catastrophe est un chat noir de 2 ans, au caractere dynamique et joueur, mais aussi un peu maladroit dans ses mouvements. Retrouve sous une voiture, il a ete sauve d une situation dangereuse et a vite fait sourire les gens autour de lui par ses petites gaffes. Malgre son nom, qui lui va si bien, il est aussi affectueux et adore recevoir des calins apres ses moments de jeu. Catastrophe cherche maintenant un foyer ou il pourra partager ses aventures, ses maladresses et beaucoup de douceur."),
(19, 'Chatperlipopette', 4, 'Blanc', 'Actif', 'M', 'chat_perlipopette.jpg', "Chat Perlipopette est un chat blanc de 4 ans, debordant d energie et toujours pret a courir, sauter et explorer son environnement. Malmene par ses anciens proprietaires, il a du surmonter des epreuves avant d etre recueilli par la SPC, mais son caractere actif et curieux est reste intact. Lorsqu il n est pas en train de se depenser, il cherche a nouer des liens avec les humains, preuve de sa capacite a offrir de l affection. Chat Perlipopette reve desormais de trouver un foyer ou il pourra canaliser toute son energie et vivre pleinement ses aventures."),
(20, 'Patate', 1, 'Bicolore', 'Dormeur', 'F', 'patate.jpg', "Patate est une chatte bicolore de 1 an, au pelage orange et blanc, qui aime avant tout se reposer et profiter de ses longues siestes. Trouvee dans la rue, elle a ete recueillie par la SPC ou elle a pu retrouver un peu de serenite. Malgre sa nature calme et son gout pour le sommeil, Patate est aussi douce et caline, appreciant les moments de tendresse avec les humains. Elle cherche desormais un foyer chaleureux ou elle pourra s epanouir et continuer a savourer la tranquillite de ses siestes."),
(21, 'Miss Miaou', 6, 'Calico', 'Joueur', 'F', 'miss_miaou.jpg', "Miss Miaou est une chatte calico de 6 ans, au pelage tachete et colore, pleine de vie et d energie. Errant dans les rues, elle a appris a se debrouiller toute seule, mais son esprit joueur et curieux n a jamais faibli. Elle adore les moments de jeu, ou elle se montre agile et espiegle, prete a courir apres chaque plume ou boule de papier. Maintenant en securite, Miss Miaou cherche un foyer attentionne ou elle pourra enfin profiter d une vie plus stable, remplie de calins et de moments de complicite."),
(22, 'Chipie', 5, 'Orange', 'Actif', 'F', 'chipie.jpg', "Chipie est une chatte orange de 5 ans, au caractere dynamique et energique. Retrouvee seule dans une maison vide avant d etre amenee a la SPC, elle a rapidement montre sa nature active, toujours en quete de nouvelles aventures. Curieuse et pleine de vie, elle aime explorer son environnement et jouer sans cesse. Maintenant en securite, Chipie espere trouver une famille qui pourra partager son enthousiasme et lui offrir un foyer ou elle pourra s epanouir pleinement."),
(23, 'Petale', 9, 'Gris', 'Gourmand', 'F', 'petale.jpg', "Petale est une chatte grise de 9 ans, douce et gourmande, qui apprecie particulierement les moments ou elle peut deguster un bon repas. Retrouvee cachee dans un garage, elle cherchait sans doute un endroit sur apres avoir ete abandonnee. Malgre son passe difficile, Petale reste affectueuse et calme, prete a partager ses calins avec ceux qui prennent le temps de la connaitre. Elle reve maintenant de trouver une famille patiente et aimante, prete a lui offrir une vie pleine de confort, de serenite et de gourmandises a savourer."),
(24, 'Gaufrette', 2, 'Calico', 'Timide', 'F', 'gaufrette.jpg', "Gaufrette est une chatte calico de 2 ans, au pelage colore et doux, mais d un temperament timide. Retrouvee cachee dans un cabanon de jardin, elle cherchait a se proteger du froid avant d etre recueillie par la SPC. Bien qu elle soit reservee au depart, Gaufrette est une petite boule de douceur qui, une fois en confiance, apprecie les caresses et les moments de tendresse. Elle reve maintenant de trouver un foyer calme et chaleureux, ou elle pourra s epanouir en toute securite et partager son affection."),
(25, 'Patapouf', 9, 'Bicolore', 'Dormeur', 'M', 'patapouf.jpg', "Patapouf est un chat bicolore de 9 ans, au pelage tuxedo noir et blanc, qui adore passer ses journees a faire des siestes bien meritees. Retrouve dans les bois, il a ete recueilli par la SPC alors qu il errait seul, a la recherche de confort et de securite. Bien qu il soit un grand dormeur, Patapouf est aussi un chat doux qui apprecie la compagnie humaine et cherche des moments de tranquillite partages. Il cherche desormais un foyer paisible ou il pourra se reposer en toute serenite et profiter de l amour qu il merite."),
(26, 'Froussard', 6, 'Noir', 'Timide', 'M', 'froussard.jpg', "Froussard est un chat noir de 6 ans, au regard timide et a la personnalite reservee. Trouve errant dans la rue, il a vecu de longues periodes d incertitude avant d etre recueilli par la SPC. Malgre sa nature craintive, Froussard est un compagnon sensible qui, avec un peu de patience, peut apprendre a accorder sa confiance. Il cherche maintenant un foyer calme et bienveillant, ou il pourra se sentir en securite et commencer a tisser des liens affectueux."),
(27, 'Zaza', 5, 'Gris', 'Dormeur', 'F', 'zaza.jpg', "Zaza est une chatte grise de 5 ans, douce et calme, qui aime passer ses journees a se reposer. Retrouvee errant dans un parc public, elle cherchait surement un endroit tranquille pour se poser apres avoir vecu seule dans la rue. Bien qu elle soit une grande dormeuse, Zaza est aussi une chatte affectueuse qui apprecie les calins et la compagnie humaine. Elle reve desormais de trouver un foyer chaleureux ou elle pourra profiter de moments de serenite et de tendresse."),
(28, 'Pif', 4, 'Blanc', 'Joueur', 'M', 'pif.jpg', "Pif est un chat blanc de 4 ans, plein de vie et toujours pret a s amuser. Trouve cache dans une grange, il cherchait sans doute un endroit sur avant d etre decouvert. Curieux et joueur, il adore explorer son environnement et se divertir avec tout ce qui se trouve a sa porte. Maintenant en securite, Pif cherche un foyer actif et attentionne, ou il pourra depenser son energie et profiter de calins et de moments complices."),
(29, 'Violette', 10, 'Bicolore', 'Affectueux', 'F', 'violette.jpg', "Violette est une chatte bicolore de 10 ans, au pelage blanc et brun, douce et profondement affectueuse. Abandonnee a cause de son age, elle a vecu des moments difficiles, mais elle reste une compagne aimante qui cherche avant tout de la tendresse. Malgre ses annees, elle garde une energie calme et apprecie particulierement les calins et les moments de tranquilite. Violette reve maintenant de trouver une famille bienveillante, prete a lui offrir un foyer stable et plein d amour pour ses annees a venir."),
(30, 'Choupinette', 11, 'Calico', 'Timide', 'F', 'choupinette.jpg', "Choupinette est une chatte calico de 11 ans, au pelage colore et doux, mais d un temperament timide. Errant dans la rue, elle a du faire face a la solitude et a l incertitude de la vie dehors. Bien qu elle soit reservee, Choupinette est une chatte affectueuse qui, une fois en confiance, apprecie les caresses et la compagnie humaine. Elle reve desormais de trouver un foyer paisible ou elle pourra se poser, loin du tumulte, et passer ses dernieres annees entouree d amour et de serenite.");


