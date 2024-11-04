-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2024 at 08:33 AM
-- Server version: 10.5.6-MariaDB-log
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `percobaan2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('0dBiZbP2Z4MmCbu8', 's:7:\"forever\";', 2045285518),
('0xx78W81E1RvNJSj', 's:7:\"forever\";', 2044326257),
('1W2TLSSQ7eFMxFg4', 's:7:\"forever\";', 2045115503),
('24mXzHtuxuM7rJc6', 's:7:\"forever\";', 2043759269),
('2bdJBmlpMjQ7eoO0', 's:7:\"forever\";', 2044326300),
('2BsH1ZggGNxkPHFb', 's:7:\"forever\";', 2044324229),
('2rHRXwMWhCVJIZv2', 's:7:\"forever\";', 2044600663),
('2wdQS18ts0jb2SlR', 's:7:\"forever\";', 2045115819),
('3YXfl54hIcviJJVP', 's:7:\"forever\";', 2045553560),
('4I8fsO6CLpVegbi0', 's:7:\"forever\";', 2045005475),
('4NFKFlF3yeF1OpR5', 's:7:\"forever\";', 2044402987),
('4qneWMpIx8RR0OIU', 's:7:\"forever\";', 2043236634),
('4zpSjwYDRelPp1sx', 's:7:\"forever\";', 2045555152),
('5Jfsyx8bOUiDULOq', 's:7:\"forever\";', 2043627782),
('6aMScy1m7pLueVRC', 's:7:\"forever\";', 2044324337),
('6okF8DcsnQOwPsgB', 's:7:\"forever\";', 2043304375),
('7E8GP4ObSDKbebhm', 's:7:\"forever\";', 2043759795),
('7LqpYOSb641vSUHB', 's:7:\"forever\";', 2044260890),
('8DBFWMg6O1VSkUf2', 's:7:\"forever\";', 2043759051),
('8s1KMcIIqyR5aQ69', 's:7:\"forever\";', 2044259039),
('9rkFTflV4x1baULU', 's:7:\"forever\";', 2044324088),
('AGaYf9NxeNO85rqk', 's:7:\"forever\";', 2045551345),
('aoUeYCwSREexIceW', 's:7:\"forever\";', 2044260820),
('B9FavAkLe9IBwQTV', 's:7:\"forever\";', 2045009325),
('BaGs5qo2cbB70S5R', 's:7:\"forever\";', 2043759953),
('c5BEMDeDTHjXHl5n', 's:7:\"forever\";', 2043759143),
('cbWjJXJbJYDcfQne', 's:7:\"forever\";', 2043375538),
('CFsBW2XvoRL5ucex', 's:7:\"forever\";', 2043759242),
('CgJq7u0yCKUifiyx', 's:7:\"forever\";', 2044517111),
('CquCIXP1fZWEZEwG', 's:7:\"forever\";', 2044577641),
('D887kazYGKiSuntu', 's:7:\"forever\";', 2043759158),
('ddxGUKvj6CejHeiF', 's:7:\"forever\";', 2043758164),
('e3bNwsTsIjZIKLXI', 's:7:\"forever\";', 2045448480),
('ekB0AtA67QqZJEXC', 's:7:\"forever\";', 2043759254),
('f4r0KBdeAsJxMZSs', 's:7:\"forever\";', 2043238620),
('f6t55hVtvqco8S3d', 's:7:\"forever\";', 2044260847),
('FDFS3ExScp2SOZML', 's:7:\"forever\";', 2045279629),
('Fp2xqHd2bLCK21ut', 's:7:\"forever\";', 2044431782),
('gFcuziGKgUuVh0xy', 's:7:\"forever\";', 2044324311),
('gzVELrHMTVeAnMq1', 's:7:\"forever\";', 2043795470),
('hce0fho6kzDrlL7D', 's:7:\"forever\";', 2044487670),
('HqO9FB08otzvDrpl', 's:7:\"forever\";', 2043753061),
('hR7zCnvoXDTCxjgn', 's:7:\"forever\";', 2045710088),
('iJGmHoFz7daqYOrv', 's:7:\"forever\";', 2045459743),
('iJOSmlrjCy423Eft', 's:7:\"forever\";', 2043627628),
('imNuYmSHRRndtJsu', 's:7:\"forever\";', 2043761693),
('IMxeSlf0m9G9cNZ5', 's:7:\"forever\";', 2043759019),
('jmWnM6StLnr5vsgv', 's:7:\"forever\";', 2044434036),
('jpkOECtMT3pDcsU2', 's:7:\"forever\";', 2043626169),
('JT4KLHOlarPa63ZJ', 's:7:\"forever\";', 2044428105),
('JYzsNQhRkeu9EgAZ', 's:7:\"forever\";', 2045556569),
('kg1KSKU9i7nUWhLY', 's:7:\"forever\";', 2044344400),
('KL2p7C0f5bv6VBuN', 's:7:\"forever\";', 2044583614),
('LHb1WOGAwZuWsyby', 's:7:\"forever\";', 2043759781),
('LVTGG4I9mrEF0k0E', 's:7:\"forever\";', 2045710052),
('m6qywx9UvmYbxIQm', 's:7:\"forever\";', 2043237545),
('MbdEyt59oyu8X9uH', 's:7:\"forever\";', 2043759642),
('MKOBsJOTHDCwbfBq', 's:7:\"forever\";', 2044517137),
('mnDVwxhr4y3BsWts', 's:7:\"forever\";', 2043753007),
('mQk3mdXZxBHtXQgz', 's:7:\"forever\";', 2044344436),
('MqOXuT3fwlvcmCCr', 's:7:\"forever\";', 2043759007),
('n0Ye3cABvp2w1L6i', 's:7:\"forever\";', 2043759503),
('NJFdvbW7fEhvXENk', 's:7:\"forever\";', 2044324075),
('NMv7ZQAD1XOtMKSV', 's:7:\"forever\";', 2043760151),
('NumAMeyLgKGapOd5', 's:7:\"forever\";', 2044573041),
('O0IkjrhuYq6VFPce', 's:7:\"forever\";', 2044600810),
('ODhETxEuQbIEKre0', 's:7:\"forever\";', 2043752994),
('ogIZQ72xlSWaBYuO', 's:7:\"forever\";', 2044600861),
('oOnnscht8ZdBhcew', 's:7:\"forever\";', 2044496906),
('oQOBSCqN7NJyN5Wa', 's:7:\"forever\";', 2044509056),
('oW97yBeDEYj50k5W', 's:7:\"forever\";', 2045115876),
('oX72HKiXl6S2J9b9', 's:7:\"forever\";', 2045459804),
('oxqK5GUuo0frjvwQ', 's:7:\"forever\";', 2043759625),
('p06dqJm9y32CDnwS', 's:7:\"forever\";', 2043759940),
('pBVlbGOsKL19XKiX', 's:7:\"forever\";', 2044259827),
('PmJYSBOtseMhm9Jq', 's:7:\"forever\";', 2045281715),
('pmoEdqOjuR1Rz7om', 's:7:\"forever\";', 2043630525),
('pVZpcQHhiNzJ7Srh', 's:7:\"forever\";', 2044601999),
('qbhhVsUa3GBdOSeO', 's:7:\"forever\";', 2043761201),
('QctP1TLfZ8pQ3v2c', 's:7:\"forever\";', 2045116103),
('Qga7dXicaVUVEM9M', 's:7:\"forever\";', 2043760142),
('qQ2KWO1NoNlyJFCj', 's:7:\"forever\";', 2043759496),
('R3CVlj6b0B37LcDH', 's:7:\"forever\";', 2043759382),
('rM4hJdYxHtK80tsq', 's:7:\"forever\";', 2044335668),
('rnUojqYQcqgncfwF', 's:7:\"forever\";', 2045009277),
('rWlK2mwuLpQcgPFW', 's:7:\"forever\";', 2044262052),
('snPniYFojOQIdBHX', 's:7:\"forever\";', 2043627733),
('SSCyqEWkONUBYsha', 's:7:\"forever\";', 2044607956),
('SxFhlzM6K7cmsluV', 's:7:\"forever\";', 2044609457),
('sYd13k6M2Yjm51TB', 's:7:\"forever\";', 2045279601),
('TgrEGw2puC3jdIdk', 's:7:\"forever\";', 2044515814),
('tJRKpAQdsIhcCBhe', 's:7:\"forever\";', 2044341513),
('trCfjvyIuyeeg7m1', 's:7:\"forever\";', 2045115971),
('TWmLJ5HNvWwxQWoY', 's:7:\"forever\";', 2045115850),
('txgYKWakC3MpGdXt', 's:7:\"forever\";', 2044600871),
('udukbhJ6h5H5SoTm', 's:7:\"forever\";', 2044324059),
('UFRbVLaoUgDJOLAa', 's:7:\"forever\";', 2043795484),
('UGu3Nt6mEmZuh86l', 's:7:\"forever\";', 2044491343),
('uhx2Apf3LXkU288G', 's:7:\"forever\";', 2043759034),
('uYxsiI7CVWmjFTmN', 's:7:\"forever\";', 2045553577),
('vI5kvILQuskzxVci', 's:7:\"forever\";', 2044422898),
('vp7tR07sjNTtw4I6', 's:7:\"forever\";', 2044326207),
('wb3wcck0inCzoXpo', 's:7:\"forever\";', 2044500584),
('wGdoQillPvT0QcHk', 's:7:\"forever\";', 2045695446),
('wn9tu0ivwpHxdkdB', 's:7:\"forever\";', 2043626119),
('wuZAiGoPyb7qtLQy', 's:7:\"forever\";', 2044262086),
('xj7oI0KSUDcq4dtd', 's:7:\"forever\";', 2045526444),
('y7NYntWZrHtWxdv5', 's:7:\"forever\";', 2045556819),
('ygo9TXqVIU3OX6PS', 's:7:\"forever\";', 2045459810),
('yqdOnZdxhyai2gCK', 's:7:\"forever\";', 2044601970),
('YWdsULGeHSwjBuA3', 's:7:\"forever\";', 2043752768),
('YzoDqxmNgh9NxCUZ', 's:7:\"forever\";', 2043759089),
('zaujgEsKkg9HVRZm', 's:7:\"forever\";', 2044259014),
('zJUQb4kLFnnGS4Sg', 's:7:\"forever\";', 2044583533),
('Zp2LDEjweOrthQzO', 's:7:\"forever\";', 2045116003);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jawabans`
--

CREATE TABLE `jawabans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ujian_id` bigint(20) UNSIGNED NOT NULL,
  `soal_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jawabans`
--

INSERT INTO `jawabans` (`id`, `ujian_id`, `soal_id`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 1, 19, 'A', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(2, 1, 20, 'B', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(3, 1, 21, 'C', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(4, 1, 22, 'E', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(5, 1, 23, 'A', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(6, 1, 24, 'D', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(7, 1, 25, 'A', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(8, 1, 26, 'D', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(9, 1, 27, 'D', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(10, 1, 28, 'E', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(11, 1, 29, 'A', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(12, 1, 30, 'A', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(13, 1, 31, 'C', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(14, 1, 32, 'C', '2024-10-31 11:14:07', '2024-10-31 11:14:07'),
(15, 1, 33, 'B', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(16, 1, 34, 'C', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(17, 1, 35, 'C', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(18, 1, 36, 'D', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(19, 1, 37, 'A', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(20, 1, 38, 'D', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(21, 1, 39, 'D', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(22, 1, 40, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(23, 1, 41, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(24, 1, 42, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(25, 1, 43, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(26, 1, 44, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(27, 1, 45, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(28, 1, 46, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(29, 1, 47, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(30, 1, 48, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(31, 1, 49, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(32, 1, 50, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(33, 1, 51, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(34, 1, 52, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(35, 1, 53, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(36, 1, 54, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(37, 1, 55, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(38, 1, 56, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(39, 1, 57, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(40, 1, 58, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(41, 1, 59, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08'),
(42, 1, 60, '', '2024-10-31 11:14:08', '2024-10-31 11:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `kategori_id`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 1, 'UMUM', '2024-10-29 10:24:56', '2024-10-29 10:24:56'),
(2, 2, 'UMUM', '2024-10-29 10:24:56', '2024-10-29 10:24:56'),
(3, 3, 'UMUM', '2024-10-29 10:24:56', '2024-10-29 10:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'BAHASA INGGRIS', '2024-10-29 17:21:18', '2024-10-29 17:21:18'),
(2, 'PENALARAN DAN PEMECAHAN MASALAH', '2024-10-29 17:21:18', '2024-10-29 17:21:18'),
(3, 'PSIKOLOGI', '2024-10-29 17:23:39', '2024-10-29 17:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `kunci_jawabans`
--

CREATE TABLE `kunci_jawabans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soal_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kunci_jawabans`
--

INSERT INTO `kunci_jawabans` (`id`, `soal_id`, `jawaban`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 19, 'A', 5, '2024-10-30 08:52:46', '2024-10-30 08:52:46'),
(2, 20, 'B', 5, '2024-10-30 08:53:01', '2024-10-30 08:53:01'),
(3, 21, 'E', 5, '2024-10-30 08:53:16', '2024-10-30 08:53:16'),
(4, 22, 'D', 5, '2024-10-30 08:53:35', '2024-10-30 08:53:35'),
(5, 23, 'E', 5, '2024-10-30 08:53:46', '2024-10-30 08:53:46'),
(6, 24, 'D', 5, '2024-10-30 08:53:57', '2024-10-30 08:53:57'),
(7, 25, 'A', 5, '2024-10-30 08:54:07', '2024-10-30 08:54:07'),
(8, 26, 'D', 5, '2024-10-30 09:09:02', '2024-10-30 09:09:02'),
(9, 27, 'D', 5, '2024-10-30 09:09:16', '2024-10-30 09:09:16'),
(10, 28, 'E', 5, '2024-10-30 09:09:33', '2024-10-30 09:09:33'),
(11, 29, 'D', 5, '2024-10-30 09:09:43', '2024-10-30 09:09:43'),
(12, 30, 'A', 5, '2024-10-30 09:09:56', '2024-10-30 09:09:56'),
(13, 31, 'C', 5, '2024-10-30 09:10:08', '2024-10-30 09:10:08'),
(14, 32, 'C', 5, '2024-10-30 09:10:24', '2024-10-30 09:10:24'),
(15, 33, 'B', 5, '2024-10-31 01:21:36', '2024-10-31 01:21:36'),
(16, 34, 'C', 5, '2024-10-31 01:21:49', '2024-10-31 01:21:49'),
(17, 35, 'C', 5, '2024-10-31 01:21:58', '2024-10-31 01:21:58'),
(18, 36, 'D', 5, '2024-10-31 01:22:08', '2024-10-31 01:22:08'),
(19, 37, 'C', 5, '2024-10-31 01:22:19', '2024-10-31 01:22:19'),
(20, 38, 'B', 5, '2024-10-31 01:22:29', '2024-10-31 01:22:29'),
(21, 39, 'D', 5, '2024-10-31 01:22:39', '2024-10-31 01:22:39'),
(22, 40, 'D', 5, '2024-10-31 04:15:06', '2024-10-31 04:15:06'),
(23, 41, 'A', 5, '2024-10-31 04:15:15', '2024-10-31 04:15:15'),
(24, 42, 'C', 5, '2024-10-31 04:15:24', '2024-10-31 04:15:24'),
(25, 43, 'B', 5, '2024-10-31 04:15:35', '2024-10-31 04:15:35'),
(26, 44, 'E', 5, '2024-10-31 04:15:46', '2024-10-31 04:15:46'),
(27, 45, 'D', 5, '2024-10-31 04:16:01', '2024-10-31 04:16:01'),
(28, 46, 'A', 5, '2024-10-31 04:16:15', '2024-10-31 04:16:15'),
(29, 47, 'E', 5, '2024-10-31 04:30:11', '2024-10-31 04:30:11'),
(30, 48, 'D', 5, '2024-10-31 04:30:21', '2024-10-31 04:30:21'),
(31, 49, 'B', 5, '2024-10-31 04:30:28', '2024-10-31 04:30:28'),
(32, 50, 'C', 5, '2024-10-31 04:30:36', '2024-10-31 04:30:36'),
(33, 51, 'B', 5, '2024-10-31 04:30:44', '2024-10-31 04:30:44'),
(34, 52, 'C', 5, '2024-10-31 04:30:51', '2024-10-31 04:30:51'),
(35, 53, 'C', 5, '2024-10-31 04:31:09', '2024-10-31 04:31:09'),
(36, 54, 'E', 5, '2024-10-31 04:43:39', '2024-10-31 04:43:39'),
(37, 55, 'D', 5, '2024-10-31 04:43:47', '2024-10-31 04:43:47'),
(38, 56, 'D', 5, '2024-10-31 04:43:55', '2024-10-31 04:43:55'),
(39, 57, 'C', 5, '2024-10-31 04:44:07', '2024-10-31 04:44:07'),
(40, 58, 'D', 5, '2024-10-31 04:44:15', '2024-10-31 04:44:15'),
(41, 59, 'A', 5, '2024-10-31 04:44:24', '2024-10-31 04:44:24'),
(42, 60, 'C', 5, '2024-10-31 04:44:38', '2024-10-31 04:44:38'),
(43, 61, 'D', 5, '2024-11-01 11:08:01', '2024-11-01 11:08:01'),
(44, 62, 'D', 5, '2024-11-01 11:08:15', '2024-11-01 11:08:15'),
(45, 63, 'C', 5, '2024-11-01 11:08:26', '2024-11-01 11:08:26'),
(46, 64, 'E', 5, '2024-11-01 11:08:37', '2024-11-01 11:08:37'),
(47, 65, 'D', 5, '2024-11-01 11:08:47', '2024-11-01 11:08:47'),
(48, 66, 'B', 5, '2024-11-01 11:08:57', '2024-11-01 11:08:57'),
(49, 67, 'B', 5, '2024-11-01 11:09:05', '2024-11-01 11:09:05'),
(50, 68, 'C', 5, '2024-11-02 04:01:03', '2024-11-02 04:01:03'),
(51, 69, 'A', 5, '2024-11-02 04:01:14', '2024-11-02 04:01:14'),
(52, 70, 'E', 5, '2024-11-02 04:01:30', '2024-11-02 04:01:30'),
(53, 71, 'B', 5, '2024-11-02 04:01:43', '2024-11-02 04:01:43'),
(54, 72, 'C', 5, '2024-11-02 04:01:58', '2024-11-02 04:01:58'),
(55, 73, 'C', 5, '2024-11-02 04:02:09', '2024-11-02 04:02:09'),
(56, 74, 'D', 5, '2024-11-02 04:02:19', '2024-11-02 04:02:19'),
(57, 75, 'E', 5, '2024-11-02 04:17:00', '2024-11-02 04:17:00'),
(58, 76, 'B', 5, '2024-11-02 04:17:10', '2024-11-02 04:17:10'),
(59, 77, 'C', 5, '2024-11-02 04:17:20', '2024-11-02 04:17:20'),
(60, 78, 'B', 5, '2024-11-02 04:17:31', '2024-11-02 04:17:31'),
(61, 79, 'D', 5, '2024-11-02 04:17:42', '2024-11-02 04:17:42'),
(62, 80, 'E', 5, '2024-11-02 04:17:51', '2024-11-02 04:17:51'),
(63, 81, 'C', 5, '2024-11-02 04:17:59', '2024-11-02 04:17:59'),
(64, 82, 'B', 5, '2024-11-03 13:55:39', '2024-11-03 13:55:39'),
(65, 83, 'E', 5, '2024-11-03 13:55:48', '2024-11-03 13:55:48'),
(66, 84, 'D', 5, '2024-11-03 13:55:57', '2024-11-03 13:55:57'),
(67, 85, 'A', 5, '2024-11-03 13:56:14', '2024-11-03 13:56:14'),
(68, 86, 'C', 5, '2024-11-03 13:56:22', '2024-11-03 13:56:22'),
(69, 87, 'E', 5, '2024-11-03 13:56:31', '2024-11-03 13:56:31'),
(70, 88, 'E', 5, '2024-11-03 14:06:10', '2024-11-03 14:06:10'),
(71, 89, 'B', 5, '2024-11-03 14:06:25', '2024-11-03 14:06:25'),
(72, 90, 'C', 5, '2024-11-03 14:06:37', '2024-11-03 14:06:37'),
(73, 91, 'D', 5, '2024-11-03 14:06:48', '2024-11-03 14:06:48'),
(74, 92, 'B', 5, '2024-11-03 14:06:57', '2024-11-03 14:06:57'),
(75, 93, 'E', 5, '2024-11-03 14:18:51', '2024-11-03 14:18:51'),
(76, 94, 'C', 5, '2024-11-03 14:19:01', '2024-11-03 14:19:01'),
(77, 95, 'A', 5, '2024-11-03 14:19:11', '2024-11-03 14:19:11'),
(78, 96, 'C', 5, '2024-11-03 14:19:21', '2024-11-03 14:19:21'),
(79, 97, 'D', 5, '2024-11-03 14:19:31', '2024-11-03 14:19:31'),
(80, 98, 'B', 5, '2024-11-03 14:19:43', '2024-11-03 14:19:43'),
(81, 99, 'C', 5, '2024-11-03 14:19:53', '2024-11-03 14:19:53'),
(82, 100, 'D', 5, '2024-11-03 14:33:36', '2024-11-03 14:33:36'),
(83, 101, 'B', 5, '2024-11-03 14:33:50', '2024-11-03 14:33:50'),
(84, 102, 'A', 5, '2024-11-03 14:34:03', '2024-11-03 14:34:03'),
(85, 103, 'E', 5, '2024-11-03 14:34:12', '2024-11-03 14:34:12'),
(86, 104, 'C', 5, '2024-11-03 14:34:21', '2024-11-03 14:34:21'),
(87, 105, 'D', 5, '2024-11-03 14:34:30', '2024-11-03 14:34:30'),
(88, 106, 'B', 5, '2024-11-03 14:34:38', '2024-11-03 14:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_02_010956_create_personal_access_tokens_table', 1),
(5, '2024_10_02_013154_laratrust_setup_tables', 1),
(22, '2024_10_07_033443_create_soals_table', 2),
(23, '2024_10_07_034007_create_kunci_jawabans_table', 2),
(24, '2024_10_07_035422_create_paket_tos_table', 2),
(25, '2024_10_07_035904_create_pelaksanaan_tos_table', 2),
(26, '2024_10_07_083000_create_kategoris_table', 2),
(27, '2024_10_09_013556_create_jenis_table', 2),
(30, '2024_10_16_010919_create_ujians_table', 3),
(31, '2024_10_16_011320_create_jawabans_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `paket_tos`
--

CREATE TABLE `paket_tos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlh_soal` int(11) NOT NULL,
  `waktu` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `paket_tos`
--

INSERT INTO `paket_tos` (`id`, `paket`, `jlh_soal`, `waktu`, `created_at`, `updated_at`) VALUES
(8, 'PAKET 1', 42, '50', '2024-10-29 10:26:08', '2024-10-31 04:47:23'),
(9, 'PAKET 2', 46, '52', '2024-11-01 10:42:25', '2024-11-03 14:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(2, 'users-read', 'Read Users', 'Read Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(3, 'users-update', 'Update Users', 'Update Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2024-10-02 02:36:19', '2024-10-02 02:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(2, 'administrator', 'Administrator', 'Administrator', '2024-10-02 02:36:19', '2024-10-02 02:36:19'),
(3, 'user', 'User', 'User', '2024-10-02 02:36:19', '2024-10-02 02:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 5, 'App\\Models\\User'),
(3, 13, 'App\\Models\\User'),
(3, 14, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('09GhFsSfb79lIxTh8TLqvz3XNCgVrvG5cQyttKI9', NULL, '103.179.248.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVllRNTlkOWt6bG9oOEtna1plaUU5ZUJGcGx0U3dnSDlScW9zNXlCZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vcGVyY29iYWFuMi50ZWJpbmd0aW5nZ2lrb3RhLmdvLmlkL3N0b3JhZ2UvaW1hZ2VzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730459393),
('10sgLCXb2VqtyTBU8R2SZADONAgWpVAWagg9zBg7', NULL, '103.179.248.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnpCNmxlaW1hN2JzQm1HT09sSEVLODVIT1hVN1hKVjg4MW1YYmRuWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vcGVyY29iYWFuMi50ZWJpbmd0aW5nZ2lrb3RhLmdvLmlkL3N0b3JhZ2UvaW1hZ2VzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730634401),
('ArjMb9iXIgzjXCqqBguu5aJRmhD3mPIQNQ50JfWw', 5, '10.0.139.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTIxaFdKUGh2QjhISWg5UWhhRFFFWnQxWGhIaW5tMGtDcEZZNUVUYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vcGVyY29iYWFuMi50ZWJpbmd0aW5nZ2lrb3RhLmdvLmlkL2FwaS9zb2FsLzI0L2t1bmNpLWphd2FiYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730279435),
('cKNuRetDxSYb97lPoFbBW9JfoXerGMi27KPDCjcF', NULL, '103.137.125.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnl1Y2hwcXZkWTM1QkpPU1RMUFVVZXFqcElDeXJhY2dNZTdOdUY3SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vcGVyY29iYWFuMi50ZWJpbmd0aW5nZ2lrb3RhLmdvLmlkL3N0b3JhZ2UvaW1hZ2VzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730350096),
('mq8dtYT5dMzb1IxheOT2A8ZN4492oTBFL5tQEbfz', NULL, '10.0.139.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXY0VHB2bU40cFJyQkw3ZVpOSXIybnI4bHlhUmRzSVJMSjI4ZFhLdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vcGVyY29iYWFuMi50ZWJpbmd0aW5nZ2lrb3RhLmdvLmlkL3N0b3JhZ2UvaW1hZ2VzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730335766),
('n9XEzzrjJx4GpSdgsURb10GwlyqFHygAASfVCJt5', NULL, '103.179.248.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzRzNUxjQ2JiNTF5OTcwaXJ2eHdPWTVuNThDUk1va3pzbTBGNzFtZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vcGVyY29iYWFuMi50ZWJpbmd0aW5nZ2lrb3RhLmdvLmlkL3N0b3JhZ2UvaW1hZ2VzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730519108),
('ZalzXPYWErN1NP9Xdy1y9D8euyhakIv9Pp0mAIUY', NULL, '103.179.248.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGdaSGNZOXQxWUFHaEpuUDhmeGsxR1VTNFpiVzVLYUNQMWlKbTk5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vcGVyY29iYWFuMi50ZWJpbmd0aW5nZ2lrb3RhLmdvLmlkL3N0b3JhZ2UvaW1hZ2VzL3VuZGVmaW5lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730371178);

-- --------------------------------------------------------

--
-- Table structure for table `soals`
--

CREATE TABLE `soals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `paket_to_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_id` bigint(20) UNSIGNED NOT NULL,
  `soal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `soals`
--

INSERT INTO `soals` (`id`, `user_id`, `paket_to_id`, `jenis_id`, `soal`, `pilihan1`, `pilihan2`, `pilihan3`, `pilihan4`, `pilihan5`, `created_at`, `updated_at`) VALUES
(19, 5, 8, 2, '<p>Per&nbsp;April&nbsp;2020,&nbsp;Utang&nbsp;Pemerintah&nbsp;Capai&nbsp;Rp5.172&nbsp;Triliun.&nbsp;Posisi&nbsp;utang&nbsp;pemerintah per April 2020 sebesar Rp5.172,48 triliun. Angka ini setara dengan&nbsp;31,78%&nbsp;terhadap&nbsp;produk&nbsp;domestik&nbsp;bruto&nbsp;(PDB)&nbsp;dan&nbsp;terhitung&nbsp;naik&nbsp;dari&nbsp;periode&nbsp;sebelumnya. Komposisinya, sebesar Rp4.338,44 triliun surat berharga negara&nbsp;(SBN) dengan SBN domestik sebesar Rp3.112,15 triliun dan SBN valutas asing&nbsp;Rp1.226,29&nbsp;triliun.</p><p>Sementara&nbsp;pinjaman&nbsp;sebesar&nbsp;Rp834,04&nbsp;triliun&nbsp;dengan&nbsp;pinjaman&nbsp;luar&nbsp;negeri&nbsp;sebesar&nbsp;Rp824,12&nbsp;triliun&nbsp;dan&nbsp;pinjaman&nbsp;dalam&nbsp;negeri&nbsp;Rp9,92&nbsp;triliun.&nbsp;Dalam&nbsp;laporan&nbsp;APBN&nbsp;KiTa&nbsp;Mei&nbsp;2020&nbsp;disebutkan&nbsp;pandemi&nbsp;Covid-19&nbsp;merupakan&nbsp;tantangan, tetapi pemerintah tetap berupaya mengelola utang dengan pruden&nbsp;dan&nbsp;akuntabel.&nbsp;Hal&nbsp;ini&nbsp;untuk&nbsp;mendukung&nbsp;APBN&nbsp;yang&nbsp;semakin&nbsp;kredibel.</p><p>Dengan masalah pandemi yang semakin hari semakin tidak menemukan titik&nbsp;kunci,&nbsp;pemerintah&nbsp;seakan&nbsp;dipaksa&nbsp;untuk&nbsp;terus&nbsp;melakukan&nbsp;kegiatan&nbsp;utang&nbsp;karena banyak sekali terbentur dengan melemahnya faktor ekonomi Indonesia.&nbsp;Prediksi menyatakan bahwa angka utang akan semakin naik jika pandemi tidak&nbsp;semakin&nbsp;menurun.</p><p>&nbsp;</p><figure class=\"image\"><img style=\"aspect-ratio:574/320;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730200243.png\" width=\"574\" height=\"320\"></figure><p>&nbsp;</p><p>Simpulan&nbsp;yang&nbsp;tepat&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama&nbsp;adalah....</p>', 'Terjadi kenaikan utang pemerintah per April 2020', 'Terjadi penurunan utang pemerintah per April 2020', 'Utang pemerintah terhitung stabil per April 2020', 'Utang pemerintah setara dengan PDB per April 2020', 'Utang pemerintah terdiri dari dua komposisi, SBN domestik dan asing', '2024-10-29 11:12:13', '2024-10-29 11:15:06'),
(20, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:574/320;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730203373.png\" width=\"574\" height=\"320\"></figure><p>Simpulan&nbsp;yang&nbsp;dapat&nbsp;ditarik&nbsp;dari&nbsp;paragraf&nbsp;kedua&nbsp;adalah...</p>', 'Pandemi Covid-19 adala tantangan terbesar pemerintah', 'Pemerintah diharap bijak mengolah utang dengan maksimal', 'Pandemi Covid-19 memaksa pemerintah untuk berutang', 'APBN Indonesia makin kredibel karena Covid-19', 'Utang pemerintah mencapai Rp834,04 triliun akibat Covid-19', '2024-10-29 12:03:12', '2024-10-29 12:03:12'),
(21, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:574/320;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730203453.png\" width=\"574\" height=\"320\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;TEPAT&nbsp;berdasarkan&nbsp;teks...</p>', 'Selama   ini,   pemerintah   mengolah   piutang	negara dengan tidak kredibel', 'Korban pandemi semakin hari semakin tinggi dan pemerintah semakin kualahan', 'Angka utang pemerintah semakin naik di setiap tahunnya akibat banyak hal', 'Pandemi Covid-19 adalah bencana terbesar Indonesia dalam sejarah', 'Pemerintah dinilai tidak siap secara finansial terhadap pandemi Covid- 19', '2024-10-29 12:05:49', '2024-10-29 12:05:49'),
(22, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:574/320;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730203657.png\" width=\"574\" height=\"320\"></figure><p>&nbsp;</p><p>Berikut adalah pernyataan yang PALING MUNGKIN berdasarkan paragraf&nbsp;kedua&nbsp;adalah...</p>', 'APBN yang kredibel menjadi jaminan pemerintah dalam membayar utang', 'Pemerintah diketahui kurang cukup kredibel dalam mengelola utang negara', 'Pandemi Covid-19 dinilai akan enyah dari Indonesia dalam waktu yang lama', 'Pandemi Covid-19 dinilai sebagai bencana besar di Indonesia saat ini', 'Pinjaman besar pemerintah akibat Covid-19 diprediksi akan selalu menanjak', '2024-10-29 12:08:54', '2024-10-29 12:08:54'),
(23, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:574/320;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730277920.png\" width=\"574\" height=\"320\"></figure><p>&nbsp;</p><p>Berikut&nbsp;adalah&nbsp;selisih&nbsp;yang&nbsp;benar&nbsp;berdasarkan&nbsp;data&nbsp;grafik...</p>', 'SBN Valas dan Domestik mencapai Rp2 triliun', 'SBN Valas dan Pinjaman Dalam Negeri mencapai Rp1,2 triliun', 'Pinjaman Dalam dan Luar Negeri tidak mencapai Rp800 triliun', 'Pinjaman Dalam Negeri dan SBN Domestik tidak mencapai Rp2 ribu triliun', 'SBN Valas dan Pinjaman Luar Negeri mencapai Rp400 triliun', '2024-10-30 08:47:18', '2024-10-30 08:47:18'),
(24, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:574/320;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457079.png\" width=\"574\" height=\"320\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;TIDAK&nbsp;MUNGKIN&nbsp;berdasarkan&nbsp;paragraf&nbsp;ketiga…</p>', 'Masalah pandemi Covid-19 semakin hari semakin tidak menemukan titik kunci', 'Pemerintah berutang karena adanya Covid-19', 'Pemerintah akan kesulitan membayar utang jika pandemi tidak segera berakhir', 'Pemerintah akan kesulitan berutang jika pandemi tidak segera berakhir', 'Ekonomi Indonesia melemah karena adanya Covid-19', '2024-10-30 08:48:42', '2024-11-01 10:31:23'),
(25, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:574/320;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457042.png\" width=\"574\" height=\"320\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;KURANG&nbsp;TEPAT terhadap pemerintahan Indonesia...</p>', 'Pemerintah Indonesia dinilai kurang kredibel dalam mengolah piutang', 'Pemerintah Indonesia berutang akibat pandemi Covid-19', 'Pemerintah Indonesia berutang terhadap SBN Valas', 'Pemerintah Indonesia berutang terhadap SBN Domestik', 'Pemerintah Indonesia berutang lebih dari Rp800 triliun untuk bencana Covid-19', '2024-10-30 08:50:14', '2024-11-01 10:30:45'),
(26, 5, 8, 2, '<h4>Durasi Iklan Podcast Terbanyak</h4><p><br>Podcast atau rekaman audio yang dapat didengarkan melalui internet biasanya diselingi dengan iklan. Iklan juga menjadi sumber pendapatan podcast, serupa dengan media lainnya. Durasi yang ditawarkan pun berbeda-beda, mulai dari 15 detik hingga lebih dari 90 detik. Selama 2018, iklan podcast yang paling banyak disiarkan atau 30% dari total menghabiskan waktu 60 detik. Tepat di bawahnya, iklan berdurasi 90 detik menyusul dengan 27%. Sementara iklan yang paling sedikit ditayangkan berdurasi lebih dari 90 detik atau hanya 1% dari total. Genre podcast terpopuler adalah berita, politik, dan kejadian yang tengah hangat dibicarakan (18,4%). Selain itu, komedi (13,9%), bisnis (12,8%), pendidikan (10,6%), dan seni-hiburan (10%) masuk dalam daftar lima genre teratas. Kelima genre tersebut menghasilkan 65,7% dari total pendapatan iklan podcast pada 2018 yang mencapai US$ 479,1 juta atau Rp7 triliun (kurs Rp14.700/USD)<br>&nbsp;</p><figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:396/400;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730278607.jpg\" width=\"396\" height=\"400\"></figure><p>&nbsp;</p><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;TEPAT&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama...</p>', 'Podcast dinilai sebagai media internet yang cukup menguntungkan', 'Iklan di podcast terkesan monoton dan berulang-ulang', 'Rekaman audio di Indonesia dinilai kurang menguntungkan', 'Iklan menjadi salah satu sumber pendapatan podcast', 'Durasi iklan podcast maksimal 90 detik', '2024-10-30 08:58:17', '2024-10-30 08:58:17'),
(27, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:396/400;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457105.jpg\" width=\"396\" height=\"400\"></figure><p>Berikut&nbsp;adalah&nbsp;simpulan&nbsp;yang&nbsp;benar&nbsp;berdasarkan&nbsp;paragraf&nbsp;kedua...</p>', 'Iklan podcast bernilai fantastis', 'Iklan podcast cukup bervariasi', 'Durasi iklan podcast dianggap berlebihan', 'Durasi iklan podcast cukup variatif', 'Durasi iklan podcast cukup fleksibel', '2024-10-30 08:59:27', '2024-11-01 10:31:48'),
(28, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:396/400;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457133.jpg\" width=\"396\" height=\"400\"></figure><p>Berikut adalah pernyataan yang PALING MUNGKIN berdasarkan paragraf pertama adalah…</p>', 'Podcast adalah rekaman audio Indonesia yang fenomenal', 'Podcast adalah media Indonesia dengan banyak sekali keuntungan', 'Podcast adalah media luar negeri dengan banyak sekali keuntungan', 'Podcast adalah rekaman audio yang paling digandrungi dalam sejarah', 'Podcast adalah rekaman audio yang cukup menjanjikan saat ini', '2024-10-30 09:02:09', '2024-11-01 10:32:18'),
(29, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:396/400;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730278954.jpg\" width=\"396\" height=\"400\"></figure><p>&nbsp;</p><p>Berikut&nbsp;adalah&nbsp;simpulan&nbsp;yang&nbsp;tepat&nbsp;dari&nbsp;data&nbsp;grafik...</p>', 'Durasi iklan podcast lebih dari 90 detik adalah yang terendah', 'Durasi iklan podcast 60 detik dinilai paling efisien', 'Durasi iklan podcast 23 detik dinilai cukup efisien', 'Durasi iklan podcast cukup beragam', 'Durasi iklan podcast cukup menguntungkan', '2024-10-30 09:03:39', '2024-10-30 09:03:39'),
(30, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:396/400;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457163.jpg\" width=\"396\" height=\"400\"></figure><p>Jika&nbsp;persentase&nbsp;durasi&nbsp;iklan&nbsp;podcast&nbsp;30&nbsp;detik&nbsp;bertambah&nbsp;dua&nbsp;kali&nbsp;lipat,&nbsp;maka...</p>', 'Durasi iklan podcast 30	detik	adalah	durasi	paling	banyak ditayangkan', 'Durasi iklan podcast 30 detik adalah durasi paling berpengaruh', 'Durasi iklan podcast 30 detik adalah durasi paling rendah peminat', 'Durasi iklan podcast 30 detik adalah durasi ideal', 'Durasi iklan podcast 30 detik adalah durasi paling tidak menarik', '2024-10-30 09:05:16', '2024-11-01 10:32:46'),
(31, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:396/400;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457194.jpg\" width=\"396\" height=\"400\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;tepat&nbsp;dari&nbsp;paragraf&nbsp;ketiga...</p>', 'Genre pendidikan adalah genre paling difavoritkan di podcast', 'Genre seni-hiburan adalah genre terendah di podcast', 'Genre komedi adalah genre yang paling dicari kedua', 'Genre bisnis adalah genre paling dicari setelah seni-hiburan', 'Genre berita adalah genre dengan persentase terendah di podcast', '2024-10-30 09:07:20', '2024-11-01 10:33:18'),
(32, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:396/400;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457217.jpg\" width=\"396\" height=\"400\"></figure><p>Jika&nbsp;genre&nbsp;seni-hiburan&nbsp;menjadi&nbsp;genre&nbsp;teratas&nbsp;di&nbsp;podcast,&nbsp;maka..</p>', 'Genre bisnis menjadi genre terendah', 'Genre komedi adalah genre paling dicari', 'Genre seni-hiburan adalah genre terfavorit', 'Genre berita terkesan basi dan memaksa', 'Genre seni-hibura terkesan tidak mendidik', '2024-10-30 09:08:22', '2024-11-01 10:33:40'),
(33, 5, 8, 2, '<h4><strong>Pertumbuhan Upah di Indonesia 2017 Nomor Lima di Asia</strong></h4><p>Sejumlah negara yang menjadi barometer ekonomi di Asia Pasifik masih memperlihatkan masa suram di tahun 2017. Akan tetapi, sejumlah negara baru mulai memperlihatkan progres yang signifikan dan optimistis tahun depan, termasuk Indonesia.</p><p><br>Laporan sebuah konsultan sumber daya manusia di Singapura, Willis Towers Watson (WTW), seperti dirilis Wall Street Journal menempatkan Indonesia pada posisi lima besar dalam pertumbuhan alokasi upah tahun 2017, yakni 9 persen. Angka ini naik dari tahun 2015, sebesar 8 persen sebelum inflasi. Sejumlah negara besar seperti Jepang, Singapura, Hongkong, Australia malah mengalami penurunan bujet upah, di bawah 4 persen. Wakil Perdana Menteri Singapura, Tharman Shanmugaratnam mengatakan bahwa ekonomi Singapura masih menghadapi periode sulit tahun depan. Iklim ekonomi yang suram pada tahun 2016 telah memukul lapangan pekerjaan di sejumlah industri di negara itu. Hasil ini diperoleh WTW dari survei yang dilakukan pada bulan Juli 2016 terhadap 4.000 perusahaan di 22 pasar Asia Pasifik.</p><p><br>Di seluruh kawasan Asia Pasifik, kenaikan upah diproyeksikan sekitar 5,9 persen pada 2017. Pada 2016, upah diproyeksikan naik 6,4 persen, namun pada kenyataannya hanya meningkat 5,8 persen. Setelah rata-rata inflasi untuk wilayah Asia Pasifik dari 3 persen diperhitungkan, kenaikan upah secara riil diperkirakan 2,9 persen, turun dari 3,5 persen pada tahun 2016. Sejumlah negara yang diperkirakan mengalami peningkatan alokasi upah tertinggi adalah Pakistan (10,2%), Bangladesh (10%), dan India (10%).<br>&nbsp;</p><figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:601/314;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730336038.jpg\" width=\"601\" height=\"314\"></figure><p>&nbsp;</p><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;salah&nbsp;berdasarkan&nbsp;paragraf&nbsp;2...</p>', 'Indonesia masuk dalam bursa lima besar pertumbuhan alokasi upah tertinggi di Asia Pasifik 2017', 'Indonesia diperkirakan akan mengalami kenaikan alokasi upah lebih dari 9 persen dari tahun sebelumnya', 'Hongkong adalah salah satu dari beberapa negara besar di Asia Pasifik yang mengalami penurunan dalam alokasi upah tahun 2017', 'Survei tentang alokasi upah tahun 2017 dilakukan pada bulan Juli 2016 terhadap tidak kurang dari 4.000 perusahaan', 'Singapura diprediksi masih menghadapi masa sulit di tahun 2017', '2024-10-31 00:55:10', '2024-10-31 00:55:10'),
(34, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:601/314;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457244.jpg\" width=\"601\" height=\"314\"></figure><p>Berdasarkan paragraf kedua, jika Indonesia tidak berada di posisi lima&nbsp;besar dalam pertumbuhan alokasi upah tahun 2017, maka pernyataan yang MUNGKIN BENAR….</p>', 'Indonesia sedang mengalami masa sulit di tahun 2015', 'Indonesia akan berada di bawah Hongkong dan Australia', 'Indonesia diprediksi mengalami masa sulit tahun 2017', 'Iklim ekonomi tahun 2016 sangat berpengaruh pada negara-negara di Asia Pasifik', 'Indonesia tidak masuk dalam survei yang dilakukan pada Juli 2016', '2024-10-31 00:56:34', '2024-11-01 10:34:07'),
(35, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:601/314;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457270.jpg\" width=\"601\" height=\"314\"></figure><p>Pernyataan&nbsp;yang&nbsp;kurang&nbsp;tepat&nbsp;untuk&nbsp;paragraf&nbsp;terakhir&nbsp;adalah...</p>', 'Seluruh negara kawasan Asia Pasifik diprediksi mengalami kenaikan lebih dari 5% pada 2017', 'Terjadi kesalahan antara prediksi dan realita yang terjadi di tahun 2016', 'Inflasi di wilayah Asia Pasifik memiliki rerata 2,9 secara riil', 'Pakistan dan Bangladesh diperkirakan mengalami kenaikan alokasi upah di tahun 2017', 'India dan Bangladesh memiliki nilai yang sama untuk prediksi kenaikan alokasi upah di tahun 2017', '2024-10-31 00:57:59', '2024-11-01 10:34:33'),
(36, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:601/314;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730336314.jpg\" width=\"601\" height=\"314\"></figure><p>&nbsp;</p><p>Berdasarkan&nbsp;gambar,&nbsp;berikut&nbsp;adalah&nbsp;simpulan&nbsp;yang&nbsp;benar..</p>', 'Bangladesh dan India sama-sama memiliki selisih untuk alokasi upah di tahun 2016 dan 2017', 'Indonesia diprediksi akan memiliki selisih lebih dari 1% untuk rerata alokasi upah di tahun 2017', 'China diprediksi memiliki kenaikan di tahun 2017 daripada tahun sebelumnya', 'Pakistan adalah negara dengan alokasi upah tertinggi pada tahun 2016', 'India adalah negara dengan alokasi upah yang paling stabil di dua tahun terakhir, 2016 dan 2017', '2024-10-31 00:59:45', '2024-10-31 00:59:45'),
(37, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:601/314;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730336428.jpg\" width=\"601\" height=\"314\"></figure><p>&nbsp;</p><p>Berdasarkan grafik, negara yang memiliki selisih tertinggi pertumbuhan upah proyeksi&nbsp;dengan&nbsp;pertumbuhan&nbsp;upah&nbsp;saat&nbsp;ini&nbsp;secara&nbsp;berurutan&nbsp;adalah...</p>', 'Pakistan, Bangladesh, India, Vietnam, dan Indonesia', 'Cambodia, Indonesia, Taiwan, Bangladesh, dan Vietnam', 'Indonesia, Cambodia, Philippines, Taiwan, dan Vietnam', 'Indonesia, Philippines, Pakistan, India, dan China', 'Indonesia, China, Cambodia, Myanmar, dan Vietnam', '2024-10-31 01:01:35', '2024-10-31 01:01:35'),
(38, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:601/314;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457300.jpg\" width=\"601\" height=\"314\"></figure><p>Jika&nbsp;pertumbuhan&nbsp;upah&nbsp;Hongkong&nbsp;tahun&nbsp;2017&nbsp;sesuai&nbsp;yang&nbsp;diproyeksikan&nbsp;maka&nbsp;pernyataan&nbsp;yang&nbsp;MUNGKIN&nbsp;SALAH&nbsp;adalah...</p>', 'Hongkong akan menjadi negara yang memiliki peningkatan proyeksi upah lebih besar dibandingkan Taiwan dan South Korea untuk tahun 2017', 'Hongkong menjadi negara satu-satunya yang mencapai kenaikan upah sesuai proyeksi di tahun 2017', 'Hongkong kemungkinan tidak mengalami masa sulit ekonomi di tahun 201', 'Hongkong mengalami kenaikan budget upah dari tahun sebelumnya', 'Pakistan akan tetap menjadi negara untuk alokasi upah tertinggi di tahun 2017', '2024-10-31 01:03:00', '2024-11-01 10:35:03'),
(39, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:601/314;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457328.jpg\" width=\"601\" height=\"314\"></figure><p>Simpulan&nbsp;yang&nbsp;tepat&nbsp;berdasarkan&nbsp;data&nbsp;di&nbsp;atas&nbsp;adalah...</p>', 'Indonesia mengalami krisis ekonomi di tahun 2017', 'Indonesia	adalah	satu-satunya	negara	di	Asia	Tenggara	yang mengalami kenaikan alokasi upah di tahun 2017', 'Pakistan, Bangladesh, dan India adalah tiga negara paling tangguh di Asia Tengah', 'Indonesia tidak mengalami krisis ekonomi di tahun 2017', 'India adalah satu-satunya negara dengan alokasi upah paling stabil di Asia Pasifik', '2024-10-31 01:04:04', '2024-11-01 10:35:31'),
(40, 5, 8, 2, '<h4><strong>Pengangguran Universitas di Jawa Barat Semakin Meningkat</strong></h4><p><br>Data Badan Pusat Statistik (BPS) Jawa Barat mencatat tingkat pengangguran terbuka (TPT) lulusan universitas di provinsi Jawa Barat selalu meningkat setiap tahunnya. Tercatat TPT lulusan universitas pada Agustus 2019 sebesar 6,78%, naik dari Agustus 2018 yang sebesar 6,37% dan Agustus<br>2017 yang sebesar 5,5%.</p><p><br>Sementara TPT untuk lulusan SD, SMP, dan SMA, cenderung fluktuatif dalam tiga tahun terakhir. TPT tertinggi terdapat di lulusan SMK, tetapi mengalami penurunan dari 16,97% pada Agustus 2018 menjadi 14,53% pada Agustus 2019.</p><p><br>Secara umum, TPT di Jawa Barat pada Agustus 2019 sebesar 7,99%. Angka ini menurun dari Agustus 2017 yang sebesar 8,22% dan Agustus 2018 yang sebesar 8,17%. TPT tertinggi masih berada di perkotaan sebesar 8,04%, sedangkan di perdesaan sebesar 7,83%.<br>&nbsp;</p><figure class=\"image\"><img style=\"aspect-ratio:580/343;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730347451.png\" width=\"580\" height=\"343\"></figure><p>&nbsp;</p><p>Simpulan&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama&nbsp;adalah...</p>', 'TPT Jawa Barat selalu meningkat', 'TPT Jawa Barat mengalami inflasi dari tahun sebelumnya', 'TPT lulusan universitas Jawa Barat mengalami degradasi', 'TPT lulusan universitas di Jawa Barat mengalami eksklasi', 'Persentase	pengangguran	lulusan	universitas	Jawa	Barat	terus merosot', '2024-10-31 04:06:10', '2024-10-31 04:06:10'),
(41, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:580/343;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457372.png\" width=\"580\" height=\"343\"></figure><p>Rerata&nbsp;kenaikan&nbsp;TPT&nbsp;lulusan&nbsp;universitas&nbsp;Jawa&nbsp;Barat&nbsp;dalam&nbsp;tiga&nbsp;tahun&nbsp;terakhir adalah...</p>', '6.22%', '622%', '62.2%', '0,6%', '6%', '2024-10-31 04:07:31', '2024-11-01 10:36:15'),
(42, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:580/343;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457394.png\" width=\"580\" height=\"343\"></figure><p>Berdasarkan teks, jika TPT lulusan universitas Jawa Barat tidak mengalami kenaikan,&nbsp;maka pernyataan&nbsp;yang&nbsp;paling&nbsp;mungkin&nbsp;adalah...</p>', 'Pendidikan di Jawa Barat berkualitas', 'Universitas di Jawa Barat tidak berkualitas', 'Lapangan kerja lulusan universitas di Jawa Barat sangat tinggi', 'Lapangan kerja di Jawa Barat terbatas', 'Lapangan kerja di Jawa Barat untuk lulusan universitas sangat terbatas', '2024-10-31 04:09:51', '2024-11-01 10:36:37'),
(43, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:580/343;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457417.png\" width=\"580\" height=\"343\"></figure><p>Simpulan&nbsp;berdasarkan&nbsp;paragraf&nbsp;terakhir&nbsp;adalah...</p>', 'TPT di Jawa Barat cenderung naik', 'TPT di Jawa Barat cenderung turun', 'TPT di Jawa Barat bersifat fluktuatif', 'TPT di Jawa Barat stabil', 'TPT di Jawa Barat masih terkendali', '2024-10-31 04:10:57', '2024-11-01 10:37:00'),
(44, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:580/343;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457443.png\" width=\"580\" height=\"343\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;kedua,&nbsp;berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;benar&nbsp;jika&nbsp;TPT&nbsp;lulusan&nbsp;SMK&nbsp;tidak&nbsp;mengalami&nbsp;penurunan&nbsp;pada&nbsp;Agustus&nbsp;2019...</p>', 'Lulusan SMK semua bekerja', 'Lulusan SMK semua menganggur', 'Jumlah lulusan SMK yang bekerja lebih 31,43%', 'Jumlah lulusan SD akan lebih banyak mendapat pekerjaan', 'Jumlah lulusan SMK masih sulit mendapatkan kerja', '2024-10-31 04:12:09', '2024-11-01 10:37:25'),
(45, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:580/343;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730347959.png\" width=\"580\" height=\"343\"></figure><p>&nbsp;</p><p>Berdasarkan&nbsp;data&nbsp;grafik,&nbsp;berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;benar...</p>', 'Rerata lulusan universitas yang mendapatkan kerja memiliki selisih 1,87% dengan SD', 'Rerata lulusan SMK yang mendapatkan kerja memiliki selisih 8,13% dengan diploma', 'Rerata lulusan SMP yang mendapatkan kerja lebih tinggi daripada SMA', 'Rerata lulusan SMA yang menganggur lebih tinggi 4.09 daripada universitas', 'Rerata lulusan SD yang menganggur lebih rendah daripada diploma dengan selisih 3,41%', '2024-10-31 04:13:35', '2024-10-31 04:13:35'),
(46, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:580/343;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457463.png\" width=\"580\" height=\"343\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;MUNGKIN&nbsp;BENAR&nbsp;berdasarkan&nbsp;wacana&nbsp;dan&nbsp;grafik&nbsp;adalah...</p>', 'Tahun 2018, rerata pengangguran di Jawa Barat berstatus lulusan sekolah maupun universitas adalah tidak lebih dari 9%', 'Tingkat pendidikan di kota tidak lebih baik dengan di desa sehingga banyak warga kota yang menganggur', 'Rerata tingkat pengangguran sekolah dasar adalah 5%', 'Tahun 2019 adalah rerata pengangguran paling tinggi di Jawa Barat dalam kurun waktu tiga tahun terakhir', 'Rerata lulusan SMA yang bekerja adalah 10,32%', '2024-10-31 04:14:53', '2024-11-01 10:37:47'),
(47, 5, 8, 2, '<h4><strong>Dampak&nbsp;Covid-19,&nbsp;Puluhan&nbsp;Ribu&nbsp;Pekerja&nbsp;Migran&nbsp;Kembali&nbsp;ke&nbsp;Tanah&nbsp;Air</strong></h4><p><br>Pekerja&nbsp;migran&nbsp;Indonesia&nbsp;(PMI)&nbsp;terpaksa&nbsp;kembali&nbsp;dari&nbsp;negara&nbsp;penempatan&nbsp;akibat&nbsp;pandemi&nbsp;virus&nbsp;corona&nbsp;(Covid-19).&nbsp;Mereka&nbsp;tak&nbsp;memiliki&nbsp;pendapatan karena rata-rata bekerja di sektor informal. Data terakhir pada&nbsp;Minggu (29/3) yang dilansir dari Harian Kompas, setidaknya terdapat 33.503&nbsp;pekerja migran yang memutuskan kembali ke Indonesia. Puluhan ribu pekerja&nbsp;migran itu datang dari 85 negara penempatan. Namun, tak sedikit pula yang masih berada di negara penempatan karena terhambat karantina dalam&nbsp;negara.&nbsp;Menurut&nbsp;Badan&nbsp;Pelindungan&nbsp;Pekerja&nbsp;Migran&nbsp;Indonesia&nbsp;(BP2MI),&nbsp;pekerja&nbsp;migran&nbsp;Indonesia&nbsp;yang&nbsp;kembali&nbsp;berasal&nbsp;dari&nbsp;Malaysia.&nbsp;Jumlahnya&nbsp;mencapai&nbsp; 11.566&nbsp;PMI.&nbsp;Hong&nbsp;Kong&nbsp;menyusul&nbsp;dengan&nbsp;9.075&nbsp;PMI.</p><figure class=\"image\"><img style=\"aspect-ratio:705/376;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730348422.jpg\" width=\"705\" height=\"376\"></figure><p>&nbsp;</p><p>Berdasarkan&nbsp;paragraf&nbsp;pertama,&nbsp;berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;benar...</p>', 'Pekerja migran dipaksa kembali ke Indonesia selama pandemi virus corona terjadi', 'Sebagian besar pekerja migran bekerja di sektor informal', 'Sebanyak kurang dari 35 ribu pekerja migran kembali ke Indonesia karena Covid-19', 'Pandemi Covid-19 terjadi di Indonesia sangat cepat', 'Pekerja migran Indonesia tidak memiliki pemasukan selama Covid-19', '2024-10-31 04:21:24', '2024-10-31 04:21:24'),
(48, 5, 8, 2, '<figure class=\"image\"><img style=\"aspect-ratio:705/376;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457489.jpg\" width=\"705\" height=\"376\"></figure><p>Jika&nbsp;pekerja&nbsp;migran&nbsp;Indonesia&nbsp;sebagian&nbsp;besar&nbsp;bekerja&nbsp;di&nbsp;sektor&nbsp;formal,&nbsp;maka...</p>', 'Angka pekerja migran yang kembali ke Indonesia semakin besar', 'Angka pekerja migran yang terkena Covid-19 semakin tinggi', 'Pekerja Indonesia tidak akan bekerja di luar negeri', 'Sebagian besar pekerja migran tetap tinggal di negara tempat mereka bekerja', 'Sebagian besar pekerja migran tetap akan pulang karena Covid-19', '2024-10-31 04:22:28', '2024-11-01 10:38:11'),
(49, 5, 8, 2, '<figure class=\"image\"><img style=\"aspect-ratio:705/376;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457513.jpg\" width=\"705\" height=\"376\"></figure><p>Simpulan&nbsp;yang&nbsp;benar&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama&nbsp;adalah...</p>', 'Pekerja migran Indonesia sangat bergantung dengan pekerjaannya saat ini', 'Pekerja migran Indonesia terkena dampak Covid-19', 'Pekerja migran Indonesia sangat banyak sekali', 'Pekerja migran Indonesia rerata bekerja di sektor ilegal', 'Pekerja migran Indonesia tersebar di seluruh negara di dunia', '2024-10-31 04:23:29', '2024-11-01 10:38:34'),
(50, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:705/376;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730348641.jpg\" width=\"705\" height=\"376\"></figure><p>&nbsp;</p><p>Berdasarkan&nbsp;tabel,&nbsp;berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;benar...</p>', 'Singapura menjadi negara dengan jumlah kepulangan migran Indonesia tertinggi jika melonjak dua kali lipat dari data awal', 'Hong Kong adalah negara dengan jumlah kepulangan migran Indonesia tertinggi kedua setelah Malaysia dengan selisih kurang dari 2,4 ribu orang', 'Taiwan adalah negara dengan jumlah kepulangan pekerja migran Indonesia tertinggi ketiga setelah bertambah 10% dari data awal', 'Brunei Darussalam adalah negara dengan jumlah kepulangan pekerja migran Indonesia tertinggi kedua jika melonjak lima kali lipat dari data awal', 'Amerika Serikat tetap akan menjadi negara dengan kepulangan pekerja migran terendah meski data awalnya bertambah 10%', '2024-10-31 04:24:55', '2024-10-31 04:24:55'),
(51, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:705/376;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457536.jpg\" width=\"705\" height=\"376\"></figure><p>Berikut&nbsp;adalah&nbsp;selisih&nbsp;yang&nbsp;benar&nbsp;jika&nbsp;data&nbsp;seluruh&nbsp;negara&nbsp;bertambah&nbsp;18%&nbsp;kecuali&nbsp;Malaysia...</p>', 'Malaysia dan Amerika Serikat memiliki selisih lebih dari 12 ribu PMI', 'Singapura dan Taiwan memiliki selisih lebih dari tiga ribu PMI', 'Hongkong dan Malaysia memiliki selisih lebih 900 PMI', 'Jepang dan Amerika memiliki selisih sekitar 4 orang', 'Arab dan Korea Selatan memiliki selisih sekitar 200 orang', '2024-10-31 04:26:04', '2024-11-01 10:38:59'),
(52, 5, 8, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:705/376;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457555.jpg\" width=\"705\" height=\"376\"></figure><p>Berikut&nbsp;adalah&nbsp;penyataan&nbsp;yang&nbsp;benar&nbsp;jika&nbsp;seluruh&nbsp;kepulangan&nbsp;migran&nbsp;Indonesia&nbsp;bertambah&nbsp;18%&nbsp;di&nbsp;seluruh&nbsp;negara&nbsp;kecuali&nbsp;Malaysia...</p>', 'Hongkong adalah negara dengan kepulangan migran Indonesia terbanyak', 'Taiwan	tetap	berada	di	posisi	ketiga	sebagai	negara	dengan kepulangan migran Indonesia terendah', 'Malaysia masih menjadi negara dengan kepulangan migran Indonesia terbanyak, diikuti Hongkong dan Taiwan', 'Singapura	adalah	negara	dengan	kepulangan	migran	Indonesia tertinggi daripada Arab Saudi, Brunei, dan Taiwan.', 'Korea Selatan menjadi negara dengan posisi terendah ketiga setelah Amerika Serikat dan Arab Saudi.', '2024-10-31 04:27:11', '2024-11-01 10:39:18'),
(53, 5, 8, 2, '<figure class=\"image\"><img style=\"aspect-ratio:705/376;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457574.jpg\" width=\"705\" height=\"376\"></figure><p>Simpulan yang benar jika jumlah kepulangan migran Indonesia bertambah 18% di&nbsp;seluruh&nbsp;negara&nbsp;kecuali&nbsp;Malaysia&nbsp;adalah...</p>', 'Malaysia adalah negara yang aman dari Covid-19', 'Malaysia adalah negara dengan pengunjung terbanyak dari Indonesia', 'Malaysia adalah negara dengan pekerja migran Indonesia terbanyak', 'Malaysia adalah negara dengan angka pekerja migran terbanyak di dunia', 'Malaysia adalah negara yang paling tidak aman dari Covid-19', '2024-10-31 04:29:53', '2024-11-01 10:39:36'),
(54, 5, 8, 2, '<h4>10&nbsp;Kota Kabupaten dengan ODP Covid-19 Terbanyak di Jawa Barat</h4><p>&nbsp;</p><p>Berdasarkan data Kamis (26/3), Provinsi Jawa Barat memiliki 2.357 orang dalam pemantauan&nbsp;(ODP)&nbsp;akibat Covid-19.&nbsp;Kota&nbsp;Depok&nbsp;mendominasi&nbsp;dengan 255 ODP. Angka itu setara dengan 10,8% dari total ODP di Jawa Barat.&nbsp;Persebaran ODP di Jawa Barat mayoritas berasal dari daerah yang berbatasan&nbsp;dengan&nbsp;DKI&nbsp;Jakarta.&nbsp;Selain&nbsp;Kota&nbsp;Depok,&nbsp;terdapat&nbsp;pula&nbsp;Kota&nbsp;dan&nbsp;Kabupaten&nbsp;Bekasi serta Kota dan Kabupaten Bogor. Masing-masing dengan total 241 ODP&nbsp;dan&nbsp;288&nbsp;ODP.</p><p>Jawa Barat merupakan provinsi kedua dengan kasus positif Covid-19 terbesar&nbsp;kedua&nbsp;setelah&nbsp;DKI&nbsp;Jakarta.&nbsp;Sebab&nbsp;Jabodetabek&nbsp;termasuk&nbsp;wilayah&nbsp;urban yang tak dapat dipisahkan. Sehingga ketika DKI Jakarta menjadi pusat&nbsp;persebaran&nbsp;Covid-19,&nbsp;maka&nbsp;akan&nbsp;memicu&nbsp;timbulnya&nbsp;kasus-kasus&nbsp;baru&nbsp;di&nbsp;wilayah&nbsp;yang&nbsp;selalu&nbsp;berkaitan&nbsp;dengannya.</p><figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:712/334;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730349195.jpg\" width=\"712\" height=\"334\"></figure><p>&nbsp;</p><p>Berikut&nbsp;adalah&nbsp;simpulan&nbsp;yang&nbsp;benar&nbsp;berdasarkan&nbsp;paragraf&nbsp;satu...</p>', 'Kota Depok adalah kota dengan kasus Covid tertinggi di Indonesia', 'Jawa Barat dalah provinsi dengan kasus ODP Covid-19 tertinggi di Indonesia', 'Total ODP Covid-19 di Jawa Barat lebih dari 2,5 ribu orang', 'Kabupaten Bekasi memiliki selisih 14 kasus Covid-19 dengan Kota Depok', 'Kasus Covid-19 Jawa Barat sangat memprihatinkan', '2024-10-31 04:34:24', '2024-10-31 04:34:24'),
(55, 5, 8, 2, '<figure class=\"image\"><img style=\"aspect-ratio:712/334;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457614.jpg\" width=\"712\" height=\"334\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;pertama,&nbsp;jika&nbsp;kasus&nbsp;ODP&nbsp;di&nbsp;Kota&nbsp;Depok&nbsp;menurun&nbsp;12%,&nbsp;maka&nbsp;berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;benar...</p>', 'Kota Depok tetap menjadi daerah dengan kasus ODP tertinggi di Jawa Barat', 'Kota Depok memiliki selisih kurang dari 60 kasus dengan Kota dan Kabupaten Bogor', 'Kota Depok adalah kota dengan kasus ODP terendah di Jawa Barat', 'Kota Depok memiliki selisih 16 kasus lebih rendah daripada Kota dan Kabupaten Bekasi', 'Kota Depok menjadi daerah dengan kasus ODP terendah setelah Bogor', '2024-10-31 04:38:14', '2024-11-01 10:40:17'),
(56, 5, 8, 2, '<figure class=\"image\"><img src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457633.jpg\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;kurang&nbsp;tepat&nbsp;berdasarkan&nbsp;paragraf&nbsp;kedua...</p>', 'Jawa Barat menjadi provinsi paling memperihatinkan setelah DKI Jakarta', 'Jabodetabek adalah kawasan dengan potensi paling tinggi penyebaran Covid-19', 'DKI Jakarta adalah sentral kasus Covid-19 di Indonesia', 'Semua masyarakat Jabodetabek adalah ODP Covid-19', 'Jabodetabek adalah kawasan perkotaan yang rentan akan bahaya Covid-19', '2024-10-31 04:39:15', '2024-11-01 10:40:33'),
(57, 5, 8, 2, '<figure class=\"image\"><img style=\"aspect-ratio:712/334;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457647.jpg\" width=\"712\" height=\"334\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;MUNGKIN&nbsp;benar&nbsp;berdasarkan&nbsp;data&nbsp;tersebut...</p>', 'Penyebaran Covid-19 di Depok sangat cepat', 'Orang dalam pemantauan di Depok lebih tinggi dari DKI Jakarta', 'Warga Depok sangat rentan terhadap Covid-19', 'Depok adalah kota paling tidak bersih di Jawa Barat', 'Investigasi ODP di Depok berjalan sangat lamban', '2024-10-31 04:40:07', '2024-11-01 10:40:48'),
(58, 5, 8, 2, '<figure class=\"image\"><img src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457662.jpg\"></figure><p>Berdasarkan&nbsp;data,&nbsp;jika&nbsp;seluruh&nbsp;persebaran&nbsp;ODP&nbsp;di&nbsp;kota/kabupaten Jawa Barat meningkat&nbsp;17%&nbsp;kecuali&nbsp;Depok,&nbsp;maka...</p>', 'Kota Bandung memiliki angka persebaran ODP tertinggi di Jawa Barat', 'Kota Depok masih tetap menjadi wilayah dengan persebaran ODP tertinggi di Jawa Barat', 'Kabupaten Garut adalah wilayah dengan persebaran ODP tertinggi kedua', 'Kabupaten Bogor dan Kota Bogor memiliki selisih sebanyak 23-an jiwa', 'Kabupaten Bandung dan Kota Bandung memiliki selisih kurang dari 55 kasus ODP', '2024-10-31 04:41:17', '2024-11-01 10:41:03'),
(59, 5, 8, 2, '<figure class=\"image\"><img style=\"aspect-ratio:712/334;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457683.jpg\" width=\"712\" height=\"334\"></figure><p>Jika&nbsp;dalam&nbsp;jangka&nbsp;sebulan&nbsp;kemudian,&nbsp;persebaran&nbsp;ODP&nbsp;di&nbsp;semua&nbsp;kota/kabupaten&nbsp;Jawa&nbsp;Barat&nbsp;meningkat&nbsp;12%,&nbsp;maka&nbsp;rerata&nbsp;persebaran&nbsp;ODP&nbsp;di&nbsp;Jawa&nbsp;Barat&nbsp;mencapai...</p>', '178.6 jiwa', '17,9 jiwa', '1,86 jiwa', '17,8 jiwa', '0,17 jiwa', '2024-10-31 04:42:20', '2024-11-01 10:41:24'),
(60, 5, 8, 2, '<figure class=\"image\"><img style=\"aspect-ratio:712/334;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730457697.jpg\" width=\"712\" height=\"334\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;tepat&nbsp;jika&nbsp;kota/kabupaten dengan penyebaran ODP&nbsp;150&nbsp;juta&nbsp;ke&nbsp;atas&nbsp;mengalami&nbsp;penurunan&nbsp;15%....</p>', 'Kabupaten Bandung adalah kabupaten dengan kasus ODP tertinggi kedua', 'Kota Depok adalah daerah dengan tingkat ODP tertinggi kedua', 'Kawasan Bogor adalah kawasan dengan tingkat ODP tertinggi kedua', 'Kota Bogor adalah daerah dengan kawasan dengan kasus ODP terendah ketiga', 'Garut adalah kabupaten dengan kasus ODP tertinggi ketiga', '2024-10-31 04:43:26', '2024-11-01 10:41:38'),
(61, 5, 9, 2, '<h4><strong>Cadangan&nbsp;Devisa&nbsp;Indonesia&nbsp;di&nbsp;Bawah&nbsp;Singapura&nbsp;dan&nbsp;Thailand</strong></h4><p>Cadangan devisa bank sentral Indonesia (BI) pada akhir 2018 menyusut US$<br>10 miliar atau sekitar Rp133 triliun menjadi US$ 120,6 miliar atau setara Rp1.689,3 triliun dari tahun sebelumnya. Meningkatnya kebutuhan dolar Amerika Serikat (AS) seiring tingginya kebutuhan impor dibarengi dengan terbatasnya pasokan dolar AS dari hasil ekspor menjadi salah satu pemicu berkurangnya cadangan devisa Indonesia. Selain itu, intervensi bank sentral untuk menjaga rupiah agar tidak fluktuatif juga turut menekan cadangan devisa BI. Di kawasan Asia Tenggara (ASEAN), cadangan devisa BI berada di urutan ketiga di bawah bank sentral Singapura (MAS) US$ 292,7 miliar dan bank sentral Thailand (BoT) US$ 205,64 miliar. Seperti diketahui, sejak 1981 cadangan devisa bank sentral Singapura terbesar di kawasan Asia Tenggara. Sementara bank sentral Laos memiliki cadangan devisa terendah, yakni hanya US$ 980 juta. Hingga akhir September 2018, cadangan devisa Indonesia telah bertambah US$ 3,67 miliar menjadi US$ 124,3 miliar. Adanya penarikan pinjaman dalam bentuk dolar AS serta perolehan devisa dari hasil ekspor mendorong tumbuhnya pundi cadangan devisa BI.<br>&nbsp;</p><figure class=\"image\"><img style=\"aspect-ratio:591/432;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730458738.jpg\" width=\"591\" height=\"432\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;benar&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama&nbsp;...</p>', 'Cadangan devisa bank sentral Indonesia (BI) menyusut hingga  lebih dari 10 miliar dolar Amerika', 'Lebih dari Rp133 triliun rupiah, cadangan devisa Bank Indonesia menyusut pada tahun 2018', 'Kebutuhan	dolar	Amerika	meninggi	berbanding	terbalik	dengan rendahnya kebutuhan impor', 'Salah satu penyebab meningginya kebutuhan dolar Amerika adalah rendahnya pasokan dolar AS dari hasil ekspor', 'Campur tangan bank sentral dalam menjaga rupiah tidak bersifat fluktuatif', '2024-11-01 11:00:18', '2024-11-01 11:00:18'),
(62, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:591/432;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730458830.jpg\" width=\"591\" height=\"432\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;pertama,&nbsp;jika&nbsp;kebutuhan&nbsp;impor&nbsp;dibarengi&nbsp;dengan&nbsp;tingginya&nbsp;pasokan&nbsp;dolar&nbsp;AS,&nbsp;maka...</p>', 'Kebutuhan dolar AS menurun', 'Kebutuhan dolar AS menanjak', 'Cadangan devisa BI menyusut', 'Cadangan devisa BI meningkat', 'Intervensi bank sentral bersifat fluktuatif', '2024-11-01 11:01:26', '2024-11-01 11:01:26'),
(63, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:591/432;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730458901.jpg\" width=\"591\" height=\"432\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;kedua,&nbsp;berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;benar&nbsp;jika&nbsp;cadangan&nbsp;devisa&nbsp;Indonesia&nbsp;berada&nbsp;di&nbsp;peringkat&nbsp;kedua&nbsp;ASEAN...</p>', 'Indonesia sedang mengalami krisis moneter', 'Keuangan Indonesia sedang fluktuatif', 'Perkembangan ekonomi Indonesia dua kali lipat', 'Thailand sedang mengalami krisis moneter', 'Singapura sedang mengalami krisis moneter', '2024-11-01 11:02:38', '2024-11-01 11:02:38'),
(64, 5, 9, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:591/432;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730458973.jpg\" width=\"591\" height=\"432\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;kedua,&nbsp;berikut&nbsp;adalah&nbsp;simpulan&nbsp;yang&nbsp;benar...</p>', 'Indonesia sedang berada dalam krisis ekonomi sejak 1981', 'Laos adalah negara dengan cadangan devisa terendah hingga akhir September 2018', 'Thailand adalah negara dengan devisa tertinggi di ASEAN', 'Singapura adalah negara paling maju di ASEAN', 'Perkembangan ekonomi Indonesia tidak signifikan', '2024-11-01 11:03:59', '2024-11-01 11:03:59'),
(65, 5, 9, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:591/432;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730459055.jpg\" width=\"591\" height=\"432\"></figure><p>Berdasarkan&nbsp;data,&nbsp;berikut&nbsp;adalah&nbsp;yang&nbsp;salah…</p>', 'Indonesia dan Vietnam memiliki selisih cadangan devisa sebanyak US$ 65,2 miliar', 'Kamboja dan Thailand memiliki selisih cadangan devisa sebanyak US$ 191,7 miliar', 'Thailand dan Singapura memiliki selisih cadangan devisa sebanyak US$ 87 miliar', 'Laos dan Kamboja memiliki selisih cadangan devisa sebanyak US$ 12,9 miliar', 'Indonesia dan Malaysia memiliki selisih cadangan devisa sebanyak US$ 19,2 miliar', '2024-11-01 11:05:14', '2024-11-01 11:05:14'),
(66, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:591/432;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730459129.jpg\" width=\"591\" height=\"432\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;mungkin&nbsp;benar&nbsp;jika&nbsp;Filipina&nbsp;mampu&nbsp;menaikkan&nbsp;devisa&nbsp;cadangannya&nbsp;sebesar&nbsp;50%....</p>', 'Filipina adalah negara dengan cadangan devisa tertinggi ketiga setelah Singapura dan Thailand', 'Filipina memiliki cadangan devisa sebesar US$ 118,7 miliar', 'Filipina adalah negara dengan cadangan devisa terbesar di ASEAN', 'Filipina memiliki cadangan devisa sebesar lebih dari US$ 119 miliar', 'Filipina adalah salah satu negara yang berhasil lolos dari krisis moneter', '2024-11-01 11:06:30', '2024-11-01 11:06:30'),
(67, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:591/432;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730459204.jpg\" width=\"591\" height=\"432\"></figure><p>Berdasarkan&nbsp;data,&nbsp;simpulan&nbsp;yang&nbsp;benar&nbsp;adalah...</p>', 'Lima	negara	ASEAN	dengan	cadangan	devisa	tertinggi	adalah Singapura, Thailand, Indonesia, Filipina, dan Vietnam', 'Tiga negara ASEAN dengan cadangan devisa terendah adalah Laos, Brunei, dan Kamboja', 'Filipina dan Vietnam adalah negara dengan cadangan devisa paling aman di ASEAN', 'Thailand adalah negara paling berkompeten sebagai negara dengan devisa tertinggi di ASEAN setelah Singapura', 'Indonesia	memiliki	strategi	khusus	dalam	menjalankan	sistem ekonominya sehingga memiliki perkembangan meski tidak signifikan', '2024-11-01 11:07:43', '2024-11-01 11:07:43'),
(68, 5, 9, 2, '<h4><strong>Indonesia Produsen Ikan Laut Kedua Terbesar Dunia</strong></h4><p><br>Menurut Food and Agriculture Organization (FAO), Indonesia menjadi negara terbesar kedua produksi perikanan tangkap sebesar 6 juta ton pada 2014. Peringkat pertama ditempati oleh China dengan kemampuan produksi mencapai 14 juta ton pada 2014. Tingginya kemampuan produksi China karena didukung oleh penggunaan kapal yang bertonase besar sehingga mampu mengeksplorasi wilayah laut lebih luas. Bahkan menurut China Fisheries Yearbook 2014, industri perikanan China termasuk yang terbesar di dunia. Setiap tahun, negara ini mampu memproduksi 17,4 persen hasil perikanan dunia,<strong> sedangkan Indonesia di peringkat kedua dengan 6,8 persen hasil perikanan dunia.</strong></p><figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:572/363;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730519376.jpg\" width=\"572\" height=\"363\"></figure><p>Simpulan&nbsp;yang&nbsp;tepat&nbsp;berdasarkan&nbsp;paragraf&nbsp;1&nbsp;adalah...</p><p><br>&nbsp;</p>', 'Indonesia adalah negara eksportir ikan tertinggi kedua di dunia', 'Indonesia adalah negara perkembangbiakan ikan terbesar kedua di dunia', 'Indonesia adalah negara produsen ikan yang menjanjikan', 'Indonesia adalah negara konsumen ikan yang menjanjikan', 'Indonesia adalah negara penghasil ikan terbesar di dunia', '2024-11-02 03:52:24', '2024-11-02 03:52:24'),
(69, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:572/363;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730519554.jpg\" width=\"572\" height=\"363\"></figure><p>Simpulan&nbsp;yang&nbsp;tepat&nbsp;berdasarkan&nbsp;paragraf&nbsp;2&nbsp;adalah...</p>', 'China adalah negara perikanan', 'China adalah negara kelautan', 'China adalah negara kaya raya', 'China adalah negara terbersih', 'China adalah negara kepulauan', '2024-11-02 03:53:31', '2024-11-02 03:53:31'),
(70, 5, 9, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:572/363;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730519621.jpg\" width=\"572\" height=\"363\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;1,&nbsp;manakah&nbsp;simpulan&nbsp;yang&nbsp;PALING&nbsp;MUNGKIN&nbsp;benar?</p>', 'Produksi ikan di China lebih berkualitas', 'Produksi ikan di Indonesia lebih berkualitas', 'Ikan di Indonesia lebih bervariasi daripada China', 'Ikan di China lebih bervariasi daripada Indonesia', 'Peralatan Indonesia kurang lengkap dibanding China', '2024-11-02 03:55:03', '2024-11-02 03:55:03'),
(71, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:572/363;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730519712.jpg\" width=\"572\" height=\"363\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;2,&nbsp;manakah&nbsp;simpulan&nbsp;yang&nbsp;PALING&nbsp;MUNGKIN&nbsp;benar?</p>', 'Perhatian pemerintah China kurang terhadap hasil laut', 'Perhatian pemerintah Indonesia kurang terhadap hasil laut', 'Perhatian masyarakat China kurang terhadap hasil laut', 'Perhatian masyarakat Indonesia maksimal terhadap hasil laut', 'Perhatian dunia terhadap hasil laut Indonesia sangat kurang', '2024-11-02 03:57:11', '2024-11-02 03:57:11'),
(72, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:572/363;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730519841.jpg\" width=\"572\" height=\"363\"></figure><p>Manakah pernyataan berikut yang TIDAK MENDUKUNG kalimat bercetak&nbsp;tebal?</p>', 'Masyarakat Indonesia kurang maksimal mengeksplor lautan', 'Pemerintah Indonesia kurang maksimal memperhatikan hasil laut', 'Pemerintah Indonesia tidak peduli dengan hasil lautnya sendiri', 'Masyarakat indonesia cukup berusaha keras mengeksplor lautan', 'Pemerintah Indonesia cukup memperhatikan hasil laut', '2024-11-02 03:58:25', '2024-11-02 03:58:25'),
(73, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:572/363;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730519914.jpg\" width=\"572\" height=\"363\"></figure><p>Berdasarkan&nbsp;gambar&nbsp;grafik,&nbsp;negara&nbsp;mana&nbsp;yang&nbsp;merupakan&nbsp;produsen&nbsp;iklan&nbsp;paling&nbsp;menjanjikan&nbsp;setelah&nbsp;hasil&nbsp;dari&nbsp;seluruh&nbsp;negara&nbsp;bertambah&nbsp;15%&nbsp;kecuali&nbsp;China?</p>', 'Amerika Serikat', 'Jepang', 'China', 'Indonesia', 'Rusia', '2024-11-02 03:59:31', '2024-11-02 03:59:31'),
(74, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:572/363;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730519979.jpg\" width=\"572\" height=\"363\"></figure><p>Berdasarkan gambar grafik, jika tidak ada perubahan hasil produksi ikan&nbsp;dari&nbsp;data,&nbsp;negara&nbsp;mana&nbsp;yang&nbsp;akan&nbsp;dijuluki&nbsp;penghasil&nbsp;ikan&nbsp;terbesar&nbsp;keempat&nbsp;di&nbsp;dunia?</p>', 'Indonesia', 'China', 'Amerika Serikat', 'Rusia', 'Jepang', '2024-11-02 04:00:36', '2024-11-02 04:00:36');
INSERT INTO `soals` (`id`, `user_id`, `paket_to_id`, `jenis_id`, `soal`, `pilihan1`, `pilihan2`, `pilihan3`, `pilihan4`, `pilihan5`, `created_at`, `updated_at`) VALUES
(75, 5, 9, 2, '<h4><strong>Pengguna Internet Indonesia Peringkat ke-3 Terbanyak di Asia</strong></h4><p>Internet sudah menjadi bagian dari kehidupan bagi sebagian besar penduduk dunia. Dari urusan mencari informasi, bekerja, belanja maupun bersosial media untuk menyapa teman, kerabat maupun keluarga. Berdasarkan data internetworldstats, pengguna internet Indonesia mencapai 212,35 juta jiwa pada Maret 2021. Dengan jumlah tersebut, Indonesia berada di urutan ketiga dengan pengguna internet terbanyak di Asia di bawah Tiongkok dan India. Berdasarkan laporan Bank Dunia berjudul Harnessing Digital Technologies for Inclusion in Indonesia 2021, komunikasi menjadi aktivitas yang paling sering dilakukan masyarakat Indonesia ketika menghabiskan waktu di internet. Persentase aktivitas yang mencakup berkirim pesan dan surat elektronik (surel) tersebut mencapai 36%. Persentase penggunaan internet oleh masyarakat Indonesia untuk aktivitas lainnya bisa dilihat pada data berikut (data per 29 juli 2021 dari world bank).<br>&nbsp;</p><figure class=\"image\"><img style=\"aspect-ratio:814/493;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730520293.png\" width=\"814\" height=\"493\"></figure><p>Pernyataan&nbsp;yang&nbsp;tepat&nbsp;mengenai&nbsp;penggunaan&nbsp;internet&nbsp;oleh&nbsp;masyarakat&nbsp;di&nbsp;Indonesia&nbsp;adalah&nbsp;…</p>', 'Kegiatan jual beli paling banyak menggunakan internet dibandingkan jual beli secara langsung', 'Masyarakat Indonesia lebih banyak menggunakan internet untuk aktivitas media sosial', 'Kegiatan browsing menjadi aktivitas yang paling sedikit dilakukan oleh masyarakat Indonesia dengan menggunakan internet', 'Internet paling banyak digunakan oleh masyarakat Indonesia untuk kegiatan hiburan dan santai', 'Penggunaan internet oleh masyarakat Indonesia untuk kegiatan jual beli masih rendah dibandingkan kegiatan media sosial', '2024-11-02 04:06:31', '2024-11-02 04:06:31'),
(76, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:814/493;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730520402.png\" width=\"814\" height=\"493\"></figure><p>Hal&nbsp;yang&nbsp;mungkin&nbsp;menjadi&nbsp;penyebab&nbsp;masyarakat&nbsp;Indonesia&nbsp;paling&nbsp;banyak menggunakan internet untuk komunikasi pada rentang juli 2020-&nbsp;juli 2021 adalah&nbsp;…</p>', 'Semakin murahnya harga paket internet sehingga banyak masyarakat yang mampu membelinya', 'Terbatasnya aktivitas masyarakat secara langsung akibat kebijakan PPKM sehingga aktivitas lebih banyak menggunakan gadget', 'Terjadinya pristiwa viral sehingga masyarakat banyak menggunakan gadget untuk mengaksesnya', 'Semakin murahnya harga gadget sehingga banyak masyarakat yang membelinya untuk sarana komunikasi', 'Terbatasnya	fasilitas	internet	sehingga	masyarakat	banyak memanfaatkan telepon rumah', '2024-11-02 04:08:07', '2024-11-02 04:08:07'),
(77, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:814/493;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730520496.png\" width=\"814\" height=\"493\"></figure><p>Penggunaan&nbsp;gadget&nbsp;saat&nbsp;ini&nbsp;hampir&nbsp;dipakai&nbsp;oleh&nbsp;semua&nbsp;kalangan,&nbsp;termasuk&nbsp;para&nbsp;pelajar&nbsp;mulai&nbsp;tingkat&nbsp;SD,&nbsp;SMP,&nbsp;SMA&nbsp;dan&nbsp;tentu&nbsp;saja&nbsp;mahasiswa. Berikut tindakan yang tepat agar para pelajar menggunakan kuota internet belajar sesuai peruntukannya&nbsp;adalah&nbsp;…</p>', 'Tidak memberikan gadget kepada pelajar', 'Membebaskan pelajar menggunakan gadget untuk berbagai kegiatan', 'Membatasi akses kuota ke fitur media sosial', 'Memberikan kuota sedikit demi sedikit dalam satu bulan', 'Menolak pemberian kuota internet belajar', '2024-11-02 04:10:13', '2024-11-02 04:10:13'),
(78, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:814/493;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730520623.png\" width=\"814\" height=\"493\"></figure><p>Kegiatan&nbsp;berikut&nbsp;yang&nbsp;menggambarkan&nbsp;aktivitas&nbsp;masyarakat&nbsp;Indonesia&nbsp;ketika&nbsp;melakukan&nbsp;aktivitas&nbsp;santai&nbsp;dalam&nbsp;penggunaan&nbsp;Internet&nbsp;adalah&nbsp;…</p>', 'Melaksanakan rapat virtual', 'Menonton film pada aplikasi', 'Mengelola akun jual beli', 'Mengerjakan tugas', 'Membuat konten media sosial', '2024-11-02 04:11:32', '2024-11-02 04:11:32'),
(79, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:814/493;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730520704.png\" width=\"814\" height=\"493\"></figure><p>Jumlah masyarakat Indonesia yang menggunakan internet untuk aktivitas komunikasi&nbsp;sebanyak&nbsp;…</p>', '212,35 juta jiwa', '106,17 juta jiwa', '95,67 juta jiwa', '76,45 juta jiwa', '46,67 juta jiwa', '2024-11-02 04:13:21', '2024-11-02 04:13:21'),
(80, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:814/493;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730520811.png\" width=\"814\" height=\"493\"></figure><p>Pernyataan&nbsp;yang&nbsp;tepat&nbsp;mengenai&nbsp;posisi&nbsp;Indonesia&nbsp;dalam&nbsp;hal&nbsp;jumlah&nbsp;masyarakat&nbsp;yang&nbsp;menggunakan&nbsp;internet&nbsp;adalah&nbsp;…</p>', 'Indonesia merupakan negara dengan jumlah penggunaan internet terbanyak di Asia', 'Indonesia merupakan negara dengan jumlah penggunaan internet paling sedikit di Asia', 'Indonesia merupakan negara dengan jumlah penggunaan internet terbanyak di Asia timur', 'Indonesia merupakan negara dengan jumlah penggunaan internet paling sedikt di Asia tenggara', 'Indonesia merupakan negara dengan jumlah penggunaan internet terbanyak di Asia tenggara', '2024-11-02 04:14:47', '2024-11-02 04:14:47'),
(81, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:814/493;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730520901.png\" width=\"814\" height=\"493\"></figure><p>Penggunaan&nbsp;internet&nbsp;oleh&nbsp;masyarakat&nbsp;Indonesia&nbsp;untuk&nbsp;aktivitas&nbsp;browsing&nbsp;masih&nbsp;lebih&nbsp;rendah&nbsp;daripada&nbsp;untuk&nbsp;aktivitas&nbsp;media&nbsp;sosial.&nbsp;Jika&nbsp;Anda&nbsp;seorang&nbsp;guru,&nbsp;strategi&nbsp;yang&nbsp;tepat&nbsp;untuk&nbsp;penyampaian&nbsp;pembelajaran&nbsp;dikaitkan dengan data penggunaan internet untuk aktitivitas browsing dan media sosial adalah …</p>', 'Guru menyiapkan materi pelajaran yang diupload di website', 'Guru memberikan materi tanpa bantuan teknologi', 'Guru mengemas materi dalam bentuk konten media sosial', 'Guru menyiapkan materi pelajaran dalam bentuk buku elektronik yang diupload pada laman tertentu', 'Guru mengemas materi dalam bentuk site', '2024-11-02 04:16:31', '2024-11-02 04:16:31'),
(82, 5, 9, 2, '<h4><strong>6&nbsp;Produk&nbsp;Ramah&nbsp;Lingkungan&nbsp;yang&nbsp;Paling&nbsp;Banyak&nbsp;Dibeli&nbsp;Masyarakat</strong></h4><p>Hasil survei Katadata Insight Center (KIC) “Katadata Consumer Survey&nbsp;on&nbsp;Sustainability”&nbsp;menunjukkan&nbsp;makanan &nbsp;menjadi &nbsp;barang <a href=\"https://databoks.katadata.co.id/tags/ramah-lingkungan\">ramah</a>&nbsp;<a href=\"https://databoks.katadata.co.id/tags/ramah-lingkungan\">lingkungan&nbsp;</a>yang paling banyak dibeli. Sebanyak 56,7% responden mengakui&nbsp;membeli&nbsp;makanan&nbsp;sebagai&nbsp;produk&nbsp;ramah&nbsp;lingkungan&nbsp;dalam&nbsp;satu&nbsp;tahun&nbsp;terakhir.</p><p>Barang&nbsp;ramah&nbsp;lingkungan&nbsp;lainnya&nbsp;yang&nbsp;banyak&nbsp;dibeli&nbsp;di&nbsp;antaranya,&nbsp;47,8% dari produk rumah tangga, 37,4% pakaian, dan 30,6% kesehatan dan&nbsp;kosmetik.&nbsp;Kemudian&nbsp;sebanyak&nbsp;19,2%&nbsp;dari&nbsp;produk&nbsp;elektronik&nbsp;dan&nbsp;8,3%&nbsp;kendaraan.&nbsp;Sebagian&nbsp;besar&nbsp;responden&nbsp;memiliki&nbsp;kesadaran&nbsp;mengenai&nbsp;pentingnya&nbsp;kelestarian&nbsp;lingkungan&nbsp;dengan&nbsp;menggunakan&nbsp;produk&nbsp;ramah&nbsp;lingkungan.&nbsp;Sebanyak&nbsp;62,9%&nbsp;pernah&nbsp;membeli&nbsp;produk&nbsp;berkelanjutan&nbsp; atau&nbsp;ramah lingkungan selama satu tahun terakhir. Sementara itu, responden yang&nbsp;mengaku&nbsp;tidak&nbsp;pernah&nbsp;membeli&nbsp;barang&nbsp;ramah&nbsp;lingkungan&nbsp;hanya&nbsp;37,1%.</p><p>Alasan&nbsp;tertinggi&nbsp;mengapa&nbsp;responden&nbsp;memilih&nbsp;produk&nbsp;ramah&nbsp;lingkungan&nbsp;karena&nbsp;ingin&nbsp;melestarikan&nbsp;bumi&nbsp;(60,5%)&nbsp;dan&nbsp;puas&nbsp;menggunakan&nbsp;produk&nbsp;ramah&nbsp;lingkungan&nbsp;(51,1%).&nbsp;Survei&nbsp;KIC&nbsp;dilakukan&nbsp;terhadap&nbsp;3.631&nbsp;konsumen&nbsp;yang&nbsp;mengambil&nbsp;keputusan&nbsp;dalam&nbsp;pembelian&nbsp;produk&nbsp;atau&nbsp;berbelanja.&nbsp;Survei&nbsp;dilakukan secara online pada responden berusia berusia 17-60 tahun, pada 30 Juli-1 Agustus 2021&nbsp;yang&nbsp;mencakup&nbsp;hampir&nbsp;seluruh&nbsp;wilayah&nbsp;Indonesia.</p><p>&nbsp;</p><p>Barang&nbsp;ramah&nbsp;lingkungan&nbsp;yang&nbsp;tidak&nbsp;banyak&nbsp;dibeli&nbsp;oleh&nbsp;para&nbsp;konsumen&nbsp;adalah&nbsp;…</p>', 'Elektronik', 'kendaraan', 'kosmetik', 'pakaian', 'kesehatan', '2024-11-03 13:48:05', '2024-11-03 13:48:05'),
(83, 5, 9, 2, '<p>Pernyataan&nbsp;berikut&nbsp;yang&nbsp;paling&nbsp;tepat&nbsp;dengan&nbsp;hasil&nbsp;survey&nbsp;adalah&nbsp;…</p>', 'Sebagian	kecil	responden	yang	menggunakan	barang	ramah lingkungan merasa puas dengan produk ramah lingkungan', 'Produk rumah tangga menjadi barang ramah lingkungan yang paling banyak dibeli', 'Sebagian besar responden lebih memilih tidak membeli produk ramah lingkungan', 'Sebagian	besar	responden	belum	memiliki	kesadaran	dalam melestarikan lingkungan', 'Produk kesehatan dan kosmetik lebih sedikit dibeli sebagai barang ramah lingkungan dibadingkan produk pakaian', '2024-11-03 13:49:36', '2024-11-03 13:49:36'),
(84, 5, 9, 2, '<p>Hal yang menjadi alasan penggunaan barang ramah lingkungan berdasarkan survey&nbsp;yang&nbsp;dilakukan&nbsp;adalah&nbsp;…</p>', 'Barang ramah lingkungan memiliki harga yang terjangkau', 'Kualitas barang ramah lingkungan setara dengan produk luar negeri', 'Barang ramah lingkungan memiliki merk yang branded', 'Barang ramah lingkungan memberikan kepuasaan', 'Barang ramah lingkungan membantu ekonomi', '2024-11-03 13:52:01', '2024-11-03 13:52:01'),
(85, 5, 9, 2, '<p>Pada&nbsp;survey&nbsp;yang&nbsp;dilakukan&nbsp;2.059&nbsp;responden&nbsp;dari&nbsp;3.631&nbsp;responden&nbsp;mengaku membeli&nbsp;produk&nbsp;ramah&nbsp;lingkungan&nbsp;berupa&nbsp;…</p>', 'Makanan', 'Peralatan rumah tangga', 'Pakaian', 'Kosmetik', 'Peralatan elektronik', '2024-11-03 13:53:03', '2024-11-03 13:53:03'),
(86, 5, 9, 2, '<p>Alasan&nbsp;yang&nbsp;paling&nbsp;mungkin&nbsp;mengenai&nbsp;minimnya&nbsp;jumlah&nbsp;responden&nbsp;yang&nbsp;membeli&nbsp;barang&nbsp;ramah&nbsp;lingkungan&nbsp;berupa&nbsp;kendaraan&nbsp;adalah&nbsp;…</p>', 'Kendaraan yang ramah lingkungan tidak bisa digunakan sehari-hari', 'Kendaraan yang ramah lingkungan menggunakan bahan bakar yang banyak', 'Kendaraan yang ramah lingkungan belum tersedia banyak dan harganya mahal', 'Kendaraan yang ramah lingkungan hanya bisa dipakai di jalan tol', 'Kendaraan yang ramah lingkungan tidak bisa dipakai bekerja', '2024-11-03 13:54:13', '2024-11-03 13:54:13'),
(87, 5, 9, 2, '<p>Pernyataan&nbsp;yang&nbsp;paling&nbsp;mungkin&nbsp;mengenai&nbsp;hasil&nbsp;survey&nbsp;barang&nbsp;ramah&nbsp;lingkungan&nbsp;tersebut,&nbsp;kecuali&nbsp;…</p>', 'Produk makanan menjadi barang ramah lingkungan yang paling banyak dibeli karena ketersediaan dan kebutuhan sehari-hari', 'Produk-produk yang digunakan secara rutin dalam kehidupan sehari- hari menjadi barang ramah lingkungan yang banyak dibeli', 'Sebagian besar responden memilih barang ramah lingkungan dengan alasan turut serta menjaga kelestarian bumi', 'Produk yang tidak bisa dibeli semua kalangan menjadi barang ramah lingkungan yang paling jarang dibeli', 'Produk yang bersifat kebutuhan gaya hidup menjadi barang ramah lingkungan yang banyak dibeli', '2024-11-03 13:55:17', '2024-11-03 13:55:17'),
(88, 5, 9, 2, '<h4>Empat Juta Pengajar Melakukan Pembelajaran Jarak Jauh</h4><p>Pandemi Covid-19 menuntut jutaan guru melaksanakan kegiatan belajar- mengajar dari rumah. Setidaknya terdapat 4.183.591 guru/dosen yang mengajar melalui metode pembelajaran jarak jauh. Para guru Sekolah Dasar/Madrasah Ibtidaiah paling banyak mengajar dari rumah. Jumlahnya mencapai 1.702.377 guru. Pengajar Sekolah Menengah Pertama/Madrasah Tsanawiyah mengikuti dengan 895.799 guru. Adapun data sebarannya sebagai berikut:</p><figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:818/520;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730642321.png\" width=\"818\" height=\"520\"></figure><p>Pembelajaran jarak jauh menekankan pada tatap muka virtual antara pengajar dengan murid. Metode tersebut memanfaatkan telekonferensi. Kementerian Pendidikan &nbsp;dan Kebudayaan (Kemdikbud) yang bekerja &nbsp;sama &nbsp; dengan mitra platform digital menyediakan materi melalui aplikasi belajar daring pada laman rumah belajar kemdikbud.</p><p>&nbsp;</p><p>Pernyataan&nbsp;yang&nbsp;tidak&nbsp;tepat&nbsp;mengenai&nbsp;jumlah&nbsp;guru&nbsp;yang&nbsp;melakukan&nbsp;pembelajaran&nbsp;jarak&nbsp;jauh&nbsp;adalah&nbsp;…<br>&nbsp;</p>', 'Jumlah guru PAUD yang melakukan PJJ lebih banyak daripada jumlah dosen yang melakukan PJJ', 'Semakin tinggi level pendidikan dari mulai sekolah dasar sampai perguruan tinggi, jumlah pengajar yang melakukan PJJ semakin berkurang', 'Jumlah guru pada tingkat sekolah menengah pertama yang melaksanakan PJJ lebih sedikit dibandingkan guru pada tingkat sekolah dasar', 'Jumlah guru pada tingkat sekolah dasar yang melakukan PJJ paling banyak dibadingkan tingkat lain', 'Jumlah guru pada tingkat PAUD yang melakukan PJJ sama banyak dengan jumlah guru pada pendidikan khusus', '2024-11-03 14:00:08', '2024-11-03 14:00:08'),
(89, 5, 9, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:818/520;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730642427.png\" width=\"818\" height=\"520\"></figure><p>Pernyataan berikut relevan dengan sebaran jumlah guru yang melakukan&nbsp;PJJ&nbsp;berdasarkan&nbsp;data&nbsp;tersebut&nbsp;adalah&nbsp;…</p>', 'Banyak yang memilih menjadi pengajar di pendidikan khusus', 'Jumlah sekolah dasar lebih banyak dibadingkan dengan sekolah tingkat lainnya', 'Sebaran jumlah SMP masih lebih banyak dibandingkan sekolah dasar', 'Jumlah guru PAUD lebih banyak daripada jumlah guru di tingkat SMA', 'Dosen yang mengajar PJJ lebih banyak dibandingkan dengan guru SMP yang melakukan PJJ', '2024-11-03 14:01:32', '2024-11-03 14:01:32'),
(90, 5, 9, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:818/520;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730642502.png\" width=\"818\" height=\"520\"></figure><p>Pengajar&nbsp;Sekolah&nbsp;Menengah&nbsp;Pertama/Madrasah&nbsp;Tsanawiyah&nbsp;yang&nbsp;melakukan PJJ sebanyak 895.799 guru. Pernyataan yang tepat mengenai jumlah guru SMA yang&nbsp;melakukan&nbsp;PJJ&nbsp;dibandingkan&nbsp;guru&nbsp;SMP&nbsp;adalah ….</p>', 'Jumlah guru SMA yang melakukan PJJ sama dengan 895.799 guruSMP', 'Jumlah guru SMA yang melakukan PJJ lebih banyak daripada 895.799 guru SMP', 'Jumlah guru SMA yang melakukan PJJ tidak mencapai 895.799 guru SMP', 'Jumlah guru SMA yang melakukan PJJ setengah dari 895.799 guru SMP', 'Jumlah guru SMA yang melakukan PJJ dua kali lipat dari 895.799 guru SMP', '2024-11-03 14:03:17', '2024-11-03 14:03:17'),
(91, 5, 9, 2, '<figure class=\"image image-style-align-center\"><img style=\"aspect-ratio:818/520;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730642608.png\" width=\"818\" height=\"520\"></figure><p>Jenjang/&nbsp;jenis&nbsp;pendidikan&nbsp;yang&nbsp;tidak&nbsp;menyelenggarakan&nbsp;proses&nbsp;pembelajaran&nbsp;secara&nbsp;online&nbsp;selama&nbsp;masa&nbsp;pandemi&nbsp;berdasarkan&nbsp;data&nbsp;tersebut&nbsp;adalah&nbsp;…</p>', 'PAUD dan SD', 'SMP dan SMA', 'Pendidikan khusus dan PAUD', 'Kursus dan pendidikan masyarakat', 'Perguruan tinggi dan SMA', '2024-11-03 14:04:30', '2024-11-03 14:04:30'),
(92, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:818/520;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730642680.png\" width=\"818\" height=\"520\"></figure><p>Berikut&nbsp;pernyataan&nbsp;yang&nbsp;paling&nbsp;mungkin&nbsp;tentang&nbsp;penyelenggaraan&nbsp;pendidikan keagamaan pada masa pandemi berdasarkan data tersebut&nbsp;adalah&nbsp;…</p>', 'Penyelenggaraan pendidikan keagamaan dilakukan secara online', 'Penyelenggaraan pendidikan keagamaan tetap dilakukan secara offline dengan pembatasan peserta sehingga tidak ada guru yang melaksanakan pembelajaran online', 'Tidak ada guru yang melaksanakan pendidikan keagamaan pada masa pandemi', 'Pelaksanaan pendidikan keagamaan dilakukan dengan menggunakan aplikasi telekonferensi', 'Pendidikan keagamaan tidak dilarang namun para peserta  masih takut dengan penyebaran virus covid 19', '2024-11-03 14:05:41', '2024-11-03 14:05:41'),
(93, 5, 9, 2, '<h4><strong>Serangan&nbsp;Virus&nbsp;Komputer&nbsp;Indonesia&nbsp;Menurun&nbsp;pada&nbsp;2019&nbsp;</strong></h4><p>Indonesia&nbsp;menempati&nbsp;posisi&nbsp;ke-39&nbsp;di&nbsp;dunia&nbsp;sebagai&nbsp;negara&nbsp;berbahaya&nbsp;dalam&nbsp;menjelajah&nbsp;internet&nbsp;pada&nbsp;2019.&nbsp;Jumlah&nbsp;deteksi&nbsp;ancaman&nbsp;virus&nbsp;web&nbsp;negara&nbsp;ini&nbsp;menurun&nbsp;2,7%&nbsp;dari&nbsp;periode&nbsp;yang&nbsp;sama&nbsp;2018.&nbsp;Dalam&nbsp;kategori&nbsp;ancaman&nbsp;lokal,&nbsp;Indonesia&nbsp;berada&nbsp;di&nbsp;posisi&nbsp;ke-63.&nbsp;Jumlah&nbsp;ancaman&nbsp;lokal&nbsp;telah&nbsp;menurun&nbsp;7,5%&nbsp;dibandingkan&nbsp;2018.&nbsp;Ancaman&nbsp;lokal&nbsp;berbasis&nbsp;komputer&nbsp;yang&nbsp;menyerang&nbsp;peserta&nbsp;Kaspersky&nbsp;Security&nbsp;Network&nbsp;(KSN)&nbsp;Indonesia&nbsp;pada&nbsp;2019&nbsp;sebesar&nbsp;56,3%.&nbsp;Sehingga&nbsp;Indonesia&nbsp;berada&nbsp;di&nbsp;peringkat&nbsp;63.&nbsp;Angka&nbsp;tersebut&nbsp;menurun&nbsp;dari&nbsp;tahun&nbsp;sebelumnya&nbsp;yang&nbsp;mencapai&nbsp;63,5%&nbsp;atau&nbsp;urutan&nbsp;55&nbsp;dunia.&nbsp;Infeksi&nbsp;lokal&nbsp;rata-rata disebabkan worms dan virus. Sepanjang 2019, Kaspersky mengidentifikasi&nbsp;118.403.896&nbsp;kejadian&nbsp;lokal&nbsp;pada&nbsp;komputer&nbsp;partisipan&nbsp;KSN&nbsp;Indonesia.&nbsp;Malware&nbsp;yang&nbsp;menyerang&nbsp;secara&nbsp;umum&nbsp;bersumber&nbsp;dari&nbsp;drive&nbsp;USB&nbsp;yang&nbsp;sering&nbsp;dilepas,&nbsp;CD,&nbsp;dan&nbsp;DVD.</p><figure class=\"image\"><img style=\"aspect-ratio:600/355;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730642969.png\" width=\"600\" height=\"355\"></figure><p>Pernyataan&nbsp;yang&nbsp;kurang&nbsp;tepat&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama&nbsp;adalah...</p>', 'Indonesia adalah negara yang cukup berbahaya dalam berinternet', 'Jumlah virus web negara meningkat sebanyak 2,7% dari periode sebelumnya', 'Indonesia berada di posisi ke-63 sebagai negara dengan ancaman virus lokal tertinggi', 'Jumlah deteksi ancaman virus web Indonesia terjadi penurunan', 'Jumlah	ancaman	virus	lokal	di	Indonesia	menurun	7,5% dibandingkan 2018', '2024-11-03 14:11:13', '2024-11-03 14:11:13'),
(94, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:600/355;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643093.png\" width=\"600\" height=\"355\"></figure><p>Jika Indonesia menempati negara ke-12 di dunia sebagai negara paling berbahaya&nbsp;dalam&nbsp;menjelajah&nbsp;internet,&nbsp;maka&nbsp;pernyataan&nbsp;yang&nbsp;paling&nbsp;mungkin&nbsp;adalah...</p>', 'Jumlah deteksi ancaman virus di Indonesia berada di angka 2,7%', 'Jumlah ancaman lokal di Indonesia berada di angka 7,5%', 'Jumlah deteksi ancaman virus web meningkat 7,5% dari periode sebelumnya', 'Jumlah ancaman lokal virus di Indonesia lebih tinggi dari jumlah deteksi ancaman virus web', 'Jumlah deteksi ancaman virus web di Indonesia menurun 2,7%', '2024-11-03 14:12:38', '2024-11-03 14:12:38'),
(95, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:600/355;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643180.png\" width=\"600\" height=\"355\"></figure><p>Simpulan&nbsp;yang&nbsp;tepat&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama&nbsp;adalah...</p>', 'Indonesia cukup berkembang dalam mengatasi virus siber', 'Indonesia adalah negara dengan ancaman virus siber tertinggi di dunia', 'Indonesia adalah satu-satunya negara dengan ancaman virus siber terendah di dunia', 'Ancaman virus siber di Indonesia mengalami penurunan setiap tahun', 'Indonesia adalah negara yang cukup aman dari virus siber', '2024-11-03 14:13:48', '2024-11-03 14:13:48'),
(96, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:600/355;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643238.png\" width=\"600\" height=\"355\"></figure><p>Berikut&nbsp;pernyataan&nbsp;yang&nbsp;benar&nbsp;berdasarkan&nbsp;data&nbsp;pada&nbsp;grafik&nbsp;adalah&nbsp;...</p>', 'Indonesia adalah negara dengan penurunan ancaman virus siber tertinggi di ASEAN', 'Filipina adalah negara dengan penurunan ancaman virus siber tertinggi setelah Thailand', 'Negara dengan penurunan ancaman siber tertinggi adalah Indonesia', 'Singapura adalah negara dengan penurunan siber tertinggi ketiga setelah Thailand dan Filipina', 'Malaysia adalah negara dengan penurunan siber paling rendah berdasarkan data', '2024-11-03 14:14:53', '2024-11-03 14:14:53'),
(97, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:600/355;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643304.png\" width=\"600\" height=\"355\"></figure><p>Berdasarkan&nbsp;data&nbsp;di&nbsp;atas,&nbsp;jika&nbsp;kualitas&nbsp;proteksi&nbsp;pemerintah&nbsp;terhadap&nbsp;keamanan virus siber di ASEAN menurun setiap tahun kecuali Singapura, maka dalam lima&nbsp;tahun&nbsp;ke&nbsp;depan...</p>', 'Vietnam adalah negara dengan proteksi ancaman virus paling aman di dunia', 'Indonesia menjadi negara dengan tingkat ancaman virus siber paling tinggi di ASEAN', 'Malaysia menjadi negara paling berbahaya dalam keamanan virus siber', 'Singapura adalah negara dengan keamanan siber paling menjanjikan daripada Vietnam, Filipina Indonesia, Malaysia dan Thailand', 'Thailand menjadi negara paling kuat dalam sistem keamanan siber daripada negara lain dalam grafik', '2024-11-03 14:16:15', '2024-11-03 14:16:15'),
(98, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:600/355;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643390.png\" width=\"600\" height=\"355\"></figure><p>Simpulan&nbsp;yang&nbsp;tidak&nbsp;benar&nbsp;berdasarkan&nbsp;paragraf&nbsp;kedua&nbsp;adalah...</p>', 'Indonesia mengalami penurunan ancaman lokal berbasis komputer', 'Indonesia menjadi negara yang paling rentan terhadap kejahatan siber', 'Indonesia adalah salah satu negara peserta Karspersky Secutiry Network', 'Peringkat Indonesia menurun terhadap persentase ancaman lokal berbasis internasional', 'Dalam setahun, Indonesia mengalami penurunan sebanyak 7,2% atas ancaman lokal berbasis komputer', '2024-11-03 14:17:27', '2024-11-03 14:17:27'),
(99, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:600/355;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643458.png\" width=\"600\" height=\"355\"></figure><p>Berikut&nbsp;adalah&nbsp;pernyataan&nbsp;yang&nbsp;salah&nbsp;berdasarkan&nbsp;teks...</p>', 'Infeksi siber lokal rerata karena virus dan worms', 'Jumlah deteksi ancaman virus Indonesia mengalami penurunan', 'Karspersky telah mengidentifikasi lebih dari 118 juta infeksi di komputer sedunia', 'Indonesia menempati posisi ke-39 sebagai negara berbahaya dalam berinternet', 'Virus yang biasanya menyerang bersumber dari drive USB yang sering dilepas', '2024-11-03 14:18:32', '2024-11-03 14:18:32'),
(100, 5, 9, 2, '<h4><strong>Lele&nbsp;Terbanyak,&nbsp;Ikan&nbsp;Mas&nbsp;dan&nbsp;Nila&nbsp;Berserak</strong></h4><p>Meski&nbsp;menjadi&nbsp;negeri&nbsp;bahari,&nbsp;tingkat&nbsp;konsumsi&nbsp;ikan&nbsp;masih&nbsp;rendah.&nbsp;Konsumsi&nbsp;ikan&nbsp;nasional&nbsp;mencapai&nbsp;50,49&nbsp;kilogram&nbsp;per&nbsp;orang&nbsp;per&nbsp;tahun&nbsp;hingga&nbsp;Oktober&nbsp;2019.&nbsp;Angka&nbsp;itu&nbsp;meleset&nbsp;dari&nbsp;target&nbsp;sebelumnya,&nbsp;yakni&nbsp;sebesar&nbsp;54&nbsp;kilogram&nbsp;per&nbsp;orang.&nbsp;Jika&nbsp;dibandingkan&nbsp;dengan&nbsp;sejumlah&nbsp;negara,&nbsp;masih&nbsp;kalah&nbsp;dengan&nbsp;Korea&nbsp;Selatan&nbsp;(78,5&nbsp;kilogram&nbsp;per&nbsp;tahun),&nbsp;Myanmar&nbsp;(59,9&nbsp;kilogram&nbsp;per&nbsp;tahun),&nbsp;Malaysia&nbsp;(58,6&nbsp;kilogram&nbsp;per&nbsp;tahun),&nbsp;dan&nbsp;Jepang&nbsp;(58&nbsp;kilogram&nbsp;per&nbsp;tahun).</p><p>Lokadata&nbsp;menelisik&nbsp;data&nbsp;Survei&nbsp;Sosial&nbsp;Ekonomi&nbsp;Nasional&nbsp;(Susenas)&nbsp;2018&nbsp;untuk melihat jenis ikan yang paling banyak dikonsumsi. Setidaknya ada enam&nbsp;jenis ikan paling banyak dikonsumsi kurun setahun terakhir, yakni ikan lele,&nbsp;mas dan nila, kembung, bandeng, dan mujair. Hasilnya, ikan lele paling banyak&nbsp;dikonsumsi, mencapai 138 gram per bulan. Namun, jika berdasarkan wilayah,&nbsp;ikan&nbsp;mas&nbsp;dan&nbsp;nila&nbsp;paling&nbsp;digemari.&nbsp;Tingkat&nbsp;konsuminya&nbsp;berada&nbsp;di&nbsp;65&nbsp;kabupaten/kota,&nbsp;mengalahkan&nbsp;konsumsi&nbsp;ikan&nbsp;lele&nbsp;di&nbsp;63&nbsp;kabupaten/kota.</p><p>Terdapat&nbsp;segmentasi&nbsp;konsumsi&nbsp;jenis&nbsp;ikan&nbsp;berdasarkan&nbsp;wilayah.&nbsp;Misalnya, ikan lele lebih banyak sukai di Pulau Jawa dan Sumatra. Khususnya Jawa Tengah&nbsp;dan&nbsp;Jawa&nbsp;Timur,&nbsp;seperti&nbsp;Kabupaten&nbsp;Madiun&nbsp;(350&nbsp;gram/orang/bulan)&nbsp;dan&nbsp;Kabupaten&nbsp;Klaten&nbsp;(255&nbsp;gram/orang/bulan). Di Sumatra, ikan lele banyak&nbsp;dikonsumsi&nbsp;di&nbsp;wilayah&nbsp;Lampung&nbsp;Timur&nbsp;(350&nbsp;gram/orang/bulan) dan Ogan Komering Ulu Timur (486 gram/orang/bulan). Sedangkan konsumsi ikan&nbsp;mas&nbsp;dan&nbsp;nila&nbsp;cakupannya&nbsp;lebih&nbsp;luas.&nbsp;Tersebar&nbsp;di&nbsp;Jawa&nbsp;Barat,&nbsp;sisi&nbsp;barat&nbsp;Sumatra,&nbsp;dan&nbsp;Kalimantan.&nbsp;Misalnya&nbsp;di&nbsp;Kabupaten&nbsp;Bandung&nbsp;(380&nbsp;gram/orang/bulan),&nbsp;Kotawaringin&nbsp;Barat&nbsp;(313&nbsp;gram/orang/bulan), dan Kabupaten Solok (378&nbsp;gram/orang/bulan).</p><p>Ikan bandeng lebih banyak dikonsumsi di wilayah Sulawesi. Seperti di&nbsp;Kota Luwu Utara, Sulawesi Selatan. Konsumsinya lebih dari setengah kilogram,&nbsp;mencapai 621 gram/orang/bulan. Lain hal dengan ikan kembung dan mujair, lebih banyak dikonsumsi di Papua. Tingkat konsumsinya mencapai&nbsp;satu&nbsp;kilogram per orang setiap bulannya di Kabupaten Merauke. Begitu pula dengan konsumsi ikan kembung di Kabupaten Kaimana, Papua Barat&nbsp;yang&nbsp;konsumsinya&nbsp;mencapai&nbsp;1.422&nbsp;gram/orang/bulan atau hampir 1,5&nbsp;kilogram.</p><figure class=\"image\"><img style=\"aspect-ratio:559/303;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643877.jpg\" width=\"559\" height=\"303\"></figure><p>Simpulan&nbsp;berdasarkan&nbsp;paragraf&nbsp;pertama&nbsp;adalah...</p>', 'Tingkat konsumsi ikan di Indonesia paling rendah di Asia', 'Korea Selatan adalan konsumen ikan paling tinggi di Asia', 'Myanmar adalah negara konsumen ikan paling tinggi kedua di Asia', 'Konsumen ikan di Indonesia masih kalah dengan Malaysia dan Jepang', 'Malaysia memiliki tingkat konsumen ikan lebih tinggi daripada Indonesia', '2024-11-03 14:25:37', '2024-11-03 14:25:37'),
(101, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:559/303;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730643948.jpg\" width=\"559\" height=\"303\"></figure><p>Jika&nbsp;konsumsi&nbsp;ikan&nbsp;di&nbsp;Indonesia&nbsp;meningkat&nbsp;10%,&nbsp;maka&nbsp;selisih&nbsp;dengan&nbsp;Myanmar&nbsp;jika&nbsp;hanya&nbsp;meningkat&nbsp;5%&nbsp;adalah...</p>', '73 kilogram', '7,35 kilogram', '0,73 kilogram', '73,5 kilogram', '7,9 kilogram', '2024-11-03 14:26:49', '2024-11-03 14:26:49'),
(102, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:559/303;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730644019.jpg\" width=\"559\" height=\"303\"></figure><p>Pernyataan&nbsp;yang&nbsp;salah&nbsp;berdasarkan&nbsp;paragraf&nbsp;kedua&nbsp;adalah...</p>', 'Survei Sosial Ekonomi Nasional diadakan oleh Lokadata', 'Terdapat enam jenis ikan paling banyak dikonsumsi di Indonesia', 'Ikan lele adalah ikan yang paling banyak dikonsumsi di Indonesia', 'Ikan mas dan nila lebih populer daripada ikan lele', 'Ikan lele dikonsumsi lebih dari 60 kabupaten/kota', '2024-11-03 14:28:05', '2024-11-03 14:28:05'),
(103, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:559/303;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730644095.jpg\" width=\"559\" height=\"303\"></figure><p>Berdasarkan&nbsp;paragraf&nbsp;ketiga,&nbsp;jika&nbsp;konsumsi&nbsp;lele&nbsp;di&nbsp;Madiun&nbsp;meningkat&nbsp;8%&nbsp;sedangkan&nbsp;di&nbsp;kabupaten/kota&nbsp;lain&nbsp;tetap,&nbsp;maka...</p>', 'Selisih dengan Kabupaten Klaten mencapai lebih dari 123 gram per orang sebulan', 'Selisih dengan Lampung Timur mencapai 20 gram per orang sebulan', 'Selisih dengan konsumsi ikan mas di Kabupaten Bandung mencapai 3 gram per orang sebulan', 'Selisih dengan konsumsi ikan mas di Kabupaten Solok mencapai 1 gram per orang sebulan', 'Selisih dengan konsumsi ikan mas di Kotawaringin Barat mencapai 65 gram per orang sebulan', '2024-11-03 14:29:31', '2024-11-03 14:29:31'),
(104, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:559/303;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730644181.jpg\" width=\"559\" height=\"303\"></figure><p>Berdasarkan&nbsp;data,&nbsp;jika&nbsp;konsumsi&nbsp;seluruh&nbsp;ikan&nbsp;meningkat&nbsp;12%&nbsp;gram&nbsp;per&nbsp;orang&nbsp;dalam&nbsp;sebulan&nbsp;kecuali&nbsp;ikan&nbsp;kembung,&nbsp;maka...</p>', 'Ikan kembung paling sedikit dikonsumsi', 'Ikan Bandeng paling banyak dikonsumsi', 'Ikan lele menjadi primadona masyarakat', 'Ikan mujaer paling sedikit dikonsumsi setelah ikan bandeng', 'Ikan nila paling banyak diburu oleh masyarakat', '2024-11-03 14:30:42', '2024-11-03 14:30:42'),
(105, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:559/303;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730644251.jpg\" width=\"559\" height=\"303\"></figure><p>Simpulan&nbsp;yang&nbsp;tepat&nbsp;berdasarkan&nbsp;paragraf&nbsp;terakhir&nbsp;adalah...</p>', 'Konsumsi ikan lele di Indonesia meningkat', 'Konsumsi ikan lele lebih tinggi daripada ikan kembung dan mujaer', 'Konsumsi ikan kembung di Kabupaten Merauke lebih rendah daripada di Papua Barat', 'Konsumsi ikan di Indonesia bervariasi', 'Konsumsi ikan di Indonesia lebih tinggi pada jenis ikan kembung', '2024-11-03 14:31:51', '2024-11-03 14:31:51'),
(106, 5, 9, 2, '<figure class=\"image\"><img style=\"aspect-ratio:559/303;\" src=\"https://percobaan2.tebingtinggikota.go.id/soal/images/1730644322.jpg\" width=\"559\" height=\"303\"></figure><p>Jika konsumsi bandeng lebih tinggi 10% daripada lele dan kembung 8%&nbsp;lebih tinggi daripada mujaer, maka selisih konsumsi ikan bandeng dan kembung adalah...</p>', '4,38 gram per orang sebulan', '43,8 gram per orang sebulan', '5,38 gram per orang sebulan', '53,8 gram per orang sebulan', '0,54 gram per orang sebulan', '2024-11-03 14:33:15', '2024-11-03 14:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `ujians`
--

CREATE TABLE `ujians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `paket_to_id` bigint(20) UNSIGNED NOT NULL,
  `jlh_soal` int(11) NOT NULL,
  `waktu_pengerjaan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ujians`
--

INSERT INTO `ujians` (`id`, `user_id`, `paket_to_id`, `jlh_soal`, `waktu_pengerjaan`, `created_at`, `updated_at`) VALUES
(1, 13, 8, 42, '00:33:11', '2024-10-31 11:14:07', '2024-10-31 11:14:07');

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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'ahmad afandi', 'fandi@mail.com', NULL, '$2y$12$F98kXdNKOIEtutls/eO3X.HATyrQoPoVX5Q9ESiL73hQrzlEk24lu', '1730192334_219988.png', NULL, '2024-10-04 04:25:43', '2024-10-29 08:58:55'),
(13, 'Monalisa', 'monalisa@mail.com', NULL, '$2y$12$bp/JmCzxSNazMscBE9aACu.usMmUsNfdyuWfRq72xqpSF79R6a9.C', '1728401673_219969.png', NULL, '2024-10-04 09:22:28', '2024-10-29 01:47:17'),
(14, 'Zahira Khalisa', 'zahira@mail.com', NULL, '$2y$12$TIgRNKG7BmEmVdn2sEfN1eMbcLD4p/dRFJATiq.1h4NCsqfNBye72', '1729755844_219969.png', NULL, '2024-10-24 07:39:02', '2024-10-24 07:44:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`) USING BTREE;

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `jawabans`
--
ALTER TABLE `jawabans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `jobs_queue_index` (`queue`) USING BTREE;

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kunci_jawabans`
--
ALTER TABLE `kunci_jawabans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `paket_tos`
--
ALTER TABLE `paket_tos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `permission_role_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`) USING BTREE,
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`) USING BTREE,
  ADD KEY `role_user_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `sessions_last_activity_index` (`last_activity`) USING BTREE;

--
-- Indexes for table `soals`
--
ALTER TABLE `soals`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ujians`
--
ALTER TABLE `ujians`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawabans`
--
ALTER TABLE `jawabans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kunci_jawabans`
--
ALTER TABLE `kunci_jawabans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `paket_tos`
--
ALTER TABLE `paket_tos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `soals`
--
ALTER TABLE `soals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `ujians`
--
ALTER TABLE `ujians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
