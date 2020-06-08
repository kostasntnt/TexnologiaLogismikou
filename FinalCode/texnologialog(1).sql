-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 08 Ιουν 2020 στις 15:48:05
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
-- Δομή πίνακα για τον πίνακα `admin`
--

CREATE TABLE `admin` (
  `username_admin` varchar(2555) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `admin`
--

INSERT INTO `admin` (`username_admin`, `password_admin`, `id_admin`) VALUES
('admin', 'admin', 1);

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
('Allergy A', 'Αλλεργία από γύρη', 1),
('Allergy B', 'Αλλεργία από φαγητό', 2);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `calendar`
--

CREATE TABLE `calendar` (
  `date` varchar(255) NOT NULL,
  `wra` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `calendar`
--

INSERT INTO `calendar` (`date`, `wra`, `id`) VALUES
('2020-06-24', '9:00', 1),
('2020-06-09', '10:00', 2),
('2020-06-02', '9:00', 3);

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

--
-- Άδειασμα δεδομένων του πίνακα `dis`
--

INSERT INTO `dis` (`name_dis`, `nubvict_dis`, `nubdead_dis`, `mortalityrate_dis`, `id_dis`, `id_sym`) VALUES
('Ourikh Arthritida', 500, 10, 2.0000000, 1, 2),
('Kardiakh Aneparkeia', 1500, 80, 5.3000002, 2, 3),
('Reumatohdh Arthroitida', 3000, 45, 1.5000000, 3, 4);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `hospital`
--

CREATE TABLE `hospital` (
  `name_hos` varchar(255) NOT NULL,
  `address_hos` varchar(255) NOT NULL,
  `phone_hos` int(11) NOT NULL,
  `lat_hos` float(9,7) NOT NULL,
  `lng_hos` float(9,7) NOT NULL,
  `id_hos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `hospital`
--

INSERT INTO `hospital` (`name_hos`, `address_hos`, `phone_hos`, `lat_hos`, `lng_hos`, `id_hos`) VALUES
('Hospital 1', 'Καραισκάκη 211', 261028375, 38.2426987, 21.7334080, 1),
('Hospital 2', 'Μαιζώνος 198', 26109385, 38.2417717, 21.7283974, 2),
('Hospital 3', 'Σμυρνης 24', 261087267, 38.2381058, 21.7292881, 4);

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
  `id_all` int(11) NOT NULL,
  `id_dis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `medicine`
--

INSERT INTO `medicine` (`name_med`, `activesub_med`, `milligram_med`, `id_med`, `id_sym`, `id_all`, `id_dis`) VALUES
('Algofren', 'Ivouprofen', 400, 1, 4, 0, 3),
('Fudesix', 'Fourosemidi', 400, 3, 3, 0, 2),
('Reunastop', 'Indomethakini', 300, 4, 2, 0, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `patient`
--

CREATE TABLE `patient` (
  `username_pat` varchar(255) NOT NULL,
  `password_pat` varchar(255) NOT NULL,
  `email_pat` varchar(255) NOT NULL,
  `firstname_pat` varchar(255) NOT NULL,
  `lastname_pat` varchar(255) NOT NULL,
  `address_pat` varchar(255) NOT NULL,
  `description_pat` varchar(255) NOT NULL,
  `phone_pat` int(11) NOT NULL,
  `registnub_pat` int(11) NOT NULL,
  `record_pat` varchar(255) NOT NULL,
  `age_pat` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `id_all` int(11) NOT NULL,
  `id_dis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `patient`
--

INSERT INTO `patient` (`username_pat`, `password_pat`, `email_pat`, `firstname_pat`, `lastname_pat`, `address_pat`, `description_pat`, `phone_pat`, `registnub_pat`, `record_pat`, `age_pat`, `gender`, `id_all`, `id_dis`) VALUES
('abc', 'aA1!', 'abc@gmail.com', 'Giwrgos', 'Gewrgiou', 'Norman 7', 'asdacasd', 692674927, 1, 'aasadsac', 25, 'Male', 1, 1),
('bcd', 'bB1!', 'bbc@gmail.gr', 'Kwstas', 'Kwstantinou', 'Norman 14', 'asdfasfasd', 64385293, 2, 'sdlkhgjasjhdf', 44, 'Male', 2, 3),
('cvbn', 'sadasgf', 'sdasdas@gmail.gr', 'Xristos', 'Xristou', 'Γεωργίου 4', '\"........\"', 695314587, 3, 'ssdfsdfdss', 52, 'Male', 1, 0),
('mnb', 'mnjdsh', 'asdasdsad@gmail.gr', 'Bill', 'Billou', 'sdasssdsassdsass', 'asdassdassdsa', 56833446, 4, 'dssfsdfssdsd', 32, 'Male', 2, 0),
('asdwdasd', 'fasfefq', 'kk@gmail.gr', 'Basilikh', 'Bourousi', 'Gewrgiou 78', 'asdasdas', 98767345, 5, 'eeassdaw', 29, 'Female', 2, 2);

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
('Pharmacy 1', 'Αγίας Σοφίας 2', 261034567, 38.2576637, 21.7404442, 1),
('Pharmacy 2 ', 'Μαιζώνος 121', 261058472, 38.2467079, 21.7353077, 2),
('Pharmacy 3', 'Παντανάσης29-17', 261034324, 38.2458572, 21.7332268, 3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `savenotes`
--

CREATE TABLE `savenotes` (
  `puretos` double NOT NULL,
  `zaxaro` double NOT NULL,
  `piesh` double NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `savenotes`
--

INSERT INTO `savenotes` (`puretos`, `zaxaro`, `piesh`, `id`) VALUES
(36.6, 10.1, 14.9, 1),
(37.5, 10.3, 14.7, 2),
(37.5, 10.3, 14.7, 3),
(37.5, 10.3, 14.7, 4),
(35.6, 37.8, 42.4, 5),
(35.6, 37.8, 42.4, 6),
(37.2, 12.5, 15.17, 7);

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
('Puretos', 'Αυξημένη θερμοκρασία σώματος', 1),
('Oksia Pagkreatitida', '\"....\"', 2),
('Yperkaliaimia', '\"....\"', 3),
('Kefalalgia', '\"......\"', 4);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Ευρετήρια για πίνακα `allergy`
--
ALTER TABLE `allergy`
  ADD PRIMARY KEY (`id_all`);

--
-- Ευρετήρια για πίνακα `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`registnub_pat`);

--
-- Ευρετήρια για πίνακα `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id_pha`);

--
-- Ευρετήρια για πίνακα `savenotes`
--
ALTER TABLE `savenotes`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `symptom`
--
ALTER TABLE `symptom`
  ADD PRIMARY KEY (`id_sym`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT για πίνακα `patient`
--
ALTER TABLE `patient`
  MODIFY `registnub_pat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT για πίνακα `savenotes`
--
ALTER TABLE `savenotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
