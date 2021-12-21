-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2021 lúc 09:33 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravelblog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `description`, `image_path`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'this-is-my-new-post', 'This is my new post', 'New post', '61babd8774490-This is my new post.jpg', '2021-12-15 21:16:07', '2021-12-15 21:16:07', 1),
(3, 'this-is-second-post', 'This is second post', 'Second post', '61babe1a975bd-This is second post.jpg', '2021-12-15 21:18:34', '2021-12-15 21:18:34', 1),
(4, 'how-to-become-a-web-developer-in-2021', 'How to Become a Web Developer in 2021', 'Technology plays a huge role in our daily lives, from the simplest of apps to the most groundbreaking inventions. Every website or piece of software that we encounter has been built by a web developer—but what exactly is web development, and what do they do—all of this will be answered in this guide to how to become a web developer.\r\n\r\nTo the outside eye, it can seem like a complicated, confusing and somewhat inaccessible field. So, to shed some light on this fascinating industry, we’ve put together the ultimate introduction to web development and what it takes to become a fully-fledged web developer.\r\n\r\nIn this guide, we’ll go through the basics of web development in detail, and show you the essential skills and tools you’ll need to break into the industry. If you decide web development is for you, the next step is to start learning those essential skills, which you can do in this free, online short course designed for beginners.', '61babeff8f489-How to Become a Web Developer in 2021.jpg', '2021-12-15 21:22:23', '2021-12-15 21:22:23', 1),
(5, 'how-to-become-a-web-developer-in-2022', 'How to Become a Web Developer in 2022', 'Technology plays a huge role in our daily lives, from the simplest of apps to the most groundbreaking inventions. Every website or piece of software that we encounter has been built by a web developer—but what exactly is web development, and what do they do—all of this will be answered in this guide to how to become a web developer.\r\n\r\nTo the outside eye, it can seem like a complicated, confusing and somewhat inaccessible field. So, to shed some light on this fascinating industry, we’ve put together the ultimate introduction to web development and what it takes to become a fully-fledged web developer.\r\n\r\nIn this guide, we’ll go through the basics of web development in detail, and show you the essential skills and tools you’ll need to break into the industry. If you decide web development is for you, the next step is to start learning those essential skills, which you can do in this free, online short course designed for beginners.', '61bac4f58364a-How to Become a Web Developer in 2022.jpg', '2021-12-15 21:47:49', '2021-12-15 21:47:49', 1),
(6, 'learn-about-laravel-2', 'Learn about Laravel', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLink: https://laravel.com/docs/8.x', '61baeaa5962ba-Learn about Laravel.png', '2021-12-16 00:28:37', '2021-12-16 00:29:06', 1),
(7, 'installation-laravel', 'Installation Laravel', 'If your computer already has PHP and Composer installed, you may create a new Laravel project by using Composer directly. After the application has been created, you may start Laravel\'s local development server using the Artisan CLI\'s serve command:\r\n\r\ncomposer create-project laravel/laravel example-app\r\n\r\ncd example-app\r\n\r\nphp artisan serve', '61baee68d0ea7-Installation Laravel.png', '2021-12-16 00:44:40', '2021-12-16 00:56:08', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
