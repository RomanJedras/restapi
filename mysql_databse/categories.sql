-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 19 Cze 2019, 17:36
-- Wersja serwera: 5.7.24-27-log
-- Wersja PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `30203458_clearcode`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Fashion', 'Category for anything related to fashion.', '2019-06-01 00:35:07', '2019-05-30 15:34:33'),
(2, 'Electronics', 'Gadgets, drones and more.', '2019-06-01 00:35:07', '2019-05-30 15:34:33'),
(3, 'Motors', 'Motor sports and more', '2019-06-01 00:35:07', '2019-05-30 15:34:54'),
(5, 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2019-01-08 12:27:26'),
(6, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2019-01-08 12:27:47'),
(13, 'Sports', 'Drop into new winter gear.', '2019-01-09 02:24:24', '2019-01-09 00:24:24'),
(19, 'Fashion', 'Category for anything related to fashion.', '2019-06-01 00:35:07', '2019-05-30 15:34:33'),
(20, 'Electronics', 'Gadgets, drones and more.', '2019-06-01 00:35:07', '2019-05-30 15:34:33'),
(21, 'Motors', 'Motor sports and more', '2019-06-01 00:35:07', '2019-05-30 15:34:54'),
(22, 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2019-01-08 12:27:26'),
(23, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2019-01-08 12:27:47'),
(24, 'Sports', 'Drop into new winter gear.', '2019-01-09 02:24:24', '2019-01-09 00:24:24'),
(25, 'Fashion', 'Category for anything related to fashion.', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(26, 'Electronics', 'Gadgets, drones and more.', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(27, 'Motors', 'Motor sports and more', '2014-06-01 00:35:07', '2014-05-30 15:34:54'),
(28, 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2016-01-08 12:27:26'),
(29, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2016-01-08 12:27:47'),
(30, 'Sports', 'Drop into new winter gear.', '2016-01-09 02:24:24', '2016-01-09 00:24:24'),
(31, 'Fashion', 'Category for anything related to fashion.', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(32, 'Electronics', 'Gadgets, drones and more.', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(33, 'Motors', 'Motor sports and more', '2014-06-01 00:35:07', '2014-05-30 15:34:54'),
(34, 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2016-01-08 12:27:26'),
(35, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2016-01-08 12:27:47'),
(36, 'Sports', 'Drop into new winter gear.', '2016-01-09 02:24:24', '2016-01-09 00:24:24');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
