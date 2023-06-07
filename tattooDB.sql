-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 06 2023 г., 21:16
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tattooDB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `examples`
--

CREATE TABLE `examples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_masters` bigint(20) UNSIGNED NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `masters`
--

CREATE TABLE `masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `masters`
--

INSERT INTO `masters` (`id`, `name`, `description`, `img`, `created_at`, `updated_at`) VALUES
(10, 'Соня', 'Опыта больше, чем татуировок', 'img/download/16860752891654142324_46-o-tendencii-com-p-devushka-v-tatu-salone-foto-50.jpg', '2023-05-27 03:14:34', '2023-06-06 15:14:49'),
(11, 'Ольга', '10 лет в профессии. Опытный мастер с золотым сердцем. Подует и поцелует', 'img/download/16860752171654137987_8-o-tendencii-com-p-tatu-master-devushka-foto-8333.jpg', '2023-06-06 15:13:37', '2023-06-06 15:13:37');

-- --------------------------------------------------------

--
-- Структура таблицы `master_imgs`
--

CREATE TABLE `master_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` bigint(20) UNSIGNED NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `master_imgs`
--

INSERT INTO `master_imgs` (`id`, `master_id`, `img`, `created_at`, `updated_at`) VALUES
(9, 10, 'img/download/1685172519865d5c10b41ffa6116b24a493c035557.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(10, 10, 'img/download/1685172519458188084ec959df41e7d3091a5c50b4.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(11, 10, 'img/download/168517251971f5e9dfa6063d2e1199241ee00f4d18.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(12, 10, 'img/download/1685172519587612df2bf7810a9de0d8cb39a82204.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(13, 10, 'img/download/1685172519edac6e14a780ffde94bb43bb3735b45c.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(14, 11, 'img/download/168607521758e758766228078aa7874b183d4900a1.jpg', '2023-06-06 15:13:37', '2023-06-06 15:13:37'),
(15, 11, 'img/download/168607521743bf4a9666247d895a73adfcb15a6f12.jpg', '2023-06-06 15:13:37', '2023-06-06 15:13:37'),
(16, 11, 'img/download/1686075218d3600151c443901c45fd3c440bdbffb7.jpg', '2023-06-06 15:13:38', '2023-06-06 15:13:38'),
(17, 11, 'img/download/16860752185Oz-tzmxWHM.jpg', '2023-06-06 15:13:38', '2023-06-06 15:13:38');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_05_10_082303_create_masters_table', 2),
(13, '2023_05_10_082313_create_requests_table', 2),
(14, '2023_05_10_083557_create_examples_table', 2),
(15, '2023_05_25_085007_create_master_imgs_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(16, 'App\\Models\\User', 1, 'user_token', '1769e07fb35147f3326aa315272b35d4e21445d090a77f59038c99b9edce59fa', '[\"*\"]', '2023-06-06 15:15:54', NULL, '2023-06-06 15:11:52', '2023-06-06 15:15:54');

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partOfBody` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `master` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `partOfBody`, `size`, `description`, `img`, `status`, `master`, `created_at`, `updated_at`) VALUES
(4, 'user', 'user@gmail.com', 'Нога', 12312, '12312312312', './img/download/request/16851051766914_logo.jpg', 0, NULL, '2023-05-26 09:46:16', '2023-05-26 09:46:16'),
(8, 'user2', 'user2@gmail.com', 'предплечье', 20, 'Очень хотелось бы набить ее в июне', './img/download/request/1686074767ff1efd13692e04fa7a659f37f0ad546c.jpg', 1, 'конечно, запись на 20 июня в 18:00. Если возникнут вопросы - позвоните по телефону, указанному на сайте', '2023-06-06 15:06:07', '2023-06-06 15:07:54');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `ban`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '21232f297a57a5a743894a0e4a801fc3', '1', NULL, NULL, '2023-05-10 04:15:24', '2023-05-10 04:15:24'),
(2, 'user', 'user@gmail.com', NULL, 'ee11cbb19052e40b07aac0ca060c23ee', NULL, 1, NULL, '2023-05-10 04:28:15', '2023-06-02 03:05:10'),
(3, 'user2', 'user2@gmail.com', NULL, '7e58d63b60197ceb55a1c487989a3720', NULL, NULL, NULL, '2023-05-12 11:57:45', '2023-06-06 15:15:54'),
(4, 'user3', 'user3@mail.ru', NULL, '92877af70a45fd6a2ed7fe81e1236b78', NULL, NULL, NULL, '2023-06-06 15:09:45', '2023-06-06 15:09:45');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `examples`
--
ALTER TABLE `examples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examples_id_masters_foreign` (`id_masters`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `master_imgs`
--
ALTER TABLE `master_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_imgs_master_id_foreign` (`master_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `examples`
--
ALTER TABLE `examples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `masters`
--
ALTER TABLE `masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `master_imgs`
--
ALTER TABLE `master_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `examples`
--
ALTER TABLE `examples`
  ADD CONSTRAINT `examples_id_masters_foreign` FOREIGN KEY (`id_masters`) REFERENCES `masters` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `master_imgs`
--
ALTER TABLE `master_imgs`
  ADD CONSTRAINT `master_imgs_master_id_foreign` FOREIGN KEY (`master_id`) REFERENCES `masters` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
