-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 02:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$PC5/fx7g35FKEeIuy8doPOAeGQ0fipSiAaYUwJ6GHRUg4.ZZZMaSq', '2023-10-24 06:19:14', '2023-10-24 00:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'NULL',
  `status` int(11) NOT NULL,
  `is_home` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `is_home`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', '1698154221.jpg', 1, 1, '2023-10-24 08:00:21', '2023-10-24 08:00:21'),
(2, 'Nike', '1698606063.png', 1, 1, '2023-10-29 13:24:16', '2023-10-29 13:31:03'),
(3, 'Peter England', '1698606100.png', 1, 1, '2023-10-29 13:27:23', '2023-10-29 13:31:40'),
(4, 'Burberry', '1698605894.png', 1, 1, '2023-10-29 13:28:14', '2023-10-29 13:28:14'),
(5, 'H&M', '1698605945.png', 1, 1, '2023-10-29 13:29:05', '2023-10-29 13:29:05'),
(6, 'Levi\'s', '1698605964.jpg', 1, 1, '2023-10-29 13:29:24', '2023-10-29 13:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Reg','Not-Reg') NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `added_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `user_type`, `qty`, `product_id`, `product_attr_id`, `added_on`) VALUES
(21, 1, 'Reg', 1, 2, 3, '2024-01-28 07:43:47'),
(22, 815852898, 'Not-Reg', 4, 2, 5, '2024-02-14 11:50:57'),
(23, 815852898, 'Not-Reg', 1, 3, 8, '2024-02-14 11:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `category_image` varchar(255) NOT NULL DEFAULT 'NULL',
  `is_home` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `parent_category_id`, `category_image`, `is_home`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Boys', 'Boys', 0, '1698155748.jpg', 1, 1, '2023-10-24 01:02:29', '2023-10-24 08:25:52'),
(2, 'T-Shirt', 'T-Shirt', 1, '1698154967.jpg', 0, 1, '2023-10-24 08:12:47', '2023-10-24 08:12:47'),
(3, 'Girls', 'Girls', 0, '1698156139.jpg', 1, 1, '2023-10-24 08:31:43', '2023-10-24 08:32:19'),
(4, 'Mens', 'Mens', 0, '1698156256.jpg', 1, 1, '2023-10-24 08:34:16', '2023-10-24 08:34:16'),
(5, 'Women', 'Women', 0, '1698156334.jpg', 1, 1, '2023-10-24 08:35:35', '2023-10-24 08:35:35'),
(6, 'Sarees', 'Sarees', 5, '1698159056.jpg', 0, 1, '2023-10-24 09:20:56', '2023-10-24 09:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', 1, '2023-10-24 08:00:29', '2023-10-24 08:00:29'),
(2, 'Black', 1, '2023-10-26 08:25:19', '2023-10-26 08:25:19'),
(3, 'Blue', 1, '2023-10-26 08:25:26', '2023-10-26 08:25:26'),
(4, 'Yellow', 1, '2023-10-28 05:50:43', '2023-10-28 05:50:43'),
(5, 'Green', 1, '2023-10-28 05:50:50', '2023-10-28 05:50:50'),
(6, 'White', 1, '2023-10-28 05:51:07', '2023-10-28 05:51:07'),
(7, 'Brown', 1, '2023-10-28 05:51:22', '2023-10-28 05:51:22'),
(8, 'Pink', 1, '2023-10-28 05:52:52', '2023-10-28 05:52:52'),
(9, 'Gray', 1, '2023-10-28 05:53:04', '2023-10-28 05:53:04'),
(10, 'Purple', 1, '2023-10-28 05:53:14', '2023-10-28 05:53:14'),
(11, 'Orange', 1, '2023-10-28 05:53:45', '2023-10-28 05:53:45'),
(12, 'Azure', 1, '2023-10-28 05:54:09', '2023-10-28 05:54:09'),
(13, 'Light-Green', 1, '2023-10-28 05:54:20', '2023-10-28 05:54:20'),
(14, 'Maroon', 1, '2023-10-28 05:54:32', '2023-10-28 05:54:32'),
(15, 'Lime', 1, '2023-10-28 05:54:40', '2023-10-28 05:54:40'),
(16, 'Wheat', 1, '2023-10-28 05:54:57', '2023-10-28 05:54:57'),
(17, 'Golden', 1, '2023-10-28 05:55:06', '2023-10-28 05:55:06'),
(18, 'Salmon', 1, '2023-10-28 05:55:16', '2023-10-28 05:55:16'),
(19, 'Chocolate', 1, '2023-10-28 05:55:48', '2023-10-28 05:55:48'),
(20, 'Dark-Blue', 1, '2023-10-28 05:56:06', '2023-10-28 05:56:06'),
(21, 'Navy', 1, '2023-10-28 05:56:17', '2023-10-28 05:56:17'),
(22, 'Silver', 1, '2023-10-28 05:56:23', '2023-10-28 05:56:23'),
(23, 'Dark-Red', 1, '2023-10-28 06:06:48', '2023-10-28 06:06:48'),
(24, 'Teal', 1, '2023-10-28 06:10:54', '2023-10-28 06:10:54'),
(25, 'Aqua', 1, '2023-10-28 06:12:07', '2023-10-28 06:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` enum('Value','Per') NOT NULL,
  `min_order_amt` int(11) NOT NULL,
  `is_one_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `value`, `type`, `min_order_amt`, `is_one_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jan Coupon', 'Jan2024', '140', 'Per', 1000, 0, 1, '2023-10-25 06:23:05', '2023-10-25 06:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT 'NULL',
  `city` varchar(255) NOT NULL DEFAULT 'NULL',
  `state` varchar(255) NOT NULL DEFAULT 'NULL',
  `zip` varchar(255) NOT NULL DEFAULT 'NULL',
  `company` varchar(255) NOT NULL DEFAULT 'NULL',
  `gstin` varchar(255) NOT NULL DEFAULT 'NULL',
  `status` int(11) NOT NULL,
  `is_verify` int(11) NOT NULL,
  `is_forgot_password` int(11) NOT NULL,
  `rand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `city`, `state`, `zip`, `company`, `gstin`, `status`, `is_verify`, `is_forgot_password`, `rand_id`, `created_at`, `updated_at`) VALUES
(1, 'alekh', 'alekh@gmail.com', '6389541275', 'eyJpdiI6IlFZbzJUVzEyVC90MCthQ1l2Mmk0eWc9PSIsInZhbHVlIjoiR1FrcXBZNG53cFYwcCs1Q29obWcvUT09IiwibWFjIjoiNGEwMThlYjlmNTJiYzZlMGYzZGQwODI2ZGJlZWU5ZWRiM2MxZTY3YzUwMzIwN2NmNjgzY2EzY2UzZGMyOWYwOSIsInRhZyI6IiJ9', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 1, 1, 0, 904440869, '2023-10-23 21:56:43', '2023-10-23 21:56:43'),
(2, 'Sunny', 'Sunny@gmail.com', '8887339856', 'eyJpdiI6Ik1KallPM0d2VkpRNGx6UUUrTVVYUFE9PSIsInZhbHVlIjoiUDhJTUs5dTJSdXAxTFp1S0t4WTRnUT09IiwibWFjIjoiNjkzYjE1ZjVhZDE5MWQ0M2JjYzczNzNkZjFhNGQ1YzM1YTgwY2I0MTU1MjI5ODNhYmQ1MTBhNjNiNGNiYzBjNSIsInRhZyI6IiJ9', 'Lakhimpur-Kheri', 'Lakhimpur-Kheri', 'UP', '262701', 'NULL', 'NULL', 1, 1, 1, 597471680, '2023-10-29 00:03:59', '2023-10-29 00:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `btn_txt` varchar(255) NOT NULL DEFAULT 'NULL',
  `btn_link` varchar(255) NOT NULL DEFAULT 'NULL',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `image`, `btn_txt`, `btn_link`, `status`, `created_at`, `updated_at`) VALUES
(1, '1698639695.jpg', 'Shop Now', 'https://www.myntra.com/jeans', 1, '2023-10-24 08:09:24', '2023-10-29 22:51:41'),
(2, '1698639654.jpg', 'Shop Now', 'https://www.myntra.com/watches', 1, '2023-10-24 08:31:13', '2023-10-29 22:50:54'),
(3, '1698640678.jpg', 'Shop Now', 'https://www.flipkart.com/mobile-phones-store', 1, '2023-10-29 23:07:58', '2023-10-29 23:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_01_15_211334_create_admins_table', 1),
(3, '2021_01_15_215552_create_categories_table', 1),
(4, '2021_01_20_095632_create_coupons_table', 1),
(5, '2021_01_26_021550_create_sizes_table', 1),
(6, '2021_01_26_023140_create_colors_table', 1),
(7, '2021_01_28_104722_create_products_table', 1),
(8, '2021_02_03_114909_create_brands_table', 1),
(9, '2021_02_05_082218_create_taxes_table', 1),
(10, '2021_02_08_081113_create_customers_table', 1),
(11, '2021_02_17_200040_create_home_banners_table', 1),
(12, '2023_10_23_124456_create_carts_table', 1),
(13, '2023_10_23_130956_create_orders_table', 1),
(14, '2023_10_23_132201_create_order_details_table', 1),
(15, '2023_10_24_051603_create_orders_statuses_table', 1),
(16, '2023_10_24_052714_create_products_attrs_table', 1),
(17, '2023_10_24_053110_create_product_images_table', 1),
(18, '2023_10_24_053413_create_product_reviews_table', 1),
(19, '2023_10_24_132607_create_brands_table', 2),
(20, '2023_10_24_142846_create_products_table', 3),
(21, '2023_10_24_151518_create_customers_table', 4),
(22, '2023_10_24_151920_create_customers_table', 5),
(23, '2023_10_25_115020_create_coupons_table', 6),
(24, '2023_10_28_042924_create_orders_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `coupon_code` varchar(255) DEFAULT 'NULL',
  `coupon_value` varchar(255) NOT NULL DEFAULT 'NULL',
  `order_status` int(11) NOT NULL,
  `payment_type` enum('COD','Gateway') NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL DEFAULT 'NULL',
  `txn_id` varchar(255) NOT NULL DEFAULT 'NULL',
  `total_amt` int(11) NOT NULL,
  `track_details` text NOT NULL DEFAULT 'NULL',
  `added_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customers_id`, `name`, `email`, `mobile`, `address`, `city`, `state`, `pincode`, `coupon_code`, `coupon_value`, `order_status`, `payment_type`, `payment_status`, `payment_id`, `txn_id`, `total_amt`, `track_details`, `added_on`) VALUES
(1, 1, 'alekh', 'alekh@gmail.com', '6389541275', 'Vill. Chhauchha, Post : Lakhimpur, Dis. : Kheri', 'Lakhimpur-Kheri', 'UP', '262701', NULL, '0', 3, 'COD', 'Success', 'NULL', 'NULL', 7620, 'NULL', '2023-10-28 11:05:15'),
(2, 1, 'alekh', 'alekh@gmail.com', '6389541275', 'NULL', 'NULL', 'NULL', 'NULL', NULL, '0', 1, 'COD', 'Pending', 'NULL', 'NULL', 762, 'NULL', '2023-10-29 05:30:39'),
(3, 2, 'Sunny', 'Sunny@gmail.com', '8887339856', 'Lakhimpur-Kheri', 'Lakhimpur-Kheri', 'UP', '262701', NULL, '0', 1, 'COD', 'Pending', 'NULL', 'NULL', 2667, 'NULL', '2023-10-29 05:34:03'),
(4, 2, 'Sunny', 'Sunny@gmail.com', '8887339856', 'Lakhimpur-Kheri', 'Lakhimpur-Kheri', 'UP', '262701', NULL, '0', 1, 'Gateway', 'Pending', 'NULL', 'NULL', 699, 'NULL', '2023-10-30 04:47:38'),
(5, 2, 'Sunny', 'Sunny@gmail.com', '8887339856', 'Lakhimpur-Kheri', 'Lakhimpur-Kheri', 'UP', '262701', NULL, '0', 1, 'COD', 'Pending', 'NULL', 'NULL', 1398, 'NULL', '2023-11-08 01:10:16'),
(6, 1, 'Alekh Banshwar', 'alekh@gmail.com', '6389541275', 'Vill. : Chhauchha, Post : Lakhimpur, District : Kheri', 'Lakhimpur', 'Utter Pradesh', '262701', NULL, '0', 1, 'COD', 'Pending', 'NULL', 'NULL', 1398, 'NULL', '2023-12-08 02:00:08'),
(7, 1, 'Alekh Banshwar', 'alekh@gmail.com', '6389541275', 'Vill. : Chhauchha, Post : Lakhimpur, District : Kheri', 'Lakhimpur', 'UP', '262701', NULL, '0', 1, 'Gateway', 'Pending', 'NULL', 'NULL', 2097, 'NULL', '2023-12-08 02:02:03'),
(8, 1, 'Alekh Banshwar', 'alekh@gmail.com', '6389541275', 'Vill. : Chhauchha, Post : Lakhimpur, District : Kheri', 'Lakhimpur', 'UP', '262701', NULL, '0', 1, 'Gateway', 'Pending', 'NULL', 'NULL', 2097, 'NULL', '2023-12-08 02:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders_statuses`
--

CREATE TABLE `orders_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orders_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_statuses`
--

INSERT INTO `orders_statuses` (`id`, `orders_status`) VALUES
(1, 'Placed'),
(2, 'On The Way'),
(3, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `products_attr_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orders_id`, `product_id`, `products_attr_id`, `price`, `qty`) VALUES
(1, 2, 1, 1, 381, 4),
(2, 3, 1, 1, 381, 4),
(3, 1, 1, 1, 381, 10),
(4, 1, 1, 2, 381, 10),
(5, 2, 1, 1, 381, 2),
(6, 3, 1, 2, 381, 7),
(7, 4, 2, 3, 699, 1),
(8, 5, 2, 3, 699, 2),
(9, 6, 2, 3, 699, 2),
(10, 7, 2, 7, 699, 3),
(11, 8, 2, 7, 699, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'NULL',
  `slug` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `short_desc` text NOT NULL DEFAULT 'NULL',
  `desc` text NOT NULL DEFAULT 'NULL',
  `keywords` text NOT NULL DEFAULT 'NULL',
  `technical_specification` text NOT NULL DEFAULT 'NULL',
  `uses` text NOT NULL DEFAULT 'NULL',
  `warranty` text NOT NULL DEFAULT 'NULL',
  `lead_time` varchar(255) NOT NULL DEFAULT 'NULL',
  `tax_id` varchar(255) DEFAULT 'NULL',
  `is_promo` int(11) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `is_discounted` int(11) NOT NULL,
  `is_tranding` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `slug`, `brand`, `model`, `short_desc`, `desc`, `keywords`, `technical_specification`, `uses`, `warranty`, `lead_time`, `tax_id`, `is_promo`, `is_featured`, `is_discounted`, `is_tranding`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Printed Men Round Neck Poly Cotton Green T-Shirt', '1698558216.jpg', 'Green T-Shirt', '1', 'Model', '<p>&nbsp;</p>\r\n\r\n<p>perfect fit.... excellent material...delivered the same color as shown in the picture. due to light and camera problems, it might look different from the picture but trust me this is the same product as shown above..I am a big fan of astronaut clothing. thank you, astronaut,</p>', '<ul>\r\n	<li>Eligible for Flipkart Pay Later</li>\r\n	<li>Bank Offer10% off on Kotak Bank Credit Card, up to ₹1250 on orders of ₹5,000 and above</li>\r\n	<li>Bank Offer10% off on RBL Bank Credit Card, up to ₹1250 on orders of ₹5,000 and above</li>\r\n	<li>Bank Offer10% off on SBI Credit Card, up to ₹1250 on orders of ₹5,000 and above</li>\r\n	<li>Special PriceGet extra 15% off (price inclusive of cashback/coupone</li>\r\n	<li>Buy for 100 get ₹200 off your Next Buy</li>\r\n	<li>Partner OfferSign-up for Flipkart Pay Later &amp; get free Times Prime Benefits worth ₹20,000*</li>\r\n	<li>Bank Offer10% off on Kotak Bank Credit Card EMI Txns, up to ₹1500 on orders of ₹5,000 and above</li>\r\n	<li>Bank Offer10% off on RBL Bank Credit Card EMI Txns, up to ₹1500 on orders of ₹5,000 and above</li>\r\n	<li>Bank Offer10% off on SBI Credit Card EMI Txns, up to ₹1500 on orders of ₹5,000 and above</li>\r\n	<li>Bank Offer10% off on Kotak Bank Debit Card, up to ₹1250 on orders of ₹5,000 and above</li>\r\n	<li>Bank OfferExtra ₹500 off on Kotak Bank Credit Card and Credit EMI Txns on Net Cart Value of ₹24,990 and above</li>\r\n	<li>Bank OfferExtra ₹500 off on RBL Bank Credit Card and Credit EMI Txns on Net Cart Value of ₹24,990 and above</li>\r\n	<li>Bank OfferExtra ₹500 off on SBI Credit Card and Credit EMI Txns on Net Cart Value of ₹24,990 and above</li>\r\n	<li>Bank OfferExtra ₹500 off on Kotak Bank Debit Card Txns on Net Cart Value of ₹24,990 and above</li>\r\n	<li>Bank OfferExtra ₹500 off on Kotak Bank Credit Card EMI Txns on Net Cart Value of ₹39,990 and above</li>\r\n	<li>Bank OfferExtra ₹500 off on RBL Bank Credit Card EMI Txns on Net Cart Value of ₹39,990 and above</li>\r\n	<li>Bank OfferExtra ₹500 off on SBI Credit Card EMI Txns on Net Cart Value of ₹39,990 and above</li>\r\n	<li>Bank OfferFlat ₹100 Cashback on Paytm Wallet. Min Order Value ₹1,000. Valid once per Paytm account</li>\r\n	<li>Bank OfferFlat ₹25 Instant Discount on Paytm UPI. Min Order Value ₹300. Valid once per Flipkart account</li>\r\n	<li>Bank Offer5% Cashback on Flipkart Axis Bank Card</li>\r\n	<li>Partner OfferPurchase now &amp; get 1 surprise cashback coupon in the Future</li>\r\n</ul>', 'Shipping charges are calculated based on the number of units, distance, and delivery date.\r\nDelivery charges if applicable will be shown on the product page and cart.', '<p>Technical Specification</p>', 'Uses', 'Warranty', 'Lead Time', NULL, 1, 1, 1, 1, 1, '2023-10-24 09:14:26', '2023-10-29 12:38:35'),
(2, 1, 'Polo T Shirt', '1698558109.jpg', 'Polo T Shirt', '1', 'Polo T Shirt - Nike', '<p>100% Original Products</p>\r\n\r\n<p>Free Delivery on orders above Rs.&amp;nbsp;799</p>\r\n\r\n<p>Pay-on delivery might be available</p>\r\n\r\n<p>Easy 30 days returns and exchanges</p>\r\n\r\n<p>Try &amp;amp; Buy might be available</p>', '<p>Brand: Peter England<br />\r\nSubbrand: Peter England Jeans<br />\r\nFit: Super Slim Fit<br />\r\nPattern: Check<br />\r\nOccasion: Casual<br />\r\nColor : Blue<br />\r\nMaterial: 100% Cotton<br />\r\nSleeves: Full Sleeves<br />\r\nCuffs: Regular Cuff<br />\r\nCollar: Regular Collar<br />\r\nProduct Type: Shirt<br />\r\nBrand Fit: Super Slim Fit</p>', 'Polo T-Shirt', '<p>NULL</p>', 'T Shirt For Man', 'Easy 30 days returns and exchanges', 'Same day delivery', '1', 1, 1, 1, 1, 1, '2023-10-28 07:53:36', '2023-10-29 01:17:02'),
(3, 6, 'saares', '1707911671.jpg', 'saares', '2', 'Nike Model', '<p>Short Desc</p>', '<p>Desc</p>', 'Keywords', '<p>Technical Specification</p>', 'Uses', 'Warranty', 'Lead Time', '1', 0, 0, 0, 0, 1, '2024-02-14 06:24:31', '2024-02-14 06:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `products_attr`
--

CREATE TABLE `products_attr` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `attr_image` varchar(255) NOT NULL DEFAULT 'NULL',
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attr`
--

INSERT INTO `products_attr` (`id`, `products_id`, `sku`, `attr_image`, `mrp`, `price`, `qty`, `size_id`, `color_id`) VALUES
(1, 1, 'one', '547571428.jpg', 890, 381, 500, 1, 1),
(2, 1, 'two', '128793357.jpg', 890, 381, 500, 2, 3),
(3, 2, '111', '909699282.jpg', 999, 699, 500, 2, 4),
(4, 2, '112', '856400926.jpg', 999, 699, 500, 3, 5),
(5, 2, '113', '338459001.jpg', 999, 699, 500, 4, 9),
(6, 2, '114', '305589133.jpg', 999, 699, 500, 3, 3),
(7, 2, '115', '701194369.jpg', 999, 699, 500, 1, 2),
(8, 3, '1', '533783242.jpg', 1479, 279, 5000, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `products_id`, `images`) VALUES
(1, 1, '300535892.jpg'),
(2, 2, '299212770.png'),
(3, 2, '292099590.jpg'),
(4, 2, '821126048.jpg'),
(5, 3, '503611222.jpg'),
(6, 3, '764203807.jpg'),
(7, 3, '590638054.jpg'),
(8, 3, '993657732.jpg'),
(9, 3, '847350945.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `status`, `created_at`, `updated_at`) VALUES
(1, 'XXL', 1, '2023-10-24 01:02:56', '2023-10-24 01:02:56'),
(2, 'M', 1, '2023-10-26 08:25:40', '2023-10-26 08:25:40'),
(3, 'L', 1, '2023-10-26 08:25:45', '2023-10-26 08:25:45'),
(4, 'XL', 1, '2023-10-26 08:25:52', '2023-10-26 08:25:52'),
(5, 'S', 1, '2023-10-26 08:26:03', '2023-10-26 08:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_desc` varchar(255) NOT NULL,
  `tax_value` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax_desc`, `tax_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GST 12%', '12', 1, '2023-10-28 07:39:53', '2023-10-28 07:39:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_statuses`
--
ALTER TABLE `orders_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attr`
--
ALTER TABLE `products_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_statuses`
--
ALTER TABLE `orders_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_attr`
--
ALTER TABLE `products_attr`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
