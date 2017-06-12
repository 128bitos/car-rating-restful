-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2016 at 11:56 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_service_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `car_name` text CHARACTER SET latin1 NOT NULL,
  `ranking` int(2) NOT NULL,
  `car_image` text CHARACTER SET latin1 NOT NULL,
  `detail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price_from` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `car_name`, `ranking`, `car_image`, `detail`, `price_from`) VALUES
(1, 'Volkswagen Golf', 1, 'web_service/img/golf.jpg', 'The undisputed benchmark when it comes to the family hatchback, the Volkswagen Golf is still arguably the best car in its class.', 20225),
(2, 'Ford Focus', 2, 'web_service/img/focus.jpg', 'With a completely restyled, more sculpted exterior and a cabin space that?s more advanced and sophisticated than ever, this is the most refined Focus yet.', 20395),
(3, 'Nissan Quashqai', 3, 'web_service/img/quashqai.jpg', 'The Nissan Qashqai has to be one of the most popular crossover SUVs ever built. The last model was a massive success in Ireland and since the introduction of the second generation, sales have been swift for the manufacturer. The Qashqai won the APMP Irish Car of the Year award in 2015, and with good reason too.', 25245),
(4, 'Toyota Corolla', 4, 'web_service/img/corolla.jpg', 'The Toyota Corolla is only available as a saloon after Toyota made the decision to try and appeal to a younger, more Volkswagen Golf-directed audience by turning the hatchback Corolla into the Auris ? which is also proving itself to be popular both as a hatch and as a sports tourer. ', 20995),
(5, 'Skoda Octavia', 5, 'web_service/img/octavia.jpg', 'The Skoda Octavia is a hugely popular machine and it can be seen at taxi ranks all around the country. This is generally a good sign. The Octavia gets better looking with every update and over the years the Czech manufacturer has worked hard to offer the Octavia in as many guises as possible.', 18995),
(6, 'Hyundai ix35', 6, 'web_service/img/ix35.jpg', 'The ix35 marked a real step forward for Hyundai. It feels like someone has actually spent some time on it, styling and interior in particular. The drive is more average and it?s hardly revolutionary, but you do get a lot of kit for your cash.', 25495),
(7, 'Ford Fiesta', 7, 'web_service/img/fiesta.jpg', 'Like a brand new smartphone, the New Ford Fiesta combines contemporary style, with state-of-the-art technology. Every feature is designed to help you get the most out of your day.', 15050),
(8, 'Volkswagen Passat Saloon', 8, 'web_service/img/passat.jpg', 'The Volkswagen Passat is a stylish family saloon with plenty of space, an upmarket interior and a range of efficient engines.', 27455),
(9, 'Toyota Yaris', 9, 'web_service/img/yaris.jpg', 'Since the Yaris was first released in Europe the car has undertaken some dramatic changes. As the Toyota family grew so too did the Yaris. The Yaris will always be a strong contender in its segment because it dons a Toyota badge which to a lot of people means that it will be reliable and probably cheap to run.', 14995),
(10, 'Kia Sportage', 10, 'web_service/img/sportage.jpg', 'Kia will be launching their new Kia Sportage in Ireland at the beginning of 2016.  The first Sportage was built during 1993 and took many of its components from Mazda. The second generation was released in 2005 and this time it used the same platform as the Hyundai Tucson.', 26790);

-- --------------------------------------------------------

--
-- Table structure for table `side_panel`
--

CREATE TABLE `side_panel` (
  `info_id` int(11) NOT NULL,
  `info_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `side_panel`
--

INSERT INTO `side_panel` (`info_id`, `info_text`) VALUES
(1, '<h3>Information</h3>\r\n<p>Car sales in Ireland have steadily improved this year with a significant increase in new car registrations. The Volkswagen Golf has proved to be the most popular model purchased and giving it pride of place at the top of the list. Unsurprisingly, some other old favourites appear too with the Ford Focus and the Toyota Corolla appearing once again.</p> \r\n                <p>The largest number of new cars is purchased in Dublin with nearly 40% of new registrations being attributed to the county.</p>\r\n                <p><br><br><h5>Source:<br>Society of Irish Motor Industry</h5></p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `side_panel`
--
ALTER TABLE `side_panel`
  ADD PRIMARY KEY (`info_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `side_panel`
--
ALTER TABLE `side_panel`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
