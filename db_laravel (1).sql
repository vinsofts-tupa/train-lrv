-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 05, 2018 at 03:30 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.2.9-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `id` int(10) UNSIGNED NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abcs`
--

CREATE TABLE `abcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abcs`
--

INSERT INTO `abcs` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tu', '2018-09-28 00:17:43', '2018-09-28 00:17:43', NULL),
(2, 'thang mlkl', '2018-09-28 00:17:50', '2018-09-28 00:18:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Quo qui est dolor similique est est et delectus.', 'Assumenda tenetur voluptatem corporis aut. Rerum fugiat illum quis necessitatibus non enim in temporibus. Dolorum reprehenderit quia provident pariatur omnis minima. Iste non repellendus in dolore.', '2018-09-26 20:23:13', '2018-09-26 20:23:13'),
(3, 'Officia eos et rerum enim saepe aut ut.', 'Cumque est repellendus dolore a. Nulla similique aut corporis quo nemo. Numquam qui officia blanditiis iusto earum illo eum omnis.', '2018-09-26 20:23:13', '2018-09-26 20:23:13'),
(4, 'Nostrum laboriosam eius doloribus consectetur quod perferendis fugit.', 'Repudiandae ipsum quia eius ducimus. Accusantium praesentium maxime quo quos. Dolores ut consequatur minima repellendus. Quia magni architecto dignissimos nobis repellat nihil.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(5, 'Eos neque maxime placeat non officia.', 'In at autem in iusto. Necessitatibus explicabo ullam sapiente totam dolore dolorum maxime voluptatum. Facere quod accusantium et saepe.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(6, 'Quos minima maxime qui voluptas aut tenetur iusto necessitatibus.', 'Ratione vel ut possimus ut ipsa velit. Enim molestiae voluptas et ea at laborum qui. Tempora quo minus omnis. Aut est minima rem modi unde quae.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(7, 'Laborum ut perspiciatis inventore quam quidem ex maxime.', 'Sit corporis aut omnis odit sed aut placeat nisi. Alias voluptatibus facere et amet. Dignissimos debitis sit aut vero consequatur dolorem voluptas quisquam. Commodi excepturi rerum qui.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(8, 'Eius adipisci nam dolorem dolor et.', 'Fugit inventore debitis fugiat ipsam. Explicabo recusandae aut et maxime sed sunt nesciunt voluptatum. Ut laborum deleniti ipsa vitae laboriosam. Necessitatibus eum sed eius consectetur.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(9, 'Corrupti iure atque dolores ad fugiat voluptatem doloremque.', 'Quos sunt facilis dolor. Quidem et voluptatem quo dolore ab ut. Est eaque molestias est quia velit laboriosam.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(10, 'Occaecati dolor natus tempora quo.', 'Nihil enim et similique et voluptatum in eos. Voluptatem voluptas aliquam amet dolor quae.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(11, 'Rem dolores consequuntur ducimus facere omnis unde incidunt.', 'Quia aperiam natus voluptas quam rem. Et maiores sed aperiam sequi non et sit vitae. Similique aliquam minus ut provident omnis pariatur.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(12, 'Eum earum perspiciatis qui et molestiae est saepe.', 'Voluptas reprehenderit consequatur provident consequatur aut ut nesciunt. Assumenda pariatur maiores repellendus et adipisci sit.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(13, 'Et et vel atque optio in voluptate cumque.', 'Nihil et eveniet maxime culpa non quo illum aut. Et officia rerum qui. Voluptas est voluptatem eaque sed numquam in. In quos non ut quia quia quia.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(14, 'Sunt sequi vero laudantium quibusdam numquam maxime eveniet.', 'Quibusdam dicta atque ad ipsum facere. Nulla voluptatem ut adipisci deleniti saepe debitis laboriosam nihil. Odit rerum ea quis. Sequi recusandae repellat eveniet in et.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(15, 'Sequi vero molestiae voluptas velit.', 'Vel a consectetur et error quo dicta voluptas. Harum iste incidunt praesentium aut odit. Qui delectus numquam voluptatem. Eveniet vitae labore error nihil ut.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(16, 'Consequuntur fugit natus odio reiciendis non voluptatum occaecati.', 'Ipsum alias aliquid rerum voluptas hic perspiciatis aut fugit. Animi ullam vel maiores ex sequi sunt iste alias. Voluptas id minus aut dolores. Qui dolores quam at sed eos minus nulla.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(17, 'Nemo tenetur fuga at nihil magnam.', 'Error qui velit quia. Ea quas rerum cupiditate fuga sed. Iusto provident perspiciatis quia. Voluptatum non tenetur aliquid nihil commodi deserunt molestiae sapiente. Eos nisi consectetur hic et.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(18, 'Nihil iure similique qui dolorum laboriosam quis vitae.', 'Reprehenderit non in voluptas vel temporibus animi exercitationem. Velit officiis aut perferendis quibusdam et ducimus ratione. Ex deserunt ut laborum tempore et. Beatae quod ab natus qui modi iure.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(19, 'Totam error explicabo odit expedita rerum suscipit et.', 'Qui delectus suscipit praesentium. Atque omnis molestias vel amet quo velit. Accusamus voluptatem labore qui. Autem est qui dolore ut tenetur aut.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(20, 'Dolorem ad quo illum ullam.', 'Possimus et earum sunt quis facilis doloribus sed. Aut fugiat officia odio tempore laborum.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(21, 'Sed saepe numquam unde dolorum.', 'Voluptates laborum reprehenderit itaque est eos. Sed veniam non libero aut aut. Qui delectus commodi vero vitae esse ducimus.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(22, 'Dolor qui sunt enim a dignissimos.', 'Voluptates voluptates aut magni eos. Dolor sequi a velit quae pariatur temporibus. Et fugiat in nihil modi eius.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(23, 'Porro autem ratione nihil doloremque.', 'Corporis aperiam id magni voluptatem quibusdam. Facilis ut qui est aut. Occaecati voluptatem totam et velit quo.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(24, 'Alias non deserunt veritatis et enim eos optio.', 'Ut non tempora suscipit cum saepe adipisci eos qui. Id velit qui delectus quia voluptatem cupiditate. Dolorem quisquam nobis ex quo sed.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(25, 'Corporis aliquam id quas ut fugiat.', 'Non aut sit ut natus. Consequatur esse impedit quaerat velit est voluptas.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(26, 'Expedita perspiciatis fugit ut cumque cum ratione.', 'Consequuntur minus minus voluptatem omnis aut fugit. Aut laboriosam est est debitis aut explicabo. Magnam repudiandae sint eum corporis aut. Vel corporis enim repellendus quasi autem illo quas.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(27, 'Voluptatibus quidem aut eaque voluptatem a.', 'Similique aut qui repellendus quia minima et. Ut ullam non enim tenetur doloremque fuga. Aut repellendus velit temporibus eos accusamus non hic. Iste aut sint dolores est maiores.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(28, 'Rerum labore voluptatibus ullam eos vel inventore.', 'Eum odit laboriosam sunt ut illo earum aspernatur sunt. Eveniet ut non nobis minima a. Alias neque blanditiis voluptatum officia aspernatur iure. Neque eveniet saepe vitae dicta nihil praesentium.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(29, 'Accusantium quis et fuga nobis omnis.', 'Cum sint quod sit autem autem. Consequatur voluptatibus aut sed a. Omnis aut ab culpa ex eum nesciunt. Itaque quo ut totam et.', '2018-09-26 20:23:14', '2018-09-26 20:23:14'),
(30, 'Voluptatibus nesciunt repudiandae debitis pariatur quisquam sequi est voluptatem.', 'Neque eaque dolorem sit vero quo. Tempore qui accusantium laboriosam sunt.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(31, 'Eveniet quae recusandae autem eius.', 'Quis saepe minima quia ut quo fugit ullam. Id ratione qui cupiditate numquam. Voluptatibus fugiat consectetur laboriosam minus omnis. Rem distinctio illum consequuntur.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(32, 'Est itaque nemo eum.', 'Magnam harum accusantium repellat temporibus sapiente. Minima voluptatibus est dolore voluptatem minima labore.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(33, 'Ut dignissimos nihil soluta rerum eaque sapiente.', 'Deleniti ea commodi vero ab. Adipisci rem consequatur adipisci reiciendis. Est sunt nemo quas.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(34, 'Odio dolorum nihil recusandae et.', 'Quo cupiditate corporis qui harum atque tempore. Necessitatibus qui eaque quibusdam provident iure excepturi est. Fuga quod vitae distinctio inventore amet qui porro. Ad facilis itaque minus.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(35, 'Ducimus sunt optio dolores aut repudiandae ea molestias similique.', 'Totam consequatur omnis possimus aut. Mollitia doloribus nesciunt qui itaque. Ab numquam voluptatum alias ducimus corporis.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(36, 'Quisquam consequuntur mollitia vel.', 'Numquam dicta et earum soluta et. Quis porro molestiae sunt omnis ad provident quo nihil. Suscipit natus nam quidem neque cum est id.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(37, 'Esse veniam quia voluptatibus doloremque soluta ut.', 'Aut quia quia quia sint nulla cupiditate eveniet. Natus voluptatem totam sit ad iste voluptas sit. Ea provident voluptas et eius animi error ipsa suscipit. Non tenetur dignissimos dignissimos.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(38, 'Ut sunt perspiciatis porro ea qui quaerat optio.', 'Veritatis est debitis vel eveniet dignissimos ipsum quaerat qui. Quam consequuntur veritatis sequi. Dolorem tempora hic officia molestiae. Dicta veniam voluptas omnis officiis vitae dolorem quam.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(39, 'Aut vitae placeat optio ipsum fugit ullam.', 'Neque tenetur tempore aut omnis aut tempora sint. Commodi modi qui sit veniam totam ut. Aut ullam quod omnis illum. Nobis placeat id distinctio similique amet repudiandae voluptatibus porro.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(40, 'Voluptatem distinctio ipsa et enim consequatur.', 'Quia ut quo eaque autem dolore tempora qui eaque. Et voluptates aut natus odio id ex delectus. Nihil laboriosam assumenda quas temporibus. Ad explicabo sint voluptates ex quod.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(41, 'Ut cupiditate quis quia est minus et voluptatum.', 'Dignissimos deleniti alias ullam aut eos. Sint iure incidunt eius nisi quo. Sed rerum voluptates officiis voluptatem. Odio iure sed minus voluptatibus quo qui fugit. Nesciunt modi non id similique.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(42, 'Eum sint eius reprehenderit vitae nostrum asperiores non.', 'Recusandae consectetur numquam qui nihil. Odit dignissimos consequatur commodi distinctio aut recusandae quidem. Voluptas et voluptatem molestiae velit est exercitationem et aut.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(43, 'Nostrum ducimus est nemo voluptatem soluta temporibus iusto.', 'Ea ut voluptatem sint fugiat dolorem magnam est. Quaerat quia earum natus odit mollitia.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(44, 'Soluta pariatur facere sit voluptatem voluptatum in.', 'Et vel molestiae sequi ut quia. Vitae quis saepe in ab repellendus architecto aut. Veritatis aut dolorem architecto aut voluptatum quia ut enim.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(45, 'Provident sunt sit ut numquam.', 'Id optio ab ea cumque omnis recusandae quam. Dolorem sapiente numquam ducimus id. Animi blanditiis inventore consequuntur et nisi sit et. Hic rem quae aut accusamus vero.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(46, 'Harum quam voluptate eos ipsum deserunt tenetur dolorem dolor.', 'Et nesciunt quia officiis et. Neque aut nam sunt quae aut. Similique totam soluta corrupti voluptatem sunt pariatur.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(47, 'Quisquam dolorum qui repellat.', 'Voluptate inventore qui quo non asperiores. Vero laboriosam voluptas asperiores id ipsam maiores. Totam natus ut aperiam. Nemo incidunt aut ducimus nostrum optio fugiat dolor. Possimus labore qui rerum magni sint totam voluptatem totam.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(48, 'Et molestiae in deserunt autem delectus.', 'Ut veritatis non tenetur omnis. Porro quae quidem fugiat rerum nisi. Excepturi fugiat in veniam voluptatem quasi explicabo.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(49, 'Ut distinctio doloremque dolores voluptatem delectus aut.', 'Excepturi rerum qui culpa dolorem corporis. Debitis aspernatur aut ea non aut. Quae tempore tempore praesentium facere. Tempore porro occaecati consequatur officiis.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(50, 'Aut dicta excepturi numquam doloremque.', 'Ut laborum voluptate quam eveniet molestias. Dolor vel reprehenderit dolorem in repellendus vel. Atque minus sed sint numquam. Voluptatem et nihil velit velit. Rem ex velit excepturi et et qui.', '2018-09-26 20:23:15', '2018-09-26 20:23:15'),
(51, '123', '456', '2018-09-26 21:04:29', '2018-09-26 21:18:20'),
(52, 'tu11', '123', '2018-09-26 21:43:50', '2018-09-26 21:43:50'),
(53, '111', '111', '2018-09-26 21:46:18', '2018-09-26 21:46:18'),
(55, 'aaaa', NULL, '2018-09-26 21:51:12', '2018-09-26 21:51:12'),
(56, 'a1', 'a', '2018-09-26 21:53:11', '2018-09-27 00:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BMW', NULL, NULL),
(2, 'Ducati', NULL, NULL),
(3, 'Merc', NULL, NULL),
(4, 'Toyota', NULL, NULL),
(5, 'Honda', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_colors`
--

CREATE TABLE `car_colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `car_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_colors`
--

INSERT INTO `car_colors` (`id`, `car_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 4, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 3, 2, NULL, NULL),
(8, 1, 1, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 3, 4, NULL, NULL),
(11, 4, 1, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 2, 1, NULL, NULL),
(14, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `news_id`, `product_id`, `deleted_at`) VALUES
(1, 'y@mail.com', 'asdhhgjghj', 2, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'red', NULL, NULL),
(2, 'blue', NULL, NULL),
(3, 'green', NULL, NULL),
(4, 'yellow', NULL, NULL),
(5, 'white', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'hinh_quan_1.png', 1, NULL, NULL),
(2, 'hinh_quan_2.png', 1, NULL, NULL),
(3, 'hinh_quan_3.png', 1, NULL, NULL),
(4, 'hinh_quan_4.png', 1, NULL, NULL),
(5, 'hinh_ao_1.png', 2, NULL, NULL),
(6, 'hinh_ao_2.png', 2, NULL, NULL),
(7, 'hinh_ao_3.png', 2, NULL, NULL),
(8, 'hinh_ao_4.png', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iteam`
--

CREATE TABLE `iteam` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'May Tinh', NULL, NULL),
(2, 'Dien thoai', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2018_09_12_035423_create_a_table', 1),
(54, '2018_09_12_035842_create_products_table', 1),
(55, '2018_09_12_041019_create_news_table', 1),
(56, '2018_09_12_042916_create_category_table', 1),
(57, '2018_09_13_021854_create_images_table', 1),
(58, '2018_09_13_023146_create_car_table', 1),
(59, '2018_09_13_023239_create_iteam_table', 1),
(60, '2018_09_13_040833_create_colors_table', 2),
(61, '2018_09_13_040842_create_car_colors_table', 2),
(62, '2018_09_13_050059_create_thangs_table', 3),
(63, '2018_09_13_092003_create_sinhviens_table', 4),
(64, '2018_09_17_021445_create_sanpham_table', 5),
(65, '2018_09_17_022119_create_sanpham_table', 6),
(66, '2018_09_17_022551_create_loaisanpham_table', 7),
(67, '2018_09_17_082924_add_users', 8),
(68, '2018_09_27_031526_create_articles_table', 9),
(70, '2018_09_28_031601_create_posts_table', 10),
(71, '2018_09_28_071713_create_abcs_table', 11),
(72, '2018_09_28_072839_create_thangmls_table', 12),
(73, '2018_09_28_074029_create_categories_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Áo sơ mia', 35000, NULL, '2018-09-25 03:11:34'),
(2, 'Áo Phông', 52000, NULL, '2018-09-23 21:36:17'),
(3, 'Đồng Hồ', 65000, NULL, '2018-09-23 21:15:19'),
(4, 'Kính', 35000, NULL, '2018-09-23 21:14:48'),
(5, 'Quần Đùi', 75000, NULL, NULL),
(6, 'Quần Âu', 22000, NULL, NULL),
(7, 'Giày', 52000, NULL, '2018-09-25 21:51:12'),
(9, 'a1b1c1', 4321, '2018-09-27 00:40:18', '2018-09-27 01:58:56'),
(10, 'lkj', 123, '2018-09-27 21:04:19', '2018-09-27 21:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `id_loaisanpham` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `soluong`, `id_loaisanpham`, `created_at`, `updated_at`) VALUES
(3, 'VAIO', 90, 2, NULL, NULL),
(8, 'Ipad', 12312, 2, '2018-09-24 20:30:17', '2018-09-24 20:30:17'),
(9, 'Bphone', 40, 2, '2018-09-24 21:37:22', '2018-09-24 21:37:22'),
(10, 'ASUS', 25, 1, '2018-09-24 21:37:58', '2018-09-24 21:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `sinhviens`
--

CREATE TABLE `sinhviens` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toan` int(11) NOT NULL,
  `ly` int(11) NOT NULL,
  `hoa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sinhviens`
--

INSERT INTO `sinhviens` (`id`, `hoten`, `toan`, `ly`, `hoa`, `created_at`, `updated_at`) VALUES
(1, 'Tu', 7, 7, 7, '2018-09-13 02:38:09', '2018-09-13 21:54:19'),
(2, 'Toan', 2, 1, 8, '2018-09-13 02:43:24', '2018-09-13 02:43:24'),
(3, 'Thang', 8, 6, 0, '2018-09-13 02:46:15', '2018-09-13 02:46:15'),
(4, 'Trong', 8, 9, 0, '2018-09-13 02:56:04', '2018-09-13 02:56:04'),
(5, 'Dat', 4, 4, 4, '2018-09-13 19:56:28', '2018-09-13 19:56:28'),
(6, 'Cuong', 6, 6, 6, '2018-09-13 19:57:49', '2018-09-13 19:57:49'),
(7, 'Kien', 3, 3, 3, '2018-09-13 19:58:29', '2018-09-13 19:58:29'),
(8, 'asda', 4, 4, 4, '2018-09-13 20:19:24', '2018-09-13 20:19:24'),
(9, 'asfdasda', 5, 5, 5, '2018-09-13 20:20:13', '2018-09-13 20:20:13'),
(12, 'c4x', 3, 3, 3, '2018-09-13 20:48:09', '2018-09-13 20:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `thangmls`
--

CREATE TABLE `thangmls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thangs`
--

CREATE TABLE `thangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `monhoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giangvien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thangs`
--

INSERT INTO `thangs` (`id`, `monhoc`, `giatien`, `giangvien`, `created_at`, `updated_at`) VALUES
(1, 'Toan', '90000', 'Tu', '2018-09-13 00:49:33', '2018-09-13 00:49:33'),
(2, 'Van', '600000', 'Toan', '2018-09-13 00:50:39', '2018-09-13 00:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Van Toan', 'v@mail.com', NULL, '123', NULL, '2018-09-21 01:43:50', '2018-09-21 01:43:50', NULL),
(2, 'Pham Anh A', 'a@mail.com', NULL, '$2y$10$iP/KuhgsnbQ0WCHGIKt06.Yyx2OUjKfhHmohNuX5kGX0exarRw9z.', 'Z0SqNzZd6A4E6Cv7SqIvXCPIBFm9K9sSXf7Gli4zP9Y89OLGx2NAhjy1Xng6', NULL, NULL, 1),
(3, 'Pham Anh B', 'b@mail.com', NULL, '$2y$10$Q2Whfj5OrgMy7aNeAiGHT.hr/wfIY1RlZHnOnFcVyPxI5yHdECdy6', NULL, NULL, NULL, NULL),
(4, 'Pham Anh C', 'c@mail.com', NULL, '$2y$10$3towDCn8TKJOehLSIrnTyuJfmvBQjuR4saiQb0w9MNJao7nlGqWmG', NULL, NULL, NULL, NULL),
(5, 'Phạm Anh Tú', 'tu@mail.com', NULL, '$2y$10$nKEsyt8bnd9IyRx49o1lhe4t9znZFHHd5XuZXAXKPEZujRm8G2xFq', 'XyFuTjhS1TJyl1k8nVsbDygZY4D4P1kcy6JhkLyIp2h3ENhQ4tfBRusFQWCr', '2018-09-21 02:04:01', '2018-09-21 02:04:01', NULL),
(9, 'Pham Anh D', 'd@mail.com', NULL, '$2y$10$8BHULvqfxFEpaBwb2oorgOJCMzjB9gCIB0bJrNsIefY1XGl5rx3Vu', NULL, NULL, NULL, NULL),
(10, 'Pham Anh E', 'e@mail.com', NULL, '$2y$10$.sQfkC6S3Doulw7mWROvX..YSAygbiNoKruE8tMQu.N3O63aNwXg2', 'dBP68QhDL2IKikigMhRv1nIhxY0JjvDB1mBO7KYQNTpkDez1IEPVAwoFN4NH', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abcs`
--
ALTER TABLE `abcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_colors`
--
ALTER TABLE `car_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iteam`
--
ALTER TABLE `iteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thangmls`
--
ALTER TABLE `thangmls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thangs`
--
ALTER TABLE `thangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a`
--
ALTER TABLE `a`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `abcs`
--
ALTER TABLE `abcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `car_colors`
--
ALTER TABLE `car_colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iteam`
--
ALTER TABLE `iteam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sinhviens`
--
ALTER TABLE `sinhviens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `thangmls`
--
ALTER TABLE `thangmls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thangs`
--
ALTER TABLE `thangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
