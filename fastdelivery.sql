-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 01 mai 2024 à 21:04
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fastdelivery`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `etat` varchar(255) NOT NULL DEFAULT 'en_cours',
  `panier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `email`, `phone`, `address`, `food_id`, `qty`, `created_at`, `updated_at`, `etat`, `panier`) VALUES
(38, 'linabenmoussa@gmail.com', '50488680', 'sokra', 2, 1, '2024-01-15 17:09:42', '2024-01-15 17:09:42', 'en_cours', '6356fe56-1276-4f55-b3dc-5b77032f70b7'),
(39, 'linabenmoussa@gmail.com', '50488680', 'sokra', 1, 1, '2024-01-15 17:09:45', '2024-01-15 17:09:45', 'en_cours', '6356fe56-1276-4f55-b3dc-5b77032f70b7'),
(42, 'lina.b.moussa@gmail.com', 'null', 'null', 1, 2, '2024-01-16 09:38:06', '2024-01-16 09:38:06', 'en_cours', '39e4838c-53f4-44df-ad07-c6c6b6e6d2f7'),
(43, 'lina.b.moussa@gmail.com', 'null', 'null', 2, 3, '2024-01-16 09:39:13', '2024-01-16 09:39:13', 'en_cours', '39e4838c-53f4-44df-ad07-c6c6b6e6d2f7'),
(44, 'lina.b.moussa@gmail.com', 'null', 'null', 1, 3, '2024-01-16 15:09:43', '2024-01-16 15:09:43', 'en_cours', 'bce5aa58-eb61-4016-b1bf-84c7bf0ab9b6'),
(45, 'lina.b.moussa@gmail.com', 'null', 'null', 1, 1, '2024-01-27 17:24:35', '2024-01-27 17:24:35', 'en_cours', '0fa9473f-8876-4342-bd18-2dd8ffffb092'),
(46, 'lina.b.moussa@gmail.com', 'null', 'null', 2, 2, '2024-01-27 17:24:40', '2024-01-27 17:24:40', 'en_cours', '0fa9473f-8876-4342-bd18-2dd8ffffb092'),
(47, 'lina.b.moussa@gmail.com', 'null', 'null', 4, 2, '2024-01-27 17:24:40', '2024-01-27 17:24:40', 'en_cours', '0fa9473f-8876-4342-bd18-2dd8ffffb092');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`, `price`, `image`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Dolma', 'Un plat de dolmas farcis de riz, de viande hachée, d\'oignons et d\'épices, accompagnés d\'une sauce tomate.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355048/image/download%20%2816%29.jpg.jpg', 1, '2023-12-20 16:41:36', '2024-01-15 20:44:12'),
(2, 'Mercimek köfte', 'Une salade de mercimek köfte, de tomates, de concombres et d\'oignons.', 10.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355090/image/download%20%2817%29.jpg.jpg', 1, '2023-12-20 16:41:51', '2024-01-15 20:46:14'),
(4, 'Hummus', 'Un hummus servi avec des crudités.', 8.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355214/image/download%20%2818%29.jpg.jpg', 1, '2023-12-20 16:42:23', '2024-01-15 20:47:38'),
(5, 'Taboulé', 'Un taboulé servi avec des crudités et des légumes marinés.', 13.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355287/image/download%20%2819%29.jpg.jpg', 1, '2023-12-20 16:42:33', '2024-01-15 20:48:12'),
(6, 'Pide', 'Une pizza turque sans gluten, garnie de fromage, de viande hachée ou de légumes.', 12.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355322/image/download%20%2820%29.jpg.jpg', 2, '2023-12-20 16:44:01', '2024-01-15 20:48:47'),
(7, 'Lahmacun', 'Une fine galette de pain sans gluten, garnie de viande hachée, d\'oignons, de tomates et d\'épices.', 10.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355361/image/download%20%2821%29.jpg.jpg', 2, '2023-12-20 16:44:13', '2024-01-15 20:49:25'),
(8, 'Kebab d\'Adana', 'Un kebab sans gluten, composé de viande hachée d\'agneau ou de bœuf, marinée dans des épices.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355393/image/download%20%2822%29.jpg.jpg', 2, '2023-12-20 16:44:22', '2024-01-15 20:49:58'),
(10, 'Kebab de Diyarbakir', 'Un kebab composé de viande hachée de bœuf, marinée dans des épices et cuite dans un four en terre cuite.', 20.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355447/image/download%20%2823%29.jpg.jpg', 4, '2023-12-20 16:45:27', '2024-01-15 20:50:55'),
(11, 'Kebab de shish', 'Un kebab composé de viande grillée en brochettes.', 12.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355495/image/download%20%2824%29.jpg.jpg', 4, '2023-12-20 16:45:35', '2024-01-15 20:51:40'),
(12, 'Olives', 'Une sélection d\'olives de différentes variétés.', 5.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355565/image/download%20%2825%29.jpg.jpg', 5, '2023-12-20 16:47:45', '2024-01-15 20:52:48'),
(13, 'Taboulé', 'Une salade de persil, de tomates, de concombres, de boulgour et de menthe.', 13.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355593/image/download%20%2826%29.jpg.jpg', 5, '2023-12-20 16:47:58', '2024-01-15 20:53:17'),
(14, 'Hummus', 'Une purée de pois chiches, de tahini, de citron et d\'ail.', 8.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355625/image/download%20%2827%29.jpg.jpg', 5, '2023-12-20 16:48:10', '2024-01-15 20:53:50'),
(15, 'Meze de légumes grillés', 'Une sélection de légumes grillés, tels que des courgettes, des aubergines, des poivrons et des oignons.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355653/image/download%20%2828%29.jpg.jpg', 5, '2023-12-20 16:48:22', '2024-01-15 20:54:17'),
(16, 'Kebab d\'Adana', 'Un kebab composé de viande hachée d\'agneau ou de bœuf, marinée dans des épices.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355694/image/download%20%2829%29.jpg.jpg', 6, '2023-12-20 16:49:55', '2024-01-15 20:54:58'),
(17, 'Pasta alla Norma', 'Une recette de pâtes italiennes composée de tomates, d\'aubergines, de ricotta salata et de basilic.', 20.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355722/image/download%20%2830%29.jpg.jpg', 6, '2023-12-20 16:50:06', '2024-01-15 20:55:26'),
(18, 'Grilled salmon', 'Un saumon grillé servi avec des légumes grillés.', 30.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355747/image/download%20%2831%29.jpg.jpg', 6, '2023-12-20 16:50:21', '2024-01-15 20:55:51'),
(19, 'Baklava', 'Un dessert traditionnel turc composé de pâte filo, de noix et de sirop.', 10.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355773/image/download%20%2832%29.jpg.jpg', 7, '2023-12-20 16:51:10', '2024-01-15 20:56:17'),
(20, 'Halva', 'Un dessert à base de semoule, de sucre, de beurre et de noix.', 8.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355798/image/download%20%2833%29.jpg.jpg', 7, '2023-12-20 16:51:22', '2024-01-15 20:56:42'),
(21, 'Lokum', 'Un dessert à base de sucre, de gélatine et d\'arômes, souvent à la rose ou au citron.', 5.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355836/image/download%20%2834%29.jpg.jpg', 7, '2023-12-20 16:51:33', '2024-01-15 20:57:20'),
(22, 'Café turc', 'Un café préparé avec du café moulu fin, de l\'eau bouillante et du sucre.', 5.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355876/image/download%20%2835%29.jpg.jpg', 8, '2023-12-20 16:52:39', '2024-01-15 20:58:01'),
(23, 'Thé turc', 'Un thé préparé avec des feuilles de thé noir, de l\'eau bouillante et du sucre.', 3.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355907/image/download%20%2836%29.jpg.jpg', 8, '2023-12-20 16:52:50', '2024-01-15 20:58:31'),
(24, 'Jus d\'orange', 'Un jus de fruits frais à base d\'oranges.', 10.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355939/image/download%20%2837%29.jpg.jpg', 8, '2023-12-20 16:53:00', '2024-01-15 20:59:03'),
(25, 'Balık ekmek', 'Un sandwich à base de pain pita, de poisson grillé, de tomates, de concombres et d\'oignons.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355973/image/download%20%2838%29.jpg.jpg', 9, '2023-12-20 16:54:49', '2024-01-15 20:59:38'),
(26, 'Kalamár tava', 'Des calamars frits servis avec une sauce à l\'ail.', 20.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356016/image/download%20%2839%29.jpg.jpg', 9, '2023-12-20 16:55:02', '2024-01-15 21:00:19'),
(27, 'Midye dolma', 'Des moules farcies de riz, d\'herbes et d\'épices.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356046/image/download%20%2840%29.jpg.jpg', 9, '2023-12-20 16:55:16', '2024-01-15 21:00:50'),
(28, 'Mantı', 'De petites pâtes farcies de viande, de fromage ou de légumes, cuites à la vapeur et servies avec une sauce au yaourt.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356071/image/download%20%2841%29.jpg.jpg', 10, '2023-12-20 16:58:29', '2024-01-15 21:01:15'),
(29, 'Testi kebabı', 'Un kebab cuit dans un pot en terre cuite, servi avec du riz et des légumes.', 20.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356096/image/download%20%2842%29.jpg.jpg', 10, '2023-12-20 16:58:39', '2024-01-15 21:01:41'),
(30, 'Haşhaş kebabı', 'Un kebab composé de viande hachée, de riz et de graines de pavot, cuit au four.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356124/image/download%20%2843%29.jpg.jpg', 10, '2023-12-20 16:58:50', '2024-01-15 21:02:07'),
(31, 'Lahmacun', 'Une galette de pain garnie de viande hachée, d\'oignons, de tomates et de poivrons, cuite au four.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356151/image/download%20%2844%29.jpg.jpg', 11, '2023-12-20 16:59:25', '2024-01-15 21:02:34'),
(32, 'Pide', 'Une pâte feuilletée garnie de viande hachée, de fromage ou de légumes, cuite au four.', 20.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356178/image/download%20%2845%29.jpg.jpg', 11, '2023-12-20 16:59:36', '2024-01-15 21:03:02'),
(33, 'Kebab d\'Adana', 'Un kebab composé de viande hachée d\'agneau ou de bœuf, assaisonnée de piments et de cumin, cuite sur un gril vertical.', 30.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356201/image/download%20%2846%29.jpg.jpg', 11, '2023-12-20 16:59:45', '2024-01-15 21:03:25'),
(34, 'Hamsi tava', 'Une poêlée de sardines, cuites avec des oignons, des poivrons et des tomates.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356228/image/download%20%2847%29.jpg.jpg', 13, '2023-12-20 17:05:12', '2024-01-15 21:03:52'),
(35, 'Muhlama', 'Une purée de farine de maïs, de fromage et de beurre, cuite au four.', 20.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356261/image/download%20%2848%29.jpg.jpg', 13, '2023-12-20 17:05:21', '2024-01-15 21:04:25'),
(36, 'Karalahana çorbası', 'Une soupe de chou frisé, de pommes de terre et de tomates.', 15.00, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705356295/image/download%20%2849%29.jpg.jpg', 13, '2023-12-20 17:05:31', '2024-01-15 21:04:59');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `restaurant_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Plats végétariens', 'Un menu composé de plats végétariens, tels que le dolma, le mercimek köfte et le baba ghanoush.', 1, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354401/image/download%20%286%29.jpg.jpg', '2023-12-20 16:07:45', '2024-01-15 20:40:36'),
(2, 'Plats sans gluten', 'Un menu composé de plats sans gluten, tels que le pide, le lahmacun et le kebab d\'Adana.', 2, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354624/image/2e40f162d110ff716f74349fef4500d8.jpg.jpg', '2023-12-20 16:08:07', '2024-01-15 20:37:09'),
(4, 'Kebabs', 'Un menu de kebabs composé de plusieurs variétés de kebabs.', 1, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354661/image/download%20%287%29.jpg.jpg', '2023-12-20 16:10:03', '2024-01-15 20:37:45'),
(5, 'Meze', 'Un menu de meze composé de diverses entrées, telles que des légumes grillés, des fromages, des fruits de mer et de la viande.', 2, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354696/image/download%20%288%29.jpg.jpg', '2023-12-20 16:10:18', '2024-01-15 20:38:20'),
(6, 'Plats principaux', 'Un menu de plats principaux, tels que des kebabs, des pâtes et des grillades.', 3, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354730/image/download%20%289%29.jpg.jpg', '2023-12-20 16:10:38', '2024-01-15 20:38:54'),
(7, 'Desserts', 'Un menu de desserts, tels que du baklava, du halva et du lokum.', 4, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354791/image/download%20%2810%29.jpg.jpg', '2023-12-20 16:10:57', '2024-01-15 20:40:51'),
(8, 'Boissons', 'Un menu de boissons, telles que du café turc, du thé turc et des jus de fruits.', 5, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354879/image/download%20%2811%29.jpg.jpg', '2023-12-20 16:11:16', '2024-01-15 20:41:27'),
(9, 'Plats de la mer Égée', 'Un menu composé de plats de la mer Égée, tels que le balık ekmek, le kalamar tava et le midye dolma.', 2, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354911/image/download%20%2812%29.jpg.jpg', '2023-12-20 16:12:08', '2024-01-15 20:41:56'),
(10, 'Plats de la région de l\'Anatolie centrale', 'Un menu composé de plats de la région de l\'Anatolie centrale, tels que le mantı, le testi kebabı et le haşhaş kebabı.', 3, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354942/image/download%20%2813%29.jpg.jpg', '2023-12-20 16:12:29', '2024-01-15 20:42:26'),
(11, 'Plats de la région de l\'Anatolie orientale', 'Un menu composé de plats de la région de l\'Anatolie orientale, tels que le lahmacun, le pide et le kebab d\'Adana.', 4, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354977/image/download%20%2814%29.jpg.jpg', '2023-12-20 16:12:43', '2024-01-15 20:43:00'),
(13, 'Plats de la région de la mer Noire', 'Un menu composé de plats de la région de la mer Noire, tels que le hamsi tava, le muhlama et le karalahana çorbası.', 5, 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705355010/image/download%20%2815%29.jpg.jpg', '2023-12-20 16:13:27', '2024-01-15 20:43:35');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_12_20_153511_create_restaurants_table', 1),
(12, '2023_12_20_161112_create_menus_table', 2),
(15, '2023_12_20_171536_create_food_table', 3),
(16, '2023_12_22_092358_alter_foods_price_column', 4),
(17, '2014_10_12_100000_create_password_reset_tokens_table', 5),
(18, '2023_12_29_104535_add_role_to_users_table', 6),
(19, '2024_01_11_155829_create_tables_table', 7),
(22, '2024_01_12_170607_create_table_reservations', 8),
(23, '2024_01_12_191242_add_restaurant_id_to_reservation_tables', 8),
(24, '2024_01_14_075533_add_columns_to_reservation_tables_table', 9),
(25, '2024_01_14_085707_add_columns_to_reservation_tables_table2', 10),
(26, '2024_01_15_084752_create_commande_table', 11),
(27, '2024_01_15_085633_add_phone_and_address_to_users_table', 11),
(28, '2024_01_15_115841_add_etat_to_commande_table', 12),
(30, '2024_01_15_153308_add_panier_to_commande_table', 13),
(31, '2024_01_15_155817_add_panier_to_commande', 14);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\Models\\User', 1, 'token-name', 'fe0326909f38680b30ceb56c31d040605891b7faaf626b07a2c164e495a40abe', '[\"*\"]', NULL, NULL, '2023-12-29 09:30:11', '2023-12-29 09:30:11'),
(10, 'App\\Models\\User', 1, 'token-name', '396484c8f6d89813396a96dbad3745b74130f6b8857d3a03c5cfecfb17418c19', '[\"*\"]', NULL, NULL, '2023-12-29 09:36:28', '2023-12-29 09:36:28'),
(11, 'App\\Models\\User', 1, 'token-name', '729ebcc651272096df7e431a200c0ff3ca2f29c1da0eae1f130ad4d108fa186c', '[\"*\"]', NULL, NULL, '2023-12-29 09:58:12', '2023-12-29 09:58:12'),
(12, 'App\\Models\\User', 2, 'token-name', '0d13202e1248f4fde7f3417e1f42e9d9b6d4c2f5e5c930f9e1a58c351cf69990', '[\"*\"]', NULL, NULL, '2023-12-29 10:05:09', '2023-12-29 10:05:09'),
(18, 'App\\Models\\User', 5, 'token-name', '9f05d93cf9efeebb14b0282ce02507f77486cfad1cba388cb916deb1f3f0ed27', '[\"*\"]', NULL, NULL, '2024-01-14 13:14:02', '2024-01-14 13:14:02'),
(19, 'App\\Models\\User', 5, 'token-name', '7ed59aeee4c8a8b7be063e7f890e2065a3a19cead61b0bbd13fcfbe8605070ee', '[\"*\"]', NULL, NULL, '2024-01-14 13:14:14', '2024-01-14 13:14:14'),
(64, 'App\\Models\\User', 6, 'token-name', 'dcd122485dcc195e1dbd70ea7cca99b7370b1ecee9d2beddf3f9d64a87d11514', '[\"*\"]', NULL, NULL, '2024-01-14 17:05:20', '2024-01-14 17:05:20'),
(65, 'App\\Models\\User', 6, 'token-name', 'ea5970ffcc6a144e3c4ce6a0096a98f3e10fb41bd608904c4228a3e3d7038621', '[\"*\"]', NULL, NULL, '2024-01-14 17:05:27', '2024-01-14 17:05:27'),
(88, 'App\\Models\\User', 9, 'token-name', '5f433671eebe5feda2b15f67d8d0fb368fb4f8448b726a64af71244d4d7818a4', '[\"*\"]', NULL, NULL, '2024-01-15 08:06:41', '2024-01-15 08:06:41'),
(91, 'App\\Models\\User', 11, 'token-name', '8533307c22057543214794f70e26881a15757bffaa08131c12148fdfd0e3ffc1', '[\"*\"]', NULL, NULL, '2024-01-15 08:09:32', '2024-01-15 08:09:32'),
(120, 'App\\Models\\User', 3, 'token-name', '8ae8fda32f38392ddf4f7c6456ff10f69e88704304deb4a1e2bf1b766b6fa2e7', '[\"*\"]', NULL, NULL, '2024-01-27 17:25:22', '2024-01-27 17:25:22');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_tables`
--

CREATE TABLE `reservation_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `secretCode` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `numpersonnes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation_tables`
--

INSERT INTO `reservation_tables` (`id`, `date`, `time`, `table_id`, `restaurant_id`, `created_at`, `updated_at`, `secretCode`, `email`, `phone`, `numpersonnes`) VALUES
(71, '2024-01-16', '09:30:00', 3, 1, '2024-01-15 21:28:14', '2024-01-15 21:28:14', 'HVOUL6BY', 'linaBenMoussa', NULL, 2),
(72, '2024-01-16', '09:30:00', 2, 1, '2024-01-16 06:53:59', '2024-01-16 06:53:59', 'ES9WP9CY', 'linaBenMoussa', NULL, 5),
(73, '2024-01-16', '09:30:00', 1, 1, '2024-01-16 06:54:13', '2024-01-16 06:54:13', '5K90W2MH', 'linaBenMoussa', NULL, 2),
(74, '2024-01-16', '10:30:00', 3, 1, '2024-01-16 08:33:51', '2024-01-16 08:33:51', 'V5AVX52F', 'linaBenMoussa', NULL, 3),
(75, '2024-01-16', '10:30:00', 2, 1, '2024-01-16 08:34:06', '2024-01-16 08:34:06', 'OJKNB8TL', 'linaBenMoussa', NULL, 5),
(76, '2024-01-16', '10:30:00', 1, 1, '2024-01-16 08:34:18', '2024-01-16 08:34:18', 'ZHPK3W0M', 'linaBenMoussa', NULL, 2),
(77, '2024-01-16', '11:30:00', 3, 1, '2024-01-16 09:37:09', '2024-01-16 09:37:09', 'WS4ZJ16L', 'linaBenMoussa', NULL, 2),
(78, '2024-01-16', '11:00:00', 3, 1, '2024-01-16 15:08:27', '2024-01-16 15:08:27', '2YEHPI92', 'linaBenMoussa', NULL, 4),
(79, '2024-01-23', '13:00:00', 3, 1, '2024-01-27 17:22:56', '2024-01-27 17:22:56', 'LQ4OMFDA', 'linaBenMoussa', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `city` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `address`, `phone`, `email`, `logo`, `description`, `city`, `created_at`, `updated_at`) VALUES
(1, 'The Kebab House', 'Istiklal Caddesi, 100, Istanbul, Turquie', '+90 212 555 6789', 'thekebabhouse@example.com', 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705353833/image/UK-s-largest-kebab-house-to-launch-on-London-s-Oxford-Street.jpg.jpg', 'Un restaurant turc proposant des kebabs et d\'autres plats traditionnels.', 'Istanbul', '2023-12-20 15:05:17', '2024-01-15 20:23:58'),
(2, 'Lahmacun House', 'Taksim Meydanı, 1, Istanbul, Turquie', '+90 212 444 5555', 'lahmacunhouse@example.com', 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354100/image/download%20%283%29.jpg.jpg', 'Un restaurant turc proposant des lahmacuns et d\'autres plats traditionnels.', 'Istanbul', '2023-12-20 15:06:00', '2024-01-15 20:29:04'),
(3, 'Meze House', 'Cihangir, 12, Istanbul, Turquie', '+90 212 333 4444', 'mezehouse@example.com', 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354184/image/download%20%284%29.jpg.jpg', 'Un restaurant turc proposant des mezes et d\'autres plats traditionnels.', 'Istanbul', '2023-12-20 15:06:47', '2024-01-15 20:29:49'),
(4, 'Baklava House', 'Sultanahmet, 10, Istanbul, Turquie', '+90 212 555 6666', 'baklavahouse@example.com', 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354298/image/download%20%285%29.jpg.jpg', 'Un restaurant turc proposant des baklavas et d\'autres desserts traditionnels.', 'Istanbul', '2023-12-20 15:07:01', '2024-01-15 20:31:46'),
(5, 'Turkish Coffee House', 'Beyoğlu, 12, Istanbul, Turquie', '+90 212 444 7777', 'turkishcoffeehouse@example.com', 'http://res.cloudinary.com/dqhwmpfm6/image/upload/v1705354344/image/images%20%281%29.jpg.jpg', 'Un restaurant turc proposant du café turc et d\'autres boissons traditionnelles.', 'Istanbul', '2023-12-20 15:07:18', '2024-01-15 20:32:28');

-- --------------------------------------------------------

--
-- Structure de la table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_number` int(11) NOT NULL,
  `seating_capacity` int(11) NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tables`
--

INSERT INTO `tables` (`id`, `table_number`, `seating_capacity`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, NULL, '2024-01-11 16:41:09'),
(2, 2, 6, 1, NULL, NULL),
(3, 3, 8, 1, NULL, NULL),
(4, 4, 10, 2, NULL, NULL),
(5, 5, 12, 2, NULL, NULL),
(6, 6, 14, 2, NULL, NULL),
(7, 7, 16, 3, NULL, NULL),
(8, 8, 18, 3, NULL, NULL),
(9, 9, 20, 3, NULL, NULL),
(10, 10, 22, 4, NULL, NULL),
(11, 11, 24, 4, NULL, NULL),
(12, 12, 26, 4, NULL, NULL),
(13, 13, 28, 5, NULL, NULL),
(14, 14, 30, 5, NULL, NULL),
(15, 15, 32, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_reservations`
--

CREATE TABLE `table_reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `phone`, `address`) VALUES
(1, 'John Doe', 'johndoe@example.com', NULL, '$2y$12$3yz6/AhqHyJyrgBZ3teCqu9hgtBV9c6vhOlpu43zr3h/FrHUfQTDe', NULL, '2023-12-29 09:00:07', '2023-12-29 09:00:07', 'user', NULL, NULL),
(2, 'Nom de l\'utilisateur', 'email@example.com', NULL, '$2y$12$.4G2YX.reoM651ZDY3m4Tefc5M9pyV2spsSdzAjCvhsPv.SnCuKL.', NULL, '2023-12-29 10:05:09', '2023-12-29 10:05:09', 'admin', NULL, NULL),
(3, 'lina', 'lina@gmail.com', NULL, '$2y$12$ZmLRhy6LyVaeF0iw3CvKRu.pd/Sob1hNIFQlfwoKQvJN.CyIAlQ0q', NULL, '2023-12-29 10:06:13', '2023-12-29 10:06:13', 'admin', NULL, NULL),
(4, 'linaBenMoussa', 'lina.b.moussa@gmail.com', NULL, '$2y$12$usd4Tp4hkE57jO0is068me18KQ1/TA./e6Z.pGuSfPkIGbP9T4E3u', NULL, '2024-01-13 20:40:10', '2024-01-13 20:40:10', 'user', NULL, NULL),
(5, 'linabenmoussa', 'lina.b.moussa255@gmail.com', NULL, '$2y$12$pOU3PpxgwbVM4B/zY21A9O41RYLnU2V0uT2/SJX5dyOGJsSH9T.TC', NULL, '2024-01-14 13:14:02', '2024-01-14 13:14:02', 'User', NULL, NULL),
(7, 'lina', 'linabmoussa@gmail.com', NULL, '$2y$12$f3vzv1Qlhj5pkSZvfOFnVeJHiWA13TyxemN44zURhxJsvGK16OF/2', NULL, '2024-01-14 17:09:07', '2024-01-14 17:09:07', 'user', NULL, NULL),
(8, 'linaBenMoussa', 'linalina@gmail.com', NULL, '$2y$12$Ht7ikPRSdUm0OcoGkXZJiOlQp5SkViZ8Sm37PnrXlWLzw.K0qS90S', NULL, '2024-01-15 08:04:34', '2024-01-15 08:04:34', 'user', NULL, NULL),
(9, 'linaBenMoussa', 'lin@gmail.com', NULL, '$2y$12$.0.A9PtG2y77KiW0EIq5aup19wbUzz0Fq7jtQ5X50EyVlS1AL6O2S', NULL, '2024-01-15 08:06:41', '2024-01-15 08:06:41', 'user', NULL, NULL),
(10, 'linaBenMoussa', 'jhhbj@gmail.com', NULL, '$2y$12$psIMh/hkUiAxND6x73tTk.VF5vWtDIwwrq7UdtwxmG0fpYpFDtLc.', NULL, '2024-01-15 08:08:45', '2024-01-15 08:08:45', 'user', '50488680', NULL),
(11, 'linaBenMoussa', 'jknkjj@gmail.com', NULL, '$2y$12$Tq9qdUAQ0Y74Fwv0Db..rOYpT1BkTaP2Nb03F7qlnijzSTvexPtxS', NULL, '2024-01-15 08:09:32', '2024-01-15 08:09:32', 'user', '50488680', 'nvhnvj'),
(12, 'linaBenMoussa', 'linabenmoussa@gmail.com', NULL, '$2y$12$g5SiDw6l0DmAKhu7qjHbgOfxrUAQ0i1Od/J8ICmCcd.exKCj0ZkuG', NULL, '2024-01-15 09:32:20', '2024-01-15 09:32:20', 'user', '50488680', 'sokra');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_food_id_foreign` (`food_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_restaurant_id_foreign` (`restaurant_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `reservation_tables`
--
ALTER TABLE `reservation_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_tables_table_id_foreign` (`table_id`),
  ADD KEY `reservation_tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Index pour la table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Index pour la table `table_reservations`
--
ALTER TABLE `table_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_reservations_table_id_foreign` (`table_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `reservation_tables`
--
ALTER TABLE `reservation_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `table_reservations`
--
ALTER TABLE `table_reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`);

--
-- Contraintes pour la table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Contraintes pour la table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Contraintes pour la table `reservation_tables`
--
ALTER TABLE `reservation_tables`
  ADD CONSTRAINT `reservation_tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`),
  ADD CONSTRAINT `reservation_tables_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Contraintes pour la table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

--
-- Contraintes pour la table `table_reservations`
--
ALTER TABLE `table_reservations`
  ADD CONSTRAINT `table_reservations_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
