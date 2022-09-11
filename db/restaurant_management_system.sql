-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 02:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `dailyproductexpenses`
--

CREATE TABLE `dailyproductexpenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dailyproductexpenses`
--

INSERT INTO `dailyproductexpenses` (`id`, `expense_date`, `product_name`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '2022-09-06', 'potato', NULL, '2', '2022-09-11 04:27:51', '2022-09-11 04:27:51'),
(2, '2022-09-12', 'potato', NULL, '2', '2022-09-11 04:34:06', '2022-09-11 04:34:06'),
(3, '2022-09-12', 'potato', NULL, '2', '2022-09-11 04:39:16', '2022-09-11 04:39:16'),
(4, '2022-09-14', 'potato', NULL, '3', '2022-09-11 04:40:38', '2022-09-11 04:40:38'),
(5, '2022-09-14', 'potato', NULL, '3', '2022-09-11 04:43:11', '2022-09-11 04:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `expensedetails`
--

CREATE TABLE `expensedetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expensedetails`
--

INSERT INTO `expensedetails` (`id`, `quantity`, `expense_id`, `product_id`, `unit_price`, `unit`, `price`, `created_at`, `updated_at`) VALUES
(1, '10kg', '000001', '1', '10', '10', '100', '2022-09-10 23:00:04', '2022-09-10 23:00:04'),
(2, '10', '000002', '1', '5', '5', '25', '2022-09-10 23:00:58', '2022-09-10 23:00:58'),
(3, '5kg', '000002', '2', '10', '5', '50', '2022-09-10 23:00:58', '2022-09-10 23:00:58'),
(4, '10pics', '000003', '3', '5', '10', '50', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(5, '5kg', '000003', '2', '20', '5', '100', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(6, '10pics', '000003', '4', '5', '10', '50', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(7, '10pics', '000003', '1', '10', '10', '100', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(8, '5pics', '000003', '5', '50', '5', '250', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(9, 'a', '000004', '6', '10', '10', '100', '2022-09-11 03:42:30', '2022-09-11 03:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advanced_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `invoice_number`, `invoice_date`, `supplier_id`, `total_amount`, `paid_amount`, `due_amount`, `advanced_amount`, `created_at`, `updated_at`) VALUES
(1, '000001', '2022-09-13', '1', '100', '10', '90', NULL, '2022-09-10 23:00:04', '2022-09-10 23:00:04'),
(2, '000002', '2022-09-13', '1', '75', '5', '70', NULL, '2022-09-10 23:00:58', '2022-09-10 23:00:58'),
(3, '000003', '2022-09-12', NULL, '550', '550', '0', NULL, '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(4, '000004', '2022-09-06', '1', '100', '10', '90', NULL, '2022-09-11 03:42:30', '2022-09-11 03:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(46, '2014_10_12_000000_create_users_table', 1),
(47, '2014_10_12_100000_create_password_resets_table', 1),
(48, '2019_08_19_000000_create_failed_jobs_table', 1),
(49, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(50, '2022_08_31_120200_create_suppliers_table', 1),
(51, '2022_09_01_090240_create_expenses_table', 1),
(52, '2022_09_01_092053_create_stockproductlists_table', 1),
(53, '2022_09_03_100409_create_expensedetails_table', 1),
(54, '2022_09_06_055917_create_supplierdues_table', 2),
(55, '2022_09_06_115709_create_dailyproductexpenses_table', 3),
(56, '2022_09_07_084910_create_productlimits_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productlimits`
--

CREATE TABLE `productlimits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productlimits`
--

INSERT INTO `productlimits` (`id`, `product_id`, `limit`, `created_at`, `updated_at`) VALUES
(3, '11', '10', '2022-09-07 03:57:34', '2022-09-07 03:57:34'),
(4, '5', '45', '2022-09-07 03:57:42', '2022-09-07 03:57:42'),
(5, '8', '52', '2022-09-10 02:38:30', '2022-09-10 02:38:30'),
(6, '10', '10', '2022-09-10 03:44:15', '2022-09-10 03:44:15'),
(7, '3', '2', '2022-09-11 03:44:19', '2022-09-11 03:44:19'),
(8, '6', '2', '2022-09-11 03:44:30', '2022-09-11 03:44:30'),
(9, '1', '5', '2022-09-11 03:44:40', '2022-09-11 03:44:40'),
(10, '4', '2', '2022-09-11 03:45:07', '2022-09-11 03:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `stockproductlists`
--

CREATE TABLE `stockproductlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stockproductlists`
--

INSERT INTO `stockproductlists` (`id`, `product_name`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'potato', '22', '2022-09-10 23:00:04', '2022-09-11 04:43:11'),
(2, 'Alu', '10', '2022-09-10 23:00:58', '2022-09-10 23:04:21'),
(3, 'Chips', '10', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(4, 'Banana', '10', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(5, 'Gril', '5', '2022-09-10 23:04:21', '2022-09-10 23:04:21'),
(6, 'a', '10', '2022-09-11 03:42:30', '2022-09-11 03:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company_name`, `contact_person_name`, `contact_number`, `created_at`, `updated_at`) VALUES
(1, 'CV Enterprize', 'Md Rana Hamid', '01712124578', '2022-09-05 02:50:12', '2022-09-05 02:50:12'),
(2, 'CV Enterprizes', 'Md Rana Hamids', '01712124578', '2022-09-05 02:50:31', '2022-09-05 02:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$3.pQ5dpETqC68uyDx96STe2ncgME.vUXKvZoDZTGCUujNjoc6iENe', NULL, '2022-09-05 02:49:44', '2022-09-05 02:49:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dailyproductexpenses`
--
ALTER TABLE `dailyproductexpenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensedetails`
--
ALTER TABLE `expensedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productlimits`
--
ALTER TABLE `productlimits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockproductlists`
--
ALTER TABLE `stockproductlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stockproductlists_product_name_unique` (`product_name`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_company_name_unique` (`company_name`);

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
-- AUTO_INCREMENT for table `dailyproductexpenses`
--
ALTER TABLE `dailyproductexpenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expensedetails`
--
ALTER TABLE `expensedetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productlimits`
--
ALTER TABLE `productlimits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stockproductlists`
--
ALTER TABLE `stockproductlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
