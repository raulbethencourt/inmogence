-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 05, 2020 at 10:43 PM
-- Server version: 10.4.14-MariaDB-1:10.4.14+maria~focal
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfony`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200809141807', '2020-08-09 14:27:46', 39),
('DoctrineMigrations\\Version20200810121605', '2020-08-10 12:22:26', 35),
('DoctrineMigrations\\Version20200816211434', '2020-08-16 21:15:03', 21),
('DoctrineMigrations\\Version20200816215936', '2020-08-16 22:03:09', 23),
('DoctrineMigrations\\Version20200817135158', '2020-08-17 13:52:29', 21),
('DoctrineMigrations\\Version20200819195950', '2020-08-19 20:01:25', 87),
('DoctrineMigrations\\Version20200821080351', '2020-08-21 08:06:33', 12),
('DoctrineMigrations\\Version20200821083052', '2020-08-21 08:31:47', 15);

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`id`, `name`) VALUES
(1, 'Jardin'),
(2, 'Balcon'),
(3, 'Adapté PMR'),
(4, 'Ascenceur'),
(5, 'Cave');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `heat`, `city`, `address`, `postal_code`, `sold`, `created_at`, `image_name`, `updated_at`) VALUES
(12, 'minima quibusdam culpa', 'Perferendis ut tempora et ipsa voluptatibus eveniet.', 30, 3, 7, 1, 551611, 2, 'Gallet', '35, place de Pelletier73 494 Rousseau', '40198', 0, '2020-08-18 22:37:02', '5f4ff117a06e2033836334.jpg', '2020-09-02 19:23:03'),
(13, 'maiores consequuntur iure', 'Nulla aut dolores molestiae omnis eaque aut vel est rerum.', 307, 4, 6, 9, 399152, 2, 'Gilles', '55, avenue Descamps54846 Gregoire', '92500', 0, '2020-08-18 22:37:02', '5f3f8c8e4ab72254347353.jpeg', '2020-08-21 08:57:50'),
(14, 'quia perspiciatis ut', 'Sed voluptas commodi id non quod sit autem sit temporibus sint.', 212, 6, 6, 7, 724778, 1, 'Roussetboeuf', '6, place Noémi David75124 Da Costanec', '68774', 0, '2020-08-18 22:37:02', '5f3f8c9802e06369848152.JPG', '2020-08-21 08:57:59'),
(15, 'minima saepe quasi', 'Corrupti quis quo rerum eligendi amet quaerat fugit non.', 206, 5, 1, 6, 330330, 0, 'Pelletier-la-Forêt', 'rue Morvan67433 Besnard', '96833', 0, '2020-08-18 22:37:02', '5f418b1126627592421398.jpg', '2020-08-22 21:16:01'),
(16, 'inventore iure dolor', 'Quod non eius et ea et et qui corporis.', 11, 6, 5, 4, 747312, 1, 'Marquesnec', '3, chemin Sauvage27926 Brunet', '72162', 0, '2020-08-18 22:37:02', '5f3f8ca165290672441884.JPG', '2020-08-21 08:58:09'),
(17, 'numquam veniam qui', 'Et dignissimos veniam molestiae occaecati et consectetur commodi.', 11, 8, 8, 2, 107709, 1, 'Pichon', '455, chemin Raymond Lelievre27 972 Ferreira-sur-Mer', '23274', 0, '2020-08-18 22:37:02', '5f3f8cf51eaa5061295809.jpg', '2020-08-21 08:59:33'),
(18, 'fugiat neque minus', 'Aut quis occaecati id ea quaerat ipsa aut ipsam eius et.', 59, 6, 9, 7, 486770, 0, 'Ollivier', 'avenue Merle65 472 Remy', '15215', 0, '2020-08-18 22:37:02', '5f3f8dfcc9659098387063.jpg', '2020-08-21 09:03:56'),
(20, 'in ut vel', 'Ea consequatur soluta illum quasi in saepe voluptatem aut.', 67, 6, 2, 10, 344751, 0, 'Garcia', '36, chemin Valentine Mahe93131 Gautier-sur-Gonzalez', '95903', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(21, 'consectetur asperiores consequatur', 'Pariatur ut omnis vitae dolorem nostrum quia fugit dolor.', 335, 3, 4, 9, 200489, 2, 'Levydan', 'rue Maurice Bruneau\n01972 Bonnet', '24967', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(22, 'nesciunt totam ut', 'Autem necessitatibus accusantium nam iusto commodi suscipit tempore aut suscipit.', 336, 7, 8, 14, 514943, 1, 'Dubois', '5, rue Cécile Merle\n00416 Bruneaunec', '38026', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(23, 'est cumque architecto', 'Qui similique et beatae animi qui placeat error aut excepturi.', 120, 7, 7, 3, 231748, 1, 'Chauvin', '65, place Dijoux\n87 149 Joseph', '51667', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(24, 'sed dicta est', 'Explicabo ut asperiores sapiente eaque corrupti.', 320, 2, 7, 14, 242527, 0, 'GeorgesBourg', '58, impasse de Thomas41 827 Bouvier', '20995', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(25, 'ut amet aut', 'Corrupti voluptas omnis eius sequi amet aut illo alias quo.', 16, 6, 3, 9, 409678, 0, 'Charpentier', '74, rue Françoise Colas\n86 265 Fouquet', '89 334', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(26, 'quis pariatur qui', 'Nulla soluta sit omnis sapiente qui commodi molestiae ullam nostrum.', 147, 10, 5, 14, 246388, 0, 'TraoreBourg', '256, avenue Christine Didier\n02048 Gomez', '71857', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(27, 'minima sint aperiam', 'Quis alias reprehenderit aut id voluptate odio aliquam.', 336, 7, 7, 15, 560287, 2, 'Ruiz', '70, chemin Théophile Legendre\n57 973 Bouvet-sur-Petit', '33488', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(28, 'atque optio aut', 'Earum accusamus voluptatem aliquam quis expedita sapiente quis amet.', 317, 10, 7, 3, 425328, 2, 'Lejeune-sur-Mer', '59, rue de Laine\n74307 RemyBourg', '32 037', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(29, 'unde dolore ut', 'Odit tempora enim quo modi sit exercitationem consequatur maxime et est.', 375, 9, 7, 15, 657142, 2, 'Verdierdan', '688, place Tristan Garcia\n28 620 CharrierBourg', '15888', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(30, 'est quas autem', 'A ipsa mollitia qui dolor ad inventore.', 14, 2, 1, 3, 314961, 0, 'Legros-les-Bains', 'rue de Simon\n58429 Perrier', '82275', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(31, 'qui odio dolores', 'Dicta deserunt ipsam facere eius ad vero non.', 364, 9, 9, 13, 893728, 0, 'Blanchard', '603, chemin de Lambert\n46 654 Lejeune', '47604', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(32, 'a in eum', 'Reiciendis voluptate et voluptas id laudantium mollitia molestiae et aut.', 207, 4, 1, 3, 368894, 2, 'Mathieu', '62, avenue Chauvin\n08124 Leleu-la-Forêt', '97716', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(33, 'porro ut pariatur', 'Nobis est earum enim sit at non possimus et enim voluptas.', 275, 9, 1, 6, 729197, 2, 'Gimenezdan', '85, avenue Alix Chevalier\n46 731 Bretonboeuf', '92 517', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(34, 'voluptatem quos ipsa', 'Similique atque consequuntur dolores ut aut.', 11, 9, 9, 9, 790965, 0, 'Lefebvredan', '57, boulevard Payet62 321 Lecomte', '87174', 0, '2020-08-18 22:37:02', '5f411464521f7118860912.jpg', '2020-08-22 12:49:40'),
(35, 'ullam voluptatem amet', 'Sint nihil omnis doloremque quod et quam repellat.', 307, 2, 8, 12, 426607, 1, 'Wagnerboeuf', 'impasse Caron\n81747 Duval', '46604', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(36, 'quae laborum nostrum', 'Aut corporis est voluptate occaecati pariatur doloribus.', 135, 3, 1, 15, 425545, 1, 'Barthelemy-sur-Gay', '4, rue Roussel\n86672 Voisin', '52507', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(37, 'dignissimos veritatis autem', 'Architecto aut libero necessitatibus rerum illo sit omnis nihil voluptatem magnam.', 371, 2, 6, 1, 105547, 2, 'Etienne-les-Bains', '63, place Anastasie Evrard\n98 245 Reynaud', '12692', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(38, 'et perferendis non', 'Vitae eveniet est ut sequi repellendus est quae veritatis.', 384, 10, 5, 6, 793552, 2, 'Rochenec', 'rue Suzanne Berthelot\n86 066 Cousin-sur-Delmas', '71498', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(39, 'enim maxime laboriosam', 'Molestias possimus provident dicta placeat beatae quia non est accusantium.', 317, 10, 1, 7, 749016, 0, 'MaheVille', '68, rue Valette\n02062 Gerard', '84117', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(40, 'itaque fugiat voluptates', 'Quia consequatur vitae dignissimos est inventore illum reprehenderit.', 178, 9, 8, 11, 361939, 0, 'Diallo', '7, avenue de Garnier\n51 337 NguyenVille', '61056', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(41, 'necessitatibus molestiae quisquam', 'Suscipit iusto fugiat consectetur quia omnis corporis.', 304, 10, 8, 6, 661235, 0, 'Leblanc', '41, avenue de Gregoire\n53 506 Arnaud-les-Bains', '10926', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(42, 'deleniti libero assumenda', 'Similique voluptates praesentium ratione est a rerum rerum minima et.', 359, 3, 7, 8, 830591, 0, 'Perret', '83, avenue de Bazin\n15666 Lopez-sur-Joseph', '74600', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(43, 'nulla autem incidunt', 'Ut eaque fuga tempora possimus itaque quia beatae.', 290, 6, 5, 12, 694489, 1, 'Jacquot', 'chemin Michelle Devaux\n84 340 Couturier-la-Forêt', '84 507', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(44, 'ratione rerum qui', 'Voluptas illum et dolorum eaque dolor doloribus laudantium consequuntur aut inventore.', 282, 6, 1, 15, 460469, 1, 'Marty', '71, rue Pages\n05 406 Paris', '74937', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(45, 'facere incidunt explicabo', 'Pariatur accusamus aliquid sit quos quae fuga eum.', 193, 2, 6, 4, 918968, 1, 'Bigot', '8, chemin Andrée Perrier\n49865 LeblancBourg', '55841', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(46, 'veniam sint cum', 'Quae consectetur odio placeat et ut dolores.', 304, 7, 6, 9, 525920, 2, 'Techer-sur-Mer', '80, chemin de Poirier\n59 798 Perret-sur-Mer', '32514', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(47, 'quam autem est', 'Aut unde delectus deserunt ut.', 295, 6, 6, 10, 139032, 1, 'Hoarau', '33, rue Fleury\n52 410 Collin-sur-Mahe', '30165', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(48, 'facilis in rem', 'Eum impedit officiis facere natus minima in.', 88, 7, 3, 8, 981372, 1, 'Mercier', '49, place Émile Sanchez\n16 877 Gaudin', '15505', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(49, 'occaecati rerum est', 'Aliquid et provident in odio eos repellat ut quam ea.', 389, 9, 9, 3, 970188, 1, 'Letellier-sur-Mer', '3, chemin de Peltier\n86 838 Camus', '48 343', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(50, 'eveniet eos quis', 'Rerum exercitationem beatae iste et necessitatibus.', 398, 7, 7, 11, 911780, 2, 'GaillardVille', '27, rue Fouquet\n36006 Potier', '36342', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(51, 'consequatur corrupti quia', 'Eum tenetur eum iste distinctio qui sed repudiandae voluptatem reiciendis veritatis.', 329, 7, 6, 11, 617300, 1, 'Chauvin-sur-Joubert', '257, boulevard Guilbert\n53 053 Chartier', '59540', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(52, 'et a autem', 'Et odit neque recusandae velit.', 150, 10, 9, 9, 219267, 0, 'Simon', '693, place de Duhamel\n37 791 Renaud-sur-Camus', '67876', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(53, 'soluta officiis ad', 'Ut praesentium est tempore sit laborum est nemo.', 343, 4, 9, 14, 491576, 1, 'Huet-sur-Vidal', '52, rue Christelle Gillet\n14130 LebonBourg', '15492', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(54, 'aut reiciendis sint', 'Est corrupti ut distinctio enim ut saepe.', 372, 2, 4, 1, 928992, 0, 'Gregoire', '7, rue de Menard\n64532 Guillon-sur-Boulanger', '11 457', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(55, 'et omnis amet', 'Similique aut quia accusantium iusto perferendis neque aliquam.', 122, 5, 7, 7, 705437, 1, 'Fournier', '1, rue de Roussel\n38 640 Bourdon', '39 495', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(56, 'ullam dolor voluptatem', 'Tempora ipsa veritatis id amet velit.', 243, 5, 2, 12, 503623, 1, 'Millet', '636, impasse Gilbert Hamel\n32 912 Pottier', '33755', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(57, 'reprehenderit soluta eum', 'Illum commodi optio suscipit ea tempora numquam delectus ut nulla adipisci.', 79, 7, 3, 4, 920662, 0, 'CordierBourg', '5, rue Jacques Riviere\n98 064 Noelnec', '59930', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(58, 'necessitatibus asperiores quia', 'Ducimus ut et quos quae dignissimos.', 52, 10, 4, 0, 504464, 1, 'Julien', '7, avenue Lemoine\n18195 Bertranddan', '86 214', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(59, 'dolor ea necessitatibus', 'Debitis velit aut accusamus accusantium omnis culpa.', 139, 2, 9, 4, 258762, 2, 'Voisin', '277, place Pénélope Blanc\n17211 HamelBourg', '52 407', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(60, 'neque dolores id', 'Voluptas quam in sit maxime omnis laboriosam distinctio officiis et.', 154, 2, 8, 2, 856401, 0, 'Perrier', '378, boulevard de Raynaud\n91582 Charpentier', '42 286', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(61, 'illo asperiores nisi', 'Nobis nisi sunt rerum non nihil id dolorum dolor quibusdam explicabo.', 220, 2, 4, 3, 569640, 0, 'Millet-sur-Mer', 'place Henri Leveque\n74639 Klein-sur-Mer', '68933', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(62, 'asperiores perferendis tempore', 'Cumque sint consequatur optio voluptas ut necessitatibus labore officia quidem ducimus.', 91, 2, 4, 5, 917346, 0, 'Ruiz-sur-Mer', '6, rue de Faivre\n66596 Larochenec', '05224', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(63, 'error totam velit', 'Repudiandae voluptate id reprehenderit laudantium aut sit consequatur nihil provident praesentium.', 64, 4, 4, 13, 507872, 0, 'Carpentier', '434, place Marianne Chretien\n00886 Marechal', '73911', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(64, 'fugiat sapiente assumenda', 'Sit molestias itaque aut dolorum occaecati sequi.', 227, 8, 7, 6, 580630, 0, 'Pires-sur-Valette', 'avenue Joly\n39 000 Leroyboeuf', '59779', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(65, 'labore consequatur et', 'Sit excepturi voluptas quasi non est necessitatibus similique at qui laboriosam consequatur.', 312, 4, 1, 3, 907238, 0, 'Perrin', 'rue de Mercier\n31 636 Dupont', '04 206', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(66, 'sed odio fugiat', 'Eos nulla ratione magnam mollitia explicabo neque harum velit quia ipsam explicabo.', 360, 6, 1, 8, 260559, 0, 'Bonnin', '38, chemin de Letellier\n65 714 Begue', '54550', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(67, 'enim ad delectus', 'A et eveniet inventore velit veniam id aperiam eveniet totam.', 321, 8, 6, 8, 477316, 0, 'Tessier-les-Bains', '62, rue de Gerard\n68 270 WeberBourg', '86071', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(68, 'optio non deleniti', 'Eos omnis consequatur sunt distinctio quod eos vel aut in molestiae totam.', 229, 6, 6, 4, 227226, 1, 'Bodin-sur-Mer', '217, avenue Delaunay\n84269 Normand', '32037', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(69, 'maxime quia natus', 'Sed ut sequi est eos commodi.', 96, 6, 2, 10, 422922, 0, 'Vallee-sur-Texier', '14, impasse Blot\n79107 Fischer', '21 427', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(70, 'impedit neque autem', 'Quis pariatur culpa ratione aut sint id voluptatem praesentium voluptas eius.', 207, 7, 7, 2, 857474, 2, 'Poulain-sur-Collin', '396, chemin Marie Moreno\n77 076 Roy', '29 432', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(71, 'odio cum architecto', 'Sit pariatur nihil illo qui voluptas.', 394, 8, 1, 15, 411287, 2, 'Chevallier', '19, boulevard Georges Roussel\n03 558 Gregoire-sur-Guillet', '24439', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(72, 'et aut reiciendis', 'Rem esse rem neque laudantium delectus distinctio eum.', 264, 3, 4, 9, 890123, 2, 'Boulay', '54, boulevard de Costa\n10 482 FerreiraBourg', '77091', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(73, 'aliquid non odit', 'Rem animi itaque consequuntur hic qui molestiae qui omnis nesciunt.', 71, 3, 5, 13, 804345, 0, 'Levy-les-Bains', 'boulevard de Blondel\n47481 Seguin', '37331', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(74, 'quo officiis quo', 'Libero voluptatem quo molestiae inventore impedit neque quaerat.', 180, 2, 5, 5, 939675, 1, 'Maillard-sur-Mer', '94, rue de Didier\n28128 Malletnec', '62298', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(75, 'nihil rerum est', 'Rerum accusamus natus facere qui qui quo.', 94, 10, 7, 15, 752643, 1, 'BrunetBourg', '63, impasse Thierry Charles\n93 418 Meunier', '57 987', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(76, 'reiciendis quo amet', 'Aut aut et explicabo nemo omnis sint.', 137, 8, 6, 13, 427553, 1, 'Chauvet-la-Forêt', '793, rue Patrick Lefevre\n13992 Jacquet-la-Forêt', '89 409', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(77, 'et hic officia', 'Cupiditate harum eveniet quasi vitae aut.', 332, 9, 4, 2, 448358, 0, 'Allain', '6, impasse de Pelletier\n75 237 Cousin-sur-Le Roux', '26154', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(78, 'ut voluptates nihil', 'Quaerat et voluptate voluptatem animi iusto minima tenetur.', 114, 6, 8, 2, 420964, 0, 'RichardBourg', '510, avenue Honoré Duval\n99517 Weiss', '41 927', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(79, 'quo quis quidem', 'Modi ducimus expedita quo ipsa odio eos.', 161, 6, 4, 15, 779117, 2, 'Valentin-sur-Joly', '70, boulevard de Gay\n66 183 Michel-sur-Millet', '11407', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(80, 'sunt cupiditate molestias', 'Velit quo et quo quia assumenda sit ut sit debitis.', 255, 9, 7, 8, 249207, 1, 'Rocher-sur-Mer', '685, chemin Adélaïde Jacques\n78995 Dumont-sur-Munoz', '22 357', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(81, 'ut culpa et', 'Fugiat et iste nihil necessitatibus delectus odio deserunt quo aut in.', 326, 4, 7, 15, 621961, 2, 'Hamon', 'place de Leveque\n97 521 Antoine-les-Bains', '90 151', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(82, 'cum voluptas quisquam', 'Molestiae odit totam ad velit est qui.', 126, 5, 2, 2, 792735, 1, 'Martin', '8, boulevard Schmitt\n50647 Poulain', '42189', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(83, 'ab impedit ducimus', 'Rerum eligendi temporibus unde nam vero dolor in minus sint sed.', 171, 6, 2, 3, 844243, 1, 'Bonneaunec', '602, boulevard Gillet\n61 484 Da Costa-sur-Mer', '99 642', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(84, 'nihil recusandae et', 'Esse magnam enim ipsam non fugiat.', 326, 7, 4, 12, 680022, 1, 'Rodriguez-les-Bains', '6, impasse de Rodriguez\n40 837 Ledoux', '53 607', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(85, 'nulla possimus ut', 'Culpa amet minima iste cupiditate nihil optio quo fugit.', 192, 7, 1, 0, 967665, 1, 'Tessier', '2, chemin de Collet\n92503 PonsBourg', '53601', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(86, 'consectetur non et', 'Facilis molestiae repellat repellendus cupiditate quo nobis nihil optio quaerat nostrum.', 128, 7, 5, 5, 816556, 0, 'Tanguy-la-Forêt', '356, chemin de Baudry\n37150 DupuyVille', '88 172', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(87, 'laborum mollitia perferendis', 'Molestias et consequatur sit quo culpa deleniti modi eveniet quam.', 279, 9, 2, 15, 525046, 0, 'Dupre', '28, rue de Antoine\n75 219 Gillet-sur-Mer', '00 564', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(88, 'aut ea eum', 'Excepturi nihil iure omnis eaque dolore tempora in totam.', 384, 6, 2, 11, 218066, 1, 'Arnaud', '29, avenue Descamps\n64064 JourdanBourg', '33 588', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(89, 'quisquam recusandae quia', 'Consequuntur delectus maiores laborum sed quasi doloremque natus quaerat ducimus debitis.', 392, 10, 3, 10, 622314, 0, 'Weiss-la-Forêt', '73, impasse Allain\n72843 Gerard', '79753', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(90, 'quia tempore magnam', 'Sit est odit animi earum qui.', 55, 2, 2, 3, 582958, 1, 'Mendesnec', 'rue de Blin\n91703 Mendes', '67 109', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(91, 'quo reiciendis alias', 'Reprehenderit ut delectus aliquam non similique vel incidunt.', 146, 5, 8, 0, 932572, 2, 'Buisson-sur-Ollivier', '498, rue de Foucher\n45 559 Bodin', '86735', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(92, 'sunt error officia', 'Modi rerum exercitationem voluptas doloremque possimus.', 382, 10, 1, 10, 156693, 0, 'Blondel', '70, avenue de Reynaud\n19 973 Fournier-sur-Mer', '52 395', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(93, 'aperiam vero velit', 'Aut aut praesentium in vel cum perferendis omnis maiores.', 231, 6, 1, 7, 903035, 2, 'Chauvin-sur-Grondin', '29, avenue Guillaume Verdier\n37979 Baron', '14 825', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(94, 'eos et culpa', 'Veniam dolorum quisquam sapiente dolorem ad.', 358, 3, 3, 15, 416025, 0, 'Pons', 'rue de Lamy\n12 775 Leroynec', '49916', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(95, 'libero ut ut', 'Natus ducimus maxime et ratione et aut hic illum voluptas.', 15, 3, 3, 11, 681061, 1, 'Maury-sur-Mer', '97, impasse Nath Moulin\n41704 Jean-sur-Auger', '36 789', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(96, 'quae quaerat voluptatibus', 'Dignissimos reiciendis laboriosam alias rerum recusandae odio eos.', 239, 9, 3, 8, 327539, 1, 'Carre', '69, rue de Munoz\n54 506 Pires', '73805', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(97, 'illum velit veniam', 'Et molestiae vel tempore eum eaque amet.', 211, 5, 5, 14, 166190, 1, 'Schmitt-les-Bains', '5, chemin Schmitt\n61 276 Lecomte-sur-Mace', '54308', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(98, 'eum nostrum accusantium', 'Quod saepe aut modi qui ab qui vero mollitia et veritatis.', 246, 6, 6, 9, 248069, 1, 'Rousseau', '35, rue Guy Briand\n14 499 Chauvet', '87377', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(99, 'praesentium voluptas est', 'Provident quia atque id quo culpa earum cum sint.', 268, 4, 2, 8, 315886, 0, 'Charrier', 'chemin Dupuy\n38 319 Nicolas-sur-Nguyen', '63893', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(100, 'neque dolor provident', 'Voluptatem possimus omnis deleniti ut molestias amet.', 309, 10, 1, 5, 911817, 1, 'Besnard-sur-Marchand', '77, impasse Raymond Regnier\n66 046 Marin', '14 408', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(101, 'corrupti quia magnam', 'Molestiae aliquam harum harum expedita id alias dolor.', 397, 8, 2, 1, 364398, 2, 'Toussaint', '76, chemin de Poulain\n45819 Lecoq', '98721', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(102, 'aliquam nesciunt ipsum', 'Nulla harum et magni dolor veniam.', 96, 10, 5, 14, 651739, 2, 'Rousselnec', '89, rue Picard\n39 947 Schneider', '18 403', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(103, 'labore voluptas minima', 'Molestiae praesentium aut et rerum commodi qui at dignissimos corrupti sed.', 115, 10, 9, 5, 954361, 2, 'Grenier-les-Bains', '12, chemin de Marin\n94681 Caron', '01 686', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(104, 'nobis officia qui', 'Cupiditate nemo illum aliquam aut provident sit ratione cum.', 347, 4, 2, 4, 547154, 1, 'Jourdan', '34, boulevard Noël Salmon\n26644 Vasseur', '43 571', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(105, 'et repudiandae omnis', 'Et modi libero aspernatur nulla ipsum dolores velit officiis odit.', 394, 2, 2, 12, 673425, 1, 'DuhamelVille', '454, impasse Boyer\n95595 Leroux-sur-De Sousa', '04 724', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(106, 'necessitatibus asperiores laudantium', 'Enim rem sed nemo et eveniet odit adipisci non nihil dignissimos.', 92, 4, 1, 3, 545000, 0, 'Bertin', '31, avenue Georges Leroux\n62 628 Martinez', '01432', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(107, 'laboriosam saepe voluptas', 'Autem qui voluptas dignissimos ut ut omnis molestiae perferendis.', 114, 4, 8, 0, 833736, 0, 'Turpin', '849, impasse Marguerite Michel\n70 552 Lombardboeuf', '08392', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(108, 'non non aliquid', 'Officiis reprehenderit quia ut voluptas ipsam quia aperiam mollitia eos.', 315, 4, 4, 3, 108985, 2, 'Bailly-la-Forêt', 'place Renée Lambert\n25378 Rodriguez', '68 385', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(109, 'sunt reiciendis porro', 'Laboriosam ab non omnis animi harum ipsum eos natus.', 350, 6, 4, 13, 499516, 1, 'GermainVille', '231, rue de Ruiz\n42839 Bousquet', '80 840', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00'),
(110, 'nostrum ullam sed', 'Magni reprehenderit atque illum reiciendis libero fugiat cum vel.', 222, 7, 7, 14, 679544, 0, 'Renault', '515, avenue de Potier\n27 735 Martel', '32714', 0, '2020-08-18 22:37:02', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `property_option`
--

CREATE TABLE `property_option` (
  `property_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_option`
--

INSERT INTO `property_option` (`property_id`, `option_id`) VALUES
(12, 2),
(12, 4),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(16, 2),
(16, 4),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(24, 1),
(24, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`) VALUES
(4, 'demo@demo.test', '[]', '$argon2id$v=19$m=65536,t=4,p=1$2iSetKXn2Q7k4gVljV6dcg$YgcYtg15EDkQIWY4jfW1bW/UP4RHqyZDsozUAaOgeJU', 'Raul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_option`
--
ALTER TABLE `property_option`
  ADD PRIMARY KEY (`property_id`,`option_id`),
  ADD KEY `IDX_24F16FCC549213EC` (`property_id`),
  ADD KEY `IDX_24F16FCCA7C41D6F` (`option_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `property_option`
--
ALTER TABLE `property_option`
  ADD CONSTRAINT `FK_24F16FCC549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_24F16FCCA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

