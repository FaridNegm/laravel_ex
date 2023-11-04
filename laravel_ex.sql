-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 06:20 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ex`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_04_043500_create_posts_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Temporibus.', 'Velit culpa repellendus vero omnis consequatur. Cumque adipisci dolor culpa rerum tempora nisi. Id illo sit corrupti nihil id. Exercitationem sint culpa est et repellat dolores.', 1, 0, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(2, 'Beatae.', 'Tempore assumenda atque sapiente temporibus sed rerum eum. Voluptatem pariatur ipsum quam. Quis sunt provident pariatur non. Eum qui iure qui laboriosam veniam quos modi. In et quia aut quisquam.', 2, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(3, 'Dicta non.', 'Voluptas et aut ab illo dignissimos vero. Soluta officiis tempora dolorem consequatur earum sit. Dignissimos tempora esse aut laborum sunt. Necessitatibus qui commodi est veniam voluptas nemo.', 1, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(4, 'Hic assumenda.', 'Odit provident voluptate beatae quo culpa maiores. Repellat reiciendis et iure eligendi. Voluptatem aspernatur debitis vitae quia quis vel suscipit.', 1, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(5, 'Quae.', 'Quae eum voluptatem nisi molestias. Magnam eum maxime eius ut. Rerum sequi id qui labore harum perspiciatis doloribus.', 3, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(6, 'Optio voluptatem.', 'Rerum et totam dolor nostrum temporibus ut iusto. Aut quia consequatur eveniet dolores nesciunt quam architecto veritatis. Consequatur voluptatum dolore magni quo. Totam incidunt nemo eum. Odio omnis quia autem veritatis dolor.', 1, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(7, 'Velit sed.', 'Quia totam dolor quia voluptas qui. Est soluta vel aspernatur natus maxime qui voluptas. Autem magnam quo non vitae qui quod tempore. Rem distinctio quis qui sit fugit corrupti.', 6, 0, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(8, 'Explicabo.', 'Ea in voluptatem sint quod veritatis aut dolorum. Magnam voluptatem aut doloribus ea et. Dignissimos iure ut ipsam aut sint sunt quo consequatur. Distinctio in et voluptatem rerum earum laborum numquam.', 1, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(9, 'Et aut.', 'Esse autem porro nobis fugit nemo quam rerum. Dicta qui maiores tempora tenetur qui fuga. In doloremque hic pariatur et. Accusantium iusto autem rerum.', 4, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(10, 'Aut.', 'Quasi odio esse molestias. Animi tenetur ut consequatur id. Qui ut eum earum atque.', 4, 1, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(11, 'Et dignissimos.', 'Dolorum nemo earum qui iusto consequatur dolorem. Aspernatur et fuga consequatur modi hic alias. Exercitationem voluptas voluptatem rerum voluptatem et non et.', 2, 0, '2023-11-04 03:17:40', '2023-11-04 03:17:40'),
(12, 'Excepturi sit.', 'Totam ipsum qui iure nam nihil sapiente ut. Aut at consequatur enim et magni quaerat sed reiciendis. Amet porro odit sed aut nam rem. Omnis nihil minus et.', 3, 0, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(13, 'Neque et.', 'Dolores similique sit reiciendis odit optio repudiandae. Dolor velit maxime rem consequatur. Est id quae illo quia eveniet. Impedit qui eligendi perferendis et odit.', 1, 1, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(14, 'Distinctio.', 'Quod dolore asperiores est ex voluptas. Iusto autem reiciendis debitis possimus sit consequuntur. Distinctio voluptatem ut rerum laudantium aspernatur placeat aut. Cupiditate corporis explicabo sunt qui perferendis deleniti ratione.', 5, 1, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(15, 'Quia.', 'Itaque sit iure ipsa cupiditate accusamus soluta rem quia. Debitis expedita impedit quae inventore et. Ab consequatur ad corrupti enim inventore ut.', 1, 0, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(16, 'In.', 'Vero unde eaque praesentium optio impedit at nisi. Nobis iste non porro aut temporibus delectus fugiat. Repellendus debitis est dolor a nesciunt praesentium. Enim molestiae perferendis tempora cumque ipsa ut tenetur aut.', 4, 0, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(17, 'Sed non.', 'Molestias doloremque quis quis alias. Beatae voluptates aut rerum cupiditate odit. Omnis aliquid consequuntur rerum rerum. Dolorum iure excepturi non voluptatum et ipsam porro.', 6, 0, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(18, 'Sit.', 'Voluptates dolorem officia dicta. Deserunt sit dolor nemo eos aut iste doloremque. Nisi voluptatibus vero laborum occaecati beatae esse pariatur. Dolorem deleniti quaerat perspiciatis est voluptas et.', 5, 0, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(19, 'Omnis deserunt.', 'Qui et iste dignissimos aut eaque. Impedit quisquam commodi illum et occaecati quisquam et. Quasi minima laborum molestiae et dolor. Quae sit fugit ut minima laborum minus.', 2, 0, '2023-11-04 03:17:41', '2023-11-04 03:17:41'),
(20, 'Voluptas labore.', 'Commodi vel sit asperiores. Maiores porro nostrum error eum vel aut. Et rem perspiciatis in tenetur. Ea voluptatem quasi excepturi.', 1, 0, '2023-11-04 03:17:41', '2023-11-04 03:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Rosario Collins', 'austen21@example.net', '2023-11-04 02:56:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CYpHPDPn2N', '2023-11-04 02:56:19', '2023-11-04 02:56:19'),
(2, 'Miss Lora Waelchi PhD', 'talon43@example.com', '2023-11-04 02:56:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UA7YTBeKt2', '2023-11-04 02:56:19', '2023-11-04 02:56:19'),
(3, 'Sidney Ryan', 'roel.batz@example.org', '2023-11-04 02:56:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LmCB1e7fVH', '2023-11-04 02:56:19', '2023-11-04 02:56:19'),
(4, 'Miss Penelope Prosacco', 'nkub@example.org', '2023-11-04 02:56:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3tL6pQXg5p', '2023-11-04 02:56:19', '2023-11-04 02:56:19'),
(5, 'Destiney Runolfsson', 'diamond.zulauf@example.net', '2023-11-04 02:56:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wmgTRYf8fO', '2023-11-04 02:56:19', '2023-11-04 02:56:19'),
(6, 'Joan Parker', 'rrunolfsdottir@example.net', '2023-11-04 02:56:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZkYbdcY0QP', '2023-11-04 02:56:19', '2023-11-04 02:56:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
