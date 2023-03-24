-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mar 24, 2023 alle 19:50
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrimag_example`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
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
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `personal_access_tokens`
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
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `region`, `tags`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arcibaldo Bernardi', 'siro35@example.net', 'Puglia', '#Violet #montanari.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wRg8NjdKgh', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(2, 'Dr. Davide Montanari', 'bibiana.vitali@example.net', 'Puglia', '#LightGreen #rossi.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8qmgsagNAY', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(3, 'Sig. Gaetano Morelli', 'neri.claudia@example.net', 'Puglia', '#LightGray #grasso.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uQniXuY2TY', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(4, 'Sig. Artes Mazza', 'olo.caputo@example.net', 'Puglia', '#SlateBlue #caputo.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZP9Saitfbe', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(5, 'Olo Bernardi', 'modesto84@example.com', 'Puglia', '#Brown #fiore.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oT8NXB2pj4', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(6, 'Kris Fabbri', 'felicia.lombardi@example.com', 'Puglia', '#AntiqueWhite #costa.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UopcVnuAZc', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(7, 'Omar Palumbo', 'yderosa@example.net', 'Puglia', '#LightPink #neri.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EJ9YdskcuW', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(8, 'Sasha Parisi', 'noel.messina@example.net', 'Puglia', '#Red #milani.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NMhzOOncuo', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(9, 'Ione Martinelli', 'doriana.rizzi@example.org', 'Puglia', '#Silver #moretti.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rUMtHAc2Bd', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(10, 'Ingrid Messina', 'luce26@example.net', 'Puglia', '#MediumSeaGreen #barbieri.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't0t8yc7RFC', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(11, 'Concetta Esposito', 'gianantonio.rizzo@example.org', 'Puglia', '#DodgerBlue #damico.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N852slxCNF', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(12, 'Renzo Battaglia', 'rossetti.marcella@example.org', 'Puglia', '#GoldenRod #basile.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wy0Za37HHe', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(13, 'Danuta Conti', 'cleopatra05@example.net', 'Puglia', '#Aqua #ferrari.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PcsIHJm5lE', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(14, 'Rita De Santis', 'hlombardo@example.com', 'Puglia', '#DarkTurquoise #deangelis.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x3PEeYsvrr', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(15, 'Ing. Deborah Ferraro', 'serra.manfredi@example.org', 'Puglia', '#GhostWhite #monti.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kXy6NMUw3r', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(16, 'Ing. Ileana Martini', 'barbieri.domingo@example.net', 'Puglia', '#Tomato #gallo.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'km6wcZsfoA', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(17, 'Ferdinando Rizzo', 'rodolfo.bernardi@example.net', 'Puglia', '#BlanchedAlmond #bianco.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6EUAwef8M', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(18, 'Matilde Bianco', 'radames90@example.org', 'Puglia', '#OliveDrab #deangelis.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QV2SSeXCCl', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(19, 'Erminio Cattaneo', 'penelope41@example.net', 'Puglia', '#Fuchsia #gallo.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pE3O7uftfi', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(20, 'Damiana Valentini', 'gcoppola@example.com', 'Puglia', '#SaddleBrown #fabbri.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PiYMN2eOMo', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(21, 'Danthon Mazza', 'erminia.barone@example.org', 'Puglia', '#DarkOliveGreen #mancini.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gqwNwEZE2Z', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(22, 'Loredana Russo', 'ione.martinelli@example.org', 'Puglia', '#LightSkyBlue #benedetti.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3vItNiv8u4', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(23, 'Enzo Bernardi', 'bortolo09@example.net', 'Puglia', '#FloralWhite #orlando.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gxTkEVgi2L', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(24, 'Armando Grasso', 'marco16@example.org', 'Puglia', '#Tan #negri.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KtyxjYuGr9', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(25, 'Cosetta D\'angelo', 'maika31@example.org', 'Puglia', '#Maroon #ferretti.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm9tE8Z5zHk', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(26, 'Gregorio Amato', 'yrossi@example.net', 'Puglia', '#SaddleBrown #rizzi.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qeXQtpOmkn', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(27, 'Sibilla Testa', 'sueellen30@example.com', 'Puglia', '#PaleVioletRed #amato.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oATB82GWCr', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(28, 'Ing. Kristel Mancini', 'rizzo.fulvio@example.net', 'Puglia', '#DarkSalmon #neri.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6QiZTwgKsH', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(29, 'Davis Ferraro', 'donatella33@example.com', 'Puglia', '#LightGray #neri.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bynn5vFCaF', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(30, 'Danuta Sartori', 'naomi54@example.org', 'Puglia', '#Azure #rizzi.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AaX9kjKqra', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(31, 'Zaccaria Lombardi', 'sasha.carbone@example.net', 'Puglia', '#PaleGreen #lombardi.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yTsi1nbYZG', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(32, 'Olimpia Bernardi', 'luce01@example.net', 'Puglia', '#Fuchsia #battaglia.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XBwYP1ya9S', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(33, 'Rebecca Vitali', 'michele61@example.org', 'Puglia', '#LavenderBlush #ferrara.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pvbUfZaxte', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(34, 'Fabio Palumbo', 'serra.doriana@example.com', 'Puglia', '#LightGoldenRodYellow #messina.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0APT5gXEkU', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(35, 'Ing. Giacinta Amato', 'neri.ferri@example.net', 'Puglia', '#SlateGray #gatti.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GW6n98XdPI', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(36, 'Helga Carbone', 'tancredi24@example.com', 'Puglia', '#LavenderBlush #leone.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Plo9bKUwLn', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(37, 'Sig. Moreno Riva', 'pellegrini.helga@example.net', 'Puglia', '#Gray #greco.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'axcEEaW2yO', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(38, 'Dott. Ileana Costa', 'demian.damico@example.net', 'Puglia', '#Purple #piras.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HhSsg6HIzI', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(39, 'Osea Rossetti', 'demi96@example.net', 'Puglia', '#Silver #mancini.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4qCSP7fyWD', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(40, 'Lucia Coppola', 'giacinta.moretti@example.net', 'Puglia', '#Darkorange #gallo.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hsu9nokBIF', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(41, 'Dr. Maggiore Marini', 'ulrico.bianco@example.net', 'Puglia', '#Moccasin #damico.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7MHBzGOVmA', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(42, 'Naomi Serra', 'martini.lia@example.net', 'Puglia', '#LightSalmon #longo.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C2t4Sj0cso', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(43, 'Dr. Ariel De Santis', 'fiorenzo.rinaldi@example.com', 'Puglia', '#DarkBlue #serra.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ecK2F9B1ka', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(44, 'Ing. Benedetta Pellegrini', 'alighiero.santoro@example.net', 'Puglia', '#PapayaWhip #greco.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JeEhAJMSa9', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(45, 'Tommaso Fontana', 'ricci.demi@example.net', 'Puglia', '#Magenta #gallo.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lbvGnLDdVX', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(46, 'Dr. Ian Grasso', 'loredana59@example.net', 'Puglia', '#LightSeaGreen #santoro.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AhxBdpLDHH', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(47, 'Cesidia Conti', 'wlongo@example.net', 'Puglia', '#MistyRose #testa.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mFVFVPuBem', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(48, 'Vania Donati', 'costa.giorgio@example.com', 'Puglia', '#Olive #rinaldi.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '11IxO0DGrE', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(49, 'Deborah Ferrari', 'danuta64@example.com', 'Puglia', '#DarkGoldenRod #derosa.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e9gAqRTDAr', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(50, 'Ing. Ciro Grassi', 'ferrara.gelsomina@example.org', 'Puglia', '#PeachPuff #costantini.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'do3AWhyZwD', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(51, 'Santo Pagano', 'dvitali@example.net', 'Puglia', '#DarkTurquoise #gallo.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LI0CdMsIgO', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(52, 'Edipo Villa', 'bernardo80@example.org', 'Puglia', '#GreenYellow #bellini.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mvj2iBth9F', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(53, 'Rosita Morelli', 'gesposito@example.com', 'Puglia', '#Sienna #mariani.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pKADTsvhkA', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(54, 'Giacinto Parisi', 'rita08@example.com', 'Puglia', '#SteelBlue #palmieri.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TtaxyBChpa', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(55, 'Fabio Ferretti', 'pietro74@example.net', 'Puglia', '#MediumAquaMarine #sorrentino.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y8trYR0GmD', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(56, 'Gilda Rizzo', 'lia40@example.net', 'Puglia', '#Gold #vitale.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PSxNDFX4kw', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(57, 'Dr. Maristella Longo', 'bvitale@example.org', 'Puglia', '#OliveDrab #mazza.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x4Bnm7p7Lp', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(58, 'Kai Cattaneo', 'bbattaglia@example.org', 'Puglia', '#DarkKhaki #vitale.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xRmpxmJ25w', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(59, 'Dott. Lino Palmieri', 'sibilla81@example.org', 'Puglia', '#Linen #villa.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wUuc3qVbOk', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(60, 'Ausonio Caputo', 'lidia81@example.org', 'Puglia', '#DarkKhaki #gentile.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2j6wqGii2J', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(61, 'Sarita Ricci', 'guerra.diana@example.net', 'Puglia', '#IndianRed #morelli.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FOAiDO9DlF', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(62, 'Carlo Martino', 'eriberto.rossetti@example.org', 'Puglia', '#LightGoldenRodYellow #gatti.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'urYyVWEyRj', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(63, 'Orfeo Guerra', 'pagano.olimpia@example.org', 'Puglia', '#DodgerBlue #sala.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PRqaNqm83K', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(64, 'Leonardo Rossi', 'carmela.romano@example.com', 'Puglia', '#AntiqueWhite #rinaldi.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vtHKaThgnG', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(65, 'Dott. Erminia Ferri', 'nayade39@example.net', 'Puglia', '#RosyBrown #montanari.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eFifho8YSR', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(66, 'Bibiana Marchetti', 'serra.prisca@example.com', 'Puglia', '#PeachPuff #santoro.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8Yzb3P1Eqr', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(67, 'Ing. Gianriccardo Caruso', 'sanna.genziana@example.org', 'Puglia', '#LightSeaGreen #grassi.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3cH7o3DKDg', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(68, 'Sibilla Lombardo', 'santo76@example.org', 'Puglia', '#LightPink #ferrara.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yxAGIkIkLZ', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(69, 'Monia Conti', 'efarina@example.org', 'Puglia', '#YellowGreen #desantis.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ImoAtNE7EF', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(70, 'Clodovea Longo', 'kbianco@example.com', 'Puglia', '#CornflowerBlue #barone.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F8MFVU7gmg', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(71, 'Ileana Greco', 'qpellegrino@example.com', 'Puglia', '#HoneyDew #bianco.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mpNFyxqbxT', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(72, 'Dott. Secondo Ferretti', 'enrica27@example.com', 'Puglia', '#DarkKhaki #romano.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dXpJqS9alI', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(73, 'Dott. Secondo Ferri', 'grassi.mietta@example.org', 'Puglia', '#LightYellow #barone.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KQ7ENU4x8P', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(74, 'Ing. Egisto Piras', 'ferrari.rebecca@example.org', 'Puglia', '#Chartreuse #galli.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e6vwLRoPvp', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(75, 'Brigitta Fiore', 'giobbe.costantini@example.com', 'Puglia', '#MediumSlateBlue #gallo.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3nKLLdMMXs', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(76, 'Morgana Pagano', 'piersilvio73@example.com', 'Puglia', '#Orchid #pellegrini.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bW3y7idwp4', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(77, 'Ing. Ivonne Ricci', 'silvestri.amos@example.net', 'Puglia', '#DarkOliveGreen #vitale.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YZlSUZ13UL', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(78, 'Ing. Evita Farina', 'fabbri.quarto@example.com', 'Puglia', '#PowderBlue #grassi.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g4iLeoDYwa', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(79, 'Dr. Naomi Benedetti', 'flavio.rossetti@example.com', 'Puglia', '#Lavender #galli.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z0U8S3Qp49', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(80, 'Alighieri Vitale', 'caputo.maruska@example.net', 'Puglia', '#PowderBlue #barbieri.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oqhadHLFOC', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(81, 'Ione Leone', 'penelope.marchetti@example.com', 'Puglia', '#Plum #rinaldi.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xz01uOYDuE', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(82, 'Sig. Ulrico Parisi', 'folco89@example.com', 'Puglia', '#OrangeRed #palumbo.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ZRxKgv52M', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(83, 'Vitalba Caputo', 'emanuel.fontana@example.com', 'Puglia', '#DarkGray #galli.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SqdCkwPZsO', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(84, 'Sig.ra Ione Morelli', 'eusebio46@example.org', 'Puglia', '#SeaShell #conte.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TGK3fYlxj3', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(85, 'Filomena Pellegrino', 'maristella.pellegrini@example.net', 'Puglia', '#Thistle #fabbri.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'afdSsjIoov', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(86, 'Folco Bianco', 'gioacchino90@example.com', 'Puglia', '#LemonChiffon #costa.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ByD7234lJO', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(87, 'Dimitri Rinaldi', 'maggiore.vitali@example.net', 'Puglia', '#GreenYellow #russo.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fdxT4ZNj5C', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(88, 'Gioacchino De Angelis', 'basile.silverio@example.org', 'Puglia', '#MintCream #mancini.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gWuqsLwJAb', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(89, 'Noemi Martini', 'mazza.diamante@example.org', 'Puglia', '#Lime #gatti.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AknHG7drF5', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(90, 'Noemi De Angelis', 'felicia.ferrari@example.org', 'Puglia', '#Beige #marchetti.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zO6qC8pOaJ', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(91, 'Piccarda Coppola', 'longo.jarno@example.net', 'Puglia', '#DarkGoldenRod #marini.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gdlws8Lohu', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(92, 'Cosetta Rossetti', 'qferrara@example.com', 'Puglia', '#MediumSlateBlue #costantini.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VS4rrQUX6d', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(93, 'Olimpia Bianco', 'damiana48@example.com', 'Puglia', '#DarkSlateBlue #guerra.net', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5EAw2ejJ3f', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(94, 'Damiana De rosa', 'emilia10@example.org', 'Puglia', '#DodgerBlue #testa.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RvH9YjS1Q5', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(95, 'Dr. Timoteo Ricci', 'parisi.neri@example.org', 'Puglia', '#BurlyWood #sala.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3NoEUyDOzl', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(96, 'Tolomeo Costa', 'antonino.barbieri@example.com', 'Puglia', '#PeachPuff #ricci.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7yaPHuQWB2', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(97, 'Demi Vitali', 'grassi.osvaldo@example.org', 'Puglia', '#Tomato #piras.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJwoRGrb8Q', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(98, 'Valdo Costantini', 'miriam.vitale@example.com', 'Puglia', '#SaddleBrown #martino.com', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VQkqr1JCf7', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(99, 'Sig. Egidio Mazza', 'hmarino@example.org', 'Puglia', '#SteelBlue #coppola.it', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OUWtt51aHF', '2023-03-23 15:44:51', '2023-03-23 15:44:51'),
(100, 'Harry Leone', 'rossi.rufo@example.org', 'Puglia', '#LawnGreen #bruno.org', '2023-03-23 15:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kIsKWWAQlQ', '2023-03-23 15:44:51', '2023-03-23 15:44:51');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
