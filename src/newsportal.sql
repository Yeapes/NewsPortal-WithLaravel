-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2019 at 04:38 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

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
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2019_08_24_100856_create_roles_table', 1),
(27, '2019_08_26_115458_add_photo_to_users', 2),
(28, '2019_08_26_120426_add_photo_to_users', 3),
(30, '2019_08_26_121218_create_photos_table', 4),
(37, '2019_08_28_164538_create_posts_table', 5),
(38, '2019_08_28_173125_create_postcategories_table', 5),
(40, '2019_08_28_194855_add_photo_to_posts', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, '15668242641.jpg', '2019-08-26 06:57:44', '2019-08-26 06:57:44'),
(2, '1566824344PHP.jpg', '2019-08-26 06:59:04', '2019-08-26 06:59:04'),
(3, '1566824380PHP.jpg', '2019-08-26 06:59:40', '2019-08-26 06:59:40'),
(4, '156683064320190311_162210.jpg', '2019-08-26 08:44:03', '2019-08-26 08:44:03'),
(5, '15668315792.jpg', '2019-08-26 08:59:39', '2019-08-26 08:59:39'),
(6, '156688791220190311_162210.jpg', '2019-08-27 00:38:32', '2019-08-27 00:38:32'),
(7, '15668880251.jpg', '2019-08-27 00:40:25', '2019-08-27 00:40:25'),
(8, '15669068461.jpg', '2019-08-27 05:54:06', '2019-08-27 05:54:06'),
(9, '15669068561.jpg', '2019-08-27 05:54:16', '2019-08-27 05:54:16'),
(10, '15669893081.jpg', '2019-08-28 04:48:28', '2019-08-28 04:48:28'),
(11, '156698933120190311_162210.jpg', '2019-08-28 04:48:51', '2019-08-28 04:48:51'),
(12, '156698936420190311_162210.jpg', '2019-08-28 04:49:24', '2019-08-28 04:49:24'),
(13, '156699036220190311_162210.jpg', '2019-08-28 05:06:02', '2019-08-28 05:06:02'),
(14, '1566990443IMG_8571.JPG', '2019-08-28 05:07:23', '2019-08-28 05:07:23'),
(15, '156699061820190702_124705.jpg', '2019-08-28 05:10:18', '2019-08-28 05:10:18'),
(16, '1566990748bdjobs.jpg', '2019-08-28 05:12:28', '2019-08-28 05:12:28'),
(17, '156699118420190605_093816.jpg', '2019-08-28 05:19:44', '2019-08-28 05:19:44'),
(18, '156699121220190702_124429.jpg', '2019-08-28 05:20:12', '2019-08-28 05:20:12'),
(19, '1566994903bdjobs.jpg', '2019-08-28 06:21:43', '2019-08-28 06:21:43'),
(20, '15669950081564652694_tmp_20190201_104106.png', '2019-08-28 06:23:28', '2019-08-28 06:23:28'),
(21, '1567013307bdjobs.jpg', '2019-08-28 11:28:27', '2019-08-28 11:28:27'),
(22, '1567022297bdjobs.jpg', '2019-08-28 13:58:17', '2019-08-28 13:58:17'),
(23, '1567022405IMG_20181011_134731-1.jpg', '2019-08-28 14:00:05', '2019-08-28 14:00:05'),
(24, '1567022515IMG_20181011_134731-1.jpg', '2019-08-28 14:01:55', '2019-08-28 14:01:55'),
(25, '156702259320190702_124705.jpg', '2019-08-28 14:03:13', '2019-08-28 14:03:13'),
(26, '156702540317155553_1205386026246792_2354723782574613413_n.jpg', '2019-08-28 14:50:03', '2019-08-28 14:50:03'),
(27, '156702739451813434_1979914332127287_8217046961585389568_o.jpg', '2019-08-28 15:23:14', '2019-08-28 15:23:14'),
(28, '156702741551813434_1979914332127287_8217046961585389568_o.jpg', '2019-08-28 15:23:35', '2019-08-28 15:23:35'),
(29, '156702742820190702_124705.jpg', '2019-08-28 15:23:48', '2019-08-28 15:23:48'),
(30, '156702765120190718_193048.jpg', '2019-08-28 15:27:31', '2019-08-28 15:27:31'),
(31, '156702782920181129_114416.jpg', '2019-08-28 15:30:29', '2019-08-28 15:30:29'),
(32, '1567051429bdjobs.jpg', '2019-08-28 22:03:49', '2019-08-28 22:03:49'),
(33, '1567051510bdjobs.jpg', '2019-08-28 22:05:10', '2019-08-28 22:05:10'),
(34, '156705159617155553_1205386026246792_2354723782574613413_n.jpg', '2019-08-28 22:06:36', '2019-08-28 22:06:36'),
(35, '156705163620190702_124705.jpg', '2019-08-28 22:07:16', '2019-08-28 22:07:16'),
(36, '1567051702IMG_20181011_134731-1.jpg', '2019-08-28 22:08:22', '2019-08-28 22:08:22'),
(37, '156705175660-602361_hp-laptop-png-hd-laptop-png-images-hd.png', '2019-08-28 22:09:16', '2019-08-28 22:09:16'),
(38, '156707060651813434_1979914332127287_8217046961585389568_o.jpg', '2019-08-29 03:23:26', '2019-08-29 03:23:26'),
(39, '1567070658bdjobs.jpg', '2019-08-29 03:24:18', '2019-08-29 03:24:18'),
(40, '156707068869239868_1882203778592024_4607145155663757312_n.jpg', '2019-08-29 03:24:48', '2019-08-29 03:24:48'),
(41, '156707326659c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 04:07:46', '2019-08-29 04:07:46'),
(42, '156707329559c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 04:08:15', '2019-08-29 04:08:15'),
(43, '156707344159c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 04:10:41', '2019-08-29 04:10:41'),
(44, '156707346159c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 04:11:01', '2019-08-29 04:11:01'),
(45, '156707349659c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 04:11:36', '2019-08-29 04:11:36'),
(46, '156707558159c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 04:46:21', '2019-08-29 04:46:21'),
(47, '156707765859c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 05:20:58', '2019-08-29 05:20:58'),
(48, '156708118559c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-29 06:19:45', '2019-08-29 06:19:45'),
(49, '156717399659c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-08-30 08:06:36', '2019-08-30 08:06:36'),
(50, '156750198659c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-09-03 03:13:06', '2019-09-03 03:13:06'),
(51, '156750201659c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-09-03 03:13:36', '2019-09-03 03:13:36'),
(52, '156750203759c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-09-03 03:13:57', '2019-09-03 03:13:57'),
(53, '156750204859c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-09-03 03:14:08', '2019-09-03 03:14:08'),
(54, '156750209659c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-09-03 03:14:56', '2019-09-03 03:14:56'),
(55, '1567502116Capture.PNG', '2019-09-03 03:15:16', '2019-09-03 03:15:16'),
(56, '156750423659c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-09-03 03:50:36', '2019-09-03 03:50:36'),
(57, '1567505423Capture.PNG', '2019-09-03 04:10:23', '2019-09-03 04:10:23'),
(58, '156751163159c47d7d925654af4a724881c8cac26c-5d1a364c603e3.jpg', '2019-09-03 05:53:51', '2019-09-03 05:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `postcategories`
--

CREATE TABLE `postcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postcategories`
--

INSERT INTO `postcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Animal', NULL, NULL),
(2, 'Sports', NULL, NULL),
(3, 'Magazine', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_cat_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `role_id`, `post_title`, `post_description`, `post_cat_id`, `created_at`, `updated_at`, `photo_id`) VALUES
(3, 1, 'sample Post by Sajib biswas', 'sadghfdjscvxb', '1', '2019-09-03 04:10:23', '2019-09-03 04:10:23', '57'),
(4, 2, 'sample Post by Sajib biswas', 'Golam Azam', '1', '2019-09-03 05:53:52', '2019-09-03 05:53:52', '58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '0000-00-00 00:00:00', NULL),
(2, 'author', NULL, NULL),
(3, 'Subscriber', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(40, 1, 1, 'golamAzam123', 'mdputon32312@gmail.com', NULL, '$2y$10$FKBe/7bflvo1l0OLFWJqP.XjAQJS7GRQJO.MeLkvgA8..KHmUI0gC', NULL, '2019-08-30 07:50:32', '2019-09-03 03:50:36', '56'),
(41, NULL, 0, 'golamAzam1233', 'mdputon33323@gmail.com', NULL, '$2y$10$M.MWPwdXuKpJrFBF.14mWeASsR7vvpl7tzr6/PreemxBKgJ7JLOeG', NULL, '2019-09-03 04:28:28', '2019-09-03 04:28:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postcategories`
--
ALTER TABLE `postcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `postcategories`
--
ALTER TABLE `postcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
