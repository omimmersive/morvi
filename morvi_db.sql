-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 03:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `morvi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address`, `created_at`, `updated_at`, `lat`, `lng`, `active`, `user_id`, `apartment`, `intercom`, `floor`, `entry`) VALUES
(1, '52123 Ziemann Shore Apt. 011\nDinaborough, MT 88686-6213', '2022-10-08 02:00:24', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(2, '7637 Beulah Plain\nAuermouth, FL 58739', '2022-10-08 02:00:24', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(3, '279 Morgan Parkway\nCarterland, KY 95921', '2022-10-08 02:00:24', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(4, '82754 Koepp Fall\nNorth Ocieland, KS 81374', '2022-10-08 02:00:25', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(5, '3375 Kale Extension Apt. 041\nSouth Crystelchester, KS 57205', '2022-10-08 02:00:25', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(6, '465 Ford Spur Suite 038\nWest Mauriciofort, MS 47708-3872', '2022-10-08 02:00:25', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(7, '3945 Leffler Stream Suite 467\nNew Barton, MT 97377', '2022-10-08 02:00:25', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(8, '371 Ebert Stream\nEast Boris, MI 43087-7494', '2022-10-08 02:00:25', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(9, '87405 Zemlak Circles Suite 790\nJordymouth, MS 45133', '2022-10-08 02:00:26', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(10, '80744 Ernser Road\nOlaland, DE 59833', '2022-10-08 02:00:26', '2022-10-08 02:00:24', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `coaching_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `coaching_id`, `title`, `position`, `image`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'alkeoterbige', 'Footer', '1_book_cover.png', 0, 0, '2022-10-14 12:11:55', '2022-11-18 12:54:10'),
(2, 0, 'Advertisement', 'Main Slider', '1665964441941Grade.jpeg,1665964682984logo.png,1667377082867frank-mckenna-OD9EOzfSOh0-unsplash.jpg,1667377082812natalya-zaritskaya-SIOdjcYotms-unsplash.jpg', 0, 1, '2022-10-16 21:02:59', '2022-11-22 17:41:33'),
(3, 0, 'Ipsum', 'Popup', '1666334349838rowan-heuvel-U6t80TWJ1DM-unsplash_1666003133.jpg', 0, 0, '2022-10-17 05:28:39', '2022-11-21 18:07:27'),
(4, 0, 'Banner Today', 'Main Slider', '1665999848816no-image.png,1665999848201avatar_1647511994.jpg', 0, 0, '2022-10-17 15:14:08', '2022-11-15 16:21:44'),
(5, 0, 'MAin Slider', 'Main Slider', '1666012963487300798522_498686092260423_7403946250116045586_n.jpg,1666012963348300798522_498686092260423_7403946250116045586_n.jpg', 0, 0, '2022-10-17 18:52:43', '2022-11-17 12:30:07'),
(6, 0, 'Main Slider', 'Main Slider', '1666012972254300798522_498686092260423_7403946250116045586_n.jpg', 0, 0, '2022-10-17 18:52:52', '2022-11-22 17:00:46'),
(9, 0, 'Exam Categories', 'Main Slider', '1668668776850images_(11).jpg,1668756231869download_(18).jpg,1668756815211education-horizontal-typography-banner-set-with-learning-knowledge-symbols-flat-illustration_1284-29493.webp', 0, 0, '2022-11-17 12:36:16', '2022-11-22 17:42:36'),
(8, 22, 'Carice whenua', 'Main Slider', '1668509375831img.jpg', 0, 0, '2022-11-15 16:19:35', '2022-11-18 12:54:24'),
(10, 22, 'Exam Image', 'Main Slider', '1668759870901imgpsh_fullsize_anim_5_11zon.jpg,1668759870886imgpsh_fullsize_anim_(1)_4_11zon.jpg,1668759870649images_(13)_1_11zon.jpg,1668759870924images_(12)_2_11zon.jpg,1668759870101download_(19)_3_11zon.jpg', 0, 1, '2022-11-18 13:54:30', '2022-11-18 13:54:30'),
(11, 26, 'Immersive Advertise', 'Main Slider', '1668765261680logo-blue-new.png,1668765261447sanskrit.jpg', 0, 1, '2022-11-18 15:24:21', '2022-11-21 18:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Vendor, 1 - Blog',
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_type` varchar(50) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_type_book` varchar(255) NOT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `heading` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `sample_book_upload` varchar(255) NOT NULL,
  `main_book_upload` varchar(255) NOT NULL,
  `sample_epub_book` varchar(255) NOT NULL,
  `main_epub_book` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `book_type`, `exam_id`, `exam_type_book`, `publisher_id`, `heading`, `description`, `image`, `selling_price`, `sample_book_upload`, `main_book_upload`, `sample_epub_book`, `main_epub_book`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chemistry', 'Hindi', 1, 'Pre', 20, 'Lorem Ipsum is simply.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1_book_cover.png', '192', '1_sample_book.pdf', '1_main_book.pdf', '', '', 1, '2022-10-12 12:58:08', '2022-10-17 15:08:11'),
(2, 'Maggie Vargas', 'English', 1, '', 1, 'jowabuahmivi', '<p>test</p>', '2_book_cover.jpeg', '556.19', '2_sample_book.pdf', '2_main_book.pdf', '', '', 1, '2022-10-14 19:44:14', '2022-10-31 15:45:30'),
(3, 'Samuel Leonard', 'English', 1, 'Pre, Main', 1, 'vozbihpoweft', '<p>sdrgf</p>', '3_book_cover.png', '956.6', '3_sample_book.pdf', '3_main_book.pdf', '', '', 1, '2022-10-14 19:47:09', '2022-10-31 15:45:37'),
(4, 'Lorem ipsum', 'English', 1, '', NULL, 'lorem ipsum', '<p>this is for test demo description</p>', '4_book_cover.png', '120', '4_sample_book.pdf', '4_main_book.pdf', '4_sample_epub_book.epub', '4_main_epub_book.epub', 1, '2022-10-28 18:26:20', '2022-11-10 19:07:08'),
(5, 'Test Chandresh', 'English', 2, '', 18, 'Testing Chandresh', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '5_book_cover.jpg', '1000', '5_sample_book.pdf', '5_main_book.pdf', '5_sample_epub_book.epub', '5_main_epub_book.epub', 1, '2022-11-02 14:50:15', '2022-11-02 14:50:15'),
(6, 'History', 'English', 1, 'Pre', 20, 'This is for testing purpose', '<p>This is for testing purpose</p>', '6_book_cover.png', '250', '6_sample_book.pdf', '6_main_book.pdf', '6_sample_epub_book.epub', '6_main_epub_book.epub', 1, '2022-11-10 18:58:34', '2022-11-10 18:58:35'),
(7, 'Allie Neal', 'Hindi', 3, 'Main', 20, 'Programmer test', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '7_book_cover.png', '803.64', '7_sample_book.pdf', '7_main_book.pdf', '7_sample_epub_book.epub', '7_main_epub_book.epub', 1, '2022-11-13 22:52:55', '2022-11-21 18:24:58'),
(8, 'Sanskrit UPSC', 'English', 13, '', 19, 'This is book for Sanskrit UPSC exam', '<p>This is book for Sanskrit UPSC exam</p>', '8_book_cover.jpg', '130', '8_sample_book.pdf', '8_main_book.pdf', '8_sample_epub_book.epub', '8_main_epub_book.epub', 1, '2022-11-18 15:02:55', '2022-11-18 15:02:56'),
(9, 'Om book depo UPSC', 'English', 13, '', 25, 'This is for UPSC exam book', '<p>This is for UPSC exam book</p>', '9_book_cover.jpg', '2000', '9_sample_book.pdf', '9_main_book.pdf', '9_sample_epub_book.epub', '9_main_epub_book.epub', 1, '2022-11-18 15:11:35', '2022-11-18 15:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_index` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`) VALUES
(5, 'Burgers', 2, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 0, 1),
(6, 'Garnish', 2, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 0, 1),
(7, 'Salads', 2, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 0, 1),
(8, 'Starters', 2, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 0, 1),
(9, 'Drinks', 2, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 0, 1),
(10, 'Burrito', 3, '2022-10-08 01:56:27', '2022-10-08 01:56:27', 0, 1),
(11, 'Quesadilla', 3, '2022-10-08 01:56:27', '2022-10-08 01:56:27', 0, 1),
(12, 'Taco', 3, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 0, 1),
(13, 'Burrito In A Bowl', 3, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 0, 1),
(14, 'Salads', 4, '2022-10-08 01:56:29', '2022-10-08 01:56:29', 0, 1),
(15, 'Pizza', 4, '2022-10-08 01:56:31', '2022-10-08 01:56:31', 0, 1),
(16, 'Burrito', 4, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 0, 1),
(17, 'Drinks', 4, '2022-10-08 01:56:59', '2022-10-08 01:56:59', 0, 1),
(18, 'Pizza', 5, '2022-10-08 01:57:01', '2022-10-08 01:57:01', 0, 1),
(19, 'Salads', 5, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 0, 1),
(20, 'Lasagna', 5, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 0, 1),
(21, 'Fresh Pasta and Risotto', 5, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 0, 1),
(22, 'Burrito In A Bowl', 6, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 0, 1),
(23, 'Taco', 6, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 0, 1),
(24, 'Burrito', 6, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 0, 1),
(25, 'Quesadilla', 6, '2022-10-08 01:57:29', '2022-10-08 01:57:29', 0, 1),
(26, 'Starters', 7, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 0, 1),
(27, 'Salads', 7, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 0, 1),
(28, 'Drinks', 7, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 0, 1),
(29, 'Burgers', 7, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 0, 1),
(30, 'Garnish', 7, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 0, 1),
(31, 'Drinks', 8, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 0, 1),
(32, 'Burrito', 8, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 0, 1),
(33, 'Salads', 8, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 0, 1),
(34, 'Pizza', 8, '2022-10-08 01:57:34', '2022-10-08 01:57:34', 0, 1),
(35, 'Pizza', 9, '2022-10-08 01:58:03', '2022-10-08 01:58:03', 0, 1),
(36, 'Fresh Pasta and Risotto', 9, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 0, 1),
(37, 'Lasagna', 9, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 0, 1),
(38, 'Salads', 9, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 0, 1),
(39, 'Quesadilla', 10, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 0, 1),
(40, 'Burrito In A Bowl', 10, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 0, 1),
(41, 'Taco', 10, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 0, 1),
(42, 'Burrito', 10, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 0, 1),
(43, 'Garnish', 11, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 0, 1),
(44, 'Burgers', 11, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 0, 1),
(45, 'Salads', 11, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 0, 1),
(46, 'Drinks', 11, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 0, 1),
(47, 'Starters', 11, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 0, 1),
(48, 'Burrito', 12, '2022-10-08 01:58:37', '2022-10-08 01:58:37', 0, 1),
(49, 'Pizza', 12, '2022-10-08 01:58:37', '2022-10-08 01:58:37', 0, 1),
(50, 'Salads', 12, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 0, 1),
(51, 'Drinks', 12, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 0, 1),
(52, 'Lasagna', 13, '2022-10-08 01:59:11', '2022-10-08 01:59:11', 0, 1),
(53, 'Salads', 13, '2022-10-08 01:59:12', '2022-10-08 01:59:12', 0, 1),
(54, 'Fresh Pasta and Risotto', 13, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 0, 1),
(55, 'Pizza', 13, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 0, 1),
(56, 'Burrito In A Bowl', 14, '2022-10-08 01:59:43', '2022-10-08 01:59:43', 0, 1),
(57, 'Taco', 14, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 0, 1),
(58, 'Burrito', 14, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 0, 1),
(59, 'Quesadilla', 14, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 0, 1),
(60, 'Starters', 15, '2022-10-08 01:59:48', '2022-10-08 01:59:48', 0, 1),
(61, 'Salads', 15, '2022-10-08 01:59:50', '2022-10-08 01:59:50', 0, 1),
(62, 'Drinks', 15, '2022-10-08 01:59:50', '2022-10-08 01:59:50', 0, 1),
(63, 'Burgers', 15, '2022-10-08 01:59:51', '2022-10-08 01:59:51', 0, 1),
(64, 'Garnish', 15, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 0, 1),
(65, 'Pizza', 16, '2022-10-08 01:59:55', '2022-10-08 01:59:55', 0, 1),
(66, 'Drinks', 16, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 0, 1),
(67, 'Burrito', 16, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 0, 1),
(68, 'Salads', 16, '2022-10-08 02:00:21', '2022-10-08 02:00:21', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `alias`, `image`, `header_title`, `header_subtitle`, `deleted_at`) VALUES
(1, '2022-10-08 01:55:44', '2022-10-08 01:55:44', 'Bronx', 'bx', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Bronx</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(2, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Brooklyn', 'br', 'https://foodtiger.mobidonia.com/uploads/settings/6d001b6c-2ba1-499e-9f57-09b7dc46ace3_large.jpg', 'Food Delivery from<br /><strong>Brooklyn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(3, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Queens', 'qe', 'https://foodtiger.mobidonia.com/uploads/settings/492b78df-1756-4c30-910a-d3923b66aa97_large.jpg', 'Food Delivery from<br /><strong>Queens</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(4, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Manhattn', 'mh', 'https://foodtiger.mobidonia.com/uploads/settings/01f41f56-1acf-44f0-8e8d-fedceb5267cf_large.jpg', 'Food Delivery from<br /><strong>Manhattn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(5, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Richmond', 'ri', 'https://foodtiger.mobidonia.com/uploads/settings/fe6c500b-3410-41ff-9734-94c58351ba60_large.jpg', 'Food Delivery from<br /><strong>Richmond</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(6, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Buffalo', 'bf', 'https://foodtiger.mobidonia.com/uploads/settings/0c3c8fb0-c252-4758-9699-6851b15796ef_large.jpg', 'Food Delivery from<br /><strong>Buffalo</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(7, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Rochester', 'rh', 'https://foodtiger.mobidonia.com/uploads/settings/c7f21267-7149-4311-9fd9-4a08904f67a3_large.jpg', 'Food Delivery from<br /><strong>Rochester</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(8, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Yonkers', 'yo', 'https://foodtiger.mobidonia.com/uploads/settings/8c65269a-3bbc-4899-be13-75d1bc35e9cd_large.jpg', 'Food Delivery from<br /><strong>Yonkers</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(9, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Syracuse', 'sy', 'https://foodtiger.mobidonia.com/uploads/settings/1e5fcde5-5dc0-4c29-8f49-314658836fb8_large.jpg', 'Food Delivery from<br /><strong>Syracuse</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(10, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Albany', 'al', 'https://foodtiger.mobidonia.com/uploads/settings/b521e77f-1d3e-4695-b871-bac8262c85dc_large.jpg', 'Food Delivery from<br /><strong>Albany</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(11, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'New Rochelle', 'nr', 'https://foodtiger.mobidonia.com/uploads/settings/8b3ebb83-2e2e-43dd-8747-4f9c6f451199_large.jpg', 'Food Delivery from<br /><strong>New Rochelle</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(12, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Mount Vernon', 'mv', 'https://foodtiger.mobidonia.com/uploads/settings/daecfb93-677f-43a9-9e7e-4cf109194399_large.jpg', 'Food Delivery from<br /><strong>Mount Vernon</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(13, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Schenectady', 'sc', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Schenectady</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(14, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Utica', 'ut', 'https://foodtiger.mobidonia.com/uploads/settings/507847c5-1896-4ecf-bfe8-9c5f198ce41e_large.jpg', 'Food Delivery from<br /><strong>Utica</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(15, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'White Plains', 'wp', 'https://foodtiger.mobidonia.com/uploads/settings/a8e96a74-dc3a-403c-8fd0-b4528838e98c_large.jpg', 'Food Delivery from<br /><strong>White Plains</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(16, '2022-10-08 01:55:45', '2022-10-08 01:55:45', 'Niagara Falls', 'nf', 'https://foodtiger.mobidonia.com/uploads/settings/99d5b4c3-0bb4-428a-96cf-0e510bc3ab57_large.jpg', 'Food Delivery from<br /><strong>Niagara Falls</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coachings`
--

CREATE TABLE `coachings` (
  `id` int(11) NOT NULL,
  `coaching_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `bank_holder_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_IFSC` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coachings`
--

INSERT INTO `coachings` (`id`, `coaching_name`, `contact_number`, `email`, `description`, `logo`, `bank_holder_name`, `bank_name`, `bank_IFSC`, `account_number`, `login_id`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jeff Alexander', '8162787868', 'Jeff@mailinator.com', '<p>This is for test</p>', '1_coaching.png', '', '', '', '', 'Jeff1234', 'P@ss0rd', 1, '2022-10-10 19:52:48', '2022-10-11 12:52:32'),
(2, 'Jeremiah Owen', '9766796594', 'jeremiah@mailinator.com', '<p>This is for testing purpose</p>', '2_coaching.png', '', '', '', '', 'Jeremiah123', 'admin@123', 1, '2022-10-11 14:32:48', '2022-10-11 14:32:48'),
(3, 'Etta Vega', '7408716825', 'etta@mailinator.com', '<p>This is for testing purpose</p>', '3_coaching.png', '', '', '', '', 'etta@mailinator.com', '789456qwer', 1, '2022-10-14 11:00:37', '2022-10-14 11:00:37'),
(4, 'Jane Benson', '4456901896', 'janee@mailinator.com', '<p>This is for testing purpose</p>', '4_coaching.png', 'Test bank', 'Test Bank', 'TEST7412', '5554564213213211', 'janee@mailinator.com', '798456QAZX', 1, '2022-10-14 11:01:58', '2022-10-18 17:46:51'),
(5, 'Sai Ram', '78945621460', 'sairam@mailinator.com', '<p>Lorem Ipsu<strong>m</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '5_coaching.jpg', 'Lorem ipsum', 'Lorem Bank Test', 'LOREM74125', '7894561200000000', 'sairam@mailinator.com', '1236547890', 1, '2022-10-18 17:55:10', '2022-11-02 14:37:33'),
(6, 'Testing Testing Testing Testing', '07582970904', 'chandreshj@gmail.com', '<p>Lorem Ipsum&nbsp;is simply dummied&nbsp;text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '6_coaching.png', 'Chandresh', 'SBI', 'AAADSFSDGD', '1234567890', 'chandreshj@gmail.com', '123456789', 1, '2022-11-02 14:39:06', '2022-11-02 14:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `coaching_exams`
--

CREATE TABLE `coaching_exams` (
  `id` int(11) NOT NULL,
  `coaching_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coaching_exams`
--

INSERT INTO `coaching_exams` (`id`, `coaching_id`, `exam_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 26, 1, 1, '2022-11-22 11:19:45', '2022-11-22 11:20:03'),
(2, 26, 2, 1, '2022-11-22 11:19:45', '2022-11-22 11:20:03'),
(5, 26, 5, 1, '2022-11-22 12:38:50', '2022-11-22 12:38:50'),
(4, 26, 4, 1, '2022-11-22 11:20:12', '2022-11-22 11:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `coaching_notes`
--

CREATE TABLE `coaching_notes` (
  `id` int(11) NOT NULL,
  `coaching_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL DEFAULT 0,
  `title_of_notes` varchar(255) NOT NULL,
  `note_type` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `sample_note` varchar(255) NOT NULL,
  `main_note` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coaching_notes`
--

INSERT INTO `coaching_notes` (`id`, `coaching_id`, `subject_id`, `title_of_notes`, `note_type`, `heading`, `description`, `selling_price`, `exam_id`, `exam_type`, `sample_note`, `main_note`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, 7, 'Spoken languages', 'English', 'The tech giant Google is currently developing an AI model.', 'The tech giant Google is currently developing an AI model.', '1200', 1, '', '1_sample_note.pdf', '1_main_note.pdf', '1_note_cover.png', 1, '2022-11-15 19:04:28', '2022-11-16 12:42:08'),
(2, 22, 8, 'Information Technology', 'English', 'Ideas of computer science were first mentioned before the 1950s under the Massachusetts Institute of Technology (MIT) and Harvard University.', 'Ideas of computer science were first mentioned before the 1950s under the Massachusetts Institute of Technology (MIT) and Harvard University, where they had discussed and began thinking of computer circuits and numerical calculations.', '130', 1, 'Pre', '2_sample_note.pdf', '2_main_note.pdf', '2_note_cover.png', 1, '2022-11-16 15:28:44', '2022-11-16 16:31:25'),
(3, 26, 10, 'Immersive Note-UPSC', 'English', 'This notes for UPSC', 'This notes for UPSC', '2200', 5, '', '3_sample_note.pdf', '3_main_note.pdf', '3_note_cover.jpeg', 1, '2022-11-18 15:29:42', '2022-11-22 19:03:47'),
(4, 26, 10, 'UPSC Notes', 'English', 'This is for testing purpose UPSC exam', 'This is for testing purpose UPSC exam', '160', 4, '', '4_sample_note.pdf', '4_main_note.pdf', '4_note_cover.png', 1, '2022-11-22 14:21:50', '2022-11-22 19:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `coaching_subjects`
--

CREATE TABLE `coaching_subjects` (
  `id` int(11) NOT NULL,
  `coaching_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coaching_subjects`
--

INSERT INTO `coaching_subjects` (`id`, `coaching_id`, `subject_name`, `description`, `icon`, `exam_id`, `exam_type`, `status`, `created_at`, `updated_at`) VALUES
(5, 6, 'Math', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '5_subject.png', 2, '', 1, '2022-11-07 12:47:35', '2022-11-07 12:47:35'),
(4, 4, 'English', 'This is for testing purpose', '4_subject.jpg', 1, 'Pre', 1, '2022-10-18 17:02:48', '2022-10-18 17:02:48'),
(6, 22, 'Hindi', 'This is for test description', '6_subject.png', 1, 'Pre', 1, '2022-11-11 16:25:59', '2022-11-11 16:25:59'),
(7, 22, 'Maths', 'This is for test demo description', '7_subject.png', 1, 'Pre', 1, '2022-11-16 12:36:24', '2022-11-16 12:36:24'),
(8, 22, 'English', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '8_subject.png', 1, 'Main', 1, '2022-11-16 13:59:45', '2022-11-16 13:59:45'),
(9, 22, 'Sanskrit', 'Sanskrit is an ancient and classical language of India in which ever first book of the world Rigveda was compiled.', '9_subject.jpg', 3, 'Main', 1, '2022-11-17 19:15:20', '2022-11-17 19:15:20'),
(10, 26, 'Maths', 'This for UPSC exam', '10_subject.jpeg', 13, 'Pre,Main', 1, '2022-11-18 15:28:20', '2022-11-18 15:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Fixed, 1 - Percentage',
  `price` double(8,2) NOT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `limit_to_num_uses` int(11) NOT NULL,
  `used_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `current_affairs_question_answers`
--

CREATE TABLE `current_affairs_question_answers` (
  `id` int(11) NOT NULL,
  `calender_date` varchar(255) NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `option_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `option_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `option_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `option_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `question_language` varchar(50) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_affairs_question_answers`
--

INSERT INTO `current_affairs_question_answers` (`id`, `calender_date`, `question`, `answer`, `option_1`, `option_2`, `option_3`, `option_4`, `question_language`, `status`, `created_at`, `updated_at`) VALUES
(3, '20221003', 'Lorem Ipsum छपाई और अक्षर योजन उद्योग का एक साधारण डमी पाठ है. Lorem Ipsum सन १५०० के बाद से अभी तक इस उद्योग का मानक डमी पाठ मन गया, जब एक अज्ञात मुद्रक ने नमूना लेकर एक नमूना किताब बनाई', '2', 'यह एक लंबा स्थापित तथ्य है कि जब एक पाठक एक पृष्ठ के खाखे को देखेगा तो पठनीय सामग्री से विचलित हो जाएगा.', 'यह एक लंबा स्थापित तथ्य है कि जब एक पाठक एक पृष्ठ के खाखे को देखेगा तो पठनीय सामग्री से विचलित हो जाएगा.', 'यह एक लंबा स्थापित तथ्य है कि जब एक पाठक एक पृष्ठ के खाखे को देखेगा तो पठनीय सामग्री से विचलित हो जाएगा.', 'यह एक लंबा स्थापित तथ्य है कि जब एक पाठक एक पृष्ठ के खाखे को देखेगा तो पठनीय सामग्री से विचलित हो जाएगा.', 'Hindi', 1, '2022-10-27 12:30:47', '2022-10-28 09:33:52'),
(4, '20221003', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type', '4', '1 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '3 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '4 Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'English', 1, '2022-10-27 12:37:48', '2022-10-27 20:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `daily_short_categories`
--

CREATE TABLE `daily_short_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_icon` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_short_categories`
--

INSERT INTO `daily_short_categories` (`id`, `category_name`, `category_icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bess Spencer', '1_category.jpg', 1, '2022-10-19 14:45:12', '2022-10-19 14:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `exam_type` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `overview` text NOT NULL,
  `syllabus` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `exam_type`, `description`, `icon`, `overview`, `syllabus`, `status`, `created_at`, `updated_at`) VALUES
(1, 'IIT', 'Pre, Main', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</p>\r\n\r\n<p>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '1_exams.png', '<p>Exam overview</p>', '<p>Exam syllabus</p>', 0, '2022-10-10 00:18:09', '2022-11-17 12:45:42'),
(2, 'UPSC', '', '<p>dfsfsdfsdfdsfssf</p>', '2_exams.png', '', '', 0, '2022-10-12 15:46:09', '2022-11-17 12:45:35'),
(3, 'PSC', 'Main', '<p>MPSC,&nbsp;BPSC,&nbsp;JPSC,&nbsp;GPSC</p>', '3_exams.png', '', '', 1, '2022-10-17 15:04:59', '2022-11-17 12:45:24'),
(4, 'IIT New', '', '<p>JAM,&nbsp;CEED,&nbsp;HSEE</p>', '4_exams.jpg', '', '', 1, '2022-10-17 18:43:09', '2022-11-17 12:44:01'),
(5, 'SSC', '', '<p>CGL,&nbsp;CHSL,&nbsp;JE,&nbsp;GD,&nbsp;CPO</p>', '5_exams.png', '', '', 1, '2022-10-18 14:24:46', '2022-11-17 12:43:10'),
(6, 'Banking', 'Pre', '<p>SBI,&nbsp;IBPS,&nbsp;RBI,&nbsp;RBI&nbsp;&nbsp;</p>', '6_exams.jpg', '', '', 1, '2022-10-18 14:25:18', '2022-11-17 12:42:08'),
(7, 'Shane Watts', 'Pre', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>', '7_exams.png', '', '', 0, '2022-10-18 14:25:44', '2022-11-17 12:40:38'),
(8, 'Beatrice Williamson', 'Pre', '<p>This is for testing</p>', '8_exams.png', '', '', 0, '2022-10-18 14:26:50', '2022-11-17 12:40:32'),
(9, 'Harvey Clarke', 'Main', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummying text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>', '9_exams.jpg', '', '', 0, '2022-10-18 14:27:52', '2022-11-17 12:40:25'),
(10, 'Jacob Martin', 'Pre', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>', '10_exams.jpg', '', '', 0, '2022-10-18 14:28:35', '2022-11-17 12:40:20'),
(11, 'IT', 'Pre, Main', '<p>JNUEE,&nbsp;VITMEE,&nbsp;CUSAT CAT,&nbsp;JMIEE&nbsp;</p>', '11_exams.png', '', '', 1, '2022-10-18 14:28:55', '2022-11-17 12:40:12'),
(12, 'Patwari', 'Pre, Main', '<p>General Knowledge, General Mathematics,&nbsp;General Aptitude, General Hindi, Rural Economy, and Panchayati Raj.</p>', '12_exams.png', '', '', 1, '2022-10-19 15:31:49', '2022-11-17 12:38:37'),
(13, 'UPSC', 'Pre, Main', '<p>This is UPSC exam</p>', '13_exams.jpg', '<p>This is book for Sanskrit UPSC exam</p>', '', 1, '2022-11-18 14:55:12', '2022-11-18 15:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `exams_coaching`
--

CREATE TABLE `exams_coaching` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `coaching_id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exams_coaching`
--

INSERT INTO `exams_coaching` (`id`, `exam_id`, `coaching_id`, `status`, `created_at`, `updated_at`) VALUES
(15, 13, 22, 1, '2022-11-18 16:50:41', '2022-11-18 16:50:41'),
(16, 13, 26, 1, '2022-11-18 16:52:41', '2022-11-18 16:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `exams_dates`
--

CREATE TABLE `exams_dates` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(255) NOT NULL,
  `exam_date` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exams_dates`
--

INSERT INTO `exams_dates` (`id`, `exam_id`, `exam_title`, `exam_date`, `status`, `created_at`, `updated_at`) VALUES
(5, 13, 'Lorem', '2022-11-18', 1, '2022-11-18 19:20:06', '2022-11-18 19:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extra_for_all_variants` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `item_id`, `price`, `name`, `created_at`, `updated_at`, `deleted_at`, `extra_for_all_variants`) VALUES
(63, 61, 1.20, 'Extra cheese', '2022-10-08 01:56:29', '2022-10-08 01:56:29', NULL, 1),
(64, 61, 0.30, 'Extra olives', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(65, 61, 1.50, 'Tuna', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(66, 62, 1.20, 'Extra cheese', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(67, 62, 0.30, 'Extra olives', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(68, 62, 1.50, 'Tuna', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(69, 63, 1.20, 'Extra cheese', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(70, 63, 0.30, 'Extra olives', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(71, 63, 1.50, 'Tuna', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(72, 64, 1.20, 'Extra cheese', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(73, 64, 0.30, 'Extra olives', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(74, 64, 1.50, 'Tuna', '2022-10-08 01:56:30', '2022-10-08 01:56:30', NULL, 1),
(75, 65, 1.20, 'Extra cheese', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(76, 65, 0.30, 'Extra olives', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(77, 65, 1.50, 'Tuna', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(78, 66, 1.20, 'Extra cheese', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(79, 66, 0.30, 'Extra olives', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(80, 66, 1.50, 'Tuna', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(81, 67, 1.00, 'Olive', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(82, 67, 0.50, 'Mushroom', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 1),
(83, 67, 2.00, 'Peperoni', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 0),
(84, 67, 1.00, 'Peperoni', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL, 0),
(85, 68, 1.00, 'Olive', '2022-10-08 01:56:33', '2022-10-08 01:56:33', NULL, 1),
(86, 68, 0.50, 'Mushroom', '2022-10-08 01:56:33', '2022-10-08 01:56:33', NULL, 1),
(87, 68, 2.00, 'Peperoni', '2022-10-08 01:56:33', '2022-10-08 01:56:33', NULL, 0),
(88, 68, 1.00, 'Peperoni', '2022-10-08 01:56:33', '2022-10-08 01:56:33', NULL, 0),
(89, 69, 1.00, 'Olive', '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL, 1),
(90, 69, 0.50, 'Mushroom', '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL, 1),
(91, 69, 2.00, 'Peperoni', '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL, 0),
(92, 69, 1.00, 'Peperoni', '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL, 0),
(93, 70, 1.00, 'Olive', '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL, 1),
(94, 70, 0.50, 'Mushroom', '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL, 1),
(95, 70, 2.00, 'Peperoni', '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL, 0),
(96, 70, 1.00, 'Peperoni', '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL, 0),
(97, 71, 1.00, 'Olive', '2022-10-08 01:56:42', '2022-10-08 01:56:42', NULL, 1),
(98, 71, 0.50, 'Mushroom', '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL, 1),
(99, 71, 2.00, 'Peperoni', '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL, 0),
(100, 71, 1.00, 'Peperoni', '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL, 0),
(101, 72, 1.00, 'Olive', '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL, 1),
(102, 72, 0.50, 'Mushroom', '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL, 1),
(103, 72, 2.00, 'Peperoni', '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL, 0),
(104, 72, 1.00, 'Peperoni', '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL, 0),
(105, 73, 1.00, 'Olive', '2022-10-08 01:56:46', '2022-10-08 01:56:46', NULL, 1),
(106, 73, 0.50, 'Mushroom', '2022-10-08 01:56:46', '2022-10-08 01:56:46', NULL, 1),
(107, 73, 2.00, 'Peperoni', '2022-10-08 01:56:46', '2022-10-08 01:56:46', NULL, 0),
(108, 73, 1.00, 'Peperoni', '2022-10-08 01:56:47', '2022-10-08 01:56:47', NULL, 0),
(109, 74, 1.00, 'Olive', '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL, 1),
(110, 74, 0.50, 'Mushroom', '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL, 1),
(111, 74, 2.00, 'Peperoni', '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL, 0),
(112, 74, 1.00, 'Peperoni', '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL, 0),
(113, 75, 1.00, 'Olive', '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL, 1),
(114, 75, 0.50, 'Mushroom', '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL, 1),
(115, 75, 2.00, 'Peperoni', '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL, 0),
(116, 75, 1.00, 'Peperoni', '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL, 0),
(117, 76, 1.00, 'Olive', '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL, 1),
(118, 76, 0.50, 'Mushroom', '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL, 1),
(119, 76, 2.00, 'Peperoni', '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL, 0),
(120, 76, 1.00, 'Peperoni', '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL, 0),
(121, 77, 1.00, 'Olive', '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL, 1),
(122, 77, 0.50, 'Mushroom', '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL, 1),
(123, 77, 2.00, 'Peperoni', '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL, 0),
(124, 77, 1.00, 'Peperoni', '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL, 0),
(125, 86, 1.00, 'Olive', '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL, 1),
(126, 86, 0.50, 'Mushroom', '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL, 1),
(127, 86, 2.00, 'Peperoni', '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL, 0),
(128, 86, 1.00, 'Peperoni', '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL, 0),
(129, 87, 1.00, 'Olive', '2022-10-08 01:57:04', '2022-10-08 01:57:04', NULL, 1),
(130, 87, 0.50, 'Mushroom', '2022-10-08 01:57:04', '2022-10-08 01:57:04', NULL, 1),
(131, 87, 2.00, 'Peperoni', '2022-10-08 01:57:05', '2022-10-08 01:57:05', NULL, 0),
(132, 87, 1.00, 'Peperoni', '2022-10-08 01:57:06', '2022-10-08 01:57:06', NULL, 0),
(133, 88, 1.00, 'Olive', '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL, 1),
(134, 88, 0.50, 'Mushroom', '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL, 1),
(135, 88, 2.00, 'Peperoni', '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL, 0),
(136, 88, 1.00, 'Peperoni', '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL, 0),
(137, 89, 1.00, 'Olive', '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL, 1),
(138, 89, 0.50, 'Mushroom', '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL, 1),
(139, 89, 2.00, 'Peperoni', '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL, 0),
(140, 89, 1.00, 'Peperoni', '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL, 0),
(141, 90, 1.00, 'Olive', '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL, 1),
(142, 90, 0.50, 'Mushroom', '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL, 1),
(143, 90, 2.00, 'Peperoni', '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL, 0),
(144, 90, 1.00, 'Peperoni', '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL, 0),
(145, 91, 1.00, 'Olive', '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL, 1),
(146, 91, 0.50, 'Mushroom', '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL, 1),
(147, 91, 2.00, 'Peperoni', '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL, 0),
(148, 91, 1.00, 'Peperoni', '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL, 0),
(149, 92, 1.00, 'Olive', '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL, 1),
(150, 92, 0.50, 'Mushroom', '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL, 1),
(151, 92, 2.00, 'Peperoni', '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL, 0),
(152, 92, 1.00, 'Peperoni', '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL, 0),
(153, 93, 1.00, 'Olive', '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL, 1),
(154, 93, 0.50, 'Mushroom', '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL, 1),
(155, 93, 2.00, 'Peperoni', '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL, 0),
(156, 93, 1.00, 'Peperoni', '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL, 0),
(157, 94, 1.00, 'Olive', '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL, 1),
(158, 94, 0.50, 'Mushroom', '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL, 1),
(159, 94, 2.00, 'Peperoni', '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL, 0),
(160, 94, 1.00, 'Peperoni', '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL, 0),
(161, 95, 1.00, 'Olive', '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL, 1),
(162, 95, 0.50, 'Mushroom', '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL, 1),
(163, 95, 2.00, 'Peperoni', '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL, 0),
(164, 95, 1.00, 'Peperoni', '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL, 0),
(165, 96, 1.00, 'Olive', '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL, 1),
(166, 96, 0.50, 'Mushroom', '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL, 1),
(167, 96, 2.00, 'Peperoni', '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL, 0),
(168, 96, 1.00, 'Peperoni', '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL, 0),
(169, 97, 1.20, 'Extra cheese', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(170, 97, 0.30, 'Extra olives', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(171, 97, 1.50, 'Tuna', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(172, 98, 1.20, 'Extra cheese', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(173, 98, 0.30, 'Extra olives', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(174, 98, 1.50, 'Tuna', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(175, 99, 1.20, 'Extra cheese', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(176, 99, 0.30, 'Extra olives', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(177, 99, 1.50, 'Tuna', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(178, 100, 1.20, 'Extra cheese', '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL, 1),
(179, 100, 0.30, 'Extra olives', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(180, 100, 1.50, 'Tuna', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(181, 101, 1.20, 'Extra cheese', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(182, 101, 0.30, 'Extra olives', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(183, 101, 1.50, 'Tuna', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(184, 102, 1.20, 'Extra cheese', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(185, 102, 0.30, 'Extra olives', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(186, 102, 1.50, 'Tuna', '2022-10-08 01:57:26', '2022-10-08 01:57:26', NULL, 1),
(187, 154, 1.20, 'Extra cheese', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(188, 154, 0.30, 'Extra olives', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(189, 154, 1.50, 'Tuna', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(190, 155, 1.20, 'Extra cheese', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(191, 155, 0.30, 'Extra olives', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(192, 155, 1.50, 'Tuna', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(193, 156, 1.20, 'Extra cheese', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(194, 156, 0.30, 'Extra olives', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(195, 156, 1.50, 'Tuna', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(196, 157, 1.20, 'Extra cheese', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(197, 157, 0.30, 'Extra olives', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(198, 157, 1.50, 'Tuna', '2022-10-08 01:57:33', '2022-10-08 01:57:33', NULL, 1),
(199, 158, 1.20, 'Extra cheese', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(200, 158, 0.30, 'Extra olives', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(201, 158, 1.50, 'Tuna', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(202, 159, 1.20, 'Extra cheese', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(203, 159, 0.30, 'Extra olives', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(204, 159, 1.50, 'Tuna', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(205, 160, 1.00, 'Olive', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(206, 160, 0.50, 'Mushroom', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 1),
(207, 160, 2.00, 'Peperoni', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 0),
(208, 160, 1.00, 'Peperoni', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL, 0),
(209, 161, 1.00, 'Olive', '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL, 1),
(210, 161, 0.50, 'Mushroom', '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL, 1),
(211, 161, 2.00, 'Peperoni', '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL, 0),
(212, 161, 1.00, 'Peperoni', '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL, 0),
(213, 162, 1.00, 'Olive', '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL, 1),
(214, 162, 0.50, 'Mushroom', '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL, 1),
(215, 162, 2.00, 'Peperoni', '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL, 0),
(216, 162, 1.00, 'Peperoni', '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL, 0),
(217, 163, 1.00, 'Olive', '2022-10-08 01:57:40', '2022-10-08 01:57:40', NULL, 1),
(218, 163, 0.50, 'Mushroom', '2022-10-08 01:57:40', '2022-10-08 01:57:40', NULL, 1),
(219, 163, 2.00, 'Peperoni', '2022-10-08 01:57:40', '2022-10-08 01:57:40', NULL, 0),
(220, 163, 1.00, 'Peperoni', '2022-10-08 01:57:40', '2022-10-08 01:57:40', NULL, 0),
(221, 164, 1.00, 'Olive', '2022-10-08 01:57:42', '2022-10-08 01:57:42', NULL, 1),
(222, 164, 0.50, 'Mushroom', '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL, 1),
(223, 164, 2.00, 'Peperoni', '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL, 0),
(224, 164, 1.00, 'Peperoni', '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL, 0),
(225, 165, 1.00, 'Olive', '2022-10-08 01:57:45', '2022-10-08 01:57:45', NULL, 1),
(226, 165, 0.50, 'Mushroom', '2022-10-08 01:57:45', '2022-10-08 01:57:45', NULL, 1),
(227, 165, 2.00, 'Peperoni', '2022-10-08 01:57:45', '2022-10-08 01:57:45', NULL, 0),
(228, 165, 1.00, 'Peperoni', '2022-10-08 01:57:45', '2022-10-08 01:57:45', NULL, 0),
(229, 166, 1.00, 'Olive', '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL, 1),
(230, 166, 0.50, 'Mushroom', '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL, 1),
(231, 166, 2.00, 'Peperoni', '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL, 0),
(232, 166, 1.00, 'Peperoni', '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL, 0),
(233, 167, 1.00, 'Olive', '2022-10-08 01:57:50', '2022-10-08 01:57:50', NULL, 1),
(234, 167, 0.50, 'Mushroom', '2022-10-08 01:57:51', '2022-10-08 01:57:51', NULL, 1),
(235, 167, 2.00, 'Peperoni', '2022-10-08 01:57:51', '2022-10-08 01:57:51', NULL, 0),
(236, 167, 1.00, 'Peperoni', '2022-10-08 01:57:51', '2022-10-08 01:57:51', NULL, 0),
(237, 168, 1.00, 'Olive', '2022-10-08 01:57:54', '2022-10-08 01:57:54', NULL, 1),
(238, 168, 0.50, 'Mushroom', '2022-10-08 01:57:54', '2022-10-08 01:57:54', NULL, 1),
(239, 168, 2.00, 'Peperoni', '2022-10-08 01:57:54', '2022-10-08 01:57:54', NULL, 0),
(240, 168, 1.00, 'Peperoni', '2022-10-08 01:57:54', '2022-10-08 01:57:54', NULL, 0),
(241, 169, 1.00, 'Olive', '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL, 1),
(242, 169, 0.50, 'Mushroom', '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL, 1),
(243, 169, 2.00, 'Peperoni', '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL, 0),
(244, 169, 1.00, 'Peperoni', '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL, 0),
(245, 170, 1.00, 'Olive', '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL, 1),
(246, 170, 0.50, 'Mushroom', '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL, 1),
(247, 170, 2.00, 'Peperoni', '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL, 0),
(248, 170, 1.00, 'Peperoni', '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL, 0),
(249, 171, 1.00, 'Olive', '2022-10-08 01:58:03', '2022-10-08 01:58:03', NULL, 1),
(250, 171, 0.50, 'Mushroom', '2022-10-08 01:58:03', '2022-10-08 01:58:03', NULL, 1),
(251, 171, 2.00, 'Peperoni', '2022-10-08 01:58:03', '2022-10-08 01:58:03', NULL, 0),
(252, 171, 1.00, 'Peperoni', '2022-10-08 01:58:03', '2022-10-08 01:58:03', NULL, 0),
(253, 172, 1.00, 'Olive', '2022-10-08 01:58:06', '2022-10-08 01:58:06', NULL, 1),
(254, 172, 0.50, 'Mushroom', '2022-10-08 01:58:06', '2022-10-08 01:58:06', NULL, 1),
(255, 172, 2.00, 'Peperoni', '2022-10-08 01:58:06', '2022-10-08 01:58:06', NULL, 0),
(256, 172, 1.00, 'Peperoni', '2022-10-08 01:58:06', '2022-10-08 01:58:06', NULL, 0),
(257, 173, 1.00, 'Olive', '2022-10-08 01:58:08', '2022-10-08 01:58:08', NULL, 1),
(258, 173, 0.50, 'Mushroom', '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL, 1),
(259, 173, 2.00, 'Peperoni', '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL, 0),
(260, 173, 1.00, 'Peperoni', '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL, 0),
(261, 174, 1.00, 'Olive', '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL, 1),
(262, 174, 0.50, 'Mushroom', '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL, 1),
(263, 174, 2.00, 'Peperoni', '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL, 0),
(264, 174, 1.00, 'Peperoni', '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL, 0),
(265, 175, 1.00, 'Olive', '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL, 1),
(266, 175, 0.50, 'Mushroom', '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL, 1),
(267, 175, 2.00, 'Peperoni', '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL, 0),
(268, 175, 1.00, 'Peperoni', '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL, 0),
(269, 176, 1.00, 'Olive', '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL, 1),
(270, 176, 0.50, 'Mushroom', '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL, 1),
(271, 176, 2.00, 'Peperoni', '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL, 0),
(272, 176, 1.00, 'Peperoni', '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL, 0),
(273, 177, 1.00, 'Olive', '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL, 1),
(274, 177, 0.50, 'Mushroom', '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL, 1),
(275, 177, 2.00, 'Peperoni', '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL, 0),
(276, 177, 1.00, 'Peperoni', '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL, 0),
(277, 178, 1.00, 'Olive', '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL, 1),
(278, 178, 0.50, 'Mushroom', '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL, 1),
(279, 178, 2.00, 'Peperoni', '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL, 0),
(280, 178, 1.00, 'Peperoni', '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL, 0),
(281, 179, 1.00, 'Olive', '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL, 1),
(282, 179, 0.50, 'Mushroom', '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL, 1),
(283, 179, 2.00, 'Peperoni', '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL, 0),
(284, 179, 1.00, 'Peperoni', '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL, 0),
(285, 180, 1.00, 'Olive', '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL, 1),
(286, 180, 0.50, 'Mushroom', '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL, 1),
(287, 180, 2.00, 'Peperoni', '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL, 0),
(288, 180, 1.00, 'Peperoni', '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL, 0),
(289, 181, 1.00, 'Olive', '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL, 1),
(290, 181, 0.50, 'Mushroom', '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL, 1),
(291, 181, 2.00, 'Peperoni', '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL, 0),
(292, 181, 1.00, 'Peperoni', '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL, 0),
(293, 191, 1.20, 'Extra cheese', '2022-10-08 01:58:28', '2022-10-08 01:58:28', NULL, 1),
(294, 191, 0.30, 'Extra olives', '2022-10-08 01:58:28', '2022-10-08 01:58:28', NULL, 1),
(295, 191, 1.50, 'Tuna', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(296, 192, 1.20, 'Extra cheese', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(297, 192, 0.30, 'Extra olives', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(298, 192, 1.50, 'Tuna', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(299, 193, 1.20, 'Extra cheese', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(300, 193, 0.30, 'Extra olives', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(301, 193, 1.50, 'Tuna', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(302, 194, 1.20, 'Extra cheese', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(303, 194, 0.30, 'Extra olives', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(304, 194, 1.50, 'Tuna', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(305, 195, 1.20, 'Extra cheese', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(306, 195, 0.30, 'Extra olives', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(307, 195, 1.50, 'Tuna', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(308, 196, 1.20, 'Extra cheese', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(309, 196, 0.30, 'Extra olives', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(310, 196, 1.50, 'Tuna', '2022-10-08 01:58:29', '2022-10-08 01:58:29', NULL, 1),
(311, 235, 1.00, 'Olive', '2022-10-08 01:58:37', '2022-10-08 01:58:37', NULL, 1),
(312, 235, 0.50, 'Mushroom', '2022-10-08 01:58:37', '2022-10-08 01:58:37', NULL, 1),
(313, 235, 2.00, 'Peperoni', '2022-10-08 01:58:37', '2022-10-08 01:58:37', NULL, 0),
(314, 235, 1.00, 'Peperoni', '2022-10-08 01:58:37', '2022-10-08 01:58:37', NULL, 0),
(315, 236, 1.00, 'Olive', '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL, 1),
(316, 236, 0.50, 'Mushroom', '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL, 1),
(317, 236, 2.00, 'Peperoni', '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL, 0),
(318, 236, 1.00, 'Peperoni', '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL, 0),
(319, 237, 1.00, 'Olive', '2022-10-08 01:58:45', '2022-10-08 01:58:45', NULL, 1),
(320, 237, 0.50, 'Mushroom', '2022-10-08 01:58:45', '2022-10-08 01:58:45', NULL, 1),
(321, 237, 2.00, 'Peperoni', '2022-10-08 01:58:45', '2022-10-08 01:58:45', NULL, 0),
(322, 237, 1.00, 'Peperoni', '2022-10-08 01:58:45', '2022-10-08 01:58:45', NULL, 0),
(323, 238, 1.00, 'Olive', '2022-10-08 01:58:49', '2022-10-08 01:58:49', NULL, 1),
(324, 238, 0.50, 'Mushroom', '2022-10-08 01:58:50', '2022-10-08 01:58:50', NULL, 1),
(325, 238, 2.00, 'Peperoni', '2022-10-08 01:58:50', '2022-10-08 01:58:50', NULL, 0),
(326, 238, 1.00, 'Peperoni', '2022-10-08 01:58:50', '2022-10-08 01:58:50', NULL, 0),
(327, 239, 1.00, 'Olive', '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL, 1),
(328, 239, 0.50, 'Mushroom', '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL, 1),
(329, 239, 2.00, 'Peperoni', '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL, 0),
(330, 239, 1.00, 'Peperoni', '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL, 0),
(331, 240, 1.00, 'Olive', '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL, 1),
(332, 240, 0.50, 'Mushroom', '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL, 1),
(333, 240, 2.00, 'Peperoni', '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL, 0),
(334, 240, 1.00, 'Peperoni', '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL, 0),
(335, 241, 1.00, 'Olive', '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL, 1),
(336, 241, 0.50, 'Mushroom', '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL, 1),
(337, 241, 2.00, 'Peperoni', '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL, 0),
(338, 241, 1.00, 'Peperoni', '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL, 0),
(339, 242, 1.00, 'Olive', '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL, 1),
(340, 242, 0.50, 'Mushroom', '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL, 1),
(341, 242, 2.00, 'Peperoni', '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL, 0),
(342, 242, 1.00, 'Peperoni', '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL, 0),
(343, 243, 1.00, 'Olive', '2022-10-08 01:59:01', '2022-10-08 01:59:01', NULL, 1),
(344, 243, 0.50, 'Mushroom', '2022-10-08 01:59:01', '2022-10-08 01:59:01', NULL, 1),
(345, 243, 2.00, 'Peperoni', '2022-10-08 01:59:01', '2022-10-08 01:59:01', NULL, 0),
(346, 243, 1.00, 'Peperoni', '2022-10-08 01:59:01', '2022-10-08 01:59:01', NULL, 0),
(347, 244, 1.00, 'Olive', '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL, 1),
(348, 244, 0.50, 'Mushroom', '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL, 1),
(349, 244, 2.00, 'Peperoni', '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL, 0),
(350, 244, 1.00, 'Peperoni', '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL, 0),
(351, 245, 1.00, 'Olive', '2022-10-08 01:59:06', '2022-10-08 01:59:06', NULL, 1),
(352, 245, 0.50, 'Mushroom', '2022-10-08 01:59:06', '2022-10-08 01:59:06', NULL, 1),
(353, 245, 2.00, 'Peperoni', '2022-10-08 01:59:06', '2022-10-08 01:59:06', NULL, 0),
(354, 245, 1.00, 'Peperoni', '2022-10-08 01:59:06', '2022-10-08 01:59:06', NULL, 0),
(355, 246, 1.20, 'Extra cheese', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(356, 246, 0.30, 'Extra olives', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(357, 246, 1.50, 'Tuna', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(358, 247, 1.20, 'Extra cheese', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(359, 247, 0.30, 'Extra olives', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(360, 247, 1.50, 'Tuna', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(361, 248, 1.20, 'Extra cheese', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(362, 248, 0.30, 'Extra olives', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(363, 248, 1.50, 'Tuna', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(364, 249, 1.20, 'Extra cheese', '2022-10-08 01:59:09', '2022-10-08 01:59:09', NULL, 1),
(365, 249, 0.30, 'Extra olives', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(366, 249, 1.50, 'Tuna', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(367, 250, 1.20, 'Extra cheese', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(368, 250, 0.30, 'Extra olives', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(369, 250, 1.50, 'Tuna', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(370, 251, 1.20, 'Extra cheese', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(371, 251, 0.30, 'Extra olives', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(372, 251, 1.50, 'Tuna', '2022-10-08 01:59:10', '2022-10-08 01:59:10', NULL, 1),
(373, 259, 1.20, 'Extra cheese', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(374, 259, 0.30, 'Extra olives', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(375, 259, 1.50, 'Tuna', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(376, 260, 1.20, 'Extra cheese', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(377, 260, 0.30, 'Extra olives', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(378, 260, 1.50, 'Tuna', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(379, 261, 1.20, 'Extra cheese', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(380, 261, 0.30, 'Extra olives', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(381, 261, 1.50, 'Tuna', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(382, 262, 1.20, 'Extra cheese', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(383, 262, 0.30, 'Extra olives', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(384, 262, 1.50, 'Tuna', '2022-10-08 01:59:12', '2022-10-08 01:59:12', NULL, 1),
(385, 263, 1.20, 'Extra cheese', '2022-10-08 01:59:14', '2022-10-08 01:59:14', NULL, 1),
(386, 263, 0.30, 'Extra olives', '2022-10-08 01:59:14', '2022-10-08 01:59:14', NULL, 1),
(387, 263, 1.50, 'Tuna', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 1),
(388, 264, 1.20, 'Extra cheese', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 1),
(389, 264, 0.30, 'Extra olives', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 1),
(390, 264, 1.50, 'Tuna', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 1),
(391, 271, 1.00, 'Olive', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 1),
(392, 271, 0.50, 'Mushroom', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 1),
(393, 271, 2.00, 'Peperoni', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 0),
(394, 271, 1.00, 'Peperoni', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL, 0),
(395, 272, 1.00, 'Olive', '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL, 1),
(396, 272, 0.50, 'Mushroom', '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL, 1),
(397, 272, 2.00, 'Peperoni', '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL, 0),
(398, 272, 1.00, 'Peperoni', '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL, 0),
(399, 273, 1.00, 'Olive', '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL, 1),
(400, 273, 0.50, 'Mushroom', '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL, 1),
(401, 273, 2.00, 'Peperoni', '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL, 0),
(402, 273, 1.00, 'Peperoni', '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL, 0),
(403, 274, 1.00, 'Olive', '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL, 1),
(404, 274, 0.50, 'Mushroom', '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL, 1),
(405, 274, 2.00, 'Peperoni', '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL, 0),
(406, 274, 1.00, 'Peperoni', '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL, 0),
(407, 275, 1.00, 'Olive', '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL, 1),
(408, 275, 0.50, 'Mushroom', '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL, 1),
(409, 275, 2.00, 'Peperoni', '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL, 0),
(410, 275, 1.00, 'Peperoni', '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL, 0),
(411, 276, 1.00, 'Olive', '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL, 1),
(412, 276, 0.50, 'Mushroom', '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL, 1),
(413, 276, 2.00, 'Peperoni', '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL, 0),
(414, 276, 1.00, 'Peperoni', '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL, 0),
(415, 277, 1.00, 'Olive', '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL, 1),
(416, 277, 0.50, 'Mushroom', '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL, 1),
(417, 277, 2.00, 'Peperoni', '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL, 0),
(418, 277, 1.00, 'Peperoni', '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL, 0),
(419, 278, 1.00, 'Olive', '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL, 1),
(420, 278, 0.50, 'Mushroom', '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL, 1),
(421, 278, 2.00, 'Peperoni', '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL, 0),
(422, 278, 1.00, 'Peperoni', '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL, 0),
(423, 279, 1.00, 'Olive', '2022-10-08 01:59:32', '2022-10-08 01:59:32', NULL, 1),
(424, 279, 0.50, 'Mushroom', '2022-10-08 01:59:32', '2022-10-08 01:59:32', NULL, 1),
(425, 279, 2.00, 'Peperoni', '2022-10-08 01:59:32', '2022-10-08 01:59:32', NULL, 0),
(426, 279, 1.00, 'Peperoni', '2022-10-08 01:59:33', '2022-10-08 01:59:33', NULL, 0),
(427, 280, 1.00, 'Olive', '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL, 1),
(428, 280, 0.50, 'Mushroom', '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL, 1),
(429, 280, 2.00, 'Peperoni', '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL, 0),
(430, 280, 1.00, 'Peperoni', '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL, 0),
(431, 281, 1.00, 'Olive', '2022-10-08 01:59:38', '2022-10-08 01:59:38', NULL, 1),
(432, 281, 0.50, 'Mushroom', '2022-10-08 01:59:38', '2022-10-08 01:59:38', NULL, 1),
(433, 281, 2.00, 'Peperoni', '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL, 0),
(434, 281, 1.00, 'Peperoni', '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL, 0),
(435, 316, 1.00, 'Olive', '2022-10-08 01:59:55', '2022-10-08 01:59:55', NULL, 1),
(436, 316, 0.50, 'Mushroom', '2022-10-08 01:59:55', '2022-10-08 01:59:55', NULL, 1),
(437, 316, 2.00, 'Peperoni', '2022-10-08 01:59:55', '2022-10-08 01:59:55', NULL, 0),
(438, 316, 1.00, 'Peperoni', '2022-10-08 01:59:55', '2022-10-08 01:59:55', NULL, 0),
(439, 317, 1.00, 'Olive', '2022-10-08 01:59:59', '2022-10-08 01:59:59', NULL, 1),
(440, 317, 0.50, 'Mushroom', '2022-10-08 01:59:59', '2022-10-08 01:59:59', NULL, 1),
(441, 317, 2.00, 'Peperoni', '2022-10-08 01:59:59', '2022-10-08 01:59:59', NULL, 0),
(442, 317, 1.00, 'Peperoni', '2022-10-08 02:00:00', '2022-10-08 02:00:00', NULL, 0),
(443, 318, 1.00, 'Olive', '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL, 1),
(444, 318, 0.50, 'Mushroom', '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL, 1),
(445, 318, 2.00, 'Peperoni', '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL, 0),
(446, 318, 1.00, 'Peperoni', '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL, 0),
(447, 319, 1.00, 'Olive', '2022-10-08 02:00:04', '2022-10-08 02:00:04', NULL, 1),
(448, 319, 0.50, 'Mushroom', '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL, 1),
(449, 319, 2.00, 'Peperoni', '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL, 0),
(450, 319, 1.00, 'Peperoni', '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL, 0),
(451, 320, 1.00, 'Olive', '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL, 1),
(452, 320, 0.50, 'Mushroom', '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL, 1),
(453, 320, 2.00, 'Peperoni', '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL, 0),
(454, 320, 1.00, 'Peperoni', '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL, 0),
(455, 321, 1.00, 'Olive', '2022-10-08 02:00:08', '2022-10-08 02:00:08', NULL, 1),
(456, 321, 0.50, 'Mushroom', '2022-10-08 02:00:08', '2022-10-08 02:00:08', NULL, 1),
(457, 321, 2.00, 'Peperoni', '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL, 0),
(458, 321, 1.00, 'Peperoni', '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL, 0),
(459, 322, 1.00, 'Olive', '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL, 1),
(460, 322, 0.50, 'Mushroom', '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL, 1),
(461, 322, 2.00, 'Peperoni', '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL, 0),
(462, 322, 1.00, 'Peperoni', '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL, 0),
(463, 323, 1.00, 'Olive', '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL, 1),
(464, 323, 0.50, 'Mushroom', '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL, 1),
(465, 323, 2.00, 'Peperoni', '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL, 0),
(466, 323, 1.00, 'Peperoni', '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL, 0),
(467, 324, 1.00, 'Olive', '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL, 1),
(468, 324, 0.50, 'Mushroom', '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL, 1),
(469, 324, 2.00, 'Peperoni', '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL, 0),
(470, 324, 1.00, 'Peperoni', '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL, 0),
(471, 325, 1.00, 'Olive', '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL, 1),
(472, 325, 0.50, 'Mushroom', '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL, 1),
(473, 325, 2.00, 'Peperoni', '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL, 0),
(474, 325, 1.00, 'Peperoni', '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL, 0),
(475, 326, 1.00, 'Olive', '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL, 1),
(476, 326, 0.50, 'Mushroom', '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL, 1),
(477, 326, 2.00, 'Peperoni', '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL, 0),
(478, 326, 1.00, 'Peperoni', '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL, 0),
(479, 335, 1.20, 'Extra cheese', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(480, 335, 0.30, 'Extra olives', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(481, 335, 1.50, 'Tuna', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(482, 336, 1.20, 'Extra cheese', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(483, 336, 0.30, 'Extra olives', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(484, 336, 1.50, 'Tuna', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(485, 337, 1.20, 'Extra cheese', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(486, 337, 0.30, 'Extra olives', '2022-10-08 02:00:21', '2022-10-08 02:00:21', NULL, 1),
(487, 337, 1.50, 'Tuna', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(488, 338, 1.20, 'Extra cheese', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(489, 338, 0.30, 'Extra olives', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(490, 338, 1.50, 'Tuna', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(491, 339, 1.20, 'Extra cheese', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(492, 339, 0.30, 'Extra olives', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(493, 339, 1.50, 'Tuna', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(494, 340, 1.20, 'Extra cheese', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(495, 340, 0.30, 'Extra olives', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1),
(496, 340, 1.50, 'Tuna', '2022-10-08 02:00:22', '2022-10-08 02:00:22', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `0_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `0_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(2, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 2),
(3, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 3),
(4, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 4),
(5, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 5),
(6, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 6),
(7, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 7),
(8, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 8),
(9, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 9),
(10, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 10),
(11, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 11),
(12, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 12),
(13, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 13),
(14, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 14),
(15, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 15),
(16, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 16);

-- --------------------------------------------------------

--
-- Table structure for table `in_shorts`
--

CREATE TABLE `in_shorts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `calender_date` varchar(255) NOT NULL,
  `inShort_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `short_language` varchar(191) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(191) NOT NULL,
  `inShort_link` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_shorts`
--

INSERT INTO `in_shorts` (`id`, `category_id`, `calender_date`, `inShort_title`, `short_language`, `description`, `image`, `inShort_link`, `status`, `created_at`, `updated_at`) VALUES
(7, 1, '20221003', 'हम इसे क्यों प्रयोग करते हैं?', 'Hindi', '<p><strong>Lorem Ipsum</strong>&nbsp;छपाई और अक्षर योजन उद्योग का एक साधारण डमी पाठ है. Lorem Ipsum सन १५०० के बाद से अभी तक इस उद्योग का मानक डमी पाठ मन गया, जब एक अज्ञात मुद्रक ने नमूना लेकर एक नमूना किताब बनाई. यह न केवल पाँच सदियों से जीवित रहा बल्कि इसने इलेक्ट्रॉनिक मीडिया में छलांग लगाने के बाद भी मूलतः अपरिवर्तित रहा. यह 1960 के दशक में Letraset Lorem Ipsum अंश युक्त पत्र के रिलीज के साथ लोकप्रिय हुआ, और हाल ही में Aldus PageMaker Lorem Ipsum के संस्करणों सहित तरह डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ अधिक प्रचलित हुआ.</p>', '7_inShort.png', 'https://hi.lipsum.com/', 1, '2022-10-28 10:08:47', '2022-10-28 10:08:47'),
(3, 1, '20221003', 'यह एक लंबा स्थापित तथ्य है कि जब एक पाठक एक पृष्ठ के खाखे', 'Hindi', '<p>यह एक लंबा स्थापित तथ्य है कि जब एक पाठक एक पृष्ठ के खाखे को देखेगा तो पठनीय सामग्री से विचलित हो जाएगा.</p>', '3_inShort.jpg', 'https://hi.lipsum.com/2222', 1, '2022-10-27 17:42:57', '2022-10-27 18:08:41'),
(4, 1, '20221003', '03 news 1', 'English', '<p>TJHis is&nbsp; for testintg&nbsp;TJHis is&nbsp; for testintgTJHis is&nbsp; for testintgTJHis is&nbsp; for testintgV&nbsp;TJHis is&nbsp; for testintgTJHis is&nbsp; for testintgVTJHis is&nbsp; for testintg&nbsp;TJHis is&nbsp; for testintg</p>', '4_inShort.jpg', 'http://localhost:74/', 1, '2022-10-28 10:05:11', '2022-10-28 10:05:11'),
(5, 1, '20221003', '03 News 2', 'English', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '5_inShort.png', 'localhost:74', 1, '2022-10-28 10:06:41', '2022-10-28 10:06:41'),
(6, 1, '20221003', '03 News 1', 'English', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '6_inShort.png', 'https://www.lipsum.com/', 1, '2022-10-28 10:07:24', '2022-10-28 10:07:24'),
(8, 1, '20221003', 'यह कहाँ से आता है?', 'Hindi', '<p><strong>Lorem Ipsum</strong>&nbsp;छपाई और अक्षर योजन उद्योग का एक साधारण डमी पाठ है. Lorem Ipsum सन १५०० के बाद से अभी तक इस उद्योग का मानक डमी पाठ मन गया, जब एक अज्ञात मुद्रक ने नमूना लेकर एक नमूना किताब बनाई. यह न केवल पाँच सदियों से जीवित रहा बल्कि इसने इलेक्ट्रॉनिक मीडिया में छलांग लगाने के बाद भी मूलतः अपरिवर्तित रहा. यह 1960 के दशक में Letraset Lorem Ipsum अंश युक्त पत्र के रिलीज के साथ लोकप्रिय हुआ, और हाल ही में Aldus PageMaker Lorem Ipsum के संस्करणों सहित तरह डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ अधिक प्रचलित हुआ.</p>', '8_inShort.png', 'https://hi.lipsum.com/', 1, '2022-10-28 10:09:30', '2022-10-28 10:09:30'),
(9, 1, '20221003', 'मुझे कुछ भाग कहा मिल सकता है?', 'Hindi', '<p><strong>Lorem Ipsum</strong>&nbsp;छपाई और अक्षर योजन उद्योग का एक साधारण डमी पाठ है. Lorem Ipsum सन १५०० के बाद से अभी तक इस उद्योग का मानक डमी पाठ मन गया, जब एक अज्ञात मुद्रक ने नमूना लेकर एक नमूना किताब बनाई. यह न केवल पाँच सदियों से जीवित रहा बल्कि इसने इलेक्ट्रॉनिक मीडिया में छलांग लगाने के बाद भी मूलतः अपरिवर्तित रहा. यह 1960 के दशक में Letraset Lorem Ipsum अंश युक्त पत्र के रिलीज के साथ लोकप्रिय हुआ, और हाल ही में Aldus PageMaker Lorem Ipsum के संस्करणों सहित तरह डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ अधिक प्रचलित हुआ.</p>', '9_inShort.png', 'https://hi.lipsum.com/', 1, '2022-10-28 10:10:05', '2022-10-28 10:10:05'),
(10, 1, '20221104', 'Vera Knight', 'English', '<p>I have a table that contains, amongst other columns, a column of browser versions. And I simply want to know from the record-set, how many of each type of browser there are. So, I need to end up with something like this: Total Records: 10; Internet Explorer 8: 2; Chrome 25: 4; Firefox 20: 4. (All adding up to 10)</p>', '10_inShort.png', 'https://peolealo.org', 1, '2022-11-11 12:23:48', '2022-11-11 12:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(455) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `has_variants` int(11) NOT NULL DEFAULT 0,
  `vat` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`) VALUES
(27, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 5, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(28, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 5, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(29, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 5, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(30, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 5, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(31, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 5, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(32, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 5, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(33, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 5, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(34, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 6, '2022-10-08 01:56:25', '2022-10-08 01:56:25', 1, 0, 21.00, NULL),
(35, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 6, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(36, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 6, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(37, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 7, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(38, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 8, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(39, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 8, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(40, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 8, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(41, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 9, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(42, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 9, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(43, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 9, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(44, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 9, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 1, 0, 21.00, NULL),
(45, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 10, '2022-10-08 01:56:27', '2022-10-08 01:56:27', 1, 0, 21.00, NULL),
(46, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 10, '2022-10-08 01:56:27', '2022-10-08 01:56:27', 1, 0, 21.00, NULL),
(47, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 10, '2022-10-08 01:56:27', '2022-10-08 01:56:27', 1, 0, 21.00, NULL),
(48, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 10, '2022-10-08 01:56:27', '2022-10-08 01:56:27', 1, 0, 21.00, NULL),
(49, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 11, '2022-10-08 01:56:27', '2022-10-08 01:56:27', 1, 0, 21.00, NULL),
(50, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 11, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(51, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 11, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(52, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 11, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(53, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 12, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(54, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 12, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(55, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 12, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(56, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 12, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(57, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 13, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(58, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 13, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(59, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 13, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(60, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 13, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 1, 0, 21.00, NULL),
(61, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 14, '2022-10-08 01:56:29', '2022-10-08 01:56:29', 1, 0, 21.00, NULL),
(62, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 14, '2022-10-08 01:56:30', '2022-10-08 01:56:30', 1, 0, 21.00, NULL),
(63, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 14, '2022-10-08 01:56:30', '2022-10-08 01:56:30', 1, 0, 21.00, NULL),
(64, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 14, '2022-10-08 01:56:30', '2022-10-08 01:56:30', 1, 0, 21.00, NULL),
(65, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 14, '2022-10-08 01:56:30', '2022-10-08 01:56:30', 1, 0, 21.00, NULL),
(66, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 14, '2022-10-08 01:56:31', '2022-10-08 01:56:31', 1, 0, 21.00, NULL),
(67, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 15, '2022-10-08 01:56:31', '2022-10-08 01:56:31', 1, 1, 21.00, NULL),
(68, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 15, '2022-10-08 01:56:33', '2022-10-08 01:56:33', 1, 1, 21.00, NULL),
(69, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 15, '2022-10-08 01:56:37', '2022-10-08 01:56:37', 1, 1, 21.00, NULL),
(70, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 15, '2022-10-08 01:56:40', '2022-10-08 01:56:40', 1, 1, 21.00, NULL),
(71, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 15, '2022-10-08 01:56:42', '2022-10-08 01:56:42', 1, 1, 21.00, NULL),
(72, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 15, '2022-10-08 01:56:44', '2022-10-08 01:56:44', 1, 1, 21.00, NULL),
(73, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 15, '2022-10-08 01:56:46', '2022-10-08 01:56:46', 1, 1, 21.00, NULL),
(74, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 15, '2022-10-08 01:56:50', '2022-10-08 01:56:50', 1, 1, 21.00, NULL),
(75, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 15, '2022-10-08 01:56:52', '2022-10-08 01:56:52', 1, 1, 21.00, NULL),
(76, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 15, '2022-10-08 01:56:54', '2022-10-08 01:56:54', 1, 1, 21.00, NULL),
(77, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 15, '2022-10-08 01:56:56', '2022-10-08 01:56:56', 1, 1, 21.00, NULL),
(78, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 16, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 1, 0, 21.00, NULL),
(79, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 16, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 1, 0, 21.00, NULL),
(80, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 16, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 1, 0, 21.00, NULL),
(81, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 16, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 1, 0, 21.00, NULL),
(82, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 17, '2022-10-08 01:56:59', '2022-10-08 01:56:59', 1, 0, 21.00, NULL),
(83, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 17, '2022-10-08 01:56:59', '2022-10-08 01:56:59', 1, 0, 21.00, NULL),
(84, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 17, '2022-10-08 01:56:59', '2022-10-08 01:56:59', 1, 0, 21.00, NULL),
(85, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 17, '2022-10-08 01:56:59', '2022-10-08 01:56:59', 1, 0, 21.00, NULL),
(86, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 18, '2022-10-08 01:57:02', '2022-10-08 01:57:02', 1, 1, 21.00, NULL),
(87, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 18, '2022-10-08 01:57:04', '2022-10-08 01:57:04', 1, 1, 21.00, NULL),
(88, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 18, '2022-10-08 01:57:08', '2022-10-08 01:57:08', 1, 1, 21.00, NULL),
(89, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 18, '2022-10-08 01:57:10', '2022-10-08 01:57:10', 1, 1, 21.00, NULL),
(90, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 18, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 1, 1, 21.00, NULL),
(91, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 18, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 1, 1, 21.00, NULL),
(92, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 18, '2022-10-08 01:57:15', '2022-10-08 01:57:15', 1, 1, 21.00, NULL),
(93, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 18, '2022-10-08 01:57:18', '2022-10-08 01:57:18', 1, 1, 21.00, NULL),
(94, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 18, '2022-10-08 01:57:20', '2022-10-08 01:57:20', 1, 1, 21.00, NULL),
(95, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 18, '2022-10-08 01:57:22', '2022-10-08 01:57:22', 1, 1, 21.00, NULL),
(96, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 18, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 1, 1, 21.00, NULL),
(97, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 19, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 1, 0, 21.00, NULL),
(98, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 19, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 1, 0, 21.00, NULL),
(99, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 19, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 1, 0, 21.00, NULL),
(100, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 19, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 1, 0, 21.00, NULL),
(101, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 19, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(102, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 19, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(103, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 20, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(104, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 20, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(105, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 20, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(106, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 21, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(107, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 21, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(108, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 21, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(109, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 21, '2022-10-08 01:57:26', '2022-10-08 01:57:26', 1, 0, 21.00, NULL),
(110, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 21, '2022-10-08 01:57:27', '2022-10-08 01:57:27', 1, 0, 21.00, NULL),
(111, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 21, '2022-10-08 01:57:27', '2022-10-08 01:57:27', 1, 0, 21.00, NULL),
(112, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 22, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(113, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 22, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(114, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 22, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(115, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 22, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(116, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 23, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(117, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 23, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(118, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 23, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(119, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 23, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(120, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 24, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(121, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 24, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(122, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 24, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(123, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 24, '2022-10-08 01:57:28', '2022-10-08 01:57:28', 1, 0, 21.00, NULL),
(124, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 25, '2022-10-08 01:57:29', '2022-10-08 01:57:29', 1, 0, 21.00, NULL),
(125, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 25, '2022-10-08 01:57:29', '2022-10-08 01:57:29', 1, 0, 21.00, NULL),
(126, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 25, '2022-10-08 01:57:29', '2022-10-08 01:57:29', 1, 0, 21.00, NULL),
(127, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 25, '2022-10-08 01:57:29', '2022-10-08 01:57:29', 1, 0, 21.00, NULL),
(128, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 26, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 1, 0, 21.00, NULL),
(129, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 26, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 1, 0, 21.00, NULL),
(130, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 26, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 1, 0, 21.00, NULL),
(131, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 27, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 1, 0, 21.00, NULL),
(132, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 28, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 1, 0, 21.00, NULL),
(133, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 28, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 1, 0, 21.00, NULL),
(134, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 28, '2022-10-08 01:57:30', '2022-10-08 01:57:30', 1, 0, 21.00, NULL),
(135, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 28, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(136, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 29, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(137, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 29, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(138, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 29, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(139, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 29, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(140, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 29, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(141, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 29, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(142, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 29, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(143, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 30, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(144, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 30, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(145, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 30, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 1, 0, 21.00, NULL),
(146, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 31, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 1, 0, 21.00, NULL),
(147, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 31, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 1, 0, 21.00, NULL),
(148, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 31, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 1, 0, 21.00, NULL),
(149, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 31, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 1, 0, 21.00, NULL),
(150, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 32, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 1, 0, 21.00, NULL),
(151, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 32, '2022-10-08 01:57:32', '2022-10-08 01:57:32', 1, 0, 21.00, NULL),
(152, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 32, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 1, 0, 21.00, NULL),
(153, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 32, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 1, 0, 21.00, NULL),
(154, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 33, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 1, 0, 21.00, NULL),
(155, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 33, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 1, 0, 21.00, NULL),
(156, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 33, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 1, 0, 21.00, NULL),
(157, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 33, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 1, 0, 21.00, NULL),
(158, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 33, '2022-10-08 01:57:33', '2022-10-08 01:57:33', 1, 0, 21.00, NULL),
(159, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 33, '2022-10-08 01:57:34', '2022-10-08 01:57:34', 1, 0, 21.00, NULL),
(160, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 34, '2022-10-08 01:57:34', '2022-10-08 01:57:34', 1, 1, 21.00, NULL),
(161, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 34, '2022-10-08 01:57:36', '2022-10-08 01:57:36', 1, 1, 21.00, NULL),
(162, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 34, '2022-10-08 01:57:38', '2022-10-08 01:57:38', 1, 1, 21.00, NULL),
(163, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 34, '2022-10-08 01:57:40', '2022-10-08 01:57:40', 1, 1, 21.00, NULL),
(164, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 34, '2022-10-08 01:57:42', '2022-10-08 01:57:42', 1, 1, 21.00, NULL),
(165, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 34, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 1, 1, 21.00, NULL),
(166, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 34, '2022-10-08 01:57:47', '2022-10-08 01:57:47', 1, 1, 21.00, NULL),
(167, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 34, '2022-10-08 01:57:50', '2022-10-08 01:57:50', 1, 1, 21.00, NULL),
(168, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 34, '2022-10-08 01:57:54', '2022-10-08 01:57:54', 1, 1, 21.00, NULL),
(169, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 34, '2022-10-08 01:57:57', '2022-10-08 01:57:57', 1, 1, 21.00, NULL),
(170, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 34, '2022-10-08 01:57:59', '2022-10-08 01:57:59', 1, 1, 21.00, NULL),
(171, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 35, '2022-10-08 01:58:03', '2022-10-08 01:58:03', 1, 1, 21.00, NULL),
(172, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 35, '2022-10-08 01:58:06', '2022-10-08 01:58:06', 1, 1, 21.00, NULL),
(173, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 35, '2022-10-08 01:58:08', '2022-10-08 01:58:08', 1, 1, 21.00, NULL),
(174, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 35, '2022-10-08 01:58:14', '2022-10-08 01:58:14', 1, 1, 21.00, NULL),
(175, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 35, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 1, 1, 21.00, NULL),
(176, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 35, '2022-10-08 01:58:18', '2022-10-08 01:58:18', 1, 1, 21.00, NULL),
(177, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 35, '2022-10-08 01:58:20', '2022-10-08 01:58:20', 1, 1, 21.00, NULL),
(178, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 35, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 1, 1, 21.00, NULL),
(179, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 35, '2022-10-08 01:58:23', '2022-10-08 01:58:23', 1, 1, 21.00, NULL),
(180, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 35, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 1, 1, 21.00, NULL),
(181, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 35, '2022-10-08 01:58:26', '2022-10-08 01:58:26', 1, 1, 21.00, NULL),
(182, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 36, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(183, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 36, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(184, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 36, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(185, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 36, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(186, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 36, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(187, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 36, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(188, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 37, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(189, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 37, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(190, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 37, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(191, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 38, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 1, 0, 21.00, NULL),
(192, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 38, '2022-10-08 01:58:29', '2022-10-08 01:58:29', 1, 0, 21.00, NULL),
(193, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 38, '2022-10-08 01:58:29', '2022-10-08 01:58:29', 1, 0, 21.00, NULL),
(194, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 38, '2022-10-08 01:58:29', '2022-10-08 01:58:29', 1, 0, 21.00, NULL),
(195, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 38, '2022-10-08 01:58:29', '2022-10-08 01:58:29', 1, 0, 21.00, NULL),
(196, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 38, '2022-10-08 01:58:29', '2022-10-08 01:58:29', 1, 0, 21.00, NULL),
(197, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 39, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`) VALUES
(198, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 39, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL),
(199, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 39, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL),
(200, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 39, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL),
(201, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 40, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL),
(202, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 40, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL),
(203, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 40, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL),
(204, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 40, '2022-10-08 01:58:31', '2022-10-08 01:58:31', 1, 0, 21.00, NULL),
(205, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 41, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(206, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 41, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(207, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 41, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(208, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 41, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(209, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 42, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(210, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 42, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(211, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 42, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(212, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 42, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 1, 0, 21.00, NULL),
(213, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 43, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 1, 0, 21.00, NULL),
(214, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 43, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 1, 0, 21.00, NULL),
(215, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 43, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 1, 0, 21.00, NULL),
(216, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 44, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 1, 0, 21.00, NULL),
(217, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 44, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 1, 0, 21.00, NULL),
(218, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 44, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 1, 0, 21.00, NULL),
(219, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 44, '2022-10-08 01:58:34', '2022-10-08 01:58:34', 1, 0, 21.00, NULL),
(220, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 44, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(221, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 44, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(222, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 44, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(223, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 45, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(224, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 46, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(225, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 46, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(226, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 46, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(227, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 46, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(228, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 47, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(229, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 47, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(230, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 47, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 1, 0, 21.00, NULL),
(231, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 48, '2022-10-08 01:58:37', '2022-10-08 01:58:37', 1, 0, 21.00, NULL),
(232, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 48, '2022-10-08 01:58:37', '2022-10-08 01:58:37', 1, 0, 21.00, NULL),
(233, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 48, '2022-10-08 01:58:37', '2022-10-08 01:58:37', 1, 0, 21.00, NULL),
(234, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 48, '2022-10-08 01:58:37', '2022-10-08 01:58:37', 1, 0, 21.00, NULL),
(235, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 49, '2022-10-08 01:58:37', '2022-10-08 01:58:37', 1, 1, 21.00, NULL),
(236, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 49, '2022-10-08 01:58:39', '2022-10-08 01:58:39', 1, 1, 21.00, NULL),
(237, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 49, '2022-10-08 01:58:45', '2022-10-08 01:58:45', 1, 1, 21.00, NULL),
(238, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 49, '2022-10-08 01:58:49', '2022-10-08 01:58:49', 1, 1, 21.00, NULL),
(239, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 49, '2022-10-08 01:58:52', '2022-10-08 01:58:52', 1, 1, 21.00, NULL),
(240, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 49, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 1, 1, 21.00, NULL),
(241, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 49, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 1, 1, 21.00, NULL),
(242, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 49, '2022-10-08 01:58:59', '2022-10-08 01:58:59', 1, 1, 21.00, NULL),
(243, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 49, '2022-10-08 01:59:01', '2022-10-08 01:59:01', 1, 1, 21.00, NULL),
(244, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 49, '2022-10-08 01:59:04', '2022-10-08 01:59:04', 1, 1, 21.00, NULL),
(245, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 49, '2022-10-08 01:59:06', '2022-10-08 01:59:06', 1, 1, 21.00, NULL),
(246, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 50, '2022-10-08 01:59:09', '2022-10-08 01:59:09', 1, 0, 21.00, NULL),
(247, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 50, '2022-10-08 01:59:09', '2022-10-08 01:59:09', 1, 0, 21.00, NULL),
(248, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 50, '2022-10-08 01:59:09', '2022-10-08 01:59:09', 1, 0, 21.00, NULL),
(249, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 50, '2022-10-08 01:59:09', '2022-10-08 01:59:09', 1, 0, 21.00, NULL),
(250, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 50, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 1, 0, 21.00, NULL),
(251, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 50, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 1, 0, 21.00, NULL),
(252, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 51, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 1, 0, 21.00, NULL),
(253, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 51, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 1, 0, 21.00, NULL),
(254, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 51, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 1, 0, 21.00, NULL),
(255, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 51, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 1, 0, 21.00, NULL),
(256, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 52, '2022-10-08 01:59:11', '2022-10-08 01:59:11', 1, 0, 21.00, NULL),
(257, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 52, '2022-10-08 01:59:11', '2022-10-08 01:59:11', 1, 0, 21.00, NULL),
(258, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 52, '2022-10-08 01:59:11', '2022-10-08 01:59:11', 1, 0, 21.00, NULL),
(259, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 53, '2022-10-08 01:59:12', '2022-10-08 01:59:12', 1, 0, 21.00, NULL),
(260, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 53, '2022-10-08 01:59:12', '2022-10-08 01:59:12', 1, 0, 21.00, NULL),
(261, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 53, '2022-10-08 01:59:12', '2022-10-08 01:59:12', 1, 0, 21.00, NULL),
(262, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 53, '2022-10-08 01:59:12', '2022-10-08 01:59:12', 1, 0, 21.00, NULL),
(263, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 53, '2022-10-08 01:59:13', '2022-10-08 01:59:13', 1, 0, 21.00, NULL),
(264, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 53, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 0, 21.00, NULL),
(265, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 54, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 0, 21.00, NULL),
(266, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 54, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 0, 21.00, NULL),
(267, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 54, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 0, 21.00, NULL),
(268, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 54, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 0, 21.00, NULL),
(269, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 54, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 0, 21.00, NULL),
(270, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 54, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 0, 21.00, NULL),
(271, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 55, '2022-10-08 01:59:15', '2022-10-08 01:59:15', 1, 1, 21.00, NULL),
(272, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 55, '2022-10-08 01:59:17', '2022-10-08 01:59:17', 1, 1, 21.00, NULL),
(273, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 55, '2022-10-08 01:59:19', '2022-10-08 01:59:19', 1, 1, 21.00, NULL),
(274, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 55, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 1, 1, 21.00, NULL),
(275, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 55, '2022-10-08 01:59:22', '2022-10-08 01:59:22', 1, 1, 21.00, NULL),
(276, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 55, '2022-10-08 01:59:25', '2022-10-08 01:59:25', 1, 1, 21.00, NULL),
(277, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 55, '2022-10-08 01:59:27', '2022-10-08 01:59:27', 1, 1, 21.00, NULL),
(278, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 55, '2022-10-08 01:59:30', '2022-10-08 01:59:30', 1, 1, 21.00, NULL),
(279, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 55, '2022-10-08 01:59:32', '2022-10-08 01:59:32', 1, 1, 21.00, NULL),
(280, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 55, '2022-10-08 01:59:36', '2022-10-08 01:59:36', 1, 1, 21.00, NULL),
(281, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 55, '2022-10-08 01:59:38', '2022-10-08 01:59:38', 1, 1, 21.00, NULL),
(282, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 56, '2022-10-08 01:59:43', '2022-10-08 01:59:43', 1, 0, 21.00, NULL),
(283, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 56, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 1, 0, 21.00, NULL),
(284, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 56, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 1, 0, 21.00, NULL),
(285, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 56, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 1, 0, 21.00, NULL),
(286, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 57, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 1, 0, 21.00, NULL),
(287, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 57, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 1, 0, 21.00, NULL),
(288, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 57, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 1, 0, 21.00, NULL),
(289, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 57, '2022-10-08 01:59:44', '2022-10-08 01:59:44', 1, 0, 21.00, NULL),
(290, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 58, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(291, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 58, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(292, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 58, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(293, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 58, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(294, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 59, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(295, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 59, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(296, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 59, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(297, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 59, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 1, 0, 21.00, NULL),
(298, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 60, '2022-10-08 01:59:48', '2022-10-08 01:59:48', 1, 0, 21.00, NULL),
(299, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 60, '2022-10-08 01:59:49', '2022-10-08 01:59:49', 1, 0, 21.00, NULL),
(300, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 60, '2022-10-08 01:59:50', '2022-10-08 01:59:50', 1, 0, 21.00, NULL),
(301, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 61, '2022-10-08 01:59:50', '2022-10-08 01:59:50', 1, 0, 21.00, NULL),
(302, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 62, '2022-10-08 01:59:51', '2022-10-08 01:59:51', 1, 0, 21.00, NULL),
(303, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 62, '2022-10-08 01:59:51', '2022-10-08 01:59:51', 1, 0, 21.00, NULL),
(304, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 62, '2022-10-08 01:59:51', '2022-10-08 01:59:51', 1, 0, 21.00, NULL),
(305, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 62, '2022-10-08 01:59:51', '2022-10-08 01:59:51', 1, 0, 21.00, NULL),
(306, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 63, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 1, 0, 21.00, NULL),
(307, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 63, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 1, 0, 21.00, NULL),
(308, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 63, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 1, 0, 21.00, NULL),
(309, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 63, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 1, 0, 21.00, NULL),
(310, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 63, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 1, 0, 21.00, NULL),
(311, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 63, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 1, 0, 21.00, NULL),
(312, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 63, '2022-10-08 01:59:52', '2022-10-08 01:59:52', 1, 0, 21.00, NULL),
(313, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 64, '2022-10-08 01:59:53', '2022-10-08 01:59:53', 1, 0, 21.00, NULL),
(314, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 64, '2022-10-08 01:59:53', '2022-10-08 01:59:53', 1, 0, 21.00, NULL),
(315, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 64, '2022-10-08 01:59:53', '2022-10-08 01:59:53', 1, 0, 21.00, NULL),
(316, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 65, '2022-10-08 01:59:55', '2022-10-08 01:59:55', 1, 1, 21.00, NULL),
(317, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 65, '2022-10-08 01:59:59', '2022-10-08 01:59:59', 1, 1, 21.00, NULL),
(318, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 65, '2022-10-08 02:00:02', '2022-10-08 02:00:02', 1, 1, 21.00, NULL),
(319, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 65, '2022-10-08 02:00:04', '2022-10-08 02:00:04', 1, 1, 21.00, NULL),
(320, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 65, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 1, 1, 21.00, NULL),
(321, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 65, '2022-10-08 02:00:08', '2022-10-08 02:00:08', 1, 1, 21.00, NULL),
(322, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 65, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 1, 1, 21.00, NULL),
(323, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 65, '2022-10-08 02:00:13', '2022-10-08 02:00:13', 1, 1, 21.00, NULL),
(324, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 65, '2022-10-08 02:00:15', '2022-10-08 02:00:15', 1, 1, 21.00, NULL),
(325, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 65, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1, 1, 21.00, NULL),
(326, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 65, '2022-10-08 02:00:18', '2022-10-08 02:00:18', 1, 1, 21.00, NULL),
(327, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 66, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1, 0, 21.00, NULL),
(328, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 66, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1, 0, 21.00, NULL),
(329, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 66, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1, 0, 21.00, NULL),
(330, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 66, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1, 0, 21.00, NULL),
(331, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 67, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1, 0, 21.00, NULL),
(332, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 67, '2022-10-08 02:00:21', '2022-10-08 02:00:21', 1, 0, 21.00, NULL),
(333, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 67, '2022-10-08 02:00:21', '2022-10-08 02:00:21', 1, 0, 21.00, NULL),
(334, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 67, '2022-10-08 02:00:21', '2022-10-08 02:00:21', 1, 0, 21.00, NULL),
(335, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 68, '2022-10-08 02:00:21', '2022-10-08 02:00:21', 1, 0, 21.00, NULL),
(336, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 68, '2022-10-08 02:00:21', '2022-10-08 02:00:21', 1, 0, 21.00, NULL),
(337, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 68, '2022-10-08 02:00:21', '2022-10-08 02:00:21', 1, 0, 21.00, NULL),
(338, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 68, '2022-10-08 02:00:22', '2022-10-08 02:00:22', 1, 0, 21.00, NULL),
(339, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 68, '2022-10-08 02:00:22', '2022-10-08 02:00:22', 1, 0, 21.00, NULL),
(340, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 68, '2022-10-08 02:00:22', '2022-10-08 02:00:22', 1, 0, 21.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localmenus`
--

CREATE TABLE `localmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languageName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT 0 COMMENT '0 - No, 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_05_03_000001_create_customer_columns', 1),
(6, '2019_05_03_000002_create_subscriptions_table', 1),
(7, '2019_05_03_000003_create_subscription_items_table', 1),
(8, '2020_02_06_010033_create_permission_tables', 1),
(9, '2020_02_06_022212_create_restorants_table', 1),
(10, '2020_02_09_015116_create_status_table', 1),
(11, '2020_02_09_152551_create_categories_table', 1),
(12, '2020_02_09_152656_create_items_table', 1),
(13, '2020_02_11_052117_create_address_table', 1),
(14, '2020_02_11_054259_create_orders_table', 1),
(15, '2020_02_20_094727_create_settings_table', 1),
(16, '2020_03_25_134914_create_pages_table', 1),
(17, '2020_04_03_143518_update_settings_table', 1),
(18, '2020_04_10_202027_create_payments_table', 1),
(19, '2020_04_11_165819_update_table_orders', 1),
(20, '2020_04_22_105556_update_items_table', 1),
(21, '2020_04_23_212320_update_restorants_table', 1),
(22, '2020_04_23_212502_update_orders_table', 1),
(23, '2020_04_28_112519_update_address_table', 1),
(24, '2020_05_07_122727_create_hours_table', 1),
(25, '2020_05_09_012646_update_orders_add_delivery_table', 1),
(26, '2020_05_09_024507_add_options_to_settings_table', 1),
(27, '2020_05_20_232204_create_notifications_table', 1),
(28, '2020_06_03_134258_change_radius_to_delivery_area_restorants_table', 1),
(29, '2020_06_26_131803_create_sms_verifications_table', 1),
(30, '2020_07_12_182829_create_extras_table', 1),
(31, '2020_07_14_155509_create_plan_table', 1),
(32, '2020_07_23_183000_update_restorants_with_featured', 1),
(33, '2020_07_28_131511_update_users_sms_verification', 1),
(34, '2020_07_30_102916_change_json_to_string', 1),
(35, '2020_08_01_014851_create_variants', 1),
(36, '2020_08_14_003718_create_ratings_table', 1),
(37, '2020_08_18_035731_update_table_plans', 1),
(38, '2020_08_18_053012_update_user_add_plan', 1),
(39, '2020_09_02_131604_update_orders_time_to_prepare', 1),
(40, '2020_09_09_080747_create_cities_table', 1),
(41, '2020_09_28_131250_update_item_softdelete', 1),
(42, '2020_10_24_150254_create_tables_table', 1),
(43, '2020_10_25_021321_create_visits_table', 1),
(44, '2020_10_26_004421_update_orders_client_nullable', 1),
(45, '2020_10_26_104351_update_restorant_table', 1),
(46, '2020_10_26_190049_update_plan', 1),
(47, '2020_10_27_180123_create_stripe_payment', 1),
(48, '2020_11_01_190615_update_user_table', 1),
(49, '2020_11_05_081140_create_paths_table', 1),
(50, '2020_11_14_111220_create_phone_in_orders', 1),
(51, '2020_11_17_211252_update_logo_in_settings', 1),
(52, '2020_11_25_182453_create_paypal_payment', 1),
(53, '2020_11_25_225536_update_user_for_paypal_subsc', 1),
(54, '2020_11_27_102829_update_restaurants_for_delivery_pickup', 1),
(55, '2020_11_27_165901_create_coupons_table', 1),
(56, '2020_12_02_192213_update_for_whatsapp_order', 1),
(57, '2020_12_02_195333_update_for_mollie_payment', 1),
(58, '2020_12_07_142304_create_banners_table', 1),
(59, '2020_12_10_155335_wp_address', 1),
(60, '2020_12_14_195627_update_for_paystack_sub', 1),
(61, '2020_12_15_130511_update_paystack_verification', 1),
(62, '2020_12_27_155822_create_restaurant_multilanguage', 1),
(63, '2020_12_27_162902_update_restaurant_with_currency', 1),
(64, '2021_01_16_093708_update_restorant_with_pay_link', 1),
(65, '2021_01_22_142723_create_crud_for_whatsapp_landing', 1),
(66, '2021_02_16_065037_create_configs_table', 2),
(67, '2021_02_18_140330_allow_null_on_config_value', 2),
(68, '2021_02_22_135519_update_settinga_table', 2),
(69, '2021_02_26_113854_order_fee_update', 2),
(70, '2021_03_23_135952_update_config_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 3),
(3, 'App\\User', 6),
(4, 'App\\User', 4),
(4, 'App\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `item_id`, `name`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23, 67, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL),
(24, 67, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL),
(25, 68, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:34', '2022-10-08 01:56:34', NULL),
(26, 68, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:35', '2022-10-08 01:56:35', NULL),
(27, 69, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL),
(28, 69, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:38', '2022-10-08 01:56:38', NULL),
(29, 70, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL),
(30, 70, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(31, 71, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(32, 71, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(33, 72, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(34, 72, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(35, 73, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:47', '2022-10-08 01:56:47', NULL),
(36, 73, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:47', '2022-10-08 01:56:47', NULL),
(37, 74, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL),
(38, 74, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL),
(39, 75, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL),
(40, 75, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL),
(41, 76, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(42, 76, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(43, 77, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL),
(44, 77, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL),
(45, 86, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL),
(46, 86, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL),
(47, 87, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:06', '2022-10-08 01:57:06', NULL),
(48, 87, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(49, 88, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL),
(50, 88, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL),
(51, 89, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL),
(52, 89, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL),
(53, 90, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(54, 90, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(55, 91, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(56, 91, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(57, 92, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL),
(58, 92, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:16', '2022-10-08 01:57:16', NULL),
(59, 93, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL),
(60, 93, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL),
(61, 94, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL),
(62, 94, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL),
(63, 95, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL),
(64, 95, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL),
(65, 96, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(66, 96, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(67, 160, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL),
(68, 160, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL),
(69, 161, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(70, 161, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(71, 162, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(72, 162, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(73, 163, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:40', '2022-10-08 01:57:40', NULL),
(74, 163, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(75, 164, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL),
(76, 164, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL),
(77, 165, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:45', '2022-10-08 01:57:45', NULL),
(78, 165, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:45', '2022-10-08 01:57:45', NULL),
(79, 166, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL),
(80, 166, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL),
(81, 167, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:51', '2022-10-08 01:57:51', NULL),
(82, 167, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:51', '2022-10-08 01:57:51', NULL),
(83, 168, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:54', '2022-10-08 01:57:54', NULL),
(84, 168, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:54', '2022-10-08 01:57:54', NULL),
(85, 169, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL),
(86, 169, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL),
(87, 170, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(88, 170, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(89, 171, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(90, 171, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(91, 172, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:06', '2022-10-08 01:58:06', NULL),
(92, 172, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:06', '2022-10-08 01:58:06', NULL),
(93, 173, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL),
(94, 173, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL),
(95, 174, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL),
(96, 174, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL),
(97, 175, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(98, 175, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(99, 176, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL),
(100, 176, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL),
(101, 177, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(102, 177, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(103, 178, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(104, 178, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:22', '2022-10-08 01:58:22', NULL),
(105, 179, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(106, 179, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(107, 180, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(108, 180, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(109, 181, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL),
(110, 181, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL),
(111, 235, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:37', '2022-10-08 01:58:37', NULL),
(112, 235, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(113, 236, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL),
(114, 236, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL),
(115, 237, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:45', '2022-10-08 01:58:45', NULL),
(116, 237, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:45', '2022-10-08 01:58:45', NULL),
(117, 238, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:50', '2022-10-08 01:58:50', NULL),
(118, 238, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:50', '2022-10-08 01:58:50', NULL),
(119, 239, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL),
(120, 239, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL),
(121, 240, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(122, 240, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(123, 241, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL),
(124, 241, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL),
(125, 242, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL),
(126, 242, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL),
(127, 243, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:01', '2022-10-08 01:59:01', NULL),
(128, 243, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:02', '2022-10-08 01:59:02', NULL),
(129, 244, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL),
(130, 244, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL),
(131, 245, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:07', '2022-10-08 01:59:07', NULL),
(132, 245, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:07', '2022-10-08 01:59:07', NULL),
(133, 271, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL),
(134, 271, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL),
(135, 272, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(136, 272, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(137, 273, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(138, 273, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(139, 274, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(140, 274, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(141, 275, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL),
(142, 275, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL),
(143, 276, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL),
(144, 276, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(145, 277, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL),
(146, 277, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:28', '2022-10-08 01:59:28', NULL),
(147, 278, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL),
(148, 278, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL),
(149, 279, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:33', '2022-10-08 01:59:33', NULL),
(150, 279, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:33', '2022-10-08 01:59:33', NULL),
(151, 280, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL),
(152, 280, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL),
(153, 281, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL),
(154, 281, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL),
(155, 316, 'Size', 'Small,Medium,Large,Family', '2022-10-08 01:59:55', '2022-10-08 01:59:55', NULL),
(156, 316, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 01:59:55', '2022-10-08 01:59:55', NULL),
(157, 317, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:00', '2022-10-08 02:00:00', NULL),
(158, 317, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:00', '2022-10-08 02:00:00', NULL),
(159, 318, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL),
(160, 318, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL),
(161, 319, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL),
(162, 319, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL),
(163, 320, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(164, 320, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(165, 321, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL),
(166, 321, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL),
(167, 322, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL),
(168, 322, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL),
(169, 323, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(170, 323, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(171, 324, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(172, 324, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(173, 325, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(174, 325, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(175, 326, 'Size', 'Small,Medium,Large,Family', '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(176, 326, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srtipe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(8,2) NOT NULL DEFAULT 0.00,
  `fee_value` double NOT NULL DEFAULT 0,
  `static_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_method` int(11) NOT NULL DEFAULT 1 COMMENT '1- Delivery, 2- Pickup',
  `delivery_pickup_interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatvalue` double(8,2) DEFAULT 0.00,
  `payment_processor_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `time_to_prepare` int(11) DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(2, '2022-05-19 09:53:04', '2022-10-08 02:00:26', 1, 4, 2, NULL, 7.00, 100.00, NULL, 'paid', 'Debitis ut aut dolore occaecati dolorem facilis eius. Occaecati molestias repellat quos non corrupti repellat. Enim a sunt sunt nostrum id. Sunt velit omnis quo iste vitae fuga sunt itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(3, '2022-03-03 02:54:03', '2022-10-08 02:00:26', 5, 4, 3, NULL, 7.00, 90.00, NULL, 'paid', 'Ratione necessitatibus enim ratione. Animi soluta quasi sed sit error. Iste eaque odit deleniti et optio perspiciatis. Vel voluptatem voluptatem dolores sed eligendi non est voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(5, '2022-01-17 18:31:30', '2022-10-08 02:00:26', 1, 4, 2, NULL, 9.00, 75.00, NULL, 'paid', 'Asperiores nulla repellendus excepturi et laborum. Illo est ut tempora ut inventore optio. Consequatur et sunt at veritatis mollitia possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(6, '2021-10-23 23:06:13', '2022-10-08 02:00:26', 5, 5, 3, NULL, 8.00, 63.00, NULL, 'paid', 'Asperiores iste esse quis nostrum. Quis voluptates dicta eos aut unde odio vitae. Tenetur ut qui dolore est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(7, '2022-05-14 06:59:22', '2022-10-08 02:00:26', 5, 4, 3, NULL, 5.00, 34.00, NULL, 'paid', 'Animi et commodi laborum atque tenetur. Est natus aut provident nihil quas voluptatem commodi. Impedit nesciunt nulla dolor beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(9, '2021-10-08 10:52:34', '2022-10-08 02:00:26', 1, 4, 2, NULL, 8.00, 75.00, NULL, 'paid', 'Incidunt tempore ut doloribus tempora ut. Eius magnam est voluptates soluta et impedit. Corporis veritatis laboriosam velit provident quasi consequatur suscipit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(10, '2022-05-04 20:11:02', '2022-10-08 02:00:26', 5, 5, 2, NULL, 10.00, 40.00, NULL, 'paid', 'Tempore hic praesentium sapiente rerum. Et consequatur in corporis. Aut et dolores ea et qui nostrum. Quas et accusantium nulla quibusdam omnis. Ipsam incidunt autem nesciunt voluptas quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(11, '2022-03-03 21:12:23', '2022-10-08 02:00:26', 3, 5, 3, NULL, 10.00, 79.00, NULL, 'paid', 'Qui sequi tempore accusamus atque. Doloribus ratione enim id qui rerum. Omnis quod culpa ut et autem quae. Nam aut pariatur optio pariatur deleniti tempora omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(13, '2022-08-24 22:53:46', '2022-10-08 02:00:26', 2, 5, 2, NULL, 8.00, 35.00, NULL, 'paid', 'Itaque necessitatibus dicta soluta aut eos voluptas. Voluptas nobis animi ea officiis atque ipsam in molestiae. Ut omnis est accusantium molestias sed ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(14, '2022-02-06 10:29:55', '2022-10-08 02:00:26', 3, 5, 3, NULL, 9.00, 50.00, NULL, 'paid', 'Libero incidunt asperiores qui veniam. Dolores ut minus sunt voluptatem voluptates. Non commodi repellendus illum corporis quae eaque. Eos ut molestiae rerum autem ut harum consectetur et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(15, '2022-05-03 14:17:50', '2022-10-08 02:00:26', 2, 5, 2, NULL, 10.00, 44.00, NULL, 'paid', 'Fuga earum atque tempore voluptatem. Quis corporis pariatur et fugit ut cumque. Aspernatur id aut sunt voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(16, '2021-12-09 10:43:45', '2022-10-08 02:00:26', 5, 5, 2, NULL, 6.00, 96.00, NULL, 'paid', 'Omnis qui eius perferendis optio maxime quos molestias quidem. Incidunt rerum ipsa dolorum est enim harum distinctio sit. Id nostrum aliquid et nulla molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(17, '2021-10-08 20:37:13', '2022-10-08 02:00:26', 1, 5, 2, NULL, 5.00, 69.00, NULL, 'paid', 'Illo est enim quos labore. Et a accusamus rem eos consequuntur. Quia mollitia maiores sunt ad commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(18, '2022-04-12 20:27:24', '2022-10-08 02:00:26', 2, 4, 2, NULL, 6.00, 65.00, NULL, 'paid', 'Omnis accusantium et quos architecto ut et voluptatibus amet. Impedit unde et assumenda. Ut dignissimos nihil consectetur quia omnis ipsa consequatur. Quasi reprehenderit velit est minima non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(20, '2022-04-15 05:05:53', '2022-10-08 02:00:26', 4, 4, 2, NULL, 9.00, 98.00, NULL, 'paid', 'Doloribus ipsum officia quibusdam pariatur cupiditate numquam ullam. Nesciunt eligendi quasi saepe commodi aut tempore qui. Et ipsa dolores quia est qui illum. Quas assumenda quaerat vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(21, '2021-10-14 15:31:19', '2022-10-08 02:00:26', 1, 5, 2, NULL, 6.00, 43.00, NULL, 'paid', 'Consectetur esse exercitationem autem qui maxime quibusdam. Maiores non consequatur tempore cum qui nihil in ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(25, '2022-06-20 15:45:59', '2022-10-08 02:00:26', 4, 5, 2, NULL, 8.00, 60.00, NULL, 'paid', 'Itaque sed commodi sapiente eum autem consequatur. Hic rerum nobis qui. Dignissimos consequatur magni commodi iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(26, '2022-08-25 18:15:35', '2022-10-08 02:00:26', 3, 5, 2, NULL, 10.00, 44.00, NULL, 'paid', 'In sit eos voluptatem quae dignissimos. Et quo vel nemo tenetur. Ea facilis quia ullam in cum. Sit non dolorum aliquid tempora. Ducimus magni asperiores a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(27, '2022-03-28 02:38:22', '2022-10-08 02:00:26', 4, 4, 2, NULL, 5.00, 71.00, NULL, 'paid', 'Nemo qui eos et enim sit. Amet vitae illum a qui eaque. Cumque aperiam ullam hic corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(28, '2021-12-23 14:51:55', '2022-10-08 02:00:26', 1, 5, 3, NULL, 6.00, 84.00, NULL, 'paid', 'Ut id vel quo qui. Voluptas ex pariatur magni soluta exercitationem molestiae. Est laborum quia molestias nobis quam dolores. Voluptates provident error qui et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(29, '2021-10-08 07:48:32', '2022-10-08 02:00:26', 5, 5, 2, NULL, 9.00, 34.00, NULL, 'paid', 'Exercitationem magni non sed nisi omnis sint dolorem. Enim excepturi omnis assumenda qui. Earum nobis excepturi molestiae minus aliquam voluptas non aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(30, '2022-02-07 13:11:00', '2022-10-08 02:00:26', 5, 5, 2, NULL, 5.00, 61.00, NULL, 'paid', 'Ullam saepe dolores reprehenderit. Dolor harum facere possimus sapiente doloribus culpa veniam. Quia assumenda quidem quas exercitationem temporibus consequatur. Et vel quo ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(31, '2022-07-13 21:56:03', '2022-10-08 02:00:26', 2, 5, 2, NULL, 7.00, 34.00, NULL, 'paid', 'Officiis eaque temporibus omnis quasi saepe. Possimus et modi eum et cumque dolores. Possimus aliquid aut quibusdam quae consequatur vel eius fugiat. Optio ipsa quaerat rerum omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(32, '2022-04-17 14:14:40', '2022-10-08 02:00:26', 5, 4, 3, NULL, 5.00, 81.00, NULL, 'paid', 'Est quia exercitationem laborum sapiente aut aut. Eaque labore dolores similique necessitatibus facilis. Deleniti eaque explicabo fugit et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(33, '2022-02-13 21:14:17', '2022-10-08 02:00:26', 3, 5, 3, NULL, 8.00, 48.00, NULL, 'paid', 'Numquam quia beatae possimus autem quos. Vero aut atque sed rerum quia. Doloribus sint adipisci qui sed. Quo delectus consequuntur et eos praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(34, '2022-01-15 04:34:05', '2022-10-08 02:00:26', 5, 4, 2, NULL, 6.00, 36.00, NULL, 'paid', 'Aut nemo et error quo suscipit debitis illum. Ut similique rem et autem eos esse nihil. Commodi porro reprehenderit doloribus in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(36, '2022-02-17 11:16:11', '2022-10-08 02:00:26', 1, 5, 3, NULL, 7.00, 74.00, NULL, 'paid', 'Consequatur dignissimos accusamus nam et expedita harum qui. Id deserunt maxime temporibus eum. Corporis animi perferendis in voluptatum error asperiores necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(37, '2022-08-16 19:55:10', '2022-10-08 02:00:26', 3, 5, 2, NULL, 8.00, 80.00, NULL, 'paid', 'Ut veniam reprehenderit quae voluptas sequi non. Adipisci repellat eligendi rerum ratione expedita. Ab omnis molestias distinctio ad blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(39, '2022-08-11 11:17:05', '2022-10-08 02:00:26', 2, 4, 3, NULL, 8.00, 82.00, NULL, 'paid', 'Debitis et non et quis. Hic quis voluptate esse nobis. Facere enim voluptates facilis nulla ea expedita harum. Voluptate aut inventore voluptatem libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(40, '2022-06-05 18:34:38', '2022-10-08 02:00:26', 3, 5, 3, NULL, 8.00, 52.00, NULL, 'paid', 'Quibusdam quis est dolor eum. Libero perferendis aut ea libero sed. Omnis at consequatur eaque quia distinctio dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(46, '2022-09-28 03:21:23', '2022-10-08 02:00:26', 1, 4, 3, NULL, 6.00, 58.00, NULL, 'paid', 'Et ut repellendus distinctio dolore quia recusandae non. Est error aut velit et. Sint sunt beatae quod quos. Expedita enim eos et est dolor. Vel impedit id tenetur molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(47, '2022-07-28 14:30:47', '2022-10-08 02:00:26', 3, 4, 2, NULL, 6.00, 78.00, NULL, 'paid', 'Sit sunt nihil sit architecto sunt atque inventore. Fuga voluptas ipsa consequatur odit magnam quia. Rerum esse distinctio consequatur voluptas corrupti in. Nemo dolores voluptatibus quo eum ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(49, '2022-01-22 21:30:27', '2022-10-08 02:00:26', 2, 5, 3, NULL, 5.00, 43.00, NULL, 'paid', 'Sunt excepturi dicta doloremque facilis autem consectetur dolore qui. Ullam omnis quia ad impedit explicabo perspiciatis. Et reiciendis fugit a in. Molestiae necessitatibus iusto autem ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(51, '2022-03-29 01:13:32', '2022-10-08 02:00:26', 2, 5, 2, NULL, 6.00, 83.00, NULL, 'paid', 'Architecto vel sequi sit quo. Qui vel ullam soluta dicta eum. Aut officia quod ducimus praesentium. Repellat facere quia est totam optio neque consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(52, '2022-09-03 20:55:21', '2022-10-08 02:00:26', 3, 5, 2, NULL, 7.00, 36.00, NULL, 'paid', 'Dignissimos itaque non quia. Sequi tenetur sit praesentium commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(53, '2022-04-04 23:57:38', '2022-10-08 02:00:26', 5, 5, 2, NULL, 8.00, 90.00, NULL, 'paid', 'Ab voluptas enim itaque exercitationem odio. Est aut sunt aut doloremque aliquid cupiditate commodi. Doloremque reprehenderit ipsa ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(54, '2022-06-03 07:29:35', '2022-10-08 02:00:26', 4, 5, 3, NULL, 7.00, 95.00, NULL, 'paid', 'Omnis ut quisquam debitis. Sapiente quam repellat sit veniam consequuntur. Consequatur et ut quisquam. Modi id sed labore nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(55, '2022-07-22 23:23:05', '2022-10-08 02:00:26', 4, 4, 2, NULL, 6.00, 88.00, NULL, 'paid', 'Ut quis unde odit consequuntur ut vitae sit est. Itaque eveniet optio assumenda fuga animi temporibus corrupti. Blanditiis eum corrupti qui qui. Omnis voluptas explicabo praesentium iste a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(56, '2022-01-13 07:51:35', '2022-10-08 02:00:26', 3, 5, 2, NULL, 6.00, 42.00, NULL, 'paid', 'Neque tenetur sed aut aut accusantium non. Magni sit ut ut aut veniam. Eligendi similique omnis repellendus in architecto excepturi. Vero corporis natus asperiores voluptatem nisi sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(57, '2022-03-02 18:24:48', '2022-10-08 02:00:26', 3, 5, 3, NULL, 10.00, 89.00, NULL, 'paid', 'Eos assumenda ducimus qui placeat ut perferendis. Voluptatem non reprehenderit maiores in dolorem. Dolore ad quidem quaerat consequatur incidunt id. Quia fugit aut iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(58, '2022-03-02 09:17:52', '2022-10-08 02:00:26', 2, 4, 2, NULL, 9.00, 69.00, NULL, 'paid', 'Nesciunt pariatur qui cum expedita id nulla sit. Architecto qui est iure et ratione illo. Qui nihil similique non reiciendis. Nisi quo culpa et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(59, '2022-01-20 05:17:57', '2022-10-08 02:00:26', 3, 5, 2, NULL, 6.00, 79.00, NULL, 'paid', 'Totam aperiam temporibus in provident dicta. Odit incidunt omnis et. Dolore omnis dolorum soluta nihil pariatur voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(60, '2022-06-12 21:56:07', '2022-10-08 02:00:26', 1, 5, 3, NULL, 10.00, 63.00, NULL, 'paid', 'Libero quas ut voluptatem necessitatibus blanditiis et. Nobis ut temporibus qui. Perspiciatis doloribus aliquam est soluta illum dolor. Occaecati eos excepturi recusandae earum voluptatem delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(61, '2022-07-19 04:11:24', '2022-10-08 02:00:26', 1, 5, 3, NULL, 8.00, 35.00, NULL, 'paid', 'Doloribus mollitia tempore voluptates corporis. Incidunt eveniet enim aliquid cum eos sit magnam. Est et quaerat maxime rem dolores adipisci. Blanditiis facere quia eum aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(62, '2022-05-19 15:29:53', '2022-10-08 02:00:26', 5, 5, 3, NULL, 7.00, 63.00, NULL, 'paid', 'Dolorem sequi blanditiis vel voluptates modi quidem eligendi. Aut unde et eum cupiditate ut in laudantium. Error possimus voluptatem corrupti possimus eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(63, '2022-08-02 14:44:05', '2022-10-08 02:00:26', 5, 5, 2, NULL, 9.00, 67.00, NULL, 'paid', 'Veritatis ab voluptatibus laboriosam sunt enim quisquam. Autem architecto sunt sunt praesentium ea deserunt similique. Vel dolore similique autem animi ut quia illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(64, '2022-05-12 09:02:58', '2022-10-08 02:00:26', 2, 4, 2, NULL, 7.00, 49.00, NULL, 'paid', 'Dolor et dicta aliquid numquam est et laboriosam. Animi odit quis qui autem voluptatem. Minus est in debitis vel qui itaque et asperiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(66, '2022-03-15 07:35:00', '2022-10-08 02:00:26', 5, 4, 3, NULL, 7.00, 90.00, NULL, 'paid', 'Sunt ut mollitia et ratione non. Corrupti a eos fugit dicta. Assumenda rerum quae et placeat qui quibusdam repellendus. Quisquam natus eligendi non nemo quae omnis commodi eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(67, '2022-08-02 13:06:14', '2022-10-08 02:00:26', 5, 5, 3, NULL, 8.00, 34.00, NULL, 'paid', 'Inventore atque dicta reiciendis illum id. Assumenda pariatur consequuntur molestiae nihil cumque explicabo. Nulla qui qui nostrum id alias dolorum illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(68, '2022-04-11 13:36:21', '2022-10-08 02:00:26', 4, 5, 2, NULL, 10.00, 74.00, NULL, 'paid', 'Qui veniam ab aspernatur quis perspiciatis asperiores vero aut. Autem incidunt et rerum quibusdam. Corrupti sed maxime dolore unde dolor dolores exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(69, '2022-03-18 01:44:58', '2022-10-08 02:00:26', 2, 5, 3, NULL, 9.00, 41.00, NULL, 'paid', 'Temporibus odit ab atque eveniet eum. Corporis maxime laborum esse. Velit quam quis unde qui qui est. Voluptas quia similique sed omnis consequatur quo occaecati adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(71, '2021-11-22 15:17:55', '2022-10-08 02:00:26', 5, 4, 3, NULL, 10.00, 39.00, NULL, 'paid', 'Sunt corporis placeat vel omnis. Consequatur ab culpa et est est. Illum ut reprehenderit odio sed hic exercitationem natus iure. Commodi magni incidunt nostrum beatae quos adipisci vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(73, '2022-06-06 14:49:18', '2022-10-08 02:00:26', 1, 4, 3, NULL, 6.00, 53.00, NULL, 'paid', 'Qui et consequuntur praesentium est eum placeat. Sint molestiae amet assumenda in. Tenetur expedita non non accusantium sint et. Cumque temporibus est ut pariatur sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(75, '2022-08-28 12:21:30', '2022-10-08 02:00:26', 4, 5, 3, NULL, 10.00, 42.00, NULL, 'paid', 'Eligendi et nemo ea similique pariatur nemo. Et magnam quia dolores error. Facere aspernatur rem quae aut voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(76, '2022-03-31 07:19:47', '2022-10-08 02:00:26', 1, 4, 2, NULL, 10.00, 81.00, NULL, 'paid', 'Nobis occaecati voluptatibus rerum non quisquam. Architecto aut adipisci eaque earum harum qui sit. Perferendis quasi voluptates voluptas iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(77, '2022-03-17 00:16:51', '2022-10-08 02:00:26', 1, 5, 2, NULL, 5.00, 59.00, NULL, 'paid', 'Consequatur et minima omnis facere inventore porro temporibus. Quia vel esse quos quos impedit et quia. Corporis quo rerum eius quia error et earum. Ullam aperiam consequatur vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(78, '2022-01-08 00:21:24', '2022-10-08 02:00:26', 4, 4, 3, NULL, 5.00, 82.00, NULL, 'paid', 'Nam laborum molestiae et eaque. Aliquam earum voluptatem ut excepturi quas est et. Aut veniam earum placeat. Minima enim dolor labore autem delectus error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(79, '2022-01-14 22:27:18', '2022-10-08 02:00:26', 1, 5, 2, NULL, 6.00, 77.00, NULL, 'paid', 'Vel et explicabo explicabo consequatur. Sequi corporis aut dolores est dolore beatae. Quo facere animi voluptatem velit molestias sit ipsum. Maiores qui labore qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(80, '2022-01-27 04:42:48', '2022-10-08 02:00:26', 4, 5, 3, NULL, 9.00, 63.00, NULL, 'paid', 'Et rem qui aut aperiam ea quis. Mollitia corporis est vel et fuga est dolorem laborum. Error modi aliquam odio ut rerum. Optio omnis nihil rerum magnam voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(82, '2021-11-11 11:01:01', '2022-10-08 02:00:26', 4, 4, 2, NULL, 8.00, 30.00, NULL, 'paid', 'Nemo eum officia reprehenderit non aut enim. Aut et laboriosam sint ut. Corrupti culpa autem dolores provident eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(84, '2022-08-14 22:59:54', '2022-10-08 02:00:26', 5, 4, 3, NULL, 7.00, 59.00, NULL, 'paid', 'Quos ut ab quam recusandae vero. Quae sed iure vitae voluptates. Ullam eum suscipit dolores ea. Perspiciatis numquam voluptas autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(85, '2021-11-17 01:07:32', '2022-10-08 02:00:26', 5, 5, 2, NULL, 8.00, 80.00, NULL, 'paid', 'Inventore et et facere qui aut sunt et sit. Dolore modi iusto tempore aliquid in officiis. Repudiandae dolorem autem et molestias. Dolor labore ipsum quia tempora necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(88, '2021-10-18 02:41:00', '2022-10-08 02:00:26', 4, 4, 3, NULL, 9.00, 91.00, NULL, 'paid', 'Et veritatis impedit ut aut ea. Maiores tenetur labore dolorem officiis ut quam. Suscipit culpa eos neque architecto aut repellendus ut. Quia aliquam nam in distinctio labore rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(89, '2022-04-14 19:22:12', '2022-10-08 02:00:26', 1, 5, 2, NULL, 6.00, 75.00, NULL, 'paid', 'Sed sit ipsam impedit voluptate rerum perferendis doloribus. Consequatur mollitia aut reprehenderit repellat vero omnis quis voluptatem. Odio est officiis aspernatur adipisci vel autem omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(90, '2022-07-22 01:04:34', '2022-10-08 02:00:26', 5, 5, 3, NULL, 5.00, 91.00, NULL, 'paid', 'Ex hic et assumenda sint dolores dolor eligendi. Inventore qui accusantium possimus numquam veniam. Reiciendis dolores voluptatibus aperiam ratione quia assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(92, '2021-10-28 06:49:28', '2022-10-08 02:00:26', 2, 4, 3, NULL, 8.00, 68.00, NULL, 'paid', 'Quis quo tenetur delectus ut sunt exercitationem odit. Est labore nulla eos quisquam fugit quasi. Voluptates nisi est fugiat a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(93, '2022-02-06 10:22:45', '2022-10-08 02:00:26', 1, 4, 3, NULL, 5.00, 42.00, NULL, 'paid', 'Recusandae similique dicta adipisci aliquid unde asperiores. Neque velit architecto aperiam a quod aut dolor. Repellat culpa pariatur et adipisci excepturi natus harum dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(94, '2022-04-07 04:34:39', '2022-10-08 02:00:26', 5, 4, 3, NULL, 6.00, 55.00, NULL, 'paid', 'Qui aspernatur laudantium non dolorem. Voluptas expedita sunt non aut. Nisi ex harum optio eos doloremque culpa quas et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(95, '2022-01-31 21:39:38', '2022-10-08 02:00:26', 2, 4, 2, NULL, 5.00, 50.00, NULL, 'paid', 'Non velit quas officia dolorum iusto voluptatibus. Reiciendis deleniti a minus culpa nostrum. Aliquid dolores est officiis. Minima consequuntur error assumenda quia asperiores itaque delectus non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(97, '2022-08-10 20:46:40', '2022-10-08 02:00:26', 1, 5, 3, NULL, 8.00, 54.00, NULL, 'paid', 'Beatae fuga corrupti exercitationem id quo. Maiores nisi nemo ut. Occaecati ut quia autem. Veritatis eligendi fugiat in ad aperiam. Nulla sit facere qui debitis voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(98, '2022-08-23 15:09:39', '2022-10-08 02:00:26', 3, 4, 3, NULL, 8.00, 31.00, NULL, 'paid', 'Voluptatibus qui eos molestiae et nihil minus exercitationem. Animi commodi et voluptate ut aliquid inventore. Sed reprehenderit placeat cum eos eos nihil ipsam non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(99, '2022-03-29 09:09:15', '2022-10-08 02:00:26', 4, 4, 3, NULL, 8.00, 37.00, NULL, 'paid', 'Voluptatem ipsum modi ratione corrupti maiores. Reprehenderit nam assumenda quo nihil voluptatem. Eligendi quis delectus velit non voluptates tenetur ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(100, '2022-04-13 07:01:39', '2022-10-08 02:00:26', 1, 4, 3, NULL, 7.00, 87.00, NULL, 'paid', 'Vel distinctio sit consequatur praesentium saepe omnis facilis. Architecto consequatur provident sit autem. Commodi eos in culpa esse accusantium accusamus voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(102, '2022-01-18 18:26:22', '2022-10-08 02:00:26', 3, 5, 3, NULL, 6.00, 30.00, NULL, 'paid', 'Alias placeat ab maiores laborum esse. Rerum voluptas neque dolorum vero illum quasi eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(105, '2021-12-25 12:56:00', '2022-10-08 02:00:26', 1, 5, 3, NULL, 8.00, 52.00, NULL, 'paid', 'Voluptates repudiandae placeat sunt vel deserunt sapiente. Ipsum ab optio eius nemo. Ipsum molestias delectus voluptatum sunt eos deserunt commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(107, '2022-08-03 20:47:35', '2022-10-08 02:00:26', 3, 4, 3, NULL, 7.00, 33.00, NULL, 'paid', 'Occaecati velit odit earum eum. Et sunt nam assumenda. Enim dignissimos aut neque neque consequatur iusto. Quam at et ullam a tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(109, '2021-11-07 05:04:21', '2022-10-08 02:00:26', 4, 5, 3, NULL, 7.00, 37.00, NULL, 'paid', 'Vitae fugit non error maiores laudantium exercitationem. At non quo illo aut. Officiis ipsam cupiditate aut eligendi aut quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(110, '2022-01-06 15:14:27', '2022-10-08 02:00:26', 5, 4, 3, NULL, 8.00, 95.00, NULL, 'paid', 'Voluptatum aut ipsa qui delectus consequatur inventore. Vitae dolorem sit animi ut quis eum eligendi est. Dolores eum a molestias cumque ipsam ad. Cum ratione alias esse minus maiores ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(113, '2022-01-13 04:36:08', '2022-10-08 02:00:26', 3, 5, 2, NULL, 7.00, 68.00, NULL, 'paid', 'Molestias quisquam dolorem quas totam ea. Non similique possimus voluptatum nesciunt aut debitis quia dolore. Facere id consequatur incidunt tenetur corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(114, '2022-07-20 18:38:22', '2022-10-08 02:00:26', 1, 5, 3, NULL, 6.00, 76.00, NULL, 'paid', 'Et et voluptatibus optio sunt neque qui. Necessitatibus ab dolor blanditiis alias consequuntur veniam est. Earum quae et harum. Sed rerum provident vero et assumenda odio eos fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(115, '2021-12-11 08:16:40', '2022-10-08 02:00:26', 3, 5, 2, NULL, 9.00, 85.00, NULL, 'paid', 'Omnis natus dolore sed rem omnis et nesciunt aut. Nihil qui est ipsa sint quia ad velit inventore. Adipisci est quae eius sapiente ut. Asperiores provident nostrum sed sunt aliquam voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(116, '2021-12-27 11:45:38', '2022-10-08 02:00:26', 5, 5, 2, NULL, 7.00, 32.00, NULL, 'paid', 'Aliquid quia aliquid aut est quaerat mollitia. Nam incidunt expedita qui aut et. Sit similique sed eius corrupti minus distinctio hic.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(117, '2022-01-13 05:36:03', '2022-10-08 02:00:26', 2, 5, 3, NULL, 9.00, 30.00, NULL, 'paid', 'Beatae ea consequuntur quisquam ea reiciendis quia. Aut et perspiciatis autem mollitia cumque. Sapiente sint molestiae libero qui minus distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(119, '2022-06-18 07:06:42', '2022-10-08 02:00:26', 5, 5, 2, NULL, 9.00, 100.00, NULL, 'paid', 'Et ullam possimus laborum quaerat ut. Maiores nemo consectetur atque sit. Soluta voluptatem aut iste fuga blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(120, '2022-05-03 11:04:46', '2022-10-08 02:00:26', 1, 4, 3, NULL, 10.00, 39.00, NULL, 'paid', 'Vel eveniet tempora ipsam qui quia accusamus dolorem. Ipsam necessitatibus tempore perferendis sit quaerat. Inventore error blanditiis quis assumenda rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(122, '2022-08-28 11:53:27', '2022-10-08 02:00:26', 3, 5, 3, NULL, 5.00, 60.00, NULL, 'paid', 'Quasi odit rem enim quas laudantium voluptatem. Nulla quia at cupiditate et ut. Et ad ad earum sunt aut alias. Repellat facilis eligendi distinctio eos tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(123, '2022-04-04 19:59:55', '2022-10-08 02:00:26', 4, 4, 3, NULL, 8.00, 44.00, NULL, 'paid', 'Nam sed molestias vel. Aut sunt cupiditate repudiandae qui aut velit facere. Dolores omnis quibusdam doloremque et corrupti aut. Et molestiae porro architecto occaecati in aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(124, '2022-09-05 10:47:30', '2022-10-08 02:00:26', 1, 4, 3, NULL, 6.00, 70.00, NULL, 'paid', 'Soluta et quidem totam sapiente voluptatem culpa. Nostrum est delectus hic quo excepturi vel. Qui impedit eius maxime. Exercitationem fuga vel illum error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(125, '2022-04-18 00:27:48', '2022-10-08 02:00:26', 4, 4, 3, NULL, 7.00, 48.00, NULL, 'paid', 'Est accusantium dolorum assumenda consequatur praesentium harum. Laborum asperiores dolores est accusantium accusantium et hic. Et nemo voluptatem nemo consequatur quos itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(127, '2022-07-11 21:41:09', '2022-10-08 02:00:26', 1, 5, 3, NULL, 5.00, 75.00, NULL, 'paid', 'Id officiis in necessitatibus voluptatem. Qui aut vitae qui qui suscipit et cum. Non occaecati quia consequatur aspernatur aut quis. Animi porro corporis sint deserunt id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(128, '2022-02-20 05:19:28', '2022-10-08 02:00:26', 5, 5, 2, NULL, 6.00, 72.00, NULL, 'paid', 'Distinctio quo maiores quos nostrum voluptate. Eligendi veniam provident consequatur aut non mollitia est. Dolorem vitae et voluptatem. Et ut sunt explicabo non reprehenderit architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(134, '2022-07-06 12:46:01', '2022-10-08 02:00:26', 1, 4, 3, NULL, 7.00, 61.00, NULL, 'paid', 'Magni dolor temporibus a qui excepturi excepturi. Corrupti quam consequuntur optio quod. Nisi quod quae et quidem eum rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(135, '2022-04-29 06:12:00', '2022-10-08 02:00:26', 2, 4, 3, NULL, 5.00, 37.00, NULL, 'paid', 'Minima illum aspernatur aut odio ipsa. Autem quibusdam dolorem eligendi. Praesentium ipsum harum neque aut reprehenderit sint sint omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(136, '2022-08-31 16:09:38', '2022-10-08 02:00:26', 4, 4, 3, NULL, 10.00, 90.00, NULL, 'paid', 'Ducimus ipsa voluptatem nesciunt voluptate. Perspiciatis aut officiis nulla voluptatem. Dolores voluptas distinctio voluptatem laboriosam. Quibusdam odit aut assumenda ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(137, '2022-02-14 09:58:03', '2022-10-08 02:00:26', 4, 4, 3, NULL, 9.00, 71.00, NULL, 'paid', 'Quia sint et reprehenderit facere. Mollitia incidunt assumenda suscipit sed nemo voluptatem eum animi. Nesciunt id eligendi exercitationem et aut dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(138, '2022-06-05 06:34:18', '2022-10-08 02:00:26', 4, 4, 2, NULL, 10.00, 78.00, NULL, 'paid', 'Debitis id qui cupiditate quis mollitia aperiam. Sed porro laboriosam fugiat temporibus illum. Voluptates quisquam aut consectetur amet distinctio perferendis. Dolorem dignissimos ducimus asperiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(141, '2022-01-08 12:34:07', '2022-10-08 02:00:26', 2, 5, 2, NULL, 5.00, 42.00, NULL, 'paid', 'Odit quasi inventore totam neque ut laudantium quia dignissimos. Ut dolor veritatis et dolores tenetur qui veritatis. Sit enim sequi libero aut iusto incidunt et in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(142, '2022-02-08 07:15:29', '2022-10-08 02:00:26', 3, 4, 3, NULL, 7.00, 76.00, NULL, 'paid', 'Ducimus sint sit tempore esse quia. Voluptatem reiciendis quisquam qui consectetur eum est qui. Autem ea porro molestiae in nobis perferendis. Aut debitis laudantium iure saepe nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(144, '2021-10-15 14:04:03', '2022-10-08 02:00:26', 1, 4, 2, NULL, 8.00, 98.00, NULL, 'paid', 'Voluptas quis consequatur laudantium omnis pariatur assumenda. Aut qui rem eius laudantium quo odit id. Quibusdam excepturi perferendis placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(147, '2021-10-31 07:46:03', '2022-10-08 02:00:26', 3, 5, 3, NULL, 6.00, 65.00, NULL, 'paid', 'Aut animi accusamus debitis natus explicabo. Dolorem at commodi omnis natus. Qui excepturi consequatur eveniet consequuntur aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(148, '2022-06-25 18:22:49', '2022-10-08 02:00:26', 1, 4, 2, NULL, 7.00, 56.00, NULL, 'paid', 'Et et natus vel dolor voluptatem aut eaque. Et hic iste facilis et sit impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(149, '2022-01-21 01:06:58', '2022-10-08 02:00:26', 3, 5, 3, NULL, 10.00, 89.00, NULL, 'paid', 'Necessitatibus corporis laborum voluptas quidem. Mollitia ut delectus tempora cupiditate. Facere quis molestias optio sequi velit a. Natus quo aut corrupti eum quas dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(150, '2022-01-31 14:37:23', '2022-10-08 02:00:26', 5, 4, 2, NULL, 5.00, 97.00, NULL, 'paid', 'Pariatur numquam nemo atque aspernatur id quia omnis. Iure maxime illo ut architecto aut ut sed autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(152, '2022-09-29 11:32:45', '2022-10-08 02:00:26', 1, 5, 3, NULL, 7.00, 86.00, NULL, 'paid', 'Numquam ea aperiam unde. Voluptate ut officiis nulla dolore aut. Omnis facere aut earum assumenda at magni magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(153, '2022-08-23 20:03:38', '2022-10-08 02:00:26', 1, 4, 2, NULL, 6.00, 74.00, NULL, 'paid', 'Ex qui commodi distinctio unde. Possimus omnis quia vel autem et dicta odio. Error eum perferendis perferendis iusto qui suscipit harum. Ut assumenda voluptates non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(155, '2022-05-17 14:27:41', '2022-10-08 02:00:26', 5, 5, 2, NULL, 7.00, 52.00, NULL, 'paid', 'Doloribus atque cupiditate necessitatibus sapiente est. Laborum sint nesciunt voluptatem sit. Maxime incidunt et ea eaque dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(157, '2022-07-04 18:58:15', '2022-10-08 02:00:26', 3, 4, 2, NULL, 10.00, 73.00, NULL, 'paid', 'Suscipit harum error quasi. Aut minima reiciendis voluptatem consequatur ab. Quia in et explicabo et. Dolore dolores omnis quo quas. Eligendi culpa enim occaecati voluptas iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(158, '2021-12-11 10:15:15', '2022-10-08 02:00:26', 3, 4, 2, NULL, 8.00, 89.00, NULL, 'paid', 'Dolore expedita repellat et iste facere veniam. Sint dolor provident repudiandae sit omnis doloremque ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(159, '2021-12-30 13:26:00', '2022-10-08 02:00:26', 2, 4, 2, NULL, 9.00, 53.00, NULL, 'paid', 'Architecto voluptatem voluptatibus temporibus. Provident commodi id doloremque similique aut rerum autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(160, '2022-07-26 15:53:28', '2022-10-08 02:00:26', 4, 5, 3, NULL, 8.00, 44.00, NULL, 'paid', 'Et optio et aut voluptatem sunt et. Dicta libero sed natus quia sapiente. Voluptatem aut deleniti qui sed nihil natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(161, '2022-01-29 12:11:58', '2022-10-08 02:00:26', 4, 4, 3, NULL, 5.00, 40.00, NULL, 'paid', 'Exercitationem eum labore numquam repellat sequi molestias. Esse distinctio non vitae nulla adipisci et fuga. Nulla est ut necessitatibus voluptas excepturi ab. Ullam dolores quis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(162, '2022-07-03 10:15:26', '2022-10-08 02:00:26', 4, 4, 3, NULL, 8.00, 89.00, NULL, 'paid', 'Illum molestiae velit veniam porro ad nesciunt. Maiores sit odio consequatur et dolorum. Delectus ab pariatur et ratione dolores id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(165, '2021-12-17 15:45:40', '2022-10-08 02:00:26', 1, 5, 3, NULL, 8.00, 90.00, NULL, 'paid', 'Laudantium et et beatae omnis similique molestias error. Et id rerum laudantium enim minima. Voluptatem a sit aliquid tempora omnis cum. Molestiae nam adipisci deserunt cum culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(167, '2022-08-07 11:41:46', '2022-10-08 02:00:26', 5, 4, 2, NULL, 10.00, 40.00, NULL, 'paid', 'Cumque omnis sequi quo eveniet. Aliquid veritatis sit ab ad perspiciatis voluptate. Autem illo aut minus quisquam reiciendis cumque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(168, '2022-02-04 11:54:52', '2022-10-08 02:00:26', 2, 4, 3, NULL, 10.00, 69.00, NULL, 'paid', 'Harum et voluptas quo ut vitae numquam quia iusto. Vel amet voluptatum consequuntur. Tempora inventore modi nihil illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(171, '2021-12-08 10:48:51', '2022-10-08 02:00:26', 4, 5, 3, NULL, 5.00, 100.00, NULL, 'paid', 'Officia sit nihil quidem inventore. Error amet voluptatem consequatur. Quae quae illo accusantium asperiores possimus. Inventore et expedita non ab ducimus. Non et non vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(173, '2022-07-01 17:14:05', '2022-10-08 02:00:26', 1, 4, 3, NULL, 7.00, 52.00, NULL, 'paid', 'Quisquam ut libero ut. Provident eaque similique consequatur dignissimos voluptatibus odio aut quis. Laudantium quis iste rerum perferendis illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(174, '2021-11-21 12:22:05', '2022-10-08 02:00:26', 5, 4, 2, NULL, 5.00, 58.00, NULL, 'paid', 'Nostrum libero et perferendis est expedita consequuntur quo. Odit officiis ducimus odio error hic voluptatibus. Ipsa architecto dolore possimus saepe eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(175, '2022-04-21 19:53:26', '2022-10-08 02:00:26', 3, 5, 3, NULL, 8.00, 56.00, NULL, 'paid', 'Sit ut blanditiis voluptatem rerum voluptatum nihil. Et molestiae accusamus ea eum. In numquam et perferendis consequuntur est. Consequuntur et quia et quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(176, '2022-01-11 14:40:49', '2022-10-08 02:00:26', 5, 5, 3, NULL, 7.00, 45.00, NULL, 'paid', 'Autem ea nemo voluptate. Quasi eaque quis sunt porro perspiciatis molestiae. Perferendis eaque aut et sed rerum placeat asperiores. Ratione quia aut quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(177, '2022-06-05 05:31:02', '2022-10-08 02:00:26', 1, 4, 3, NULL, 8.00, 87.00, NULL, 'paid', 'Facilis occaecati odit sit. Numquam maiores et repudiandae dolorem. Sed odio et sed consequatur. Aspernatur architecto ad aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(178, '2022-07-21 17:57:29', '2022-10-08 02:00:26', 3, 5, 2, NULL, 5.00, 77.00, NULL, 'paid', 'Et temporibus minima temporibus aut modi repudiandae pariatur. Rerum rem velit necessitatibus perferendis consequatur. Sapiente numquam aut rerum est quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(179, '2022-03-05 08:24:25', '2022-10-08 02:00:26', 2, 5, 3, NULL, 5.00, 48.00, NULL, 'paid', 'Numquam est tempore cumque vel doloremque aperiam voluptas. Rem fugit voluptatem amet consequatur molestiae velit. Dolorem nisi aut excepturi commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(180, '2022-08-13 08:51:32', '2022-10-08 02:00:26', 3, 5, 3, NULL, 8.00, 65.00, NULL, 'paid', 'Eum sit dolor autem voluptatem. Similique praesentium et nulla quaerat odio. Quos nobis nesciunt consequatur ut aut tenetur earum. Aut qui eius provident dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(181, '2022-03-04 05:55:21', '2022-10-08 02:00:26', 4, 4, 2, NULL, 8.00, 78.00, NULL, 'paid', 'Pariatur consectetur aut adipisci quia. Autem est labore ut. Corporis placeat nihil vel iure praesentium laboriosam. Enim dolorem harum numquam optio veritatis sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(182, '2022-05-31 10:13:39', '2022-10-08 02:00:26', 4, 4, 2, NULL, 7.00, 30.00, NULL, 'paid', 'Laborum dolor aperiam ut quia. Voluptatem rerum ab harum aperiam. Dolores beatae iusto vitae facilis molestiae commodi. Et in voluptatem in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(183, '2022-10-05 00:28:46', '2022-10-08 02:00:26', 5, 4, 2, NULL, 7.00, 83.00, NULL, 'paid', 'Vel sapiente suscipit itaque consequatur suscipit voluptatem. Sequi unde et quidem ut ut atque fuga. Unde cupiditate deserunt eum sed ipsam qui et. Non laudantium qui iusto sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(184, '2021-11-07 22:06:06', '2022-10-08 02:00:26', 2, 5, 3, NULL, 9.00, 90.00, NULL, 'paid', 'Voluptas deleniti eveniet consequatur corporis similique esse quia. Qui aut atque accusamus atque. Laudantium ut ab velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(188, '2022-01-31 10:28:19', '2022-10-08 02:00:26', 5, 4, 3, NULL, 10.00, 84.00, NULL, 'paid', 'Qui sit voluptas quaerat saepe commodi. Qui maxime inventore reiciendis. Enim tenetur doloribus mollitia culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(189, '2021-10-23 22:27:13', '2022-10-08 02:00:26', 3, 5, 2, NULL, 10.00, 61.00, NULL, 'paid', 'Provident consectetur quibusdam officia. Omnis veniam cupiditate est. Voluptatem optio in sint voluptates et quibusdam quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(190, '2022-01-21 16:32:03', '2022-10-08 02:00:26', 4, 5, 3, NULL, 6.00, 51.00, NULL, 'paid', 'Quam omnis animi nihil iste velit architecto. Eveniet et cum et velit incidunt. Asperiores in est aut illo ad.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(191, '2021-11-18 07:47:41', '2022-10-08 02:00:26', 2, 5, 3, NULL, 10.00, 59.00, NULL, 'paid', 'Doloremque quos saepe ut culpa officia et neque. Exercitationem facilis cum reiciendis vitae blanditiis. Laudantium magnam et illum incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(192, '2022-10-01 12:51:36', '2022-10-08 02:00:26', 1, 5, 3, NULL, 7.00, 89.00, NULL, 'paid', 'Numquam enim velit non veritatis dignissimos maxime. At dolores fugiat illo recusandae atque fugit. Hic aut doloribus quo tempora vel quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(193, '2021-10-29 00:02:53', '2022-10-08 02:00:26', 5, 4, 2, NULL, 10.00, 75.00, NULL, 'paid', 'Aut at quis neque sit voluptate sit consectetur. Vel dolores maiores quos quis. Deleniti repellendus et soluta aut aspernatur ut sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(194, '2021-12-19 08:27:54', '2022-10-08 02:00:26', 3, 5, 2, NULL, 10.00, 30.00, NULL, 'paid', 'Sequi deserunt amet ex quia aliquam quis sit. Quia molestias nam nisi quis quia est tenetur. Recusandae in dolor alias ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(196, '2022-09-29 13:49:46', '2022-10-08 02:00:26', 2, 4, 2, NULL, 9.00, 80.00, NULL, 'paid', 'Magnam ea earum nemo. Doloribus velit enim voluptatem aut harum dolorum. Soluta neque similique assumenda ad cupiditate est molestias. Iusto ut aut eum qui debitis rerum nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(197, '2022-01-10 15:27:18', '2022-10-08 02:00:26', 5, 5, 3, NULL, 8.00, 87.00, NULL, 'paid', 'Ut quam dolores explicabo esse consequuntur aut sed velit. At molestiae quia magni itaque. Ullam magnam temporibus corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(198, '2022-01-15 14:56:15', '2022-10-08 02:00:26', 2, 5, 2, NULL, 9.00, 46.00, NULL, 'paid', 'Id et similique facilis ea odit minus. Reprehenderit et est reprehenderit consequatur eum in quisquam. Et fuga qui harum placeat repellat ut itaque doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(199, '2021-12-31 22:46:45', '2022-10-08 02:00:26', 3, 4, 3, NULL, 6.00, 42.00, NULL, 'paid', 'Ut quisquam voluptates quia in repellat deleniti. Architecto dolore aspernatur rerum nobis quae vero assumenda. Ut impedit aperiam molestiae qui asperiores illo cum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(200, '2022-08-31 03:29:46', '2022-10-08 02:00:26', 1, 5, 2, NULL, 5.00, 88.00, NULL, 'paid', 'Dolor tenetur ducimus aut commodi nisi eligendi. Voluptatem deserunt enim aspernatur et illo aspernatur sit. Aut harum cumque suscipit. Assumenda fuga eaque officiis voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(201, '2021-12-23 02:17:03', '2022-10-08 02:00:26', 2, 5, 3, NULL, 6.00, 36.00, NULL, 'paid', 'Repudiandae qui omnis quia ipsum. Et quas labore commodi saepe. Aliquid dolor ut molestiae illo a. Distinctio nobis consequatur consequatur ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(202, '2021-12-13 08:58:42', '2022-10-08 02:00:26', 4, 5, 2, NULL, 7.00, 51.00, NULL, 'paid', 'Sit aut ipsum dicta repellat molestias eum dolor commodi. Qui amet illo aspernatur blanditiis dolorum asperiores nemo. Omnis nisi qui saepe eos maiores. Aut hic repudiandae dolor et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(203, '2022-08-03 05:04:17', '2022-10-08 02:00:26', 3, 4, 3, NULL, 9.00, 99.00, NULL, 'paid', 'Veniam aut expedita hic odio. Commodi unde nulla libero dolores ullam illum aut commodi. Aut et atque eos rerum facilis ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(204, '2022-01-07 05:41:45', '2022-10-08 02:00:26', 3, 5, 3, NULL, 10.00, 55.00, NULL, 'paid', 'Necessitatibus possimus et quidem consequatur velit fugiat quos. Asperiores in aliquid quam atque voluptas. Sint et accusantium ut quaerat ab. Sequi ab aliquam et qui doloribus ullam est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(205, '2022-05-09 04:44:28', '2022-10-08 02:00:26', 3, 5, 3, NULL, 5.00, 75.00, NULL, 'paid', 'Placeat ut totam ut aut delectus et. Sint aut deleniti harum. Ut et ab quae eveniet id quis cumque. Sit tempore quis dolor at velit accusamus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(209, '2022-04-24 11:31:15', '2022-10-08 02:00:26', 4, 4, 3, NULL, 6.00, 54.00, NULL, 'paid', 'Quis ut id sed nemo soluta quia consequatur animi. Enim voluptas consectetur consequatur aut et omnis. Corrupti nisi et eius molestias impedit. Praesentium nisi qui ut tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(211, '2022-08-03 13:15:10', '2022-10-08 02:00:26', 4, 4, 2, NULL, 7.00, 39.00, NULL, 'paid', 'Perspiciatis natus iusto voluptas eligendi. Aperiam qui quia dolor qui quam reiciendis qui laboriosam. Aliquid dolorem dolore ea sed. Provident qui consectetur omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(213, '2022-07-02 05:55:59', '2022-10-08 02:00:26', 3, 5, 2, NULL, 7.00, 53.00, NULL, 'paid', 'Suscipit quas neque vel ut. Perferendis maiores totam sit voluptate enim natus corporis animi. Voluptatibus tenetur iste tenetur omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(214, '2022-06-03 10:00:09', '2022-10-08 02:00:26', 3, 4, 3, NULL, 8.00, 91.00, NULL, 'paid', 'Perspiciatis ea quidem odio eveniet eum. Qui placeat provident animi unde sint culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(216, '2022-09-22 14:46:16', '2022-10-08 02:00:26', 4, 5, 2, NULL, 9.00, 61.00, NULL, 'paid', 'Doloremque ad et ad ipsum qui. Eum praesentium nulla voluptatum. Aspernatur laborum impedit labore voluptatem est et facilis. Error provident laboriosam autem voluptatem autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(217, '2022-04-18 06:44:06', '2022-10-08 02:00:26', 2, 5, 3, NULL, 8.00, 67.00, NULL, 'paid', 'Fugit repellendus sed dolorum eos est minima voluptatem nisi. Quos id repellat eum et in et blanditiis. Autem omnis porro et in et quae qui illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(218, '2022-04-03 06:44:44', '2022-10-08 02:00:26', 1, 5, 2, NULL, 9.00, 38.00, NULL, 'paid', 'Fugiat dolorum dicta in sequi ut. Unde odit qui dolores totam quis maxime hic iste. Exercitationem dolorem praesentium dolores et corrupti inventore qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(224, '2022-07-28 10:03:08', '2022-10-08 02:00:26', 2, 5, 3, NULL, 8.00, 37.00, NULL, 'paid', 'Harum aspernatur sed aut illum ipsa. Quis voluptas eos ut doloremque suscipit. In est voluptatibus sequi itaque. Perferendis tempore accusantium dolores eaque. Autem praesentium voluptas est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(225, '2022-09-08 03:36:33', '2022-10-08 02:00:26', 3, 5, 2, NULL, 8.00, 82.00, NULL, 'paid', 'Rerum eum odit deleniti soluta voluptas quibusdam. Eum quisquam aspernatur aut dolor iste. Eos tenetur earum nesciunt sit saepe. Ea enim sunt voluptates quisquam occaecati quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(226, '2022-03-04 10:48:20', '2022-10-08 02:00:26', 5, 4, 2, NULL, 5.00, 75.00, NULL, 'paid', 'Atque suscipit aut sit a est dolorem qui. Et earum debitis ipsum nihil alias. Perferendis cupiditate laboriosam laudantium minima dicta sit itaque sit. Vel optio impedit eius explicabo sint ut aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(227, '2022-04-24 22:26:57', '2022-10-08 02:00:26', 4, 5, 3, NULL, 7.00, 39.00, NULL, 'paid', 'Saepe exercitationem animi odit harum distinctio rem. Porro nesciunt autem dolorem quaerat qui. Facilis beatae dicta rerum. Porro nesciunt vel ipsum sit consequatur iusto quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(228, '2022-08-06 11:53:04', '2022-10-08 02:00:26', 4, 4, 2, NULL, 7.00, 87.00, NULL, 'paid', 'Eos illum natus quibusdam sint excepturi unde et. Et expedita sequi blanditiis inventore consequuntur voluptatem in. Natus eum quam nostrum eveniet quas eaque. Nihil omnis assumenda fuga et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(229, '2022-09-02 21:45:29', '2022-10-08 02:00:26', 3, 5, 2, NULL, 8.00, 48.00, NULL, 'paid', 'Suscipit iusto veniam voluptatum aspernatur. Voluptatem ducimus ratione et quo voluptatibus sapiente neque velit. Aliquam qui earum dolores inventore libero sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(230, '2022-05-23 08:20:31', '2022-10-08 02:00:26', 4, 5, 3, NULL, 10.00, 45.00, NULL, 'paid', 'Ea nam expedita quis quae iusto aut. Eos et tempore dolorum odit nihil sapiente aut. Sint voluptas deserunt qui harum et non. Consequuntur est dolorum enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(231, '2022-09-03 16:57:52', '2022-10-08 02:00:26', 2, 4, 3, NULL, 9.00, 58.00, NULL, 'paid', 'Voluptas commodi odit rerum sit magni placeat id. Dicta quaerat neque itaque dolorem nihil repellendus. Sunt provident eveniet veritatis possimus nam nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(232, '2022-08-13 02:41:01', '2022-10-08 02:00:26', 3, 4, 3, NULL, 9.00, 71.00, NULL, 'paid', 'Et nam vel molestias minima. Quia in quisquam repellendus optio qui consequatur voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(233, '2022-08-28 22:26:42', '2022-10-08 02:00:26', 3, 5, 2, NULL, 9.00, 64.00, NULL, 'paid', 'Error amet illo illum expedita voluptatum at. Autem a ab sit aperiam dolores at. Fuga et veniam magnam quaerat totam sed placeat ducimus. Omnis culpa ut iure nam totam odit eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(235, '2022-04-30 16:32:07', '2022-10-08 02:00:26', 5, 5, 3, NULL, 9.00, 82.00, NULL, 'paid', 'Velit ut sunt quaerat consequatur sapiente provident. Occaecati voluptas aperiam vel dolorum. Asperiores ratione alias ratione illum qui ipsum. Tenetur laborum vel voluptatem ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(237, '2022-08-01 16:19:00', '2022-10-08 02:00:26', 3, 4, 2, NULL, 7.00, 98.00, NULL, 'paid', 'Quod quos numquam libero blanditiis dolorem velit. Est in explicabo quam enim vel. Et optio animi architecto quasi quo omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(238, '2021-10-11 14:05:31', '2022-10-08 02:00:26', 3, 5, 2, NULL, 6.00, 65.00, NULL, 'paid', 'Quis sapiente et placeat expedita voluptatem dolorem. Tempore atque ratione reiciendis provident aperiam. Illo unde quia omnis ut sunt id consequatur harum. Sint veniam debitis eaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(239, '2022-06-25 10:21:20', '2022-10-08 02:00:26', 2, 4, 3, NULL, 6.00, 59.00, NULL, 'paid', 'Perspiciatis laboriosam ratione cumque atque. Aut sit incidunt fugit aspernatur repudiandae et eos voluptatem. Ab nesciunt deserunt voluptatem omnis nihil deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(240, '2021-11-04 02:58:33', '2022-10-08 02:00:26', 4, 4, 3, NULL, 5.00, 51.00, NULL, 'paid', 'Quaerat quia reprehenderit sed eos commodi. Odit repellendus molestiae praesentium voluptates dolore dolorum quas. Aliquam incidunt at porro soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(241, '2022-07-10 17:58:03', '2022-10-08 02:00:26', 2, 4, 2, NULL, 10.00, 73.00, NULL, 'paid', 'Recusandae rem voluptas dolore et. Iure voluptas repudiandae totam nostrum molestias animi. Ratione eum et ea id. Autem sapiente voluptates temporibus ducimus amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(242, '2022-01-12 07:29:13', '2022-10-08 02:00:26', 3, 4, 3, NULL, 5.00, 87.00, NULL, 'paid', 'Dolores voluptatem eius corporis est fuga illum dolores. Ut eos laborum minus ea id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(244, '2022-04-20 12:29:11', '2022-10-08 02:00:26', 3, 5, 3, NULL, 9.00, 50.00, NULL, 'paid', 'Eaque sed ducimus eum repellendus sequi dignissimos. Consequuntur aliquid mollitia dolor magni tempore aperiam. Rerum quidem facilis quo eos placeat consequatur reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(245, '2022-01-21 06:46:49', '2022-10-08 02:00:26', 2, 4, 2, NULL, 6.00, 31.00, NULL, 'paid', 'Quia est modi dolorem et quidem sit cumque culpa. Fugit facilis dolorem ea sint. Velit consequatur omnis id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(248, '2021-10-27 23:59:04', '2022-10-08 02:00:26', 1, 5, 3, NULL, 6.00, 83.00, NULL, 'paid', 'Unde dolor saepe adipisci omnis sint est. Tenetur placeat voluptatum fuga aut. Voluptatibus placeat assumenda voluptate quaerat sint excepturi suscipit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(249, '2022-05-11 06:19:43', '2022-10-08 02:00:26', 5, 4, 2, NULL, 9.00, 75.00, NULL, 'paid', 'Perferendis non consequatur cumque aut blanditiis necessitatibus minima esse. Dolores voluptate excepturi ea expedita. Placeat perspiciatis autem aliquid tempore sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(250, '2022-08-16 06:48:48', '2022-10-08 02:00:26', 3, 4, 3, NULL, 6.00, 43.00, NULL, 'paid', 'Ad voluptate maiores enim nemo. Praesentium et voluptatem veritatis repellat autem unde omnis cumque. Doloremque consequatur nobis sed rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(252, '2022-09-01 23:51:10', '2022-10-08 02:00:26', 2, 5, 3, NULL, 10.00, 80.00, NULL, 'paid', 'Voluptatem cupiditate eligendi laboriosam qui sit. Odit similique aperiam natus eius fugiat ut. Animi quia quas minus iure voluptas omnis et et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(254, '2021-12-31 19:17:06', '2022-10-08 02:00:26', 2, 5, 2, NULL, 8.00, 85.00, NULL, 'paid', 'Est magnam et repudiandae sequi maxime repellat. Omnis illo aut consequuntur harum. Voluptas eius facilis sequi ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(255, '2022-06-15 23:19:10', '2022-10-08 02:00:26', 5, 5, 2, NULL, 6.00, 57.00, NULL, 'paid', 'Veritatis molestiae reprehenderit consequatur vel. Alias cumque id sequi eos provident quo dolorem et. Pariatur quo commodi sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(256, '2021-11-03 12:59:54', '2022-10-08 02:00:26', 4, 5, 3, NULL, 6.00, 49.00, NULL, 'paid', 'Possimus excepturi provident nihil laboriosam distinctio enim. Ut aut et quaerat aliquid inventore. Magni asperiores id laudantium perspiciatis sunt omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(257, '2021-11-06 07:05:34', '2022-10-08 02:00:26', 1, 5, 3, NULL, 10.00, 37.00, NULL, 'paid', 'Eligendi labore quia quaerat odio distinctio eligendi natus. Est harum nemo ut aut est doloremque aut. Aut sit incidunt mollitia itaque ipsa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(258, '2021-10-30 23:52:01', '2022-10-08 02:00:26', 5, 5, 2, NULL, 5.00, 40.00, NULL, 'paid', 'Eos adipisci et error maxime saepe officia ut quibusdam. Natus sit reiciendis labore ullam. Dolorum animi quia omnis quia rerum. Debitis voluptatum sint deserunt ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(260, '2022-01-27 10:34:54', '2022-10-08 02:00:26', 5, 4, 3, NULL, 6.00, 76.00, NULL, 'paid', 'Aspernatur aperiam perspiciatis rerum aut aut sunt quae. Expedita sapiente sint dolor. Maxime atque nemo est ut tenetur magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(261, '2021-10-26 07:33:01', '2022-10-08 02:00:26', 2, 4, 3, NULL, 8.00, 59.00, NULL, 'paid', 'Consequatur ducimus sed sit et deserunt labore quia consequatur. Vero consectetur deserunt pariatur non. Et cumque voluptatum asperiores occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(266, '2022-05-10 19:04:10', '2022-10-08 02:00:26', 5, 4, 3, NULL, 9.00, 34.00, NULL, 'paid', 'Eum ea magni ea vero sint quos quis. Quo molestias id quia molestias quia expedita.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(267, '2022-08-22 13:46:05', '2022-10-08 02:00:26', 3, 5, 3, NULL, 9.00, 62.00, NULL, 'paid', 'Praesentium dolorem dolorem quos quo quidem aut perferendis. Nam repellat molestias adipisci et doloribus. Vitae aspernatur et porro veniam. Aliquam adipisci ipsam dolore aliquam distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(270, '2021-12-30 15:56:18', '2022-10-08 02:00:26', 5, 5, 3, NULL, 10.00, 86.00, NULL, 'paid', 'Architecto animi quis recusandae nisi id nisi. Pariatur quisquam est neque sit id harum. Aut eaque consequuntur earum dolor qui incidunt atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(271, '2022-03-25 07:44:19', '2022-10-08 02:00:26', 1, 5, 3, NULL, 6.00, 61.00, NULL, 'paid', 'Eos ducimus sed voluptas doloribus. Aut est mollitia minus consequatur. Magnam maiores voluptas expedita et voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(272, '2022-09-29 06:27:19', '2022-10-08 02:00:26', 2, 4, 2, NULL, 6.00, 54.00, NULL, 'paid', 'Est nihil animi quia est nulla vel vel. Et vitae consequatur aut laudantium libero quia. Minus incidunt sit nulla provident non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(273, '2022-04-28 20:51:49', '2022-10-08 02:00:26', 3, 4, 3, NULL, 9.00, 94.00, NULL, 'paid', 'Perspiciatis omnis optio sed sit. Ad quo pariatur eaque. Odit dolorem et dolorem suscipit ut. Iste nulla cumque praesentium repellat blanditiis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(274, '2021-12-28 12:30:19', '2022-10-08 02:00:26', 1, 5, 3, NULL, 7.00, 52.00, NULL, 'paid', 'Cum voluptas quas qui pariatur. Quo delectus esse minima reiciendis voluptatem vero nostrum. Corrupti beatae aut dolores est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(275, '2022-04-04 18:13:50', '2022-10-08 02:00:26', 2, 5, 3, NULL, 5.00, 42.00, NULL, 'paid', 'Alias consectetur libero accusantium repellat assumenda. Voluptas et mollitia perspiciatis dolore sit nihil aut id. Ratione voluptas corporis ut esse ipsa omnis repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(276, '2021-12-14 22:41:35', '2022-10-08 02:00:26', 3, 5, 3, NULL, 6.00, 53.00, NULL, 'paid', 'Non sed nemo necessitatibus. Non fugit a quis autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(277, '2022-01-30 18:53:12', '2022-10-08 02:00:26', 2, 5, 2, NULL, 10.00, 80.00, NULL, 'paid', 'Et veritatis fugit occaecati sequi iure reprehenderit odio ut. Deleniti ullam voluptas dolor a. Rerum est assumenda tenetur soluta. Magni et rerum ut et voluptatem et sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(279, '2022-04-19 02:51:07', '2022-10-08 02:00:26', 4, 5, 2, NULL, 10.00, 65.00, NULL, 'paid', 'Dignissimos nihil quasi laborum at dolores. Et vitae nulla perspiciatis est. Omnis unde dolor omnis occaecati in autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(280, '2022-04-22 15:27:42', '2022-10-08 02:00:26', 3, 5, 2, NULL, 10.00, 89.00, NULL, 'paid', 'Voluptas eos ipsam natus suscipit alias ut. Et laudantium nobis quisquam corporis voluptatum rerum. Id explicabo dolorem provident non inventore. Quos maiores iure itaque placeat et labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(281, '2022-03-15 12:32:25', '2022-10-08 02:00:26', 1, 5, 2, NULL, 9.00, 54.00, NULL, 'paid', 'Rerum quaerat inventore iusto provident eos temporibus vel. Non vel illo aut aut omnis. Dolorum omnis nisi aut debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(282, '2022-01-22 16:51:48', '2022-10-08 02:00:26', 3, 5, 3, NULL, 8.00, 61.00, NULL, 'paid', 'Itaque pariatur dolorum earum quod a. Maiores inventore facere sint corrupti iure exercitationem non. Animi non quod veniam accusantium animi. Sapiente non harum ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(283, '2021-10-24 23:40:37', '2022-10-08 02:00:26', 1, 5, 3, NULL, 10.00, 93.00, NULL, 'paid', 'Sed nobis asperiores repellendus maiores repellat quasi sed. Sequi quibusdam ut aspernatur placeat ex aut. Omnis recusandae adipisci alias saepe totam aut. Quas id dignissimos eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(288, '2022-03-21 09:08:26', '2022-10-08 02:00:26', 4, 4, 2, NULL, 7.00, 74.00, NULL, 'paid', 'Provident omnis officia est. Perferendis iste et dolorem corporis ullam qui vero et. Quaerat rem quibusdam voluptas sit laborum accusamus sapiente.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(289, '2021-11-09 14:03:37', '2022-10-08 02:00:26', 3, 5, 3, NULL, 10.00, 50.00, NULL, 'paid', 'Neque tenetur et qui nam dolorem quidem. Fugit ut nostrum in repellendus distinctio non. Nisi dolorem est et exercitationem et sint quod ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(290, '2022-01-08 22:42:45', '2022-10-08 02:00:26', 3, 5, 2, NULL, 5.00, 49.00, NULL, 'paid', 'Soluta aliquid tempore voluptas rerum. Sequi inventore distinctio accusamus enim rerum. Corrupti nobis consequatur est voluptate quibusdam odio voluptates. Ipsa et voluptatem culpa omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(291, '2022-03-06 00:33:35', '2022-10-08 02:00:26', 4, 5, 2, NULL, 8.00, 36.00, NULL, 'paid', 'Libero quia vero nostrum nobis. Nihil delectus tenetur ullam voluptas eius earum voluptatem quos. Quos maiores blanditiis tempore beatae voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(294, '2022-03-21 18:40:34', '2022-10-08 02:00:26', 4, 5, 2, NULL, 7.00, 80.00, NULL, 'paid', 'Quam vero facere et voluptatem error eligendi ut. Ut corporis qui quis et. Accusamus quod magnam nisi alias. Ut alias quos et tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(295, '2022-03-05 13:52:48', '2022-10-08 02:00:26', 2, 4, 2, NULL, 5.00, 71.00, NULL, 'paid', 'Sapiente delectus rerum quisquam. Magnam vero voluptas dolores. Et officia est illo quis voluptatum. Error et corporis doloribus quia qui tempora facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(296, '2022-06-18 09:22:05', '2022-10-08 02:00:26', 4, 4, 3, NULL, 5.00, 67.00, NULL, 'paid', 'Sed quis vel aut qui. Nihil architecto error asperiores et exercitationem esse magni consectetur. Ullam voluptas fugiat eos alias qui facilis. Sed vel cupiditate excepturi quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(297, '2022-01-01 15:53:56', '2022-10-08 02:00:26', 2, 4, 3, NULL, 9.00, 97.00, NULL, 'paid', 'Repudiandae aut similique ab rerum officiis ea dolore. Quasi dolor voluptatem voluptas voluptatibus. Officia sunt quidem est est blanditiis autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(300, '2022-10-04 01:16:59', '2022-10-08 02:00:26', 4, 5, 3, NULL, 6.00, 31.00, NULL, 'paid', 'Eveniet est corporis laboriosam aliquam. Magnam et doloribus inventore. Non ipsam autem similique quasi. Facere ea in qui reiciendis atque. Debitis odit repudiandae qui et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(301, '2022-07-03 06:50:16', '2022-10-08 02:00:26', 3, 4, 3, NULL, 6.00, 92.00, NULL, 'paid', 'Quia explicabo cumque velit eum necessitatibus hic. Tempore saepe nisi tempora nihil assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(304, '2022-03-10 11:40:57', '2022-10-08 02:00:26', 4, 4, 2, NULL, 5.00, 30.00, NULL, 'paid', 'Eos alias eius magni aut possimus ut itaque. Aspernatur non facere corporis sit. Fuga minus est explicabo voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(305, '2021-11-29 01:39:20', '2022-10-08 02:00:26', 3, 5, 2, NULL, 5.00, 70.00, NULL, 'paid', 'Consequatur consequuntur et magni dolorem ut excepturi assumenda. Quaerat nobis numquam optio culpa voluptatem nesciunt. Laudantium aliquid voluptatem adipisci quo impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(306, '2022-10-02 03:28:17', '2022-10-08 02:00:26', 3, 5, 3, NULL, 6.00, 50.00, NULL, 'paid', 'Est ipsum facere quae qui totam sunt. Illum ut sunt assumenda fugiat voluptas. Doloribus ut dolorem sequi architecto aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(307, '2021-10-19 07:32:10', '2022-10-08 02:00:26', 1, 5, 3, NULL, 6.00, 86.00, NULL, 'paid', 'Blanditiis temporibus voluptas exercitationem debitis. Architecto consequatur pariatur odio sit animi. Illo eligendi incidunt nemo et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(312, '2022-06-07 10:02:13', '2022-10-08 02:00:26', 3, 5, 3, NULL, 8.00, 30.00, NULL, 'paid', 'Ad optio neque nulla omnis nostrum. Aut occaecati commodi est quaerat quis. Sunt quidem dolores similique unde quod qui eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(313, '2022-07-16 12:54:05', '2022-10-08 02:00:26', 3, 5, 3, NULL, 6.00, 98.00, NULL, 'paid', 'Magnam sequi rem nihil consequuntur eligendi consequuntur. Tenetur quaerat molestiae maiores ea. Ducimus cupiditate et in voluptate. Incidunt sint est est modi provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(314, '2022-07-18 07:39:53', '2022-10-08 02:00:26', 1, 4, 3, NULL, 10.00, 90.00, NULL, 'paid', 'Praesentium cupiditate ex eligendi voluptatibus neque. Nostrum nam molestiae ut architecto ad. Expedita quam sapiente eius non quasi quam dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(315, '2021-10-24 18:03:47', '2022-10-08 02:00:26', 5, 4, 2, NULL, 10.00, 87.00, NULL, 'paid', 'Quae quia error eum eos praesentium. Non dolorem natus veniam velit. Ratione occaecati possimus sint non expedita quis id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(316, '2022-02-26 03:28:12', '2022-10-08 02:00:26', 4, 4, 3, NULL, 6.00, 39.00, NULL, 'paid', 'Sed dolores omnis iste voluptas est autem a illo. Libero illum rerum tempora totam doloribus. Quasi et animi amet tempore quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(317, '2021-10-29 13:16:12', '2022-10-08 02:00:26', 5, 5, 2, NULL, 9.00, 89.00, NULL, 'paid', 'Voluptatum hic voluptatem corrupti autem excepturi aut repellat earum. Saepe voluptatem et minus aut sit. Deserunt est nesciunt ut unde est dolor est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(319, '2022-09-01 06:41:06', '2022-10-08 02:00:26', 4, 4, 3, NULL, 5.00, 34.00, NULL, 'paid', 'Aliquid cum omnis facere dicta omnis omnis. Maxime expedita sapiente provident dignissimos rerum maiores rem. Rerum dolorem fugiat sint distinctio omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(320, '2022-04-08 02:15:18', '2022-10-08 02:00:26', 1, 5, 2, NULL, 6.00, 86.00, NULL, 'paid', 'Id autem repellat porro architecto. Voluptas eligendi praesentium veritatis ad deserunt sint. Qui recusandae dolore deleniti enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(322, '2022-05-31 17:53:33', '2022-10-08 02:00:26', 4, 5, 3, NULL, 10.00, 91.00, NULL, 'paid', 'Id facere eius non autem. Eligendi nisi eius rerum vel. Minima minima animi enim eum et. Ea enim dolore quia ex exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(323, '2022-02-01 06:11:23', '2022-10-08 02:00:26', 4, 5, 2, NULL, 10.00, 34.00, NULL, 'paid', 'Sit voluptatem eius repudiandae earum in. Repellat aspernatur odit natus autem nesciunt quibusdam. Aperiam temporibus impedit assumenda eius qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(324, '2022-02-10 05:51:53', '2022-10-08 02:00:26', 1, 5, 3, NULL, 6.00, 34.00, NULL, 'paid', 'Libero qui voluptatem tenetur. Et eum dignissimos quidem incidunt porro. Est et sit molestiae sapiente iure earum earum ut. Sed qui quia ipsam alias quod est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(325, '2022-03-31 16:58:07', '2022-10-08 02:00:26', 5, 4, 2, NULL, 10.00, 40.00, NULL, 'paid', 'Eos dicta voluptatibus officiis. Inventore illo ullam molestiae accusamus. Recusandae suscipit rerum molestiae deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(326, '2022-01-21 19:10:46', '2022-10-08 02:00:26', 2, 4, 2, NULL, 5.00, 96.00, NULL, 'paid', 'Quas magnam et placeat in aut. Magni nihil praesentium nam a odit. Laudantium aut ducimus dolor quia cum. Veritatis laborum officiis officia tenetur quam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(330, '2022-09-07 12:02:23', '2022-10-08 02:00:26', 4, 5, 2, NULL, 6.00, 70.00, NULL, 'paid', 'Est fugiat reprehenderit numquam ratione ipsa quia. Distinctio aut quas in velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(332, '2021-10-22 08:59:41', '2022-10-08 02:00:26', 1, 4, 3, NULL, 8.00, 99.00, NULL, 'paid', 'Est aut esse autem ut sed quia totam. Recusandae eligendi similique expedita est. Deleniti doloribus consectetur consequatur ad magnam nobis. In qui eveniet incidunt distinctio explicabo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(334, '2022-03-12 06:11:05', '2022-10-08 02:00:26', 5, 4, 2, NULL, 9.00, 42.00, NULL, 'paid', 'Velit doloribus qui nemo quos blanditiis voluptas. Quos cupiditate vitae quidem quo enim consequuntur ea. Ipsam sint quaerat rerum voluptate ut velit rerum aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(335, '2022-07-04 23:16:18', '2022-10-08 02:00:26', 2, 4, 3, NULL, 7.00, 36.00, NULL, 'paid', 'Commodi temporibus quo ut et. Tempora perferendis mollitia perspiciatis. Sit omnis mollitia nisi commodi. Amet eos quia harum quo rerum earum voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(339, '2021-11-25 17:29:39', '2022-10-08 02:00:26', 5, 4, 2, NULL, 9.00, 81.00, NULL, 'paid', 'Quasi sint possimus sed dolor accusantium atque quam. Accusamus dolorem fugiat dignissimos. Sit omnis corporis modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(340, '2022-07-07 06:24:25', '2022-10-08 02:00:26', 5, 5, 3, NULL, 10.00, 64.00, NULL, 'paid', 'Officia deserunt placeat dignissimos voluptas officiis et. Nisi aspernatur facere dicta. Delectus sunt doloremque vitae iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(341, '2021-12-21 06:06:19', '2022-10-08 02:00:26', 3, 5, 3, NULL, 8.00, 31.00, NULL, 'paid', 'In et nemo hic distinctio culpa soluta. Accusamus soluta voluptas odio rem cupiditate omnis aperiam. Illum et totam maiores nihil. Sint sit dolor amet ad reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(342, '2022-09-20 04:40:11', '2022-10-08 02:00:26', 3, 4, 3, NULL, 6.00, 40.00, NULL, 'paid', 'Deleniti quos incidunt neque autem. Facere eaque omnis dicta dolores vel non molestiae. Et ullam non asperiores sit architecto et. Officiis dolor placeat dolor ut cupiditate cumque dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(343, '2022-09-06 06:27:54', '2022-10-08 02:00:26', 3, 4, 3, NULL, 10.00, 51.00, NULL, 'paid', 'Temporibus culpa velit distinctio qui ratione quia. Et consectetur error eum aut ab. Dolorum vitae ex dignissimos minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(345, '2022-09-02 17:42:26', '2022-10-08 02:00:26', 2, 5, 3, NULL, 8.00, 95.00, NULL, 'paid', 'Rem non voluptas ab occaecati maxime aut sint. Suscipit ut sequi soluta voluptas rerum omnis. Nobis blanditiis deleniti et ab sed neque. Ea fugiat eum aut nisi sit nobis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(347, '2022-03-27 21:48:51', '2022-10-08 02:00:26', 5, 4, 3, NULL, 10.00, 99.00, NULL, 'paid', 'Saepe sunt natus in dolorem. A labore consequatur quis quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(348, '2022-05-07 00:36:25', '2022-10-08 02:00:26', 4, 5, 3, NULL, 9.00, 74.00, NULL, 'paid', 'Magnam amet natus animi provident aliquid. Veniam quibusdam praesentium aut non est porro deserunt. Vel vero et hic possimus labore aut. Ipsam minima praesentium quisquam vel impedit esse aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(349, '2022-02-22 23:26:39', '2022-10-08 02:00:26', 1, 4, 3, NULL, 9.00, 87.00, NULL, 'paid', 'Deleniti qui inventore aut reiciendis et aliquam. Vel amet iste minima aut et tempora ipsum. Numquam illum quia et minima vitae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(356, '2022-02-17 01:37:02', '2022-10-08 02:00:26', 4, 5, 3, NULL, 10.00, 43.00, NULL, 'paid', 'Rerum accusamus cupiditate quia neque quo natus. Quod perspiciatis quo consequatur nisi. Nulla sint perferendis aspernatur enim voluptatem enim temporibus. Officiis occaecati ex possimus modi quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(357, '2022-04-15 14:49:58', '2022-10-08 02:00:26', 2, 5, 3, NULL, 8.00, 99.00, NULL, 'paid', 'Adipisci veritatis ratione dicta nulla hic necessitatibus. Et deserunt ut aliquam ut dolor animi ducimus. Inventore qui placeat ullam sit et vitae dicta. Quos ea tempore tempora qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(361, '2022-03-04 23:19:19', '2022-10-08 02:00:26', 3, 5, 3, NULL, 9.00, 100.00, NULL, 'paid', 'Ratione aspernatur maiores vero dolorem enim. Id ea repellat facilis sint. Dolores consectetur nisi sint illum qui nisi quaerat hic. Quia doloribus et corrupti quisquam temporibus debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(362, '2022-07-10 08:39:51', '2022-10-08 02:00:26', 1, 4, 2, NULL, 7.00, 55.00, NULL, 'paid', 'Inventore sunt error voluptas. Nemo rerum sed eum cupiditate. Doloribus nihil adipisci ab consequatur nam officia. Incidunt ut quidem necessitatibus voluptatem modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(364, '2022-03-28 04:30:23', '2022-10-08 02:00:26', 1, 5, 3, NULL, 8.00, 36.00, NULL, 'paid', 'Harum nemo eveniet veritatis distinctio eum esse. Et delectus rerum inventore incidunt. Doloribus officiis ipsam sed beatae facilis. Itaque odit consectetur ratione expedita repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(365, '2022-08-09 21:34:09', '2022-10-08 02:00:26', 2, 5, 2, NULL, 5.00, 31.00, NULL, 'paid', 'Vero quam aspernatur cumque sequi illum nemo pariatur. Id quas aliquid nihil blanditiis possimus illum. Quod at recusandae dignissimos quaerat. Optio quae eos dolorem commodi et deserunt ipsum autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(367, '2022-01-11 07:19:37', '2022-10-08 02:00:26', 4, 4, 3, NULL, 7.00, 61.00, NULL, 'paid', 'Et eius aut neque recusandae alias. In deserunt rerum qui laudantium. Nemo animi iste et quisquam voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(369, '2021-12-24 10:31:10', '2022-10-08 02:00:26', 2, 5, 3, NULL, 6.00, 81.00, NULL, 'paid', 'Ipsa architecto laboriosam laudantium modi. Quo unde asperiores quis voluptatem. Perferendis dignissimos delectus reprehenderit quaerat. Fugiat voluptatem sit possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(371, '2022-03-21 01:45:55', '2022-10-08 02:00:26', 4, 4, 2, NULL, 5.00, 69.00, NULL, 'paid', 'Quod sed vero et quas neque ipsum voluptatem. Neque id consequuntur delectus cupiditate ut quisquam. Tempora ratione inventore reprehenderit ullam enim perferendis voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(372, '2022-03-05 13:12:41', '2022-10-08 02:00:26', 2, 4, 2, NULL, 7.00, 38.00, NULL, 'paid', 'Quod officia voluptatem laborum voluptatem fugiat sit. Omnis et consectetur fugit laudantium rerum beatae. Dolorem atque natus deserunt. Repellendus dolores doloribus quia eaque et laborum quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(373, '2022-07-28 02:39:06', '2022-10-08 02:00:26', 5, 5, 3, NULL, 8.00, 73.00, NULL, 'paid', 'Porro distinctio aliquid deleniti voluptatem. Sunt quaerat qui eveniet laborum. Magni et qui sit aspernatur sunt eum sapiente. Nemo distinctio itaque non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(374, '2021-12-15 09:42:00', '2022-10-08 02:00:26', 3, 4, 3, NULL, 10.00, 55.00, NULL, 'paid', 'Vero quis esse voluptates eveniet maiores est. Non quaerat autem et aut qui id. Atque nihil dicta cumque reiciendis iusto ea. Cupiditate ab ut voluptatem non non porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(375, '2022-09-03 15:48:20', '2022-10-08 02:00:26', 5, 4, 2, NULL, 5.00, 95.00, NULL, 'paid', 'Qui sit velit ut quos quia saepe. Culpa rerum voluptatum qui alias sint sed ex debitis. Quis laudantium earum iure maiores aperiam. Quia sit voluptas optio et culpa provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(376, '2022-07-30 08:48:30', '2022-10-08 02:00:26', 3, 5, 3, NULL, 9.00, 59.00, NULL, 'paid', 'Minus et ipsa eos ipsum. Qui error maiores cupiditate voluptas. Corporis quia beatae sit laudantium asperiores eum. Qui iste ea accusamus illo. Quibusdam eveniet dignissimos dignissimos culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(380, '2022-08-18 03:52:54', '2022-10-08 02:00:26', 4, 4, 2, NULL, 10.00, 36.00, NULL, 'paid', 'Dolores et error sit at earum voluptas autem. Aperiam corporis nesciunt aut velit iusto quia sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(381, '2022-02-09 09:52:32', '2022-10-08 02:00:26', 3, 5, 3, NULL, 6.00, 90.00, NULL, 'paid', 'Aut occaecati earum sint inventore quis doloribus totam. Hic atque reiciendis rerum ad voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(383, '2021-10-24 07:26:25', '2022-10-08 02:00:26', 3, 5, 2, NULL, 7.00, 43.00, NULL, 'paid', 'Sequi iusto provident assumenda temporibus maxime. Omnis et aliquam necessitatibus non esse non est vero. Id rerum aut praesentium sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(384, '2022-02-22 05:19:19', '2022-10-08 02:00:26', 3, 4, 3, NULL, 8.00, 57.00, NULL, 'paid', 'Et nemo quia nobis est quidem consequatur. Nostrum dolore pariatur explicabo enim in. Blanditiis ut quia excepturi et nulla neque neque. Maiores debitis enim maxime possimus aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(385, '2022-03-02 11:04:29', '2022-10-08 02:00:26', 2, 4, 2, NULL, 9.00, 33.00, NULL, 'paid', 'In molestiae est et. Et quis eos molestias ut. Et officia sequi labore dolor dolore soluta at. Quae tenetur commodi repudiandae ullam aut blanditiis voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(387, '2022-03-20 23:38:13', '2022-10-08 02:00:26', 5, 5, 3, NULL, 6.00, 32.00, NULL, 'paid', 'Dolorum sint eos blanditiis eveniet. Dolore et culpa fugit et impedit inventore quas. Quia distinctio eligendi provident qui magni error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(388, '2022-06-25 12:29:40', '2022-10-08 02:00:26', 1, 4, 2, NULL, 7.00, 86.00, NULL, 'paid', 'Debitis iste ut qui voluptatem quas dicta omnis cupiditate. Officia aspernatur modi voluptatibus beatae autem ipsam. Dolor aut sit soluta aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(390, '2022-09-22 13:54:11', '2022-10-08 02:00:26', 1, 5, 3, NULL, 5.00, 67.00, NULL, 'paid', 'Dolor vel omnis sit dolor sequi. Non alias quod ut non aliquam impedit repellendus. Provident est officiis excepturi nihil dicta unde sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(391, '2022-03-16 05:38:23', '2022-10-08 02:00:26', 2, 4, 2, NULL, 8.00, 82.00, NULL, 'paid', 'Provident deserunt assumenda qui ut aut voluptatem dignissimos. Similique incidunt illum eos beatae. Rerum aperiam iste excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(392, '2022-06-29 22:49:47', '2022-10-08 02:00:26', 1, 4, 2, NULL, 8.00, 72.00, NULL, 'paid', 'Eum et quis aut fugit quae sequi. Inventore molestiae culpa officia voluptas porro dolores soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(393, '2021-12-30 06:51:48', '2022-10-08 02:00:26', 3, 5, 3, NULL, 9.00, 52.00, NULL, 'paid', 'Tenetur et ut qui aperiam quia qui. Quod quod enim architecto eos eveniet. Aut assumenda non fuga odit aut recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(394, '2022-09-30 09:13:11', '2022-10-08 02:00:26', 3, 4, 3, NULL, 6.00, 96.00, NULL, 'paid', 'Ut odio laudantium exercitationem. Adipisci itaque voluptate sunt sunt saepe deleniti. Non quo ea est voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(397, '2021-10-31 02:17:20', '2022-10-08 02:00:26', 3, 4, 3, NULL, 7.00, 87.00, NULL, 'paid', 'Deserunt alias quisquam et natus dignissimos ad deleniti aliquam. Quidem ut consequatur nostrum voluptas illum velit. Repudiandae et et deserunt quidem optio maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(399, '2022-01-03 22:15:34', '2022-10-08 02:00:26', 2, 4, 3, NULL, 8.00, 31.00, NULL, 'paid', 'Dolorem voluptatem quae sint placeat earum aliquam ipsam. Quasi sed aut voluptas unde earum et tempore. Atque rem id dolore accusantium aperiam. Modi quidem minima ullam nam dolor optio magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(400, '2022-07-25 00:36:28', '2022-10-08 02:00:26', 4, 4, 3, NULL, 10.00, 66.00, NULL, 'paid', 'Iure omnis distinctio veniam nemo. Tempore error enim et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(401, '2022-04-10 15:44:44', '2022-10-08 02:00:26', 1, 5, 3, NULL, 7.00, 59.00, NULL, 'paid', 'Error possimus aut autem earum. Reiciendis quia quo doloribus eligendi. Est deleniti harum sunt commodi optio aliquid culpa. Ut tempore ad aut ut est ut ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(402, '2021-12-01 05:19:27', '2022-10-08 02:00:26', 5, 5, 2, NULL, 8.00, 94.00, NULL, 'paid', 'Nisi libero voluptatem similique corporis quis qui voluptas. Vitae deserunt sint iusto cumque veniam rerum aut reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(403, '2022-05-14 03:57:48', '2022-10-08 02:00:26', 1, 5, 2, NULL, 5.00, 71.00, NULL, 'paid', 'Doloremque nam illum ea sunt laborum. Rerum corrupti fugit distinctio in. Enim nihil qui accusamus voluptas cumque aperiam excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(405, '2022-05-08 03:15:14', '2022-10-08 02:00:26', 1, 4, 2, NULL, 9.00, 52.00, NULL, 'paid', 'Qui saepe est necessitatibus neque deleniti libero quia quas. Omnis labore ex sint amet sint. Aut sunt laudantium officiis optio nihil a. Fugiat repellat vel modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(406, '2022-01-08 05:10:14', '2022-10-08 02:00:26', 2, 4, 2, NULL, 6.00, 48.00, NULL, 'paid', 'Aut ab et quaerat dignissimos sed. Odio modi voluptas minus corporis tenetur non ducimus repudiandae. Et non quaerat rem numquam iste ipsa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(408, '2022-08-03 02:59:57', '2022-10-08 02:00:26', 5, 4, 2, NULL, 9.00, 69.00, NULL, 'paid', 'Similique cupiditate et vero blanditiis praesentium deleniti sint. Veritatis assumenda quidem quia aut et. Quo qui pariatur id non. Ut ut ut molestiae officia inventore repudiandae qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(409, '2022-09-04 16:58:11', '2022-10-08 02:00:26', 3, 4, 3, NULL, 5.00, 58.00, NULL, 'paid', 'Deleniti asperiores ea minus qui rerum. Repellat recusandae facilis et commodi. Non mollitia fugit ipsam incidunt eum reprehenderit ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(410, '2022-03-04 16:50:04', '2022-10-08 02:00:26', 2, 4, 2, NULL, 8.00, 75.00, NULL, 'paid', 'Et quaerat exercitationem labore deleniti occaecati. Vero perferendis reiciendis velit assumenda laudantium et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(413, '2021-10-25 12:47:51', '2022-10-08 02:00:26', 3, 4, 3, NULL, 5.00, 31.00, NULL, 'paid', 'Corporis et suscipit modi sequi consectetur et. Quod consequatur totam ipsum. Neque ut aliquam laborum neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(415, '2022-02-09 14:33:53', '2022-10-08 02:00:26', 4, 4, 2, NULL, 6.00, 54.00, NULL, 'paid', 'Voluptas harum ab quasi incidunt veniam alias. Autem optio fugiat esse iure. Eum corporis natus autem quo facilis repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(416, '2022-04-24 13:37:20', '2022-10-08 02:00:26', 5, 4, 2, NULL, 10.00, 46.00, NULL, 'paid', 'Laboriosam quis modi dolores saepe. Est ea nihil voluptas natus. Aperiam dolorum mollitia fugiat doloremque quo et sed. Voluptatem consequuntur fugiat omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(417, '2021-12-26 09:18:46', '2022-10-08 02:00:26', 2, 5, 2, NULL, 7.00, 76.00, NULL, 'paid', 'Minima asperiores aspernatur corporis quaerat. Magnam quaerat qui laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(418, '2022-09-07 16:53:22', '2022-10-08 02:00:26', 5, 4, 2, NULL, 10.00, 72.00, NULL, 'paid', 'Est magni saepe aspernatur accusamus dolorum. Sit vitae impedit quas distinctio et quaerat atque. Consequuntur unde quia minima molestiae voluptatum. Et nulla tempore ratione fuga dolorum veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(419, '2022-02-23 21:06:11', '2022-10-08 02:00:26', 5, 4, 3, NULL, 5.00, 35.00, NULL, 'paid', 'Eius est nam eveniet corrupti a omnis. Minus in voluptatibus numquam rem. Amet officia dolores voluptas deleniti molestias deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(422, '2022-09-13 00:37:23', '2022-10-08 02:00:26', 1, 5, 2, NULL, 10.00, 57.00, NULL, 'paid', 'Est adipisci a aut ratione. Quaerat harum veniam ipsa magnam similique non. Excepturi eos excepturi magni. Blanditiis unde aut consequuntur dolore aut est voluptatem omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(423, '2022-03-19 22:09:35', '2022-10-08 02:00:26', 5, 4, 3, NULL, 9.00, 81.00, NULL, 'paid', 'Libero maxime quia saepe ut libero rerum. Qui eaque nesciunt est nihil asperiores magnam earum. Quo deleniti quidem deserunt occaecati assumenda sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(424, '2022-08-29 05:49:51', '2022-10-08 02:00:26', 3, 5, 2, NULL, 6.00, 71.00, NULL, 'paid', 'Impedit nostrum laborum dignissimos dignissimos doloremque consectetur. Officia atque tempore accusantium quis et quis. Mollitia qui voluptatibus voluptatem accusamus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(425, '2022-06-19 05:46:47', '2022-10-08 02:00:26', 4, 5, 3, NULL, 10.00, 66.00, NULL, 'paid', 'Molestiae delectus ex dolorem facilis beatae enim et. Molestiae vel consequuntur qui rerum. Odio harum aut culpa fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(427, '2022-02-13 09:57:42', '2022-10-08 02:00:26', 4, 4, 2, NULL, 9.00, 83.00, NULL, 'paid', 'Voluptatibus maiores numquam et. Sit consequatur ea quia aspernatur quis. Sed quos adipisci sequi odio est aspernatur quae. Quibusdam ratione qui omnis neque eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(429, '2022-09-06 23:26:38', '2022-10-08 02:00:26', 4, 4, 3, NULL, 8.00, 51.00, NULL, 'paid', 'Ut porro culpa voluptas delectus. Architecto est voluptatibus ut. Quasi alias facere debitis ea consequatur. Ullam placeat quo dignissimos sit cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(431, '2021-11-17 01:50:58', '2022-10-08 02:00:26', 1, 5, 3, NULL, 5.00, 62.00, NULL, 'paid', 'Excepturi quam recusandae maxime iste eveniet voluptatibus consequatur. Et facere earum earum. Facilis voluptatem sequi autem et animi eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(432, '2022-07-13 09:25:57', '2022-10-08 02:00:26', 1, 5, 2, NULL, 6.00, 86.00, NULL, 'paid', 'Dolorem et vel laudantium enim. Et iste consectetur suscipit nisi ipsam et. Nemo voluptatum voluptas maiores amet iure fugiat occaecati. Placeat sed ipsam pariatur quis qui qui sit provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(433, '2022-05-16 17:34:53', '2022-10-08 02:00:26', 1, 4, 3, NULL, 8.00, 94.00, NULL, 'paid', 'Fugiat odio excepturi molestiae sint dolorem libero quasi eum. Aliquid fuga ut quae totam non commodi quo. Et voluptatem et eum omnis et. Qui sint vel sed ab voluptatem hic et placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(435, '2022-02-27 10:17:19', '2022-10-08 02:00:26', 1, 5, 3, NULL, 6.00, 93.00, NULL, 'paid', 'Sit repellat minus autem dolorem. Cumque consectetur est et sint nihil nihil molestiae est. Et a esse sint itaque odio. Provident fuga alias modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(436, '2022-06-26 13:12:28', '2022-10-08 02:00:26', 1, 5, 3, NULL, 7.00, 93.00, NULL, 'paid', 'Deserunt modi accusantium dolor necessitatibus minus. Qui nulla beatae porro suscipit libero exercitationem. Et dolores et rerum dolores. Occaecati magnam quia esse ipsam perspiciatis cumque fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(438, '2022-07-03 04:43:15', '2022-10-08 02:00:26', 1, 5, 3, NULL, 8.00, 86.00, NULL, 'paid', 'Nihil asperiores quisquam et totam eum. Sed distinctio officia sint dolorem et. Perferendis est minus eius repellat impedit tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(439, '2022-03-11 05:46:54', '2022-10-08 02:00:26', 2, 5, 2, NULL, 9.00, 49.00, NULL, 'paid', 'Dolore sit fuga repellendus dicta porro ratione excepturi. Aut tempore porro voluptatem ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(440, '2021-12-06 20:21:00', '2022-10-08 02:00:26', 3, 4, 3, NULL, 8.00, 98.00, NULL, 'paid', 'Est fuga error beatae cupiditate. Inventore porro sed qui sint et. Laudantium rerum dolores vitae dolorem sit qui molestiae. Alias quasi ad et enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(442, '2021-10-26 16:50:59', '2022-10-08 02:00:26', 5, 4, 2, NULL, 10.00, 61.00, NULL, 'paid', 'Vitae et consequatur dicta. Nihil sequi in totam perferendis dignissimos temporibus minima. Sed provident ipsam ipsam aut accusamus. Inventore nihil culpa a nihil dolor natus dolorem minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(443, '2021-11-24 15:57:42', '2022-10-08 02:00:26', 5, 5, 3, NULL, 7.00, 75.00, NULL, 'paid', 'Id rem dolore consequatur eos est sint. Eum laboriosam laboriosam error voluptatem quos itaque dolorum. Adipisci et ut nihil qui neque id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(445, '2022-08-06 23:55:55', '2022-10-08 02:00:26', 1, 4, 2, NULL, 6.00, 42.00, NULL, 'paid', 'Quas eum voluptas ut omnis at cum nihil. Voluptate et autem fugit sit iste vitae asperiores. Ratione et aut a ipsa provident. Eius quis quasi voluptatem ut dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(447, '2022-06-04 23:37:15', '2022-10-08 02:00:26', 4, 4, 3, NULL, 6.00, 56.00, NULL, 'paid', 'Facere laborum asperiores ut aut. Suscipit sed corrupti sapiente sint velit. Rerum sunt in voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(448, '2022-10-04 02:33:53', '2022-10-08 02:00:26', 2, 5, 2, NULL, 8.00, 56.00, NULL, 'paid', 'Praesentium dolorem id voluptas officia. Porro et fugiat et qui enim. Possimus eos tempora cum iure quo. Doloremque veniam veniam nisi commodi eos. Nihil aut error nihil error aut optio velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(451, '2022-05-29 20:51:18', '2022-10-08 02:00:26', 4, 5, 2, NULL, 9.00, 38.00, NULL, 'paid', 'Inventore facere fugit odit qui tempora ut vel. Placeat sint ratione ea qui. Voluptatem debitis cumque ut suscipit. Incidunt dolore hic veritatis nemo et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(454, '2022-05-21 12:16:12', '2022-10-08 02:00:26', 5, 5, 3, NULL, 10.00, 58.00, NULL, 'paid', 'A ad et similique blanditiis. Qui modi ut dolores quasi maxime enim hic amet. Ut perferendis sed magnam est blanditiis vel aperiam. Repellendus esse deleniti iste facilis dicta et iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(455, '2022-07-12 04:53:36', '2022-10-08 02:00:26', 4, 4, 2, NULL, 6.00, 70.00, NULL, 'paid', 'Libero iste beatae nobis amet provident cumque officia. Voluptas hic inventore omnis magnam. Perferendis et ut non velit consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(456, '2022-07-17 00:10:57', '2022-10-08 02:00:26', 2, 4, 2, NULL, 5.00, 45.00, NULL, 'paid', 'Accusantium iure qui ut maxime voluptas qui error. Quia consequuntur harum eum. Aperiam laborum sit sequi ad dolor est corporis quia. Nihil voluptatibus reprehenderit sed quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(458, '2021-12-25 05:20:16', '2022-10-08 02:00:26', 1, 5, 2, NULL, 7.00, 95.00, NULL, 'paid', 'Est qui nihil autem similique debitis et sed. At quia a aut error iusto atque beatae. Vel non ut enim vel nisi suscipit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(460, '2022-01-28 13:35:56', '2022-10-08 02:00:26', 4, 5, 2, NULL, 5.00, 63.00, NULL, 'paid', 'Vero voluptates nulla unde exercitationem ullam. Perspiciatis ipsam quo repellendus iste. Reprehenderit rerum consequatur quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(462, '2022-03-09 10:02:46', '2022-10-08 02:00:26', 1, 5, 2, NULL, 7.00, 95.00, NULL, 'paid', 'Vel sunt repellat beatae quod aliquid est praesentium similique. Et laudantium et voluptatum quis. Ea ut sit incidunt praesentium neque distinctio tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(463, '2022-08-16 05:17:04', '2022-10-08 02:00:26', 2, 4, 2, NULL, 6.00, 85.00, NULL, 'paid', 'Facere et vero ut fugiat sunt. Nobis est rerum unde voluptas magnam labore nesciunt. Nam eum delectus placeat qui dolore ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(464, '2021-10-22 12:25:23', '2022-10-08 02:00:26', 3, 5, 3, NULL, 9.00, 32.00, NULL, 'paid', 'Temporibus placeat numquam similique non. Sint ut animi blanditiis vel voluptas tempore voluptas. Omnis nemo harum aspernatur et quae totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(465, '2022-10-06 04:16:29', '2022-10-08 02:00:26', 2, 4, 2, NULL, 10.00, 33.00, NULL, 'paid', 'Impedit nemo ipsam rerum fugit doloremque. Id iusto officiis ut omnis officia. Dolor sint ea et quo. Aut odio suscipit quaerat necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(466, '2022-09-01 18:31:00', '2022-10-08 02:00:26', 5, 4, 3, NULL, 9.00, 47.00, NULL, 'paid', 'Doloremque et iusto ipsam porro et adipisci. Ab rerum quo aut eos quas quia. Minus consectetur omnis quos maxime. Aspernatur officiis voluptate ea molestiae rerum ipsum necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(467, '2022-06-10 02:50:13', '2022-10-08 02:00:26', 4, 4, 3, NULL, 10.00, 37.00, NULL, 'paid', 'Qui ut incidunt ab reprehenderit et nobis laborum. Fuga veniam et veniam. Aliquid nisi quae qui dolor eum vitae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(468, '2022-01-17 04:59:02', '2022-10-08 02:00:26', 1, 4, 3, NULL, 7.00, 50.00, NULL, 'paid', 'Molestiae modi sit aperiam. Non itaque id quidem. Autem repellendus et deleniti quia. Nesciunt omnis harum aut tempora fugiat dignissimos voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(469, '2021-11-09 14:58:45', '2022-10-08 02:00:26', 1, 4, 3, NULL, 9.00, 96.00, NULL, 'paid', 'Eveniet itaque eaque ea possimus dolorum sint earum. Ipsum dolor natus qui. Corrupti velit voluptatem autem aliquam. Sed nihil totam porro quo ex porro ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(473, '2022-08-12 20:52:29', '2022-10-08 02:00:26', 1, 5, 3, NULL, 5.00, 58.00, NULL, 'paid', 'Quis numquam rerum qui occaecati. Asperiores perferendis in accusantium sunt recusandae. Sed impedit ipsam aut porro delectus ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(474, '2021-10-30 15:38:22', '2022-10-08 02:00:26', 4, 4, 2, NULL, 6.00, 83.00, NULL, 'paid', 'Perferendis est atque quis ut voluptas. Eos ipsa eveniet nihil ea mollitia debitis quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(475, '2022-09-02 19:35:06', '2022-10-08 02:00:26', 4, 5, 2, NULL, 6.00, 67.00, NULL, 'paid', 'Sed a animi minus dolor adipisci aliquid. Praesentium harum commodi aperiam consequatur. Autem veniam at minus. Pariatur ut ad quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(476, '2022-07-06 19:01:27', '2022-10-08 02:00:26', 4, 4, 3, NULL, 8.00, 100.00, NULL, 'paid', 'Voluptatibus et similique qui perferendis. Dolore quod quam perspiciatis dolore impedit. Maiores fuga quae quas ut possimus in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(478, '2022-02-05 02:43:50', '2022-10-08 02:00:26', 1, 4, 3, NULL, 7.00, 54.00, NULL, 'paid', 'Est nobis quod sit quia. Alias quo non est qui ipsa. Saepe ut incidunt id possimus hic delectus earum. Molestias accusantium quia quam pariatur laudantium assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(479, '2022-02-06 11:30:04', '2022-10-08 02:00:26', 4, 4, 3, NULL, 5.00, 48.00, NULL, 'paid', 'Repellat cum voluptatibus sunt voluptatem. Accusantium repellendus voluptatum consequatur. Doloremque non non ut porro consectetur et officia. Vel eaque et nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(480, '2022-04-24 05:22:28', '2022-10-08 02:00:26', 2, 4, 3, NULL, 8.00, 74.00, NULL, 'paid', 'Hic molestias qui ducimus quo dolor et voluptatum. Dolorum cumque quae aut officia quos et. Velit quaerat excepturi libero repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(482, '2022-07-07 13:35:42', '2022-10-08 02:00:26', 1, 4, 2, NULL, 5.00, 41.00, NULL, 'paid', 'Fugiat reprehenderit deserunt id ut culpa ratione. In impedit minus laboriosam eum autem non. Excepturi nam error asperiores cum voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(485, '2022-03-18 14:44:54', '2022-10-08 02:00:26', 1, 5, 2, NULL, 6.00, 66.00, NULL, 'paid', 'Rerum et voluptate quia aut cumque optio vitae. Est animi facere rerum iste ad id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(487, '2022-01-23 02:38:08', '2022-10-08 02:00:26', 4, 4, 3, NULL, 7.00, 59.00, NULL, 'paid', 'Nesciunt natus dolores a cumque dignissimos quia sit sit. Molestiae est qui rerum minus quia. Ipsa nihil adipisci veniam temporibus minima quo temporibus. Dolores et aspernatur non tempora et et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(488, '2022-02-20 00:18:04', '2022-10-08 02:00:26', 4, 4, 2, NULL, 7.00, 46.00, NULL, 'paid', 'Voluptas dolorum animi est. Reiciendis tenetur ut rerum id ullam illo at. Rerum porro quia impedit omnis. Totam molestiae quas molestiae cupiditate. Quasi dolore modi et earum maiores et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(492, '2021-12-17 22:18:48', '2022-10-08 02:00:26', 1, 4, 3, NULL, 6.00, 73.00, NULL, 'paid', 'Excepturi qui aliquam est qui. Eos neque totam aut et totam cumque magni. Tempora minima voluptatem rerum aut est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(495, '2022-02-10 17:38:33', '2022-10-08 02:00:26', 1, 5, 2, NULL, 5.00, 55.00, NULL, 'paid', 'Ipsa atque fuga ratione accusantium. Quidem voluptate exercitationem ipsam non. Non consequuntur aut eos omnis quia eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(496, '2021-11-23 07:00:06', '2022-10-08 02:00:26', 2, 5, 3, NULL, 8.00, 80.00, NULL, 'paid', 'Qui molestias voluptas molestiae itaque sunt corporis. Vitae libero aut repellendus fuga saepe qui. Assumenda voluptate assumenda molestias ducimus aliquam. Quo non voluptatibus ea id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(498, '2022-02-23 07:44:51', '2022-10-08 02:00:26', 1, 4, 3, NULL, 5.00, 60.00, NULL, 'paid', 'Rerum rerum ratione reiciendis quia dolor ut sit. Libero quis nam tempora nobis corrupti quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(499, '2022-05-13 14:00:54', '2022-10-08 02:00:26', 4, 4, 2, NULL, 6.00, 97.00, NULL, 'paid', 'Vitae atque inventore et. Quia alias atque praesentium aliquid. Nihil nobis qui expedita omnis unde laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, ''),
(500, '2022-07-21 11:39:13', '2022-10-08 02:00:26', 2, 4, 2, NULL, 10.00, 42.00, NULL, 'paid', 'Aliquid quaerat blanditiis dolor odio. Iste nostrum omnis nobis consequatur occaecati et consectetur. Facere enim magni consequatur in. Nihil accusamus et ex optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `extras` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vat` double(8,2) DEFAULT 0.00,
  `vatvalue` double(8,2) DEFAULT 0.00,
  `variant_price` double(8,2) DEFAULT NULL,
  `variant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_has_status`
--

CREATE TABLE `order_has_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showAsLink` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$fwvYBu7r1gJriQIl6mEd7enauU6zFyBwBYaogeQ.UjNuQArMKacdy', '2022-10-08 12:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2022-10-08 01:55:42', '2022-10-08 01:55:42'),
(2, 'manage drivers', 'web', '2022-10-08 01:55:42', '2022-10-08 01:55:42'),
(3, 'manage orders', 'web', '2022-10-08 01:55:42', '2022-10-08 01:55:42'),
(4, 'edit settings', 'web', '2022-10-08 01:55:42', '2022-10-08 01:55:42'),
(5, 'view orders', 'web', '2022-10-08 01:55:43', '2022-10-08 01:55:43'),
(6, 'edit restorant', 'web', '2022-10-08 01:55:43', '2022-10-08 01:55:43'),
(7, 'edit orders', 'web', '2022-10-08 01:55:43', '2022-10-08 01:55:43'),
(8, 'access backedn', 'web', '2022-10-08 01:55:43', '2022-10-08 01:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_items` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `limit_orders` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `price` double(8,2) NOT NULL,
  `period` int(11) NOT NULL DEFAULT 1 COMMENT '1 - monthly, 2-anually',
  `paddle_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `features` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `limit_views` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `enable_ordering` int(11) NOT NULL DEFAULT 1,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `publisher_id_proof` varchar(191) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `publisher_contact` varchar(255) NOT NULL,
  `publisher_address` text NOT NULL,
  `publisher_email` varchar(255) NOT NULL,
  `publisher_password` varchar(255) NOT NULL,
  `bank_holder_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_IFSC` varchar(255) NOT NULL,
  `account_number` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `publisher_id_proof`, `publisher_name`, `publisher_contact`, `publisher_address`, `publisher_email`, `publisher_password`, `bank_holder_name`, `bank_name`, `bank_IFSC`, `account_number`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'Minerva Hayesd', '5146254896', '763 Sici Avenue', 'fot@example.com', 'p@ssw0rd', 'Lee Hanson', 'Alma Long', 'solceroravla', '4799706353887457', 1, '2022-10-13 18:49:53', '2022-10-14 12:26:19'),
(2, '', 'Jessie Hall', '4647365876', '143 Ehoik Circle', 'lopedi@mailinator.com', 'p@ssw0rd', 'Roy Oliver', 'Bruce Hunt', 'sohehuminusv', '4886437073718434', 1, '2022-10-13 23:17:13', '2022-10-13 23:17:13'),
(3, '', 'Ellen Walker', '3552868992', '354 Cilrej Loop', 'gikipi@mailinator.com', 'p@ssw0rd', 'Lucinda Dennis', 'Chris Horton', 'nusjifisfugi', '4928069549455224', 1, '2022-10-13 23:18:32', '2022-10-13 23:18:32'),
(4, '', 'Jeanette Haynes', '9059643115', '1788 Zoco River', 'hepah@example.com', 'p@ssw0rd', 'Lelia Austin', 'Lois Vega', 'afiawzudzuaw', '4204594223713304', 1, '2022-10-13 23:20:58', '2022-10-13 23:20:58'),
(5, '', 'Willie Mendez', '8706789151', '1681 Owaufo Circle', 'duku@mailinator.com', 'p@ssw0rd', 'Ernest Walsh', 'Samuel Fleming', 'sawmauruhodi', '4574760547896271', 1, '2022-10-13 23:23:16', '2022-10-13 23:23:16'),
(6, '', 'Estelle Bailey', '5624175143', '270 Opeje Place', 'otgul@mailinator.com', 'p@ssw0rd', 'Ida Warren', 'Barbara Abbott', 'zohibbolfeav', '4908483252058394', 1, '2022-10-13 23:24:35', '2022-10-13 23:24:35'),
(7, '', 'Lily Pratt', '4788249615', '1129 Epusak Park', 'jiltop@mailinator.com', 'p@ssw0rd', 'Lou Moss', 'May Powell', 'zuszatkisnes', '4372799588197169', 1, '2022-10-13 23:25:55', '2022-10-13 23:25:55'),
(8, '', 'Tanmay Sasvadkar', '9876598765', 'Lorem ipsum', 'tanmay@immersiveinfotech.com', '1234512345', 'Lorem', 'Lorem', 'asdf76', '778967878678678', 1, '2022-10-13 23:28:12', '2022-10-13 23:28:12'),
(15, '', 'Sylvia Arnold', '6665928262', '18 Powzuc Avenue', 'opgo@mailinator.com', 'p@ssw0rd', 'Bess Ortiz', 'Tom Rodriquez', 'funoekwizsic', '4653629652119569', 1, '2022-10-14 17:46:03', '2022-10-14 17:46:03'),
(11, '', 'Steve Abbott', '9125371919', '1258 Pedum Square', 'curme@mailinator.com', 'p@ssw0rd', 'Isaac Griffin', 'Adrian Beck', 'barehjuropbo', '4469540913067634', 1, '2022-10-14 17:25:21', '2022-10-14 17:25:21'),
(16, '', 'Margaret Marsh', '7176064792', '31 Hupo Boulevard', 'vanmasa@mailinator.com', 'p@ssw0rd', 'Tony Carr', 'Lillie Stanley', 'niwoulmucold', '4120282407559724', 1, '2022-10-14 17:47:45', '2022-10-14 17:47:45'),
(14, '', 'Cecelia Sparks', '7507494427', '143 Utouli Boulevard', 'eptip@mailinator.com', 'p@ssw0rd', 'Myra Holt', 'Floyd Watkins', 'jebneribusul', '4708435924834687', 1, '2022-10-14 17:39:05', '2022-10-14 17:39:05'),
(17, '', 'Atul Pawade', '8754992000', '1190 Zepub Manor', 'atul@mailinator.com', 'p@ssw0rd', 'Roger Griffin', 'Mittie Powers', 'miwiwuceroin', '4979031074606090', 1, '2022-10-14 17:50:38', '2022-10-14 17:50:38'),
(18, '', 'Atul Pawade', '5693938528', '242 Valju Pike', 'atul@immersiveinfotech.com', 'p@ssw0rd', 'Alexander Harrison', 'Mario Saunders', 'doiklikmooce', '4863709958852935', 1, '2022-10-14 17:54:05', '2022-10-14 17:54:05'),
(19, '', 'Eric Adams', '6313427677', '577 Arazo Drive', 'okocob@mailinator.com', 'p@ssw0rd', 'Harriett Lucas', 'Addie Watson', 'rabcoceddadu', '4611293995271420', 1, '2022-10-14 17:54:56', '2022-10-14 17:54:56'),
(20, '', 'Sai Book', '9009789123', 'MG Road indoe', 'tanmaysasvadkar@gmail.com', 'tanmay7800', 'Sai Book', 'ICICI', 'ICICI00401', '7895455747885', 1, '2022-10-17 15:06:33', '2022-10-19 15:34:45'),
(21, '21_publisher.png', 'Pushpendra Patel', '8287877543', 'Indore', 'pushpendra1363@gmail.com', '1234512345', 'Test', 'Test', '77777', '777777777', 0, '2022-10-17 18:33:29', '2022-10-18 18:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restoareas`
--

CREATE TABLE `restoareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restoareas`
--

INSERT INTO `restoareas` (`id`, `name`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Inside', 2, NULL, NULL, NULL),
(4, 'Terrasse', 2, NULL, NULL, NULL),
(5, 'Inside', 3, NULL, NULL, NULL),
(6, 'Terrasse', 3, NULL, NULL, NULL),
(7, 'Inside', 4, NULL, NULL, NULL),
(8, 'Terrasse', 4, NULL, NULL, NULL),
(9, 'Inside', 5, NULL, NULL, NULL),
(10, 'Terrasse', 5, NULL, NULL, NULL),
(11, 'Inside', 6, NULL, NULL, NULL),
(12, 'Terrasse', 6, NULL, NULL, NULL),
(13, 'Inside', 7, NULL, NULL, NULL),
(14, 'Terrasse', 7, NULL, NULL, NULL),
(15, 'Inside', 8, NULL, NULL, NULL),
(16, 'Terrasse', 8, NULL, NULL, NULL),
(17, 'Inside', 9, NULL, NULL, NULL),
(18, 'Terrasse', 9, NULL, NULL, NULL),
(19, 'Inside', 10, NULL, NULL, NULL),
(20, 'Terrasse', 10, NULL, NULL, NULL),
(21, 'Inside', 11, NULL, NULL, NULL),
(22, 'Terrasse', 11, NULL, NULL, NULL),
(23, 'Inside', 12, NULL, NULL, NULL),
(24, 'Terrasse', 12, NULL, NULL, NULL),
(25, 'Inside', 13, NULL, NULL, NULL),
(26, 'Terrasse', 13, NULL, NULL, NULL),
(27, 'Inside', 14, NULL, NULL, NULL),
(28, 'Terrasse', 14, NULL, NULL, NULL),
(29, 'Inside', 15, NULL, NULL, NULL),
(30, 'Terrasse', 15, NULL, NULL, NULL),
(31, 'Inside', 16, NULL, NULL, NULL),
(32, 'Terrasse', 16, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restorants`
--

CREATE TABLE `restorants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fee` double(8,2) NOT NULL DEFAULT 0.00,
  `static_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `radius` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `city_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `can_pickup` int(11) NOT NULL DEFAULT 1,
  `can_deliver` int(11) NOT NULL DEFAULT 1,
  `self_deliver` int(11) NOT NULL DEFAULT 0,
  `free_deliver` int(11) NOT NULL DEFAULT 0,
  `whatsapp_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_covertion` int(11) NOT NULL DEFAULT 1,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_payment_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restorants`
--

INSERT INTO `restorants` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`, `radius`, `is_featured`, `city_id`, `views`, `can_pickup`, `can_deliver`, `self_deliver`, `free_deliver`, `whatsapp_phone`, `fb_username`, `do_covertion`, `currency`, `payment_info`, `mollie_payment_key`) VALUES
(2, '2022-10-08 01:56:23', '2022-10-08 01:56:23', 'Oasis Burgers', 'oasisburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', '', 1, 2, '40.588894', '-73.939175', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(3, '2022-10-08 01:56:26', '2022-10-08 01:56:26', 'Brooklyn Taco', 'brooklyntaco', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', '', 1, 2, '40.607402', '-73.987272', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(4, '2022-10-08 01:56:28', '2022-10-08 01:56:28', 'The Brooklyn tree', 'thebrooklyntree', 'https://foodtiger.mobidonia.com/uploads/restorants/6fa5233f-00f3-4f52-950c-5a1705583dfc', '', 1, 2, '40.621997', '-73.938831', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(5, '2022-10-08 01:56:59', '2022-10-08 01:56:59', 'Awang Italian Restorant', 'awangitalianrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', '', 1, 2, '40.716729', '-73.793035', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(6, '2022-10-08 01:57:27', '2022-10-08 01:57:27', 'Wendy Taco', 'wendytaco', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', '', 1, 2, '40.751418', '-73.809531', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(7, '2022-10-08 01:57:29', '2022-10-08 01:57:29', 'Burger 2Go', 'burger2go', 'https://foodtiger.mobidonia.com/uploads/restorants/80a49037-07e9-4e28-b23e-66fd641c1c77', '', 1, 2, '40.753759', '-73.799224', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(8, '2022-10-08 01:57:31', '2022-10-08 01:57:31', 'Titan Foods', 'titanfoods', 'https://foodtiger.mobidonia.com/uploads/restorants/56e90ea7-5321-4cfd-8b2c-918ccd3c3f77', '', 1, 2, '40.749078', '-73.812623', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(9, '2022-10-08 01:58:01', '2022-10-08 01:58:01', 'Pizza Manhattn', 'pizzamanhattn', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.726358', '-73.996879', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(10, '2022-10-08 01:58:30', '2022-10-08 01:58:30', 'il Buco', 'ilbuco', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.724883', '-74.001985', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(11, '2022-10-08 01:58:32', '2022-10-08 01:58:32', 'Vandal Burgers', 'vandalburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.724102', '-73.999064', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(12, '2022-10-08 01:58:35', '2022-10-08 01:58:35', 'Malibu Diner', 'malibudiner', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.717857', '-74.004561', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(13, '2022-10-08 01:59:10', '2022-10-08 01:59:10', 'Pizza Relham', 'pizzarelham', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.842930', '-73.866629', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(14, '2022-10-08 01:59:41', '2022-10-08 01:59:41', 'NorWood Burito', 'norwoodburito', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.850218', '-73.887522', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(15, '2022-10-08 01:59:45', '2022-10-08 01:59:45', 'Morris Park Burger', 'morrisparkburger', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.842427', '-73.866908', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(16, '2022-10-08 01:59:53', '2022-10-08 01:59:53', 'Bronx VanNest Restorant', 'bronxvannestrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.832557', '-73.889583', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-10-08 01:55:41', '2022-10-08 01:55:41'),
(2, 'owner', 'web', '2022-10-08 01:55:42', '2022-10-08 01:55:42'),
(3, 'driver', 'web', '2022-10-08 01:55:42', '2022-10-08 01:55:42'),
(4, 'client', 'web', '2022-10-08 01:55:42', '2022-10-08 01:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_details_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restorant_details_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maps_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery` double(8,2) NOT NULL DEFAULT 0.00,
  `typeform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `site_logo_dark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`, `site_logo_dark`, `order_fields`, `admin_commission`) VALUES
(1, '2022-10-08 01:55:41', '2022-12-01 13:06:01', 'Morvi', 'ad1d328f-a8a2-4b63-9011-6726ea640694', 'efb4f7f4-41b4-4d5e-8790-8e2c5f229eb3', '250e8831-4d63-43a1-96f1-6f7b515f4fc7', '/default/cover.jpg', 'Morvi', 'Morvi', 'Morvi', 'USD', '', '', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 50.00, '', 'Morvi', '', '{}', '/default/logo.png', NULL, '30');

-- --------------------------------------------------------

--
-- Table structure for table `sms_verifications`
--

CREATE TABLE `sms_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `alias`) VALUES
(1, 'Just created', 'just_created'),
(2, 'Accepted by admin', 'accepted_by_admin'),
(3, 'Accepted by restaurant', 'accepted_by_restaurant'),
(4, 'Assigned to driver', 'assigned_to_driver'),
(5, 'Prepared', 'prepared'),
(6, 'Picked up', 'picked_up'),
(7, 'Delivered', 'delivered'),
(8, 'Rejected by admin', 'rejected_by_admin'),
(9, 'Rejected by restaurant', 'rejected_by_restaurant'),
(10, 'Updated', 'updated'),
(11, 'Closed', 'closed'),
(12, 'Rejected by driver', 'rejected_by_driver'),
(13, 'Accepted by driver', 'accepted_by_driver');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL DEFAULT 4,
  `restoarea_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `size`, `restoarea_id`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 'Table 1', 4, 3, 2, NULL, NULL, NULL),
(17, 'Table 2', 4, 3, 2, NULL, NULL, NULL),
(18, 'Table 3', 4, 3, 2, NULL, NULL, NULL),
(19, 'Table 4', 4, 3, 2, NULL, NULL, NULL),
(20, 'Table 5', 4, 3, 2, NULL, NULL, NULL),
(21, 'Table 6', 4, 3, 2, NULL, NULL, NULL),
(22, 'Table 7', 4, 3, 2, NULL, NULL, NULL),
(23, 'Table 8', 4, 3, 2, NULL, NULL, NULL),
(24, 'Table 9', 4, 3, 2, NULL, NULL, NULL),
(25, 'Table 10', 4, 3, 2, NULL, NULL, NULL),
(26, 'Table 1', 4, 4, 2, NULL, NULL, NULL),
(27, 'Table 2', 4, 4, 2, NULL, NULL, NULL),
(28, 'Table 3', 4, 4, 2, NULL, NULL, NULL),
(29, 'Table 4', 4, 4, 2, NULL, NULL, NULL),
(30, 'Table 5', 4, 4, 2, NULL, NULL, NULL),
(31, 'Table 1', 4, 5, 3, NULL, NULL, NULL),
(32, 'Table 2', 4, 5, 3, NULL, NULL, NULL),
(33, 'Table 3', 4, 5, 3, NULL, NULL, NULL),
(34, 'Table 4', 4, 5, 3, NULL, NULL, NULL),
(35, 'Table 5', 4, 5, 3, NULL, NULL, NULL),
(36, 'Table 6', 4, 5, 3, NULL, NULL, NULL),
(37, 'Table 7', 4, 5, 3, NULL, NULL, NULL),
(38, 'Table 8', 4, 5, 3, NULL, NULL, NULL),
(39, 'Table 9', 4, 5, 3, NULL, NULL, NULL),
(40, 'Table 10', 4, 5, 3, NULL, NULL, NULL),
(41, 'Table 1', 4, 6, 3, NULL, NULL, NULL),
(42, 'Table 2', 4, 6, 3, NULL, NULL, NULL),
(43, 'Table 3', 4, 6, 3, NULL, NULL, NULL),
(44, 'Table 4', 4, 6, 3, NULL, NULL, NULL),
(45, 'Table 5', 4, 6, 3, NULL, NULL, NULL),
(46, 'Table 1', 4, 7, 4, NULL, NULL, NULL),
(47, 'Table 2', 4, 7, 4, NULL, NULL, NULL),
(48, 'Table 3', 4, 7, 4, NULL, NULL, NULL),
(49, 'Table 4', 4, 7, 4, NULL, NULL, NULL),
(50, 'Table 5', 4, 7, 4, NULL, NULL, NULL),
(51, 'Table 6', 4, 7, 4, NULL, NULL, NULL),
(52, 'Table 7', 4, 7, 4, NULL, NULL, NULL),
(53, 'Table 8', 4, 7, 4, NULL, NULL, NULL),
(54, 'Table 9', 4, 7, 4, NULL, NULL, NULL),
(55, 'Table 10', 4, 7, 4, NULL, NULL, NULL),
(56, 'Table 1', 4, 8, 4, NULL, NULL, NULL),
(57, 'Table 2', 4, 8, 4, NULL, NULL, NULL),
(58, 'Table 3', 4, 8, 4, NULL, NULL, NULL),
(59, 'Table 4', 4, 8, 4, NULL, NULL, NULL),
(60, 'Table 5', 4, 8, 4, NULL, NULL, NULL),
(61, 'Table 1', 4, 9, 5, NULL, NULL, NULL),
(62, 'Table 2', 4, 9, 5, NULL, NULL, NULL),
(63, 'Table 3', 4, 9, 5, NULL, NULL, NULL),
(64, 'Table 4', 4, 9, 5, NULL, NULL, NULL),
(65, 'Table 5', 4, 9, 5, NULL, NULL, NULL),
(66, 'Table 6', 4, 9, 5, NULL, NULL, NULL),
(67, 'Table 7', 4, 9, 5, NULL, NULL, NULL),
(68, 'Table 8', 4, 9, 5, NULL, NULL, NULL),
(69, 'Table 9', 4, 9, 5, NULL, NULL, NULL),
(70, 'Table 10', 4, 9, 5, NULL, NULL, NULL),
(71, 'Table 1', 4, 10, 5, NULL, NULL, NULL),
(72, 'Table 2', 4, 10, 5, NULL, NULL, NULL),
(73, 'Table 3', 4, 10, 5, NULL, NULL, NULL),
(74, 'Table 4', 4, 10, 5, NULL, NULL, NULL),
(75, 'Table 5', 4, 10, 5, NULL, NULL, NULL),
(76, 'Table 1', 4, 11, 6, NULL, NULL, NULL),
(77, 'Table 2', 4, 11, 6, NULL, NULL, NULL),
(78, 'Table 3', 4, 11, 6, NULL, NULL, NULL),
(79, 'Table 4', 4, 11, 6, NULL, NULL, NULL),
(80, 'Table 5', 4, 11, 6, NULL, NULL, NULL),
(81, 'Table 6', 4, 11, 6, NULL, NULL, NULL),
(82, 'Table 7', 4, 11, 6, NULL, NULL, NULL),
(83, 'Table 8', 4, 11, 6, NULL, NULL, NULL),
(84, 'Table 9', 4, 11, 6, NULL, NULL, NULL),
(85, 'Table 10', 4, 11, 6, NULL, NULL, NULL),
(86, 'Table 1', 4, 12, 6, NULL, NULL, NULL),
(87, 'Table 2', 4, 12, 6, NULL, NULL, NULL),
(88, 'Table 3', 4, 12, 6, NULL, NULL, NULL),
(89, 'Table 4', 4, 12, 6, NULL, NULL, NULL),
(90, 'Table 5', 4, 12, 6, NULL, NULL, NULL),
(91, 'Table 1', 4, 13, 7, NULL, NULL, NULL),
(92, 'Table 2', 4, 13, 7, NULL, NULL, NULL),
(93, 'Table 3', 4, 13, 7, NULL, NULL, NULL),
(94, 'Table 4', 4, 13, 7, NULL, NULL, NULL),
(95, 'Table 5', 4, 13, 7, NULL, NULL, NULL),
(96, 'Table 6', 4, 13, 7, NULL, NULL, NULL),
(97, 'Table 7', 4, 13, 7, NULL, NULL, NULL),
(98, 'Table 8', 4, 13, 7, NULL, NULL, NULL),
(99, 'Table 9', 4, 13, 7, NULL, NULL, NULL),
(100, 'Table 10', 4, 13, 7, NULL, NULL, NULL),
(101, 'Table 1', 4, 14, 7, NULL, NULL, NULL),
(102, 'Table 2', 4, 14, 7, NULL, NULL, NULL),
(103, 'Table 3', 4, 14, 7, NULL, NULL, NULL),
(104, 'Table 4', 4, 14, 7, NULL, NULL, NULL),
(105, 'Table 5', 4, 14, 7, NULL, NULL, NULL),
(106, 'Table 1', 4, 15, 8, NULL, NULL, NULL),
(107, 'Table 2', 4, 15, 8, NULL, NULL, NULL),
(108, 'Table 3', 4, 15, 8, NULL, NULL, NULL),
(109, 'Table 4', 4, 15, 8, NULL, NULL, NULL),
(110, 'Table 5', 4, 15, 8, NULL, NULL, NULL),
(111, 'Table 6', 4, 15, 8, NULL, NULL, NULL),
(112, 'Table 7', 4, 15, 8, NULL, NULL, NULL),
(113, 'Table 8', 4, 15, 8, NULL, NULL, NULL),
(114, 'Table 9', 4, 15, 8, NULL, NULL, NULL),
(115, 'Table 10', 4, 15, 8, NULL, NULL, NULL),
(116, 'Table 1', 4, 16, 8, NULL, NULL, NULL),
(117, 'Table 2', 4, 16, 8, NULL, NULL, NULL),
(118, 'Table 3', 4, 16, 8, NULL, NULL, NULL),
(119, 'Table 4', 4, 16, 8, NULL, NULL, NULL),
(120, 'Table 5', 4, 16, 8, NULL, NULL, NULL),
(121, 'Table 1', 4, 17, 9, NULL, NULL, NULL),
(122, 'Table 2', 4, 17, 9, NULL, NULL, NULL),
(123, 'Table 3', 4, 17, 9, NULL, NULL, NULL),
(124, 'Table 4', 4, 17, 9, NULL, NULL, NULL),
(125, 'Table 5', 4, 17, 9, NULL, NULL, NULL),
(126, 'Table 6', 4, 17, 9, NULL, NULL, NULL),
(127, 'Table 7', 4, 17, 9, NULL, NULL, NULL),
(128, 'Table 8', 4, 17, 9, NULL, NULL, NULL),
(129, 'Table 9', 4, 17, 9, NULL, NULL, NULL),
(130, 'Table 10', 4, 17, 9, NULL, NULL, NULL),
(131, 'Table 1', 4, 18, 9, NULL, NULL, NULL),
(132, 'Table 2', 4, 18, 9, NULL, NULL, NULL),
(133, 'Table 3', 4, 18, 9, NULL, NULL, NULL),
(134, 'Table 4', 4, 18, 9, NULL, NULL, NULL),
(135, 'Table 5', 4, 18, 9, NULL, NULL, NULL),
(136, 'Table 1', 4, 19, 10, NULL, NULL, NULL),
(137, 'Table 2', 4, 19, 10, NULL, NULL, NULL),
(138, 'Table 3', 4, 19, 10, NULL, NULL, NULL),
(139, 'Table 4', 4, 19, 10, NULL, NULL, NULL),
(140, 'Table 5', 4, 19, 10, NULL, NULL, NULL),
(141, 'Table 6', 4, 19, 10, NULL, NULL, NULL),
(142, 'Table 7', 4, 19, 10, NULL, NULL, NULL),
(143, 'Table 8', 4, 19, 10, NULL, NULL, NULL),
(144, 'Table 9', 4, 19, 10, NULL, NULL, NULL),
(145, 'Table 10', 4, 19, 10, NULL, NULL, NULL),
(146, 'Table 1', 4, 20, 10, NULL, NULL, NULL),
(147, 'Table 2', 4, 20, 10, NULL, NULL, NULL),
(148, 'Table 3', 4, 20, 10, NULL, NULL, NULL),
(149, 'Table 4', 4, 20, 10, NULL, NULL, NULL),
(150, 'Table 5', 4, 20, 10, NULL, NULL, NULL),
(151, 'Table 1', 4, 21, 11, NULL, NULL, NULL),
(152, 'Table 2', 4, 21, 11, NULL, NULL, NULL),
(153, 'Table 3', 4, 21, 11, NULL, NULL, NULL),
(154, 'Table 4', 4, 21, 11, NULL, NULL, NULL),
(155, 'Table 5', 4, 21, 11, NULL, NULL, NULL),
(156, 'Table 6', 4, 21, 11, NULL, NULL, NULL),
(157, 'Table 7', 4, 21, 11, NULL, NULL, NULL),
(158, 'Table 8', 4, 21, 11, NULL, NULL, NULL),
(159, 'Table 9', 4, 21, 11, NULL, NULL, NULL),
(160, 'Table 10', 4, 21, 11, NULL, NULL, NULL),
(161, 'Table 1', 4, 22, 11, NULL, NULL, NULL),
(162, 'Table 2', 4, 22, 11, NULL, NULL, NULL),
(163, 'Table 3', 4, 22, 11, NULL, NULL, NULL),
(164, 'Table 4', 4, 22, 11, NULL, NULL, NULL),
(165, 'Table 5', 4, 22, 11, NULL, NULL, NULL),
(166, 'Table 1', 4, 23, 12, NULL, NULL, NULL),
(167, 'Table 2', 4, 23, 12, NULL, NULL, NULL),
(168, 'Table 3', 4, 23, 12, NULL, NULL, NULL),
(169, 'Table 4', 4, 23, 12, NULL, NULL, NULL),
(170, 'Table 5', 4, 23, 12, NULL, NULL, NULL),
(171, 'Table 6', 4, 23, 12, NULL, NULL, NULL),
(172, 'Table 7', 4, 23, 12, NULL, NULL, NULL),
(173, 'Table 8', 4, 23, 12, NULL, NULL, NULL),
(174, 'Table 9', 4, 23, 12, NULL, NULL, NULL),
(175, 'Table 10', 4, 23, 12, NULL, NULL, NULL),
(176, 'Table 1', 4, 24, 12, NULL, NULL, NULL),
(177, 'Table 2', 4, 24, 12, NULL, NULL, NULL),
(178, 'Table 3', 4, 24, 12, NULL, NULL, NULL),
(179, 'Table 4', 4, 24, 12, NULL, NULL, NULL),
(180, 'Table 5', 4, 24, 12, NULL, NULL, NULL),
(181, 'Table 1', 4, 25, 13, NULL, NULL, NULL),
(182, 'Table 2', 4, 25, 13, NULL, NULL, NULL),
(183, 'Table 3', 4, 25, 13, NULL, NULL, NULL),
(184, 'Table 4', 4, 25, 13, NULL, NULL, NULL),
(185, 'Table 5', 4, 25, 13, NULL, NULL, NULL),
(186, 'Table 6', 4, 25, 13, NULL, NULL, NULL),
(187, 'Table 7', 4, 25, 13, NULL, NULL, NULL),
(188, 'Table 8', 4, 25, 13, NULL, NULL, NULL),
(189, 'Table 9', 4, 25, 13, NULL, NULL, NULL),
(190, 'Table 10', 4, 25, 13, NULL, NULL, NULL),
(191, 'Table 1', 4, 26, 13, NULL, NULL, NULL),
(192, 'Table 2', 4, 26, 13, NULL, NULL, NULL),
(193, 'Table 3', 4, 26, 13, NULL, NULL, NULL),
(194, 'Table 4', 4, 26, 13, NULL, NULL, NULL),
(195, 'Table 5', 4, 26, 13, NULL, NULL, NULL),
(196, 'Table 1', 4, 27, 14, NULL, NULL, NULL),
(197, 'Table 2', 4, 27, 14, NULL, NULL, NULL),
(198, 'Table 3', 4, 27, 14, NULL, NULL, NULL),
(199, 'Table 4', 4, 27, 14, NULL, NULL, NULL),
(200, 'Table 5', 4, 27, 14, NULL, NULL, NULL),
(201, 'Table 6', 4, 27, 14, NULL, NULL, NULL),
(202, 'Table 7', 4, 27, 14, NULL, NULL, NULL),
(203, 'Table 8', 4, 27, 14, NULL, NULL, NULL),
(204, 'Table 9', 4, 27, 14, NULL, NULL, NULL),
(205, 'Table 10', 4, 27, 14, NULL, NULL, NULL),
(206, 'Table 1', 4, 28, 14, NULL, NULL, NULL),
(207, 'Table 2', 4, 28, 14, NULL, NULL, NULL),
(208, 'Table 3', 4, 28, 14, NULL, NULL, NULL),
(209, 'Table 4', 4, 28, 14, NULL, NULL, NULL),
(210, 'Table 5', 4, 28, 14, NULL, NULL, NULL),
(211, 'Table 1', 4, 29, 15, NULL, NULL, NULL),
(212, 'Table 2', 4, 29, 15, NULL, NULL, NULL),
(213, 'Table 3', 4, 29, 15, NULL, NULL, NULL),
(214, 'Table 4', 4, 29, 15, NULL, NULL, NULL),
(215, 'Table 5', 4, 29, 15, NULL, NULL, NULL),
(216, 'Table 6', 4, 29, 15, NULL, NULL, NULL),
(217, 'Table 7', 4, 29, 15, NULL, NULL, NULL),
(218, 'Table 8', 4, 29, 15, NULL, NULL, NULL),
(219, 'Table 9', 4, 29, 15, NULL, NULL, NULL),
(220, 'Table 10', 4, 29, 15, NULL, NULL, NULL),
(221, 'Table 1', 4, 30, 15, NULL, NULL, NULL),
(222, 'Table 2', 4, 30, 15, NULL, NULL, NULL),
(223, 'Table 3', 4, 30, 15, NULL, NULL, NULL),
(224, 'Table 4', 4, 30, 15, NULL, NULL, NULL),
(225, 'Table 5', 4, 30, 15, NULL, NULL, NULL),
(226, 'Table 1', 4, 31, 16, NULL, NULL, NULL),
(227, 'Table 2', 4, 31, 16, NULL, NULL, NULL),
(228, 'Table 3', 4, 31, 16, NULL, NULL, NULL),
(229, 'Table 4', 4, 31, 16, NULL, NULL, NULL),
(230, 'Table 5', 4, 31, 16, NULL, NULL, NULL),
(231, 'Table 6', 4, 31, 16, NULL, NULL, NULL),
(232, 'Table 7', 4, 31, 16, NULL, NULL, NULL),
(233, 'Table 8', 4, 31, 16, NULL, NULL, NULL),
(234, 'Table 9', 4, 31, 16, NULL, NULL, NULL),
(235, 'Table 10', 4, 31, 16, NULL, NULL, NULL),
(236, 'Table 1', 4, 32, 16, NULL, NULL, NULL),
(237, 'Table 2', 4, 32, 16, NULL, NULL, NULL),
(238, 'Table 3', 4, 32, 16, NULL, NULL, NULL),
(239, 'Table 4', 4, 32, 16, NULL, NULL, NULL),
(240, 'Table 5', 4, 32, 16, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Admin, 1=User, 2=Publisher, 3=Coaching',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `bc_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `apple_id`, `role`, `name`, `email`, `password`, `phone`, `image`, `address`, `description`, `remember_token`, `created_at`, `updated_at`, `active`, `bc_id`) VALUES
(1, 'NULL', 'NULL', 'NULL', 0, 'Admin', 'admin@morvi.com', '$2y$10$7YbrSnzF8j68BmE.6IJePuh96qrSf1DINUtaA1WLdR4lati5ZZ6..', '1234512345', '', '', '', 'eXyRx4qhyFCplBEnzGeYX4tdtIhQa64dceHU3949OraSW9b7KbZL9fAstU63', '2022-10-07 20:25:41', '2022-12-01 12:49:18', 1, 'NULL'),
(2, 'QAZ221354DFGSDF98456', NULL, '', 1, 'Lorem', 'lorem1@mailinator.com', '$2y$10$2fmZz5Q.gIVaZd.DnR18DupxIj8wvAnKYTM9eiFokZ2jNNzQLGaS.', NULL, '', '', '', NULL, '2022-10-31 13:16:56', '2022-10-31 13:16:56', 1, ''),
(3, NULL, NULL, 'QAZ221354DFGSDF98456', 1, 'Lorem', 'lorem2@mailinator.com', '$2y$10$7uKX8e.0kSw7gof1R/q7sudehlNq/TBSslkbcqD/7kTFgYs2ZU25u', NULL, '', '', '', NULL, '2022-10-31 13:17:58', '2022-10-31 13:17:58', 1, ''),
(4, NULL, NULL, '', 1, 'Nikhil', 'nikhil.sahu@gmail.com', '$2y$10$.hmnrZNJDSgllQ82cUFhBe49RZ2iHtTsdJjLf4VRHLE5A0.kylWMK', '8349337625', '', '', '', NULL, '2022-11-06 08:15:10', '2022-11-06 08:15:10', 1, ''),
(5, NULL, NULL, '', 1, 'Nikhil', 'nikhi.sahu@gmail.com', '$2y$10$Z/jiotIInEsaLYNrtnOcmeCKLIoVYVrNXodY5gHgMOsHSYb6JxJSu', '8349337627', '', '', '', NULL, '2022-11-06 08:17:51', '2022-11-06 08:17:51', 1, ''),
(6, NULL, NULL, '', 1, 'Nikhil', 'nikhi.sah@gmail.com', '$2y$10$a5bzDuBT7BaVaSzy9ATYCewBufENPmBKYZMT5.PfCOUet7Zbd76fm', '8349337620', '', '', '', NULL, '2022-11-06 08:18:42', '2022-11-06 08:18:42', 1, ''),
(7, NULL, NULL, '', 1, 'Nikhil', 'nikhi.sahss@gmail.com', '$2y$10$dSab5OmVYKFMwFUla3OVUeTa5DVr2GtBc71vuqDSlo9RGhNDlASEO', '8349337611', '', '', '', NULL, '2022-11-06 08:19:39', '2022-11-06 08:19:39', 1, ''),
(8, NULL, NULL, '', 1, 'Nikhil', 'nikhi.sahs@gmail.com', '$2y$10$qAyMgYnF72vOjytywGFNHushmprvpPWubRMCVl0YCWch6UYBYM7Y2', '8349337610', '', '', '', NULL, '2022-11-06 08:20:04', '2022-11-06 08:20:04', 1, ''),
(9, NULL, NULL, '', 1, 'Nikhi', 'nikh@gmail.com', '$2y$10$KjqRSYbHdZ6THzvqFqdIfu7OZlvdC7OH8wwbsqiFxI8vgUF0q6GmS', '1234567890', '', '', '', NULL, '2022-11-06 08:22:07', '2022-11-06 08:22:07', 1, ''),
(10, NULL, NULL, '', 1, 'Nikhi', 'nik@gmail.com', '$2y$10$GcTOc05qnVmSCmZ.FQdan.0NZu05Dl5jlYp2j/VcjRKYsGF0zDgXq', '1234567891', '', '', '', NULL, '2022-11-06 08:23:43', '2022-11-06 08:23:43', 1, ''),
(11, NULL, NULL, '', 1, 'Nikhi', 'ni@gmail.com', '$2y$10$/4jd3UWxmeisxYlXDGyokeO/eUoUTOUKSqn.3P12dLe.HYCM/Qf46', '2234567891', '', '', '', NULL, '2022-11-06 08:25:30', '2022-11-06 08:25:30', 1, ''),
(12, NULL, NULL, '', 1, 'Nikhi', 'niaa@gmail.com', '$2y$10$Gapuqn8hmyeShwlmJIW10uva4KoYa5N2Ysgyitp2/ncNwOQylZkcC', '2234567893', '', '', '', NULL, '2022-11-06 08:26:04', '2022-11-06 08:26:04', 1, ''),
(13, NULL, NULL, '', 1, 'Nikhi', 'nia2@gmail.com', '$2y$10$xbPPpcbQarE9Od7qpAXtlO2AT2euKqAnqkeyzOAaxFqsxmthxq..e', '2234567894', '', '', '', NULL, '2022-11-06 08:26:23', '2022-11-06 08:26:23', 1, ''),
(14, NULL, NULL, '', 1, 'Nikhi', 'nia22@gmail.com', '$2y$10$VkiZyAe3iC9ixDqcImTU5OehBEC6ExmtXido7qhl.ySPNmuzzinQi', '2234567892', '', '', '', NULL, '2022-11-06 08:29:04', '2022-11-06 08:29:04', 1, ''),
(15, NULL, NULL, '', 1, 'Nikhi', 'nia25@gmail.com', '$2y$10$ApZFVMp87t1y99QU929Hq./QWeNQakF/NpeW5T3kIdWPm1fIoAd/G', '2234567895', '', '', '', NULL, '2022-11-06 08:29:19', '2022-11-06 08:29:19', 1, ''),
(16, NULL, NULL, '', 1, 'Nikhi', 'nia28@gmail.com', '$2y$10$qqhxr1nSZF9bTCEZYK.g../G147OY8qNv.3QVTmGCp9HdswNqVwEm', '2234567888', '', '', '', NULL, '2022-11-06 08:30:09', '2022-11-06 08:30:09', 1, ''),
(17, NULL, NULL, '', 1, 'Lorem', 'lorem07@mailinator.com', '$2y$10$dhNEZ6tVEVXExvZLRJ/okukJCovYQwovPGU2Bf0cy6kedwTnhysQK', '7896541230', '', '', '', NULL, '2022-11-07 05:03:11', '2022-11-07 05:03:11', 1, ''),
(18, NULL, NULL, 'ZAQWS123CDE', 1, 'Lorem', 'lorem1107@mailinator.com', '$2y$10$HA8Jdbu6n83.IHV6I/jO4OcjWzZFcswL5DOxFaqJcnlr9ryRevvsa', NULL, '', '', '', NULL, '2022-11-07 05:06:50', '2022-11-07 05:06:50', 1, ''),
(19, NULL, NULL, '', 2, 'Publisher 1', 'publisher@mailinator.com', '$2y$10$uIqcDra7533mj8ld1OUCUOew3fbmiZTOmDcEhYpKW6z38cmaAjmLa', '7894561230', '', 'Lorem ipsum lorem ipsum', '', NULL, '2022-11-10 11:45:28', '2022-11-10 11:45:28', 1, ''),
(20, NULL, NULL, '', 2, 'Publisher 2', 'publisher2@mailinator.com', '$2y$10$Vx7OOYJDmh4km0Nqv09p2eSeyGy87A4W6/jOfsqLwhYh4HhDHG4VS', '7894561230', '205401_publisher.png', 'Lorem ipsum', '', NULL, '2022-11-10 11:59:38', '2022-11-10 12:51:37', 1, ''),
(21, NULL, NULL, '', 2, 'Publisher3', 'publisher3@mailinator.com', '$2y$10$xGHjmR9M7tQposDMXhSiNewMIQqbAGjXit9ogfJKPy7kn/aYGQq4i', '741025896', '219689_publisher.png', 'Lorem ipsum lorem ipsum', '', NULL, '2022-11-11 09:29:39', '2022-11-11 09:29:39', 1, ''),
(22, NULL, NULL, '', 3, 'Coaching1', 'coaching11@mailinator.com', '$2y$10$PYIMhhDpDpS3mKT9./qIcODJ7Z09ERjb/UHDb/XRmXNAJkYDOuCtO', '74102589631', '22636_coaching.png', '', '<p>This is for test demo description&nbsp; 555</p>', NULL, '2022-11-11 10:06:25', '2022-11-18 09:42:56', 1, ''),
(23, NULL, NULL, '', 1, 'himanshu', 'himanshu@gmail.com', '$2y$10$/ua5yKBJVU4t7aeQmmUg6.bf5hYnfPWBRXlVibY6nkwkd9WB4iYn2', '6386473010', '', '', '', NULL, '2022-11-14 16:41:42', '2022-11-14 16:41:42', 1, ''),
(24, NULL, NULL, '', 1, 'vivek', 'vivek@gmail.com', '$2y$10$DTGJ6f5WE2HwHup6fnDq1eW0J3xg9.II55jzJ8vq8Z6H2I9Itggiq', '1234556788999', '', '', '', NULL, '2022-11-15 05:14:09', '2022-11-15 05:14:09', 1, ''),
(25, NULL, NULL, '', 2, 'Om Book Depo', 'publisher5@mailinator.com', '$2y$10$gP4FmogGrCQn7Tv.fUyi1Oihzbl1UuMqQUhwEMr0Y27TcFyY.bT.S', '6665434444', '254903_publisher.png', 'This is book for Sanskrit UPSC exam', '', NULL, '2022-11-18 09:38:09', '2022-11-18 09:38:09', 1, ''),
(26, NULL, NULL, '', 3, 'Immersiveinfotech', 'tanmay@immersiveinfotech.com', '$2y$10$1P5pqy9ZmzPvJXk7GevUCuGALBEoCp5vO7SbT80A1kESuDof9AAMW', '90999999999', '26816_coaching.png', '', '<p>This is for UPSC exam book</p>', NULL, '2022-11-18 09:46:58', '2022-11-18 09:46:58', 1, ''),
(27, NULL, NULL, '', 1, 'umar', 'mansuriumar89@gmail.com', '$2y$10$FVRZ1WJ14huYsnkXisgf.uVFJxBUe5zbj0JS8IUw4Um7g6PHkrv/a', '8770555583', '', '', '', NULL, '2022-11-21 18:25:06', '2022-11-21 18:25:06', 1, ''),
(28, NULL, NULL, '', 1, 'abc', 'a@gmail.com', '$2y$10$i4pe2njTuUPnwGw6MPt3U.f5WunBi94zK5nvqyW03e4ypakX8x4zq', '1234567899', '', '', '', NULL, '2022-11-21 19:30:30', '2022-11-22 19:40:38', 1, 'NjcwMjg2'),
(29, NULL, NULL, '', 1, 'h@1', 'test01@gmail.com', '$2y$10$VVek3l6/GPX2kg6OVY1KU.ESQl0CPfZsjirFeOlcPuZcD04z.5CW.', '0000000000', '', '', '', NULL, '2022-11-22 06:54:10', '2022-11-22 06:54:10', 1, ''),
(30, NULL, NULL, '', 1, '111', 'testing19@mailinator.com', '$2y$10$LN7bS9mXkNAvghwwsa2I5eNcOGe9S57QWq/k.ZK0ggoO4HtBHx2lu', '8236966379', '', '', '', NULL, '2022-11-22 07:00:58', '2022-11-22 07:00:58', 1, ''),
(31, NULL, NULL, '', 1, 'Chandresh', 'test36@mailinator.com', '$2y$10$3jJYp39rV2ezErEcGw4Uo.7jxYU1guo9wy/mkLqn6XsU1ilRvCPdS', '7582970904', '', '', '', NULL, '2022-11-22 07:18:34', '2022-11-22 07:18:34', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_banks`
--

CREATE TABLE `users_banks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_holder_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_IFSC` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_banks`
--

INSERT INTO `users_banks` (`id`, `user_id`, `bank_holder_name`, `bank_name`, `account_number`, `bank_IFSC`, `status`, `created_at`, `updated_at`) VALUES
(1, 20, 'Lorem ipsum', 'Lorem ipsum', '123123', 'QAZ789465', 1, '2022-11-10 17:29:39', '2022-11-10 17:29:39'),
(2, 21, 'LOREM', 'Lorem ipsum', '78945612', '7410258', 1, '2022-11-11 14:59:39', '2022-11-11 14:59:39'),
(3, 22, 'Lorem', 'Lorem ipsum', '7896541230', '545456IUYT', 1, '2022-11-11 15:36:26', '2022-11-11 15:36:26'),
(4, 25, 'Lorem', 'Lorem', '67888899888888', '7878SDFG898', 1, '2022-11-18 15:08:09', '2022-11-18 15:08:09'),
(5, 26, 'Immersive', 'ICICI', '8789787897897', '676DFG7676', 1, '2022-11-18 15:16:58', '2022-11-18 15:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `users_deleted`
--

CREATE TABLE `users_deleted` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Inactive,1=active',
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `package_limit` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `otp_generation_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_info` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bc_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `enable_qty` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(133, 10.99, '{\"23\":\"small\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL),
(134, 11.99, '{\"23\":\"small\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:31', '2022-10-08 01:56:31', NULL),
(135, 12.99, '{\"23\":\"small\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(136, 13.99, '{\"23\":\"medium\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(137, 14.99, '{\"23\":\"medium\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(138, 15.99, '{\"23\":\"medium\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(139, 16.99, '{\"23\":\"large\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(140, 17.99, '{\"23\":\"large\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(141, 18.99, '{\"23\":\"large\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(142, 19.99, '{\"23\":\"family\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:32', '2022-10-08 01:56:32', NULL),
(143, 20.99, '{\"23\":\"family\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:33', '2022-10-08 01:56:33', NULL),
(144, 21.99, '{\"23\":\"family\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2022-10-08 01:56:33', '2022-10-08 01:56:33', NULL),
(145, 14.99, '{\"25\":\"small\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:35', '2022-10-08 01:56:35', NULL),
(146, 15.99, '{\"25\":\"small\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:35', '2022-10-08 01:56:35', NULL),
(147, 16.99, '{\"25\":\"small\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:36', '2022-10-08 01:56:36', NULL),
(148, 17.99, '{\"25\":\"medium\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:36', '2022-10-08 01:56:36', NULL),
(149, 18.99, '{\"25\":\"medium\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:36', '2022-10-08 01:56:36', NULL),
(150, 19.99, '{\"25\":\"medium\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:36', '2022-10-08 01:56:36', NULL),
(151, 20.99, '{\"25\":\"large\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:36', '2022-10-08 01:56:36', NULL),
(152, 21.99, '{\"25\":\"large\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:36', '2022-10-08 01:56:36', NULL),
(153, 22.99, '{\"25\":\"large\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL),
(154, 23.99, '{\"25\":\"family\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL),
(155, 24.99, '{\"25\":\"family\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL),
(156, 25.99, '{\"25\":\"family\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2022-10-08 01:56:37', '2022-10-08 01:56:37', NULL),
(157, 14.99, '{\"27\":\"small\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:38', '2022-10-08 01:56:38', NULL),
(158, 15.99, '{\"27\":\"small\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:38', '2022-10-08 01:56:38', NULL),
(159, 16.99, '{\"27\":\"small\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:38', '2022-10-08 01:56:38', NULL),
(160, 17.99, '{\"27\":\"medium\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:38', '2022-10-08 01:56:38', NULL),
(161, 18.99, '{\"27\":\"medium\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:39', '2022-10-08 01:56:39', NULL),
(162, 19.99, '{\"27\":\"medium\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:39', '2022-10-08 01:56:39', NULL),
(163, 20.99, '{\"27\":\"large\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:39', '2022-10-08 01:56:39', NULL),
(164, 21.99, '{\"27\":\"large\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:39', '2022-10-08 01:56:39', NULL),
(165, 22.99, '{\"27\":\"large\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:39', '2022-10-08 01:56:39', NULL),
(166, 23.99, '{\"27\":\"family\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL),
(167, 24.99, '{\"27\":\"family\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL),
(168, 25.99, '{\"27\":\"family\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2022-10-08 01:56:40', '2022-10-08 01:56:40', NULL),
(169, 14.99, '{\"29\":\"small\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(170, 15.99, '{\"29\":\"small\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(171, 16.99, '{\"29\":\"small\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(172, 17.99, '{\"29\":\"medium\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(173, 18.99, '{\"29\":\"medium\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(174, 19.99, '{\"29\":\"medium\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(175, 20.99, '{\"29\":\"large\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:41', '2022-10-08 01:56:41', NULL),
(176, 21.99, '{\"29\":\"large\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:42', '2022-10-08 01:56:42', NULL),
(177, 22.99, '{\"29\":\"large\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:42', '2022-10-08 01:56:42', NULL),
(178, 23.99, '{\"29\":\"family\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:42', '2022-10-08 01:56:42', NULL),
(179, 24.99, '{\"29\":\"family\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:42', '2022-10-08 01:56:42', NULL),
(180, 25.99, '{\"29\":\"family\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2022-10-08 01:56:42', '2022-10-08 01:56:42', NULL),
(181, 14.99, '{\"31\":\"small\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(182, 15.99, '{\"31\":\"small\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(183, 16.99, '{\"31\":\"small\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(184, 17.99, '{\"31\":\"medium\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(185, 18.99, '{\"31\":\"medium\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(186, 19.99, '{\"31\":\"medium\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(187, 20.99, '{\"31\":\"large\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(188, 21.99, '{\"31\":\"large\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:43', '2022-10-08 01:56:43', NULL),
(189, 22.99, '{\"31\":\"large\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL),
(190, 23.99, '{\"31\":\"family\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL),
(191, 24.99, '{\"31\":\"family\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL),
(192, 25.99, '{\"31\":\"family\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2022-10-08 01:56:44', '2022-10-08 01:56:44', NULL),
(193, 14.99, '{\"33\":\"small\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(194, 15.99, '{\"33\":\"small\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(195, 16.99, '{\"33\":\"small\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(196, 17.99, '{\"33\":\"medium\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(197, 18.99, '{\"33\":\"medium\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(198, 19.99, '{\"33\":\"medium\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(199, 20.99, '{\"33\":\"large\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(200, 21.99, '{\"33\":\"large\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:45', '2022-10-08 01:56:45', NULL),
(201, 22.99, '{\"33\":\"large\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:46', '2022-10-08 01:56:46', NULL),
(202, 23.99, '{\"33\":\"family\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:46', '2022-10-08 01:56:46', NULL),
(203, 24.99, '{\"33\":\"family\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:46', '2022-10-08 01:56:46', NULL),
(204, 25.99, '{\"33\":\"family\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2022-10-08 01:56:46', '2022-10-08 01:56:46', NULL),
(205, 10.49, '{\"35\":\"small\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:47', '2022-10-08 01:56:47', NULL),
(206, 11.49, '{\"35\":\"small\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:47', '2022-10-08 01:56:47', NULL),
(207, 12.49, '{\"35\":\"small\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:48', '2022-10-08 01:56:48', NULL),
(208, 13.49, '{\"35\":\"medium\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:48', '2022-10-08 01:56:48', NULL),
(209, 14.49, '{\"35\":\"medium\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:48', '2022-10-08 01:56:48', NULL),
(210, 15.49, '{\"35\":\"medium\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:48', '2022-10-08 01:56:48', NULL),
(211, 16.49, '{\"35\":\"large\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:48', '2022-10-08 01:56:48', NULL),
(212, 17.49, '{\"35\":\"large\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:49', '2022-10-08 01:56:49', NULL),
(213, 18.49, '{\"35\":\"large\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:49', '2022-10-08 01:56:49', NULL),
(214, 19.49, '{\"35\":\"family\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:49', '2022-10-08 01:56:49', NULL),
(215, 20.49, '{\"35\":\"family\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:49', '2022-10-08 01:56:49', NULL),
(216, 21.49, '{\"35\":\"family\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL),
(217, 39.99, '{\"37\":\"small\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL),
(218, 40.99, '{\"37\":\"small\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:50', '2022-10-08 01:56:50', NULL),
(219, 41.99, '{\"37\":\"small\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(220, 42.99, '{\"37\":\"medium\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(221, 43.99, '{\"37\":\"medium\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(222, 44.99, '{\"37\":\"medium\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(223, 45.99, '{\"37\":\"large\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(224, 46.99, '{\"37\":\"large\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(225, 47.99, '{\"37\":\"large\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(226, 48.99, '{\"37\":\"family\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:51', '2022-10-08 01:56:51', NULL),
(227, 49.99, '{\"37\":\"family\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL),
(228, 50.99, '{\"37\":\"family\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL),
(229, 14.99, '{\"39\":\"small\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:52', '2022-10-08 01:56:52', NULL),
(230, 15.99, '{\"39\":\"small\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:53', '2022-10-08 01:56:53', NULL),
(231, 16.99, '{\"39\":\"small\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:53', '2022-10-08 01:56:53', NULL),
(232, 17.99, '{\"39\":\"medium\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:53', '2022-10-08 01:56:53', NULL),
(233, 18.99, '{\"39\":\"medium\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:53', '2022-10-08 01:56:53', NULL),
(234, 19.99, '{\"39\":\"medium\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:53', '2022-10-08 01:56:53', NULL),
(235, 20.99, '{\"39\":\"large\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:53', '2022-10-08 01:56:53', NULL),
(236, 21.99, '{\"39\":\"large\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL),
(237, 22.99, '{\"39\":\"large\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL),
(238, 23.99, '{\"39\":\"family\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL),
(239, 24.99, '{\"39\":\"family\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL),
(240, 25.99, '{\"39\":\"family\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2022-10-08 01:56:54', '2022-10-08 01:56:54', NULL),
(241, 14.99, '{\"41\":\"small\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(242, 15.99, '{\"41\":\"small\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(243, 16.99, '{\"41\":\"small\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(244, 17.99, '{\"41\":\"medium\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(245, 18.99, '{\"41\":\"medium\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(246, 19.99, '{\"41\":\"medium\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(247, 20.99, '{\"41\":\"large\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(248, 21.99, '{\"41\":\"large\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:55', '2022-10-08 01:56:55', NULL),
(249, 22.99, '{\"41\":\"large\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL),
(250, 23.99, '{\"41\":\"family\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL),
(251, 24.99, '{\"41\":\"family\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL),
(252, 25.99, '{\"41\":\"family\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL),
(253, 14.99, '{\"43\":\"small\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:56', '2022-10-08 01:56:56', NULL),
(254, 15.99, '{\"43\":\"small\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:57', '2022-10-08 01:56:57', NULL),
(255, 16.99, '{\"43\":\"small\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:57', '2022-10-08 01:56:57', NULL),
(256, 17.99, '{\"43\":\"medium\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:57', '2022-10-08 01:56:57', NULL),
(257, 18.99, '{\"43\":\"medium\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:57', '2022-10-08 01:56:57', NULL),
(258, 19.99, '{\"43\":\"medium\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:57', '2022-10-08 01:56:57', NULL),
(259, 20.99, '{\"43\":\"large\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:57', '2022-10-08 01:56:57', NULL),
(260, 21.99, '{\"43\":\"large\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:57', '2022-10-08 01:56:57', NULL),
(261, 22.99, '{\"43\":\"large\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:58', '2022-10-08 01:56:58', NULL),
(262, 23.99, '{\"43\":\"family\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:58', '2022-10-08 01:56:58', NULL),
(263, 24.99, '{\"43\":\"family\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:58', '2022-10-08 01:56:58', NULL),
(264, 25.99, '{\"43\":\"family\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2022-10-08 01:56:58', '2022-10-08 01:56:58', NULL),
(265, 10.99, '{\"45\":\"small\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL),
(266, 11.99, '{\"45\":\"small\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL),
(267, 12.99, '{\"45\":\"small\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:02', '2022-10-08 01:57:02', NULL),
(268, 13.99, '{\"45\":\"medium\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:03', '2022-10-08 01:57:03', NULL),
(269, 14.99, '{\"45\":\"medium\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:03', '2022-10-08 01:57:03', NULL),
(270, 15.99, '{\"45\":\"medium\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:03', '2022-10-08 01:57:03', NULL),
(271, 16.99, '{\"45\":\"large\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:03', '2022-10-08 01:57:03', NULL),
(272, 17.99, '{\"45\":\"large\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:03', '2022-10-08 01:57:03', NULL),
(273, 18.99, '{\"45\":\"large\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:03', '2022-10-08 01:57:03', NULL),
(274, 19.99, '{\"45\":\"family\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:04', '2022-10-08 01:57:04', NULL),
(275, 20.99, '{\"45\":\"family\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:04', '2022-10-08 01:57:04', NULL),
(276, 21.99, '{\"45\":\"family\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2022-10-08 01:57:04', '2022-10-08 01:57:04', NULL),
(277, 14.99, '{\"47\":\"small\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(278, 15.99, '{\"47\":\"small\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(279, 16.99, '{\"47\":\"small\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(280, 17.99, '{\"47\":\"medium\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(281, 18.99, '{\"47\":\"medium\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(282, 19.99, '{\"47\":\"medium\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(283, 20.99, '{\"47\":\"large\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:07', '2022-10-08 01:57:07', NULL),
(284, 21.99, '{\"47\":\"large\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL),
(285, 22.99, '{\"47\":\"large\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL),
(286, 23.99, '{\"47\":\"family\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL),
(287, 24.99, '{\"47\":\"family\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL),
(288, 25.99, '{\"47\":\"family\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2022-10-08 01:57:08', '2022-10-08 01:57:08', NULL),
(289, 14.99, '{\"49\":\"small\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(290, 15.99, '{\"49\":\"small\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(291, 16.99, '{\"49\":\"small\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(292, 17.99, '{\"49\":\"medium\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(293, 18.99, '{\"49\":\"medium\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(294, 19.99, '{\"49\":\"medium\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(295, 20.99, '{\"49\":\"large\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(296, 21.99, '{\"49\":\"large\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(297, 22.99, '{\"49\":\"large\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(298, 23.99, '{\"49\":\"family\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:09', '2022-10-08 01:57:09', NULL),
(299, 24.99, '{\"49\":\"family\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL),
(300, 25.99, '{\"49\":\"family\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL),
(301, 14.99, '{\"51\":\"small\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL),
(302, 15.99, '{\"51\":\"small\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:10', '2022-10-08 01:57:10', NULL),
(303, 16.99, '{\"51\":\"small\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(304, 17.99, '{\"51\":\"medium\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(305, 18.99, '{\"51\":\"medium\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(306, 19.99, '{\"51\":\"medium\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(307, 20.99, '{\"51\":\"large\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(308, 21.99, '{\"51\":\"large\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(309, 22.99, '{\"51\":\"large\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(310, 23.99, '{\"51\":\"family\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(311, 24.99, '{\"51\":\"family\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(312, 25.99, '{\"51\":\"family\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2022-10-08 01:57:11', '2022-10-08 01:57:11', NULL),
(313, 14.99, '{\"53\":\"small\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(314, 15.99, '{\"53\":\"small\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(315, 16.99, '{\"53\":\"small\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(316, 17.99, '{\"53\":\"medium\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(317, 18.99, '{\"53\":\"medium\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(318, 19.99, '{\"53\":\"medium\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(319, 20.99, '{\"53\":\"large\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(320, 21.99, '{\"53\":\"large\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(321, 22.99, '{\"53\":\"large\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:12', '2022-10-08 01:57:12', NULL),
(322, 23.99, '{\"53\":\"family\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(323, 24.99, '{\"53\":\"family\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(324, 25.99, '{\"53\":\"family\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(325, 14.99, '{\"55\":\"small\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(326, 15.99, '{\"55\":\"small\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(327, 16.99, '{\"55\":\"small\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:13', '2022-10-08 01:57:13', NULL),
(328, 17.99, '{\"55\":\"medium\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:14', '2022-10-08 01:57:14', NULL),
(329, 18.99, '{\"55\":\"medium\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:14', '2022-10-08 01:57:14', NULL),
(330, 19.99, '{\"55\":\"medium\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:14', '2022-10-08 01:57:14', NULL),
(331, 20.99, '{\"55\":\"large\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:14', '2022-10-08 01:57:14', NULL),
(332, 21.99, '{\"55\":\"large\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:14', '2022-10-08 01:57:14', NULL),
(333, 22.99, '{\"55\":\"large\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:14', '2022-10-08 01:57:14', NULL),
(334, 23.99, '{\"55\":\"family\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL),
(335, 24.99, '{\"55\":\"family\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL),
(336, 25.99, '{\"55\":\"family\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2022-10-08 01:57:15', '2022-10-08 01:57:15', NULL),
(337, 10.49, '{\"57\":\"small\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:16', '2022-10-08 01:57:16', NULL),
(338, 11.49, '{\"57\":\"small\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:16', '2022-10-08 01:57:16', NULL),
(339, 12.49, '{\"57\":\"small\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:16', '2022-10-08 01:57:16', NULL),
(340, 13.49, '{\"57\":\"medium\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:16', '2022-10-08 01:57:16', NULL),
(341, 14.49, '{\"57\":\"medium\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:16', '2022-10-08 01:57:16', NULL),
(342, 15.49, '{\"57\":\"medium\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:17', '2022-10-08 01:57:17', NULL),
(343, 16.49, '{\"57\":\"large\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:17', '2022-10-08 01:57:17', NULL),
(344, 17.49, '{\"57\":\"large\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:17', '2022-10-08 01:57:17', NULL),
(345, 18.49, '{\"57\":\"large\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:17', '2022-10-08 01:57:17', NULL),
(346, 19.49, '{\"57\":\"family\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:17', '2022-10-08 01:57:17', NULL),
(347, 20.49, '{\"57\":\"family\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL),
(348, 21.49, '{\"57\":\"family\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL),
(349, 39.99, '{\"59\":\"small\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL),
(350, 40.99, '{\"59\":\"small\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:18', '2022-10-08 01:57:18', NULL),
(351, 41.99, '{\"59\":\"small\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:19', '2022-10-08 01:57:19', NULL),
(352, 42.99, '{\"59\":\"medium\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:19', '2022-10-08 01:57:19', NULL),
(353, 43.99, '{\"59\":\"medium\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:19', '2022-10-08 01:57:19', NULL),
(354, 44.99, '{\"59\":\"medium\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:19', '2022-10-08 01:57:19', NULL),
(355, 45.99, '{\"59\":\"large\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:19', '2022-10-08 01:57:19', NULL),
(356, 46.99, '{\"59\":\"large\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:19', '2022-10-08 01:57:19', NULL),
(357, 47.99, '{\"59\":\"large\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:19', '2022-10-08 01:57:19', NULL),
(358, 48.99, '{\"59\":\"family\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL),
(359, 49.99, '{\"59\":\"family\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL),
(360, 50.99, '{\"59\":\"family\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL),
(361, 14.99, '{\"61\":\"small\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:20', '2022-10-08 01:57:20', NULL),
(362, 15.99, '{\"61\":\"small\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(363, 16.99, '{\"61\":\"small\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(364, 17.99, '{\"61\":\"medium\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(365, 18.99, '{\"61\":\"medium\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(366, 19.99, '{\"61\":\"medium\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(367, 20.99, '{\"61\":\"large\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(368, 21.99, '{\"61\":\"large\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(369, 22.99, '{\"61\":\"large\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(370, 23.99, '{\"61\":\"family\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(371, 24.99, '{\"61\":\"family\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(372, 25.99, '{\"61\":\"family\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2022-10-08 01:57:21', '2022-10-08 01:57:21', NULL),
(373, 14.99, '{\"63\":\"small\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL),
(374, 15.99, '{\"63\":\"small\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL),
(375, 16.99, '{\"63\":\"small\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL),
(376, 17.99, '{\"63\":\"medium\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:22', '2022-10-08 01:57:22', NULL),
(377, 18.99, '{\"63\":\"medium\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(378, 19.99, '{\"63\":\"medium\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(379, 20.99, '{\"63\":\"large\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(380, 21.99, '{\"63\":\"large\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(381, 22.99, '{\"63\":\"large\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(382, 23.99, '{\"63\":\"family\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(383, 24.99, '{\"63\":\"family\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(384, 25.99, '{\"63\":\"family\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2022-10-08 01:57:23', '2022-10-08 01:57:23', NULL),
(385, 14.99, '{\"65\":\"small\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(386, 15.99, '{\"65\":\"small\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(387, 16.99, '{\"65\":\"small\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(388, 17.99, '{\"65\":\"medium\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(389, 18.99, '{\"65\":\"medium\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(390, 19.99, '{\"65\":\"medium\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(391, 20.99, '{\"65\":\"large\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(392, 21.99, '{\"65\":\"large\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(393, 22.99, '{\"65\":\"large\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:24', '2022-10-08 01:57:24', NULL),
(394, 23.99, '{\"65\":\"family\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL),
(395, 24.99, '{\"65\":\"family\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL),
(396, 25.99, '{\"65\":\"family\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2022-10-08 01:57:25', '2022-10-08 01:57:25', NULL),
(397, 10.99, '{\"67\":\"small\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL),
(398, 11.99, '{\"67\":\"small\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL),
(399, 12.99, '{\"67\":\"small\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL),
(400, 13.99, '{\"67\":\"medium\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:34', '2022-10-08 01:57:34', NULL),
(401, 14.99, '{\"67\":\"medium\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:35', '2022-10-08 01:57:35', NULL),
(402, 15.99, '{\"67\":\"medium\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:35', '2022-10-08 01:57:35', NULL),
(403, 16.99, '{\"67\":\"large\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:35', '2022-10-08 01:57:35', NULL),
(404, 17.99, '{\"67\":\"large\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(405, 18.99, '{\"67\":\"large\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(406, 19.99, '{\"67\":\"family\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(407, 20.99, '{\"67\":\"family\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(408, 21.99, '{\"67\":\"family\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(409, 14.99, '{\"69\":\"small\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:36', '2022-10-08 01:57:36', NULL),
(410, 15.99, '{\"69\":\"small\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:37', '2022-10-08 01:57:37', NULL),
(411, 16.99, '{\"69\":\"small\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:37', '2022-10-08 01:57:37', NULL),
(412, 17.99, '{\"69\":\"medium\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:37', '2022-10-08 01:57:37', NULL),
(413, 18.99, '{\"69\":\"medium\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:37', '2022-10-08 01:57:37', NULL),
(414, 19.99, '{\"69\":\"medium\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:37', '2022-10-08 01:57:37', NULL),
(415, 20.99, '{\"69\":\"large\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:37', '2022-10-08 01:57:37', NULL),
(416, 21.99, '{\"69\":\"large\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:37', '2022-10-08 01:57:37', NULL),
(417, 22.99, '{\"69\":\"large\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(418, 23.99, '{\"69\":\"family\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(419, 24.99, '{\"69\":\"family\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(420, 25.99, '{\"69\":\"family\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(421, 14.99, '{\"71\":\"small\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(422, 15.99, '{\"71\":\"small\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:38', '2022-10-08 01:57:38', NULL),
(423, 16.99, '{\"71\":\"small\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(424, 17.99, '{\"71\":\"medium\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(425, 18.99, '{\"71\":\"medium\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(426, 19.99, '{\"71\":\"medium\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(427, 20.99, '{\"71\":\"large\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(428, 21.99, '{\"71\":\"large\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(429, 22.99, '{\"71\":\"large\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(430, 23.99, '{\"71\":\"family\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:39', '2022-10-08 01:57:39', NULL),
(431, 24.99, '{\"71\":\"family\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:40', '2022-10-08 01:57:40', NULL),
(432, 25.99, '{\"71\":\"family\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2022-10-08 01:57:40', '2022-10-08 01:57:40', NULL),
(433, 14.99, '{\"73\":\"small\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(434, 15.99, '{\"73\":\"small\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(435, 16.99, '{\"73\":\"small\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(436, 17.99, '{\"73\":\"medium\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(437, 18.99, '{\"73\":\"medium\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(438, 19.99, '{\"73\":\"medium\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(439, 20.99, '{\"73\":\"large\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(440, 21.99, '{\"73\":\"large\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:41', '2022-10-08 01:57:41', NULL),
(441, 22.99, '{\"73\":\"large\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:42', '2022-10-08 01:57:42', NULL),
(442, 23.99, '{\"73\":\"family\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:42', '2022-10-08 01:57:42', NULL),
(443, 24.99, '{\"73\":\"family\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:42', '2022-10-08 01:57:42', NULL),
(444, 25.99, '{\"73\":\"family\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2022-10-08 01:57:42', '2022-10-08 01:57:42', NULL),
(445, 14.99, '{\"75\":\"small\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL),
(446, 15.99, '{\"75\":\"small\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL),
(447, 16.99, '{\"75\":\"small\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL),
(448, 17.99, '{\"75\":\"medium\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:43', '2022-10-08 01:57:43', NULL),
(449, 18.99, '{\"75\":\"medium\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(450, 19.99, '{\"75\":\"medium\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(451, 20.99, '{\"75\":\"large\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(452, 21.99, '{\"75\":\"large\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(453, 22.99, '{\"75\":\"large\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(454, 23.99, '{\"75\":\"family\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(455, 24.99, '{\"75\":\"family\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(456, 25.99, '{\"75\":\"family\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2022-10-08 01:57:44', '2022-10-08 01:57:44', NULL),
(457, 14.99, '{\"77\":\"small\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:45', '2022-10-08 01:57:45', NULL),
(458, 15.99, '{\"77\":\"small\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:46', '2022-10-08 01:57:46', NULL),
(459, 16.99, '{\"77\":\"small\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:46', '2022-10-08 01:57:46', NULL),
(460, 17.99, '{\"77\":\"medium\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:46', '2022-10-08 01:57:46', NULL),
(461, 18.99, '{\"77\":\"medium\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:46', '2022-10-08 01:57:46', NULL),
(462, 19.99, '{\"77\":\"medium\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:46', '2022-10-08 01:57:46', NULL),
(463, 20.99, '{\"77\":\"large\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:46', '2022-10-08 01:57:46', NULL),
(464, 21.99, '{\"77\":\"large\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:47', '2022-10-08 01:57:47', NULL),
(465, 22.99, '{\"77\":\"large\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:47', '2022-10-08 01:57:47', NULL),
(466, 23.99, '{\"77\":\"family\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:47', '2022-10-08 01:57:47', NULL),
(467, 24.99, '{\"77\":\"family\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:47', '2022-10-08 01:57:47', NULL),
(468, 25.99, '{\"77\":\"family\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2022-10-08 01:57:47', '2022-10-08 01:57:47', NULL),
(469, 10.49, '{\"79\":\"small\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL),
(470, 11.49, '{\"79\":\"small\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL),
(471, 12.49, '{\"79\":\"small\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:48', '2022-10-08 01:57:48', NULL),
(472, 13.49, '{\"79\":\"medium\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:49', '2022-10-08 01:57:49', NULL),
(473, 14.49, '{\"79\":\"medium\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:49', '2022-10-08 01:57:49', NULL),
(474, 15.49, '{\"79\":\"medium\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:49', '2022-10-08 01:57:49', NULL),
(475, 16.49, '{\"79\":\"large\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:49', '2022-10-08 01:57:49', NULL),
(476, 17.49, '{\"79\":\"large\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:49', '2022-10-08 01:57:49', NULL),
(477, 18.49, '{\"79\":\"large\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:49', '2022-10-08 01:57:49', NULL),
(478, 19.49, '{\"79\":\"family\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:49', '2022-10-08 01:57:49', NULL),
(479, 20.49, '{\"79\":\"family\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:50', '2022-10-08 01:57:50', NULL),
(480, 21.49, '{\"79\":\"family\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2022-10-08 01:57:50', '2022-10-08 01:57:50', NULL),
(481, 39.99, '{\"81\":\"small\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:51', '2022-10-08 01:57:51', NULL),
(482, 40.99, '{\"81\":\"small\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:51', '2022-10-08 01:57:51', NULL),
(483, 41.99, '{\"81\":\"small\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:52', '2022-10-08 01:57:52', NULL),
(484, 42.99, '{\"81\":\"medium\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:52', '2022-10-08 01:57:52', NULL),
(485, 43.99, '{\"81\":\"medium\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:52', '2022-10-08 01:57:52', NULL),
(486, 44.99, '{\"81\":\"medium\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:52', '2022-10-08 01:57:52', NULL),
(487, 45.99, '{\"81\":\"large\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:52', '2022-10-08 01:57:52', NULL),
(488, 46.99, '{\"81\":\"large\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:53', '2022-10-08 01:57:53', NULL),
(489, 47.99, '{\"81\":\"large\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:53', '2022-10-08 01:57:53', NULL),
(490, 48.99, '{\"81\":\"family\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:53', '2022-10-08 01:57:53', NULL),
(491, 49.99, '{\"81\":\"family\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:53', '2022-10-08 01:57:53', NULL),
(492, 50.99, '{\"81\":\"family\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2022-10-08 01:57:54', '2022-10-08 01:57:54', NULL),
(493, 14.99, '{\"83\":\"small\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:55', '2022-10-08 01:57:55', NULL),
(494, 15.99, '{\"83\":\"small\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:55', '2022-10-08 01:57:55', NULL),
(495, 16.99, '{\"83\":\"small\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:55', '2022-10-08 01:57:55', NULL),
(496, 17.99, '{\"83\":\"medium\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:55', '2022-10-08 01:57:55', NULL),
(497, 18.99, '{\"83\":\"medium\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:56', '2022-10-08 01:57:56', NULL),
(498, 19.99, '{\"83\":\"medium\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:56', '2022-10-08 01:57:56', NULL),
(499, 20.99, '{\"83\":\"large\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:56', '2022-10-08 01:57:56', NULL),
(500, 21.99, '{\"83\":\"large\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:56', '2022-10-08 01:57:56', NULL),
(501, 22.99, '{\"83\":\"large\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:56', '2022-10-08 01:57:56', NULL),
(502, 23.99, '{\"83\":\"family\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL),
(503, 24.99, '{\"83\":\"family\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL),
(504, 25.99, '{\"83\":\"family\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2022-10-08 01:57:57', '2022-10-08 01:57:57', NULL),
(505, 14.99, '{\"85\":\"small\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:58', '2022-10-08 01:57:58', NULL),
(506, 15.99, '{\"85\":\"small\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:58', '2022-10-08 01:57:58', NULL),
(507, 16.99, '{\"85\":\"small\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:58', '2022-10-08 01:57:58', NULL),
(508, 17.99, '{\"85\":\"medium\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:58', '2022-10-08 01:57:58', NULL),
(509, 18.99, '{\"85\":\"medium\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:58', '2022-10-08 01:57:58', NULL),
(510, 19.99, '{\"85\":\"medium\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:58', '2022-10-08 01:57:58', NULL),
(511, 20.99, '{\"85\":\"large\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:58', '2022-10-08 01:57:58', NULL),
(512, 21.99, '{\"85\":\"large\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL),
(513, 22.99, '{\"85\":\"large\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL),
(514, 23.99, '{\"85\":\"family\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL),
(515, 24.99, '{\"85\":\"family\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL),
(516, 25.99, '{\"85\":\"family\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2022-10-08 01:57:59', '2022-10-08 01:57:59', NULL),
(517, 14.99, '{\"87\":\"small\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(518, 15.99, '{\"87\":\"small\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(519, 16.99, '{\"87\":\"small\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(520, 17.99, '{\"87\":\"medium\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(521, 18.99, '{\"87\":\"medium\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(522, 19.99, '{\"87\":\"medium\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:00', '2022-10-08 01:58:00', NULL),
(523, 20.99, '{\"87\":\"large\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:01', '2022-10-08 01:58:01', NULL),
(524, 21.99, '{\"87\":\"large\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:01', '2022-10-08 01:58:01', NULL);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(525, 22.99, '{\"87\":\"large\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:01', '2022-10-08 01:58:01', NULL),
(526, 23.99, '{\"87\":\"family\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:01', '2022-10-08 01:58:01', NULL),
(527, 24.99, '{\"87\":\"family\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:01', '2022-10-08 01:58:01', NULL),
(528, 25.99, '{\"87\":\"family\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2022-10-08 01:58:01', '2022-10-08 01:58:01', NULL),
(529, 10.99, '{\"89\":\"small\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(530, 11.99, '{\"89\":\"small\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(531, 12.99, '{\"89\":\"small\",\"90\":\"double-decker\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(532, 13.99, '{\"89\":\"medium\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(533, 14.99, '{\"89\":\"medium\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(534, 15.99, '{\"89\":\"medium\",\"90\":\"double-decker\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(535, 16.99, '{\"89\":\"large\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:04', '2022-10-08 01:58:04', NULL),
(536, 17.99, '{\"89\":\"large\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:05', '2022-10-08 01:58:05', NULL),
(537, 18.99, '{\"89\":\"large\",\"90\":\"double-decker\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:05', '2022-10-08 01:58:05', NULL),
(538, 19.99, '{\"89\":\"family\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:05', '2022-10-08 01:58:05', NULL),
(539, 20.99, '{\"89\":\"family\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:05', '2022-10-08 01:58:05', NULL),
(540, 21.99, '{\"89\":\"family\",\"90\":\"double-decker\"}', '', 0, 0, 0, 171, '2022-10-08 01:58:05', '2022-10-08 01:58:05', NULL),
(541, 14.99, '{\"91\":\"small\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:06', '2022-10-08 01:58:06', NULL),
(542, 15.99, '{\"91\":\"small\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:07', '2022-10-08 01:58:07', NULL),
(543, 16.99, '{\"91\":\"small\",\"92\":\"double-decker\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:07', '2022-10-08 01:58:07', NULL),
(544, 17.99, '{\"91\":\"medium\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:07', '2022-10-08 01:58:07', NULL),
(545, 18.99, '{\"91\":\"medium\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:07', '2022-10-08 01:58:07', NULL),
(546, 19.99, '{\"91\":\"medium\",\"92\":\"double-decker\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:07', '2022-10-08 01:58:07', NULL),
(547, 20.99, '{\"91\":\"large\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:07', '2022-10-08 01:58:07', NULL),
(548, 21.99, '{\"91\":\"large\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:08', '2022-10-08 01:58:08', NULL),
(549, 22.99, '{\"91\":\"large\",\"92\":\"double-decker\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:08', '2022-10-08 01:58:08', NULL),
(550, 23.99, '{\"91\":\"family\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:08', '2022-10-08 01:58:08', NULL),
(551, 24.99, '{\"91\":\"family\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:08', '2022-10-08 01:58:08', NULL),
(552, 25.99, '{\"91\":\"family\",\"92\":\"double-decker\"}', '', 0, 0, 0, 172, '2022-10-08 01:58:08', '2022-10-08 01:58:08', NULL),
(553, 14.99, '{\"93\":\"small\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL),
(554, 15.99, '{\"93\":\"small\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL),
(555, 16.99, '{\"93\":\"small\",\"94\":\"double-decker\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL),
(556, 17.99, '{\"93\":\"medium\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:09', '2022-10-08 01:58:09', NULL),
(557, 18.99, '{\"93\":\"medium\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:10', '2022-10-08 01:58:10', NULL),
(558, 19.99, '{\"93\":\"medium\",\"94\":\"double-decker\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:10', '2022-10-08 01:58:10', NULL),
(559, 20.99, '{\"93\":\"large\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:12', '2022-10-08 01:58:12', NULL),
(560, 21.99, '{\"93\":\"large\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:12', '2022-10-08 01:58:12', NULL),
(561, 22.99, '{\"93\":\"large\",\"94\":\"double-decker\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:12', '2022-10-08 01:58:12', NULL),
(562, 23.99, '{\"93\":\"family\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:13', '2022-10-08 01:58:13', NULL),
(563, 24.99, '{\"93\":\"family\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:13', '2022-10-08 01:58:13', NULL),
(564, 25.99, '{\"93\":\"family\",\"94\":\"double-decker\"}', '', 0, 0, 0, 173, '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL),
(565, 14.99, '{\"95\":\"small\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL),
(566, 15.99, '{\"95\":\"small\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL),
(567, 16.99, '{\"95\":\"small\",\"96\":\"double-decker\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL),
(568, 17.99, '{\"95\":\"medium\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:14', '2022-10-08 01:58:14', NULL),
(569, 18.99, '{\"95\":\"medium\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(570, 19.99, '{\"95\":\"medium\",\"96\":\"double-decker\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(571, 20.99, '{\"95\":\"large\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(572, 21.99, '{\"95\":\"large\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(573, 22.99, '{\"95\":\"large\",\"96\":\"double-decker\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(574, 23.99, '{\"95\":\"family\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(575, 24.99, '{\"95\":\"family\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(576, 25.99, '{\"95\":\"family\",\"96\":\"double-decker\"}', '', 0, 0, 0, 174, '2022-10-08 01:58:15', '2022-10-08 01:58:15', NULL),
(577, 14.99, '{\"97\":\"small\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(578, 15.99, '{\"97\":\"small\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(579, 16.99, '{\"97\":\"small\",\"98\":\"double-decker\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(580, 17.99, '{\"97\":\"medium\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(581, 18.99, '{\"97\":\"medium\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(582, 19.99, '{\"97\":\"medium\",\"98\":\"double-decker\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(583, 20.99, '{\"97\":\"large\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:16', '2022-10-08 01:58:16', NULL),
(584, 21.99, '{\"97\":\"large\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:17', '2022-10-08 01:58:17', NULL),
(585, 22.99, '{\"97\":\"large\",\"98\":\"double-decker\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:17', '2022-10-08 01:58:17', NULL),
(586, 23.99, '{\"97\":\"family\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:17', '2022-10-08 01:58:17', NULL),
(587, 24.99, '{\"97\":\"family\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:17', '2022-10-08 01:58:17', NULL),
(588, 25.99, '{\"97\":\"family\",\"98\":\"double-decker\"}', '', 0, 0, 0, 175, '2022-10-08 01:58:17', '2022-10-08 01:58:17', NULL),
(589, 14.99, '{\"99\":\"small\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL),
(590, 15.99, '{\"99\":\"small\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL),
(591, 16.99, '{\"99\":\"small\",\"100\":\"double-decker\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL),
(592, 17.99, '{\"99\":\"medium\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:18', '2022-10-08 01:58:18', NULL),
(593, 18.99, '{\"99\":\"medium\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:19', '2022-10-08 01:58:19', NULL),
(594, 19.99, '{\"99\":\"medium\",\"100\":\"double-decker\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:19', '2022-10-08 01:58:19', NULL),
(595, 20.99, '{\"99\":\"large\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:19', '2022-10-08 01:58:19', NULL),
(596, 21.99, '{\"99\":\"large\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:19', '2022-10-08 01:58:19', NULL),
(597, 22.99, '{\"99\":\"large\",\"100\":\"double-decker\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:19', '2022-10-08 01:58:19', NULL),
(598, 23.99, '{\"99\":\"family\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:19', '2022-10-08 01:58:19', NULL),
(599, 24.99, '{\"99\":\"family\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(600, 25.99, '{\"99\":\"family\",\"100\":\"double-decker\"}', '', 0, 0, 0, 176, '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(601, 10.49, '{\"101\":\"small\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(602, 11.49, '{\"101\":\"small\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(603, 12.49, '{\"101\":\"small\",\"102\":\"double-decker\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(604, 13.49, '{\"101\":\"medium\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(605, 14.49, '{\"101\":\"medium\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:20', '2022-10-08 01:58:20', NULL),
(606, 15.49, '{\"101\":\"medium\",\"102\":\"double-decker\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(607, 16.49, '{\"101\":\"large\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(608, 17.49, '{\"101\":\"large\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(609, 18.49, '{\"101\":\"large\",\"102\":\"double-decker\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(610, 19.49, '{\"101\":\"family\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(611, 20.49, '{\"101\":\"family\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(612, 21.49, '{\"101\":\"family\",\"102\":\"double-decker\"}', '', 0, 0, 0, 177, '2022-10-08 01:58:21', '2022-10-08 01:58:21', NULL),
(613, 39.99, '{\"103\":\"small\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:22', '2022-10-08 01:58:22', NULL),
(614, 40.99, '{\"103\":\"small\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:22', '2022-10-08 01:58:22', NULL),
(615, 41.99, '{\"103\":\"small\",\"104\":\"double-decker\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:22', '2022-10-08 01:58:22', NULL),
(616, 42.99, '{\"103\":\"medium\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:22', '2022-10-08 01:58:22', NULL),
(617, 43.99, '{\"103\":\"medium\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:22', '2022-10-08 01:58:22', NULL),
(618, 44.99, '{\"103\":\"medium\",\"104\":\"double-decker\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:22', '2022-10-08 01:58:22', NULL),
(619, 45.99, '{\"103\":\"large\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(620, 46.99, '{\"103\":\"large\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(621, 47.99, '{\"103\":\"large\",\"104\":\"double-decker\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(622, 48.99, '{\"103\":\"family\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(623, 49.99, '{\"103\":\"family\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(624, 50.99, '{\"103\":\"family\",\"104\":\"double-decker\"}', '', 0, 0, 0, 178, '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(625, 14.99, '{\"105\":\"small\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:23', '2022-10-08 01:58:23', NULL),
(626, 15.99, '{\"105\":\"small\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(627, 16.99, '{\"105\":\"small\",\"106\":\"double-decker\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(628, 17.99, '{\"105\":\"medium\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(629, 18.99, '{\"105\":\"medium\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(630, 19.99, '{\"105\":\"medium\",\"106\":\"double-decker\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(631, 20.99, '{\"105\":\"large\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(632, 21.99, '{\"105\":\"large\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(633, 22.99, '{\"105\":\"large\",\"106\":\"double-decker\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(634, 23.99, '{\"105\":\"family\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(635, 24.99, '{\"105\":\"family\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:24', '2022-10-08 01:58:24', NULL),
(636, 25.99, '{\"105\":\"family\",\"106\":\"double-decker\"}', '', 0, 0, 0, 179, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(637, 14.99, '{\"107\":\"small\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(638, 15.99, '{\"107\":\"small\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(639, 16.99, '{\"107\":\"small\",\"108\":\"double-decker\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(640, 17.99, '{\"107\":\"medium\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(641, 18.99, '{\"107\":\"medium\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(642, 19.99, '{\"107\":\"medium\",\"108\":\"double-decker\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(643, 20.99, '{\"107\":\"large\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(644, 21.99, '{\"107\":\"large\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:25', '2022-10-08 01:58:25', NULL),
(645, 22.99, '{\"107\":\"large\",\"108\":\"double-decker\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL),
(646, 23.99, '{\"107\":\"family\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL),
(647, 24.99, '{\"107\":\"family\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL),
(648, 25.99, '{\"107\":\"family\",\"108\":\"double-decker\"}', '', 0, 0, 0, 180, '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL),
(649, 14.99, '{\"109\":\"small\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:26', '2022-10-08 01:58:26', NULL),
(650, 15.99, '{\"109\":\"small\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(651, 16.99, '{\"109\":\"small\",\"110\":\"double-decker\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(652, 17.99, '{\"109\":\"medium\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(653, 18.99, '{\"109\":\"medium\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(654, 19.99, '{\"109\":\"medium\",\"110\":\"double-decker\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(655, 20.99, '{\"109\":\"large\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(656, 21.99, '{\"109\":\"large\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(657, 22.99, '{\"109\":\"large\",\"110\":\"double-decker\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(658, 23.99, '{\"109\":\"family\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:27', '2022-10-08 01:58:27', NULL),
(659, 24.99, '{\"109\":\"family\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:28', '2022-10-08 01:58:28', NULL),
(660, 25.99, '{\"109\":\"family\",\"110\":\"double-decker\"}', '', 0, 0, 0, 181, '2022-10-08 01:58:28', '2022-10-08 01:58:28', NULL),
(661, 10.99, '{\"111\":\"small\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(662, 11.99, '{\"111\":\"small\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(663, 12.99, '{\"111\":\"small\",\"112\":\"double-decker\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(664, 13.99, '{\"111\":\"medium\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(665, 14.99, '{\"111\":\"medium\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(666, 15.99, '{\"111\":\"medium\",\"112\":\"double-decker\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(667, 16.99, '{\"111\":\"large\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:38', '2022-10-08 01:58:38', NULL),
(668, 17.99, '{\"111\":\"large\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:39', '2022-10-08 01:58:39', NULL),
(669, 18.99, '{\"111\":\"large\",\"112\":\"double-decker\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:39', '2022-10-08 01:58:39', NULL),
(670, 19.99, '{\"111\":\"family\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:39', '2022-10-08 01:58:39', NULL),
(671, 20.99, '{\"111\":\"family\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:39', '2022-10-08 01:58:39', NULL),
(672, 21.99, '{\"111\":\"family\",\"112\":\"double-decker\"}', '', 0, 0, 0, 235, '2022-10-08 01:58:39', '2022-10-08 01:58:39', NULL),
(673, 14.99, '{\"113\":\"small\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL),
(674, 15.99, '{\"113\":\"small\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL),
(675, 16.99, '{\"113\":\"small\",\"114\":\"double-decker\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL),
(676, 17.99, '{\"113\":\"medium\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:40', '2022-10-08 01:58:40', NULL),
(677, 18.99, '{\"113\":\"medium\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:41', '2022-10-08 01:58:41', NULL),
(678, 19.99, '{\"113\":\"medium\",\"114\":\"double-decker\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:41', '2022-10-08 01:58:41', NULL),
(679, 20.99, '{\"113\":\"large\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:41', '2022-10-08 01:58:41', NULL),
(680, 21.99, '{\"113\":\"large\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:41', '2022-10-08 01:58:41', NULL),
(681, 22.99, '{\"113\":\"large\",\"114\":\"double-decker\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:41', '2022-10-08 01:58:41', NULL),
(682, 23.99, '{\"113\":\"family\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:41', '2022-10-08 01:58:41', NULL),
(683, 24.99, '{\"113\":\"family\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:43', '2022-10-08 01:58:43', NULL),
(684, 25.99, '{\"113\":\"family\",\"114\":\"double-decker\"}', '', 0, 0, 0, 236, '2022-10-08 01:58:44', '2022-10-08 01:58:44', NULL),
(685, 14.99, '{\"115\":\"small\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:46', '2022-10-08 01:58:46', NULL),
(686, 15.99, '{\"115\":\"small\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:46', '2022-10-08 01:58:46', NULL),
(687, 16.99, '{\"115\":\"small\",\"116\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:46', '2022-10-08 01:58:46', NULL),
(688, 17.99, '{\"115\":\"medium\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:47', '2022-10-08 01:58:47', NULL),
(689, 18.99, '{\"115\":\"medium\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:47', '2022-10-08 01:58:47', NULL),
(690, 19.99, '{\"115\":\"medium\",\"116\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:47', '2022-10-08 01:58:47', NULL),
(691, 20.99, '{\"115\":\"large\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:48', '2022-10-08 01:58:48', NULL),
(692, 21.99, '{\"115\":\"large\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:49', '2022-10-08 01:58:49', NULL),
(693, 22.99, '{\"115\":\"large\",\"116\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:49', '2022-10-08 01:58:49', NULL),
(694, 23.99, '{\"115\":\"family\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:49', '2022-10-08 01:58:49', NULL),
(695, 24.99, '{\"115\":\"family\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:49', '2022-10-08 01:58:49', NULL),
(696, 25.99, '{\"115\":\"family\",\"116\":\"double-decker\"}', '', 0, 0, 0, 237, '2022-10-08 01:58:49', '2022-10-08 01:58:49', NULL),
(697, 14.99, '{\"117\":\"small\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:50', '2022-10-08 01:58:50', NULL),
(698, 15.99, '{\"117\":\"small\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:50', '2022-10-08 01:58:50', NULL),
(699, 16.99, '{\"117\":\"small\",\"118\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:51', '2022-10-08 01:58:51', NULL),
(700, 17.99, '{\"117\":\"medium\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:51', '2022-10-08 01:58:51', NULL),
(701, 18.99, '{\"117\":\"medium\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:51', '2022-10-08 01:58:51', NULL),
(702, 19.99, '{\"117\":\"medium\",\"118\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:51', '2022-10-08 01:58:51', NULL),
(703, 20.99, '{\"117\":\"large\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:51', '2022-10-08 01:58:51', NULL),
(704, 21.99, '{\"117\":\"large\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:51', '2022-10-08 01:58:51', NULL),
(705, 22.99, '{\"117\":\"large\",\"118\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:51', '2022-10-08 01:58:51', NULL),
(706, 23.99, '{\"117\":\"family\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL),
(707, 24.99, '{\"117\":\"family\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL),
(708, 25.99, '{\"117\":\"family\",\"118\":\"double-decker\"}', '', 0, 0, 0, 238, '2022-10-08 01:58:52', '2022-10-08 01:58:52', NULL),
(709, 14.99, '{\"119\":\"small\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:53', '2022-10-08 01:58:53', NULL),
(710, 15.99, '{\"119\":\"small\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:53', '2022-10-08 01:58:53', NULL),
(711, 16.99, '{\"119\":\"small\",\"120\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:53', '2022-10-08 01:58:53', NULL),
(712, 17.99, '{\"119\":\"medium\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:53', '2022-10-08 01:58:53', NULL),
(713, 18.99, '{\"119\":\"medium\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:53', '2022-10-08 01:58:53', NULL),
(714, 19.99, '{\"119\":\"medium\",\"120\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL),
(715, 20.99, '{\"119\":\"large\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL),
(716, 21.99, '{\"119\":\"large\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL),
(717, 22.99, '{\"119\":\"large\",\"120\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL),
(718, 23.99, '{\"119\":\"family\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL),
(719, 24.99, '{\"119\":\"family\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL),
(720, 25.99, '{\"119\":\"family\",\"120\":\"double-decker\"}', '', 0, 0, 0, 239, '2022-10-08 01:58:54', '2022-10-08 01:58:54', NULL),
(721, 14.99, '{\"121\":\"small\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(722, 15.99, '{\"121\":\"small\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(723, 16.99, '{\"121\":\"small\",\"122\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(724, 17.99, '{\"121\":\"medium\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(725, 18.99, '{\"121\":\"medium\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(726, 19.99, '{\"121\":\"medium\",\"122\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:55', '2022-10-08 01:58:55', NULL),
(727, 20.99, '{\"121\":\"large\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:56', '2022-10-08 01:58:56', NULL),
(728, 21.99, '{\"121\":\"large\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:56', '2022-10-08 01:58:56', NULL),
(729, 22.99, '{\"121\":\"large\",\"122\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:56', '2022-10-08 01:58:56', NULL),
(730, 23.99, '{\"121\":\"family\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:56', '2022-10-08 01:58:56', NULL),
(731, 24.99, '{\"121\":\"family\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:56', '2022-10-08 01:58:56', NULL),
(732, 25.99, '{\"121\":\"family\",\"122\":\"double-decker\"}', '', 0, 0, 0, 240, '2022-10-08 01:58:56', '2022-10-08 01:58:56', NULL),
(733, 10.49, '{\"123\":\"small\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL),
(734, 11.49, '{\"123\":\"small\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL),
(735, 12.49, '{\"123\":\"small\",\"124\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL),
(736, 13.49, '{\"123\":\"medium\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL),
(737, 14.49, '{\"123\":\"medium\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:57', '2022-10-08 01:58:57', NULL),
(738, 15.49, '{\"123\":\"medium\",\"124\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:58', '2022-10-08 01:58:58', NULL),
(739, 16.49, '{\"123\":\"large\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:58', '2022-10-08 01:58:58', NULL),
(740, 17.49, '{\"123\":\"large\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:58', '2022-10-08 01:58:58', NULL),
(741, 18.49, '{\"123\":\"large\",\"124\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:58', '2022-10-08 01:58:58', NULL),
(742, 19.49, '{\"123\":\"family\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:58', '2022-10-08 01:58:58', NULL),
(743, 20.49, '{\"123\":\"family\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:58', '2022-10-08 01:58:58', NULL),
(744, 21.49, '{\"123\":\"family\",\"124\":\"double-decker\"}', '', 0, 0, 0, 241, '2022-10-08 01:58:58', '2022-10-08 01:58:58', NULL),
(745, 39.99, '{\"125\":\"small\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL),
(746, 40.99, '{\"125\":\"small\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL),
(747, 41.99, '{\"125\":\"small\",\"126\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL),
(748, 42.99, '{\"125\":\"medium\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-10-08 01:58:59', '2022-10-08 01:58:59', NULL),
(749, 43.99, '{\"125\":\"medium\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:00', '2022-10-08 01:59:00', NULL),
(750, 44.99, '{\"125\":\"medium\",\"126\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:00', '2022-10-08 01:59:00', NULL),
(751, 45.99, '{\"125\":\"large\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:00', '2022-10-08 01:59:00', NULL),
(752, 46.99, '{\"125\":\"large\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:00', '2022-10-08 01:59:00', NULL),
(753, 47.99, '{\"125\":\"large\",\"126\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:00', '2022-10-08 01:59:00', NULL),
(754, 48.99, '{\"125\":\"family\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:00', '2022-10-08 01:59:00', NULL),
(755, 49.99, '{\"125\":\"family\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:00', '2022-10-08 01:59:00', NULL),
(756, 50.99, '{\"125\":\"family\",\"126\":\"double-decker\"}', '', 0, 0, 0, 242, '2022-10-08 01:59:01', '2022-10-08 01:59:01', NULL),
(757, 14.99, '{\"127\":\"small\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:02', '2022-10-08 01:59:02', NULL),
(758, 15.99, '{\"127\":\"small\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:02', '2022-10-08 01:59:02', NULL),
(759, 16.99, '{\"127\":\"small\",\"128\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:02', '2022-10-08 01:59:02', NULL),
(760, 17.99, '{\"127\":\"medium\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:02', '2022-10-08 01:59:02', NULL),
(761, 18.99, '{\"127\":\"medium\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:02', '2022-10-08 01:59:02', NULL),
(762, 19.99, '{\"127\":\"medium\",\"128\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:03', '2022-10-08 01:59:03', NULL),
(763, 20.99, '{\"127\":\"large\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:03', '2022-10-08 01:59:03', NULL),
(764, 21.99, '{\"127\":\"large\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:03', '2022-10-08 01:59:03', NULL),
(765, 22.99, '{\"127\":\"large\",\"128\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:03', '2022-10-08 01:59:03', NULL),
(766, 23.99, '{\"127\":\"family\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:03', '2022-10-08 01:59:03', NULL),
(767, 24.99, '{\"127\":\"family\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:03', '2022-10-08 01:59:03', NULL),
(768, 25.99, '{\"127\":\"family\",\"128\":\"double-decker\"}', '', 0, 0, 0, 243, '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL),
(769, 14.99, '{\"129\":\"small\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL),
(770, 15.99, '{\"129\":\"small\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:04', '2022-10-08 01:59:04', NULL),
(771, 16.99, '{\"129\":\"small\",\"130\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:05', '2022-10-08 01:59:05', NULL),
(772, 17.99, '{\"129\":\"medium\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:05', '2022-10-08 01:59:05', NULL),
(773, 18.99, '{\"129\":\"medium\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:05', '2022-10-08 01:59:05', NULL),
(774, 19.99, '{\"129\":\"medium\",\"130\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:05', '2022-10-08 01:59:05', NULL),
(775, 20.99, '{\"129\":\"large\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:05', '2022-10-08 01:59:05', NULL),
(776, 21.99, '{\"129\":\"large\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:05', '2022-10-08 01:59:05', NULL),
(777, 22.99, '{\"129\":\"large\",\"130\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:05', '2022-10-08 01:59:05', NULL),
(778, 23.99, '{\"129\":\"family\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:06', '2022-10-08 01:59:06', NULL),
(779, 24.99, '{\"129\":\"family\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:06', '2022-10-08 01:59:06', NULL),
(780, 25.99, '{\"129\":\"family\",\"130\":\"double-decker\"}', '', 0, 0, 0, 244, '2022-10-08 01:59:06', '2022-10-08 01:59:06', NULL),
(781, 14.99, '{\"131\":\"small\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:07', '2022-10-08 01:59:07', NULL),
(782, 15.99, '{\"131\":\"small\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:07', '2022-10-08 01:59:07', NULL),
(783, 16.99, '{\"131\":\"small\",\"132\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:07', '2022-10-08 01:59:07', NULL),
(784, 17.99, '{\"131\":\"medium\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:07', '2022-10-08 01:59:07', NULL),
(785, 18.99, '{\"131\":\"medium\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:07', '2022-10-08 01:59:07', NULL),
(786, 19.99, '{\"131\":\"medium\",\"132\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:08', '2022-10-08 01:59:08', NULL),
(787, 20.99, '{\"131\":\"large\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:08', '2022-10-08 01:59:08', NULL),
(788, 21.99, '{\"131\":\"large\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:08', '2022-10-08 01:59:08', NULL),
(789, 22.99, '{\"131\":\"large\",\"132\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:08', '2022-10-08 01:59:08', NULL),
(790, 23.99, '{\"131\":\"family\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:08', '2022-10-08 01:59:08', NULL),
(791, 24.99, '{\"131\":\"family\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:08', '2022-10-08 01:59:08', NULL),
(792, 25.99, '{\"131\":\"family\",\"132\":\"double-decker\"}', '', 0, 0, 0, 245, '2022-10-08 01:59:08', '2022-10-08 01:59:08', NULL),
(793, 10.99, '{\"133\":\"small\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:15', '2022-10-08 01:59:15', NULL),
(794, 11.99, '{\"133\":\"small\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(795, 12.99, '{\"133\":\"small\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(796, 13.99, '{\"133\":\"medium\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(797, 14.99, '{\"133\":\"medium\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(798, 15.99, '{\"133\":\"medium\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(799, 16.99, '{\"133\":\"large\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(800, 17.99, '{\"133\":\"large\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(801, 18.99, '{\"133\":\"large\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(802, 19.99, '{\"133\":\"family\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(803, 20.99, '{\"133\":\"family\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:16', '2022-10-08 01:59:16', NULL),
(804, 21.99, '{\"133\":\"family\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(805, 14.99, '{\"135\":\"small\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(806, 15.99, '{\"135\":\"small\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(807, 16.99, '{\"135\":\"small\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(808, 17.99, '{\"135\":\"medium\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(809, 18.99, '{\"135\":\"medium\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:17', '2022-10-08 01:59:17', NULL),
(810, 19.99, '{\"135\":\"medium\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:18', '2022-10-08 01:59:18', NULL),
(811, 20.99, '{\"135\":\"large\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:18', '2022-10-08 01:59:18', NULL),
(812, 21.99, '{\"135\":\"large\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:18', '2022-10-08 01:59:18', NULL),
(813, 22.99, '{\"135\":\"large\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:18', '2022-10-08 01:59:18', NULL),
(814, 23.99, '{\"135\":\"family\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:18', '2022-10-08 01:59:18', NULL),
(815, 24.99, '{\"135\":\"family\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:18', '2022-10-08 01:59:18', NULL),
(816, 25.99, '{\"135\":\"family\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(817, 14.99, '{\"137\":\"small\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(818, 15.99, '{\"137\":\"small\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(819, 16.99, '{\"137\":\"small\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(820, 17.99, '{\"137\":\"medium\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(821, 18.99, '{\"137\":\"medium\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:19', '2022-10-08 01:59:19', NULL),
(822, 19.99, '{\"137\":\"medium\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL),
(823, 20.99, '{\"137\":\"large\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL),
(824, 21.99, '{\"137\":\"large\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL),
(825, 22.99, '{\"137\":\"large\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL),
(826, 23.99, '{\"137\":\"family\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL),
(827, 24.99, '{\"137\":\"family\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL),
(828, 25.99, '{\"137\":\"family\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2022-10-08 01:59:20', '2022-10-08 01:59:20', NULL),
(829, 14.99, '{\"139\":\"small\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(830, 15.99, '{\"139\":\"small\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(831, 16.99, '{\"139\":\"small\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(832, 17.99, '{\"139\":\"medium\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(833, 18.99, '{\"139\":\"medium\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(834, 19.99, '{\"139\":\"medium\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(835, 20.99, '{\"139\":\"large\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:21', '2022-10-08 01:59:21', NULL),
(836, 21.99, '{\"139\":\"large\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:22', '2022-10-08 01:59:22', NULL),
(837, 22.99, '{\"139\":\"large\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:22', '2022-10-08 01:59:22', NULL),
(838, 23.99, '{\"139\":\"family\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:22', '2022-10-08 01:59:22', NULL),
(839, 24.99, '{\"139\":\"family\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:22', '2022-10-08 01:59:22', NULL),
(840, 25.99, '{\"139\":\"family\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2022-10-08 01:59:22', '2022-10-08 01:59:22', NULL),
(841, 14.99, '{\"141\":\"small\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL),
(842, 15.99, '{\"141\":\"small\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:23', '2022-10-08 01:59:23', NULL),
(843, 16.99, '{\"141\":\"small\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:24', '2022-10-08 01:59:24', NULL),
(844, 17.99, '{\"141\":\"medium\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:24', '2022-10-08 01:59:24', NULL),
(845, 18.99, '{\"141\":\"medium\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:24', '2022-10-08 01:59:24', NULL),
(846, 19.99, '{\"141\":\"medium\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:24', '2022-10-08 01:59:24', NULL),
(847, 20.99, '{\"141\":\"large\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:24', '2022-10-08 01:59:24', NULL),
(848, 21.99, '{\"141\":\"large\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL),
(849, 22.99, '{\"141\":\"large\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL),
(850, 23.99, '{\"141\":\"family\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL),
(851, 24.99, '{\"141\":\"family\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL),
(852, 25.99, '{\"141\":\"family\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2022-10-08 01:59:25', '2022-10-08 01:59:25', NULL),
(853, 14.99, '{\"143\":\"small\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(854, 15.99, '{\"143\":\"small\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(855, 16.99, '{\"143\":\"small\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(856, 17.99, '{\"143\":\"medium\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(857, 18.99, '{\"143\":\"medium\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(858, 19.99, '{\"143\":\"medium\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(859, 20.99, '{\"143\":\"large\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(860, 21.99, '{\"143\":\"large\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(861, 22.99, '{\"143\":\"large\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:26', '2022-10-08 01:59:26', NULL),
(862, 23.99, '{\"143\":\"family\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL),
(863, 24.99, '{\"143\":\"family\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL),
(864, 25.99, '{\"143\":\"family\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2022-10-08 01:59:27', '2022-10-08 01:59:27', NULL),
(865, 10.49, '{\"145\":\"small\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:28', '2022-10-08 01:59:28', NULL),
(866, 11.49, '{\"145\":\"small\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:28', '2022-10-08 01:59:28', NULL),
(867, 12.49, '{\"145\":\"small\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:28', '2022-10-08 01:59:28', NULL),
(868, 13.49, '{\"145\":\"medium\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:28', '2022-10-08 01:59:28', NULL),
(869, 14.49, '{\"145\":\"medium\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:28', '2022-10-08 01:59:28', NULL),
(870, 15.49, '{\"145\":\"medium\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:28', '2022-10-08 01:59:28', NULL),
(871, 16.49, '{\"145\":\"large\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:29', '2022-10-08 01:59:29', NULL),
(872, 17.49, '{\"145\":\"large\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:29', '2022-10-08 01:59:29', NULL),
(873, 18.49, '{\"145\":\"large\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:29', '2022-10-08 01:59:29', NULL),
(874, 19.49, '{\"145\":\"family\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:29', '2022-10-08 01:59:29', NULL),
(875, 20.49, '{\"145\":\"family\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:29', '2022-10-08 01:59:29', NULL),
(876, 21.49, '{\"145\":\"family\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2022-10-08 01:59:29', '2022-10-08 01:59:29', NULL),
(877, 39.99, '{\"147\":\"small\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL),
(878, 40.99, '{\"147\":\"small\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL),
(879, 41.99, '{\"147\":\"small\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:30', '2022-10-08 01:59:30', NULL),
(880, 42.99, '{\"147\":\"medium\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:31', '2022-10-08 01:59:31', NULL),
(881, 43.99, '{\"147\":\"medium\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:31', '2022-10-08 01:59:31', NULL),
(882, 44.99, '{\"147\":\"medium\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:31', '2022-10-08 01:59:31', NULL),
(883, 45.99, '{\"147\":\"large\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:31', '2022-10-08 01:59:31', NULL),
(884, 46.99, '{\"147\":\"large\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:31', '2022-10-08 01:59:31', NULL),
(885, 47.99, '{\"147\":\"large\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:31', '2022-10-08 01:59:31', NULL),
(886, 48.99, '{\"147\":\"family\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:31', '2022-10-08 01:59:31', NULL),
(887, 49.99, '{\"147\":\"family\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:32', '2022-10-08 01:59:32', NULL),
(888, 50.99, '{\"147\":\"family\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2022-10-08 01:59:32', '2022-10-08 01:59:32', NULL),
(889, 14.99, '{\"149\":\"small\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:33', '2022-10-08 01:59:33', NULL),
(890, 15.99, '{\"149\":\"small\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:34', '2022-10-08 01:59:34', NULL),
(891, 16.99, '{\"149\":\"small\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:34', '2022-10-08 01:59:34', NULL),
(892, 17.99, '{\"149\":\"medium\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:34', '2022-10-08 01:59:34', NULL),
(893, 18.99, '{\"149\":\"medium\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:34', '2022-10-08 01:59:34', NULL),
(894, 19.99, '{\"149\":\"medium\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:35', '2022-10-08 01:59:35', NULL),
(895, 20.99, '{\"149\":\"large\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:35', '2022-10-08 01:59:35', NULL),
(896, 21.99, '{\"149\":\"large\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:35', '2022-10-08 01:59:35', NULL),
(897, 22.99, '{\"149\":\"large\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:35', '2022-10-08 01:59:35', NULL),
(898, 23.99, '{\"149\":\"family\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL),
(899, 24.99, '{\"149\":\"family\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL),
(900, 25.99, '{\"149\":\"family\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL),
(901, 14.99, '{\"151\":\"small\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:36', '2022-10-08 01:59:36', NULL),
(902, 15.99, '{\"151\":\"small\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:37', '2022-10-08 01:59:37', NULL),
(903, 16.99, '{\"151\":\"small\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:37', '2022-10-08 01:59:37', NULL),
(904, 17.99, '{\"151\":\"medium\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:37', '2022-10-08 01:59:37', NULL),
(905, 18.99, '{\"151\":\"medium\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:37', '2022-10-08 01:59:37', NULL),
(906, 19.99, '{\"151\":\"medium\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:37', '2022-10-08 01:59:37', NULL),
(907, 20.99, '{\"151\":\"large\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:37', '2022-10-08 01:59:37', NULL),
(908, 21.99, '{\"151\":\"large\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:38', '2022-10-08 01:59:38', NULL),
(909, 22.99, '{\"151\":\"large\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:38', '2022-10-08 01:59:38', NULL);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(910, 23.99, '{\"151\":\"family\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:38', '2022-10-08 01:59:38', NULL),
(911, 24.99, '{\"151\":\"family\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:38', '2022-10-08 01:59:38', NULL),
(912, 25.99, '{\"151\":\"family\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2022-10-08 01:59:38', '2022-10-08 01:59:38', NULL),
(913, 14.99, '{\"153\":\"small\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL),
(914, 15.99, '{\"153\":\"small\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL),
(915, 16.99, '{\"153\":\"small\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL),
(916, 17.99, '{\"153\":\"medium\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:39', '2022-10-08 01:59:39', NULL),
(917, 18.99, '{\"153\":\"medium\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:40', '2022-10-08 01:59:40', NULL),
(918, 19.99, '{\"153\":\"medium\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:40', '2022-10-08 01:59:40', NULL),
(919, 20.99, '{\"153\":\"large\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:40', '2022-10-08 01:59:40', NULL),
(920, 21.99, '{\"153\":\"large\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:40', '2022-10-08 01:59:40', NULL),
(921, 22.99, '{\"153\":\"large\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:40', '2022-10-08 01:59:40', NULL),
(922, 23.99, '{\"153\":\"family\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:40', '2022-10-08 01:59:40', NULL),
(923, 24.99, '{\"153\":\"family\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:41', '2022-10-08 01:59:41', NULL),
(924, 25.99, '{\"153\":\"family\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2022-10-08 01:59:41', '2022-10-08 01:59:41', NULL),
(925, 10.99, '{\"155\":\"small\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:56', '2022-10-08 01:59:56', NULL),
(926, 11.99, '{\"155\":\"small\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:56', '2022-10-08 01:59:56', NULL),
(927, 12.99, '{\"155\":\"small\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:56', '2022-10-08 01:59:56', NULL),
(928, 13.99, '{\"155\":\"medium\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:56', '2022-10-08 01:59:56', NULL),
(929, 14.99, '{\"155\":\"medium\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:56', '2022-10-08 01:59:56', NULL),
(930, 15.99, '{\"155\":\"medium\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:57', '2022-10-08 01:59:57', NULL),
(931, 16.99, '{\"155\":\"large\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:57', '2022-10-08 01:59:57', NULL),
(932, 17.99, '{\"155\":\"large\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:57', '2022-10-08 01:59:57', NULL),
(933, 18.99, '{\"155\":\"large\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:57', '2022-10-08 01:59:57', NULL),
(934, 19.99, '{\"155\":\"family\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:57', '2022-10-08 01:59:57', NULL),
(935, 20.99, '{\"155\":\"family\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:57', '2022-10-08 01:59:57', NULL),
(936, 21.99, '{\"155\":\"family\",\"156\":\"double-decker\"}', '', 0, 0, 0, 316, '2022-10-08 01:59:59', '2022-10-08 01:59:59', NULL),
(937, 14.99, '{\"157\":\"small\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:00', '2022-10-08 02:00:00', NULL),
(938, 15.99, '{\"157\":\"small\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:00', '2022-10-08 02:00:00', NULL),
(939, 16.99, '{\"157\":\"small\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:00', '2022-10-08 02:00:00', NULL),
(940, 17.99, '{\"157\":\"medium\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:00', '2022-10-08 02:00:00', NULL),
(941, 18.99, '{\"157\":\"medium\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:01', '2022-10-08 02:00:01', NULL),
(942, 19.99, '{\"157\":\"medium\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:01', '2022-10-08 02:00:01', NULL),
(943, 20.99, '{\"157\":\"large\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:01', '2022-10-08 02:00:01', NULL),
(944, 21.99, '{\"157\":\"large\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:01', '2022-10-08 02:00:01', NULL),
(945, 22.99, '{\"157\":\"large\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:01', '2022-10-08 02:00:01', NULL),
(946, 23.99, '{\"157\":\"family\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:01', '2022-10-08 02:00:01', NULL),
(947, 24.99, '{\"157\":\"family\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL),
(948, 25.99, '{\"157\":\"family\",\"158\":\"double-decker\"}', '', 0, 0, 0, 317, '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL),
(949, 14.99, '{\"159\":\"small\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:02', '2022-10-08 02:00:02', NULL),
(950, 15.99, '{\"159\":\"small\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:03', '2022-10-08 02:00:03', NULL),
(951, 16.99, '{\"159\":\"small\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:03', '2022-10-08 02:00:03', NULL),
(952, 17.99, '{\"159\":\"medium\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:03', '2022-10-08 02:00:03', NULL),
(953, 18.99, '{\"159\":\"medium\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:03', '2022-10-08 02:00:03', NULL),
(954, 19.99, '{\"159\":\"medium\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:03', '2022-10-08 02:00:03', NULL),
(955, 20.99, '{\"159\":\"large\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:03', '2022-10-08 02:00:03', NULL),
(956, 21.99, '{\"159\":\"large\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:03', '2022-10-08 02:00:03', NULL),
(957, 22.99, '{\"159\":\"large\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:04', '2022-10-08 02:00:04', NULL),
(958, 23.99, '{\"159\":\"family\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:04', '2022-10-08 02:00:04', NULL),
(959, 24.99, '{\"159\":\"family\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:04', '2022-10-08 02:00:04', NULL),
(960, 25.99, '{\"159\":\"family\",\"160\":\"double-decker\"}', '', 0, 0, 0, 318, '2022-10-08 02:00:04', '2022-10-08 02:00:04', NULL),
(961, 14.99, '{\"161\":\"small\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL),
(962, 15.99, '{\"161\":\"small\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL),
(963, 16.99, '{\"161\":\"small\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL),
(964, 17.99, '{\"161\":\"medium\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:05', '2022-10-08 02:00:05', NULL),
(965, 18.99, '{\"161\":\"medium\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(966, 19.99, '{\"161\":\"medium\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(967, 20.99, '{\"161\":\"large\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(968, 21.99, '{\"161\":\"large\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(969, 22.99, '{\"161\":\"large\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(970, 23.99, '{\"161\":\"family\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(971, 24.99, '{\"161\":\"family\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(972, 25.99, '{\"161\":\"family\",\"162\":\"double-decker\"}', '', 0, 0, 0, 319, '2022-10-08 02:00:06', '2022-10-08 02:00:06', NULL),
(973, 14.99, '{\"163\":\"small\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(974, 15.99, '{\"163\":\"small\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(975, 16.99, '{\"163\":\"small\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(976, 17.99, '{\"163\":\"medium\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(977, 18.99, '{\"163\":\"medium\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(978, 19.99, '{\"163\":\"medium\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(979, 20.99, '{\"163\":\"large\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:07', '2022-10-08 02:00:07', NULL),
(980, 21.99, '{\"163\":\"large\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:08', '2022-10-08 02:00:08', NULL),
(981, 22.99, '{\"163\":\"large\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:08', '2022-10-08 02:00:08', NULL),
(982, 23.99, '{\"163\":\"family\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:08', '2022-10-08 02:00:08', NULL),
(983, 24.99, '{\"163\":\"family\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:08', '2022-10-08 02:00:08', NULL),
(984, 25.99, '{\"163\":\"family\",\"164\":\"double-decker\"}', '', 0, 0, 0, 320, '2022-10-08 02:00:08', '2022-10-08 02:00:08', NULL),
(985, 14.99, '{\"165\":\"small\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL),
(986, 15.99, '{\"165\":\"small\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL),
(987, 16.99, '{\"165\":\"small\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL),
(988, 17.99, '{\"165\":\"medium\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:09', '2022-10-08 02:00:09', NULL),
(989, 18.99, '{\"165\":\"medium\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(990, 19.99, '{\"165\":\"medium\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(991, 20.99, '{\"165\":\"large\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(992, 21.99, '{\"165\":\"large\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(993, 22.99, '{\"165\":\"large\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(994, 23.99, '{\"165\":\"family\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(995, 24.99, '{\"165\":\"family\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(996, 25.99, '{\"165\":\"family\",\"166\":\"double-decker\"}', '', 0, 0, 0, 321, '2022-10-08 02:00:10', '2022-10-08 02:00:10', NULL),
(997, 10.49, '{\"167\":\"small\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL),
(998, 11.49, '{\"167\":\"small\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL),
(999, 12.49, '{\"167\":\"small\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL),
(1000, 13.49, '{\"167\":\"medium\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL),
(1001, 14.49, '{\"167\":\"medium\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:11', '2022-10-08 02:00:11', NULL),
(1002, 15.49, '{\"167\":\"medium\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:12', '2022-10-08 02:00:12', NULL),
(1003, 16.49, '{\"167\":\"large\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:12', '2022-10-08 02:00:12', NULL),
(1004, 17.49, '{\"167\":\"large\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:12', '2022-10-08 02:00:12', NULL),
(1005, 18.49, '{\"167\":\"large\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:12', '2022-10-08 02:00:12', NULL),
(1006, 19.49, '{\"167\":\"family\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:12', '2022-10-08 02:00:12', NULL),
(1007, 20.49, '{\"167\":\"family\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:12', '2022-10-08 02:00:12', NULL),
(1008, 21.49, '{\"167\":\"family\",\"168\":\"double-decker\"}', '', 0, 0, 0, 322, '2022-10-08 02:00:12', '2022-10-08 02:00:12', NULL),
(1009, 39.99, '{\"169\":\"small\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(1010, 40.99, '{\"169\":\"small\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(1011, 41.99, '{\"169\":\"small\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(1012, 42.99, '{\"169\":\"medium\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(1013, 43.99, '{\"169\":\"medium\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(1014, 44.99, '{\"169\":\"medium\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:13', '2022-10-08 02:00:13', NULL),
(1015, 45.99, '{\"169\":\"large\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:14', '2022-10-08 02:00:14', NULL),
(1016, 46.99, '{\"169\":\"large\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:14', '2022-10-08 02:00:14', NULL),
(1017, 47.99, '{\"169\":\"large\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:14', '2022-10-08 02:00:14', NULL),
(1018, 48.99, '{\"169\":\"family\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:14', '2022-10-08 02:00:14', NULL),
(1019, 49.99, '{\"169\":\"family\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:14', '2022-10-08 02:00:14', NULL),
(1020, 50.99, '{\"169\":\"family\",\"170\":\"double-decker\"}', '', 0, 0, 0, 323, '2022-10-08 02:00:14', '2022-10-08 02:00:14', NULL),
(1021, 14.99, '{\"171\":\"small\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(1022, 15.99, '{\"171\":\"small\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(1023, 16.99, '{\"171\":\"small\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(1024, 17.99, '{\"171\":\"medium\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(1025, 18.99, '{\"171\":\"medium\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(1026, 19.99, '{\"171\":\"medium\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:15', '2022-10-08 02:00:15', NULL),
(1027, 20.99, '{\"171\":\"large\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:16', '2022-10-08 02:00:16', NULL),
(1028, 21.99, '{\"171\":\"large\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:16', '2022-10-08 02:00:16', NULL),
(1029, 22.99, '{\"171\":\"large\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:16', '2022-10-08 02:00:16', NULL),
(1030, 23.99, '{\"171\":\"family\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:16', '2022-10-08 02:00:16', NULL),
(1031, 24.99, '{\"171\":\"family\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:16', '2022-10-08 02:00:16', NULL),
(1032, 25.99, '{\"171\":\"family\",\"172\":\"double-decker\"}', '', 0, 0, 0, 324, '2022-10-08 02:00:16', '2022-10-08 02:00:16', NULL),
(1033, 14.99, '{\"173\":\"small\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(1034, 15.99, '{\"173\":\"small\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(1035, 16.99, '{\"173\":\"small\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(1036, 17.99, '{\"173\":\"medium\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(1037, 18.99, '{\"173\":\"medium\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(1038, 19.99, '{\"173\":\"medium\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(1039, 20.99, '{\"173\":\"large\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:17', '2022-10-08 02:00:17', NULL),
(1040, 21.99, '{\"173\":\"large\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL),
(1041, 22.99, '{\"173\":\"large\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL),
(1042, 23.99, '{\"173\":\"family\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL),
(1043, 24.99, '{\"173\":\"family\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL),
(1044, 25.99, '{\"173\":\"family\",\"174\":\"double-decker\"}', '', 0, 0, 0, 325, '2022-10-08 02:00:18', '2022-10-08 02:00:18', NULL),
(1045, 14.99, '{\"175\":\"small\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(1046, 15.99, '{\"175\":\"small\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(1047, 16.99, '{\"175\":\"small\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(1048, 17.99, '{\"175\":\"medium\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(1049, 18.99, '{\"175\":\"medium\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(1050, 19.99, '{\"175\":\"medium\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(1051, 20.99, '{\"175\":\"large\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:19', '2022-10-08 02:00:19', NULL),
(1052, 21.99, '{\"175\":\"large\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:20', '2022-10-08 02:00:20', NULL),
(1053, 22.99, '{\"175\":\"large\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:20', '2022-10-08 02:00:20', NULL),
(1054, 23.99, '{\"175\":\"family\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:20', '2022-10-08 02:00:20', NULL),
(1055, 24.99, '{\"175\":\"family\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:20', '2022-10-08 02:00:20', NULL),
(1056, 25.99, '{\"175\":\"family\",\"176\":\"double-decker\"}', '', 0, 0, 0, 326, '2022-10-08 02:00:20', '2022-10-08 02:00:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variants_has_extras`
--

CREATE TABLE `variants_has_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants_has_extras`
--

INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(133, '2022-10-08 01:56:31', '2022-10-08 01:56:31', 133, 83),
(134, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 134, 83),
(135, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 135, 83),
(136, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 136, 83),
(137, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 137, 83),
(138, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 138, 83),
(139, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 139, 84),
(140, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 140, 84),
(141, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 141, 84),
(142, '2022-10-08 01:56:32', '2022-10-08 01:56:32', 142, 84),
(143, '2022-10-08 01:56:33', '2022-10-08 01:56:33', 143, 84),
(144, '2022-10-08 01:56:33', '2022-10-08 01:56:33', 144, 84),
(145, '2022-10-08 01:56:35', '2022-10-08 01:56:35', 145, 87),
(146, '2022-10-08 01:56:36', '2022-10-08 01:56:36', 146, 87),
(147, '2022-10-08 01:56:36', '2022-10-08 01:56:36', 147, 87),
(148, '2022-10-08 01:56:36', '2022-10-08 01:56:36', 148, 87),
(149, '2022-10-08 01:56:36', '2022-10-08 01:56:36', 149, 87),
(150, '2022-10-08 01:56:36', '2022-10-08 01:56:36', 150, 87),
(151, '2022-10-08 01:56:36', '2022-10-08 01:56:36', 151, 88),
(152, '2022-10-08 01:56:36', '2022-10-08 01:56:36', 152, 88),
(153, '2022-10-08 01:56:37', '2022-10-08 01:56:37', 153, 88),
(154, '2022-10-08 01:56:37', '2022-10-08 01:56:37', 154, 88),
(155, '2022-10-08 01:56:37', '2022-10-08 01:56:37', 155, 88),
(156, '2022-10-08 01:56:37', '2022-10-08 01:56:37', 156, 88),
(157, '2022-10-08 01:56:38', '2022-10-08 01:56:38', 157, 91),
(158, '2022-10-08 01:56:38', '2022-10-08 01:56:38', 158, 91),
(159, '2022-10-08 01:56:38', '2022-10-08 01:56:38', 159, 91),
(160, '2022-10-08 01:56:38', '2022-10-08 01:56:38', 160, 91),
(161, '2022-10-08 01:56:39', '2022-10-08 01:56:39', 161, 91),
(162, '2022-10-08 01:56:39', '2022-10-08 01:56:39', 162, 91),
(163, '2022-10-08 01:56:39', '2022-10-08 01:56:39', 163, 92),
(164, '2022-10-08 01:56:39', '2022-10-08 01:56:39', 164, 92),
(165, '2022-10-08 01:56:40', '2022-10-08 01:56:40', 165, 92),
(166, '2022-10-08 01:56:40', '2022-10-08 01:56:40', 166, 92),
(167, '2022-10-08 01:56:40', '2022-10-08 01:56:40', 167, 92),
(168, '2022-10-08 01:56:40', '2022-10-08 01:56:40', 168, 92),
(169, '2022-10-08 01:56:41', '2022-10-08 01:56:41', 169, 95),
(170, '2022-10-08 01:56:41', '2022-10-08 01:56:41', 170, 95),
(171, '2022-10-08 01:56:41', '2022-10-08 01:56:41', 171, 95),
(172, '2022-10-08 01:56:41', '2022-10-08 01:56:41', 172, 95),
(173, '2022-10-08 01:56:41', '2022-10-08 01:56:41', 173, 95),
(174, '2022-10-08 01:56:41', '2022-10-08 01:56:41', 174, 95),
(175, '2022-10-08 01:56:42', '2022-10-08 01:56:42', 175, 96),
(176, '2022-10-08 01:56:42', '2022-10-08 01:56:42', 176, 96),
(177, '2022-10-08 01:56:42', '2022-10-08 01:56:42', 177, 96),
(178, '2022-10-08 01:56:42', '2022-10-08 01:56:42', 178, 96),
(179, '2022-10-08 01:56:42', '2022-10-08 01:56:42', 179, 96),
(180, '2022-10-08 01:56:42', '2022-10-08 01:56:42', 180, 96),
(181, '2022-10-08 01:56:43', '2022-10-08 01:56:43', 181, 99),
(182, '2022-10-08 01:56:43', '2022-10-08 01:56:43', 182, 99),
(183, '2022-10-08 01:56:43', '2022-10-08 01:56:43', 183, 99),
(184, '2022-10-08 01:56:43', '2022-10-08 01:56:43', 184, 99),
(185, '2022-10-08 01:56:43', '2022-10-08 01:56:43', 185, 99),
(186, '2022-10-08 01:56:43', '2022-10-08 01:56:43', 186, 99),
(187, '2022-10-08 01:56:43', '2022-10-08 01:56:43', 187, 100),
(188, '2022-10-08 01:56:44', '2022-10-08 01:56:44', 188, 100),
(189, '2022-10-08 01:56:44', '2022-10-08 01:56:44', 189, 100),
(190, '2022-10-08 01:56:44', '2022-10-08 01:56:44', 190, 100),
(191, '2022-10-08 01:56:44', '2022-10-08 01:56:44', 191, 100),
(192, '2022-10-08 01:56:44', '2022-10-08 01:56:44', 192, 100),
(193, '2022-10-08 01:56:45', '2022-10-08 01:56:45', 193, 103),
(194, '2022-10-08 01:56:45', '2022-10-08 01:56:45', 194, 103),
(195, '2022-10-08 01:56:45', '2022-10-08 01:56:45', 195, 103),
(196, '2022-10-08 01:56:45', '2022-10-08 01:56:45', 196, 103),
(197, '2022-10-08 01:56:45', '2022-10-08 01:56:45', 197, 103),
(198, '2022-10-08 01:56:45', '2022-10-08 01:56:45', 198, 103),
(199, '2022-10-08 01:56:45', '2022-10-08 01:56:45', 199, 104),
(200, '2022-10-08 01:56:46', '2022-10-08 01:56:46', 200, 104),
(201, '2022-10-08 01:56:46', '2022-10-08 01:56:46', 201, 104),
(202, '2022-10-08 01:56:46', '2022-10-08 01:56:46', 202, 104),
(203, '2022-10-08 01:56:46', '2022-10-08 01:56:46', 203, 104),
(204, '2022-10-08 01:56:46', '2022-10-08 01:56:46', 204, 104),
(205, '2022-10-08 01:56:47', '2022-10-08 01:56:47', 205, 107),
(206, '2022-10-08 01:56:47', '2022-10-08 01:56:47', 206, 107),
(207, '2022-10-08 01:56:48', '2022-10-08 01:56:48', 207, 107),
(208, '2022-10-08 01:56:48', '2022-10-08 01:56:48', 208, 107),
(209, '2022-10-08 01:56:48', '2022-10-08 01:56:48', 209, 107),
(210, '2022-10-08 01:56:48', '2022-10-08 01:56:48', 210, 107),
(211, '2022-10-08 01:56:49', '2022-10-08 01:56:49', 211, 108),
(212, '2022-10-08 01:56:49', '2022-10-08 01:56:49', 212, 108),
(213, '2022-10-08 01:56:49', '2022-10-08 01:56:49', 213, 108),
(214, '2022-10-08 01:56:49', '2022-10-08 01:56:49', 214, 108),
(215, '2022-10-08 01:56:49', '2022-10-08 01:56:49', 215, 108),
(216, '2022-10-08 01:56:50', '2022-10-08 01:56:50', 216, 108),
(217, '2022-10-08 01:56:50', '2022-10-08 01:56:50', 217, 111),
(218, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 218, 111),
(219, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 219, 111),
(220, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 220, 111),
(221, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 221, 111),
(222, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 222, 111),
(223, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 223, 112),
(224, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 224, 112),
(225, '2022-10-08 01:56:51', '2022-10-08 01:56:51', 225, 112),
(226, '2022-10-08 01:56:52', '2022-10-08 01:56:52', 226, 112),
(227, '2022-10-08 01:56:52', '2022-10-08 01:56:52', 227, 112),
(228, '2022-10-08 01:56:52', '2022-10-08 01:56:52', 228, 112),
(229, '2022-10-08 01:56:52', '2022-10-08 01:56:52', 229, 115),
(230, '2022-10-08 01:56:53', '2022-10-08 01:56:53', 230, 115),
(231, '2022-10-08 01:56:53', '2022-10-08 01:56:53', 231, 115),
(232, '2022-10-08 01:56:53', '2022-10-08 01:56:53', 232, 115),
(233, '2022-10-08 01:56:53', '2022-10-08 01:56:53', 233, 115),
(234, '2022-10-08 01:56:53', '2022-10-08 01:56:53', 234, 115),
(235, '2022-10-08 01:56:53', '2022-10-08 01:56:53', 235, 116),
(236, '2022-10-08 01:56:54', '2022-10-08 01:56:54', 236, 116),
(237, '2022-10-08 01:56:54', '2022-10-08 01:56:54', 237, 116),
(238, '2022-10-08 01:56:54', '2022-10-08 01:56:54', 238, 116),
(239, '2022-10-08 01:56:54', '2022-10-08 01:56:54', 239, 116),
(240, '2022-10-08 01:56:54', '2022-10-08 01:56:54', 240, 116),
(241, '2022-10-08 01:56:55', '2022-10-08 01:56:55', 241, 119),
(242, '2022-10-08 01:56:55', '2022-10-08 01:56:55', 242, 119),
(243, '2022-10-08 01:56:55', '2022-10-08 01:56:55', 243, 119),
(244, '2022-10-08 01:56:55', '2022-10-08 01:56:55', 244, 119),
(245, '2022-10-08 01:56:55', '2022-10-08 01:56:55', 245, 119),
(246, '2022-10-08 01:56:55', '2022-10-08 01:56:55', 246, 119),
(247, '2022-10-08 01:56:55', '2022-10-08 01:56:55', 247, 120),
(248, '2022-10-08 01:56:56', '2022-10-08 01:56:56', 248, 120),
(249, '2022-10-08 01:56:56', '2022-10-08 01:56:56', 249, 120),
(250, '2022-10-08 01:56:56', '2022-10-08 01:56:56', 250, 120),
(251, '2022-10-08 01:56:56', '2022-10-08 01:56:56', 251, 120),
(252, '2022-10-08 01:56:56', '2022-10-08 01:56:56', 252, 120),
(253, '2022-10-08 01:56:56', '2022-10-08 01:56:56', 253, 123),
(254, '2022-10-08 01:56:57', '2022-10-08 01:56:57', 254, 123),
(255, '2022-10-08 01:56:57', '2022-10-08 01:56:57', 255, 123),
(256, '2022-10-08 01:56:57', '2022-10-08 01:56:57', 256, 123),
(257, '2022-10-08 01:56:57', '2022-10-08 01:56:57', 257, 123),
(258, '2022-10-08 01:56:57', '2022-10-08 01:56:57', 258, 123),
(259, '2022-10-08 01:56:57', '2022-10-08 01:56:57', 259, 124),
(260, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 260, 124),
(261, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 261, 124),
(262, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 262, 124),
(263, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 263, 124),
(264, '2022-10-08 01:56:58', '2022-10-08 01:56:58', 264, 124),
(265, '2022-10-08 01:57:02', '2022-10-08 01:57:02', 265, 127),
(266, '2022-10-08 01:57:02', '2022-10-08 01:57:02', 266, 127),
(267, '2022-10-08 01:57:02', '2022-10-08 01:57:02', 267, 127),
(268, '2022-10-08 01:57:03', '2022-10-08 01:57:03', 268, 127),
(269, '2022-10-08 01:57:03', '2022-10-08 01:57:03', 269, 127),
(270, '2022-10-08 01:57:03', '2022-10-08 01:57:03', 270, 127),
(271, '2022-10-08 01:57:03', '2022-10-08 01:57:03', 271, 128),
(272, '2022-10-08 01:57:03', '2022-10-08 01:57:03', 272, 128),
(273, '2022-10-08 01:57:03', '2022-10-08 01:57:03', 273, 128),
(274, '2022-10-08 01:57:04', '2022-10-08 01:57:04', 274, 128),
(275, '2022-10-08 01:57:04', '2022-10-08 01:57:04', 275, 128),
(276, '2022-10-08 01:57:04', '2022-10-08 01:57:04', 276, 128),
(277, '2022-10-08 01:57:07', '2022-10-08 01:57:07', 277, 131),
(278, '2022-10-08 01:57:07', '2022-10-08 01:57:07', 278, 131),
(279, '2022-10-08 01:57:07', '2022-10-08 01:57:07', 279, 131),
(280, '2022-10-08 01:57:07', '2022-10-08 01:57:07', 280, 131),
(281, '2022-10-08 01:57:07', '2022-10-08 01:57:07', 281, 131),
(282, '2022-10-08 01:57:07', '2022-10-08 01:57:07', 282, 131),
(283, '2022-10-08 01:57:08', '2022-10-08 01:57:08', 283, 132),
(284, '2022-10-08 01:57:08', '2022-10-08 01:57:08', 284, 132),
(285, '2022-10-08 01:57:08', '2022-10-08 01:57:08', 285, 132),
(286, '2022-10-08 01:57:08', '2022-10-08 01:57:08', 286, 132),
(287, '2022-10-08 01:57:08', '2022-10-08 01:57:08', 287, 132),
(288, '2022-10-08 01:57:08', '2022-10-08 01:57:08', 288, 132),
(289, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 289, 135),
(290, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 290, 135),
(291, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 291, 135),
(292, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 292, 135),
(293, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 293, 135),
(294, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 294, 135),
(295, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 295, 136),
(296, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 296, 136),
(297, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 297, 136),
(298, '2022-10-08 01:57:09', '2022-10-08 01:57:09', 298, 136),
(299, '2022-10-08 01:57:10', '2022-10-08 01:57:10', 299, 136),
(300, '2022-10-08 01:57:10', '2022-10-08 01:57:10', 300, 136),
(301, '2022-10-08 01:57:10', '2022-10-08 01:57:10', 301, 139),
(302, '2022-10-08 01:57:10', '2022-10-08 01:57:10', 302, 139),
(303, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 303, 139),
(304, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 304, 139),
(305, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 305, 139),
(306, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 306, 139),
(307, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 307, 140),
(308, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 308, 140),
(309, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 309, 140),
(310, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 310, 140),
(311, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 311, 140),
(312, '2022-10-08 01:57:11', '2022-10-08 01:57:11', 312, 140),
(313, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 313, 143),
(314, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 314, 143),
(315, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 315, 143),
(316, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 316, 143),
(317, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 317, 143),
(318, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 318, 143),
(319, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 319, 144),
(320, '2022-10-08 01:57:12', '2022-10-08 01:57:12', 320, 144),
(321, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 321, 144),
(322, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 322, 144),
(323, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 323, 144),
(324, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 324, 144),
(325, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 325, 147),
(326, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 326, 147),
(327, '2022-10-08 01:57:13', '2022-10-08 01:57:13', 327, 147),
(328, '2022-10-08 01:57:14', '2022-10-08 01:57:14', 328, 147),
(329, '2022-10-08 01:57:14', '2022-10-08 01:57:14', 329, 147),
(330, '2022-10-08 01:57:14', '2022-10-08 01:57:14', 330, 147),
(331, '2022-10-08 01:57:14', '2022-10-08 01:57:14', 331, 148),
(332, '2022-10-08 01:57:14', '2022-10-08 01:57:14', 332, 148),
(333, '2022-10-08 01:57:14', '2022-10-08 01:57:14', 333, 148),
(334, '2022-10-08 01:57:15', '2022-10-08 01:57:15', 334, 148),
(335, '2022-10-08 01:57:15', '2022-10-08 01:57:15', 335, 148),
(336, '2022-10-08 01:57:15', '2022-10-08 01:57:15', 336, 148),
(337, '2022-10-08 01:57:16', '2022-10-08 01:57:16', 337, 151),
(338, '2022-10-08 01:57:16', '2022-10-08 01:57:16', 338, 151),
(339, '2022-10-08 01:57:16', '2022-10-08 01:57:16', 339, 151),
(340, '2022-10-08 01:57:16', '2022-10-08 01:57:16', 340, 151),
(341, '2022-10-08 01:57:16', '2022-10-08 01:57:16', 341, 151),
(342, '2022-10-08 01:57:17', '2022-10-08 01:57:17', 342, 151),
(343, '2022-10-08 01:57:17', '2022-10-08 01:57:17', 343, 152),
(344, '2022-10-08 01:57:17', '2022-10-08 01:57:17', 344, 152),
(345, '2022-10-08 01:57:17', '2022-10-08 01:57:17', 345, 152),
(346, '2022-10-08 01:57:17', '2022-10-08 01:57:17', 346, 152),
(347, '2022-10-08 01:57:18', '2022-10-08 01:57:18', 347, 152),
(348, '2022-10-08 01:57:18', '2022-10-08 01:57:18', 348, 152),
(349, '2022-10-08 01:57:18', '2022-10-08 01:57:18', 349, 155),
(350, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 350, 155),
(351, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 351, 155),
(352, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 352, 155),
(353, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 353, 155),
(354, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 354, 155),
(355, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 355, 156),
(356, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 356, 156),
(357, '2022-10-08 01:57:19', '2022-10-08 01:57:19', 357, 156),
(358, '2022-10-08 01:57:20', '2022-10-08 01:57:20', 358, 156),
(359, '2022-10-08 01:57:20', '2022-10-08 01:57:20', 359, 156),
(360, '2022-10-08 01:57:20', '2022-10-08 01:57:20', 360, 156),
(361, '2022-10-08 01:57:20', '2022-10-08 01:57:20', 361, 159),
(362, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 362, 159),
(363, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 363, 159),
(364, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 364, 159),
(365, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 365, 159),
(366, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 366, 159),
(367, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 367, 160),
(368, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 368, 160),
(369, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 369, 160),
(370, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 370, 160),
(371, '2022-10-08 01:57:21', '2022-10-08 01:57:21', 371, 160),
(372, '2022-10-08 01:57:22', '2022-10-08 01:57:22', 372, 160),
(373, '2022-10-08 01:57:22', '2022-10-08 01:57:22', 373, 163),
(374, '2022-10-08 01:57:22', '2022-10-08 01:57:22', 374, 163),
(375, '2022-10-08 01:57:22', '2022-10-08 01:57:22', 375, 163),
(376, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 376, 163),
(377, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 377, 163),
(378, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 378, 163),
(379, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 379, 164),
(380, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 380, 164),
(381, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 381, 164),
(382, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 382, 164),
(383, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 383, 164),
(384, '2022-10-08 01:57:23', '2022-10-08 01:57:23', 384, 164),
(385, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 385, 167),
(386, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 386, 167),
(387, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 387, 167),
(388, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 388, 167),
(389, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 389, 167),
(390, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 390, 167),
(391, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 391, 168),
(392, '2022-10-08 01:57:24', '2022-10-08 01:57:24', 392, 168),
(393, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 393, 168),
(394, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 394, 168),
(395, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 395, 168),
(396, '2022-10-08 01:57:25', '2022-10-08 01:57:25', 396, 168),
(397, '2022-10-08 01:57:34', '2022-10-08 01:57:34', 397, 207),
(398, '2022-10-08 01:57:34', '2022-10-08 01:57:34', 398, 207),
(399, '2022-10-08 01:57:34', '2022-10-08 01:57:34', 399, 207),
(400, '2022-10-08 01:57:35', '2022-10-08 01:57:35', 400, 207),
(401, '2022-10-08 01:57:35', '2022-10-08 01:57:35', 401, 207),
(402, '2022-10-08 01:57:35', '2022-10-08 01:57:35', 402, 207),
(403, '2022-10-08 01:57:35', '2022-10-08 01:57:35', 403, 208),
(404, '2022-10-08 01:57:36', '2022-10-08 01:57:36', 404, 208),
(405, '2022-10-08 01:57:36', '2022-10-08 01:57:36', 405, 208),
(406, '2022-10-08 01:57:36', '2022-10-08 01:57:36', 406, 208),
(407, '2022-10-08 01:57:36', '2022-10-08 01:57:36', 407, 208),
(408, '2022-10-08 01:57:36', '2022-10-08 01:57:36', 408, 208),
(409, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 409, 211),
(410, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 410, 211),
(411, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 411, 211),
(412, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 412, 211),
(413, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 413, 211),
(414, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 414, 211),
(415, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 415, 212),
(416, '2022-10-08 01:57:37', '2022-10-08 01:57:37', 416, 212),
(417, '2022-10-08 01:57:38', '2022-10-08 01:57:38', 417, 212),
(418, '2022-10-08 01:57:38', '2022-10-08 01:57:38', 418, 212),
(419, '2022-10-08 01:57:38', '2022-10-08 01:57:38', 419, 212),
(420, '2022-10-08 01:57:38', '2022-10-08 01:57:38', 420, 212),
(421, '2022-10-08 01:57:38', '2022-10-08 01:57:38', 421, 215),
(422, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 422, 215),
(423, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 423, 215),
(424, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 424, 215),
(425, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 425, 215),
(426, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 426, 215),
(427, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 427, 216),
(428, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 428, 216),
(429, '2022-10-08 01:57:39', '2022-10-08 01:57:39', 429, 216),
(430, '2022-10-08 01:57:40', '2022-10-08 01:57:40', 430, 216),
(431, '2022-10-08 01:57:40', '2022-10-08 01:57:40', 431, 216),
(432, '2022-10-08 01:57:40', '2022-10-08 01:57:40', 432, 216),
(433, '2022-10-08 01:57:41', '2022-10-08 01:57:41', 433, 219),
(434, '2022-10-08 01:57:41', '2022-10-08 01:57:41', 434, 219),
(435, '2022-10-08 01:57:41', '2022-10-08 01:57:41', 435, 219),
(436, '2022-10-08 01:57:41', '2022-10-08 01:57:41', 436, 219),
(437, '2022-10-08 01:57:41', '2022-10-08 01:57:41', 437, 219),
(438, '2022-10-08 01:57:41', '2022-10-08 01:57:41', 438, 219),
(439, '2022-10-08 01:57:41', '2022-10-08 01:57:41', 439, 220),
(440, '2022-10-08 01:57:42', '2022-10-08 01:57:42', 440, 220),
(441, '2022-10-08 01:57:42', '2022-10-08 01:57:42', 441, 220),
(442, '2022-10-08 01:57:42', '2022-10-08 01:57:42', 442, 220),
(443, '2022-10-08 01:57:42', '2022-10-08 01:57:42', 443, 220),
(444, '2022-10-08 01:57:42', '2022-10-08 01:57:42', 444, 220),
(445, '2022-10-08 01:57:43', '2022-10-08 01:57:43', 445, 223),
(446, '2022-10-08 01:57:43', '2022-10-08 01:57:43', 446, 223),
(447, '2022-10-08 01:57:43', '2022-10-08 01:57:43', 447, 223),
(448, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 448, 223),
(449, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 449, 223),
(450, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 450, 223),
(451, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 451, 224),
(452, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 452, 224),
(453, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 453, 224),
(454, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 454, 224),
(455, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 455, 224),
(456, '2022-10-08 01:57:44', '2022-10-08 01:57:44', 456, 224),
(457, '2022-10-08 01:57:45', '2022-10-08 01:57:45', 457, 227),
(458, '2022-10-08 01:57:46', '2022-10-08 01:57:46', 458, 227),
(459, '2022-10-08 01:57:46', '2022-10-08 01:57:46', 459, 227),
(460, '2022-10-08 01:57:46', '2022-10-08 01:57:46', 460, 227),
(461, '2022-10-08 01:57:46', '2022-10-08 01:57:46', 461, 227),
(462, '2022-10-08 01:57:46', '2022-10-08 01:57:46', 462, 227),
(463, '2022-10-08 01:57:46', '2022-10-08 01:57:46', 463, 228),
(464, '2022-10-08 01:57:47', '2022-10-08 01:57:47', 464, 228),
(465, '2022-10-08 01:57:47', '2022-10-08 01:57:47', 465, 228),
(466, '2022-10-08 01:57:47', '2022-10-08 01:57:47', 466, 228),
(467, '2022-10-08 01:57:47', '2022-10-08 01:57:47', 467, 228),
(468, '2022-10-08 01:57:47', '2022-10-08 01:57:47', 468, 228),
(469, '2022-10-08 01:57:48', '2022-10-08 01:57:48', 469, 231),
(470, '2022-10-08 01:57:48', '2022-10-08 01:57:48', 470, 231),
(471, '2022-10-08 01:57:49', '2022-10-08 01:57:49', 471, 231),
(472, '2022-10-08 01:57:49', '2022-10-08 01:57:49', 472, 231),
(473, '2022-10-08 01:57:49', '2022-10-08 01:57:49', 473, 231),
(474, '2022-10-08 01:57:49', '2022-10-08 01:57:49', 474, 231),
(475, '2022-10-08 01:57:49', '2022-10-08 01:57:49', 475, 232),
(476, '2022-10-08 01:57:49', '2022-10-08 01:57:49', 476, 232),
(477, '2022-10-08 01:57:49', '2022-10-08 01:57:49', 477, 232),
(478, '2022-10-08 01:57:50', '2022-10-08 01:57:50', 478, 232),
(479, '2022-10-08 01:57:50', '2022-10-08 01:57:50', 479, 232),
(480, '2022-10-08 01:57:50', '2022-10-08 01:57:50', 480, 232),
(481, '2022-10-08 01:57:51', '2022-10-08 01:57:51', 481, 235),
(482, '2022-10-08 01:57:51', '2022-10-08 01:57:51', 482, 235),
(483, '2022-10-08 01:57:52', '2022-10-08 01:57:52', 483, 235),
(484, '2022-10-08 01:57:52', '2022-10-08 01:57:52', 484, 235),
(485, '2022-10-08 01:57:52', '2022-10-08 01:57:52', 485, 235),
(486, '2022-10-08 01:57:52', '2022-10-08 01:57:52', 486, 235),
(487, '2022-10-08 01:57:52', '2022-10-08 01:57:52', 487, 236),
(488, '2022-10-08 01:57:53', '2022-10-08 01:57:53', 488, 236),
(489, '2022-10-08 01:57:53', '2022-10-08 01:57:53', 489, 236),
(490, '2022-10-08 01:57:53', '2022-10-08 01:57:53', 490, 236),
(491, '2022-10-08 01:57:54', '2022-10-08 01:57:54', 491, 236),
(492, '2022-10-08 01:57:54', '2022-10-08 01:57:54', 492, 236),
(493, '2022-10-08 01:57:55', '2022-10-08 01:57:55', 493, 239),
(494, '2022-10-08 01:57:55', '2022-10-08 01:57:55', 494, 239),
(495, '2022-10-08 01:57:55', '2022-10-08 01:57:55', 495, 239),
(496, '2022-10-08 01:57:56', '2022-10-08 01:57:56', 496, 239),
(497, '2022-10-08 01:57:56', '2022-10-08 01:57:56', 497, 239),
(498, '2022-10-08 01:57:56', '2022-10-08 01:57:56', 498, 239),
(499, '2022-10-08 01:57:56', '2022-10-08 01:57:56', 499, 240),
(500, '2022-10-08 01:57:56', '2022-10-08 01:57:56', 500, 240),
(501, '2022-10-08 01:57:56', '2022-10-08 01:57:56', 501, 240),
(502, '2022-10-08 01:57:57', '2022-10-08 01:57:57', 502, 240),
(503, '2022-10-08 01:57:57', '2022-10-08 01:57:57', 503, 240),
(504, '2022-10-08 01:57:57', '2022-10-08 01:57:57', 504, 240),
(505, '2022-10-08 01:57:58', '2022-10-08 01:57:58', 505, 243),
(506, '2022-10-08 01:57:58', '2022-10-08 01:57:58', 506, 243),
(507, '2022-10-08 01:57:58', '2022-10-08 01:57:58', 507, 243),
(508, '2022-10-08 01:57:58', '2022-10-08 01:57:58', 508, 243),
(509, '2022-10-08 01:57:58', '2022-10-08 01:57:58', 509, 243),
(510, '2022-10-08 01:57:58', '2022-10-08 01:57:58', 510, 243),
(511, '2022-10-08 01:57:58', '2022-10-08 01:57:58', 511, 244),
(512, '2022-10-08 01:57:59', '2022-10-08 01:57:59', 512, 244),
(513, '2022-10-08 01:57:59', '2022-10-08 01:57:59', 513, 244),
(514, '2022-10-08 01:57:59', '2022-10-08 01:57:59', 514, 244),
(515, '2022-10-08 01:57:59', '2022-10-08 01:57:59', 515, 244),
(516, '2022-10-08 01:57:59', '2022-10-08 01:57:59', 516, 244),
(517, '2022-10-08 01:58:00', '2022-10-08 01:58:00', 517, 247),
(518, '2022-10-08 01:58:00', '2022-10-08 01:58:00', 518, 247),
(519, '2022-10-08 01:58:00', '2022-10-08 01:58:00', 519, 247),
(520, '2022-10-08 01:58:00', '2022-10-08 01:58:00', 520, 247),
(521, '2022-10-08 01:58:00', '2022-10-08 01:58:00', 521, 247),
(522, '2022-10-08 01:58:00', '2022-10-08 01:58:00', 522, 247),
(523, '2022-10-08 01:58:01', '2022-10-08 01:58:01', 523, 248),
(524, '2022-10-08 01:58:01', '2022-10-08 01:58:01', 524, 248),
(525, '2022-10-08 01:58:01', '2022-10-08 01:58:01', 525, 248),
(526, '2022-10-08 01:58:01', '2022-10-08 01:58:01', 526, 248),
(527, '2022-10-08 01:58:01', '2022-10-08 01:58:01', 527, 248),
(528, '2022-10-08 01:58:01', '2022-10-08 01:58:01', 528, 248),
(529, '2022-10-08 01:58:04', '2022-10-08 01:58:04', 529, 251),
(530, '2022-10-08 01:58:04', '2022-10-08 01:58:04', 530, 251),
(531, '2022-10-08 01:58:04', '2022-10-08 01:58:04', 531, 251),
(532, '2022-10-08 01:58:04', '2022-10-08 01:58:04', 532, 251),
(533, '2022-10-08 01:58:04', '2022-10-08 01:58:04', 533, 251),
(534, '2022-10-08 01:58:04', '2022-10-08 01:58:04', 534, 251),
(535, '2022-10-08 01:58:04', '2022-10-08 01:58:04', 535, 252),
(536, '2022-10-08 01:58:05', '2022-10-08 01:58:05', 536, 252),
(537, '2022-10-08 01:58:05', '2022-10-08 01:58:05', 537, 252),
(538, '2022-10-08 01:58:05', '2022-10-08 01:58:05', 538, 252),
(539, '2022-10-08 01:58:05', '2022-10-08 01:58:05', 539, 252),
(540, '2022-10-08 01:58:06', '2022-10-08 01:58:06', 540, 252),
(541, '2022-10-08 01:58:06', '2022-10-08 01:58:06', 541, 255),
(542, '2022-10-08 01:58:07', '2022-10-08 01:58:07', 542, 255),
(543, '2022-10-08 01:58:07', '2022-10-08 01:58:07', 543, 255),
(544, '2022-10-08 01:58:07', '2022-10-08 01:58:07', 544, 255),
(545, '2022-10-08 01:58:07', '2022-10-08 01:58:07', 545, 255),
(546, '2022-10-08 01:58:07', '2022-10-08 01:58:07', 546, 255),
(547, '2022-10-08 01:58:07', '2022-10-08 01:58:07', 547, 256),
(548, '2022-10-08 01:58:08', '2022-10-08 01:58:08', 548, 256),
(549, '2022-10-08 01:58:08', '2022-10-08 01:58:08', 549, 256),
(550, '2022-10-08 01:58:08', '2022-10-08 01:58:08', 550, 256),
(551, '2022-10-08 01:58:08', '2022-10-08 01:58:08', 551, 256),
(552, '2022-10-08 01:58:08', '2022-10-08 01:58:08', 552, 256),
(553, '2022-10-08 01:58:09', '2022-10-08 01:58:09', 553, 259),
(554, '2022-10-08 01:58:09', '2022-10-08 01:58:09', 554, 259),
(555, '2022-10-08 01:58:09', '2022-10-08 01:58:09', 555, 259),
(556, '2022-10-08 01:58:09', '2022-10-08 01:58:09', 556, 259),
(557, '2022-10-08 01:58:10', '2022-10-08 01:58:10', 557, 259),
(558, '2022-10-08 01:58:10', '2022-10-08 01:58:10', 558, 259),
(559, '2022-10-08 01:58:12', '2022-10-08 01:58:12', 559, 260),
(560, '2022-10-08 01:58:12', '2022-10-08 01:58:12', 560, 260),
(561, '2022-10-08 01:58:13', '2022-10-08 01:58:13', 561, 260),
(562, '2022-10-08 01:58:13', '2022-10-08 01:58:13', 562, 260),
(563, '2022-10-08 01:58:14', '2022-10-08 01:58:14', 563, 260),
(564, '2022-10-08 01:58:14', '2022-10-08 01:58:14', 564, 260),
(565, '2022-10-08 01:58:14', '2022-10-08 01:58:14', 565, 263),
(566, '2022-10-08 01:58:14', '2022-10-08 01:58:14', 566, 263),
(567, '2022-10-08 01:58:14', '2022-10-08 01:58:14', 567, 263),
(568, '2022-10-08 01:58:14', '2022-10-08 01:58:14', 568, 263),
(569, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 569, 263),
(570, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 570, 263),
(571, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 571, 264),
(572, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 572, 264),
(573, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 573, 264),
(574, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 574, 264),
(575, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 575, 264),
(576, '2022-10-08 01:58:15', '2022-10-08 01:58:15', 576, 264),
(577, '2022-10-08 01:58:16', '2022-10-08 01:58:16', 577, 267),
(578, '2022-10-08 01:58:16', '2022-10-08 01:58:16', 578, 267),
(579, '2022-10-08 01:58:16', '2022-10-08 01:58:16', 579, 267),
(580, '2022-10-08 01:58:16', '2022-10-08 01:58:16', 580, 267),
(581, '2022-10-08 01:58:16', '2022-10-08 01:58:16', 581, 267),
(582, '2022-10-08 01:58:16', '2022-10-08 01:58:16', 582, 267),
(583, '2022-10-08 01:58:16', '2022-10-08 01:58:16', 583, 268),
(584, '2022-10-08 01:58:17', '2022-10-08 01:58:17', 584, 268),
(585, '2022-10-08 01:58:17', '2022-10-08 01:58:17', 585, 268),
(586, '2022-10-08 01:58:17', '2022-10-08 01:58:17', 586, 268),
(587, '2022-10-08 01:58:17', '2022-10-08 01:58:17', 587, 268),
(588, '2022-10-08 01:58:17', '2022-10-08 01:58:17', 588, 268),
(589, '2022-10-08 01:58:18', '2022-10-08 01:58:18', 589, 271),
(590, '2022-10-08 01:58:18', '2022-10-08 01:58:18', 590, 271),
(591, '2022-10-08 01:58:18', '2022-10-08 01:58:18', 591, 271),
(592, '2022-10-08 01:58:19', '2022-10-08 01:58:19', 592, 271),
(593, '2022-10-08 01:58:19', '2022-10-08 01:58:19', 593, 271),
(594, '2022-10-08 01:58:19', '2022-10-08 01:58:19', 594, 271),
(595, '2022-10-08 01:58:19', '2022-10-08 01:58:19', 595, 272),
(596, '2022-10-08 01:58:19', '2022-10-08 01:58:19', 596, 272),
(597, '2022-10-08 01:58:19', '2022-10-08 01:58:19', 597, 272),
(598, '2022-10-08 01:58:19', '2022-10-08 01:58:19', 598, 272),
(599, '2022-10-08 01:58:20', '2022-10-08 01:58:20', 599, 272),
(600, '2022-10-08 01:58:20', '2022-10-08 01:58:20', 600, 272),
(601, '2022-10-08 01:58:20', '2022-10-08 01:58:20', 601, 275),
(602, '2022-10-08 01:58:20', '2022-10-08 01:58:20', 602, 275),
(603, '2022-10-08 01:58:20', '2022-10-08 01:58:20', 603, 275),
(604, '2022-10-08 01:58:20', '2022-10-08 01:58:20', 604, 275),
(605, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 605, 275),
(606, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 606, 275),
(607, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 607, 276),
(608, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 608, 276),
(609, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 609, 276),
(610, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 610, 276),
(611, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 611, 276),
(612, '2022-10-08 01:58:21', '2022-10-08 01:58:21', 612, 276),
(613, '2022-10-08 01:58:22', '2022-10-08 01:58:22', 613, 279),
(614, '2022-10-08 01:58:22', '2022-10-08 01:58:22', 614, 279),
(615, '2022-10-08 01:58:22', '2022-10-08 01:58:22', 615, 279),
(616, '2022-10-08 01:58:22', '2022-10-08 01:58:22', 616, 279),
(617, '2022-10-08 01:58:22', '2022-10-08 01:58:22', 617, 279),
(618, '2022-10-08 01:58:22', '2022-10-08 01:58:22', 618, 279),
(619, '2022-10-08 01:58:23', '2022-10-08 01:58:23', 619, 280),
(620, '2022-10-08 01:58:23', '2022-10-08 01:58:23', 620, 280),
(621, '2022-10-08 01:58:23', '2022-10-08 01:58:23', 621, 280),
(622, '2022-10-08 01:58:23', '2022-10-08 01:58:23', 622, 280),
(623, '2022-10-08 01:58:23', '2022-10-08 01:58:23', 623, 280),
(624, '2022-10-08 01:58:23', '2022-10-08 01:58:23', 624, 280),
(625, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 625, 283),
(626, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 626, 283),
(627, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 627, 283),
(628, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 628, 283),
(629, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 629, 283),
(630, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 630, 283),
(631, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 631, 284),
(632, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 632, 284),
(633, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 633, 284),
(634, '2022-10-08 01:58:24', '2022-10-08 01:58:24', 634, 284),
(635, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 635, 284),
(636, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 636, 284),
(637, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 637, 287),
(638, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 638, 287),
(639, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 639, 287),
(640, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 640, 287),
(641, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 641, 287),
(642, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 642, 287),
(643, '2022-10-08 01:58:25', '2022-10-08 01:58:25', 643, 288),
(644, '2022-10-08 01:58:26', '2022-10-08 01:58:26', 644, 288),
(645, '2022-10-08 01:58:26', '2022-10-08 01:58:26', 645, 288),
(646, '2022-10-08 01:58:26', '2022-10-08 01:58:26', 646, 288),
(647, '2022-10-08 01:58:26', '2022-10-08 01:58:26', 647, 288),
(648, '2022-10-08 01:58:26', '2022-10-08 01:58:26', 648, 288),
(649, '2022-10-08 01:58:26', '2022-10-08 01:58:26', 649, 291),
(650, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 650, 291),
(651, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 651, 291),
(652, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 652, 291),
(653, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 653, 291),
(654, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 654, 291),
(655, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 655, 292),
(656, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 656, 292),
(657, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 657, 292),
(658, '2022-10-08 01:58:27', '2022-10-08 01:58:27', 658, 292),
(659, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 659, 292),
(660, '2022-10-08 01:58:28', '2022-10-08 01:58:28', 660, 292),
(661, '2022-10-08 01:58:38', '2022-10-08 01:58:38', 661, 313),
(662, '2022-10-08 01:58:38', '2022-10-08 01:58:38', 662, 313),
(663, '2022-10-08 01:58:38', '2022-10-08 01:58:38', 663, 313),
(664, '2022-10-08 01:58:38', '2022-10-08 01:58:38', 664, 313),
(665, '2022-10-08 01:58:38', '2022-10-08 01:58:38', 665, 313),
(666, '2022-10-08 01:58:38', '2022-10-08 01:58:38', 666, 313),
(667, '2022-10-08 01:58:39', '2022-10-08 01:58:39', 667, 314),
(668, '2022-10-08 01:58:39', '2022-10-08 01:58:39', 668, 314),
(669, '2022-10-08 01:58:39', '2022-10-08 01:58:39', 669, 314),
(670, '2022-10-08 01:58:39', '2022-10-08 01:58:39', 670, 314),
(671, '2022-10-08 01:58:39', '2022-10-08 01:58:39', 671, 314),
(672, '2022-10-08 01:58:39', '2022-10-08 01:58:39', 672, 314),
(673, '2022-10-08 01:58:40', '2022-10-08 01:58:40', 673, 317),
(674, '2022-10-08 01:58:40', '2022-10-08 01:58:40', 674, 317),
(675, '2022-10-08 01:58:40', '2022-10-08 01:58:40', 675, 317),
(676, '2022-10-08 01:58:40', '2022-10-08 01:58:40', 676, 317),
(677, '2022-10-08 01:58:41', '2022-10-08 01:58:41', 677, 317),
(678, '2022-10-08 01:58:41', '2022-10-08 01:58:41', 678, 317),
(679, '2022-10-08 01:58:41', '2022-10-08 01:58:41', 679, 318),
(680, '2022-10-08 01:58:41', '2022-10-08 01:58:41', 680, 318),
(681, '2022-10-08 01:58:41', '2022-10-08 01:58:41', 681, 318),
(682, '2022-10-08 01:58:41', '2022-10-08 01:58:41', 682, 318),
(683, '2022-10-08 01:58:44', '2022-10-08 01:58:44', 683, 318),
(684, '2022-10-08 01:58:44', '2022-10-08 01:58:44', 684, 318),
(685, '2022-10-08 01:58:46', '2022-10-08 01:58:46', 685, 321),
(686, '2022-10-08 01:58:46', '2022-10-08 01:58:46', 686, 321),
(687, '2022-10-08 01:58:46', '2022-10-08 01:58:46', 687, 321),
(688, '2022-10-08 01:58:47', '2022-10-08 01:58:47', 688, 321),
(689, '2022-10-08 01:58:47', '2022-10-08 01:58:47', 689, 321),
(690, '2022-10-08 01:58:48', '2022-10-08 01:58:48', 690, 321),
(691, '2022-10-08 01:58:48', '2022-10-08 01:58:48', 691, 322),
(692, '2022-10-08 01:58:49', '2022-10-08 01:58:49', 692, 322),
(693, '2022-10-08 01:58:49', '2022-10-08 01:58:49', 693, 322),
(694, '2022-10-08 01:58:49', '2022-10-08 01:58:49', 694, 322),
(695, '2022-10-08 01:58:49', '2022-10-08 01:58:49', 695, 322),
(696, '2022-10-08 01:58:49', '2022-10-08 01:58:49', 696, 322),
(697, '2022-10-08 01:58:50', '2022-10-08 01:58:50', 697, 325),
(698, '2022-10-08 01:58:51', '2022-10-08 01:58:51', 698, 325),
(699, '2022-10-08 01:58:51', '2022-10-08 01:58:51', 699, 325),
(700, '2022-10-08 01:58:51', '2022-10-08 01:58:51', 700, 325),
(701, '2022-10-08 01:58:51', '2022-10-08 01:58:51', 701, 325),
(702, '2022-10-08 01:58:51', '2022-10-08 01:58:51', 702, 325),
(703, '2022-10-08 01:58:51', '2022-10-08 01:58:51', 703, 326),
(704, '2022-10-08 01:58:51', '2022-10-08 01:58:51', 704, 326),
(705, '2022-10-08 01:58:52', '2022-10-08 01:58:52', 705, 326),
(706, '2022-10-08 01:58:52', '2022-10-08 01:58:52', 706, 326),
(707, '2022-10-08 01:58:52', '2022-10-08 01:58:52', 707, 326),
(708, '2022-10-08 01:58:52', '2022-10-08 01:58:52', 708, 326),
(709, '2022-10-08 01:58:53', '2022-10-08 01:58:53', 709, 329),
(710, '2022-10-08 01:58:53', '2022-10-08 01:58:53', 710, 329),
(711, '2022-10-08 01:58:53', '2022-10-08 01:58:53', 711, 329),
(712, '2022-10-08 01:58:53', '2022-10-08 01:58:53', 712, 329),
(713, '2022-10-08 01:58:53', '2022-10-08 01:58:53', 713, 329),
(714, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 714, 329),
(715, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 715, 330),
(716, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 716, 330),
(717, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 717, 330),
(718, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 718, 330),
(719, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 719, 330),
(720, '2022-10-08 01:58:54', '2022-10-08 01:58:54', 720, 330),
(721, '2022-10-08 01:58:55', '2022-10-08 01:58:55', 721, 333),
(722, '2022-10-08 01:58:55', '2022-10-08 01:58:55', 722, 333),
(723, '2022-10-08 01:58:55', '2022-10-08 01:58:55', 723, 333),
(724, '2022-10-08 01:58:55', '2022-10-08 01:58:55', 724, 333),
(725, '2022-10-08 01:58:55', '2022-10-08 01:58:55', 725, 333),
(726, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 726, 333),
(727, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 727, 334),
(728, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 728, 334),
(729, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 729, 334),
(730, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 730, 334),
(731, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 731, 334),
(732, '2022-10-08 01:58:56', '2022-10-08 01:58:56', 732, 334),
(733, '2022-10-08 01:58:57', '2022-10-08 01:58:57', 733, 337),
(734, '2022-10-08 01:58:57', '2022-10-08 01:58:57', 734, 337),
(735, '2022-10-08 01:58:57', '2022-10-08 01:58:57', 735, 337),
(736, '2022-10-08 01:58:57', '2022-10-08 01:58:57', 736, 337),
(737, '2022-10-08 01:58:57', '2022-10-08 01:58:57', 737, 337),
(738, '2022-10-08 01:58:58', '2022-10-08 01:58:58', 738, 337),
(739, '2022-10-08 01:58:58', '2022-10-08 01:58:58', 739, 338),
(740, '2022-10-08 01:58:58', '2022-10-08 01:58:58', 740, 338),
(741, '2022-10-08 01:58:58', '2022-10-08 01:58:58', 741, 338),
(742, '2022-10-08 01:58:58', '2022-10-08 01:58:58', 742, 338),
(743, '2022-10-08 01:58:58', '2022-10-08 01:58:58', 743, 338),
(744, '2022-10-08 01:58:58', '2022-10-08 01:58:58', 744, 338),
(745, '2022-10-08 01:58:59', '2022-10-08 01:58:59', 745, 341),
(746, '2022-10-08 01:58:59', '2022-10-08 01:58:59', 746, 341),
(747, '2022-10-08 01:58:59', '2022-10-08 01:58:59', 747, 341),
(748, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 748, 341),
(749, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 749, 341),
(750, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 750, 341),
(751, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 751, 342),
(752, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 752, 342),
(753, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 753, 342),
(754, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 754, 342),
(755, '2022-10-08 01:59:00', '2022-10-08 01:59:00', 755, 342),
(756, '2022-10-08 01:59:01', '2022-10-08 01:59:01', 756, 342),
(757, '2022-10-08 01:59:02', '2022-10-08 01:59:02', 757, 345),
(758, '2022-10-08 01:59:02', '2022-10-08 01:59:02', 758, 345),
(759, '2022-10-08 01:59:02', '2022-10-08 01:59:02', 759, 345),
(760, '2022-10-08 01:59:02', '2022-10-08 01:59:02', 760, 345),
(761, '2022-10-08 01:59:02', '2022-10-08 01:59:02', 761, 345),
(762, '2022-10-08 01:59:03', '2022-10-08 01:59:03', 762, 345),
(763, '2022-10-08 01:59:03', '2022-10-08 01:59:03', 763, 346),
(764, '2022-10-08 01:59:03', '2022-10-08 01:59:03', 764, 346),
(765, '2022-10-08 01:59:03', '2022-10-08 01:59:03', 765, 346),
(766, '2022-10-08 01:59:03', '2022-10-08 01:59:03', 766, 346),
(767, '2022-10-08 01:59:04', '2022-10-08 01:59:04', 767, 346),
(768, '2022-10-08 01:59:04', '2022-10-08 01:59:04', 768, 346),
(769, '2022-10-08 01:59:04', '2022-10-08 01:59:04', 769, 349),
(770, '2022-10-08 01:59:05', '2022-10-08 01:59:05', 770, 349),
(771, '2022-10-08 01:59:05', '2022-10-08 01:59:05', 771, 349),
(772, '2022-10-08 01:59:05', '2022-10-08 01:59:05', 772, 349),
(773, '2022-10-08 01:59:05', '2022-10-08 01:59:05', 773, 349),
(774, '2022-10-08 01:59:05', '2022-10-08 01:59:05', 774, 349),
(775, '2022-10-08 01:59:05', '2022-10-08 01:59:05', 775, 350),
(776, '2022-10-08 01:59:05', '2022-10-08 01:59:05', 776, 350),
(777, '2022-10-08 01:59:06', '2022-10-08 01:59:06', 777, 350),
(778, '2022-10-08 01:59:06', '2022-10-08 01:59:06', 778, 350),
(779, '2022-10-08 01:59:06', '2022-10-08 01:59:06', 779, 350),
(780, '2022-10-08 01:59:06', '2022-10-08 01:59:06', 780, 350),
(781, '2022-10-08 01:59:07', '2022-10-08 01:59:07', 781, 353),
(782, '2022-10-08 01:59:07', '2022-10-08 01:59:07', 782, 353),
(783, '2022-10-08 01:59:07', '2022-10-08 01:59:07', 783, 353),
(784, '2022-10-08 01:59:07', '2022-10-08 01:59:07', 784, 353),
(785, '2022-10-08 01:59:07', '2022-10-08 01:59:07', 785, 353),
(786, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 786, 353),
(787, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 787, 354),
(788, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 788, 354),
(789, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 789, 354),
(790, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 790, 354),
(791, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 791, 354),
(792, '2022-10-08 01:59:08', '2022-10-08 01:59:08', 792, 354),
(793, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 793, 393),
(794, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 794, 393),
(795, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 795, 393),
(796, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 796, 393),
(797, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 797, 393),
(798, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 798, 393),
(799, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 799, 394),
(800, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 800, 394),
(801, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 801, 394),
(802, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 802, 394),
(803, '2022-10-08 01:59:16', '2022-10-08 01:59:16', 803, 394),
(804, '2022-10-08 01:59:17', '2022-10-08 01:59:17', 804, 394),
(805, '2022-10-08 01:59:17', '2022-10-08 01:59:17', 805, 397),
(806, '2022-10-08 01:59:17', '2022-10-08 01:59:17', 806, 397),
(807, '2022-10-08 01:59:17', '2022-10-08 01:59:17', 807, 397),
(808, '2022-10-08 01:59:17', '2022-10-08 01:59:17', 808, 397),
(809, '2022-10-08 01:59:18', '2022-10-08 01:59:18', 809, 397),
(810, '2022-10-08 01:59:18', '2022-10-08 01:59:18', 810, 397),
(811, '2022-10-08 01:59:18', '2022-10-08 01:59:18', 811, 398),
(812, '2022-10-08 01:59:18', '2022-10-08 01:59:18', 812, 398),
(813, '2022-10-08 01:59:18', '2022-10-08 01:59:18', 813, 398),
(814, '2022-10-08 01:59:18', '2022-10-08 01:59:18', 814, 398),
(815, '2022-10-08 01:59:18', '2022-10-08 01:59:18', 815, 398),
(816, '2022-10-08 01:59:19', '2022-10-08 01:59:19', 816, 398),
(817, '2022-10-08 01:59:19', '2022-10-08 01:59:19', 817, 401),
(818, '2022-10-08 01:59:19', '2022-10-08 01:59:19', 818, 401),
(819, '2022-10-08 01:59:19', '2022-10-08 01:59:19', 819, 401),
(820, '2022-10-08 01:59:19', '2022-10-08 01:59:19', 820, 401),
(821, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 821, 401),
(822, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 822, 401),
(823, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 823, 402),
(824, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 824, 402),
(825, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 825, 402),
(826, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 826, 402),
(827, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 827, 402),
(828, '2022-10-08 01:59:20', '2022-10-08 01:59:20', 828, 402),
(829, '2022-10-08 01:59:21', '2022-10-08 01:59:21', 829, 405),
(830, '2022-10-08 01:59:21', '2022-10-08 01:59:21', 830, 405),
(831, '2022-10-08 01:59:21', '2022-10-08 01:59:21', 831, 405),
(832, '2022-10-08 01:59:21', '2022-10-08 01:59:21', 832, 405),
(833, '2022-10-08 01:59:21', '2022-10-08 01:59:21', 833, 405),
(834, '2022-10-08 01:59:21', '2022-10-08 01:59:21', 834, 405),
(835, '2022-10-08 01:59:21', '2022-10-08 01:59:21', 835, 406),
(836, '2022-10-08 01:59:22', '2022-10-08 01:59:22', 836, 406),
(837, '2022-10-08 01:59:22', '2022-10-08 01:59:22', 837, 406),
(838, '2022-10-08 01:59:22', '2022-10-08 01:59:22', 838, 406),
(839, '2022-10-08 01:59:22', '2022-10-08 01:59:22', 839, 406),
(840, '2022-10-08 01:59:22', '2022-10-08 01:59:22', 840, 406),
(841, '2022-10-08 01:59:23', '2022-10-08 01:59:23', 841, 409),
(842, '2022-10-08 01:59:23', '2022-10-08 01:59:23', 842, 409),
(843, '2022-10-08 01:59:24', '2022-10-08 01:59:24', 843, 409),
(844, '2022-10-08 01:59:24', '2022-10-08 01:59:24', 844, 409),
(845, '2022-10-08 01:59:24', '2022-10-08 01:59:24', 845, 409),
(846, '2022-10-08 01:59:24', '2022-10-08 01:59:24', 846, 409),
(847, '2022-10-08 01:59:25', '2022-10-08 01:59:25', 847, 410),
(848, '2022-10-08 01:59:25', '2022-10-08 01:59:25', 848, 410),
(849, '2022-10-08 01:59:25', '2022-10-08 01:59:25', 849, 410),
(850, '2022-10-08 01:59:25', '2022-10-08 01:59:25', 850, 410),
(851, '2022-10-08 01:59:25', '2022-10-08 01:59:25', 851, 410),
(852, '2022-10-08 01:59:25', '2022-10-08 01:59:25', 852, 410),
(853, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 853, 413),
(854, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 854, 413),
(855, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 855, 413),
(856, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 856, 413),
(857, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 857, 413),
(858, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 858, 413),
(859, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 859, 414),
(860, '2022-10-08 01:59:26', '2022-10-08 01:59:26', 860, 414),
(861, '2022-10-08 01:59:27', '2022-10-08 01:59:27', 861, 414),
(862, '2022-10-08 01:59:27', '2022-10-08 01:59:27', 862, 414),
(863, '2022-10-08 01:59:27', '2022-10-08 01:59:27', 863, 414),
(864, '2022-10-08 01:59:27', '2022-10-08 01:59:27', 864, 414),
(865, '2022-10-08 01:59:28', '2022-10-08 01:59:28', 865, 417),
(866, '2022-10-08 01:59:28', '2022-10-08 01:59:28', 866, 417),
(867, '2022-10-08 01:59:28', '2022-10-08 01:59:28', 867, 417),
(868, '2022-10-08 01:59:28', '2022-10-08 01:59:28', 868, 417),
(869, '2022-10-08 01:59:28', '2022-10-08 01:59:28', 869, 417),
(870, '2022-10-08 01:59:29', '2022-10-08 01:59:29', 870, 417),
(871, '2022-10-08 01:59:29', '2022-10-08 01:59:29', 871, 418),
(872, '2022-10-08 01:59:29', '2022-10-08 01:59:29', 872, 418),
(873, '2022-10-08 01:59:29', '2022-10-08 01:59:29', 873, 418),
(874, '2022-10-08 01:59:29', '2022-10-08 01:59:29', 874, 418),
(875, '2022-10-08 01:59:29', '2022-10-08 01:59:29', 875, 418),
(876, '2022-10-08 01:59:30', '2022-10-08 01:59:30', 876, 418),
(877, '2022-10-08 01:59:30', '2022-10-08 01:59:30', 877, 421),
(878, '2022-10-08 01:59:30', '2022-10-08 01:59:30', 878, 421),
(879, '2022-10-08 01:59:30', '2022-10-08 01:59:30', 879, 421),
(880, '2022-10-08 01:59:31', '2022-10-08 01:59:31', 880, 421),
(881, '2022-10-08 01:59:31', '2022-10-08 01:59:31', 881, 421),
(882, '2022-10-08 01:59:31', '2022-10-08 01:59:31', 882, 421),
(883, '2022-10-08 01:59:31', '2022-10-08 01:59:31', 883, 422),
(884, '2022-10-08 01:59:31', '2022-10-08 01:59:31', 884, 422),
(885, '2022-10-08 01:59:31', '2022-10-08 01:59:31', 885, 422),
(886, '2022-10-08 01:59:32', '2022-10-08 01:59:32', 886, 422),
(887, '2022-10-08 01:59:32', '2022-10-08 01:59:32', 887, 422),
(888, '2022-10-08 01:59:32', '2022-10-08 01:59:32', 888, 422),
(889, '2022-10-08 01:59:33', '2022-10-08 01:59:33', 889, 425),
(890, '2022-10-08 01:59:34', '2022-10-08 01:59:34', 890, 425),
(891, '2022-10-08 01:59:34', '2022-10-08 01:59:34', 891, 425),
(892, '2022-10-08 01:59:34', '2022-10-08 01:59:34', 892, 425),
(893, '2022-10-08 01:59:34', '2022-10-08 01:59:34', 893, 425),
(894, '2022-10-08 01:59:35', '2022-10-08 01:59:35', 894, 425),
(895, '2022-10-08 01:59:35', '2022-10-08 01:59:35', 895, 426),
(896, '2022-10-08 01:59:35', '2022-10-08 01:59:35', 896, 426),
(897, '2022-10-08 01:59:35', '2022-10-08 01:59:35', 897, 426),
(898, '2022-10-08 01:59:36', '2022-10-08 01:59:36', 898, 426),
(899, '2022-10-08 01:59:36', '2022-10-08 01:59:36', 899, 426),
(900, '2022-10-08 01:59:36', '2022-10-08 01:59:36', 900, 426),
(901, '2022-10-08 01:59:36', '2022-10-08 01:59:36', 901, 429),
(902, '2022-10-08 01:59:37', '2022-10-08 01:59:37', 902, 429),
(903, '2022-10-08 01:59:37', '2022-10-08 01:59:37', 903, 429),
(904, '2022-10-08 01:59:37', '2022-10-08 01:59:37', 904, 429),
(905, '2022-10-08 01:59:37', '2022-10-08 01:59:37', 905, 429),
(906, '2022-10-08 01:59:37', '2022-10-08 01:59:37', 906, 429),
(907, '2022-10-08 01:59:37', '2022-10-08 01:59:37', 907, 430),
(908, '2022-10-08 01:59:38', '2022-10-08 01:59:38', 908, 430),
(909, '2022-10-08 01:59:38', '2022-10-08 01:59:38', 909, 430),
(910, '2022-10-08 01:59:38', '2022-10-08 01:59:38', 910, 430),
(911, '2022-10-08 01:59:38', '2022-10-08 01:59:38', 911, 430),
(912, '2022-10-08 01:59:38', '2022-10-08 01:59:38', 912, 430),
(913, '2022-10-08 01:59:39', '2022-10-08 01:59:39', 913, 433),
(914, '2022-10-08 01:59:39', '2022-10-08 01:59:39', 914, 433),
(915, '2022-10-08 01:59:39', '2022-10-08 01:59:39', 915, 433),
(916, '2022-10-08 01:59:39', '2022-10-08 01:59:39', 916, 433),
(917, '2022-10-08 01:59:40', '2022-10-08 01:59:40', 917, 433),
(918, '2022-10-08 01:59:40', '2022-10-08 01:59:40', 918, 433),
(919, '2022-10-08 01:59:40', '2022-10-08 01:59:40', 919, 434),
(920, '2022-10-08 01:59:40', '2022-10-08 01:59:40', 920, 434),
(921, '2022-10-08 01:59:40', '2022-10-08 01:59:40', 921, 434),
(922, '2022-10-08 01:59:41', '2022-10-08 01:59:41', 922, 434),
(923, '2022-10-08 01:59:41', '2022-10-08 01:59:41', 923, 434),
(924, '2022-10-08 01:59:41', '2022-10-08 01:59:41', 924, 434),
(925, '2022-10-08 01:59:56', '2022-10-08 01:59:56', 925, 437),
(926, '2022-10-08 01:59:56', '2022-10-08 01:59:56', 926, 437),
(927, '2022-10-08 01:59:56', '2022-10-08 01:59:56', 927, 437),
(928, '2022-10-08 01:59:56', '2022-10-08 01:59:56', 928, 437),
(929, '2022-10-08 01:59:56', '2022-10-08 01:59:56', 929, 437),
(930, '2022-10-08 01:59:57', '2022-10-08 01:59:57', 930, 437),
(931, '2022-10-08 01:59:57', '2022-10-08 01:59:57', 931, 438),
(932, '2022-10-08 01:59:57', '2022-10-08 01:59:57', 932, 438),
(933, '2022-10-08 01:59:57', '2022-10-08 01:59:57', 933, 438),
(934, '2022-10-08 01:59:57', '2022-10-08 01:59:57', 934, 438),
(935, '2022-10-08 01:59:57', '2022-10-08 01:59:57', 935, 438),
(936, '2022-10-08 01:59:59', '2022-10-08 01:59:59', 936, 438),
(937, '2022-10-08 02:00:00', '2022-10-08 02:00:00', 937, 441),
(938, '2022-10-08 02:00:00', '2022-10-08 02:00:00', 938, 441),
(939, '2022-10-08 02:00:00', '2022-10-08 02:00:00', 939, 441),
(940, '2022-10-08 02:00:00', '2022-10-08 02:00:00', 940, 441),
(941, '2022-10-08 02:00:01', '2022-10-08 02:00:01', 941, 441),
(942, '2022-10-08 02:00:01', '2022-10-08 02:00:01', 942, 441),
(943, '2022-10-08 02:00:01', '2022-10-08 02:00:01', 943, 442),
(944, '2022-10-08 02:00:01', '2022-10-08 02:00:01', 944, 442),
(945, '2022-10-08 02:00:01', '2022-10-08 02:00:01', 945, 442),
(946, '2022-10-08 02:00:01', '2022-10-08 02:00:01', 946, 442),
(947, '2022-10-08 02:00:02', '2022-10-08 02:00:02', 947, 442),
(948, '2022-10-08 02:00:02', '2022-10-08 02:00:02', 948, 442),
(949, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 949, 445),
(950, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 950, 445);
INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(951, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 951, 445),
(952, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 952, 445),
(953, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 953, 445),
(954, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 954, 445),
(955, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 955, 446),
(956, '2022-10-08 02:00:03', '2022-10-08 02:00:03', 956, 446),
(957, '2022-10-08 02:00:04', '2022-10-08 02:00:04', 957, 446),
(958, '2022-10-08 02:00:04', '2022-10-08 02:00:04', 958, 446),
(959, '2022-10-08 02:00:04', '2022-10-08 02:00:04', 959, 446),
(960, '2022-10-08 02:00:04', '2022-10-08 02:00:04', 960, 446),
(961, '2022-10-08 02:00:05', '2022-10-08 02:00:05', 961, 449),
(962, '2022-10-08 02:00:05', '2022-10-08 02:00:05', 962, 449),
(963, '2022-10-08 02:00:05', '2022-10-08 02:00:05', 963, 449),
(964, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 964, 449),
(965, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 965, 449),
(966, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 966, 449),
(967, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 967, 450),
(968, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 968, 450),
(969, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 969, 450),
(970, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 970, 450),
(971, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 971, 450),
(972, '2022-10-08 02:00:06', '2022-10-08 02:00:06', 972, 450),
(973, '2022-10-08 02:00:07', '2022-10-08 02:00:07', 973, 453),
(974, '2022-10-08 02:00:07', '2022-10-08 02:00:07', 974, 453),
(975, '2022-10-08 02:00:07', '2022-10-08 02:00:07', 975, 453),
(976, '2022-10-08 02:00:07', '2022-10-08 02:00:07', 976, 453),
(977, '2022-10-08 02:00:07', '2022-10-08 02:00:07', 977, 453),
(978, '2022-10-08 02:00:07', '2022-10-08 02:00:07', 978, 453),
(979, '2022-10-08 02:00:07', '2022-10-08 02:00:07', 979, 454),
(980, '2022-10-08 02:00:08', '2022-10-08 02:00:08', 980, 454),
(981, '2022-10-08 02:00:08', '2022-10-08 02:00:08', 981, 454),
(982, '2022-10-08 02:00:08', '2022-10-08 02:00:08', 982, 454),
(983, '2022-10-08 02:00:08', '2022-10-08 02:00:08', 983, 454),
(984, '2022-10-08 02:00:08', '2022-10-08 02:00:08', 984, 454),
(985, '2022-10-08 02:00:09', '2022-10-08 02:00:09', 985, 457),
(986, '2022-10-08 02:00:09', '2022-10-08 02:00:09', 986, 457),
(987, '2022-10-08 02:00:09', '2022-10-08 02:00:09', 987, 457),
(988, '2022-10-08 02:00:09', '2022-10-08 02:00:09', 988, 457),
(989, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 989, 457),
(990, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 990, 457),
(991, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 991, 458),
(992, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 992, 458),
(993, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 993, 458),
(994, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 994, 458),
(995, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 995, 458),
(996, '2022-10-08 02:00:10', '2022-10-08 02:00:10', 996, 458),
(997, '2022-10-08 02:00:11', '2022-10-08 02:00:11', 997, 461),
(998, '2022-10-08 02:00:11', '2022-10-08 02:00:11', 998, 461),
(999, '2022-10-08 02:00:11', '2022-10-08 02:00:11', 999, 461),
(1000, '2022-10-08 02:00:11', '2022-10-08 02:00:11', 1000, 461),
(1001, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1001, 461),
(1002, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1002, 461),
(1003, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1003, 462),
(1004, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1004, 462),
(1005, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1005, 462),
(1006, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1006, 462),
(1007, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1007, 462),
(1008, '2022-10-08 02:00:12', '2022-10-08 02:00:12', 1008, 462),
(1009, '2022-10-08 02:00:13', '2022-10-08 02:00:13', 1009, 465),
(1010, '2022-10-08 02:00:13', '2022-10-08 02:00:13', 1010, 465),
(1011, '2022-10-08 02:00:13', '2022-10-08 02:00:13', 1011, 465),
(1012, '2022-10-08 02:00:13', '2022-10-08 02:00:13', 1012, 465),
(1013, '2022-10-08 02:00:13', '2022-10-08 02:00:13', 1013, 465),
(1014, '2022-10-08 02:00:14', '2022-10-08 02:00:14', 1014, 465),
(1015, '2022-10-08 02:00:14', '2022-10-08 02:00:14', 1015, 466),
(1016, '2022-10-08 02:00:14', '2022-10-08 02:00:14', 1016, 466),
(1017, '2022-10-08 02:00:14', '2022-10-08 02:00:14', 1017, 466),
(1018, '2022-10-08 02:00:14', '2022-10-08 02:00:14', 1018, 466),
(1019, '2022-10-08 02:00:14', '2022-10-08 02:00:14', 1019, 466),
(1020, '2022-10-08 02:00:15', '2022-10-08 02:00:15', 1020, 466),
(1021, '2022-10-08 02:00:15', '2022-10-08 02:00:15', 1021, 469),
(1022, '2022-10-08 02:00:15', '2022-10-08 02:00:15', 1022, 469),
(1023, '2022-10-08 02:00:15', '2022-10-08 02:00:15', 1023, 469),
(1024, '2022-10-08 02:00:15', '2022-10-08 02:00:15', 1024, 469),
(1025, '2022-10-08 02:00:15', '2022-10-08 02:00:15', 1025, 469),
(1026, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1026, 469),
(1027, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1027, 470),
(1028, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1028, 470),
(1029, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1029, 470),
(1030, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1030, 470),
(1031, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1031, 470),
(1032, '2022-10-08 02:00:16', '2022-10-08 02:00:16', 1032, 470),
(1033, '2022-10-08 02:00:17', '2022-10-08 02:00:17', 1033, 473),
(1034, '2022-10-08 02:00:17', '2022-10-08 02:00:17', 1034, 473),
(1035, '2022-10-08 02:00:17', '2022-10-08 02:00:17', 1035, 473),
(1036, '2022-10-08 02:00:17', '2022-10-08 02:00:17', 1036, 473),
(1037, '2022-10-08 02:00:17', '2022-10-08 02:00:17', 1037, 473),
(1038, '2022-10-08 02:00:17', '2022-10-08 02:00:17', 1038, 473),
(1039, '2022-10-08 02:00:18', '2022-10-08 02:00:18', 1039, 474),
(1040, '2022-10-08 02:00:18', '2022-10-08 02:00:18', 1040, 474),
(1041, '2022-10-08 02:00:18', '2022-10-08 02:00:18', 1041, 474),
(1042, '2022-10-08 02:00:18', '2022-10-08 02:00:18', 1042, 474),
(1043, '2022-10-08 02:00:18', '2022-10-08 02:00:18', 1043, 474),
(1044, '2022-10-08 02:00:18', '2022-10-08 02:00:18', 1044, 474),
(1045, '2022-10-08 02:00:19', '2022-10-08 02:00:19', 1045, 477),
(1046, '2022-10-08 02:00:19', '2022-10-08 02:00:19', 1046, 477),
(1047, '2022-10-08 02:00:19', '2022-10-08 02:00:19', 1047, 477),
(1048, '2022-10-08 02:00:19', '2022-10-08 02:00:19', 1048, 477),
(1049, '2022-10-08 02:00:19', '2022-10-08 02:00:19', 1049, 477),
(1050, '2022-10-08 02:00:19', '2022-10-08 02:00:19', 1050, 477),
(1051, '2022-10-08 02:00:19', '2022-10-08 02:00:19', 1051, 478),
(1052, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1052, 478),
(1053, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1053, 478),
(1054, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1054, 478),
(1055, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1055, 478),
(1056, '2022-10-08 02:00:20', '2022-10-08 02:00:20', 1056, 478);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `by` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Owner, 0 - Client Himself',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_vendor_id_foreign` (`vendor_id`),
  ADD KEY `banners_page_id_foreign` (`page_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_alias_unique` (`alias`);

--
-- Indexes for table `coachings`
--
ALTER TABLE `coachings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coaching_exams`
--
ALTER TABLE `coaching_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coaching_notes`
--
ALTER TABLE `coaching_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coaching_subjects`
--
ALTER TABLE `coaching_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `current_affairs_question_answers`
--
ALTER TABLE `current_affairs_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_short_categories`
--
ALTER TABLE `daily_short_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams_coaching`
--
ALTER TABLE `exams_coaching`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams_dates`
--
ALTER TABLE `exams_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_item_id_foreign` (`item_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `in_shorts`
--
ALTER TABLE `in_shorts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_item_id_foreign` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indexes for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoareas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restorants`
--
ALTER TABLE `restorants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restoarea_id_foreign` (`restoarea_id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_banks`
--
ALTER TABLE `users_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_item_id_foreign` (`item_id`);

--
-- Indexes for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_has_extras_variant_id_foreign` (`variant_id`),
  ADD KEY `variants_has_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `coachings`
--
ALTER TABLE `coachings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coaching_exams`
--
ALTER TABLE `coaching_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coaching_notes`
--
ALTER TABLE `coaching_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coaching_subjects`
--
ALTER TABLE `coaching_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `current_affairs_question_answers`
--
ALTER TABLE `current_affairs_question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daily_short_categories`
--
ALTER TABLE `daily_short_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exams_coaching`
--
ALTER TABLE `exams_coaching`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `exams_dates`
--
ALTER TABLE `exams_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `in_shorts`
--
ALTER TABLE `in_shorts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `localmenus`
--
ALTER TABLE `localmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paths`
--
ALTER TABLE `paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restoareas`
--
ALTER TABLE `restoareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `restorants`
--
ALTER TABLE `restorants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users_banks`
--
ALTER TABLE `users_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `banners_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD CONSTRAINT `localmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD CONSTRAINT `order_has_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_has_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_has_status_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD CONSTRAINT `restoareas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `restorants`
--
ALTER TABLE `restorants`
  ADD CONSTRAINT `restorants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD CONSTRAINT `sms_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`),
  ADD CONSTRAINT `tables_restoarea_id_foreign` FOREIGN KEY (`restoarea_id`) REFERENCES `restoareas` (`id`);

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD CONSTRAINT `variants_has_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `variants_has_extras_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;