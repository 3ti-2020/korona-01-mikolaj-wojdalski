-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Maj 2020, 15:57
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wojdalski`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tory`
--

CREATE TABLE `tory` (
  `Nazwa` text NOT NULL,
  `Lokalizacja` text NOT NULL,
  `Długość Toru` int(11) NOT NULL,
  `Liczba okrążeń` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tory`
--

INSERT INTO `tory` (`Nazwa`, `Lokalizacja`, `Długość Toru`, `Liczba okrążeń`) VALUES
('Albert Park', 'Australia - Melbourne', 5, 58),
('Bahrain International Circuit', 'Bahrain - Sakhir', 5, 57),
('Hanoi Circuit', 'Vietnam - Hanoi', 6, 55),
('Shanghai International Circuit', 'China - Shanghai', 5, 56),
('Zandvoort Circuit', 'Netherlands - Zandvoort', 4, 72),
('Circuit de Barcelona-Catalunya', 'Spain - Catalunya', 5, 66),
('Circuit de Monaco', 'Monaco - Monte Carlo	', 3, 78),
('Baku City Circuit', 'Azerbaijan - Baku', 6, 51),
('Circuit Gilles-Villeneuve', 'Canada - Montreal', 4, 70),
('Red Bull Ring', 'Austria - Spielberg', 4, 71);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zespoły`
--

CREATE TABLE `zespoły` (
  `Nazwa` text NOT NULL,
  `Baza` text NOT NULL,
  `Silnik` text NOT NULL,
  `Rok dołączenia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zespoły`
--

INSERT INTO `zespoły` (`Nazwa`, `Baza`, `Silnik`, `Rok dołączenia`) VALUES
('Mercedes-AMG Petronas F1 Team	', 'Brackley, United Kingdom', 'Mercedes	', 1970),
('Haas F1 Team', 'Kannapolis, United States', 'Ferrari', 2016),
('McLaren F1 Team', 'Woking, United Kingdom', 'Renault', 1966),
('Alfa Romeo Racing ORLEN', 'Hinwil, Switzerland', 'Ferrari', 1993),
('Aston Martin Red Bull Racing', 'Milton Keynes, United Kingdom', 'Honda', 1997),
('Renault DP World F1 Team', 'Enstone, United Kingdom	', 'Renault', 1986),
('Scuderia Ferrari Mission Winnow', 'Maranello, Italy', 'Ferrari', 1950),
('Scuderia AlphaTauri Honda', 'Faenza, Italy', 'Honda', 1985),
('ROKiT Williams Racing', 'Grove, United Kingdom', 'Mercedes', 1978),
('BWT Racing Point F1 Team', 'Silverstone, United Kingdom', 'BWT Mercedes	', 2019);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
