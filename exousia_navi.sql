-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 07:59 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exousia_navi`
--

-- --------------------------------------------------------

--
-- Table structure for table `eastwoods_facilities`
--

CREATE TABLE `eastwoods_facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facilities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eastwoods_facilities`
--

INSERT INTO `eastwoods_facilities` (`id`, `facilities`, `operation_time`, `created_at`, `updated_at`, `floor`) VALUES
(2, 'epas', '08:00 am', '2023-09-06 10:54:52', '2023-10-21 16:32:25', 'ground-floor'),
(3, 'beatae', '06:54 am', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-1'),
(4, 'illum', '13:01 pm', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-2'),
(5, 'sit', '10:38 am', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-2'),
(6, 'qui', '22:32 pm', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-3'),
(7, 'sed', '11:20 am', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-3'),
(8, 'laborum', '07:24 am', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-4'),
(9, 'tempora', '00:38 am', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-4'),
(10, 'necessitatibus', '16:50 pm', '2023-09-06 10:56:54', '2023-09-23 10:51:48', 'floor-5'),
(13, 'library', '09:00 am', '2023-09-23 10:37:58', '2023-09-23 10:37:58', 'floor-1'),
(14, 'saso', '8:00 am', '2023-09-23 10:37:58', '2023-10-21 16:09:53', 'ground-floor'),
(15, 'guidance', '9:00 am', '2023-09-23 10:37:58', '2023-09-23 10:37:58', 'ground-floor'),
(16, 'guard', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 17:28:40', 'ground-floor'),
(17, 'garage', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(18, 'cashier', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(19, 'registrar1', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(20, 'registrar2', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(21, 'male', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 17:28:40', 'ground-floor'),
(22, 'female', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 17:28:40', 'ground-floor'),
(23, 'room101', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(24, 'room102', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(25, 'guidance', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 17:28:40', 'ground-floor'),
(26, 'admission', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 17:28:40', 'ground-floor'),
(27, 'canteen', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(28, 'engineering', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 17:28:40', 'ground-floor'),
(29, 'grade7', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(30, 'drawing', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 17:28:40', 'ground-floor'),
(31, 'genex', '09:00 am', '2023-09-27 07:55:19', '2023-09-27 07:55:19', 'ground-floor'),
(32, 'travel', '09:00 am', '2023-09-27 07:57:50', '2023-09-27 17:28:40', 'ground-floor');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floorplans`
--

CREATE TABLE `floorplans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gridSize` bigint(20) NOT NULL,
  `gridDetails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`gridDetails`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floorplans`
--

INSERT INTO `floorplans` (`id`, `floor`, `gridSize`, `gridDetails`, `created_at`, `updated_at`) VALUES
(64, 'ground-floor', 140, '[{\"x\":\"0\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"0\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"drawing\"},{\"x\":\"0\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"0\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"0\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"0\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"0\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"2\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"1\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"2\",\"isBlock\":\"true\",\"label\":\"grade7\"},{\"x\":\"1\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"2\",\"isBlock\":\"true\",\"label\":\"saso\"},{\"x\":\"1\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"2\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"1\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"engineering\"},{\"x\":\"2\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"2\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"4\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"3\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"4\",\"isBlock\":\"true\",\"label\":\"canteen\"},{\"x\":\"3\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"4\",\"isBlock\":\"true\",\"label\":\"epas\"},{\"x\":\"3\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"4\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"male\"},{\"x\":\"4\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"room102\"},{\"x\":\"4\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"4\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"4\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"female\"},{\"x\":\"4\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"4\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"4\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"4\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"5\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"4\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"6\",\"isBlock\":\"true\",\"label\":\"admission\"},{\"x\":\"5\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"6\",\"isBlock\":\"true\",\"label\":\"stair-in\"},{\"x\":\"5\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"6\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"5\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"guidance\"},{\"x\":\"6\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"room102\"},{\"x\":\"6\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"6\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"6\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"6\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"cashier\"},{\"x\":\"6\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"registrar2\"},{\"x\":\"6\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"6\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"6\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"8\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"7\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"8\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"7\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"8\",\"isBlock\":\"true\",\"label\":\"registrar1\"},{\"x\":\"7\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"front\"},{\"x\":\"8\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"9\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"8\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"10\",\"isBlock\":\"true\",\"label\":\"travel\"},{\"x\":\"9\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"10\",\"isBlock\":\"true\",\"label\":\"guard\"}]', '2023-09-28 09:12:12', '2023-09-28 09:12:12'),
(66, 'floor-1', 140, '[{\"x\":\"0\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"0\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"library\"},{\"x\":\"0\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"1\",\"isBlock\":\"true\",\"label\":\"wall\"},{\"x\":\"0\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"0\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"1\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"2\",\"isBlock\":\"true\",\"label\":\"beatae\"},{\"x\":\"1\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"1\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"2\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"3\",\"isBlock\":\"true\",\"label\":\"stair-in\"},{\"x\":\"2\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"2\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"3\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"3\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"4\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"4\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"5\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"5\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"6\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"7\",\"isBlock\":\"true\",\"label\":\"front\"},{\"x\":\"6\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"6\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"7\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"7\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"8\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"8\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"9\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"0\",\"width\":\"60\",\"height\":\"60\",\"row\":\"1\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"1\",\"width\":\"60\",\"height\":\"60\",\"row\":\"2\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"2\",\"width\":\"60\",\"height\":\"60\",\"row\":\"3\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"3\",\"width\":\"60\",\"height\":\"60\",\"row\":\"4\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"4\",\"width\":\"60\",\"height\":\"60\",\"row\":\"5\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"5\",\"width\":\"60\",\"height\":\"60\",\"row\":\"6\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"6\",\"width\":\"60\",\"height\":\"60\",\"row\":\"7\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"7\",\"width\":\"60\",\"height\":\"60\",\"row\":\"8\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"8\",\"width\":\"60\",\"height\":\"60\",\"row\":\"9\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"9\",\"width\":\"60\",\"height\":\"60\",\"row\":\"10\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"10\",\"width\":\"60\",\"height\":\"60\",\"row\":\"11\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"11\",\"width\":\"60\",\"height\":\"60\",\"row\":\"12\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"12\",\"width\":\"60\",\"height\":\"60\",\"row\":\"13\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null},{\"x\":\"9\",\"y\":\"13\",\"width\":\"60\",\"height\":\"60\",\"row\":\"14\",\"column\":\"10\",\"isBlock\":\"false\",\"label\":null}]', '2023-10-22 16:24:20', '2023-10-22 16:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `frequentlies`
--

CREATE TABLE `frequentlies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `frequently` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frequentlies`
--

INSERT INTO `frequentlies` (`id`, `frequently`, `created_at`, `updated_at`) VALUES
(1, 'who is test?', '2023-09-10 05:40:37', '2023-10-21 13:14:14'),
(2, 'where is the library located?', '2023-09-10 05:41:57', '2023-09-10 20:19:26'),
(3, 'who is jaypee?', '2023-09-10 05:41:57', '2023-09-10 07:21:27'),
(6, 'Where exactly can I locate the epas?', '2023-09-19 07:28:37', '2023-09-19 07:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `functionalities`
--

CREATE TABLE `functionalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `function` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `functionalities`
--

INSERT INTO `functionalities` (`id`, `function`, `status`, `created_at`, `updated_at`) VALUES
(1, 'speech', 0, '2023-10-21 14:22:51', '2023-10-21 19:39:34'),
(2, 'text', 0, '2023-10-21 14:22:57', '2023-10-21 19:52:13'),
(3, 'authentication', 0, '2023-10-21 14:24:23', '2023-10-21 19:52:20');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_06_074928_create_eastwoods_facilities_table', 2),
(6, '2023_09_10_021546_create_frequentlies_table', 3),
(7, '2023_09_10_091441_create_teachers_table', 4),
(10, '2023_09_14_154828_create_floorplans_table', 5),
(11, '2023_09_17_132424_update_table_name', 6),
(12, '2023_10_21_102124_create_updates_table', 7),
(13, '2023_10_21_131142_create_functionalities_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facilities_id` bigint(255) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `position`, `facilities_id`, `created_at`, `updated_at`) VALUES
(1, 'teacher1', 'director', 14, '2023-09-10 12:50:22', '2023-10-21 10:51:12'),
(2, 'teacher3', 'principal', 2, '2023-09-10 12:50:22', '2023-09-19 17:19:12'),
(4, 'teacher2', 'teacher', 14, '2023-09-10 13:41:01', '2023-10-21 11:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(255) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `from`, `list`, `action`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Teachers information', 'You have added a new information.', 'added', 1, NULL, '2023-10-21 15:44:23'),
(2, 'Teachers Information', 'You have deleted information.', 'deleted', 1, '2023-10-21 15:06:58', '2023-10-21 15:44:23'),
(3, 'Facilities', 'You have updated a Facilities.', 'updated', 1, '2023-10-21 15:43:01', '2023-10-21 15:44:23'),
(4, 'Facilities', 'You have updated a Facilities.', 'updated', 1, '2023-10-21 15:48:26', '2023-10-21 15:48:52'),
(5, 'Facilities', 'You have updated a Facilities.', 'updated', 1, '2023-10-21 16:09:41', '2023-10-21 16:34:14'),
(6, 'Facilities', 'You have updated a Facilities.', 'updated', 1, '2023-10-21 16:09:53', '2023-10-21 16:34:14'),
(7, 'Facilities', 'You have updated a Facilities.', 'updated', 1, '2023-10-21 16:32:25', '2023-10-21 16:34:14'),
(8, 'Functionalities Update', 'You have enabled speechfunction.', 'updated', 1, '2023-10-21 19:39:34', '2023-10-21 19:48:20'),
(9, 'Functionalities Update', 'You have enabled authenticationfunction.', 'updated', 1, '2023-10-21 19:40:28', '2023-10-21 19:48:20'),
(10, 'Functionalities Update', 'You have disabled authenticationfunction.', 'updated', 1, '2023-10-21 19:40:55', '2023-10-21 19:48:20'),
(11, 'Functionalities Update', 'You have enabled authentication function.', 'updated', 1, '2023-10-21 19:46:34', '2023-10-21 19:48:20'),
(12, 'Functionalities Update', 'You have disabled authentication function.', 'updated', 1, '2023-10-21 19:47:50', '2023-10-21 19:48:20'),
(13, 'Functionalities Update', 'You have enabled authentication function.', 'updated', 1, '2023-10-21 19:48:08', '2023-10-21 19:48:20'),
(14, 'Functionalities Update', 'You have disabled text function.', 'updated', 1, '2023-10-21 19:49:46', '2023-10-21 19:51:19'),
(15, 'Functionalities Update', 'You have disabled text function.', 'updated', 1, '2023-10-21 19:50:04', '2023-10-21 19:51:19'),
(16, 'Functionalities Update', 'You have enabled text function.', 'updated', 1, '2023-10-21 19:51:12', '2023-10-21 19:51:19'),
(17, 'Functionalities Update', 'You have disabled text function.', 'updated', 1, '2023-10-21 19:52:13', '2023-10-21 19:52:25'),
(18, 'Functionalities Update', 'You have disabled authentication function.', 'updated', 1, '2023-10-21 19:52:20', '2023-10-21 19:52:25'),
(19, 'Floor Plan', 'You have Added a new layout.', 'added', 0, '2023-10-22 16:13:50', '2023-10-22 16:13:50'),
(20, 'Floor Plan', 'You have Added a new layout.', 'added', 0, '2023-10-22 16:24:20', '2023-10-22 16:24:20');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jaypee', 'admin@gmail.com', NULL, '$2y$10$4/s2F.DG5/Nsy3AB8ojrU.qTCTpJx/KIXV.w6XpiT6WWIw1kLxAj.', NULL, '2023-09-06 10:11:10', '2023-09-06 10:11:10'),
(2, 'corine', 'jpquintana01@gmail.com', NULL, '$2y$10$WggmAaSgBY8GuIIXSaK0q.lgZNit5uFCOSjsVFoi08K/o4bQy0Y1a', NULL, '2023-09-06 10:40:43', '2023-09-06 10:40:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eastwoods_facilities`
--
ALTER TABLE `eastwoods_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `floorplans`
--
ALTER TABLE `floorplans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequentlies`
--
ALTER TABLE `frequentlies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functionalities`
--
ALTER TABLE `functionalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
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
-- AUTO_INCREMENT for table `eastwoods_facilities`
--
ALTER TABLE `eastwoods_facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floorplans`
--
ALTER TABLE `floorplans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `frequentlies`
--
ALTER TABLE `frequentlies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `functionalities`
--
ALTER TABLE `functionalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
