-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 28 Μάη 2020 στις 11:33:52
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

--
-- Άδειασμα δεδομένων του πίνακα `allergy`
--

INSERT INTO `allergy` (`name_all`, `desc_all`, `id_all`) VALUES
('Αλλεργία Α', 'Αλλεργία από γύρη', 1),
('Αλλεργία Β', 'Αλλεργία από φαγητό', 2);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `dis`
--

CREATE TABLE `dis` (
  `name_dis` varchar(255) NOT NULL,
  `nubvict_dis` int(11) NOT NULL,
  `nubdead_dis` int(11) NOT NULL,
  `mortalityrate_dis` float(9,7) NOT NULL,
  `id_dis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `dis`
--

INSERT INTO `dis` (`name_dis`, `nubvict_dis`, `nubdead_dis`, `mortalityrate_dis`, `id_dis`) VALUES
('Ουρική Αρθριτιδα', 500, 10, 2.0000000, 1),
('Καρδιακή ανεπάρκεια', 1500, 80, 5.3000002, 2),
('Ρευματοειδή αρθρίτιδα', 3000, 45, 1.5000000, 3);

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

--
-- Άδειασμα δεδομένων του πίνακα `hospital`
--

INSERT INTO `hospital` (`name_hos`, `address_hos`, `phone_hos`, `lat`, `lng`, `id_hos`) VALUES
('Νοσοκομείο 1', 'Καραισκάκη 211', 261028375, 38.2426987, 21.7334080, 1),
('Νοσοκομείο 2', 'Μαιζώνος 198', 26109385, 38.2417717, 21.7283974, 2),
('Νοσοκομείο 3', 'Σμύρνης 24', 261098274, 38.2381058, 21.7292881, 3);

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
('Fudesix', 'Φουροσεμίδη', 40, 3, 0, 0),
('Reunastop', 'Ινδομεθακίνη', 300, 4, 0, 0);

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
('Φαρμακείο 1', 'Αγίας Σοφίας 2', 261034567, 38.2576637, 21.7404442, 1),
('Φαρμακείο 2 ', 'Μαιζώνος 121', 944558472, 38.2467079, 21.7353077, 2),
('Φαρμακείο 3', 'Παντανάσης29-17', 923334324, 38.2458572, 21.7332268, 3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `symptom`
--

CREATE TABLE `symptom` (
  `name_sym` varchar(255) NOT NULL,
  `desc_sym` varchar(255) NOT NULL,
  `id_sym` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `symptom`
--

INSERT INTO `symptom` (`name_sym`, `desc_sym`, `id_sym`) VALUES
('Πυρετός', 'Αυξημένη θερμοκρασία σώματος', 1),
('Οξεία παγκρεατίτιδα', '\"....\"', 2),
('Υπερκαλιαιμία', '\"....\"', 3),
('Κεφαλαλγία', '\"......\"', 4);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `allergy`
--
ALTER TABLE `allergy`
  ADD PRIMARY KEY (`id_all`);

--
-- Ευρετήρια για πίνακα `dis`
--
ALTER TABLE `dis`
  ADD PRIMARY KEY (`id_dis`);

--
-- Ευρετήρια για πίνακα `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id_hos`);

--
-- Ευρετήρια για πίνακα `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id_med`);

--
-- Ευρετήρια για πίνακα `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`registnub_paf`);

--
-- Ευρετήρια για πίνακα `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id_pha`);

--
-- Ευρετήρια για πίνακα `symptom`
--
ALTER TABLE `symptom`
  ADD PRIMARY KEY (`id_sym`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
