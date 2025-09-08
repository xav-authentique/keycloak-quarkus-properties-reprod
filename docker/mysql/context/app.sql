-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db-mysql
-- Gegenereerd op: 08 sep 2025 om 09:04
-- Serverversie: 8.0.29
-- PHP-versie: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `usr_users`
--

CREATE TABLE `usr_users` (
  `email_verified` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `id` binary(16) NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(512) NOT NULL,
  `encrypted_password` varchar(512) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `terms_and_conditions_accepted_timestamp` varchar(255) DEFAULT NULL,
  `last_active` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `usr_users`
--

INSERT INTO `usr_users` (`email_verified`, `enabled`, `id`, `username`, `email`, `encrypted_password`, `first_name`, `middle_name`, `last_name`, `terms_and_conditions_accepted_timestamp`, `last_active`, `created_by`, `modified_by`, `created`, `modified`, `position`) VALUES
(b'0', b'1', 0x1262dacb23f44ded9af0a90b64375cda, 'reprod@localhost', 'reprod@localhost', NULL, 'Reprod', NULL, 'Gebruiker 2', NULL, NULL, 'Unauthenticated user', 'Unauthenticated user', '2025-07-29 09:49:37', '2025-07-29 09:49:37', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `usr_users`
--
ALTER TABLE `usr_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_s6erk9upsmv5muuvcynby6mm7` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
