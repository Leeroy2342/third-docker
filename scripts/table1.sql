-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Авг 03 2021 г., 21:00
-- Версия сервера: 10.6.3-MariaDB-1:10.6.3+maria~focal
-- Версия PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `table1`
--
CREATE DATABASE IF NOT EXISTS `table1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `table1`;

-- --------------------------------------------------------

--
-- Структура таблицы `tablewithsomevalues`
--

DROP TABLE IF EXISTS `tablewithsomevalues`;
CREATE TABLE `tablewithsomevalues` (
  `id` int(11) NOT NULL,
  `column1` text NOT NULL,
  `column2` text NOT NULL,
  `column3` text NOT NULL,
  `column4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tablewithsomevalues`
--

INSERT INTO `tablewithsomevalues` (`id`, `column1`, `column2`, `column3`, `column4`) VALUES
(1, 'Пример вывода при значении ROW = \"1\", COLUMN = \"1\"', 'Пример вывода при значении ROW = \"1\", COLUMN = \"2\"', 'Пример вывода при значении ROW = \"1\", COLUMN = \"3\"', 'Пример вывода при значении ROW = \"1\", COLUMN = \"4\"'),
(2, 'Пример вывода при значении ROW = \"2\", COLUMN = \"1\"', 'Пример вывода при значении ROW = \"2\", COLUMN = \"2\"', 'Пример вывода при значении ROW = \"2\", COLUMN = \"3\"', 'Пример вывода при значении ROW = \"2\", COLUMN = \"4\"'),
(3, 'Пример вывода при значении ROW = \"3\", COLUMN = \"1\"', 'Пример вывода при значении ROW = \"3\", COLUMN = \"2\"', 'Пример вывода при значении ROW = \"3\", COLUMN = \"3\"', 'Пример вывода при значении ROW = \"3\", COLUMN = \"4\"'),
(4, 'Пример вывода при значении ROW = \"4\", COLUMN = \"1\"', 'Пример вывода при значении ROW = \"4\", COLUMN = \"2\"', 'Пример вывода при значении ROW = \"4\", COLUMN = \"3\"', 'Пример вывода при значении ROW = \"4\", COLUMN = \"4\"');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tablewithsomevalues`
--
ALTER TABLE `tablewithsomevalues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tablewithsomevalues`
--
ALTER TABLE `tablewithsomevalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
