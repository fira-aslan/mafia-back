-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 26, 2022 at 03:42 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
SET SQL_REQUIRE_PRIMARY_KEY = 0;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mafia`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_05_15_135111_create_users_table', 1),
(3, '2022_05_19_093456_player', 1),
(4, '2022_05_23_182902_create_rooms_table', 1),
(5, '2022_05_25_181255_create_role_table', 2),
(6, '2022_05_25_182210_create_player_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'admin', '21f6f46860357adee442aa2e24c060b18f23d7de79f7ef6b06c715dea91a644c', '[\"*\"]', NULL, '2022-05-24 15:06:24', '2022-05-24 15:06:24'),
(2, 'App\\Models\\User', 1, 'admin', '25bbd6e8d86f648040e0c873b74bc9b06f8233987dbabf9232bdf9c974e48078', '[\"*\"]', NULL, '2022-05-24 15:23:39', '2022-05-24 15:23:39'),
(3, 'App\\Models\\User', 1, 'admin', 'f39a441796208dde532e263b4de8de10d0d176ce2f7f773c1c071e07af21f5df', '[\"*\"]', NULL, '2022-05-24 15:30:33', '2022-05-24 15:30:33'),
(4, 'App\\Models\\User', 1, 'admin', '37aaa39430ab65d0826e600df05d6b2d6f22f5383a5d2633c9f89ded084efc14', '[\"*\"]', NULL, '2022-05-24 15:30:35', '2022-05-24 15:30:35'),
(5, 'App\\Models\\User', 2, 'admin', '34b478cd8ec3fc10d85a30ba45b339040c1f7fa6a11eddc2ae8f72cd9bb1d65b', '[\"*\"]', NULL, '2022-05-24 15:31:35', '2022-05-24 15:31:35'),
(6, 'App\\Models\\User', 2, 'admin', 'f39199b0ebed0d515632b3c58c648c7b5d1405700affed7c536dcb712f5a7251', '[\"*\"]', NULL, '2022-05-24 15:31:36', '2022-05-24 15:31:36'),
(7, 'App\\Models\\User', 2, 'admin', '7c11e996a49ef9b863806c98c927789b5198d0b5463b2cae7d038fc6c9ecc903', '[\"*\"]', NULL, '2022-05-24 15:32:32', '2022-05-24 15:32:32'),
(8, 'App\\Models\\User', 2, 'admin', 'a95abeb1d7c5a5943fda26929513bd1ad1ab430f7dbe0cc92b7be7bac3db839e', '[\"*\"]', NULL, '2022-05-24 15:32:35', '2022-05-24 15:32:35'),
(9, 'App\\Models\\User', 2, 'admin', '7a9814a33588693ca49263129bf1fa96b265bbf286e9d62326b051804f300d11', '[\"*\"]', NULL, '2022-05-24 15:32:35', '2022-05-24 15:32:35'),
(10, 'App\\Models\\User', 2, 'admin', '92695a4268e8b8fc67d2822bf95df51cba7db5a29287601301851b49c9d831fe', '[\"*\"]', NULL, '2022-05-24 15:32:35', '2022-05-24 15:32:35'),
(11, 'App\\Models\\User', 2, 'admin', '6f11fdf66f9fab5e2fa621af57f91691c352e62ac2fbacb798bf6bd5a59e2170', '[\"*\"]', NULL, '2022-05-24 15:32:36', '2022-05-24 15:32:36'),
(12, 'App\\Models\\User', 1, 'admin', '986df79275e3b256799263c300341c8701f266f1bf04a7d4e225124b43476128', '[\"*\"]', NULL, '2022-05-24 15:34:13', '2022-05-24 15:34:13'),
(13, 'App\\Models\\User', 1, 'admin', '288732c8c49820c51468f236b8ad946bc0ed131aba7bb39092976115ba5babeb', '[\"*\"]', NULL, '2022-05-24 15:35:15', '2022-05-24 15:35:15'),
(14, 'App\\Models\\User', 1, 'admin', '0af129847e75e87b78920ab249c6b39d103808ac80aaa77cd99bbf887cea8f29', '[\"*\"]', NULL, '2022-05-24 15:35:17', '2022-05-24 15:35:17'),
(15, 'App\\Models\\User', 1, 'admin', '73d4b16184b995d827c9dc3c17a6fa909e5434d599635df4015b732ba1dc6348', '[\"*\"]', NULL, '2022-05-24 15:37:32', '2022-05-24 15:37:32'),
(16, 'App\\Models\\User', 1, 'admin', '81aacee84614fba4054ee07f6bd8e5a6d02b49aba0955f6469012dd9c4d6cca2', '[\"*\"]', NULL, '2022-05-24 15:40:48', '2022-05-24 15:40:48'),
(17, 'App\\Models\\User', 1, 'admin', '6a9a457daa0fd35efc2ee779e41ded110dd539d8a23add674ba99eadecf0234a', '[\"*\"]', NULL, '2022-05-24 15:40:49', '2022-05-24 15:40:49'),
(18, 'App\\Models\\User', 1, 'fira@mail_Token', '7065bdcf54051e900f8e7ef67a5dd388a53af0055b9c40efff2d77eb97334002', '[\"*\"]', NULL, '2022-05-24 15:50:56', '2022-05-24 15:50:56'),
(19, 'App\\Models\\User', 4, 'admin', 'bce9c8f9a7592664025efe4bf977a454007e8ca02bcd8a47e12a824c19675549', '[\"*\"]', NULL, '2022-05-24 15:59:55', '2022-05-24 15:59:55'),
(20, 'App\\Models\\User', 4, 'admin', 'c6818581082539d088a67e561bf1abf7d053b89da741d88974789ae040ef09f0', '[\"*\"]', NULL, '2022-05-24 16:01:20', '2022-05-24 16:01:20'),
(21, 'App\\Models\\User', 1, 'admin', '9f157854b8a96cdb43f1a2c68a5afea5b0b36b62a505b051d1e02525394d3d6f', '[\"*\"]', NULL, '2022-05-24 16:01:34', '2022-05-24 16:01:34'),
(22, 'App\\Models\\User', 1, 'admin', '3884347396aaae4ecd36cfe93aeb3510728728bbbf1de40d6aef2de078244d57', '[\"*\"]', NULL, '2022-05-24 16:06:20', '2022-05-24 16:06:20'),
(23, 'App\\Models\\User', 3, 'admin', 'f7203fcde97658776523d75edf1a9cc18525a7e737190bc0d7ee48caf428ae0f', '[\"*\"]', NULL, '2022-05-24 16:06:52', '2022-05-24 16:06:52'),
(24, 'App\\Models\\User', 1, 'fira@mail_Token', '1e833dc50b827184037d1f62291599d2b49ec396469efb07273b0277edc3d8e5', '[\"*\"]', NULL, '2022-05-24 16:24:21', '2022-05-24 16:24:21'),
(25, 'App\\Models\\User', 1, 'fira@mail_Token', '2ec0fe2c1e733776eeb134e02be5a3ec57bf69203f371e4fae7b7739ec553c36', '[\"*\"]', NULL, '2022-05-25 01:32:21', '2022-05-25 01:32:21'),
(26, 'App\\Models\\User', 1, 'fira@mail_Token', 'a4faaacc76c252cc83e714612e69ee6c7da48cfd93f6d6ee63e071ca16fb2f4e', '[\"*\"]', NULL, '2022-05-25 05:27:52', '2022-05-25 05:27:52'),
(27, 'App\\Models\\User', 1, 'fira@mail_Token', 'c473a72f04d67d7a89c2f182977df5a2deabbc35d136d986a70e604e4a1795ce', '[\"*\"]', NULL, '2022-05-25 09:12:29', '2022-05-25 09:12:29'),
(28, 'App\\Models\\User', 1, 'fira@mail_Token', 'd8c354c2d1fed756977d53654a1d9d6c76034f87e24676d265519abd1fe63ea7', '[\"*\"]', NULL, '2022-05-25 14:43:53', '2022-05-25 14:43:53'),
(29, 'App\\Models\\User', 1, 'fira@mail_Token', '1c9c8b9b580faafcce8d57553d93a3629800396057c3e3a5fdf5a4abebde617b', '[\"*\"]', NULL, '2022-05-26 04:57:41', '2022-05-26 04:57:41'),
(30, 'App\\Models\\User', 1, 'fira@mail_Token', '61599ff1c50fb279a90f62f26fa95258b7bffe9b1cd9649dd2b86f01d2901d81', '[\"*\"]', NULL, '2022-05-26 05:13:23', '2022-05-26 05:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint UNSIGNED NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` bigint UNSIGNED NOT NULL,
  `is_alive` tinyint(1) NOT NULL,
  `id_room` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'mafia'),
(2, 'citizen'),
(3, 'sheriff'),
(4, 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `room_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `current_players` int NOT NULL,
  `all_players` int NOT NULL,
  `id_chat` bigint UNSIGNED NOT NULL,
  `duration` datetime NOT NULL,
  `start_time` timestamp NOT NULL,
  `end_time` timestamp NOT NULL,
  `count_mafia` int NOT NULL,
  `count_non_mafia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `id_user`, `room_name`, `is_private`, `current_players`, `all_players`, `id_chat`, `duration`, `start_time`, `end_time`, `count_mafia`, `count_non_mafia`) VALUES
(1, 1, 'playful', 0, 6, 10, 1, '2022-05-25 11:29:40', '2022-05-25 07:07:40', '2022-05-25 07:29:40', 1, 5),
(2, 3, 'didosroom', 1, 7, 8, 2, '2022-05-25 12:46:33', '2022-05-25 08:34:33', '2022-05-25 08:46:33', 2, 5),
(3, 1, 'nighttime', 0, 12, 16, 2, '2022-05-25 15:23:24', '2022-05-25 11:06:24', '2022-05-25 11:23:24', 3, 9),
(4, 4, 'nicetomeetu', 1, 10, 10, 2, '2022-05-25 16:41:50', '2022-05-25 12:30:50', '2022-05-25 12:41:50', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nickname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'fira', 'fira@mail', '$2y$10$UURA0Q/112.aaNEHTLVpVuvxRWsBgzBNxO7GpAiJOBVppu8Yt.mhK', NULL, NULL),
(2, 'hey', 'hey@mail', '$2y$10$thV8GqJNCaJpZ/n2y878AuqnH4eGd05wyHXtaO4F/abnrPEKft6Je', NULL, NULL),
(3, 'dido', 'dido@mail', '$2y$10$b27b.UFalsArVP3zMJWSqe4UUZaCvIwBSBssK22g6TewQVbWZdpS6', NULL, NULL),
(4, 'hello', 'hello@mail', '$2y$10$6Nw8rCFQnWo/ucMr0g/L4OtZMCTtyjuLpUFTMyOyk5ArvtS9BwKla', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_id_role_foreign` (`id_role`),
  ADD KEY `players_id_room_foreign` (`id_room`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_id_user_foreign` (`id_user`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `players_id_room_foreign` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
