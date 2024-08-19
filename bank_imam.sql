-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2024 at 11:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_imam`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-03-24 10:56:41', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-03-24 12:23:23', NULL),
(3, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-04-10 12:52:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 10:56:56', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/12', 'Delete data Sampah at Module Generator', '', 1, '2023-03-24 11:06:22', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 11:07:19', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 11:07:21', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Admin Sadam at Users Management', '', 1, '2023-03-24 11:21:06', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Dimas at Users Management', '', 1, '2023-03-24 11:24:42', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/points/add-save', 'Add New Data  at Poin', '', 1, '2023-03-24 11:45:29', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 11:48:30', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 11:48:39', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-24 11:48:52', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 11:48:53', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Sampah at Menu Management', '', 1, '2023-03-24 11:49:50', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Rewards at Menu Management', '', 1, '2023-03-24 11:50:33', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Poin at Menu Management', '', 1, '2023-03-24 11:51:00', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 11:51:04', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 11:51:13', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit/5', 'Try edit the data Sampah at Menu Management', '', 2, '2023-03-24 11:51:23', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/7', 'Try delete the Poin data at Menu Management', '', 2, '2023-03-24 11:51:33', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/5', 'Try delete the Sampah data at Menu Management', '', 2, '2023-03-24 11:54:38', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management', 'Try view the data :name at Menu Management', '', 2, '2023-03-24 11:59:06', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator', 'Try view the data :name at Module Generator', '', 2, '2023-03-24 12:02:47', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-24 12:03:05', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 12:03:07', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/5', 'Delete data Sampah at Menu Management', '', 1, '2023-03-24 12:03:17', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/6', 'Delete data Rewards at Menu Management', '', 1, '2023-03-24 12:03:21', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/7', 'Delete data Poin at Menu Management', '', 1, '2023-03-24 12:03:23', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/2', 'Delete data Sampah at Menu Management', '', 1, '2023-03-24 12:03:33', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik PET at Sampah', '', 1, '2023-03-24 12:07:37', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Sampah at Menu Management', '', 1, '2023-03-24 12:08:10', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Rewards at Menu Management', '', 1, '2023-03-24 12:08:33', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Poin at Menu Management', '', 1, '2023-03-24 12:08:53', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 12:09:04', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 12:09:11', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah', 'Try view the data :name at Sampah', '', 2, '2023-03-24 12:09:13', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah', 'Try view the data :name at Sampah', '', 2, '2023-03-24 12:09:18', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-24 12:09:35', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 12:09:37', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 12:10:21', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 12:10:29', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 12:11:10', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-24 12:11:17', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 12:11:18', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Nasabah at Menu Management', '', 1, '2023-03-24 12:12:11', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/10', 'Update data Rewards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>green</td><td>normal</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:12:27', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/11', 'Update data Poin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>green</td><td>normal</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:12:33', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/10', 'Update data Rewards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:12:41', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/9', 'Update data Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>green</td><td>normal</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:12:47', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/12', 'Update data Nasabah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:12:53', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/11', 'Update data Poin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:12:58', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/10', 'Update data Rewards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:13:01', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/11', 'Update data Poin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 12:13:04', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 12:18:42', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 12:18:43', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 12:19:20', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 12:19:21', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-24 12:20:25', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-24 12:21:59', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-24 12:22:47', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/12', 'Delete data Nasabah at Menu Management', '', 1, '2023-03-24 12:30:31', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/13', 'Delete data Nasabah at Menu Management', '', 1, '2023-03-24 12:30:35', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Nasabah at Menu Management', '', 1, '2023-03-24 12:37:26', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 12:39:28', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-24 13:10:54', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 13:11:42', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/14', 'Delete data Nasabah at Menu Management', '', 1, '2023-03-24 13:13:33', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Nasabah at Menu Management', '', 1, '2023-03-24 13:13:53', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/cms_users_nasabah', 'Try view the data :name at Nasabah', '', 2, '2023-03-24 13:14:00', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/cms_users_nasabah', 'Try view the data :name at Nasabah', '', 2, '2023-03-24 13:14:03', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/cms_users_nasabah', 'Try view the data :name at Nasabah', '', 2, '2023-03-24 13:15:44', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/cms_users_nasabah', 'Try view the data :name at Nasabah', '', 2, '2023-03-24 13:15:45', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/cms_users_nasabah', 'Try view the data :name at Nasabah', '', 2, '2023-03-24 13:15:48', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Nasabah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-24 13:16:25', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-24 13:16:32', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-24 13:16:48', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-25 02:26:31', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-25 02:26:55', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/points/edit-save/1', 'Update data  at Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2023-03-25 02:28:32', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/10', 'Delete data Rewards at Menu Management', '', 1, '2023-03-25 02:53:41', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/3', 'Delete data Rewards at Menu Management', '', 1, '2023-03-25 02:53:45', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data Rewards at Module Generator', '', 1, '2023-03-25 02:53:55', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Pot Gemoy at Rewards', '', 1, '2023-03-25 03:02:13', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/18', 'Delete data Penukaran Poin at Menu Management', '', 1, '2023-03-25 03:25:05', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Penukaran Poin at Menu Management', '', 1, '2023-03-25 03:25:22', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-25 07:15:13', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-25 07:59:23', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-25 07:59:29', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-25 07:59:40', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-25 07:59:51', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-25 08:00:33', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-25 08:00:35', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-25 08:04:13', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-25 08:04:24', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-25 08:04:28', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2023-03-25 08:04:32', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-25 08:09:38', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-25 08:12:52', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-25 08:13:00', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sadumb7@gmail.com logout', '', 2, '2023-03-25 08:14:42', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-26 03:30:11', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-26 03:30:21', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/20', 'Delete data Penukaran Poin at Module Generator', '', 1, '2023-03-26 03:32:21', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/19', 'Delete data Penukaran Poin at Menu Management', '', 1, '2023-03-26 03:37:33', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-26 11:22:28', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-26 12:28:11', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/2', 'Delete data 2 at Penukaran Poin', '', 1, '2023-03-26 12:41:19', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/1', 'Delete data 1 at Penukaran Poin', '', 1, '2023-03-26 12:41:21', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/3', 'Delete data 3 at Penukaran Poin', '', 1, '2023-03-26 12:44:23', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/4', 'Delete data 4 at Penukaran Poin', '', 1, '2023-03-26 12:44:25', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/5', 'Delete data 5 at Penukaran Poin', '', 1, '2023-03-26 12:49:26', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/6', 'Delete data 6 at Penukaran Poin', '', 1, '2023-03-26 12:49:28', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/7', 'Delete data 7 at Penukaran Poin', '', 1, '2023-03-26 12:52:52', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/9', 'Delete data 9 at Penukaran Poin', '', 1, '2023-03-26 12:56:20', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/8', 'Delete data 8 at Penukaran Poin', '', 1, '2023-03-26 12:56:22', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/10', 'Delete data 10 at Penukaran Poin', '', 1, '2023-03-26 13:01:01', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poin/delete/11', 'Delete data 11 at Penukaran Poin', '', 1, '2023-03-26 13:01:03', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-26 13:08:46', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-26 13:08:57', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-03-27 20:40:08', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-03-27 20:40:13', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'sadumb7@gmail.com login with IP Address 127.0.0.1', '', 2, '2023-03-27 20:40:21', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Karton/Kertas at Sampah', '', 2, '2023-03-27 20:41:10', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/cms_users_nasabah/add-save', 'Add New Data Dwi Oktaviani at Nasabah', '', 2, '2023-03-27 22:03:26', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/points/add-save', 'Add New Data  at Poin', '', 2, '2023-03-27 22:03:39', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-09 08:54:08', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/9', 'Delete data Sampah at Menu Management', '', 1, '2023-04-09 09:21:05', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/11', 'Delete data Poin at Menu Management', '', 1, '2023-04-09 09:21:07', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/16', 'Delete data Nasabah at Menu Management', '', 1, '2023-04-09 09:21:09', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/8', 'Delete data Sampah at Menu Management', '', 1, '2023-04-09 09:21:12', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/15', 'Delete data Nasabah at Menu Management', '', 1, '2023-04-09 09:21:15', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/17', 'Delete data Rewards at Menu Management', '', 1, '2023-04-09 09:21:20', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/4', 'Delete data Poin at Menu Management', '', 1, '2023-04-09 09:21:22', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/20', 'Delete data Penukaran Poin at Menu Management', '', 1, '2023-04-09 09:21:24', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/16', 'Delete data Sampah at Module Generator', '', 1, '2023-04-09 09:21:45', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/19', 'Delete data Rewards at Module Generator', '', 1, '2023-04-09 09:21:47', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/15', 'Delete data Poin at Module Generator', '', 1, '2023-04-09 09:21:49', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/21', 'Delete data Penukaran Poin at Module Generator', '', 1, '2023-04-09 09:21:51', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/18', 'Delete data Nasabah at Module Generator', '', 1, '2023-04-09 09:21:53', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/users-we-cycle/add-save', 'Add New Data Dwi Oktaviani at User', '', 1, '2023-04-09 11:02:44', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/points/add-save', 'Add New Data  at Poin', '', 1, '2023-04-09 11:07:03', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah_categories/add-save', 'Add New Data Sampah Plastik at Kategori Sampah', '', 1, '2023-04-09 11:09:16', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik PET at Sampah', '', 1, '2023-04-09 11:13:37', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/26', 'Delete data Rewards at Module Generator', '', 1, '2023-04-09 11:19:39', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Pot Gemoy at Rewards', '', 1, '2023-04-09 11:24:50', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik HDPE at Sampah', '', 1, '2023-04-09 11:36:56', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik VPC at Sampah', '', 1, '2023-04-09 11:37:13', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik PS at Sampah', '', 1, '2023-04-09 11:59:04', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/edit-save/1', 'Update data Plastik PET, apsdka, ajsdbias, jhasdb at Sampah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Plastik PET</td><td>Plastik PET, apsdka, ajsdbias, jhasdb</td></tr></tbody></table>', 1, '2023-04-09 12:01:24', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/edit-save/1', 'Update data Plastik PET at Sampah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Plastik PET, apsdka, ajsdbias, jhasdb</td><td>Plastik PET</td></tr></tbody></table>', 1, '2023-04-09 12:02:02', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Keranjang Magic at Rewards', '', 1, '2023-04-09 12:11:18', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Boneka Rajut at Rewards', '', 1, '2023-04-09 12:12:14', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-10 07:31:37', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/22', 'Delete data User at Module Generator', '', 1, '2023-04-10 07:31:57', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/23', 'Delete data Poin at Module Generator', '', 1, '2023-04-10 07:32:00', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Nasabah at Menu Management', '', 1, '2023-04-10 07:41:30', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Poin at Menu Management', '', 1, '2023-04-10 07:41:52', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete/4', 'Delete data Dwi Oktaviani at Users Management', '', 1, '2023-04-10 07:43:25', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete/3', 'Delete data Dimas at Users Management', '', 1, '2023-04-10 07:43:28', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-10 08:07:47', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-10 12:00:24', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/22', 'Delete data Nasabah at Module Generator', '', 1, '2023-04-10 12:00:50', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/28', 'Delete data Nasabah at Module Generator', '', 1, '2023-04-10 12:05:02', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-10 13:02:14', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/27', 'Delete data Nasabah at Menu Management', '', 1, '2023-04-10 13:02:32', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/23', 'Delete data Poin at Module Generator', '', 1, '2023-04-10 13:02:49', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/28', 'Delete data Poin at Menu Management', '', 1, '2023-04-10 13:02:56', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah_categories/add-save', 'Add New Data Plastik at Kategori Sampah', '', 1, '2023-04-10 13:03:08', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik VPC at Sampah', '', 1, '2023-04-10 13:03:37', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Pot Gemoy at Rewards', '', 1, '2023-04-10 13:04:06', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-10 20:07:41', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah_categories/add-save', 'Add New Data Plastik at Kategori Sampah', '', 1, '2023-04-10 20:07:52', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-15 23:46:33', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik PVC at Sampah', '', 1, '2023-04-15 23:58:12', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-16 11:37:24', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Plastik PVC at Sampah', '', 1, '2023-04-16 12:42:28', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-16 13:42:14', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-17 03:50:32', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-17 04:57:42', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-17 04:58:35', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-17 05:00:29', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-17 10:30:07', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-17 10:30:48', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-17 12:39:52', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-17 12:40:24', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-18 07:30:03', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-18 07:30:16', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-18 08:21:07', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-18 08:22:26', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-18 08:22:33', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-04-18 08:22:43', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-24 23:00:28', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Pot Gemoy at Rewards', '', 1, '2023-04-24 23:01:09', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(192, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-26 16:21:48', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah_categories/add-save', 'Add New Data Logam at Kategori Sampah', '', 1, '2023-04-26 16:22:02', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-26 16:24:09', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plat Besi at Sampah', '', 1, '2023-04-26 16:25:35', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah_categories/add-save', 'Add New Data Kertas at Kategori Sampah', '', 1, '2023-04-26 17:33:22', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Anyaman at Rewards', '', 1, '2023-04-26 17:37:26', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Kotak Tisu at Rewards', '', 1, '2023-04-26 17:40:11', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-26 19:17:22', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-04-26 19:19:39', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-26 19:20:24', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-04-26 19:34:30', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-04-29 22:58:08', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-08 00:46:00', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/points/edit-save/1', 'Update data  at Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_points</td><td>4999</td><td>20000</td></tr></tbody></table>', 1, '2023-05-08 00:56:26', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/tukar_poins/edit-save/8', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>2</td></tr><tr><td>status</td><td>Pending</td><td>Sukses</td></tr></tbody></table>', 1, '2023-05-08 01:03:54', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/tukar_poins/edit-save/7', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>2</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2023-05-08 01:09:35', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/tukar_poins/edit-save/8', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Sukses</td><td>On Proses</td></tr></tbody></table>', 1, '2023-05-08 01:09:50', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik HDPE at Sampah', '', 1, '2023-05-08 01:13:23', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/sampah/add-save', 'Add New Data Plastik PS at Sampah', '', 1, '2023-05-08 01:13:52', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://localhost:8000/admin/rewards/add-save', 'Add New Data Hiasan dinding at Rewards', '', 1, '2023-05-08 01:40:37', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-07-14 23:38:00', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-07-14 23:54:33', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-07-14 23:55:32', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Update data Transaksi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2023-07-14 23:57:02', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2023-07-15 00:01:42', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-07-15 00:19:06', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-08-30 23:19:13', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete/1', 'Delete data Pot Gemoy at Rewards', '', 1, '2024-05-11 07:33:01', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete/3', 'Delete data Kotak Tisu at Rewards', '', 1, '2024-05-11 07:33:03', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete/2', 'Delete data Anyaman at Rewards', '', 1, '2024-05-11 07:33:05', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete/4', 'Delete data Hiasan dinding at Rewards', '', 1, '2024-05-11 07:33:07', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/delete/1', 'Delete data Plastik at Kategori Sampah', '', 1, '2024-05-11 07:34:59', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/delete/2', 'Delete data Logam at Kategori Sampah', '', 1, '2024-05-11 07:35:02', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/delete/3', 'Delete data Kertas at Kategori Sampah', '', 1, '2024-05-11 07:35:04', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/nasabah/delete/18', 'Delete data sadam123 at Nasabah', '', 1, '2024-05-11 07:35:09', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/nasabah/delete/16', 'Delete data sdmap at Nasabah', '', 1, '2024-05-11 07:35:11', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/nasabah/delete/17', 'Delete data dudum at Nasabah', '', 1, '2024-05-11 07:35:13', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-06 01:44:33', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Add New Data Plastik at Kategori Sampah', '', 1, '2024-08-06 01:46:44', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Add New Data Elektronik at Kategori Sampah', '', 1, '2024-08-06 01:46:56', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Botol Plastik at Sampah', '', 1, '2024-08-06 01:47:33', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data TV Bekas at Sampah', '', 1, '2024-08-06 01:47:54', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data TV Bekas at Sampah', '', 1, '2024-08-06 01:47:56', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/delete/8', 'Delete data TV Bekas at Sampah', '', 1, '2024-08-06 01:48:02', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-06 01:52:30', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/delete/6', 'Delete data Botol Plastik at Sampah', '', 1, '2024-08-06 03:25:55', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/delete/7', 'Delete data TV Bekas at Sampah', '', 1, '2024-08-06 03:25:59', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Botol Bekas at Sampah', '', 1, '2024-08-06 03:26:34', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Kardus at Sampah', '', 1, '2024-08-06 03:26:58', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Koran Bekas at Sampah', '', 1, '2024-08-06 03:27:33', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Tutup Galon at Sampah', '', 1, '2024-08-06 03:27:49', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/edit-save/4', 'Update data Umum at Kategori Sampah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Plastik</td><td>Umum</td></tr><tr><td>description</td><td>Botol plastik</td><td>Barang umum</td></tr></tbody></table>', 1, '2024-08-06 03:28:09', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Add New Data Plastik at Kategori Sampah', '', 1, '2024-08-06 03:42:29', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Add New Data Kertas at Kategori Sampah', '', 1, '2024-08-06 03:42:45', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/edit-save/10', 'Update data Kardus at Sampah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category_id</td><td>4</td><td>7</td></tr></tbody></table>', 1, '2024-08-06 03:42:55', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/edit-save/11', 'Update data Koran Bekas at Sampah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category_id</td><td>4</td><td>7</td></tr></tbody></table>', 1, '2024-08-06 03:43:04', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/edit-save/9', 'Update data Botol Bekas at Sampah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category_id</td><td>4</td><td>6</td></tr></tbody></table>', 1, '2024-08-06 03:43:20', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/edit-save/12', 'Update data Tutup Galon at Sampah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category_id</td><td>4</td><td>6</td></tr></tbody></table>', 1, '2024-08-06 03:43:36', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/delete/4', 'Delete data Umum at Kategori Sampah', '', 1, '2024-08-06 03:43:44', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-06 04:38:51', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Add New Data Game at Rewards', '', 1, '2024-08-06 05:46:57', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-07 06:06:50', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data TV Bekas at Sampah', '', 1, '2024-08-07 06:07:39', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data TV Bekas at Sampah', '', 1, '2024-08-07 06:07:40', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Radio Bekas at Sampah', '', 1, '2024-08-07 06:07:59', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/delete/14', 'Delete data TV Bekas at Sampah', '', 1, '2024-08-07 06:08:05', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-07 21:37:38', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-07 21:40:14', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-07 22:24:05', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-07 23:27:05', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Game at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>price</td><td>20000</td><td>1000</td></tr></tbody></table>', 1, '2024-08-07 23:27:38', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/30', 'Update data Nasabah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2024-08-08 01:21:41', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/30', 'Update data Nasabah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2024-08-08 01:22:03', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/9', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 1, '2024-08-08 01:29:27', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/9', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>On Proses</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-08 01:29:51', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Konten Edukasi at Menu Management', '', 1, '2024-08-08 02:37:31', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-08 03:40:00', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-08 05:43:56', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/34', 'Delete data Konten Edukasi at Menu Management', '', 1, '2024-08-08 05:44:23', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-08 07:13:23', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-08 23:17:00', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-08 23:18:23', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-09 01:26:16', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-09 02:27:46', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/17', 'Delete data 17 at Transaksi', '', 1, '2024-08-09 02:28:32', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/16', 'Delete data 16 at Transaksi', '', 1, '2024-08-09 02:29:17', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/26', 'Delete data 26 at Transaksi', '', 1, '2024-08-09 02:29:23', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/25', 'Delete data 25 at Transaksi', '', 1, '2024-08-09 02:29:26', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/24', 'Delete data 24 at Transaksi', '', 1, '2024-08-09 02:29:29', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/23', 'Delete data 23 at Transaksi', '', 1, '2024-08-09 02:29:32', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/22', 'Delete data 22 at Transaksi', '', 1, '2024-08-09 02:29:35', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/22', 'Delete data  at Transaksi', '', 1, '2024-08-09 02:29:36', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/21', 'Delete data 21 at Transaksi', '', 1, '2024-08-09 02:29:40', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/20', 'Delete data 20 at Transaksi', '', 1, '2024-08-09 02:29:43', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/19', 'Delete data 19 at Transaksi', '', 1, '2024-08-09 02:29:46', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/18', 'Delete data 18 at Transaksi', '', 1, '2024-08-09 02:29:49', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/15', 'Delete data 15 at Transaksi', '', 1, '2024-08-09 02:29:52', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/14', 'Delete data 14 at Transaksi', '', 1, '2024-08-09 02:29:56', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-09 02:30:28', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-09 03:19:14', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Add New Data Uang Cash at Rewards', '', 1, '2024-08-09 03:21:42', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/6', 'Update data Uang Cash at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category</td><td>Uang</td><td>uang</td></tr></tbody></table>', 1, '2024-08-09 03:21:54', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete-image', 'Delete the image of Game at Rewards', '', 1, '2024-08-09 04:52:31', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Game at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2024-08/pot_gemoy.png</td></tr></tbody></table>', 1, '2024-08-09 04:52:40', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/6', 'Update data Uang Cash at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2024-08-09 06:53:38', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/10', 'Delete data 10 at Tukar Poin', '', 1, '2024-08-09 08:46:12', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/11', 'Delete data 11 at Tukar Poin', '', 1, '2024-08-09 08:46:16', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-09 22:40:14', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-09 22:40:59', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-09 23:02:55', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-09 23:03:29', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/delete/1', 'Delete data 1 at Tukar Saldo', '', 1, '2024-08-10 01:55:54', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/delete/3', 'Delete data 3 at Tukar Saldo', '', 1, '2024-08-10 01:55:57', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/delete/2', 'Delete data 2 at Tukar Saldo', '', 1, '2024-08-10 01:56:00', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-10 01:56:56', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/edit-save/5', 'Update data  at Tukar Saldo', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-10 02:29:57', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-10 02:35:08', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-10 02:38:14', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-10 02:38:24', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-10 07:03:18', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-10 07:03:35', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Add New Data Plastik at Kategori Sampah', '', 1, '2024-08-10 07:04:37', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Add New Data Kertas at Kategori Sampah', '', 1, '2024-08-10 07:04:48', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Botol Plastik at Sampah', '', 1, '2024-08-10 07:05:28', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Tutup Galon at Sampah', '', 1, '2024-08-10 07:05:47', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Kardus at Sampah', '', 1, '2024-08-10 07:06:08', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Add New Data Koran Bekas at Sampah', '', 1, '2024-08-10 07:06:25', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Game at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>3</td></tr></tbody></table>', 1, '2024-08-10 07:53:14', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/15.0.0 Mobile/15A5370a Safari/602.1', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-10 08:09:03', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-10 22:23:02', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/edit-save/2', 'Update data  at Konten Edukasi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2024-08-10 22:23:27', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-11 06:38:01', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-11 06:38:31', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-11 22:49:18', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete-image', 'Delete the image of Uang Cash at Rewards', '', 1, '2024-08-11 22:51:23', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/6', 'Update data Uang Cash at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2024-08/uang.jpeg</td></tr></tbody></table>', 1, '2024-08-11 22:51:31', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Add New Data Tempat Sampah at Rewards', '', 1, '2024-08-11 22:54:26', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Game at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category</td><td>hiasan</td><td>Vas Bunga</td></tr><tr><td>description</td><td>Mainan anak</td><td>Dekorasi vas bunga</td></tr></tbody></table>', 1, '2024-08-11 23:13:36', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Game</td><td>Vas Bunga</td></tr></tbody></table>', 1, '2024-08-11 23:13:57', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Add New Data Sapu Ijuk at Rewards', '', 1, '2024-08-11 23:15:26', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-12 08:50:18', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/12', 'Delete data 12 at Tukar Poin', '', 1, '2024-08-12 08:51:26', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/13', 'Delete data 13 at Tukar Poin', '', 1, '2024-08-12 08:51:29', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/14', 'Delete data 14 at Tukar Poin', '', 1, '2024-08-12 08:51:32', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>20</td></tr></tbody></table>', 1, '2024-08-12 08:51:58', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/15', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 08:52:14', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>price</td><td>1000</td><td>100</td></tr><tr><td>stock</td><td>20</td><td>1</td></tr></tbody></table>', 1, '2024-08-12 08:53:20', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>1</td><td>0</td></tr></tbody></table>', 1, '2024-08-12 08:53:38', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2024-08-12 08:54:19', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-12 10:17:34', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2024-08-12 10:18:15', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/16', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 1, '2024-08-12 10:18:45', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2024-08-12 10:42:59', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-12 10:43:38', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-12 10:44:23', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/17', 'Delete data 17 at Tukar Poin', '', 1, '2024-08-12 10:45:19', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/18', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 10:45:29', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/16', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>On Proses</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 10:54:20', NULL),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/16', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Diterima</td><td>Pending</td></tr></tbody></table>', 1, '2024-08-12 10:55:02', NULL),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/16', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 10:55:10', NULL),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/19', 'Delete data 19 at Tukar Poin', '', 1, '2024-08-12 10:56:14', NULL),
(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2024-08-12 10:56:22', NULL),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/20', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 10:56:59', NULL),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/20', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Diterima</td><td>Pending</td></tr></tbody></table>', 1, '2024-08-12 10:59:35', NULL),
(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/20', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 10:59:46', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/20', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Diterima</td><td>Pending</td></tr></tbody></table>', 1, '2024-08-12 11:02:03', NULL),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/20', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 11:02:13', NULL),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/21', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 11:04:16', NULL),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/21', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Diterima</td><td>Pending</td></tr></tbody></table>', 1, '2024-08-12 11:09:28', NULL),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/21', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 11:09:37', NULL),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/21', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Diterima</td><td>Pending</td></tr></tbody></table>', 1, '2024-08-12 11:13:42', NULL),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/21', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 11:15:31', NULL),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/21', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Diterima</td><td>Pending</td></tr></tbody></table>', 1, '2024-08-12 11:18:30', NULL),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/21', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-12 11:18:40', NULL),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Update data Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-12 11:20:16', NULL),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Update data Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminSampahControllerGetIndex</td><td>AdminSampahController</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-12 11:27:54', NULL),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Update data Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminSampahController</td><td>AdminSampahControllerGetIndex</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-12 11:28:10', NULL),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Update data Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-12 11:37:55', NULL),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Dashboard at Statistic Builder', '', 1, '2024-08-12 11:38:22', NULL),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', '', 1, '2024-08-12 11:38:49', NULL),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-12 12:21:40', NULL),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-12 22:08:51', NULL),
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-12 22:13:15', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-12 22:14:28', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-13 01:12:20', NULL),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-13 01:21:06', NULL),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/delete/5', 'Delete data 5 at Konten Edukasi', '', 1, '2024-08-13 08:24:39', NULL),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-13 08:24:55', NULL),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/edit-save/6', 'Update data  at Konten Edukasi', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>judul</td><td>Cek Kesehatan di Klinik Ini Bisa Bayar Pakai Sampah  Baca artikel detikHealth, \"Cek Kesehatan di Klinik Ini Bisa Bayar Pakai Sampah\" selengkapnya https://health.detik.com/fotohealth/d-7479009/cek-kesehatan-di-klinik-ini-bisa-bayar-pakai-sampah.  Download Apps Detikcom Sekarang https://apps.detik.com/detik/</td><td>Cek Kesehatan di Klinik Ini Bisa Bayar Pakai Sampah</td></tr></tbody></table>', 1, '2024-08-13 08:25:39', NULL),
(381, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/15.0.0 Mobile/15A5370a Safari/602.1', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-13 08:58:14', NULL),
(382, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/15.0.0 Mobile/15A5370a Safari/602.1', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-13 09:23:15', NULL),
(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/delete/4', 'Delete data 4 at Konten Edukasi', '', 1, '2024-08-13 09:23:28', NULL),
(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/delete/7', 'Delete data 7 at Konten Edukasi', '', 1, '2024-08-13 09:23:33', NULL),
(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Add New Data  at Konten Edukasi', '', 1, '2024-08-13 09:23:53', NULL),
(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/delete/8', 'Delete data 8 at Konten Edukasi', '', 1, '2024-08-13 09:24:02', NULL),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/37', 'Update data Tukar Saldo at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-trademark</td><td>fa fa-trophy</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2024-08-13 09:24:58', NULL),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/35', 'Update data Konten Edukasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-file-o</td><td>fa fa-book</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2024-08-13 09:25:27', NULL),
(389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2024-08-13 12:02:31', NULL),
(390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-13 12:27:37', NULL),
(391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 1, '2024-08-13 12:29:37', NULL),
(392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/5', 'Update data Vas Bunga at Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>5</td></tr></tbody></table>', 1, '2024-08-13 12:31:10', NULL),
(393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/22', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>1</td></tr><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 1, '2024-08-13 12:32:44', NULL),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/22', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>On Proses</td><td>Diterima</td></tr></tbody></table>', 1, '2024-08-13 12:33:34', NULL),
(395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data BSU-1 at Users Management', '', 1, '2024-08-13 14:15:19', NULL),
(396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data BSU-2 at Users Management', '', 1, '2024-08-13 14:16:05', NULL),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data BSU-3 at Users Management', '', 1, '2024-08-13 14:16:44', NULL),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data BSU-4 at Users Management', '', 1, '2024-08-13 14:17:24', NULL),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-13 14:18:46', NULL),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-13 14:19:02', NULL),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data Kategori Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 5, '2024-08-13 14:19:49', NULL),
(402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 5, '2024-08-13 14:22:02', NULL),
(403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com logout', '', 5, '2024-08-13 14:24:26', NULL),
(404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-13 14:24:37', NULL),
(405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2024-08-13 14:25:33', NULL),
(406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/8', 'Update data BSU-4 at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$3t9GkneRqVZHg04m3883hOjAI2YJc8wIofWTR1G7vZVlEASDnnDji</td><td></td></tr><tr><td>status</td><td></td><td>Active</td></tr></tbody></table>', 1, '2024-08-13 14:34:01', NULL),
(407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/5', 'Update data BSU-1 at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$.ZCXqpHVan85cC88nGtKneJWkZ4QxITl.L304PNjgRf5u1MMIHDau</td><td></td></tr><tr><td>status</td><td></td><td>Active</td></tr></tbody></table>', 1, '2024-08-13 14:34:15', NULL),
(408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-13 14:34:19', NULL),
(409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-13 14:34:39', NULL),
(410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com logout', '', 5, '2024-08-13 14:35:15', NULL),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-13 14:35:33', NULL),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-13 14:36:30', NULL),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-13 14:36:45', NULL),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Sampah at Menu Management', '', 5, '2024-08-13 14:37:44', NULL),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/39', 'Delete data Sampah at Menu Management', '', 5, '2024-08-13 14:38:17', NULL),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com logout', '', 5, '2024-08-13 14:38:22', NULL),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-13 14:38:35', NULL),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:38:51', NULL),
(419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data Kategori Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:38:58', NULL),
(420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Update data Sampah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:04', NULL),
(421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data Rewards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:10', NULL),
(422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Update data Transaksi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:15', NULL),
(423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/32', 'Update data Poin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:22', NULL),
(424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/32', 'Update data Poin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:28', NULL),
(425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Update data Saldo at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:35', NULL),
(426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/35', 'Update data Konten Edukasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:41', NULL),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/33', 'Update data Tukar Poin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:47', NULL),
(428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/37', 'Update data Tukar Saldo at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:52', NULL),
(429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/30', 'Update data Nasabah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2024-08-13 14:39:59', NULL),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-13 14:40:05', NULL),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-13 14:40:16', NULL),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com logout', '', 5, '2024-08-13 14:57:35', NULL),
(433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-13 14:57:55', NULL),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-13 14:58:10', NULL),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-13 14:58:45', NULL),
(436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 5, '2024-08-13 15:00:08', NULL),
(437, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com logout', '', 5, '2024-08-13 15:02:37', NULL),
(438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login with IP Address 127.0.0.1', '', 6, '2024-08-13 15:02:49', NULL),
(439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 6, '2024-08-13 15:03:14', NULL),
(440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/23', 'Update data  at Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>6</td></tr><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 6, '2024-08-13 15:38:06', NULL),
(441, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com logout', '', 6, '2024-08-13 16:08:24', NULL),
(442, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-13 16:08:55', NULL),
(443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/3', 'Delete data 3 at Transaksi', '', 5, '2024-08-13 16:22:27', NULL),
(444, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/1', 'Delete data 1 at Transaksi', '', 5, '2024-08-13 16:22:30', NULL),
(445, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/2', 'Delete data 2 at Transaksi', '', 5, '2024-08-13 16:22:33', NULL),
(446, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi', '', 5, '2024-08-13 16:22:47', NULL),
(447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login with IP Address 127.0.0.1', '', 6, '2024-08-14 07:14:11', NULL),
(448, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/add-save', 'Add New Data Pengumpulan sampah at Pengumuman', '', 6, '2024-08-14 07:20:24', NULL),
(449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/1', 'Update data Pengumpulan sampah at Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td></td><td>Pending</td></tr></tbody></table>', 6, '2024-08-14 07:25:33', NULL),
(450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/1', 'Update data Pengumpulan sampah at Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 6, '2024-08-14 07:25:41', NULL),
(451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/add-save', 'Add New Data Pengumpulan sampah at Pengumuman', '', 6, '2024-08-14 07:38:06', NULL),
(452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/add-save', 'Add New Data Pengumpulan sampah at Pengumuman', '', 6, '2024-08-14 07:40:11', NULL),
(453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/3', 'Update data Pengumpulan sampah at Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 6, '2024-08-14 07:41:17', NULL),
(454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/3', 'Update data Pengumpulan sampah at Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>deskripsi</td><td>Penukaran sampah akan dilaksanakan pada tanggal 17 Agustus 2024 s/d 24 Agustus 2024 di BSU terdekat!</td><td>Penukaran sampah akan dilaksanakan pada tanggal 17 Agustus 2024 s/d 24 Agustus 2024 di BSU pilihan anda!</td></tr></tbody></table>', 6, '2024-08-14 07:52:17', NULL),
(455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/3', 'Update data Pengumpulan sampah at Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>On Proses</td><td>Selesai</td></tr></tbody></table>', 6, '2024-08-14 07:53:02', NULL),
(456, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/3', 'Update data Pengumpulan sampah at Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Selesai</td><td>On Proses</td></tr></tbody></table>', 6, '2024-08-14 08:48:47', NULL),
(457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/3', 'Update data Pengumpulan sampah at Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>On Proses</td><td>Pending</td></tr></tbody></table>', 6, '2024-08-14 08:49:52', NULL),
(458, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Update data Transaksi Nasabah at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Transaksi</td><td>Transaksi Nasabah</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 6, '2024-08-14 09:43:13', NULL),
(459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi Nasabah', '', 6, '2024-08-14 10:04:25', NULL),
(460, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com logout', '', 6, '2024-08-14 10:09:35', NULL),
(461, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-14 10:09:49', NULL),
(462, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-14 10:17:24', NULL),
(463, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login with IP Address 127.0.0.1', '', 6, '2024-08-14 10:17:33', NULL),
(464, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com logout', '', 6, '2024-08-14 10:17:44', NULL),
(465, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-14 10:17:57', NULL),
(466, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/add-save', 'Add New Data Pengumpulan Sampah at Pengumuman', '', 5, '2024-08-14 10:19:16', NULL),
(467, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-14 10:22:21', NULL),
(468, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2024-08/image_17.png</td></tr><tr><td>password</td><td>$2y$10$bSNg2V6p.aHKKIQaAg2vpuR0E3tlE5nR3a385HYc/o6j.EyQP3soW</td><td>$2y$10$sWLmqEjUz7BcmH3tUPd/F.vpAnIWSkK5dMoHkfgbQDI8g5tDG60/m</td></tr></tbody></table>', 1, '2024-08-14 10:22:57', NULL),
(469, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-14 10:23:04', NULL),
(470, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-14 10:23:16', NULL),
(471, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2024-08-14 10:35:31', NULL),
(472, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-08-14 10:35:42', NULL),
(473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi Nasabah', '', 5, '2024-08-14 10:49:51', NULL),
(474, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Add New Data  at Transaksi Nasabah', '', 5, '2024-08-14 10:51:18', NULL),
(475, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Add New Data  at Transaksi BSI', '', 5, '2024-08-14 12:44:10', NULL),
(476, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Add New Data  at Transaksi BSI', '', 5, '2024-08-14 13:14:45', NULL),
(477, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/delete/5', 'Delete data 5 at Transaksi BSI', '', 5, '2024-08-14 13:15:06', NULL),
(478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Add New Data  at Transaksi BSI', '', 5, '2024-08-14 13:15:28', NULL),
(479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Transaksi at Menu Management', '', 5, '2024-08-14 13:21:33', NULL),
(480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Tukar Rewards at Menu Management', '', 5, '2024-08-14 13:23:15', NULL),
(481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/44', 'Update data Tukar Rewards at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 5, '2024-08-14 13:24:19', NULL),
(482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/32', 'Update data Poin at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 5, '2024-08-14 13:24:45', NULL),
(483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Update data Saldo at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 5, '2024-08-14 13:24:54', NULL),
(484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login with IP Address 127.0.0.1', '', 5, '2024-09-14 06:50:09', NULL),
(485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2024-08-14 15:51:45', NULL),
(486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 05:57:50', NULL),
(487, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-15 06:54:03', NULL),
(488, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-15 06:55:17', NULL),
(489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/41', 'Menghapus data Laporan pada Menu Management', '', 5, '2024-08-15 06:57:43', NULL),
(490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/42', 'Memperbaharui data Transaksi BSI pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-search</td><td>fa fa-money</td></tr><tr><td>parent_id</td><td>43</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 5, '2024-08-15 06:58:39', NULL),
(491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/13', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td>11025</td><td></td></tr><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:06:02', NULL),
(492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/12', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:06:09', NULL),
(493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/11', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td>10950</td><td></td></tr><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:06:14', NULL),
(494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/10', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td>10200</td><td></td></tr><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:06:19', NULL),
(495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/5', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td></td><td></td></tr><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:06:23', NULL),
(496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/7', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td></td><td></td></tr><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:06:28', NULL),
(497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/9', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td></td><td></td></tr><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:06:32', NULL),
(498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/13', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td>11025</td><td></td></tr><tr><td>periode</td><td>1</td><td>2</td></tr></tbody></table>', 5, '2024-08-15 07:06:56', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(499, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/11', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td>10950</td><td></td></tr></tbody></table>', 5, '2024-08-15 07:07:01', NULL),
(500, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/9', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td></td><td></td></tr><tr><td>periode</td><td>1</td><td>agustus</td></tr></tbody></table>', 5, '2024-08-15 07:21:12', NULL),
(501, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/9', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td></td><td></td></tr><tr><td>periode</td><td>agustus</td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:21:29', NULL),
(502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/9', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td></td><td></td></tr><tr><td>periode</td><td>1</td><td>2</td></tr></tbody></table>', 5, '2024-08-15 07:28:35', NULL),
(503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/7', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_pembelian</td><td></td><td></td></tr></tbody></table>', 5, '2024-08-15 07:43:37', NULL),
(504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-15 07:43:57', NULL),
(505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/6', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>profit</td><td>9550</td><td></td></tr><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:49:46', NULL),
(506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/delete/6', 'Menghapus data 6 pada Transaksi BSI', '', 5, '2024-08-15 07:57:11', NULL),
(507, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/14', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>periode</td><td></td><td>1</td></tr></tbody></table>', 5, '2024-08-15 07:58:57', NULL),
(508, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 5, '2024-08-15 07:59:18', NULL),
(509, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/delete/7', 'Menghapus data 7 pada Transaksi BSI', '', 5, '2024-08-15 08:01:10', NULL),
(510, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 5, '2024-08-15 08:01:24', NULL),
(511, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/8', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_price</td><td>5000</td><td>10000</td></tr><tr><td>profit</td><td>1800</td><td></td></tr></tbody></table>', 5, '2024-08-15 08:01:35', NULL),
(512, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/14', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_weight</td><td>4</td><td>6</td></tr><tr><td>total_income</td><td>3200</td><td>4800</td></tr><tr><td>point_received</td><td>400</td><td>600</td></tr></tbody></table>', 5, '2024-08-15 08:06:59', NULL),
(513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/14', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_weight</td><td>6</td><td>0.4</td></tr><tr><td>total_income</td><td>4800</td><td>320</td></tr><tr><td>point_received</td><td>600</td><td>40</td></tr></tbody></table>', 5, '2024-08-15 08:07:09', NULL),
(514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/8', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_price</td><td>10000</td><td>400000</td></tr><tr><td>profit</td><td>1800</td><td></td></tr></tbody></table>', 5, '2024-08-15 08:07:26', NULL),
(515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/8', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_price</td><td>400000</td><td>50000</td></tr><tr><td>profit</td><td>1800</td><td></td></tr></tbody></table>', 5, '2024-08-15 08:10:12', NULL),
(516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/8', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_price</td><td>50000</td><td>5000</td></tr><tr><td>profit</td><td>49680</td><td></td></tr></tbody></table>', 5, '2024-08-15 08:10:27', NULL),
(517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/8', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>profit</td><td>4680</td><td></td></tr><tr><td>periode</td><td>1</td><td>2</td></tr></tbody></table>', 5, '2024-08-15 08:10:37', NULL),
(518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 5, '2024-08-15 08:11:11', NULL),
(519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 5, '2024-08-15 08:11:11', NULL),
(520, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/delete/9', 'Menghapus data 9 pada Transaksi BSI', '', 5, '2024-08-15 08:11:22', NULL),
(521, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/8', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>profit</td><td>4680</td><td></td></tr></tbody></table>', 5, '2024-08-15 08:13:32', NULL),
(522, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/8', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>periode</td><td>2</td><td>1</td></tr></tbody></table>', 5, '2024-08-15 08:13:39', NULL),
(523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/10', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>periode</td><td>3</td><td>1</td></tr></tbody></table>', 5, '2024-08-15 08:13:52', NULL),
(524, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/delete/8', 'Menghapus data 8 pada Transaksi BSI', '', 5, '2024-08-15 08:14:01', NULL),
(525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/24', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 08:38:20', NULL),
(526, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Elektronik pada Kategori Sampah', '', 5, '2024-08-15 09:11:40', NULL),
(527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-15 09:11:44', NULL),
(528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-15 09:12:18', NULL),
(529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Tambah data baru Vas Bunga pada Rewards', '', 6, '2024-08-15 09:52:04', NULL),
(530, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com keluar', '', 6, '2024-08-15 09:52:38', NULL),
(531, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 09:52:50', NULL),
(532, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-15 09:53:12', NULL),
(533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-15 09:53:28', NULL),
(534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Tambah data baru vas bunga pada Rewards', '', 6, '2024-08-15 10:29:30', NULL),
(535, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com keluar', '', 6, '2024-08-15 10:46:46', NULL),
(536, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu3@gmail.com login dengan IP Address 127.0.0.1', '', 7, '2024-08-15 10:47:13', NULL),
(537, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu3@gmail.com keluar', '', 7, '2024-08-15 10:48:58', NULL),
(538, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 10:49:09', NULL),
(539, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-15 10:49:53', NULL),
(540, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-15 10:50:01', NULL),
(541, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/9', 'Memperbaharui data Uang Cash pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Vas Bunga</td><td>Uang Cash</td></tr><tr><td>description</td><td>Hiasan vas bunga berwarna kuning</td><td>Uang cash</td></tr></tbody></table>', 6, '2024-08-15 10:50:40', NULL),
(542, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete-image', 'Menghapus gambar Uang Cash pada Rewards', '', 6, '2024-08-15 10:50:47', NULL),
(543, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/9', 'Memperbaharui data Uang Cash pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/6/2024-08/uang.jpeg</td></tr></tbody></table>', 6, '2024-08-15 10:50:54', NULL),
(544, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com keluar', '', 6, '2024-08-15 10:52:47', NULL),
(545, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 10:52:59', NULL),
(546, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Tambah data baru Vas Bunga pada Rewards', '', 5, '2024-08-15 10:57:05', NULL),
(547, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/26', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 10:58:16', NULL),
(548, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/delete/25', 'Menghapus data 25 pada Tukar Poin', '', 5, '2024-08-15 11:07:01', NULL),
(549, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/27', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 11:07:46', NULL),
(550, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 11:43:33', NULL),
(551, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/29', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 11:44:08', NULL),
(552, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-15 11:44:18', NULL),
(553, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-15 11:44:25', NULL),
(554, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/28', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>6</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 6, '2024-08-15 11:45:05', NULL),
(555, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com keluar', '', 6, '2024-08-15 11:45:50', NULL),
(556, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 11:45:59', NULL),
(557, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Tambah data baru Uang Cash pada Rewards', '', 5, '2024-08-15 11:47:38', NULL),
(558, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/delete/8', 'Menghapus data 8 pada Tukar Saldo', '', 5, '2024-08-15 11:48:19', NULL),
(559, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-15 11:48:28', NULL),
(560, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-15 11:48:38', NULL),
(561, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com keluar', '', 6, '2024-08-15 11:48:51', NULL),
(562, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 11:49:15', NULL),
(563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/4', 'Memperbaharui data Pengumpulan Sampah pada Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>On Proses</td><td>Pending</td></tr></tbody></table>', 5, '2024-08-15 11:50:30', NULL),
(564, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 12:03:22', NULL),
(565, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/11', 'Memperbaharui data Vas Bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category</td><td>hiasan</td><td>uang</td></tr></tbody></table>', 5, '2024-08-15 12:04:14', NULL),
(566, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/11', 'Memperbaharui data Vas Bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>category</td><td>uang</td><td>barang</td></tr></tbody></table>', 5, '2024-08-15 12:04:21', NULL),
(567, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/30', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>reward_id</td><td>11</td><td></td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 12:39:19', NULL),
(568, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/31', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>reward_id</td><td>11</td><td></td></tr></tbody></table>', 5, '2024-08-15 12:39:33', NULL),
(569, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/31', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>reward_id</td><td>11</td><td></td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 12:39:44', NULL),
(570, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/edit-save/10', 'Memperbaharui data  pada Tukar Saldo', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 12:39:59', NULL),
(571, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/edit-save/9', 'Memperbaharui data  pada Tukar Saldo', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 12:40:57', NULL),
(572, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/11', 'Memperbaharui data Vas Bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>1</td></tr></tbody></table>', 5, '2024-08-15 12:42:58', NULL),
(573, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/11', 'Memperbaharui data Vas Bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>1</td><td>0</td></tr></tbody></table>', 5, '2024-08-15 12:44:33', NULL),
(574, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/32', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>5</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 5, '2024-08-15 12:44:46', NULL),
(575, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/11', 'Memperbaharui data Vas Bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>1</td></tr></tbody></table>', 5, '2024-08-15 12:49:36', NULL),
(576, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/32', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 5, '2024-08-15 12:49:49', NULL),
(577, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-15 12:56:22', NULL),
(578, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete-image', 'Menghapus gambar 14 pada Transaksi Nasabah', '', 5, '2024-08-15 15:22:33', NULL),
(579, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/edit-save/14', 'Memperbaharui data  pada Transaksi Nasabah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo_evidence</td><td></td><td>uploads/5/2024-08/kardus.jpeg</td></tr></tbody></table>', 5, '2024-08-15 15:22:41', NULL),
(580, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 5, '2024-08-15 15:29:05', NULL),
(581, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/delete/11', 'Menghapus data 11 pada Transaksi BSI', '', 5, '2024-08-15 15:29:19', NULL),
(582, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/11', 'Memperbaharui data Vas Bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>0</td><td>5</td></tr></tbody></table>', 5, '2024-08-15 15:30:14', NULL),
(583, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-15 15:52:56', NULL),
(584, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-15 15:57:37', NULL),
(585, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-15 16:05:28', NULL),
(586, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-16 07:08:08', NULL),
(587, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-16 07:09:00', NULL),
(588, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-16 07:34:48', NULL),
(589, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Karet pada Kategori Sampah', '', 5, '2024-08-16 07:48:46', NULL),
(590, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru test pada Sampah', '', 5, '2024-08-16 07:49:51', NULL),
(591, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-16 07:52:47', NULL),
(592, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-16 07:52:57', NULL),
(593, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 6, '2024-08-16 08:04:52', NULL),
(594, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/10', 'Memperbaharui data vas bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 6, '2024-08-16 08:16:15', NULL),
(595, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/delete/9', 'Menghapus data Uang Cash pada Rewards', '', 6, '2024-08-16 08:18:15', NULL),
(596, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-16 08:23:40', NULL),
(597, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Plastik pada Kategori Sampah', '', 5, '2024-08-16 08:45:13', NULL),
(598, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/delete/5', 'Menghapus data Plastik pada Kategori Sampah', '', 5, '2024-08-16 08:47:00', NULL),
(599, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Plastik pada Kategori Sampah', '', 5, '2024-08-16 08:48:57', NULL),
(600, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Kertas pada Kategori Sampah', '', 5, '2024-08-16 08:49:09', NULL),
(601, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Botol Plastik pada Sampah', '', 5, '2024-08-16 08:51:17', NULL),
(602, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Tutup Galon pada Sampah', '', 5, '2024-08-16 08:51:40', NULL),
(603, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Koran Bekas pada Sampah', '', 5, '2024-08-16 08:51:59', NULL),
(604, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Kardus pada Sampah', '', 5, '2024-08-16 08:52:20', NULL),
(605, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-16 08:55:33', NULL),
(606, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' keluar', '', NULL, '2024-08-16 08:56:24', NULL),
(607, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-16 08:56:32', NULL),
(608, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/delete/19', 'Menghapus data 19 pada Transaksi Nasabah', '', 6, '2024-08-16 08:56:56', NULL),
(609, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Plastik pada Kategori Sampah', '', 6, '2024-08-16 08:57:09', NULL),
(610, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Kertas pada Kategori Sampah', '', 6, '2024-08-16 08:57:20', NULL),
(611, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Botol Plastik pada Sampah', '', 6, '2024-08-16 08:57:39', NULL),
(612, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Tutup Galon pada Sampah', '', 6, '2024-08-16 08:58:03', NULL),
(613, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Tutup Galon pada Sampah', '', 6, '2024-08-16 08:58:03', NULL),
(614, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/delete/12', 'Menghapus data Tutup Galon pada Sampah', '', 6, '2024-08-16 08:58:08', NULL),
(615, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 6, '2024-08-16 08:58:36', NULL),
(616, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Kardus Bekas pada Sampah', '', 6, '2024-08-16 09:00:06', NULL),
(617, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 6, '2024-08-16 09:00:27', NULL),
(618, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com keluar', '', 6, '2024-08-16 09:00:57', NULL),
(619, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-16 09:01:16', NULL),
(620, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 5, '2024-08-16 09:02:33', NULL),
(621, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-16 09:04:30', NULL),
(622, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu3@gmail.com login dengan IP Address 127.0.0.1', '', 7, '2024-08-16 09:04:39', NULL),
(623, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu3@gmail.com keluar', '', 7, '2024-08-16 09:05:36', NULL),
(624, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-16 09:05:51', NULL),
(625, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/8', 'Memperbaharui data BSU-4 pada Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$3t9GkneRqVZHg04m3883hOjAI2YJc8wIofWTR1G7vZVlEASDnnDji</td><td></td></tr><tr><td>no_whatsapp</td><td></td><td></td></tr></tbody></table>', 5, '2024-08-16 10:13:35', NULL),
(626, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/5', 'Memperbaharui data BSU-1 pada Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$.ZCXqpHVan85cC88nGtKneJWkZ4QxITl.L304PNjgRf5u1MMIHDau</td><td></td></tr><tr><td>no_whatsapp</td><td></td><td>087829292952</td></tr></tbody></table>', 5, '2024-08-16 10:13:48', NULL),
(627, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-16 11:00:18', NULL),
(628, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-16 11:00:41', NULL),
(629, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu2@gmail.com login dengan IP Address 127.0.0.1', '', 6, '2024-08-16 15:52:55', NULL),
(630, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 6, '2024-08-16 15:54:08', NULL),
(631, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Tambah data baru Uang Cash pada Rewards', '', 6, '2024-08-16 15:55:26', NULL),
(632, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_saldo/edit-save/11', 'Memperbaharui data  pada Tukar Saldo', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>6</td></tr><tr><td>status</td><td>Pending</td><td>Diterima</td></tr></tbody></table>', 6, '2024-08-16 15:56:20', NULL),
(633, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu2@gmail.com keluar', '', 6, '2024-08-16 16:00:28', NULL),
(634, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-16 16:00:45', NULL),
(635, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/42', 'Memperbaharui data Transaksi BSI pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>43</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-16 16:02:12', NULL),
(636, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Tambah data baru Dashboard super admin pada Statistic Builder', '', 1, '2024-08-16 16:04:17', NULL),
(637, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Tambah data baru Dashboard super admin pada Menu Management', '', 1, '2024-08-16 16:05:24', NULL),
(638, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Memperbaharui data Dashboard pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2024-08-16 16:05:36', NULL),
(639, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Memperbaharui data Kategori Sampah pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-16 16:06:02', NULL),
(640, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Memperbaharui data Sampah pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2024-08-16 16:06:12', NULL),
(641, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Memperbaharui data Rewards pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2024-08-16 16:06:41', NULL),
(642, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/45', 'Memperbaharui data Dashboard super admin pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2024-08-16 16:23:44', NULL),
(643, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/45', 'Memperbaharui data Dashboard super admin pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2024-08-16 16:23:51', NULL),
(644, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2024-08-16 16:25:44', NULL),
(645, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-16 16:25:52', NULL),
(646, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-16 16:30:50', NULL),
(647, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-16 16:31:11', NULL),
(648, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-16 16:31:50', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(649, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-17 06:50:00', NULL),
(650, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/10', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>profit</td><td>4680</td><td></td></tr><tr><td>periode</td><td>1</td><td>2</td></tr></tbody></table>', 5, '2024-08-17 07:20:26', NULL),
(651, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/edit-save/10', 'Memperbaharui data  pada Transaksi BSI', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>total_price</td><td>5000</td><td>10000</td></tr><tr><td>profit</td><td>-2900</td><td></td></tr></tbody></table>', 5, '2024-08-17 07:20:48', NULL),
(652, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-17 12:02:16', NULL),
(653, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-17 12:08:57', NULL),
(654, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-17 12:14:38', NULL),
(655, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-17 12:15:23', NULL),
(656, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 5, '2024-08-17 12:22:24', NULL),
(657, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 5, '2024-08-17 12:28:06', NULL),
(658, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/add-save', 'Tambah data baru Tukar sampah pada Pengumuman', '', 5, '2024-08-17 12:30:46', NULL),
(659, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/5', 'Memperbaharui data Tukar sampah pada Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 5, '2024-08-17 12:31:16', NULL),
(660, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-17 12:32:11', NULL),
(661, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-17 12:33:49', NULL),
(662, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-17 12:34:00', NULL),
(663, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Tambah data baru BSU RW 6 pada Users Management', '', 1, '2024-08-17 12:36:09', NULL),
(664, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2024-08-17 12:36:17', NULL),
(665, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu6@gmail.com login dengan IP Address 127.0.0.1', '', 9, '2024-08-17 12:36:27', NULL),
(666, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu6@gmail.com keluar', '', 9, '2024-08-17 13:20:03', NULL),
(667, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-17 13:20:15', NULL),
(668, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Tambah data baru admin pada Users Management', '', 1, '2024-08-17 13:21:14', NULL),
(669, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2024-08-17 13:22:09', NULL),
(670, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin_bankimam@gmail.com login dengan IP Address 127.0.0.1', '', 10, '2024-08-17 14:52:34', NULL),
(671, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin_bankimam@gmail.com keluar', '', 10, '2024-08-17 14:52:46', NULL),
(672, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-17 14:56:50', NULL),
(673, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/43', 'Memperbaharui data Transaksi pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:57:16', NULL),
(674, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Memperbaharui data Transaksi Nasabah pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>43</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:57:23', NULL),
(675, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/42', 'Memperbaharui data Transaksi BSI pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>43</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:57:35', NULL),
(676, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/45', 'Memperbaharui data Dashboard  Admin pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Dashboard super admin</td><td>Dashboard  Admin</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2024-08-17 14:57:55', NULL),
(677, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/44', 'Memperbaharui data Tukar Rewards pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:58:16', NULL),
(678, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/33', 'Memperbaharui data Tukar Poin pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>44</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:58:23', NULL),
(679, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/37', 'Memperbaharui data Tukar Saldo pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>44</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:58:30', NULL),
(680, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/32', 'Memperbaharui data Poin pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:58:39', NULL),
(681, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Memperbaharui data Saldo pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:58:46', NULL),
(682, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/35', 'Memperbaharui data Konten Edukasi pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:58:53', NULL),
(683, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/30', 'Memperbaharui data Nasabah pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:59:01', NULL),
(684, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/40', 'Memperbaharui data Pengumuman pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:59:13', NULL),
(685, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Memperbaharui data Saldo pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:59:24', NULL),
(686, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/36', 'Memperbaharui data Saldo pada Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2024-08-17 14:59:32', NULL),
(687, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2024-08-17 14:59:59', NULL),
(688, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin_bankimam@gmail.com login dengan IP Address 127.0.0.1', '', 10, '2024-08-17 15:00:12', NULL),
(689, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin_bankimam@gmail.com keluar', '', 10, '2024-08-17 15:01:09', NULL),
(690, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-17 15:01:20', NULL),
(691, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2024-08-17 15:08:03', NULL),
(692, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-17 15:08:15', NULL),
(693, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-17 15:08:55', NULL),
(694, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-17 15:09:08', NULL),
(695, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com keluar', '', 1, '2024-08-17 15:11:02', NULL),
(696, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin_bankimam@gmail.com login dengan IP Address 127.0.0.1', '', 10, '2024-08-17 15:11:21', NULL),
(697, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin_bankimam@gmail.com keluar', '', 10, '2024-08-17 15:19:43', NULL),
(698, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-17 15:22:57', NULL),
(699, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-18 07:04:39', NULL),
(700, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-18 07:04:51', NULL),
(701, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' keluar', '', NULL, '2024-08-18 07:04:51', NULL),
(702, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu6@gmail.com login dengan IP Address 127.0.0.1', '', 9, '2024-08-18 07:05:00', NULL),
(703, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Plastik pada Kategori Sampah', '', 9, '2024-08-18 07:09:43', NULL),
(704, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah_categories/add-save', 'Tambah data baru Kertas pada Kategori Sampah', '', 9, '2024-08-18 07:10:03', NULL),
(705, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Botol Plastik pada Sampah', '', 9, '2024-08-18 07:10:35', NULL),
(706, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sampah/add-save', 'Tambah data baru Koran Bekas pada Sampah', '', 9, '2024-08-18 07:11:06', NULL),
(707, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 9, '2024-08-18 07:13:34', NULL),
(708, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions/add-save', 'Tambah data baru  pada Transaksi Nasabah', '', 9, '2024-08-18 07:14:27', NULL),
(709, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/add-save', 'Tambah data baru Penukaran Sampah periode 1 pada Pengumuman', '', 9, '2024-08-18 07:16:27', NULL),
(710, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pengumuman/edit-save/6', 'Memperbaharui data Penukaran Sampah periode 1 pada Pengumuman', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 9, '2024-08-18 07:16:41', NULL),
(711, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Tambah data baru Uang Cash pada Rewards', '', 9, '2024-08-18 07:17:59', NULL),
(712, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/add-save', 'Tambah data baru Vas Bunga pada Rewards', '', 9, '2024-08-18 07:20:08', NULL),
(713, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/34', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>admin_id</td><td></td><td>9</td></tr><tr><td>status</td><td>Pending</td><td>On Proses</td></tr></tbody></table>', 9, '2024-08-18 07:21:36', NULL),
(714, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tukar_poins/edit-save/34', 'Memperbaharui data  pada Tukar Poin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>On Proses</td><td>Diterima</td></tr></tbody></table>', 9, '2024-08-18 07:22:11', NULL),
(715, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/rewards/edit-save/15', 'Memperbaharui data Vas Bunga pada Rewards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>stock</td><td>2</td><td>0</td></tr></tbody></table>', 9, '2024-08-18 07:24:26', NULL),
(716, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/education/add-save', 'Tambah data baru  pada Konten Edukasi', '', 9, '2024-08-18 07:28:49', NULL),
(717, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 9, '2024-08-18 07:37:51', NULL),
(718, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu6@gmail.com keluar', '', 9, '2024-08-18 07:40:14', NULL),
(719, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin_bankimam@gmail.com login dengan IP Address 127.0.0.1', '', 10, '2024-08-18 07:40:29', NULL),
(720, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin_bankimam@gmail.com keluar', '', 10, '2024-08-18 07:43:07', NULL),
(721, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu6@gmail.com login dengan IP Address 127.0.0.1', '', 9, '2024-08-18 07:43:17', NULL),
(722, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/transactions_bsi/add-save', 'Tambah data baru  pada Transaksi BSI', '', 9, '2024-08-18 07:43:41', NULL),
(723, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu6@gmail.com keluar', '', 9, '2024-08-18 07:43:53', NULL),
(724, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-18 07:43:59', NULL),
(725, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'bsu1@gmail.com keluar', '', 5, '2024-08-18 07:44:37', NULL),
(726, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login dengan IP Address 127.0.0.1', '', 1, '2024-08-18 07:44:52', NULL),
(727, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'bsu1@gmail.com login dengan IP Address 127.0.0.1', '', 5, '2024-08-18 09:17:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(23, 'Kategori Sampah', 'Route', 'AdminSampahCategoriesControllerGetIndex', 'normal', 'fa fa-list', 0, 1, 0, 1, 2, '2023-04-09 11:08:04', '2024-08-16 16:06:02'),
(24, 'Sampah', 'Route', 'AdminSampahControllerGetIndex', 'normal', 'fa fa-trash-o', 0, 1, 0, 1, 3, '2023-04-09 11:09:36', '2024-08-16 16:06:12'),
(26, 'Rewards', 'Route', 'AdminRewardsControllerGetIndex', 'normal', 'fa fa-gift', 0, 1, 0, 1, 4, '2023-04-09 11:21:27', '2024-08-16 16:06:40'),
(30, 'Nasabah', 'Route', 'AdminNasabahControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 10, '2023-04-15 23:51:02', '2024-08-17 14:59:01'),
(31, 'Transaksi Nasabah', 'Route', 'AdminTransactionsControllerGetIndex', 'normal', 'fa fa-exchange', 43, 1, 0, 1, 1, '2023-04-15 23:53:36', '2024-08-17 14:57:23'),
(32, 'Poin', 'Route', 'AdminPointsControllerGetIndex', 'normal', 'fa fa-money', 0, 1, 0, 1, 7, '2023-05-08 00:47:26', '2024-08-17 14:58:39'),
(33, 'Tukar Poin', 'Route', 'AdminTukarPoinsControllerGetIndex', 'normal', 'fa fa-trophy', 44, 1, 0, 1, 1, '2023-05-08 00:59:42', '2024-08-17 14:58:23'),
(35, 'Konten Edukasi', 'Route', 'AdminEducationControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 9, '2024-08-08 03:30:51', '2024-08-17 14:58:53'),
(36, 'Saldo', 'Route', 'AdminSaldoControllerGetIndex', 'normal', 'fa fa-money', 0, 1, 0, 1, 8, '2024-08-09 01:36:42', '2024-08-17 14:59:32'),
(37, 'Tukar Saldo', 'Route', 'AdminTukarSaldoControllerGetIndex', 'normal', 'fa fa-trophy', 44, 1, 0, 1, 2, '2024-08-09 07:22:06', '2024-08-17 14:58:29'),
(38, 'Dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'red', 'fa fa-search', 0, 1, 1, 1, 1, '2024-08-12 11:38:49', '2024-08-16 16:05:36'),
(40, 'Pengumuman', 'Route', 'AdminPengumumanControllerGetIndex', 'normal', 'fa fa-envelope-o', 0, 1, 0, 4, 11, '2024-08-14 07:19:20', '2024-08-17 14:59:13'),
(42, 'Transaksi BSI', 'Route', 'AdminTransactionsBsiControllerGetIndex', 'normal', 'fa fa-money', 43, 1, 0, 4, 2, '2024-08-14 11:02:18', '2024-08-17 14:57:35'),
(43, 'Transaksi', 'Module', 'transactions', 'normal', 'fa fa-arrow-right', 0, 1, 0, 4, 5, '2024-08-14 13:21:33', '2024-08-17 14:57:15'),
(44, 'Tukar Rewards', 'Module', 'tukar_poins', 'normal', 'fa fa-trophy', 0, 1, 0, 4, 6, '2024-08-14 13:23:15', '2024-08-17 14:58:15'),
(45, 'Dashboard  Admin', 'Statistic', 'statistic_builder/show/dashboard-super-admin', 'normal', 'fa fa-search', 0, 1, 1, 1, NULL, '2024-08-16 16:05:24', '2024-08-17 14:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 1),
(16, 9, 2),
(17, 12, 2),
(19, 10, 2),
(20, 11, 2),
(21, 13, 1),
(22, 14, 2),
(23, 15, 1),
(25, 16, 2),
(26, 17, 1),
(27, 18, 1),
(28, 19, 1),
(29, 20, 1),
(30, 21, 1),
(31, 22, 1),
(34, 25, 1),
(36, 27, 1),
(37, 28, 1),
(38, 29, 1),
(46, 34, 2),
(47, 34, 1),
(61, 39, 4),
(87, 41, 4),
(103, 38, 4),
(104, 23, 4),
(105, 24, 4),
(106, 26, 4),
(109, 43, 2),
(110, 43, 4),
(111, 43, 1),
(112, 31, 2),
(113, 31, 4),
(114, 31, 1),
(115, 42, 2),
(116, 42, 4),
(117, 42, 1),
(118, 45, 2),
(119, 45, 1),
(120, 44, 2),
(121, 44, 4),
(122, 44, 1),
(123, 33, 2),
(124, 33, 4),
(125, 33, 1),
(126, 37, 2),
(127, 37, 4),
(128, 37, 1),
(129, 32, 2),
(130, 32, 1),
(133, 35, 2),
(134, 35, 4),
(135, 35, 1),
(136, 30, 2),
(137, 30, 4),
(138, 30, 1),
(139, 40, 2),
(140, 40, 4),
(141, 40, 1),
(145, 36, 2),
(146, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2023-03-24 10:56:41', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2023-03-24 10:56:41', NULL, NULL),
(24, 'Kategori Sampah', 'fa fa-list', 'sampah_categories', 'sampah_categories', 'AdminSampahCategoriesController', 0, 0, '2023-04-09 11:08:04', NULL, NULL),
(25, 'Sampah', 'fa fa-trash-o', 'sampah', 'sampah', 'AdminSampahController', 0, 0, '2023-04-09 11:09:36', NULL, NULL),
(27, 'Rewards', 'fa fa-gift', 'rewards', 'rewards', 'AdminRewardsController', 0, 0, '2023-04-09 11:21:27', NULL, NULL),
(29, 'Nasabah', 'fa fa-users', 'nasabah', 'users', 'AdminNasabahController', 0, 0, '2023-04-15 23:51:02', NULL, NULL),
(30, 'Transaksi Nasabah', 'fa fa-database', 'transactions', 'transactions', 'AdminTransactionsController', 0, 0, '2023-04-15 23:53:36', NULL, NULL),
(31, 'Poin', 'fa fa-money', 'points', 'points', 'AdminPointsController', 0, 0, '2023-05-08 00:47:26', NULL, NULL),
(32, 'Tukar Poin', 'fa fa-trophy', 'tukar_poins', 'tukar_poins', 'AdminTukarPoinsController', 0, 0, '2023-05-08 00:59:42', NULL, NULL),
(33, 'Konten Edukasi', 'fa fa-file-o', 'education', 'education', 'AdminEducationController', 0, 0, '2024-08-08 03:30:51', NULL, NULL),
(34, 'Saldo', 'fa fa-money', 'saldo', 'saldo', 'AdminSaldoController', 0, 0, '2024-08-09 01:36:42', NULL, NULL),
(35, 'Tukar Saldo', 'fa fa-trademark', 'tukar_saldo', 'tukar_saldo', 'AdminTukarSaldoController', 0, 0, '2024-08-09 07:22:06', NULL, NULL),
(36, 'Pengumuman', 'fa fa-envelope-o', 'pengumuman', 'pengumuman', 'AdminPengumumanController', 0, 0, '2024-08-14 07:19:20', NULL, NULL),
(37, 'Laporan', 'fa fa-glass', 'transactions37', 'transactions', 'AdminTransactions37Controller', 0, 0, '2024-08-14 09:20:45', NULL, NULL),
(38, 'Transaksi BSI', 'fa fa-search', 'transactions_bsi', 'transactions_bsi', 'AdminTransactionsBsiController', 0, 0, '2024-08-14 11:02:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-green', '2023-03-24 10:56:41', NULL),
(2, 'Admin', 0, 'skin-red', NULL, NULL),
(3, 'Nasabah', 0, 'skin-green-light', NULL, NULL),
(4, 'BSU', 0, 'skin-green', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2023-03-24 10:56:41', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2023-03-24 10:56:41', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2023-03-24 10:56:41', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2023-03-24 10:56:41', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2023-03-24 10:56:41', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2023-03-24 10:56:41', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2023-03-24 10:56:41', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2023-03-24 10:56:41', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2023-03-24 10:56:41', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2023-03-24 10:56:41', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2023-03-24 10:56:41', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(28, 1, 0, 1, 0, 0, 3, 15, NULL, NULL),
(29, 1, 0, 1, 0, 0, 3, 14, NULL, NULL),
(30, 1, 0, 1, 0, 0, 3, 16, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(40, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(49, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(50, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(51, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(52, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(53, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(54, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(55, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(56, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(57, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(58, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(59, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(60, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(61, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(62, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(63, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(64, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(65, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(113, 1, 1, 1, 1, 1, 4, 24, NULL, NULL),
(114, 1, 1, 1, 1, 1, 4, 33, NULL, NULL),
(115, 1, 1, 1, 1, 1, 4, 37, NULL, NULL),
(116, 1, 1, 1, 1, 1, 4, 29, NULL, NULL),
(117, 1, 1, 1, 1, 1, 4, 36, NULL, NULL),
(118, 1, 1, 1, 1, 1, 4, 31, NULL, NULL),
(119, 1, 1, 1, 1, 1, 4, 27, NULL, NULL),
(120, 1, 1, 1, 1, 1, 4, 34, NULL, NULL),
(121, 1, 1, 1, 1, 1, 4, 25, NULL, NULL),
(122, 1, 1, 1, 1, 1, 4, 38, NULL, NULL),
(123, 1, 1, 1, 1, 1, 4, 30, NULL, NULL),
(124, 1, 1, 1, 1, 1, 4, 32, NULL, NULL),
(125, 1, 1, 1, 1, 1, 4, 35, NULL, NULL),
(126, 1, 1, 1, 1, 1, 4, 4, NULL, NULL),
(169, 1, 0, 1, 0, 0, 2, 24, NULL, NULL),
(170, 1, 1, 1, 1, 1, 2, 33, NULL, NULL),
(171, 1, 0, 1, 0, 0, 2, 37, NULL, NULL),
(172, 1, 0, 1, 0, 0, 2, 29, NULL, NULL),
(173, 1, 0, 1, 0, 0, 2, 36, NULL, NULL),
(174, 1, 0, 1, 0, 0, 2, 31, NULL, NULL),
(175, 1, 0, 1, 0, 0, 2, 27, NULL, NULL),
(176, 1, 0, 1, 0, 0, 2, 34, NULL, NULL),
(177, 1, 0, 1, 0, 0, 2, 25, NULL, NULL),
(178, 1, 0, 1, 0, 0, 2, 38, NULL, NULL),
(179, 1, 0, 1, 0, 0, 2, 30, NULL, NULL),
(180, 1, 0, 1, 0, 0, 2, 32, NULL, NULL),
(181, 1, 0, 1, 0, 0, 2, 35, NULL, NULL),
(182, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', '#4CAF50', 'text', NULL, 'Input hexacode', '2023-03-24 10:56:41', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2023-03-24 10:56:41', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2023-03-24 10:56:41', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2023-03-24 10:56:41', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Bank Imam', 'text', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2023-03-24 10:56:41', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2024-08/2cdfc1bbc27a75a995afda5bd4e6adb2.png', 'upload_image', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2024-08/780fc35f716310d56925b3a1de65e70b.png', 'upload_image', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2023-03-24 10:56:41', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2023-03-24 10:56:41', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', '2024-08-12 11:38:22', NULL),
(2, 'Dashboard super admin', 'dashboard-super-admin', '2024-08-16 16:04:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '9773d7c88d1d22b0056a3f093ffabf88', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Total Sampah Terkumpul (Kg)\",\"icon\":\"ion-arrow-swap\",\"color\":\"bg-green\",\"link\":\"\\/admin\\/transactions\",\"sql\":\"SELECT \\r\\n    COALESCE(SUM(total_weight), 0) AS total_weight_sum\\r\\nFROM \\r\\n    transactions\\r\\nWHERE \\r\\n    admin_id = \'[admin_id]\'\"}', '2024-08-12 11:39:32', NULL),
(2, 1, 'e4699bbb851132f48d2e14e0ddd7ddef', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Total Transaksi Nasabah\",\"icon\":\"ion-cash\",\"color\":\"bg-red\",\"link\":\"\\/admin\\/transactions\",\"sql\":\"SELECT  \\r\\n    COUNT(*) AS total_transaksi\\r\\nFROM \\r\\n    transactions\\r\\nWHERE \\r\\n    admin_id = \'[admin_id]\';\"}', '2024-08-12 11:51:55', NULL),
(3, 1, '163cca4009abf3c87ff3509e12dc896b', 'smallbox', 'area4', 1, NULL, '{\"name\":\"Total Nasabah\",\"icon\":\"ion-person-stalker\",\"color\":\"bg-aqua\",\"link\":\"\\/admin\\/nasabah\",\"sql\":\"SELECT COUNT(*) AS total_users\\r\\nFROM users\\r\\nWHERE cms_user_id = \'[admin_id]\';\"}', '2024-08-12 11:54:49', NULL),
(5, 1, 'f313a4c131a93b6d11272130cd8edd1d', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Total Jenis Sampah\",\"icon\":\"ion-trash-b\",\"color\":\"bg-yellow\",\"link\":\"\\/admin\\/sampah\",\"sql\":\"SELECT COUNT(*) AS total_jenis_sampah\\r\\nFROM sampah\\r\\nWHERE admin_id = \'[admin_id]\'\"}', '2024-08-13 09:50:33', NULL),
(16, 1, '136f46facce6b6aef91f04d32d998417', 'table', 'area5', 1, NULL, '{\"name\":\"Tabel Transaksi\",\"sql\":\"SELECT \\r\\n    @rownum := @rownum + 1 AS No,\\r\\n    COALESCE(users.username, \'Belum Ada Data\') AS Nama_User,\\r\\n    COALESCE(sampah.name, \'Belum Ada Data\') AS Jenis_Sampah,\\r\\n    COALESCE(sampah_categories.name, \'Belum Ada Data\') AS Kategori_Sampah,\\r\\n    COALESCE(transactions.total_weight, 0) AS Total_Berat_Kg,\\r\\n    COALESCE(transactions.created_at, \'Belum Ada Data\') AS Tanggal_Transaksi\\r\\nFROM \\r\\n    transactions\\r\\nLEFT JOIN \\r\\n    users ON transactions.user_id = users.id \\r\\nLEFT JOIN \\r\\n    sampah ON transactions.sampah_id = sampah.id  \\r\\nLEFT JOIN \\r\\n    sampah_categories ON sampah.category_id = sampah_categories.id  \\r\\nJOIN \\r\\n    (SELECT @rownum := 0) r\\r\\nWHERE \\r\\n    transactions.admin_id = \'[admin_id]\'\\r\\nORDER BY \\r\\n    transactions.created_at DESC;\"}', '2024-08-13 10:26:13', NULL),
(17, 1, 'af266b24bb35ee9ced293e3e454ee6f3', 'chartbar', 'area5', 1, NULL, '{\"name\":\"Jenis Sampah Paling Banyak Ditabung\",\"sql\":\"SELECT COALESCE(s.name, \'Belum Ada Data\') as label, \\r\\n       COALESCE(SUM(t.total_weight), 0) as value \\r\\nFROM sampah s\\r\\nLEFT JOIN transactions t ON t.sampah_id = s.id AND t.admin_id = [admin_id]\\r\\nGROUP BY s.name \\r\\nORDER BY value DESC;\",\"area_name\":\"total\",\"goals\":null}', '2024-08-14 08:57:37', NULL),
(18, 2, 'a35a0706529984d9255c3db8c03dd95a', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Total Sampah Terkumpul (Kg)\",\"icon\":\"ion-trash-b\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT SUM(total_weight) AS total_kg_sampah\\r\\nFROM transactions;\"}', '2024-08-16 16:07:04', NULL),
(19, 2, 'd49414102d2c06cf7ac0c4c98214f6dc', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Total Transaksi Nasabah\",\"icon\":\"ion-cash\",\"color\":\"bg-red\",\"link\":\"\\/admin\\/transactions\",\"sql\":\"SELECT COUNT(*) AS total_transaksi\\r\\nFROM transactions;\"}', '2024-08-16 16:07:05', NULL),
(20, 2, '680102a2b198d06f87a66e6e2ba8f8dd', 'smallbox', NULL, 0, 'Untitled', NULL, '2024-08-16 16:07:06', NULL),
(21, 2, '9d03928b395e99b38c4f2b45d6d7162d', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Total Nasabah\",\"icon\":\"ion-person-stalker\",\"color\":\"bg-aqua\",\"link\":\"\\/admin\\/nasabah\",\"sql\":\"SELECT COUNT(*) AS total_nasabah\\r\\nFROM users;\"}', '2024-08-16 16:07:11', NULL),
(22, 2, '6e26582f3dee136d868bed9f0eb8d7b5', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Total Transaksi BSI\",\"icon\":\"ion-cash\",\"color\":\"bg-yellow\",\"link\":\"\\/admin\\/transactions_bsi\",\"sql\":\"SELECT COUNT(*) AS total_transaksi_bsi\\r\\nFROM transactions_bsi;\"}', '2024-08-16 16:07:12', NULL),
(23, 2, '4c3ffb9dab909a9f8da053a801d47b5c', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Total Tukar Poins\",\"icon\":\"ion-pricetags\",\"color\":\"bg-aqua\",\"link\":\"\\/admin\\/tukar_poins\",\"sql\":\"SELECT COUNT(*) AS total_tukar_poins\\r\\nFROM tukar_poins\"}', '2024-08-16 16:15:02', NULL),
(24, 2, 'a0ad6a192850a25cf203241593ce6de5', 'smallbox', 'area2', 1, NULL, '{\"name\":\"Total Tukar Saldo\",\"icon\":\"ion-cash\",\"color\":\"bg-yellow\",\"link\":\"\\/admin\\/tukar_saldo\",\"sql\":\"SELECT COUNT(*) AS total_tukar_saldo\\r\\nFROM tukar_saldo\"}', '2024-08-16 16:15:06', NULL),
(25, 2, '6abff0035339365767ffc89b73eb9b30', 'chartbar', 'area5', 0, NULL, '{\"name\":\"Jenis Sampah Paling Banyak Ditabung\",\"sql\":\"SELECT COALESCE(s.name, \'Belum Ada Data\') as label, \\r\\n       COALESCE(SUM(t.total_weight), 0) as value \\r\\nFROM sampah s\\r\\nLEFT JOIN transactions t ON t.sampah_id = s.id\\r\\nGROUP BY s.name \\r\\nORDER BY value DESC;\",\"area_name\":\"Total\",\"goals\":null}', '2024-08-16 16:22:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_whatsapp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `no_whatsapp`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2024-08/image_17.png', 'admin@crudbooster.com', '$2y$10$sWLmqEjUz7BcmH3tUPd/F.vpAnIWSkK5dMoHkfgbQDI8g5tDG60/m', NULL, 1, '2023-03-24 10:56:41', '2024-08-14 10:22:57', 'Active'),
(5, 'BSU-1', 'uploads/1/2024-08/profile3.png', 'bsu1@gmail.com', '$2y$10$.ZCXqpHVan85cC88nGtKneJWkZ4QxITl.L304PNjgRf5u1MMIHDau', '087829292952', 4, '2024-08-13 14:15:19', '2024-08-16 10:13:48', 'Active'),
(6, 'BSU-2', 'uploads/1/2024-08/profile3.png', 'bsu2@gmail.com', '$2y$10$CC5BwLv2I2dOEFG.c9UvUuo2gb9vRGnjCGItEhVsiAy6kUvkNf0Ti', NULL, 4, '2024-08-13 14:16:05', NULL, NULL),
(7, 'BSU-3', 'uploads/1/2024-08/profile3.png', 'bsu3@gmail.com', '$2y$10$Ap4EgN5WGzMKf8DQGHBi3O7TyNvG29NdkzlAOV00pFinP3mQGa/ua', NULL, 4, '2024-08-13 14:16:44', NULL, NULL),
(8, 'BSU-4', 'uploads/1/2024-08/profile3.png', 'bsu4@gmail.com', '$2y$10$3t9GkneRqVZHg04m3883hOjAI2YJc8wIofWTR1G7vZVlEASDnnDji', NULL, 4, '2024-08-13 14:17:24', '2024-08-16 10:13:35', 'Active'),
(9, 'BSU RW 6', 'uploads/1/2024-08/profile3.png', 'bsu6@gmail.com', '$2y$10$vZ.eT/TDNsg5M7QK3Ju39uaLuP41zngwxWEN0dKbiNiYq3deTcb1y', '087829292952', 4, '2024-08-17 12:36:09', NULL, 'Active'),
(10, 'admin', 'uploads/1/2024-08/profile3.png', 'admin_bankimam@gmail.com', '$2y$10$sRUzdv9onSvmBqPQSSMIXuCd5S48RtT.5a5kfEWODuiHI6agF2wSG', '0', 2, '2024-08-17 13:21:14', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `url` text NOT NULL,
  `gambar` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `judul`, `url`, `gambar`, `updated_at`, `created_at`) VALUES
(1, 'Jangan Buang Sampah ke Kereta, Bisa Masuk Penjara!', 'https://finance.detik.com/berita-ekonomi-bisnis/d-7475229/jangan-buang-sampah-ke-kereta-bisa-masuk-penjara', 'uploads/1/2024-08/berita1.jpeg', '2024-08-08 10:40:00', '2024-08-08 03:40:00'),
(2, 'Viral Warga Buang Sampah ke Kereta Barang, KAI: Terancam Denda Rp 15 Juta!', 'https://finance.detik.com/berita-ekonomi-bisnis/d-7468198/viral-warga-buang-sampah-ke-kereta-barang-kai-terancam-denda-rp-15-juta', 'uploads/1/2024-08/berita2.jpeg', '2024-08-10 22:23:27', '2024-08-08 07:13:23'),
(3, 'Kala Petugas Kebersihan Sulap Sampah Plastik Jadi Barang Bernilai Jual', 'https://megapolitan.kompas.com/read/2024/08/09/05100061/kala-petugas-kebersihan-sulap-sampah-plastik-jadi-barang-bernilai-jual', 'uploads/1/2024-08/berita3.jpg', '2024-08-09 06:18:23', '2024-08-08 23:18:23'),
(6, 'Cek Kesehatan di Klinik Ini Bisa Bayar Pakai Sampah', 'https://health.detik.com/fotohealth/d-7479009/cek-kesehatan-di-klinik-ini-bisa-bayar-pakai-sampah/2', 'https://akcdn.detik.net.id/community/media/visual/2024/08/08/klinik-kesehatan-berbayar-sampah-1_169.jpeg?w=700&q=90', '2024-08-13 08:25:39', '2024-08-13 08:24:55'),
(9, 'Jangan Mengulang Bantargebang Jakarta, Bagaimana IKN Olah Sampah?', 'https://www.detik.com/properti/berita/d-7491050/jangan-mengulang-bantargebang-jakarta-bagaimana-ikn-olah-sampah', 'https://akcdn.detik.net.id/community/media/visual/2021/10/05/ilustrasi-sampah-plastik_43.jpeg?w=700&q=90', '2024-08-18 07:28:49', '2024-08-18 07:28:49');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2023_03_24_173258_create_sampah_table', 1),
(30, '2023_03_24_173719_create_rewards_table', 1),
(31, '2023_03_24_174521_create_points_table', 1),
(32, '2023_03_24_173260_create_sampah_table', 2),
(33, '2023_03_24_173720_create_rewards_table', 2),
(34, '2023_03_24_174590_create_points_table', 2),
(35, '2023_03_24_175000_create_points_table', 3),
(36, '2023_03_24_176000_create_rewards_table', 4),
(37, '2023_03_25_100252_create_tukar_poin_table', 5),
(38, '2023_04_09_171532_create_sampah_categories_table', 6),
(39, '2023_04_09_000000_create_users_table', 7),
(40, '2023_04_09_161532_create_sampah_categories_table', 8),
(41, '2023_04_09_000001_create_users_table', 9),
(42, '2023_04_09_161535_create_sampah_categories_table', 9),
(43, '2023_04_09_173265_create_sampah_table', 9),
(44, '2023_04_09_175000_create_points_table', 10),
(45, '2023_04_09_176000_create_rewards_table', 10),
(46, '2023_04_09_182046_create_transactions_table', 11),
(47, '2023_04_09_200000_create_tukar_poin_table', 11),
(48, '2023_04_09_000002_create_users_table', 12),
(49, '2023_04_09_161539_create_sampah_categories_table', 12),
(50, '2023_04_09_173269_create_sampah_table', 12),
(51, '2023_04_09_175001_create_points_table', 12),
(52, '2023_04_09_176001_create_rewards_table', 12),
(53, '2023_04_09_182049_create_transactions_table', 12),
(54, '2023_04_09_200001_create_tukar_poin_table', 12),
(55, '2023_04_09_200002_create_tukar_poins_table', 13),
(56, '2023_04_09_000003_create_users_table', 14),
(57, '2023_04_09_176005_create_rewards_table', 14),
(58, '2023_04_09_161540_create_sampah_categories_table', 15),
(59, '2023_04_09_173270_create_sampah_table', 15),
(60, '2023_04_09_175003_create_points_table', 15),
(61, '2023_04_09_176007_create_rewards_table', 15),
(62, '2023_04_09_182050_create_transactions_table', 15),
(63, '2023_04_09_200016_create_tukar_poins_table', 16),
(64, '2023_04_09_000004_create_users_table', 17),
(65, '2023_04_09_161544_create_sampah_categories_table', 17),
(66, '2023_04_09_173275_create_sampah_table', 17),
(67, '2023_04_09_175005_create_points_table', 17),
(68, '2023_04_09_176010_create_rewards_table', 17),
(69, '2023_04_09_182055_create_transactions_table', 17),
(70, '2023_04_09_200020_create_tukar_poins_table', 17),
(71, '2023_04_09_200025_create_tukar_poins_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `admin_id`, `nama`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Pengumpulan sampah', 'Penukaran sampah akan dilaksanakan pada tanggal 17 Agustus 2024 s/d 24 Agustus 2024 di BSU terdekat!', 'Pending', '2024-08-14 07:38:06', '2024-08-14 07:38:06'),
(3, 6, 'Pengumpulan sampah', 'Penukaran sampah akan dilaksanakan pada tanggal 17 Agustus 2024 s/d 24 Agustus 2024 di BSU pilihan anda!', 'Pending', '2024-08-14 07:40:11', '2024-08-14 08:49:52'),
(4, 5, 'Pengumpulan Sampah', 'Pengumpulan sampah akan dilaksanakan pada tanggal 17 Agustus 2024 s/d 24 Agustus 2024', 'Pending', '2024-08-14 10:19:16', '2024-08-15 11:50:30'),
(5, 5, 'Tukar sampah', 'Penukaran sampah akan dilaksanan pada 17 agustus 2024 s/d 24 agustus 2024 jam 08:00 - 12:00', 'On Proses', '2024-08-17 12:30:46', '2024-08-17 12:31:16'),
(6, 9, 'Penukaran Sampah periode 1', 'Penukaran sampah akan dilaksanakan pada tanggal 18 Agustus s/d 24 Agustus 2024 pada pukul 08:00 - 14:00', 'On Proses', '2024-08-18 07:16:27', '2024-08-18 07:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `total_points`, `created_at`, `updated_at`) VALUES
(5, 20, 4380, '2024-08-06 01:41:42', '2024-08-17 12:28:06'),
(6, 21, 4340, '2024-08-07 05:33:15', '2024-08-16 09:00:27'),
(10, 32, 2470, '2024-08-13 17:11:12', '2024-08-16 16:31:11'),
(11, 33, 0, '2024-08-16 15:42:03', '2024-08-16 15:42:03'),
(12, 34, 0, '2024-08-17 12:07:28', '2024-08-17 12:07:28'),
(13, 35, 110, '2024-08-18 06:54:28', '2024-08-18 07:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `admin_id`, `name`, `category`, `description`, `price`, `image`, `stock`, `created_at`, `updated_at`) VALUES
(10, 6, 'vas bunga', 'barang', 'hiasan', 100, 'uploads/6/2024-08/pot_gemoy.png', 4, '2024-08-15 10:29:30', '2024-08-16 08:16:15'),
(11, 5, 'Vas Bunga', 'barang', 'Hiasan vas bunga berwarna kuning', 200, 'uploads/5/2024-08/pot_gemoy.png', 5, '2024-08-15 10:57:05', '2024-08-15 15:30:14'),
(12, 5, 'Uang Cash', 'uang', 'penukaran saldo menjadi uang cash', 0, 'uploads/5/2024-08/uang.jpeg', 48, '2024-08-15 11:47:38', '2024-08-15 11:54:11'),
(13, 6, 'Uang Cash', 'uang', 'penukaran saldo menjadi uang cash', 0, 'uploads/6/2024-08/uang.jpeg', 49, '2024-08-16 15:55:26', '2024-08-16 15:55:47'),
(14, 9, 'Uang Cash', 'uang', 'penukaran saldo menjadi uang cash', 0, 'uploads/9/2024-08/uang.jpeg', 50, '2024-08-18 07:17:59', NULL),
(15, 9, 'Vas Bunga', 'barang', 'Hiasan vas bunga berwarna kuning', 10, 'uploads/9/2024-08/pot_gemoy.png', 0, '2024-08-18 07:20:08', '2024-08-18 07:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_saldo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id`, `user_id`, `total_saldo`, `created_at`, `updated_at`) VALUES
(1, 20, 21490, '2024-08-09 02:27:46', '2024-08-17 12:28:06'),
(2, 21, 3970, '2024-08-09 22:40:59', '2024-08-16 15:55:47'),
(4, 32, 22025, '2024-08-15 06:54:03', '2024-08-16 16:31:11'),
(5, 35, 525, '2024-08-18 07:13:34', '2024-08-18 07:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `total_weight` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `foto` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `items`, `total_weight`, `total_price`, `foto`, `updated_at`, `created_at`) VALUES
(11, '[{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\"},{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\"}]', 2, 1600.00, '', '2024-08-06 07:08:33', '2024-08-06 07:08:33'),
(12, '[{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\"},{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\"}]', 2, 1600.00, NULL, '2024-08-06 07:28:31', '2024-08-06 07:28:31'),
(13, '[]', 0, 0.00, NULL, '2024-08-06 07:45:09', '2024-08-06 07:45:09'),
(14, '[{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\"},{\"id\":\"12\",\"name\":\"Tutup Galon\",\"price\":1500,\"image\":\"uploads\\/1\\/2024-08\\/tutupgalon.jpeg\"},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\"},{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\"}]', 4, 3800.00, NULL, '2024-08-07 00:14:23', '2024-08-07 00:14:23'),
(15, '[{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"quantity\":1}]', 1, 750.00, NULL, '2024-08-07 05:49:57', '2024-08-07 05:49:57'),
(16, '[{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\",\"weight\":2},{\"id\":\"12\",\"name\":\"Tutup Galon\",\"price\":1500,\"image\":\"uploads\\/1\\/2024-08\\/tutupgalon.jpeg\",\"weight\":1},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1}]', 4, 3850.00, NULL, '2024-08-07 05:58:38', '2024-08-07 05:58:38'),
(17, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":2},{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\",\"weight\":2},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1}]', 5, 4000.00, NULL, '2024-08-07 05:59:17', '2024-08-07 05:59:17'),
(18, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":2}]', 2, 1650.00, NULL, '2024-08-07 05:59:36', '2024-08-07 05:59:36'),
(19, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":2}]', 2, 1650.00, NULL, '2024-08-07 06:00:07', '2024-08-07 06:00:07'),
(20, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":2},{\"id\":\"13\",\"name\":\"TV Bekas\",\"price\":5000,\"image\":\"uploads\\/1\\/2024-08\\/tv.jpeg\",\"weight\":1},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1},{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\",\"weight\":2}]', 6, 9000.00, NULL, '2024-08-07 06:20:46', '2024-08-07 06:20:46'),
(21, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":2}]', 2, 1650.00, NULL, '2024-08-07 06:22:44', '2024-08-07 06:22:44'),
(22, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":1},{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\",\"weight\":1}]', 2, 1625.00, NULL, '2024-08-07 06:41:32', '2024-08-07 06:41:32'),
(23, '[{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1},{\"id\":\"12\",\"name\":\"Tutup Galon\",\"price\":1500,\"image\":\"uploads\\/1\\/2024-08\\/tutupgalon.jpeg\",\"weight\":1}]', 2, 2250.00, NULL, '2024-08-07 06:42:14', '2024-08-07 06:42:14'),
(24, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":1},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1}]', 2, 1575.00, NULL, '2024-08-07 07:15:37', '2024-08-07 07:15:37'),
(25, '[{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":2},{\"id\":\"12\",\"name\":\"Tutup Galon\",\"price\":1500,\"image\":\"uploads\\/1\\/2024-08\\/tutupgalon.jpeg\",\"weight\":2}]', 4, 4500.00, NULL, '2024-08-07 07:32:40', '2024-08-07 07:32:40'),
(26, '[{\"id\":\"13\",\"name\":\"TV Bekas\",\"price\":5000,\"image\":\"uploads\\/1\\/2024-08\\/tv.jpeg\",\"weight\":1},{\"id\":\"15\",\"name\":\"Radio Bekas\",\"price\":3500,\"image\":\"uploads\\/1\\/2024-08\\/radio.jpeg\",\"weight\":1}]', 2, 8500.00, NULL, '2024-08-07 07:39:50', '2024-08-07 07:39:50'),
(27, '[{\"id\":\"13\",\"name\":\"TV Bekas\",\"price\":5000,\"image\":\"uploads\\/1\\/2024-08\\/tv.jpeg\",\"weight\":1},{\"id\":\"15\",\"name\":\"Radio Bekas\",\"price\":3500,\"image\":\"uploads\\/1\\/2024-08\\/radio.jpeg\",\"weight\":1}]', 2, 8500.00, NULL, '2024-08-07 07:41:27', '2024-08-07 07:41:27'),
(28, '[{\"id\":\"13\",\"name\":\"TV Bekas\",\"price\":5000,\"image\":\"uploads\\/1\\/2024-08\\/tv.jpeg\",\"weight\":2}]', 2, 10000.00, NULL, '2024-08-07 21:25:39', '2024-08-07 21:25:39'),
(29, '[{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":2}]', 2, 1650.00, NULL, '2024-08-07 21:26:57', '2024-08-07 21:26:57'),
(30, '[{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1},{\"id\":\"10\",\"name\":\"Kardus\",\"price\":825,\"image\":\"uploads\\/1\\/2024-08\\/kardus.jpeg\",\"weight\":1}]', 2, 1575.00, NULL, '2024-08-07 21:34:11', '2024-08-07 21:34:11'),
(31, '[{\"id\":\"13\",\"name\":\"TV Bekas\",\"price\":5000,\"image\":\"uploads\\/1\\/2024-08\\/tv.jpeg\",\"weight\":1},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1}]', 2, 5750.00, NULL, '2024-08-07 21:35:31', '2024-08-07 21:35:31'),
(32, '[{\"id\":\"12\",\"name\":\"Tutup Galon\",\"price\":1500,\"image\":\"uploads\\/1\\/2024-08\\/tutupgalon.jpeg\",\"weight\":1},{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\",\"weight\":1}]', 2, 2300.00, NULL, '2024-08-07 21:36:04', '2024-08-07 21:36:04'),
(33, '[{\"id\":\"13\",\"name\":\"TV Bekas\",\"price\":5000,\"image\":\"uploads\\/1\\/2024-08\\/tv.jpeg\",\"weight\":1},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1}]', 2, 5750.00, NULL, '2024-08-07 21:36:26', '2024-08-07 21:36:26'),
(34, '[{\"id\":\"11\",\"name\":\"Koran Bekas\",\"price\":800,\"image\":\"uploads\\/1\\/2024-08\\/koran.jpeg\",\"weight\":2}]', 2, 1600.00, NULL, '2024-08-07 22:09:16', '2024-08-07 22:09:16'),
(35, '[{\"id\":\"13\",\"name\":\"TV Bekas\",\"price\":5000,\"image\":\"uploads\\/1\\/2024-08\\/tv.jpeg\",\"weight\":1},{\"id\":\"9\",\"name\":\"Botol Bekas\",\"price\":750,\"image\":\"uploads\\/1\\/2024-08\\/download.jpeg\",\"weight\":1}]', 2, 5750.00, NULL, '2024-08-07 23:22:39', '2024-08-07 23:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `sampah`
--

CREATE TABLE `sampah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_kg` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sampah`
--

INSERT INTO `sampah` (`id`, `category_id`, `admin_id`, `name`, `image`, `price_per_kg`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Botol Plastik', 'uploads/1/2024-08/download.jpeg', 750, '2024-08-10 07:05:28', NULL),
(2, 1, 1, 'Tutup Galon', 'uploads/1/2024-08/tutupgalon.jpeg', 500, '2024-08-10 07:05:47', NULL),
(3, 2, 1, 'Kardus', 'uploads/1/2024-08/kardus.jpeg', 800, '2024-08-10 07:06:08', NULL),
(4, 2, 1, 'Koran Bekas', 'uploads/1/2024-08/koran.jpeg', 750, '2024-08-10 07:06:25', NULL),
(6, 6, 5, 'Botol Plastik', 'uploads/5/2024-08/download.jpeg', 500, '2024-08-16 08:51:17', NULL),
(7, 6, 5, 'Tutup Galon', 'uploads/5/2024-08/tutupgalon.jpeg', 300, '2024-08-16 08:51:40', NULL),
(8, 7, 5, 'Koran Bekas', 'uploads/5/2024-08/koran.jpeg', 600, '2024-08-16 08:51:59', NULL),
(9, 7, 5, 'Kardus', 'uploads/5/2024-08/kardus.jpeg', 800, '2024-08-16 08:52:20', NULL),
(10, 8, 6, 'Botol Plastik', 'uploads/6/2024-08/download.jpeg', 400, '2024-08-16 08:57:39', NULL),
(11, 8, 6, 'Tutup Galon', 'uploads/6/2024-08/tutupgalon.jpeg', 250, '2024-08-16 08:58:03', NULL),
(13, 9, 6, 'Kardus Bekas', 'uploads/6/2024-08/kardus.jpeg', 600, '2024-08-16 09:00:06', NULL),
(14, 10, 9, 'Botol Plastik', 'uploads/9/2024-08/download.jpeg', 700, '2024-08-18 07:10:35', NULL),
(15, 11, 9, 'Koran Bekas', 'uploads/9/2024-08/koran.jpeg', 250, '2024-08-18 07:11:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sampah_categories`
--

CREATE TABLE `sampah_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sampah_categories`
--

INSERT INTO `sampah_categories` (`id`, `admin_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Plastik', 'sampah plastik', '2024-08-10 07:04:37', '2024-08-10 14:04:37'),
(2, 1, 'Kertas', 'Sampah kertas', '2024-08-10 07:04:48', '2024-08-10 14:04:48'),
(3, 1, 'Elektronik', 'Sampah barang elektronik', '2024-08-15 09:11:40', '2024-08-15 09:11:40'),
(6, 5, 'Plastik', 'sampah plastik', '2024-08-16 08:48:57', '2024-08-16 08:48:57'),
(7, 5, 'Kertas', 'Sampah kertas', '2024-08-16 08:49:09', '2024-08-16 08:49:09'),
(8, 6, 'Plastik', 'sampah plastik', '2024-08-16 08:57:09', '2024-08-16 08:57:09'),
(9, 6, 'Kertas', 'Sampah kertas', '2024-08-16 08:57:20', '2024-08-16 08:57:20'),
(10, 9, 'Plastik', 'sampah plastik', '2024-08-18 07:09:43', '2024-08-18 07:09:43'),
(11, 9, 'Kertas', 'sampah kertas', '2024-08-18 07:10:03', '2024-08-18 07:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `sampah_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_weight` double(8,2) NOT NULL,
  `total_income` int(11) NOT NULL,
  `point_received` int(11) NOT NULL,
  `photo_evidence` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `admin_id`, `sampah_id`, `total_weight`, `total_income`, `point_received`, `photo_evidence`, `periode`, `created_at`, `updated_at`) VALUES
(18, 20, 5, 1, 4.50, 3375, 450, 'uploads/5/2024-08/download.jpeg', '1', '2024-08-16 07:09:00', NULL),
(20, 20, 5, 9, 10.00, 8000, 1000, 'uploads/5/2024-08/kardus.jpeg', '1', '2024-08-16 08:55:33', NULL),
(21, 21, 6, 11, 5.00, 1250, 500, 'uploads/6/2024-08/tutupgalon.jpeg', '1', '2024-08-16 08:58:36', NULL),
(22, 21, 6, 13, 10.00, 6000, 1000, 'uploads/6/2024-08/kardus.jpeg', '1', '2024-08-16 09:00:27', NULL),
(23, 20, 5, 8, 4.00, 2400, 400, 'uploads/5/2024-08/koran.jpeg', '2', '2024-08-16 16:30:50', NULL),
(24, 32, 5, 6, 10.00, 5000, 1000, 'uploads/5/2024-08/download.jpeg', '2', '2024-08-16 16:31:11', NULL),
(25, 20, 5, 6, 1.00, 500, 100, 'uploads/5/2024-08/download.jpeg', '2', '2024-08-16 16:31:50', NULL),
(26, 20, 5, 9, 3.30, 2640, 330, 'uploads/5/2024-08/kardus.jpeg', '1', '2024-08-17 12:28:06', NULL),
(27, 35, 9, 14, 0.50, 350, 50, 'uploads/9/2024-08/download.jpeg', '1', '2024-08-18 07:13:34', NULL),
(28, 35, 9, 15, 0.70, 175, 70, 'uploads/9/2024-08/koran.jpeg', '1', '2024-08-18 07:14:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions_bsi`
--

CREATE TABLE `transactions_bsi` (
  `id` int(11) NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `total_weight` float NOT NULL,
  `total_price` double NOT NULL,
  `profit` double DEFAULT NULL,
  `periode` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions_bsi`
--

INSERT INTO `transactions_bsi` (`id`, `admin_id`, `total_weight`, `total_price`, `profit`, `periode`, `created_at`, `updated_at`) VALUES
(10, 5, 10, 10000, 2100, '2', '2024-08-15 08:11:11', '2024-08-17 07:20:48'),
(12, 5, 30.3, 100000, 88625, '1', '2024-08-16 09:02:33', '2024-08-16 09:02:33'),
(13, 6, 10, 20500, 13250, '1', '2024-08-16 15:54:08', '2024-08-16 15:54:08'),
(14, 5, 50, 100000, 88625, '1', '2024-08-17 12:22:24', '2024-08-17 12:22:24'),
(16, 9, 1.2, 5000, 4475, '1', '2024-08-18 07:43:41', '2024-08-18 07:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `tukar_poins`
--

CREATE TABLE `tukar_poins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `reward_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tukar_poins`
--

INSERT INTO `tukar_poins` (`id`, `user_id`, `admin_id`, `reward_id`, `quantity`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(28, 21, 6, 10, 1, 100, 'Diterima', '2024-08-15 11:42:22', '2024-08-15 11:45:05'),
(29, 20, 5, 11, 1, 200, 'Diterima', '2024-08-15 11:42:52', '2024-08-15 11:44:08'),
(30, 32, 5, 11, 1, 200, 'Diterima', '2024-08-15 12:36:31', '2024-08-15 12:39:19'),
(31, 32, 5, 11, 1, 200, 'Diterima', '2024-08-15 12:37:10', '2024-08-15 12:39:44'),
(32, 32, 5, 11, 1, 200, 'Diterima', '2024-08-15 12:41:48', '2024-08-15 12:49:49'),
(33, 32, NULL, 11, 1, 200, 'Pending', '2024-08-15 12:50:01', '2024-08-15 12:50:01'),
(34, 35, 9, 15, 1, 10, 'Diterima', '2024-08-18 07:20:48', '2024-08-18 07:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `tukar_saldo`
--

CREATE TABLE `tukar_saldo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `reward_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tukar_saldo`
--

INSERT INTO `tukar_saldo` (`id`, `user_id`, `admin_id`, `reward_id`, `quantity`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(9, 20, 5, 12, 1, 5000, 'Diterima', '2024-08-15 11:48:11', '2024-08-15 12:40:57'),
(10, 20, 5, 12, 1, 5000, 'Diterima', '2024-08-15 11:54:11', '2024-08-15 12:39:59'),
(11, 21, 6, 13, 1, 25000, 'Diterima', '2024-08-16 15:55:47', '2024-08-16 15:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `cms_user_id`, `address`, `phone_number`, `picture`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(20, 'arenga', 'arengapinnatamarzuki@gmail.com', '$2y$10$XQ1xaJR9SfN7h87jWrg76ex9Vp4qA.fSvlZAIHvoCpce1hwW5gFIy', 5, 'Jakarta', '087721287589', '/uploads/profile/1723476999_waste-art-1.jpg', NULL, NULL, '2024-08-06 01:41:42', '2024-08-12 08:36:39'),
(21, 'rizki', 'rizki@gmail.com', '$2y$10$wx5Prv7ldWVL2m4ozjuVV.97CSwxEDjvb6fjTYeiYxmjyib/WkTtW', 6, 'Rempoa', '0877721892', '/uploads/profile/1723967558_waste-art-1.jpg', NULL, NULL, '2024-08-07 05:33:15', '2024-08-18 07:53:57'),
(32, 'brina', 'brina@gmail.com', '$2y$10$ASMZETVdnw/QLYv7XPftEeLoRAMD4P6RG9pWBvA3sk47hErL7lho.', 5, NULL, NULL, NULL, NULL, NULL, '2024-08-13 17:11:12', '2024-08-13 17:11:12'),
(33, 'Ugniati Nuraftina', 'tina@gmail.com', '$2y$10$bEx9kfLuj7hPIzxYDDB1l.64mZE78CoY1F78hEQwKRHALVTMJWPVW', 7, NULL, NULL, NULL, NULL, NULL, '2024-08-16 15:42:03', '2024-08-16 15:42:03'),
(34, 'helga', 'helga@gmail.com', '$2y$10$IcGMj//OSY.NC9T9daUed.d2aN6SkA4avMllrMKxlnBWcpXYhVADC', 5, NULL, NULL, NULL, NULL, NULL, '2024-08-17 12:07:28', '2024-08-17 12:07:28'),
(35, 'yogi syaputra', 'yogi@gmail.com', '$2y$10$nd11oHE7c.bPr/zxJAoic.DU6Ix6wMDH1fsevYdhzBgLAhz06KjK2', 9, NULL, NULL, NULL, NULL, NULL, '2024-08-18 06:54:28', '2024-08-18 06:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
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
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`) USING BTREE;

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `points_user_id_index` (`user_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampah`
--
ALTER TABLE `sampah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `sampah_category_id_foreign` (`category_id`);

--
-- Indexes for table `sampah_categories`
--
ALTER TABLE `sampah_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_index` (`user_id`),
  ADD KEY `transactions_admin_id_index` (`admin_id`),
  ADD KEY `transactions_sampah_id_index` (`sampah_id`);

--
-- Indexes for table `transactions_bsi`
--
ALTER TABLE `transactions_bsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`) USING BTREE;

--
-- Indexes for table `tukar_poins`
--
ALTER TABLE `tukar_poins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tukar_poins_user_id_index` (`user_id`),
  ADD KEY `tukar_poins_admin_id_index` (`admin_id`),
  ADD KEY `tukar_poins_reward_id_index` (`reward_id`);

--
-- Indexes for table `tukar_saldo`
--
ALTER TABLE `tukar_saldo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tukar_saldo_admin_id_foreign` (`admin_id`),
  ADD KEY `tukar_saldo_reward_id_foreign` (`reward_id`),
  ADD KEY `id_user` (`user_id`,`admin_id`,`reward_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `cms_user_id` (`cms_user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sampah`
--
ALTER TABLE `sampah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sampah_categories`
--
ALTER TABLE `sampah_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `transactions_bsi`
--
ALTER TABLE `transactions_bsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tukar_poins`
--
ALTER TABLE `tukar_poins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tukar_saldo`
--
ALTER TABLE `tukar_saldo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `admin_id_foreign_relation` FOREIGN KEY (`admin_id`) REFERENCES `cms_users` (`id`);

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `reward_admin_id_foreign_relation` FOREIGN KEY (`admin_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saldo`
--
ALTER TABLE `saldo`
  ADD CONSTRAINT `saldo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sampah`
--
ALTER TABLE `sampah`
  ADD CONSTRAINT `admin_id_foreign_sampah` FOREIGN KEY (`admin_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sampah_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `sampah_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sampah_categories`
--
ALTER TABLE `sampah_categories`
  ADD CONSTRAINT `admin_id_foreign_category` FOREIGN KEY (`admin_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_sampah_id_foreign` FOREIGN KEY (`sampah_id`) REFERENCES `sampah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions_bsi`
--
ALTER TABLE `transactions_bsi`
  ADD CONSTRAINT `admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `cms_user_id_foreign` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
