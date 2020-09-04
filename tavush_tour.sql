-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 20 2020 г., 16:44
-- Версия сервера: 10.4.13-MariaDB
-- Версия PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tavush_tour`
--

-- --------------------------------------------------------

--
-- Структура таблицы `guides`
--

CREATE TABLE `guides` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PRICE` varchar(45) DEFAULT NULL,
  `SRC` varchar(80) NOT NULL,
  `GOTO` varchar(45) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `guides`
--

INSERT INTO `guides` (`ID`, `NAME`, `PRICE`, `SRC`, `GOTO`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Stepan Zoryan', '40000', 'static/images/packages/guid1.jpg', '#', '2020-08-18 13:50:16', '2020-08-18 13:50:16'),
(2, 'Hrant Matevosyan ', '30000', 'static/images/packages/guid2.jpg', '#', '2020-08-18 13:50:53', '2020-08-18 13:50:53'),
(3, 'Tsovinar Artsruni ', '52000', 'static/images/packages/guid3.jpg', '#', '2020-08-18 13:51:20', '2020-08-18 13:51:20'),
(4, 'Sero Xanzadyan', '29000', 'static/images/packages/guid4.jpg', '#', '2020-08-18 13:51:53', '2020-08-18 13:51:53'),
(5, 'Mariam Stepanyan', '42000', 'static/images/packages/guid5.jpg', '#', '2020-08-18 13:52:18', '2020-08-18 13:52:18'),
(6, 'Sevada Isayan', '72000', 'static/images/packages/guid6.jpg', '#', '2020-08-18 13:52:50', '2020-08-18 13:52:50');

-- --------------------------------------------------------

--
-- Структура таблицы `header`
--

CREATE TABLE `header` (
  `ID` int(11) NOT NULL,
  `HEADER_CONTENT` varchar(100) NOT NULL,
  `IMAGE_SRC` varchar(100) NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `header`
--

INSERT INTO `header` (`ID`, `HEADER_CONTENT`, `IMAGE_SRC`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Explore the Beauty of the Beautiful Tavush', 'static/images/destinations/header.jpg', '2020-08-18 18:14:57', '2020-08-18 18:14:57');

-- --------------------------------------------------------

--
-- Структура таблицы `hotels`
--

CREATE TABLE `hotels` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PRICE` varchar(45) DEFAULT NULL,
  `MAP` text DEFAULT NULL,
  `GOTO` text DEFAULT NULL,
  `SRC` varchar(70) NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hotels`
--

INSERT INTO `hotels` (`ID`, `NAME`, `PRICE`, `MAP`, `GOTO`, `SRC`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Vanatun Hotel', '֏17000', 'https://www.google.com/maps/place/Vanatun+Monastery+Stay/@40.8024811,44.8872348,15.97z/data=!4m8!3m7!1s0x0:0xd79e0817c62b1a76!5m2!4m1!1i2!8m2!3d40.801171!4d44.888705', 'http://vanatun.am/', 'static/images/packages/hotel1.jpg', '2020-08-17 10:04:30', '2020-08-18 08:05:45'),
(2, 'Best Western', '֏26000', 'https://www.google.com/maps/place/Best+Western+Plus+Paradise+Hotel+Dilijan/@40.7010623,44.8465146,14.95z/data=!4m15!1m6!2m5!1sBest+West.+P.+Par.+Hotel+Dilijan!5m3!5m2!4m1!1i2!3m7!1s0x0:0x1ee210ec711d0d90!5m2!4m1!1i2!8m2!3d40.6976406!4d44.8503971', 'https://www.bestwestern.com/en_US/book/hotels-in-dilijan/best-western-plus-paradise-hotel-dilijan/propertyCode.77704.html', 'static/images/packages/hotel2.jpg', '2020-08-17 10:23:12', '2020-08-18 08:06:06'),
(3, 'Aghbalyan\'s Old House', '֏10000', 'https://www.google.com/maps/place/Aghbalyans+Old+House/@40.9894086,45.1412618,15z/data=!4m5!3m4!1s0x0:0x81e79e90be8f48b3!8m2!3d40.9894086!4d45.1412618', 'https://www.facebook.com/aghbalyansoldhouse/', 'static/images/packages/hotel3a.jpg', '2020-08-17 10:27:09', '2020-08-18 08:06:27'),
(4, 'Old Dilijan Hotel', '֏20000', 'https://www.google.com/maps/place/Tufenkian+Old+Dilijan+Complex/@40.739372,44.8668233,17z/data=!3m1!4b1!4m8!3m7!1s0x4041ad2bcd7d862f:0x636ffedc35a269e6!5m2!4m1!1i2!8m2!3d40.739372!4d44.869012', 'https://tufenkianheritage.com/en/accommodation/old-dilijan-complex/', 'static/images/packages/hotel4.jpg', '2020-08-17 10:31:20', '2020-08-18 08:07:03'),
(6, 'Lastiver Resort', '֏41000', 'https://www.google.com/maps/place/Lastiver+Resort/@40.911513,45.103349,17z/data=!3m1!4b1!4m8!3m7!1s0x4041032e4883bd8f:0x89c5d8f25ea372a9!5m2!4m1!1i2!8m2!3d40.911513!4d45.1055377', 'http://lastiver.am/', 'static/images/packages/hotel5.jpg', '2020-08-17 10:34:41', '2020-08-18 08:07:27'),
(7, 'Diligence Hotel', '֏26000', 'https://www.google.com/maps/place/Diligence+Hotel/@40.753383,44.8768313,17z/data=!3m1!4b1!4m8!3m7!1s0x4041ad2a4bde4411:0xc7f589828ad9406c!5m2!4m1!1i2!8m2!3d40.753383!4d44.87902', 'https://hoteldiligence.am/', 'static/images/packages/hotel6.jpg', '2020-08-17 10:34:41', '2020-08-18 08:07:53');

-- --------------------------------------------------------

--
-- Структура таблицы `latest_news`
--

CREATE TABLE `latest_news` (
  `ID` int(11) NOT NULL,
  `SRC` varchar(80) NOT NULL,
  `TITLE` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(60) DEFAULT NULL,
  `SHORT_DESC` text NOT NULL,
  `READ_MORE` varchar(45) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `latest_news`
--

INSERT INTO `latest_news` (`ID`, `SRC`, `TITLE`, `DESCRIPTION`, `SHORT_DESC`, `READ_MORE`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'static/images/blog/t2.jpg', 'One Way Tour ', 'Ijevan Dendropark was founded in 1962. There are nearly 650 ', 'Ijevan Dendropark, Makaravank, Tsrviz, Vardan Mamikonyan\\\'s tree', 'https://onewaytour.com/regular-daily-tours/ij', '2020-08-18 11:02:23', '2020-08-18 11:02:23'),
(2, 'static/images/blog/t1.jpg', 'Daily Tour To Tavoush Province ', 'During this single day, we\\\'ll try to discover the gems hidd', 'Haghartsin - Srvegh monastery - Tsrviz monastery - Makaravank', 'https://armeniadiscovery.com/en/discovery-tou', '2020-08-18 11:02:23', '2020-08-18 11:02:23'),
(3, 'static/images/blog/t3.jpg', 'One Way Tour ', 'Lake Parz is situated at 1334 meters above sea level and is ', 'Lake Parz', 'https://onewaytour.com/sights-of-armenia/lake', '2020-08-18 11:02:23', '2020-08-18 11:02:23');

-- --------------------------------------------------------

--
-- Структура таблицы `main_destinations`
--

CREATE TABLE `main_destinations` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `SRC` varchar(100) NOT NULL,
  `WIDTH` varchar(32) NOT NULL,
  `HEIGHT` varchar(32) NOT NULL,
  `CLASS` varchar(64) NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main_destinations`
--

INSERT INTO `main_destinations` (`ID`, `TITLE`, `DESCRIPTION`, `SRC`, `WIDTH`, `HEIGHT`, `CLASS`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Haghartsin', 'It was built in 10-13 centuries', 'static/images/destinations/hagharcin.jpg', '570px', '320px', 'col-md-6', '2020-08-17 13:51:04', '2020-08-17 13:51:04'),
(2, 'Makaravanq', '13.5 X 9 m medium size building', 'static/images/destinations/makaravanq.jpg', '570px', '320px', 'col-md-6', '2020-08-17 14:40:44', '2020-08-17 14:40:44'),
(3, 'Lastiver', NULL, 'static/images/destinations/lastiver.jpg', '', '240px', 'col-md-4', '2020-08-17 14:44:58', '2020-08-18 12:13:56'),
(4, 'Yell Extreme Park', 'The longest zip-line in the world', 'static/images/destinations/yell.jpg', '', '240px', 'col-md-4', '2020-08-17 14:45:40', '2020-08-18 12:14:13'),
(5, 'Kiranc', '13th century monastery', 'static/images/destinations/kiranc.jpg', '', '240px', 'col-md-4', '2020-08-17 14:46:17', '2020-08-18 12:14:22'),
(6, 'Parz Lake', 'It is located in the Dilijan National Park', 'static/images/destinations/parz.jpg', '', '284px', 'col-md-8', '2020-08-17 14:47:00', '2020-08-18 12:14:26');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `HREF` varchar(20) NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`ID`, `NAME`, `HREF`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Destinations', '#gallery', '2020-08-18 18:10:07', '2020-08-18 18:10:07'),
(2, 'Services', '#pack1', '2020-08-18 18:10:07', '2020-08-18 18:10:07'),
(3, 'Gallery', '#spo', '2020-08-18 18:10:07', '2020-08-18 18:10:07'),
(4, 'Blog', '#blog', '2020-08-18 18:10:07', '2020-08-18 18:10:07'),
(6, 'About Us', '#subs_teachers', '2020-08-20 13:35:24', '2020-08-20 13:35:24');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_childes`
--

CREATE TABLE `menu_childes` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `HREF` varchar(20) DEFAULT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_childes`
--

INSERT INTO `menu_childes` (`ID`, `NAME`, `HREF`, `PARENT_ID`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Hotels', '#pack1', 2, '2020-08-18 18:11:47', '2020-08-18 18:11:47'),
(2, 'Resturants', '#pack2', 2, '2020-08-18 18:11:47', '2020-08-18 18:11:47'),
(3, 'Guides', '#pack3', 2, '2020-08-18 18:11:47', '2020-08-18 18:11:47'),
(4, 'Our Instructors', '#subs_teachers', 6, '2020-08-20 13:59:55', '2020-08-20 13:59:55'),
(5, 'Our Team', '#subs', 6, '2020-08-20 14:01:01', '2020-08-20 14:01:01');

-- --------------------------------------------------------

--
-- Структура таблицы `middle_header`
--

CREATE TABLE `middle_header` (
  `ID` int(11) NOT NULL,
  `SRC` varchar(80) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `middle_header`
--

INSERT INTO `middle_header` (`ID`, `SRC`, `DESCRIPTION`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'static/images/destinations/haxarcin_1.jpg', 'Join us and enjoy the beautiful nature of Tavush', '2020-08-18 18:24:17', '2020-08-18 18:24:17');

-- --------------------------------------------------------

--
-- Структура таблицы `our_team`
--

CREATE TABLE `our_team` (
  `ID` int(11) NOT NULL,
  `SRC` varchar(80) NOT NULL,
  `NAME` varchar(70) NOT NULL,
  `CREATED_AT` date NOT NULL,
  `UPDATED_AT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `our_team`
--

INSERT INTO `our_team` (`ID`, `SRC`, `NAME`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'static/gallery/photos/Narek.png', 'Narek Harutyunyan', '2020-08-18', '0000-00-00'),
(2, 'static/gallery/photos/Edward.jpg', 'Edward Blbulyan', '2020-08-18', '0000-00-00'),
(3, 'static/gallery/photos/Arsen.jpg', 'Arsen Adamyan', '0000-00-00', '0000-00-00'),
(4, 'static/gallery/photos/Nare.png', 'Nare Asilbekyan', '0000-00-00', '0000-00-00'),
(5, 'static/gallery/photos/Garik.jpg', 'Garik Amiryan', '0000-00-00', '0000-00-00'),
(6, 'static/gallery/photos/Kamo.jpg', 'Kamo Aghbalyan', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `restaurants`
--

CREATE TABLE `restaurants` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(80) NOT NULL,
  `SRC` varchar(100) NOT NULL,
  `GOTO` text DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `restaurants`
--

INSERT INTO `restaurants` (`ID`, `TITLE`, `SRC`, `GOTO`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Kessab Restaurant', 'static/images/packages/res1.jpg', 'https://m.facebook.com/pg/kessabrestaurant/po', '2020-08-18 14:01:44', '2020-08-18 14:01:44'),
(2, 'Carahunge Restaurant', 'static/images/packages/res2.jpg', 'https://www.tripadvisor.ru/Restaurant_Review-g1160895-d12682469-Reviews-Carahunge_Dilijan-Dilijan_Tavush_Province.html', '2020-08-18 14:01:44', '2020-08-18 14:01:44'),
(3, 'Haykanoush Restaurant', 'static/images/packages/res3.jpg', 'https://www.tripadvisor.com/Restaurant_Review-g1160895-d1735887-Reviews-Haykanoush-Dilijan_Tavush_Province.html', '2020-08-18 14:05:18', '2020-08-18 14:05:18'),
(4, 'Menua Restaurant', 'static/images/packages/res4.jpg', 'https://www.booking.com/hotel/am/menua-resort-ijevan-gandzakar.en-gb.html?aid=356980;label=gog235jc-1DCAsoB0IdbWVudWEtcmVzb3J0LWlqZXZhbi1nYW5kemFrYXJIM1gDaAeIAQGYAQm4ARfIAQzYAQPoAQGIAgGoAgO4AuXltvgFwAIB0gIkZjc2NDY1NjktODAxOS00NmU5LTk5ZWMtNzk3ZDBmZDFhYjEw2AIE4AIB;dist=0&keep_landing=1&sb_price_type=total&type=total&', '2020-08-18 14:05:18', '2020-08-18 14:05:18'),
(5, 'Qarvansara Restaurant', 'static/images/packages/res5.jpg', 'https://www.booking.com/hotel/am/qarvansara-resort-idzhevan.ru.html', '2020-08-18 14:05:18', '2020-08-18 14:05:18'),
(6, 'Ijevanatun Restaurant', 'static/images/packages/res6.jpg', 'https://www.foodyas.com/AM/Ijevan/1420754158249467/Ijevanatun', '2020-08-18 14:05:18', '2020-08-18 14:05:18');

-- --------------------------------------------------------

--
-- Структура таблицы `team_leader`
--

CREATE TABLE `team_leader` (
  `ID` int(5) NOT NULL,
  `SRC` varchar(100) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(20) NOT NULL,
  `CREATED_AT` date NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `team_leader`
--

INSERT INTO `team_leader` (`ID`, `SRC`, `NAME`, `DESCRIPTION`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'static/gallery/photos/Gayane.png', 'Gayane Aslanyan', 'Database Instructor', '0000-00-00', '0000-00-00'),
(2, 'static/gallery/photos/Gor.png', 'Gor Vardevanyan', 'Project Leader', '0000-00-00', '0000-00-00'),
(6, 'static/gallery/photos/Ashot.png', 'Ashot Yeghoyan', 'System Administrator', '0000-00-00', '0000-00-00'),
(7, 'static/gallery/photos/Hrant.png', 'Hrant Hovhannisyan', 'Math Instructor', '2020-08-20', '2020-08-20'),
(8, 'static/gallery/photos/Astxik.png', 'Astghik Simonyan', 'English Instructor', '2020-08-20', '2020-08-20'),
(9, 'static/gallery/photos/Karen.png', 'Karen Achemyan', 'HTML,CSS Instructor', '2020-08-20', '2020-08-20');

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE `videos` (
  `ID` int(11) NOT NULL,
  `PATH` varchar(80) NOT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`ID`, `PATH`, `DESCRIPTION`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'https://www.youtube.com/embed/_O5diBnXxxQ', '\'Dilijan City\'', '2020-08-17 14:48:20', '2020-08-18 17:17:57'),
(3, 'https://www.youtube.com/embed/dlyL47EjyOU', '\'Parz Lich\'', '2020-08-18 12:13:04', '2020-08-18 17:18:17'),
(4, 'https://www.youtube.com/embed/izydMo3cSK0', '\'Lake Gosh\'', '2020-08-18 12:13:04', '2020-08-18 17:18:23'),
(5, 'https://www.youtube.com/embed/Pv4be_yCYhk', '\'Ijevan City\'', '2020-08-18 12:13:04', '2020-08-18 17:18:29'),
(6, 'https://www.youtube.com/embed/aFRZL7c-tFE', '\'Yell Park\'', '2020-08-18 12:13:04', '2020-08-18 17:18:33'),
(7, 'https://www.youtube.com/embed/suT7iO5xXJ0', '\'Yell Extreme Park\'', '2020-08-18 12:13:04', '2020-08-18 17:18:37'),
(8, 'https://www.youtube.com/embed/GKE6BChymxQ', '\'About Yell Park\'', '2020-08-18 12:13:04', '2020-08-18 17:18:40'),
(9, 'https://www.youtube.com/embed/ASGjq_r9OXI', '\'Parties in Yell Park\'', '2020-08-18 12:13:04', '2020-08-18 17:18:44'),
(10, 'https://www.youtube.com/embed/yDvy9iIjn3k', '\'Lastiver\'', '2020-08-18 12:13:04', '2020-08-18 17:18:49');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `main_destinations`
--
ALTER TABLE `main_destinations`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `menu_childes`
--
ALTER TABLE `menu_childes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Parent_ID` (`PARENT_ID`);

--
-- Индексы таблицы `middle_header`
--
ALTER TABLE `middle_header`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `team_leader`
--
ALTER TABLE `team_leader`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `guides`
--
ALTER TABLE `guides`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `header`
--
ALTER TABLE `header`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `hotels`
--
ALTER TABLE `hotels`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `main_destinations`
--
ALTER TABLE `main_destinations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `menu_childes`
--
ALTER TABLE `menu_childes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `middle_header`
--
ALTER TABLE `middle_header`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `our_team`
--
ALTER TABLE `our_team`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `team_leader`
--
ALTER TABLE `team_leader`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_childes`
--
ALTER TABLE `menu_childes`
  ADD CONSTRAINT `Parent_ID` FOREIGN KEY (`Parent_ID`) REFERENCES `menu` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
