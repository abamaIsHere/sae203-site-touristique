-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2026 at 03:46 PM
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
-- Database: `trips`
--

-- --------------------------------------------------------

--
-- Table structure for table `activites`
--

CREATE TABLE `activites` (
  `id_activite` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `duree` varchar(40) NOT NULL,
  `derniere_entre` varchar(40) NOT NULL,
  `service_comprend` text NOT NULL,
  `prix` varchar(40) NOT NULL,
  `activite_img` varchar(255) DEFAULT NULL,
  `info_important` text DEFAULT NULL,
  `id_villes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activites`
--

INSERT INTO `activites` (`id_activite`, `titre`, `desc`, `duree`, `derniere_entre`, `service_comprend`, `prix`, `activite_img`, `info_important`, `id_villes`) VALUES
(1, 'Tour Eiffel Privé', 'Visite exclusive du sommet.', '2h', '18:00', 'Guide, Coupe-file', '85€', NULL, 'Arriver 15 min avant', 1),
(2, 'Bateau Mouche', 'Croisière sur la Seine.', '1h', '22:00', 'Audio-guide', '15€', NULL, 'Vêtements chauds conseillés', 1),
(3, 'Louvre Express', 'Parcours chef-d’œuvre.', '3h', '17:30', 'Entrée, Plan', '45€', NULL, 'Pas de sacs volumineux', 1),
(4, 'Dîner à Montmartre', 'Repas typique français.', '2h30', '20:30', 'Menu 3 plats', '60€', NULL, 'Tenue correcte exigée', 1),
(5, 'Spectacle Moulin Rouge', 'Cabaret mythique.', '2h', '23:00', 'Spectacle, Champagne', '120€', NULL, 'Interdit aux -12 ans', 1),
(6, 'Vieux Lyon Gastronomie', 'Tour culinaire des bouchons.', '4h', '14:00', 'Dégustations', '75€', NULL, 'Bonnes chaussures', 2),
(7, 'Fourvière à vélo', 'Balade électrique sur la colline.', '2h', '18:00', 'Vélo, Casque', '35€', NULL, 'Taille min 1m50', 2),
(8, 'Parc de la Tête d\'Or', 'Tour privé du lac.', '1h30', '19:00', 'Guide', '20€', NULL, 'Accessible PMR', 2),
(9, 'Atelier Soierie', 'Apprendre le tissage lyonnais.', '2h', '16:00', 'Matériel', '40€', NULL, 'Réservation obligatoire', 2),
(10, 'Musée Cinéma & Miniature', 'Visite des décors.', '2h', '18:30', 'Ticket', '12€', NULL, 'Photos autorisées', 2),
(11, 'Promenade des Anglais', 'Tour en Segway.', '1h', '20:00', 'Segway, Formation', '30€', NULL, 'Poids max 110kg', 3),
(12, 'Plongée Cap Ferrat', 'Baptême de plongée.', '3h', '17:00', 'Équipement complet', '90€', NULL, 'Certificat médical', 3),
(13, 'Cours de Cuisine Niçoise', 'Apprendre la socca.', '3h', '13:00', 'Ingrédients', '55€', NULL, 'Tablier fourni', 3),
(14, 'Excursion Monaco', 'Journée luxe et casino.', '8h', '19:00', 'Transport AR', '110€', NULL, 'Passeport valide', 3),
(15, 'Parachute Ascensionnel', 'Vue sur la Baie des Anges.', '15min', '18:00', 'Vol, Gilet', '70€', NULL, 'Sous réserve météo', 3),
(16, 'Shibuya Crossing Tour', 'Immersion urbaine.', '2h', '21:00', 'Guide local', '25€', NULL, 'Très fréquenté', 4),
(17, 'Cérémonie du Thé', 'Tradition à Kyoto/Tokyo.', '1h30', '16:00', 'Thé Matcha, Pâtisserie', '50€', NULL, 'S\'asseoir au sol', 4),
(18, 'Robot Restaurant', 'Spectacle futuriste.', '1h30', '22:00', 'Entrée, 1 boisson', '80€', NULL, 'Bruit intense', 4),
(19, 'Karting Akihabara', 'Conduite en ville déguisée.', '2h', '18:00', 'Kart, Costume', '95€', NULL, 'Permis international', 4),
(20, 'Mont Fuji Express', 'Excursion vue panoramique.', '10h', '20:00', 'Bus, Déjeuner', '130€', NULL, 'Départ tôt le matin', 4),
(21, 'Empire State Building', 'Accès plateforme 86e.', '1h30', '00:00', 'Ticket coupe-file', '42€', NULL, 'Contrôle sécurité', 5),
(22, 'Hélicoptère Manhattan', 'Survol de la Statue.', '15min', '17:00', 'Vol', '250€', NULL, 'Taxe héliport en sus', 5),
(23, 'Central Park à Vélo', 'Location et tour guidé.', '2h', '18:00', 'Vélo, Antivol', '25€', NULL, 'Casque obligatoire', 5),
(24, 'Messe Gospel Harlem', 'Expérience spirituelle.', '3h', '13:00', 'Transport, Guide', '65€', NULL, 'Tenue respectueuse', 5),
(25, 'Broadway : Le Roi Lion', 'Comédie musicale.', '2h45', '22:30', 'Siège catégorie 1', '160€', NULL, 'Arriver 30 min avant', 5),
(26, 'Colisée & Forum', 'Visite Rome Antique.', '3h', '17:30', 'Guide, Entrée', '55€', NULL, 'Bouteille d\'eau', 6),
(27, 'Musées du Vatican', 'Chapelle Sixtine.', '4h', '18:00', 'Guide expert', '70€', NULL, 'Épaules couvertes', 6),
(28, 'Cours de Pasta', 'Apprendre les Fettuccine.', '3h', '20:30', 'Vin, Dîner inclus', '85€', NULL, 'Allergies à préciser', 6),
(29, 'Trastevere Night Tour', 'Balade et dégustation vin.', '3h', '23:30', 'Dégustations', '45€', NULL, 'Majorité requise', 6),
(30, 'Catacombes de Rome', 'Visite souterraine.', '1h30', '17:00', 'Guide, Lampe', '30€', NULL, 'Déconseillé claustrophobes', 6);

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int(11) NOT NULL,
  `avis_nom` varchar(40) NOT NULL,
  `avis_prenom` varchar(40) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `avis_desc` text DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avis`
--

INSERT INTO `avis` (`id_avis`, `avis_nom`, `avis_prenom`, `note`, `avis_desc`, `id_activite`) VALUES
(39, 'tayef', 'Abdullah', '5', 'wow', 0),
(40, 'Dupont', 'Jean', '5/5', 'Expérience inoubliable !', 1),
(41, 'Smith', 'Alice', '4/5', 'Très bien organisé.', 2),
(42, 'Garcia', 'Maria', '3/5', 'Un peu cher pour le service.', 3),
(43, 'Petit', 'Thomas', '5/5', 'Le Louvre Express porte bien son nom. On a vu l\'essentiel très vite.', 3),
(44, 'Dubois', 'Chloé', '3/5', 'Le dîner à Montmartre était bon, mais la salle était un peu bruyante.', 4),
(45, 'Durand', 'Julien', '5/5', 'Le spectacle du Moulin Rouge est magique ! Décors impressionnants.', 5),
(46, 'Moreau', 'Sarah', '5/5', 'Le tour gastronomique était un régal du début à la fin. Les bouchons sont tops !', 6),
(47, 'Girard', 'Florent', '5/5', 'Une découverte culinaire incroyable, le guide lyonnais était passionné.', 6),
(48, 'Pierre', 'Couturier', '4/5', 'La montée de Fourvière en vélo électrique se fait sans aucun effort.', 7),
(49, 'Michel', 'Marie', '4/5', 'Une balade très reposante autour du lac du Parc de la Tête d\'Or.', 8),
(50, 'Lefevre', 'Nicolas', '5/5', 'Très bel atelier de soierie lyonnaise. Savoir-faire unique.', 9),
(51, 'Roux', 'Léa', '5/5', 'Le musée miniature et cinéma est une pépite absolue. Très détaillé.', 10),
(52, 'Garcia', 'Alexandre', '4/5', 'Le Segway sur la Promenade des Anglais est super amusant !', 11),
(53, 'Bertrand', 'Julie', '5/5', 'Mon baptême de plongée au Cap Ferrat s\'est bien passé. Moniteurs rassurants.', 12),
(54, 'Faure', 'Antoine', '4/5', 'Le cours de cuisine niçoise était top. J\'ai adoré faire la socca.', 13),
(55, 'Blanc', 'Manon', '3/5', 'L\'excursion à Monaco est sympa mais le temps libre passe trop vite.', 14),
(56, 'Mercier', 'Guillaume', '5/5', 'Sensations fortes garanties avec le parachute ascensionnel à Nice !', 15),
(57, 'Scott', 'Kevin', '4/5', 'Traverser le Shibuya Crossing avec un guide local est impressionnant.', 16),
(58, 'Tanaka', 'Yuki', '5/5', 'Une cérémonie du thé traditionnelle gravée dans ma mémoire.', 17),
(59, 'Miller', 'David', '4/5', 'Le Robot Restaurant est complètement déjanté et futuriste.', 18),
(60, 'Taylor', 'Jessica', '5/5', 'Faire du kart déguisé dans les rues d\'Akihabara est une expérience unique !', 19),
(61, 'Clark', 'Oliver', '5/5', 'Le meilleur moment de mon voyage au Japon. Conduire au milieu du trafic est fou.', 19),
(62, 'Martinez', 'Sophie', '5/5', 'La vue sur le Mont Fuji depuis le bus était totalement dégagée.', 20),
(63, 'Doe', 'John', '4/5', 'Monter en haut de l\'Empire State Building offre une vue superbe.', 21),
(64, 'Smith', 'Emily', '5/5', 'Le survol de Manhattan en hélicoptère vaut largement son prix.', 22),
(65, 'Johnson', 'Michael', '4/5', 'Central Park à vélo est le meilleur moyen de voir l\'ensemble du parc.', 23),
(66, 'Williams', 'Sarah', '5/5', 'La messe Gospel à Harlem était vibrante d\'énergie et d\'émotion.', 24),
(67, 'Brown', 'James', '5/5', 'La comédie musicale du Roi Lion sur Broadway est un chef-d’œuvre.', 25),
(68, 'Rossi', 'Matteo', '5/5', 'Le Colisée et le Forum Romain sont magnifiques. Guide très calé.', 26),
(69, 'Ricci', 'Elena', '5/5', 'Une immersion totale dans la Rome Antique, l\'organisation était parfaite.', 26),
(70, 'Bianchi', 'Francesca', '4/5', 'La Chapelle Sixtine au Vatican est splendide, dommage qu\'il y ait du monde.', 27),
(71, 'Esposito', 'Elena', '5/5', 'Le cours de pasta était génial ! On a appris à faire des fettuccine maison.', 28),
(72, 'Romano', 'Giovanni', '4/5', 'Le Trastevere Night Tour permet de découvrir les coins cachés de Rome.', 29),
(73, 'Colombo', 'Sofia', '4/5', 'La visite des catacombes de Rome est très mystérieuse.', 30),
(74, 'Dupont', 'Jean', '5/5', 'La visite privée de la Tour Eiffel était incroyable ! Le guide était top.', 1),
(75, 'Martin', 'Lucas', '4/5', 'Une vue imprenable sur tout Paris, à faire absolument une fois dans sa vie !', 1),
(76, 'Bernard', 'Emma', '4/5', 'Superbe croisière en Bateau Mouche sur la Seine au coucher du soleil.', 2),
(77, 'tayef', 'abdullah', '1', 'gfyuh', 2),
(78, 'jack', 'doe', '5', 'nice', 21),
(79, 'jack', 'doe', '5', 'nice', 21),
(80, 'jack', 'doe', '5', 'nice', 21),
(81, 'kings', 'lee', '4', 'kjnn', 21),
(82, 'kings', 'lee', '4', 'kjnn', 21),
(83, 'tayef', 'Abdullah', '3', 'lk,l', 21),
(84, 'Jhon', 'doe', '5', 'nice', 1),
(85, 'Jhon', 'doe', '5', 'nice', 1),
(86, 'kings', 'lee', '3', 'fffffff', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Explore'),
(2, 'Entertainment'),
(3, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `categorie_activites`
--

CREATE TABLE `categorie_activites` (
  `id_categorie` int(11) NOT NULL,
  `id_activite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie_activites`
--

INSERT INTO `categorie_activites` (`id_categorie`, `id_activite`) VALUES
(1, 1),
(1, 3),
(2, 5),
(2, 18),
(2, 25),
(3, 5),
(3, 12),
(3, 15),
(3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(100) NOT NULL,
  `mail_client` varchar(100) NOT NULL,
  `message_client` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `nom_client`, `mail_client`, `message_client`) VALUES
(1, 'Abdullah Al Masud Tayef', 'abdullah-al-masud.tayef@etu.unistra.fr', 'kughqdkycgze'),
(2, 'Abdullah Al Masud Tayef', 'abdullah-al-masud.tayef@etu.unistra.fr', 'salam'),
(3, 'Abdullah Al Masud Tayef&lt;script&gt;!alert&lt;/script&gt;', 'abdullah-al-masud.tayef@etu.unistra.fr', '&lt;script&gt;!alert&lt;/script&gt;'),
(4, 'Abdullah Al Masud Tayef', 'abdullah-al-masud.tayef@etu.unistra.fr', 'bruh'),
(5, 'Abdullah Al Masud Tayef', 'abdullah-al-masud.tayef@etu.unistra.fr', '&lt;script&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_images` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `id_activite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_images`, `img`, `id_activite`) VALUES
(3, '/SAE203_tayef_abdullahalmasud_v4/images/activites/ferrat/ferrat4.avif', 12),
(4, '/SAE203_tayef_abdullahalmasud_v4/images/activites/karting/karting4.avif', 19),
(5, '/SAE203_tayef_abdullahalmasud_v4/images/activites/paris1.avif', 1),
(6, '/SAE203_tayef_abdullahalmasud_v4/images/activites/paris2.avif', 1),
(7, '/SAE203_tayef_abdullahalmasud_v4/images/activites/paris3.avif', 1),
(8, '/SAE203_tayef_abdullahalmasud_v4/images/activites/paris4.avif', 1),
(9, '/SAE203_tayef_abdullahalmasud_v4/images/activites/paris5.avif', 1),
(10, '/SAE203_tayef_abdullahalmasud_v4/images/activites/spectacle_moulin_rouge/spectacle_moulin_rouge.avif', 5),
(11, '/SAE203_tayef_abdullahalmasud_v4/images/activites/spectacle_moulin_rouge/spectacle_moulin_rouge2.avif', 5),
(12, '/SAE203_tayef_abdullahalmasud_v4/images/activites/spectacle_moulin_rouge/spectacle_moulin_rouge3.avif', 5),
(13, '/SAE203_tayef_abdullahalmasud_v4/images/activites/spectacle_moulin_rouge/spectacle_moulin_rouge4.avif', 5),
(14, '/SAE203_tayef_abdullahalmasud_v4/images/activites/spectacle_moulin_rouge/spectacle_moulin_rouge5.avif', 5),
(15, '/SAE203_tayef_abdullahalmasud_v4/images/activites/louvre_express/louvre_express.avif', 3),
(16, '/SAE203_tayef_abdullahalmasud_v4/images/activites/louvre_express/louvre_express2.avif', 3),
(17, '/SAE203_tayef_abdullahalmasud_v4/images/activites/louvre_express/louvre_express3.avif', 3),
(18, '/SAE203_tayef_abdullahalmasud_v4/images/activites/louvre_express/louvre_express4.avif', 3),
(19, '/SAE203_tayef_abdullahalmasud_v4/images/activites/louvre_express/louvre_express5.avif', 3),
(20, '/SAE203_tayef_abdullahalmasud_v4/images/activites/diner_a_montmartre/diner_a_montmartre.avif', 4),
(21, '/SAE203_tayef_abdullahalmasud_v4/images/activites/diner_a_montmartre/diner_a_montmartre2.avif', 4),
(22, '/SAE203_tayef_abdullahalmasud_v4/images/activites/diner_a_montmartre/diner_a_montmartre4.avif', 4),
(23, '/SAE203_tayef_abdullahalmasud_v4/images/activites/bateau_mouche/bateau_mouche.avif', 2),
(24, '/SAE203_tayef_abdullahalmasud_v4/images/activites/bateau_mouche/bateau_mouche2.avif', 2),
(25, '/SAE203_tayef_abdullahalmasud_v4/images/activites/bateau_mouche/bateau_mouche3.avif', 2),
(26, '/SAE203_tayef_abdullahalmasud_v4/images/activites/bateau_mouche/bateau_mouche4.avif', 2),
(28, '/SAE203_tayef_abdullahalmasud_v4/images/activites/bateau_mouche/bateau_mouche5.avif', 2),
(30, '/SAE203_tayef_abdullahalmasud_v4/images/activites/empire_state_building/empire_state_building.avif', 21),
(31, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan.avif', 22),
(32, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan2.avif', 22),
(33, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan3.avif', 22),
(34, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan4.avif', 22),
(35, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan5.avif', 22),
(36, '/SAE203_tayef_abdullahalmasud_v4/images/activites/empire_state_building/empire_state_building2.avif', 21),
(37, '/SAE203_tayef_abdullahalmasud_v4/images/activites/empire_state_building/empire_state_building3.avif', 21),
(38, '/SAE203_tayef_abdullahalmasud_v4/images/activites/empire_state_building/empire_state_building4.avif', 21),
(39, '/SAE203_tayef_abdullahalmasud_v4/images/activites/empire_state_building/empire_state_building5.avif', 21),
(40, '/SAE203_tayef_abdullahalmasud_v4/images/activites/vieux_lyon_gastronomie/vieux_lyon_gastronomie.avif', 6),
(41, '/SAE203_tayef_abdullahalmasud_v4/images/activites/vieux_lyon_gastronomie/vieux_lyon_gastronomie2.avif', 6),
(42, '/SAE203_tayef_abdullahalmasud_v4/images/activites/vieux_lyon_gastronomie/vieux_lyon_gastronomie3.avif', 6),
(43, '/SAE203_tayef_abdullahalmasud_v4/images/activites/fourviere_a_velo/fourviere_a_velo.avif', 7),
(44, '/SAE203_tayef_abdullahalmasud_v4/images/activites/fourviere_a_velo/fourviere_a_velo2.avif', 7),
(45, '/SAE203_tayef_abdullahalmasud_v4/images/activites/fourviere_a_velo/fourviere_a_velo3.avif', 7),
(46, '/SAE203_tayef_abdullahalmasud_v4/images/activites/parc_tete/parc_tete.avif', 8),
(47, '/SAE203_tayef_abdullahalmasud_v4/images/activites/parc_tete/parc_tete2.avif', 8),
(48, '/SAE203_tayef_abdullahalmasud_v4/images/activites/parc_tete/parc_tete3.avif', 8),
(49, '/SAE203_tayef_abdullahalmasud_v4/images/activites/atelier_soierie/atelier_soierie.avif', 9),
(50, '/SAE203_tayef_abdullahalmasud_v4/images/activites/atelier_soierie/atelier_soierie2.avif', 9),
(51, '/SAE203_tayef_abdullahalmasud_v4/images/activites/atelier_soierie/atelier_soierie3.avif', 9),
(52, '/SAE203_tayef_abdullahalmasud_v4/images/activites/musee_cine/musee_cine.avif', 10),
(53, '/SAE203_tayef_abdullahalmasud_v4/images/activites/musee_cine/musee_cine2.avif', 10),
(54, '/SAE203_tayef_abdullahalmasud_v4/images/activites/musee_cine/musee_cine3.avif', 10),
(55, '/SAE203_tayef_abdullahalmasud_v4/images/activites/promenade/promenade.avif', 11),
(56, '/SAE203_tayef_abdullahalmasud_v4/images/activites/promenade/promenade2.avif', 11),
(57, '/SAE203_tayef_abdullahalmasud_v4/images/activites/promenade/promenade3.avif', 11),
(58, '/SAE203_tayef_abdullahalmasud_v4/images/activites/ferrat/ferrat.avif', 12),
(59, '/SAE203_tayef_abdullahalmasud_v4/images/activites/ferrat/ferrat2.avif', 12),
(60, '/SAE203_tayef_abdullahalmasud_v4/images/activites/ferrat/ferrat3.avif', 12),
(61, '/SAE203_tayef_abdullahalmasud_v4/images/activites/cours_de_cuisine/cours_de_cuisine.avif', 13),
(62, '/SAE203_tayef_abdullahalmasud_v4/images/activites/cours_de_cuisine/cours_de_cuisine2.avif', 13),
(63, '/SAE203_tayef_abdullahalmasud_v4/images/activites/cours_de_cuisine/cours_de_cuisine3.avif', 13),
(64, '/SAE203_tayef_abdullahalmasud_v4/images/activites/excursion_monaco/excursion_monaco.avif', 14),
(65, '/SAE203_tayef_abdullahalmasud_v4/images/activites/excursion_monaco/excursion_monaco2.avif', 14),
(66, '/SAE203_tayef_abdullahalmasud_v4/images/activites/excursion_monaco/excursion_monaco3.avif', 14),
(67, '/SAE203_tayef_abdullahalmasud_v4/images/activites/parachute_ascensionnel/parachute_ascensionnel.avif', 15),
(68, '/SAE203_tayef_abdullahalmasud_v4/images/activites/parachute_ascensionnel/parachute_ascensionnel2.avif', 15),
(69, '/SAE203_tayef_abdullahalmasud_v4/images/activites/parachute_ascensionnel/parachute_ascensionnel3.avif', 15),
(70, '/SAE203_tayef_abdullahalmasud_v4/images/activites/shibuya_crossing_tour/shibuya_crossing_tour.avif', 16),
(71, '/SAE203_tayef_abdullahalmasud_v4/images/activites/shibuya_crossing_tour/shibuya_crossing_tour2.avif', 16),
(72, '/SAE203_tayef_abdullahalmasud_v4/images/activites/shibuya_crossing_tour/shibuya_crossing_tour3.avif', 16),
(73, '/SAE203_tayef_abdullahalmasud_v4/images/activites/ceremonie_du_the/ceremonie_du_the.avif', 17),
(74, '/SAE203_tayef_abdullahalmasud_v4/images/activites/ceremonie_du_the/ceremonie_du_the2.avif', 17),
(75, '/SAE203_tayef_abdullahalmasud_v4/images/activites/ceremonie_du_the/ceremonie_du_the3.avif', 17),
(76, '/SAE203_tayef_abdullahalmasud_v4/images/activites/robot_restaurant/robot_restaurant.avif', 18),
(77, '/SAE203_tayef_abdullahalmasud_v4/images/activites/robot_restaurant/robot_restaurant2.avif', 18),
(78, '/SAE203_tayef_abdullahalmasud_v4/images/activites/robot_restaurant/robot_restaurant3.avif', 18),
(79, '/SAE203_tayef_abdullahalmasud_v4/images/activites/karting/karting.avif', 19),
(80, '/SAE203_tayef_abdullahalmasud_v4/images/activites/karting/karting2.avif', 19),
(81, '/SAE203_tayef_abdullahalmasud_v4/images/activites/karting/karting3.avif', 19),
(82, '/SAE203_tayef_abdullahalmasud_v4/images/activites/mont_fuji/mont_fuji.avif', 20),
(83, '/SAE203_tayef_abdullahalmasud_v4/images/activites/mont_fuji/mont_fuji2.avif', 20),
(84, '/SAE203_tayef_abdullahalmasud_v4/images/activites/mont_fuji/mont_fuji3.avif', 20),
(88, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan.avif', 22),
(89, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan2.avif', 22),
(90, '/SAE203_tayef_abdullahalmasud_v4/images/activites/helicoptere_manhattan/helicoptere_manhattan3.avif', 22),
(91, '/SAE203_tayef_abdullahalmasud_v4/images/activites/colisee_forum/colisee_forum.avif', 26),
(92, '/SAE203_tayef_abdullahalmasud_v4/images/activites/colisee_forum/colisee_forum2.avif', 26),
(93, '/SAE203_tayef_abdullahalmasud_v4/images/activites/colisee_forum/colisee_forum3.avif', 26),
(94, '/SAE203_tayef_abdullahalmasud_v4/images/activites/musees_du_vatican/musees_du_vatican.avif', 27),
(95, '/SAE203_tayef_abdullahalmasud_v4/images/activites/musees_du_vatican/musees_du_vatican2.avif', 27),
(96, '/SAE203_tayef_abdullahalmasud_v4/images/activites/musees_du_vatican/musees_du_vatican3.avif', 27),
(97, '/SAE203_tayef_abdullahalmasud_v4/images/activites/cours_de_pasta/cours_de_pasta.avif', 28),
(98, '/SAE203_tayef_abdullahalmasud_v4/images/activites/cours_de_pasta/cours_de_pasta2.avif', 28),
(99, '/SAE203_tayef_abdullahalmasud_v4/images/activites/cours_de_pasta/cours_de_pasta3.avif', 28),
(100, '/SAE203_tayef_abdullahalmasud_v4/images/activites/trastevere_night_tour/trastevere_night_tour.avif', 29),
(101, '/SAE203_tayef_abdullahalmasud_v4/images/activites/trastevere_night_tour/trastevere_night_tour2.avif', 29),
(102, '/SAE203_tayef_abdullahalmasud_v4/images/activites/trastevere_night_tour/trastevere_night_tour3.avif', 29),
(103, '/SAE203_tayef_abdullahalmasud_v4/images/activites/catacombe/catacombe.avif', 30),
(104, '/SAE203_tayef_abdullahalmasud_v4/images/activites/catacombe/catacombe2.avif', 30),
(105, '/SAE203_tayef_abdullahalmasud_v4/images/activites/catacombe/catacombe3.avif', 30),
(106, '/SAE203_tayef_abdullahalmasud_v4/images/activites/central_park/central_park.avif', 23),
(107, '/SAE203_tayef_abdullahalmasud_v4/images/activites/central_park/central_park2.avif', 23),
(108, '/SAE203_tayef_abdullahalmasud_v4/images/activites/central_park/central_park3.avif', 23),
(109, '/SAE203_tayef_abdullahalmasud_v4/images/activites/harlem/harlem.avif', 24),
(110, '/SAE203_tayef_abdullahalmasud_v4/images/activites/harlem/harlem2.avif', 24),
(111, '/SAE203_tayef_abdullahalmasud_v4/images/activites/harlem/harlem3.avif', 24),
(112, '/SAE203_tayef_abdullahalmasud_v4/images/activites/broadway_le_roi/broadway_le_roi.avif', 25),
(113, '/SAE203_tayef_abdullahalmasud_v4/images/activites/broadway_le_roi/broadway_le_roi2.avif', 25),
(114, '/SAE203_tayef_abdullahalmasud_v4/images/activites/broadway_le_roi/broadway_le_roi3.avif', 25),
(115, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id_villes` int(11) NOT NULL,
  `nom_villes` varchar(40) NOT NULL,
  `desc_court` text DEFAULT NULL,
  `ville_img` varchar(255) DEFAULT NULL,
  `pays` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id_villes`, `nom_villes`, `desc_court`, `ville_img`, `pays`) VALUES
(1, 'Paris', 'La ville lumière et ses monuments historiques.', '/SAE203_tayef_abdullahalmasud_v4/images/villes/paris.avif', 'France'),
(2, 'Lyon', 'Capitale de la gastronomie française.', '/SAE203_tayef_abdullahalmasud_v4/images/villes/lyon.avif', 'France'),
(3, 'Nice', 'La perle de la Côte d\'Azur.', '/SAE203_tayef_abdullahalmasud_v4/images/villes/nice.avif', 'France'),
(4, 'Tokyo', 'Mélange fascinant de tradition et modernité.', '/SAE203_tayef_abdullahalmasud_v4/images/villes/tokyo.avif', 'Japon'),
(5, 'New York', 'La ville qui ne dort jamais.', '/SAE203_tayef_abdullahalmasud_v4/images/villes/new_york.avif', 'USA'),
(6, 'Rome', 'Le musée à ciel ouvert de l\'Italie.', '/SAE203_tayef_abdullahalmasud_v4/images/villes/rome.avif', 'Italie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id_activite`),
  ADD KEY `id_villes` (`id_villes`);

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_avis`),
  ADD KEY `id_activite` (`id_activite`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `categorie_activites`
--
ALTER TABLE `categorie_activites`
  ADD PRIMARY KEY (`id_categorie`,`id_activite`),
  ADD KEY `id_activite` (`id_activite`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_images`),
  ADD KEY `id_activite` (`id_activite`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id_villes`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avis`
--
ALTER TABLE `avis`
  MODIFY `id_avis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id_images` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activites`
--
ALTER TABLE `activites`
  ADD CONSTRAINT `activites_ibfk_2` FOREIGN KEY (`id_villes`) REFERENCES `villes` (`id_villes`);

--
-- Constraints for table `categorie_activites`
--
ALTER TABLE `categorie_activites`
  ADD CONSTRAINT `categorie_activites_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`),
  ADD CONSTRAINT `categorie_activites_ibfk_2` FOREIGN KEY (`id_activite`) REFERENCES `activites` (`id_activite`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_activite`) REFERENCES `activites` (`id_activite`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
