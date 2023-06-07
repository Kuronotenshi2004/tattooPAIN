-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 29 2023 г., 10:00
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
-- База данных: `tattoo_DB`
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
(3, 'Наталья', 'Наталья - просто хороший человек', 'img/download/16851722561654142324_46-o-tendencii-com-p-devushka-v-tatu-salone-foto-50.jpg', '2023-05-25 05:17:39', '2023-05-29 03:55:31'),
(6, 'Гоша', 'Ну кляксу набью зато дёшево', 'img/download/16851723671642520258_15-o-tendencii-com-p-tatu-ot-plecha-do-plecha-foto-15.jpg', '2023-05-25 05:31:30', '2023-05-27 04:26:07'),
(10, 'Соня', 'Очень опытный мастер.', 'img/download/16851724261654137987_8-o-tendencii-com-p-tatu-master-devushka-foto-8333.jpg', '2023-05-27 03:14:34', '2023-05-27 04:27:06');

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
(6, 3, 'img/download/16851723229ab076ec11dd1e2f14bd4e75ed69952d.jpg', '2023-05-27 04:25:22', '2023-05-27 04:25:22'),
(7, 3, 'img/download/16851723221c408ea0380f22da547d.jpg', '2023-05-27 04:25:22', '2023-05-27 04:25:22'),
(8, 3, 'img/download/16851723225Oz-tzmxWHM.jpg', '2023-05-27 04:25:22', '2023-05-27 04:25:22'),
(9, 10, 'img/download/1685172519865d5c10b41ffa6116b24a493c035557.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(10, 10, 'img/download/1685172519458188084ec959df41e7d3091a5c50b4.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(11, 10, 'img/download/168517251971f5e9dfa6063d2e1199241ee00f4d18.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(12, 10, 'img/download/1685172519587612df2bf7810a9de0d8cb39a82204.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39'),
(13, 10, 'img/download/1685172519edac6e14a780ffde94bb43bb3735b45c.jpg', '2023-05-27 04:28:39', '2023-05-27 04:28:39');

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
(3, 'App\\Models\\User', 1, 'user_token', '1691a246b954beda6fdec1865ced46dfecf76a6751b98129969420897d8daaad', '[\"*\"]', '2023-05-29 03:55:32', NULL, '2023-05-26 09:47:31', '2023-05-29 03:55:32');

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
(3, 'user', 'user@gmail.com', 'Рука', 10, 'йкуапитмт', './img/download/request/1684072300image 92.png', 1, 'Странное описание, позвоните и мы вам всё уточним.', '2023-05-14 10:51:40', '2023-05-26 09:19:40'),
(4, 'user', 'user@gmail.com', 'Нога', 12312, '12312312312', './img/download/request/16851051766914_logo.jpg', 0, NULL, '2023-05-26 09:46:16', '2023-05-26 09:46:16'),
(5, 'user', 'user@gmail.com', '123', 123, '12321', './img/download/request/1685105227ма-енькая-евочка-в-зе-еном-остижении-60925467.jpg', 0, NULL, '2023-05-26 09:47:07', '2023-05-26 09:47:07');

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
(2, 'user', 'user@gmail.com', NULL, 'ee11cbb19052e40b07aac0ca060c23ee', NULL, NULL, NULL, '2023-05-10 04:28:15', '2023-05-29 03:55:02'),
(3, 'user2', 'user2@gmail.com', NULL, '7e58d63b60197ceb55a1c487989a3720', NULL, NULL, NULL, '2023-05-12 11:57:45', '2023-05-15 08:29:16');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `master_imgs`
--
ALTER TABLE `master_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
