-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 25 Μάη 2020 στις 17:02:59
-- Έκδοση διακομιστή: 10.4.11-MariaDB
-- Έκδοση PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `texnologialog`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `allergy`
--

CREATE TABLE `allergy` (
  `name_all` varchar(255) NOT NULL,
  `desc_all` varchar(255) NOT NULL,
  `id_all` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `dis`
--

CREATE TABLE `dis` (
  `name_dis` varchar(255) NOT NULL,
  `nubvict_dis` int(11) NOT NULL,
  `nubdead_dis` int(11) NOT NULL,
  `mortalityrate_dis` float(9,7) NOT NULL,
  `id_dis` int(11) NOT NULL,
  `id_sym` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `hospital`
--

CREATE TABLE `hospital` (
  `name_hos` varchar(255) NOT NULL,
  `address_hos` varchar(255) NOT NULL,
  `phone_hos` int(11) NOT NULL,
  `lat` float(9,7) NOT NULL,
  `lng` float(9,7) NOT NULL,
  `id_hos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `medicine`
--

CREATE TABLE `medicine` (
  `name_med` varchar(255) NOT NULL,
  `activesub_med` varchar(255) NOT NULL,
  `milligram_med` int(11) NOT NULL,
  `id_med` int(11) NOT NULL,
  `id_sym` int(11) NOT NULL,
  `id_all` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `medicine`
--

INSERT INTO `medicine` (`name_med`, `activesub_med`, `milligram_med`, `id_med`, `id_sym`, `id_all`) VALUES
('Algofren', 'Ivouprofen', 400, 1, 0, 0),
('Reumastop', 'Ινδομεθακίνη', 400, 2, 0, 0),
('Reumastop', 'Ινδομεθακίνη', 400, 2, 0, 0),
('Fudesix', 'Φουροσεμίδη', 40, 3, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `patient`
--

CREATE TABLE `patient` (
  `username_pat` varchar(255) NOT NULL,
  `password_pat` varchar(255) NOT NULL,
  `email_pat` varchar(255) NOT NULL,
  `firstname_paf` varchar(255) NOT NULL,
  `lastname_paf` varchar(255) NOT NULL,
  `address_paf` varchar(255) NOT NULL,
  `description_paf` varchar(255) NOT NULL,
  `phone_paf` int(11) NOT NULL,
  `registnub_paf` int(11) NOT NULL,
  `record_paf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `patient`
--

INSERT INTO `patient` (`username_pat`, `password_pat`, `email_pat`, `firstname_paf`, `lastname_paf`, `address_paf`, `description_paf`, `phone_paf`, `registnub_paf`, `record_paf`) VALUES
('abc', 'aA1!', 'abc@gmail.com', 'Γιώργος', 'Γεωργίου', 'Norman 7', 'asdacasd', 692674927, 1, 'aasadsac'),
('bcd', 'bB1!', 'bbc@gmail.gr', 'Κωστας ', 'Κωσταντίνου', 'Norman 14', 'asdfasfasd', 64385293, 2, 'sdlkhgjasjhdf');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `pharmacy`
--

CREATE TABLE `pharmacy` (
  `name_pha` varchar(255) NOT NULL,
  `address_pha` varchar(255) NOT NULL,
  `phone_pha` int(11) NOT NULL,
  `lat_pha` float(9,7) NOT NULL,
  `lng_pha` float(9,7) NOT NULL,
  `id_pha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `pharmacy`
--

INSERT INTO `pharmacy` (`name_pha`, `address_pha`, `phone_pha`, `lat_pha`, `lng_pha`, `id_pha`) VALUES
('Φαρμακείο 1', 'Αγίας Σοφίας 2', 261034567, 38.2576637, 21.7404442, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `symptom`
--

CREATE TABLE `symptom` (
  `name_sym` varchar(255) NOT NULL,
  `desc_sym` varchar(255) NOT NULL,
  `id_sym` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
