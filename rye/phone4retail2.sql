-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 25 mrt 2025 om 13:32
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phone4retail2`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `brand`
--

INSERT INTO `brand` (`id`, `name`, `image`) VALUES
(1, 'Iphone', 'img/apple.png'),
(2, 'Samsung', 'img/samsung.png\r\n');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `beschrijving` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prijs` decimal(7,2) NOT NULL,
  `jaar` int(11) NOT NULL,
  `merk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `phone`
--

INSERT INTO `phone` (`id`, `model`, `beschrijving`, `image`, `prijs`, `jaar`, `merk_id`) VALUES
(20, 'Samsung Galaxy S10', '6.1\" AMOLED, Snapdragon 855, triple camera', 'img/samsungs10.jpg', 899.00, 2019, 2),
(21, 'Samsung Galaxy S10+', '6.4\" AMOLED, Snapdragon 855, dual front camera', 'img/samsungs10+.jpg\r\n', 999.00, 2019, 2),
(22, 'Samsung Galaxy Note 10', '6.3\" Dynamic AMOLED, S-Pen, Snapdragon 855', 'img/samsungnote10.jpg', 949.00, 2019, 2),
(23, 'Samsung Galaxy S20', '6.2\" 120Hz AMOLED, Snapdragon 865, 5G', 'img/samsungs20.jpg', 999.99, 2020, 2),
(24, 'Samsung Galaxy S20 Ultra', '6.9\" AMOLED, 108MP camera, 5000mAh batterij', 'img/samsungs20ultra.jpg', 1399.00, 2020, 2),
(25, 'Samsung Galaxy S21', '6.2\" 120Hz AMOLED, Snapdragon 888', 'img/samsungs21.jpg', 799.00, 2021, 2),
(26, 'Samsung Galaxy S21 Ultra', '6.8\" AMOLED, 108MP camera, S-Pen support', 'img/samsungs21ultra.jpg', 1199.00, 2021, 2),
(27, 'Samsung Galaxy S22 Ultra', '6.8\" Dynamic AMOLED, Snapdragon 8 Gen 1', 'img/samsungs22ultra.webp', 1199.00, 2022, 2),
(28, 'Samsung Galaxy S23 Ultra', '200MP camera, Snapdragon 8 Gen 2, S-Pen', 'img/samsungs23ultra.jpg', 1299.00, 2023, 2),
(29, 'Samsung Galaxy S24 Ultra', 'Titanium body, Snapdragon 8 Gen 3, AI functies', 'img/samsungs24ultra.jpg', 1399.00, 2024, 2),
(30, 'iPhone 11', '6.1\" LCD, A13 Bionic, dual camera', 'img/iphone11.jpg', 699.00, 2019, 1),
(31, 'iPhone 11 Pro', '5.8\" OLED, A13 Bionic, triple camera', 'img/iphone11pro.jpg', 999.00, 2019, 1),
(32, 'iPhone 11 Pro Max', '6.5\" OLED, A13 Bionic, triple camera', 'img/iphone11promax.jpg', 1099.00, 2019, 1),
(33, 'iPhone 12', '6.1\" OLED, A14 Bionic, 5G', 'img/iphone12.jpg', 799.00, 2020, 1),
(34, 'iPhone 12 Pro Max', '6.7\" OLED, A14 Bionic, LiDAR scanner', 'img/iphone12pro.jpg', 1099.00, 2020, 1),
(35, 'iPhone 13', '6.1\" OLED, A15 Bionic, dual camera', 'img/iphone13.jpg', 799.00, 2021, 1),
(36, 'iPhone 13 Pro Max', '6.7\" OLED, 120Hz ProMotion, A15 Bionic', 'img/iphone13pro.jpg', 1099.00, 2021, 1),
(37, 'iPhone 14', '6.1\" OLED, A15 Bionic, verbeterde batterij', 'img/iphone14.jpg', 799.00, 2022, 1),
(38, 'iPhone 14 Pro Max', 'Dynamic Island, 48MP camera, Always-on Display', 'img/iphone14pro.jpg', 1199.00, 2020, 1),
(39, 'iPhone 15 Pro Max', 'Titanium frame, USB-C, A17 Pro-chip', 'img/iphone15pro.jpg', 1299.00, 2023, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merk_id` (`merk_id`);

--
-- Indexen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`phone_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT voor een tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`merk_id`) REFERENCES `brand` (`id`);

--
-- Beperkingen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
