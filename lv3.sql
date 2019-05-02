-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 03:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, '3', 27, NULL, NULL),
(2, '3', 28, NULL, NULL),
(3, '3', 28, NULL, NULL),
(4, '2', 29, NULL, NULL),
(5, '2', 29, NULL, NULL),
(6, '3', 32, NULL, NULL),
(7, '3', 32, NULL, NULL),
(8, '2', 32, NULL, NULL),
(9, '2', 32, NULL, NULL),
(10, '3', 33, NULL, NULL),
(11, '3', 33, NULL, NULL),
(12, '3', 34, NULL, NULL),
(13, '3', 34, NULL, NULL),
(14, '3', 35, NULL, NULL),
(15, '3', 35, NULL, NULL),
(16, '3', 36, NULL, NULL),
(17, '3', 36, NULL, NULL),
(18, '3', 36, NULL, NULL),
(19, '3', 36, NULL, NULL),
(20, '3', 37, NULL, NULL),
(21, '3', 37, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_04_23_120125_create_users_table', 1),
(2, '2019_04_23_211120_create_projects_table', 1),
(6, '2019_04_30_075830_create_administration_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cijena_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obavljeni_poslovi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum_pocetka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum_zavrsetka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voditelj_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `naziv_projekta`, `opis_projekta`, `cijena_projekta`, `obavljeni_poslovi`, `datum_pocetka`, `datum_zavrsetka`, `voditelj_projekta`, `created_at`, `updated_at`) VALUES
(1, 'Knjiznica', 'vinkovci fontana', '123321123kn', 'Crijep', '12.3.2017.', '12.3.2020.', 'hrvoje.kok@gmail.com', NULL, NULL),
(2, 'Vinkovci', 'Farbanje linija', '5435254325324kn', 'Temelji', '2.2.2022.', '23.4.4321.', 'hrvoje.kok@gmail.com', NULL, NULL),
(3, 'Autoceste', 'kuća', '123000kn', 'Boja', '12.3.2019.', '4.5.2001.', 'imarosevic@gmail.com', NULL, NULL),
(4, 'Prvi projekt', 'Gradimo zgradu', '12309kn', 'Nista', '23.3.2019.', '4.3.2093.', 'imarosevic@gmail.com', NULL, NULL),
(5, 'Drugi projekt', 'Nuštar fontana', '34567896422kn', 'Kupljene žarulje', '2.2.2022.', '23.4.4321.', 'mislav@maric.com', NULL, NULL),
(6, 'Konzum', 'Biljke', '12340392423kn', 'Kupljeno prase', '12.3.2019.', '4.5.2001.', 'mislav@maric.com', NULL, NULL),
(7, 'Knjiznica', 'vinkovci fontana', '123321123kn', 'Crijep', '12.3.2017.', '23.4.4321.', 'mislav@maric.com', NULL, NULL),
(11, 'Vinkovci', 'pravimo knjiznicu', '34567896422kn', 'Temelji', '2.2.2022.', '4.3.2093.', 'mislav@maric.com', NULL, NULL),
(13, 'Treci projekt', 'Brojanje', '123kn', 'Nista', '2.3.4567.', '2.3.4543.', 'hrvoje.kok@gmail.com', NULL, NULL),
(14, 'Stari projekt', 'Ponovo sve', '1234321kn', 'SKoro ništa', '12.3.2019.', '9.8.4321.', 'imarosevic@gmail.com', NULL, NULL),
(15, 'Autoceste', 'Farbanje linija', '5435254325324kn', 'Voda', '12.3.2019.', '4.3.2093.', 'imarosevic@gmail.com', NULL, NULL),
(16, 'Vinkovci', 'Farbanje linija', '123000kn', 'Boja', '23.3.2019.', '12.3.2020.', 'imarosevic@gmail.com', NULL, NULL),
(18, 'Osijek', 'Autoput', '543kn', 'Asfalt', '2.3.2123.', '2.1.2132.', 'imarosevic@gmail.com', NULL, NULL),
(19, 'Vukovar', 'Vukovar autocesta', '2310kn', 'Nista', '2.1.2222.', '5.4.3453.', 'imarosevic@gmail.com', NULL, NULL),
(20, 'Vukovar', 'Vukovar autocesta', '2310kn', 'Nista', '2.1.2222.', '5.4.3453.', 'imarosevic@gmail.com', NULL, NULL),
(21, 'Našice', 'cesta', '897kn', 'Nista', '4.5.6789.', '3.4.5678.', 'imarosevic@gmail.com', NULL, NULL),
(22, 'Tompojevci', 'cesta', '123432kn', 'Struja', '32.12.3213.', '23.21.2132.', 'imarosevic@gmail.com', NULL, NULL),
(23, 'Komletinci', 'cesta', '432432kn', 'Nista', '12.3.2019.', '12.3.2020.', 'imarosevic@gmail.com', NULL, NULL),
(24, 'Komletinci', 'cesta', '432432kn', 'Nista', '12.3.2019.', '12.3.2020.', 'imarosevic@gmail.com', NULL, NULL),
(25, 'Komletinci', 'cesta', '432432kn', 'Nista', '12.3.2019.', '12.3.2020.', 'imarosevic@gmail.com', NULL, NULL),
(26, 'Komletinci', 'cesta', '432432kn', 'Nista', '12.3.2019.', '12.3.2020.', 'imarosevic@gmail.com', NULL, NULL),
(27, 'Osijek2', 'Osijek2', '432432kn', 'Nabavka', '32.1.3213.', '32.21.3213.', 'hrvoje.kok@gmail.com', NULL, NULL),
(28, 'Osijek23', 'Prometnice', '23213213kn', 'Nabavka', '3.2.1232.', '23.2.2321.', 'hrvoje.kok@gmail.com', NULL, NULL),
(29, 'Vinkovci3', 'Gradimo kucu', '432123kn', 'Krov', '4.33.2212.', '34.3.2123.', 'hrvoje.kok@gmail.com', NULL, NULL),
(30, 'Knjiznica', 'Farbanje linija', '5435254325324kn', 'Temelji', '12.3.2017.', '23.4.4321.', 'hrvoje.kok@gmail.com', NULL, NULL),
(31, 'Knjiznica', 'Farbanje linija', '5435254325324kn', 'Temelji', '12.3.2017.', '23.4.4321.', 'hrvoje.kok@gmail.com', NULL, NULL),
(32, 'Knjiznica', 'Farbanje linija', '5435254325324kn', 'Temelji', '12.3.2017.', '23.4.4321.', 'hrvoje.kok@gmail.com', NULL, NULL),
(33, 'Osijek', 'Vinkovci', '3214132kn', 'Nista', '12.2.2222.', '32.2.2321.', 'hrvoje.kok@gmail.com', NULL, NULL),
(34, 'Osijek 4', 'Novi most', '1233201321kn', 'Boja', '2.3.2123.', '32.1.2312.', 'hrvoje.kok@gmail.com', NULL, NULL),
(35, 'Osijek 5', 'Novi most', '1233201321kn', 'Nista', '2.3.2123.', '32.1.2312.', 'hrvoje.kok@gmail.com', NULL, NULL),
(36, 'Vukovar 3', 'Vukovar autocesta', '238239187kn', 'Objekt', '4.3.2342.', '6.7.6567.', 'hrvoje.kok@gmail.com', NULL, NULL),
(37, 'Đakovo', 'Đakovo ecsta', '3431232kn', 'Most', '2.3.2123.', '2.2.2123.', 'hrvoje.kok@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hrvoje Kokosarevic', 'hrvoje.kok@gmail.com', '$2y$10$s.wu5WAtqo1m4o.N4AHxP.jTu58q8ophbBAoAT.Ci/hQKZv1Uur.6', NULL, '2019-04-30 17:10:31', '2019-04-30 17:10:31'),
(2, 'Ivan Marosevic', 'imarosevic@gmail.com', '$2y$10$9gm983NySs0KxoF.E/gNzenbuFAfuhQWrVDWwTPIirbDDK9TyVNzK', NULL, '2019-04-30 17:11:47', '2019-04-30 17:11:47'),
(3, 'Mislav Maric', 'mislav@maric.com', '$2y$10$S8znFNOFUnmtUOUvo9zTZeD13PXmLXwP2celimGJzwgpuvC9skHB6', NULL, '2019-04-30 17:12:58', '2019-04-30 17:12:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
