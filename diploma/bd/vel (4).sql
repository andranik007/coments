-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 01 2024 г., 14:30
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` int(255) NOT NULL,
  `name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'STELS'),
(2, 'STARK'),
(3, 'DEWOLF'),
(4, 'SHULZ'),
(5, 'ORBEA');

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `price` decimal(65,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `price`) VALUES
(28, '14', '19', 11, NULL),
(29, '14', '20', 3, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Хиты'),
(2, 'Новинки'),
(3, 'Советуем'),
(4, 'Распродажа');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `product_id` int(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `comment_text` text DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `user_id`, `comment_text`, `created_at`) VALUES
(2, 20, '14', '123123', '2024-03-01 12:18:56.181560'),
(3, 20, '14', '1231', '2024-03-01 12:20:41.852739'),
(4, 20, '14', 'йцу', '2024-03-01 12:47:13.606540'),
(5, 20, '', '123', '2024-03-01 12:48:40.660655'),
(6, 20, '', '123', '2024-03-01 12:48:45.636893'),
(7, 20, '14', '123', '2024-03-01 12:49:58.436544'),
(8, 20, '14', '123123', '2024-03-01 12:51:49.335659'),
(9, 20, '14', '123', '2024-03-01 12:55:19.479557'),
(10, 20, '14', '123123', '2024-03-01 12:57:01.957460'),
(11, 20, '14', '123123', '2024-03-01 12:57:28.791090'),
(12, 20, '14', '1231', '2024-03-01 12:58:10.179798'),
(13, 20, '14', '1231', '2024-03-01 12:59:32.749424'),
(14, 20, '14', 'вйцвйцвйвй', '2024-03-01 13:00:04.557872'),
(15, 20, '14', '123123', '2024-03-01 13:01:34.586236'),
(16, 19, '14', '1231', '2024-03-01 13:02:09.300780'),
(17, 20, '14', 'вйцвйцвй', '2024-03-01 13:02:31.618825'),
(18, 19, '14', 'вйцвй', '2024-03-01 13:02:40.691328'),
(19, 20, '14', '123', '2024-03-01 13:22:20.095246'),
(20, 20, '14', '312', '2024-03-01 13:22:33.424791');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(500) DEFAULT NULL,
  `category_id` varchar(255) NOT NULL,
  `brand_id` varchar(255) NOT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `brand_id`, `img`) VALUES
(19, '123', '123', '123', 'Советуем', 'ORBEA', 'uploads/4296.750@2x.jpg'),
(20, 'Велосипед Talisman 16\" Z010 Синий 11', 'Детские велосипеды от 3 до 6 лет с диаметром колёс 16-18 дюймов — это огромная коллекция ярких, надежных, безопасных моделей авторитетных брендов, которые наш интернет-магазин предлагает на выгодных условиях. Велосипед Stels Talisman 16 Z010 — образец сов', '5519', 'Хиты', 'STELS', 'uploads/1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `user` int(11) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`user`, `admin`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `login` varchar(500) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`, `role`, `avatar`) VALUES
(4, 'andranik007', 'andran123n665@gmail.com', '$2y$10$JXf9EWNFtV8popF4q8F6C.5IOfJ5Rumb0LHVvfXgDvqwAIDSyHx7m', 'ADMIN', NULL),
(14, 'Дуэйн Джонсон', 'DwayneJohnson@gmail.com', '$2y$10$B8cUouC.bQKqnGX6BKKt6uir3eCVTdcoWBY8vwDyL6X979oobsYsK', 'USER', 'uploads/65dc8ade5fd90_Без названия.jfif');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
