-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 03:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lunch and Dinner', 1, '2023-09-29 12:54:53', '2023-09-29 12:54:53'),
(2, 1, 'Dinner', 0, '2023-09-29 12:54:53', '2023-09-29 12:54:53'),
(3, 1, 'Lunch', 0, '2023-09-29 12:54:53', '2023-09-29 12:54:53'),
(4, 1, 'breakfast', 0, '2023-09-29 12:54:53', '2023-09-29 12:54:53'),
(5, 2, 'year', 0, '2023-09-29 12:55:43', '2023-09-29 12:55:43'),
(6, 2, 'yesterday', 0, '2023-09-29 12:55:43', '2023-09-29 12:55:43'),
(7, 2, 'mounth', 0, '2023-09-29 12:55:43', '2023-09-29 12:55:43'),
(8, 2, 'Tomorrow', 1, '2023-09-29 12:55:43', '2023-09-29 12:55:43'),
(9, 3, 'mirror', 0, '2023-09-29 12:56:26', '2023-09-29 12:56:26'),
(10, 3, 'A towel', 1, '2023-09-29 12:56:26', '2023-09-29 12:56:26'),
(11, 3, 'Giza.', 0, '2023-09-29 12:56:26', '2023-09-29 12:56:26'),
(12, 3, '60', 0, '2023-09-29 12:56:26', '2023-09-29 12:56:26'),
(13, 4, 'fell off', 0, '2023-09-29 12:57:13', '2023-09-29 12:57:13'),
(14, 4, 'bottom', 0, '2023-09-29 12:57:13', '2023-09-29 12:57:13'),
(15, 4, 'Your age', 1, '2023-09-29 12:57:13', '2023-09-29 12:57:13'),
(16, 4, 'step', 0, '2023-09-29 12:57:13', '2023-09-29 12:57:13'),
(21, 6, 'canada', 0, '2023-09-29 12:59:17', '2023-09-29 12:59:17'),
(22, 6, 'spain', 0, '2023-09-29 12:59:17', '2023-09-29 12:59:17'),
(23, 6, 'France', 1, '2023-09-29 12:59:17', '2023-09-29 12:59:17'),
(24, 6, 'UK', 0, '2023-09-29 12:59:17', '2023-09-29 12:59:17'),
(25, 5, '19 players', 0, '2023-09-29 12:59:27', '2023-09-29 12:59:27'),
(26, 5, '9 players', 1, '2023-09-29 12:59:27', '2023-09-29 12:59:27'),
(27, 5, '90 players', 0, '2023-09-29 12:59:27', '2023-09-29 12:59:27'),
(28, 5, '30 players', 0, '2023-09-29 12:59:27', '2023-09-29 12:59:27'),
(29, 7, 'formula1', 0, '2023-09-29 13:00:09', '2023-09-29 13:00:09'),
(30, 7, 'race', 0, '2023-09-29 13:00:09', '2023-09-29 13:00:09'),
(31, 7, 'baseball', 0, '2023-09-29 13:00:09', '2023-09-29 13:00:09'),
(32, 7, 'Soccer', 1, '2023-09-29 13:00:09', '2023-09-29 13:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_09_20_131453_create_quizzes_table', 1),
(6, '2023_09_20_131523_create_questions_table', 1),
(7, '2023_09_20_131558_create_answers_table', 1),
(8, '2023_09_20_131804_create_quiz_user_table', 1),
(9, '2023_09_20_132851_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 'What are two things you can never eat for breakfast?', 1, '2023-09-29 12:54:53', '2023-09-29 12:54:53'),
(2, 'What is always coming but never arrives?', 1, '2023-09-29 12:55:43', '2023-09-29 12:55:43'),
(3, 'What gets wetter the more it dries?', 1, '2023-09-29 12:56:26', '2023-09-29 12:56:26'),
(4, 'What goes up but never ever comes down?', 1, '2023-09-29 12:57:13', '2023-09-29 12:57:13'),
(5, 'How many players are there on a baseball team?', 2, '2023-09-29 12:58:45', '2023-09-29 12:59:27'),
(6, 'Which country won the World Cup 2018?', 2, '2023-09-29 12:59:17', '2023-09-29 12:59:17'),
(7, 'What sport is considered the “king of sports”?', 2, '2023-09-29 13:00:09', '2023-09-29 13:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minutes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `minutes`, `created_at`, `updated_at`) VALUES
(1, 'Trick Quiz', 'Trick Quiz Description', 15, '2023-09-29 12:54:12', '2023-09-29 12:54:12'),
(2, 'Sports Quiz', 'Sports Quiz Description', 10, '2023-09-29 12:57:59', '2023-09-29 12:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`id`, `quiz_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `question_id`, `quiz_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, '2023-09-29 13:05:51', '2023-09-29 13:05:51'),
(2, 2, 2, 1, 8, '2023-09-29 13:05:54', '2023-09-29 13:05:54'),
(3, 2, 3, 1, 10, '2023-09-29 13:05:59', '2023-09-29 13:05:59'),
(4, 2, 4, 1, 13, '2023-09-29 13:06:04', '2023-09-29 13:06:04'),
(5, 2, 0, 2, 0, '2023-09-29 13:06:14', '2023-09-29 13:06:14'),
(6, 2, 6, 2, 23, '2023-09-29 13:06:18', '2023-09-29 13:06:18'),
(7, 2, 7, 2, 32, '2023-09-29 13:06:22', '2023-09-29 13:06:22'),
(18, 3, 1, 1, 1, '2023-09-30 10:35:26', '2023-09-30 10:35:26'),
(19, 3, 2, 1, 8, '2023-09-30 10:35:28', '2023-09-30 10:35:28'),
(20, 3, 3, 1, 12, '2023-09-30 10:35:30', '2023-09-30 10:35:30'),
(21, 3, 4, 1, 15, '2023-09-30 10:35:34', '2023-09-30 10:35:34'),
(22, 3, 5, 2, 26, '2023-09-30 10:40:57', '2023-09-30 10:40:57'),
(23, 3, 6, 2, 23, '2023-09-30 10:40:58', '2023-09-30 10:40:58'),
(24, 3, 7, 2, 31, '2023-09-30 10:41:02', '2023-09-30 10:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `visible_password` varchar(255) NOT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `visible_password`, `occupation`, `address`, `phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin123@gmail.com', '2023-09-29 12:37:49', '$2y$10$SrYzt8ZHOvg2Z0xGER6p0uR3LE//eGlye/EwlaaQj3idDhju36T0i', 'password', 'CEO', 'Jeddah', '03453494', 1, NULL, '2023-09-29 12:37:49', '2023-09-29 12:37:49'),
(2, 'Mohammed tuaymah', '7mmood0@gmail.com', NULL, '$2y$10$38r0bkJrPdX..1Fd85SrweTpnR999w0jBloqkPu9YQeQN7jnUDtVK', '123456789', 'software eng', 'Jeddah', '+966504737219', 0, NULL, '2023-09-29 13:01:08', '2023-09-29 13:05:02'),
(3, 'ahmed', 'ahmed@gmail.com', NULL, '$2y$10$fT2UlF1ROy73.z8ntUVa..1TW76toa6gIQk.BBklnYVZJU45pHcsS', '123456789', 'eng', 'safa', '0507788996', 0, NULL, '2023-09-29 13:02:03', '2023-09-29 13:40:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_user`
--
ALTER TABLE `quiz_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
