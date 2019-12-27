-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 05:33 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_26_121638_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Scot', 'Gutkowski', '7435 Hoeger Groves', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(2, 'Sierra', 'Langworth', '4596 Rodriguez Islands', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(3, 'Quincy', 'Stehr', '398 Graham Oval', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(4, 'Christopher', 'Stracke', '7305 Aubrey Run', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(5, 'Esteban', 'Grant', '710 Jacobs Hollow Suite 400', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(6, 'Titus', 'Dibbert', '323 Sarina Walk Apt. 219', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(7, 'Rosalyn', 'Bins', '4624 Mitchell Radial', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(8, 'Lisa', 'Mante', '6449 Rubie Crescent', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(9, 'Icie', 'Crist', '86646 Hills Avenue Apt. 630', '2019-12-26 04:26:12', '2019-12-26 04:26:12'),
(10, 'Declan', 'Glover', '99407 Blanche Ways Apt. 469', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(11, 'Ryann', 'Cartwright', '242 Harvey Keys Suite 111', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(12, 'Kade', 'Schaden', '9660 Micah Run Apt. 258', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(13, 'Leonor', 'Pagac', '719 Telly Dam Suite 588', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(14, 'Hershel', 'Lindgren', '52469 Eula Spur Suite 370', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(15, 'Roderick', 'Renner', '18559 Volkman Mountains', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(16, 'Jerrold', 'Zboncak', '77425 Mandy Spring', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(17, 'Erna', 'Lubowitz', '91662 Rita Tunnel', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(18, 'Van', 'Orn', '5152 Cole Islands', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(19, 'Sandy', 'Schuppe', '20657 Yundt Knolls Suite 109', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(20, 'Darius', 'Stiedemann', '94351 Bertrand Loaf', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(21, 'Maybell', 'Zulauf', '61390 Lauryn Isle', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(22, 'Stella', 'Rath', '38885 Eliza Vista', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(23, 'Deshaun', 'Wehner', '4536 Alexys Flats', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(24, 'Noelia', 'Green', '1669 Dare Freeway', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(25, 'Jorge', 'Ledner', '393 Isobel Well Apt. 294', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(26, 'Margarette', 'Blick', '924 Serenity Course Apt. 454', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(27, 'Darius', 'Wintheiser', '2951 Noemy Way Suite 921', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(28, 'Ignatius', 'Sipes', '16820 Sarai Causeway', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(29, 'Andres', 'Spinka', '1504 Ebert Mills Apt. 902', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(30, 'Marlen', 'Daugherty', '7514 Eliane Road Apt. 911', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(31, 'Edmund', 'Armstrong', '891 Wintheiser Overpass', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(32, 'Robin', 'Blanda', '8191 Howell Route Apt. 818', '2019-12-26 04:26:13', '2019-12-26 04:26:13'),
(33, 'Arch', 'Corkery', '1242 Camilla Unions', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(34, 'Leonie', 'Gislason', '63658 VonRueden Circle', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(35, 'Brandon', 'Wuckert', '58160 Haylee Plaza', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(36, 'Reinhold', 'Murazik', '941 Konopelski Valleys', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(37, 'Savanna', 'Schneider', '417 Stehr Mews Apt. 717', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(38, 'Magdalena', 'Bashirian', '8890 Mason Isle', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(39, 'Bobbie', 'Altenwerth', '67808 Schimmel Mountains', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(40, 'Marvin', 'Harber', '879 Vandervort Shoals Suite 618', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(41, 'Kadin', 'Williamson', '3382 Jerde Mission Apt. 448', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(42, 'Pamela', 'Schaden', '3184 Tad Mountain Apt. 498', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(43, 'Lenora', 'Hill', '76550 Vladimir Squares Apt. 225', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(44, 'Granville', 'Halvorson', '12822 Kuhn Via', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(45, 'Jamal', 'Beier', '91220 Elissa Trail', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(46, 'Tressie', 'Fay', '19468 Ezra Dam', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(47, 'Myrna', 'Ledner', '760 Chandler Ridges Apt. 367', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(48, 'Teresa', 'Mraz', '9735 Jorge Court', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(49, 'Devon', 'Cole', '26842 Marks Mission Suite 623', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(50, 'Edna', 'Bins', '2502 Mosciski Plain Suite 754', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(51, 'Valerie', 'Huels', '134 Lenny Spring', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(52, 'Josianne', 'Murazik', '3276 Schroeder Rue Apt. 798', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(53, 'Rod', 'Goldner', '22696 Otha Prairie', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(54, 'Marietta', 'Ebert', '2720 Torphy Harbors', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(55, 'Gina', 'Bogisich', '1104 Windler Estate', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(56, 'Joel', 'Braun', '4713 Ezra Place Suite 507', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(57, 'Bud', 'McGlynn', '62742 Theresa Mountain Suite 093', '2019-12-26 04:26:14', '2019-12-26 04:26:14'),
(58, 'Amir', 'McKenzie', '631 Lexi Terrace Apt. 105', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(59, 'Lafayette', 'Eichmann', '5395 Schultz Glens', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(60, 'Quentin', 'Dooley', '92656 Daugherty Stream', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(61, 'Kamren', 'Cronin', '537 Alena Views', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(62, 'Brandy', 'Schneider', '142 Renner Curve Suite 782', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(63, 'Ernestine', 'Gerhold', '2484 Torp Fields', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(64, 'Arno', 'Sanford', '80199 Felton Tunnel', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(65, 'Kassandra', 'Sanford', '3316 Frami Dale', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(66, 'Orland', 'Lehner', '427 Derrick Avenue', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(67, 'Chadrick', 'Kihn', '58150 Abbott Trail Apt. 916', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(68, 'Keagan', 'Strosin', '47867 Daniel Overpass Apt. 933', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(69, 'Nicolette', 'Adams', '74208 Herman Coves Apt. 896', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(70, 'Cristopher', 'King', '980 Erdman Estates', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(71, 'Maiya', 'Lubowitz', '9843 Gaylord Plain', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(72, 'Gwendolyn', 'Predovic', '399 Arlo Tunnel Suite 369', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(73, 'Lorenza', 'Tillman', '22419 Christiansen Throughway', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(74, 'Yvonne', 'Huels', '5886 Yost Union', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(75, 'Aric', 'Schuppe', '84852 Curt Plaza', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(76, 'Tavares', 'Schaefer', '7018 Vilma Glens Suite 329', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(77, 'Susana', 'Kessler', '343 Emmerich Flats', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(78, 'Dwight', 'Cummerata', '299 Reilly Groves Suite 856', '2019-12-26 04:26:15', '2019-12-26 04:26:15'),
(79, 'Josefa', 'Shanahan', '834 Toy Point Apt. 463', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(80, 'Deion', 'Kutch', '9308 Pearlie Center Suite 629', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(81, 'Verner', 'Skiles', '974 Kelsi Curve', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(82, 'Johathan', 'Von', '69584 Ottilie Orchard Apt. 580', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(83, 'Lawrence', 'Cummerata', '81595 Simonis Lodge', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(84, 'Robbie', 'Donnelly', '693 Joan Estates Suite 149', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(85, 'Demetrius', 'Fay', '10207 Trantow Meadow Apt. 529', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(86, 'Dario', 'Abbott', '778 Elsa Burgs', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(87, 'Rosa', 'Bogan', '4686 Gottlieb Trace', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(88, 'Junius', 'Lockman', '9479 Armando Stravenue', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(89, 'Jamal', 'Gutkowski', '788 Volkman Road Apt. 790', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(90, 'Obie', 'Nolan', '30369 Lynch Ville', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(91, 'Garnet', 'Muller', '857 Schimmel Well', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(92, 'Shanna', 'Cartwright', '8668 Gutmann Drives Apt. 594', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(93, 'Esmeralda', 'Fahey', '629 Padberg Spurs', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(94, 'Jaiden', 'Paucek', '5353 Alexandre Station Apt. 843', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(95, 'Cynthia', 'Oberbrunner', '65339 Kiera Plain Apt. 566', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(96, 'Ashlee', 'Mosciski', '59224 Hester Manors', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(97, 'Karlee', 'O\'Conner', '4383 Jeramy Street', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(98, 'Jana', 'Herzog', '81682 Juana Mission Apt. 511', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(99, 'Sammy', 'Donnelly', '18515 Crist Points', '2019-12-26 04:26:16', '2019-12-26 04:26:16'),
(100, 'Edmond', 'Williamson', '3306 Abshire Summit Apt. 883', '2019-12-26 04:26:16', '2019-12-26 04:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
