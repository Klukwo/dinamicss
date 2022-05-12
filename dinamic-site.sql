-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 12 2022 г., 05:23
-- Версия сервера: 8.0.28
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dinamic-site`
--
CREATE DATABASE IF NOT EXISTS `dinamic-site` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dinamic-site`;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `page` int NOT NULL,
  `email` varchar(110) NOT NULL,
  `comment` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `status`, `page`, `email`, `comment`, `created_date`) VALUES
(2, 1, 27, 'ahdepc88@gmail.com', '<p>. At erat pellentesque adipiscing commodo elit at. Consectetur a erat nam at lectus urna duis convallis. Rhoncus est pellentesque elit ullamcorper dignissim. Non nisi est sit amet facilisis. Tellus orci ac auctor augue mauris augue neque gravida. Ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Mattis enim ut tellus elementum sagittis vitae et. Nec tincidunt praes</p>', '2021-05-27 21:17:42'),
(3, 1, 26, 'ah@gmail.com', 'Уже сейчас разработчики ExRay видят несколько сценариев использования аппарата в замкнутых затопленных пространствах:', '2021-05-27 21:21:40'),
(6, 1, 24, 'test22@gmail.com', '<p>В сети много руководств по PostgreSQL, которые описывают основные команды. Но при погружении глубже в работу возникают такие практические вопросы, для которых требуются продвинутые ко</p>', '2021-05-27 21:27:57'),
(7, 1, 24, 'test22@gmail.com', 'В сети много руководств по PostgreSQL, которые описывают основные команды. Но при погружении глубже в работу возникают такие практические вопросы, для которых требуются продвинутые ко', '2021-05-29 09:23:29'),
(8, 1, 20, 'test22@gmail.com', '<p>Мой блог - это блог сделаннный с целью обучения аудитории на платформе YouTube и заработка доволнительной карм</p><p>22222222</p>', '2021-05-29 09:23:49'),
(10, 1, 22, 'ahdepc88@gmail.com', 'Мой блог - это блог сделаннный с целью обучения аудитории на платформе YouTube и заработка доволнительной кармы))', '2021-05-29 12:05:27'),
(11, 1, 20, 'test11@gmail.com', '<p>Мой блог - это блог сделаннный с целью обучения аудитории на платформе YouTube и заработка доволнительной кар</p>', '2021-05-29 12:06:49'),
(12, 0, 20, 'test11@gmail.com', 'Мой блог - это блог сделаннный с целью обучения аудитории на платформе YouTube и заработка доволнительной кар', '2021-05-29 12:07:13'),
(13, 0, 20, 'test11@gmail.com', 'Мой блог - это блог сделаннный с целью обучения аудитории на платформе YouTube и заработка доволнительной кар', '2021-05-29 12:07:41'),
(14, 0, 20, 'test11@gmail.com', 'Мой блог - это блог сделаннный с целью обучения аудитории на платформе YouTube и заработка доволнительной кар', '2021-05-29 12:07:44');

-- --------------------------------------------------------

--
-- Структура таблицы `doc`
--

CREATE TABLE `doc` (
  `id` int NOT NULL,
  `title` varchar(125) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `doc`
--

INSERT INTO `doc` (`id`, `title`, `content`, `created`) VALUES
(1, 'Диванный эксперт', '<p>фцв цв цв</p><h1>ЦВ ФЦв Ф Цв</h1><p>&nbsp;</p><p>Цв Цв ФЦв&nbsp;</p><ul><li>фцвфцв</li><li>фцвфцв</li><li>фцвфцв</li></ul><p>фцвфцвфцвфв</p><ol><li>фцвф</li><li>фцвфцв<ol><li>вцв</li><li>фвфыв</li></ol></li><li>фывфыв</li><li>&nbsp;</li></ol>', '2021-04-26 19:39:46'),
(2, 'фыйцйцвйвйв', '<p>фыыйыс</p>', '2021-04-26 19:40:42'),
(3, 'Третья документация', '<h2>Основы третеье йдокументации</h2><p>Это обычный параграфф</p><ul><li>Это просто список</li><li>второй пункт списка<ul><li>подсписок</li><li>подсписок-2</li></ul></li></ul>', '2021-04-26 20:07:19'),
(4, 'AndreiTest', '<p>аукп ука ука укп</p>', '2021-04-26 20:07:51');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint NOT NULL,
  `id_topic` int DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `id_user`, `title`, `img`, `content`, `status`, `id_topic`, `created_date`) VALUES
(22, 53, 'Карьера в Ак Барс Банке', '1652275269_31p.jpg', '<h2><strong>У&nbsp;нас хорошо</strong></h2><p>&nbsp;</p><p><strong>Заботимся о&nbsp;клиентах и&nbsp;сотрудниках</strong></p><p>&nbsp;</p><p>Вместе мы&nbsp;создаем «банк решений для жизни». Помогаем клиентам повысить качество жизни, построить бизнес с&nbsp;нашими решениями. Мы настраиваем рабочие процессы, создаем, тестируем, отбираем продукты, поддерживаем инициативы и&nbsp;развитие сотрудников.</p><p><strong>Поддерживаем стремление к&nbsp;развитию</strong></p><p>&nbsp;</p><p>Наш банк открыт профессионалам со&nbsp;всей России. Наши сотрудники развивают деловые компетенции, получают опыт в решении уникальных задач. Проходят очное и&nbsp;дистанционное обучение, перемещаются между проектными командами.</p><p><strong>Постоянно меняемся к&nbsp;лучшему</strong></p><p>&nbsp;</p><p>Мы&nbsp;находимся на&nbsp;этапе стремительного развития современных банковских технологий. Это ежедневный вызов, который требует решения нестандартных задач и&nbsp;готовности к&nbsp;переменам. Изменения&nbsp;— это наша среда, а&nbsp;положительные изменения&nbsp;— культура нашего банка.</p>', 1, 16, '2021-05-05 21:07:26'),
(28, 53, 'Корпоративный университет', '1652272591_2.jpg', '<p>тест тест тест</p>', 1, 18, '2022-05-11 15:36:31'),
(29, 53, 'Нужен чел для работы с клиентами', '1652274587_31p.jpg', '<p>наши условия хз х з хз х хзх зх хз&nbsp;</p>', 1, 16, '2022-05-11 16:09:13');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int NOT NULL,
  `name` varchar(121) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(16, 'Работа в офисе', 'Ищем разработчиков, дизайнеров, специалистов по QA, архитекторов, маркетологов, менеджеров по продукту, проектных руководителей и специалистов технической поддержки.'),
(17, 'Работа с клиентами', 'Приглашаем специалистов по обслуживанию клиентов, персональных менеджеров, менеджеров по продаже банковских продуктов, руководителей офисов продаж.'),
(18, 'Top topics', 'Категория для вывода статей в горизонтальное слайдшоу на главной странице.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `admin` tinyint NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created`) VALUES
(50, 1, 'Andrei', 'pc88@gmail.com', '$2y$10$mkpLBHXIXJbVcy3N/NJdieHK.JWezPbul4VeMh/malzOO/Ug9IKf2', '2021-05-05 18:04:34'),
(51, 1, 'test', 'ah@gmail.com', '$2y$10$bsx9bl2pS0sNvBDXLI5ksOyHd8CiXU54FhSNyrevwHksMPB.aistG', '2021-05-17 16:16:41'),
(52, 0, 'Test22', 'test22@gmail.com', '$2y$10$QnMnaL.Uzbi77Y3XaFA1MeofmCh8M31fMCvahekLt0dPBP7twpeq2', '2021-05-27 18:23:26'),
(53, 1, 'admin', 'admin@mail.ru', '$2y$10$/AEOQ1jjEhTDSsLvBq4W8OM9S8Vp3SM/6Umo33yLRe7DvR.M.MuQK', '2022-05-10 19:57:23');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`id_topic`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
