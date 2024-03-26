-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 07:07 PM
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
-- Database: `jobapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualifications` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `first_name`, `last_name`, `phone_no`, `qualifications`, `total_experience`, `gender`, `dob`, `email`, `role`, `skills`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'aruna kumari', 'gadi', '08309133141', 'B.Tech', '1', 'male', '1999-01-01', 'aaa@gmail.com', 2, '[\"1\",\"2\"]', NULL, '2024-03-15 04:27:35', '2024-03-15 04:27:35'),
(2, 'arun', 'gadi', '08309133146', 'M.Tech', '3', 'male', '1999-01-01', 'arun@gmail.com', 1, '[\"3\"]', NULL, '2024-03-15 04:36:06', '2024-03-15 04:36:06'),
(3, 'aruna kumari', 'gadi', '8309133151', 'M.Tech', '4', 'male', '2000-10-10', 'annna@gmail.com', 1, '[\"3\"]', NULL, '2024-03-15 05:52:06', '2024-03-15 05:52:06'),
(5, 'aruna kumari', 'gadi', '8309133156', 'BSc', '4', 'female', '2000-10-10', 'amma@gmail.com', 1, '[\"3\"]', NULL, '2024-03-15 05:54:13', '2024-03-15 05:54:13'),
(6, 'aruna kumari', 'gadi', '8309135674', 'B.Tech', '5', 'female', '2000-10-10', 'arunagadi@gmail.com', 1, '[\"3\"]', NULL, '2024-03-15 07:10:37', '2024-03-15 07:10:37'),
(7, 'aruna kumari', 'gadi', '8309135789', 'B.Tech', '5', 'female', '2000-10-10', 'arunagadi123@gmail.com', 1, '[\"3\"]', NULL, '2024-03-15 07:56:01', '2024-03-15 07:56:01'),
(9, 'aruna kumari', 'gadi', '8309133141', 'M.Tech', '3', 'female', '2000-10-10', 'abcde@gmail.com', 1, '[\"3\"]', NULL, '2024-03-15 08:08:20', '2024-03-15 08:08:20'),
(10, 'thanu', 'g', '8907654321', 'B.Tech', '5', 'female', '1990-08-01', 'thanu@gmail.com', 1, '[\"1\",\"2\",\"3\"]', NULL, '2024-03-15 08:34:40', '2024-03-15 08:34:40'),
(11, 'eesha', 'terli', '8907654123', 'B.Tech', '4', 'female', '2022-08-19', 'eesha@gmail.com', 2, '[\"1\",\"2\"]', NULL, '2024-03-15 09:19:27', '2024-03-15 09:19:27'),
(12, 'bhanu', 'gadi', '8309133191', 'MSc', '5', 'male', '2000-10-10', 'bhanu@gmail.com', 3, '[\"1\",\"3\"]', NULL, '2024-03-15 12:11:14', '2024-03-15 12:11:14');

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
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2024_03_14_141231_create_applicants_table', 1),
(29, '2024_03_14_143222_create_roles_table', 1),
(30, '2024_03_14_143431_create_skills_table', 1),
(31, '2024_03_14_143526_create_results_table', 1),
(32, '2024_03_14_143618_create_questions_table', 1),
(33, '2024_03_15_020337_add_qualification_to_applicants_table', 2),
(34, '2024_03_15_020903_add_total_experience_to_applicants_table', 3),
(35, '2024_03_15_023912_change_dob_to_string_in_applicants_table', 4),
(36, '2024_03_15_094902_add_skills_column_to_applicants_table', 5);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `role_id`, `skill_id`, `question`, `options`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'What feature in Figma allows you to create responsive designs that can adapt to different screen sizes?', 'Vector Networks,Auto Layout,Slice Tool', 'Auto Layout\r\n', NULL, NULL),
(2, 1, 3, 'How can you share your design prototype for user testing in Figma?', ' Export as PDF and email it,\r\nCreate a shareable link through the \'Share\' feature,\r\n Take screenshots and send them', 'Create a shareable link through the \'Share\' feature', NULL, NULL),
(3, 1, 3, 'What is the primary method for creating a reusable component in Figma?', 'Grouping layers together,\r\nUsing the Frame tool,\r\n Using the \'Create Component\' feature (or pressing the shortcut key Alt + Command + K on macOS or Alt + Ctrl + K on Windows)', 'Using the \'Create Component\' feature (or pressing the shortcut key Alt + Command + K on macOS or Alt + Ctrl + K on Windows)', NULL, NULL),
(4, 1, 1, 'How do you create a Clipping Mask in Adobe Photoshop?', 'Select both layers then go to Layer > Create Clipping Mask,\r\nUse the Magic Wand Tool to select the area and then press the \'Mask\' button,\r\nSelect the layer and press Ctrl+Shift+N to create a new mask.', 'Select both layers then go to Layer > Create Clipping Mask', NULL, NULL),
(5, 1, 1, 'What does the Magic Wand tool do in Photoshop?', 'Adds text to the image,Selects areas with similar colors,Creates a gradient effect', 'Selects areas with similar colors', NULL, NULL),
(6, 1, 1, 'How can you create a new layer in Photoshop?', ' Press Ctrl + L,Click on the \"New Layer\",button in the Layers panel\r\nUse the Crop tool', 'Click on the \"New Layer\" button in the Layers panel', NULL, NULL),
(7, 1, 2, 'Which tool is used to draw precise geometric shapes in Adobe Illustrator?', 'Pencil tool,Rectangle tool,Brush tool', 'Rectangle tool', NULL, NULL),
(8, 1, 2, 'How can you apply a gradient to an object in Adobe Illustrator?\r\n', ' Use the Gradient tool,Go to Object > Apply Gradient,Select the object and then choose a gradient from the Gradient panel', 'Select the object and then choose a gradient from the Gradient panel', NULL, NULL),
(9, 1, 2, 'What is the purpose of the Appearance panel in Adobe Illustrator?', 'To adjust the transparency of objects,To change the font style of text,To organize layers in the document', 'To adjust the transparency of objects', NULL, NULL),
(10, 2, 2, 'How can you run Laravel migrations?', 'php artisan migrate,php artisan migrate:rollback,php artisan migrate:refresh\r\n', 'php artisan migrate', NULL, NULL),
(11, 2, 2, 'Which command is used to create a new Laravel project?', 'laravel new project-name,composer create-project --prefer-dist laravel/laravel project-name,php artisan new project-name', 'composer create-project --prefer-dist laravel/laravel project-name', NULL, NULL),
(12, 2, 2, 'How can you define a route in Laravel?', 'Using the routes/web.php file,Using the routes/api.php file,Both A and B', 'Both A and B', NULL, NULL),
(13, 2, 1, 'What does HTML stand for?', 'Hyperlinks and Text Markup Language,Hyper Text Markup Language,High-Level Text Manipulation Language', 'Hyper Text Markup Language', NULL, NULL),
(14, 2, 1, 'What is the correct way to create a hyperlink in HTML?', '<a href=\"http://www.example.com\">Link</a>\r\n,<link src=\"http://www.example.com\">Link</link>,\r\n <href=\"http://www.example.com\">Link</href>', '<a href=\"http://www.example.com\">Link</a>', NULL, NULL),
(15, 2, 1, 'Which tag is used to create an unordered list in HTML?', '<ul>,<ol>,<list>', ' <ul>', NULL, NULL),
(16, 2, 3, 'What is npm in the context of Node.js?', 'Node.js Package Manager,Node.js Plugin Manager,Node.js Program Manager', 'Node.js Package Manager', NULL, NULL),
(17, 2, 3, 'What is the purpose of the \"require\" function in Node.js?', 'To include external JavaScript files,To import modules or libraries,To define global variables', ' To import modules or libraries', NULL, NULL),
(18, 2, 3, 'What is the purpose of the \"package.json\" file in a Node.js project?', 'To store configuration settings,To manage project dependencies,To define routing paths', 'To manage project dependencies', NULL, NULL),
(19, 3, 1, 'What is Selenium WebDriver?', 'A testing framework,A tool for automating web applications,A database management system', ' A tool for automating web applications', NULL, NULL),
(20, 3, 1, 'What is the purpose of the getAttribute() method in Selenium WebDriver?', 'To retrieve the value of an attribute of a web element,To click on a web element,To wait for a web element to be visible', 'To retrieve the value of an attribute of a web element', NULL, NULL),
(21, 3, 1, 'Which programming languages are supported by Selenium WebDriver?', 'Java & Python and Ruby,C++ & C# and JavaScript,PHP & Perl and Swift', ' Java, Python, and Ruby', NULL, NULL),
(22, 3, 2, 'What is JMeter primarily used for?', 'Unit testing,Performance testing,Functional testing', 'Performance testing', NULL, NULL),
(23, 3, 2, 'Which protocol is NOT supported by JMeter for load testing?', ' HTTP,FTP,SMTP', 'SMTP', NULL, NULL),
(24, 3, 2, 'What does JMeter\'s \"Throughput\" represent in load testing?', 'Requests per second,Average response time,Error rate', 'Requests per second', NULL, NULL),
(25, 3, 3, 'What is Cucumber mainly used for in software development?', 'Unit testing,Integration testing,Acceptance testing', 'Acceptance testing', NULL, NULL),
(26, 3, 3, 'Which programming languages are commonly used to write step definitions in Cucumber?', ' Python and Ruby,JavaScript and PHP,Java and Ruby', 'Java and Ruby', NULL, NULL),
(28, 3, 3, 'What is the purpose of the \'Given\' keyword in Cucumber scenarios?', 'To define the initial setup or preconditions,To execute an action,To verify the expected outcome', 'To define the initial setup or preconditions', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marks` int(11) NOT NULL,
  `correct_ans` int(11) NOT NULL,
  `wrong_ans` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Designer', NULL, NULL),
(2, 'Developer', NULL, NULL),
(3, 'Tester', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicants_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `applicants_email_unique` (`email`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
