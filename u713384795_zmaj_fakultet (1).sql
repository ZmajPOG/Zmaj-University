-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2025 at 09:33 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u713384795_zmaj_fakultet`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(10) UNSIGNED NOT NULL,
  `naslov` varchar(150) NOT NULL,
  `tekst` text NOT NULL,
  `datum` datetime NOT NULL DEFAULT current_timestamp(),
  `autor_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `naslov`, `tekst`, `datum`, `autor_id`) VALUES
(1, 'Dobrodošli na Zmaj fakultet', 'Dobrodošli u informacioni sistem Zmaj fakulteta. Ovde možete pratiti predmete, ispite i obaveštenja.', '2025-11-16 04:24:43', 1),
(2, 'Početak januarskog ispitnog roka', 'Januarski ispitni rok počinje 15. januara. Prijava ispita je obavezna najkasnije 48h pre polaganja.', '2025-11-16 04:24:43', 1),
(4, 'Deutschland Uber allen!!', 'Mein Herz in flammen\r\nWill dich lieben und verdammen\r\nDeutschland\r\nDein atem kalt\r\nso jung und doch so alt\r\nDeutschland', '2025-11-16 05:08:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `sifra` varchar(20) NOT NULL,
  `espb` tinyint(3) UNSIGNED NOT NULL,
  `opis` text DEFAULT NULL,
  `profesor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `naziv`, `sifra`, `espb`, `opis`, `profesor_id`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming 1', 'WP1', 6, 'Introduction to web technologies and HTML/CSS/JS.', 2, '2025-11-16 01:25:15', '2025-11-16 01:25:15'),
(2, 'Databases', 'DB1', 6, 'Relational databases and SQL basics.', 2, '2025-11-16 01:25:15', '2025-11-16 01:25:15'),
(3, 'Algorithms and Data Structures', 'ALG1', 6, 'Fundamental algorithms and data structures.', 3, '2025-11-16 01:25:15', '2025-11-16 01:25:15'),
(4, 'Computer Networks', 'NET1', 6, 'Basics of computer networks and protocols.', 4, '2025-11-16 01:25:15', '2025-11-16 01:25:15'),
(5, 'Operating Systems', 'OS1', 6, 'Concepts of modern operating systems.', 3, '2025-11-16 01:25:15', '2025-11-16 01:25:15'),
(6, 'Software Engineering', 'SE1', 6, 'Software development lifecycle and methodologies.', 2, '2025-11-16 01:25:15', '2025-11-16 01:25:15'),
(8, 'Web Programming 2', 'WP2', 6, 'Advanced web technologies: modern JS frameworks and REST APIs.', 2, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(9, 'Databases 2', 'DB2', 6, 'Advanced SQL, normalization, indexing and transactions.', 39, '2025-11-16 05:38:08', '2025-11-18 23:03:59'),
(10, 'Computer Architecture', 'CA1', 6, 'Basic digital logic, CPU organization and memory hierarchy.', 37, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(11, 'Computer Security', 'SEC1', 6, 'Introduction to information security, cryptography and network attacks.', 38, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(12, 'Mobile Development', 'MOB1', 6, 'Basics of mobile app development and mobile UI/UX.', 39, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(13, 'Machine Learning Basics', 'ML1', 6, 'Fundamentals of supervised and unsupervised learning.', 36, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(14, 'Internet of Things', 'IOT1', 6, 'Embedded devices, sensors and IoT communication protocols.', 35, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(15, 'Software Testing', 'TEST1', 6, 'Unit testing, integration testing and test automation.', 34, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(16, 'Project Management in IT', 'PM1', 6, 'Planning, tracking and managing software projects.', 40, '2025-11-16 05:38:08', '2025-11-16 05:38:08'),
(17, 'English for IT', 'ENG1', 4, 'Technical English for IT professionals.', 39, '2025-11-16 05:38:08', '2025-11-16 05:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `course_id`, `created_at`) VALUES
(9, 5, 4, '2025-11-16 03:17:57'),
(10, 5, 3, '2025-11-16 03:17:57'),
(11, 5, 5, '2025-11-16 03:50:17'),
(31, 41, 1, '2025-11-16 05:39:04'),
(32, 41, 2, '2025-11-16 05:39:04'),
(33, 42, 1, '2025-11-16 05:39:04'),
(34, 42, 4, '2025-11-16 05:39:04'),
(35, 43, 8, '2025-11-16 05:39:04'),
(36, 43, 9, '2025-11-16 05:39:04'),
(37, 44, 3, '2025-11-16 05:39:04'),
(38, 44, 5, '2025-11-16 05:39:04'),
(39, 45, 6, '2025-11-16 05:39:04'),
(40, 45, 15, '2025-11-16 05:39:04'),
(41, 46, 4, '2025-11-16 05:39:04'),
(42, 46, 11, '2025-11-16 05:39:04'),
(43, 51, 4, '2025-11-16 05:39:04'),
(44, 51, 14, '2025-11-16 05:39:04'),
(45, 52, 4, '2025-11-16 05:39:04'),
(46, 52, 11, '2025-11-16 05:39:04'),
(47, 53, 10, '2025-11-16 05:39:04'),
(48, 54, 11, '2025-11-16 05:39:04'),
(49, 63, 1, '2025-11-16 05:39:04'),
(50, 64, 6, '2025-11-16 05:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `exam_applications`
--

CREATE TABLE `exam_applications` (
  `application_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `period_id` int(10) UNSIGNED NOT NULL,
  `status` enum('prijavljen','polozio','nije_polozio','otkazan') NOT NULL DEFAULT 'prijavljen',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_applications`
--

INSERT INTO `exam_applications` (`application_id`, `student_id`, `course_id`, `period_id`, `status`, `created_at`) VALUES
(2, 5, 3, 2, 'prijavljen', '2025-11-16 02:53:48'),
(3, 5, 2, 4, 'polozio', '2025-11-16 03:18:08'),
(4, 5, 4, 4, 'prijavljen', '2025-11-16 03:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `exam_periods`
--

CREATE TABLE `exam_periods` (
  `period_id` int(10) UNSIGNED NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `datum_od` date NOT NULL,
  `datum_do` date NOT NULL,
  `aktivan` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_periods`
--

INSERT INTO `exam_periods` (`period_id`, `naziv`, `datum_od`, `datum_do`, `aktivan`, `created_at`) VALUES
(1, 'January 2025', '2025-01-15', '2025-01-31', 0, '2025-11-16 01:25:47'),
(2, 'June 2025', '2025-06-15', '2025-06-30', 0, '2025-11-16 01:25:47'),
(4, 'November & Whole 2026 :)', '2025-11-01', '2026-07-16', 1, '2025-11-16 03:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(10) UNSIGNED NOT NULL,
  `application_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `ocena` tinyint(3) UNSIGNED NOT NULL,
  `datum` date NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grade_id`, `application_id`, `student_id`, `course_id`, `ocena`, `datum`, `created_at`) VALUES
(4, 3, 5, 2, 7, '2025-11-16', '2025-11-16 03:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `material_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`material_id`, `course_id`, `title`, `description`, `file_path`, `uploaded_at`) VALUES
(1, 2, 'yeah', '/', 'uploads/materials/1763266765_c65bfdd1.docx', '2025-11-16 04:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `telefon` varchar(30) DEFAULT NULL,
  `profilna_slika` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `uloga` enum('admin','profesor','student') NOT NULL,
  `indeks` varchar(20) DEFAULT NULL,
  `smer` varchar(100) DEFAULT NULL,
  `godina` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `ime`, `prezime`, `adresa`, `telefon`, `profilna_slika`, `email`, `lozinka`, `uloga`, `indeks`, `smer`, `godina`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'User', NULL, NULL, NULL, 'admin@zmaj.univ', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'admin', NULL, NULL, NULL, '2025-11-16 01:24:12', '2025-11-16 01:24:12'),
(2, 'Milan', 'Petrović', NULL, NULL, NULL, 'milan.petrovic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Informatika', NULL, '2025-11-16 01:24:12', '2025-11-16 01:24:12'),
(3, 'Ana', 'Jovanović', NULL, NULL, NULL, 'ana.jovanovic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Matematika', NULL, '2025-11-16 01:24:12', '2025-11-16 01:24:12'),
(4, 'Nikola', 'Ilić', NULL, NULL, NULL, 'nikola.ilic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Elektronika', NULL, '2025-11-16 01:24:12', '2025-11-16 01:24:12'),
(5, 'Marko', 'Kostić', 'Homeless', '+49 999', 'uploads/avatars/student_5_1763269226.png', 's001@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT001', 'Internet Tehnologije', 1, '2025-11-16 01:24:12', '2025-11-16 05:01:54'),
(6, 'Jovana', 'Milovanović', NULL, NULL, NULL, 's002@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT002', 'Internet Tehnologije', 2, '2025-11-16 01:24:12', '2025-11-16 01:24:12'),
(7, 'Petar', 'Stojanović', NULL, NULL, NULL, 's003@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT003', 'Softversko Inženjerstvo', 3, '2025-11-16 01:24:12', '2025-11-16 01:24:12'),
(8, 'Sara', 'Nikolić', NULL, NULL, NULL, 's004@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT004', 'Računarske Mreže', 1, '2025-11-16 01:24:12', '2025-11-16 01:24:12'),
(34, 'Ivana', 'Savić', NULL, NULL, NULL, 'ivana.savic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Softversko inženjerstvo', NULL, '2025-11-16 05:37:35', '2025-11-16 05:37:35'),
(35, 'Dejan', 'Blagojević', NULL, NULL, NULL, 'dejan.blagojevic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Internet tehnologije', NULL, '2025-11-16 05:37:35', '2025-11-16 05:37:35'),
(36, 'Nataša', 'Bogdanović', NULL, NULL, NULL, 'natasa.bogdanovic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Računarske mreže', NULL, '2025-11-16 05:37:35', '2025-11-16 05:37:35'),
(37, 'Marko', 'Ristić', NULL, NULL, NULL, 'marko.ristic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Elektronika', NULL, '2025-11-16 05:37:35', '2025-11-16 05:37:35'),
(38, 'Goran', 'Janković', NULL, NULL, NULL, 'goran.jankovic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Informatika', NULL, '2025-11-16 05:37:35', '2025-11-16 05:37:35'),
(39, 'Tamara', 'Milošević', NULL, NULL, NULL, 'tamara.milosevic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Matematika', NULL, '2025-11-16 05:37:35', '2025-11-16 05:37:35'),
(40, 'Vladimir', 'Kostić', NULL, NULL, NULL, 'vladimir.kostic@zmaj.univ', '00624b02e1f9b996a3278f559d5d55313552ad2c0bafc82adfd975c12df61eaf', 'profesor', NULL, 'Informacioni sistemi', NULL, '2025-11-16 05:37:35', '2025-11-16 05:37:35'),
(41, 'Luka', 'Petrović', NULL, NULL, NULL, 's010@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT010', 'Internet tehnologije', 1, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(42, 'Mina', 'Jovanović', NULL, NULL, NULL, 's011@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT011', 'Internet tehnologije', 1, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(43, 'Nikola', 'Stefanović', NULL, NULL, NULL, 's012@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT012', 'Internet tehnologije', 2, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(44, 'Sara', 'Pavlović', NULL, NULL, NULL, 's013@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT013', 'Internet tehnologije', 2, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(45, 'Jelena', 'Mitić', NULL, NULL, NULL, 's014@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT014', 'Internet tehnologije', 3, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(46, 'Vuk', 'Đorđević', NULL, NULL, NULL, 's015@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT015', 'Internet tehnologije', 3, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(47, 'Ana', 'Stanković', NULL, NULL, NULL, 's016@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'SI016', 'Softversko inženjerstvo', 1, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(48, 'Marko', 'Milošević', NULL, NULL, NULL, 's017@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'SI017', 'Softversko inženjerstvo', 2, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(49, 'Milica', 'Ilić', NULL, NULL, NULL, 's018@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'SI018', 'Softversko inženjerstvo', 3, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(50, 'Filip', 'Kovačević', NULL, NULL, NULL, 's019@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'SI019', 'Softversko inženjerstvo', 4, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(51, 'Teodora', 'Marković', NULL, NULL, NULL, 's020@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'RM020', 'Računarske mreže', 1, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(52, 'Stefan', 'Živković', NULL, NULL, NULL, 's021@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'RM021', 'Računarske mreže', 2, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(53, 'Andrija', 'Stojanović', NULL, NULL, NULL, 's022@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'RM022', 'Računarske mreže', 3, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(54, 'Marija', 'Jokić', NULL, NULL, NULL, 's023@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'RM023', 'Računarske mreže', 4, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(55, 'Ilija', 'Filipović', NULL, NULL, NULL, 's024@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'EL024', 'Elektronika', 1, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(56, 'Dunja', 'Vasić', NULL, NULL, NULL, 's025@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'EL025', 'Elektronika', 2, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(57, 'Petar', 'Lazarević', NULL, NULL, NULL, 's026@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'EL026', 'Elektronika', 3, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(58, 'Nina', 'Trajković', NULL, NULL, NULL, 's027@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'EL027', 'Elektronika', 4, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(59, 'Uroš', 'Rajković', NULL, NULL, NULL, 's028@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IS028', 'Informacioni sistemi', 1, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(60, 'Jovana', 'Stanić', NULL, NULL, NULL, 's029@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IS029', 'Informacioni sistemi', 2, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(61, 'Ognjen', 'Mladenović', NULL, NULL, NULL, 's030@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IS030', 'Informacioni sistemi', 3, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(62, 'Helena', 'Pantić', NULL, NULL, NULL, 's031@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IS031', 'Informacioni sistemi', 4, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(63, 'Katarina', 'Đurić', NULL, NULL, NULL, 's032@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'IT032', 'Internet tehnologije', 4, '2025-11-16 05:37:55', '2025-11-16 05:37:55'),
(64, 'Miloš', 'Vučićević', NULL, NULL, NULL, 's033@zmaj.univ', '19b9dd3e24fad97f47400340f81e118ca3f88be2ee3503b34b9bde0ad5ad7ebd', 'student', 'SI033', 'Softversko inženjerstvo', 4, '2025-11-16 05:37:55', '2025-11-16 05:37:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `fk_announcement_author` (`autor_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `sifra` (`sifra`),
  ADD KEY `fk_courses_profesor` (`profesor_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD UNIQUE KEY `uq_enroll_student_course` (`student_id`,`course_id`),
  ADD KEY `fk_enroll_course` (`course_id`);

--
-- Indexes for table `exam_applications`
--
ALTER TABLE `exam_applications`
  ADD PRIMARY KEY (`application_id`),
  ADD UNIQUE KEY `uq_app_student_course_period` (`student_id`,`course_id`,`period_id`),
  ADD KEY `fk_app_course` (`course_id`),
  ADD KEY `fk_app_period` (`period_id`);

--
-- Indexes for table `exam_periods`
--
ALTER TABLE `exam_periods`
  ADD PRIMARY KEY (`period_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD KEY `fk_grade_student` (`student_id`),
  ADD KEY `fk_grade_course` (`course_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `exam_applications`
--
ALTER TABLE `exam_applications`
  MODIFY `application_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_periods`
--
ALTER TABLE `exam_periods`
  MODIFY `period_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_announcement_author` FOREIGN KEY (`autor_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_courses_profesor` FOREIGN KEY (`profesor_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `fk_enroll_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_enroll_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_applications`
--
ALTER TABLE `exam_applications`
  ADD CONSTRAINT `fk_app_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_app_period` FOREIGN KEY (`period_id`) REFERENCES `exam_periods` (`period_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_app_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `fk_grade_application` FOREIGN KEY (`application_id`) REFERENCES `exam_applications` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grade_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grade_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
