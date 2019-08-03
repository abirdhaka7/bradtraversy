-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2019 at 04:24 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_themes`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-07-22 07:17:46', '2019-07-22 07:17:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 1, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-07-22 08:49:12', '2019-07-22 08:49:12', 'HI', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 0, 1),
(3, 27, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-07-23 07:33:35', '2019-07-23 07:33:35', 'afs', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 0, 1),
(4, 27, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-07-23 07:35:25', '2019-07-23 07:35:25', 'ad', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 3, 1),
(5, 94, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-07-24 15:58:43', '2019-07-24 15:58:43', 'hi', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 0, 1),
(6, 94, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-07-28 16:04:58', '2019-07-28 16:04:58', 'Fuck the king', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 5, 1),
(7, 91, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-07-28 16:14:31', '2019-07-28 16:14:31', 'Very Handsome', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 0, 1),
(8, 151, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-07-30 06:53:49', '2019-07-30 06:53:49', 'fuck u', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 0, 1),
(9, 191, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-08-01 05:30:13', '2019-08-01 05:30:13', 'H stark', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 0, 1),
(10, 207, 'abirdhaka7', 'abuldha7@gmail.com', '', '127.0.0.1', '2019-08-03 06:58:44', '2019-08-03 06:58:44', 'Hello', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Wp_themes', 'yes'),
(2, 'home', 'http://localhost/Wp_themes', 'yes'),
(3, 'blogname', 'Clean Cut', 'yes'),
(4, 'blogdescription', 'WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'abuldha7@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=110&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fourcorners', 'yes'),
(41, 'stylesheet', 'fourcorners', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:11:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:5;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:6;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:7;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:8;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:9;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:10;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:11;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:12;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:18:{i:2;a:4:{s:5:\"title\";s:14:\"My text Widget\";s:4:\"text\";s:52:\"abcabcabcabcabcabcabcabcabc\r\n\r\n<button>Like</button>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:4:\"Text\";s:4:\"text\";s:105:\"<h1>Hi I am Abir</h1>\r\n<p>lorem lorem loremloremloremloremlorem</p>\r\n<a class=\"button\" href=\"\"> Click</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"Box 1 heading\";s:4:\"text\";s:110:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore \";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:13:\"Box 2 heading\";s:4:\"text\";s:110:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore \";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:20:\"Clean Bootstrap Team\";s:4:\"text\";s:142:\"<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sapien sem, laoreet eu tempus vitae, sollicitudin eu odio</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:3:\"xxx\";s:4:\"text\";s:554:\"\r\n<div class=\"col-md-5\"><img src=\"img/pic1.jpg\" /></div>\r\n<div class=\"col-md-7\">\r\n<h3>Theme Features</h3>\r\n<ul class=\"list-group\">\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Clean Code</li>\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Custom Showcase Area</li>\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Bootstrap 3 Framework</li>\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Multiple Color Choices</li>\r\n</ul>\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:10;a:4:{s:5:\"title\";s:20:\"Clean Bootstrap Team\";s:4:\"text\";s:142:\"<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sapien sem, laoreet eu tempus vitae, sollicitudin eu odio</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:11;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:612:\"<div class=\"col-md-5\"><img src=\"http://localhost/Wp_themes\\wp-content\\themes\\business_theme\\img\\pic1.jpg\" /></div>\r\n<div class=\"col-md-7\">\r\n<h3>Theme Features</h3>\r\n<ul class=\"list-group\">\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Clean Code</li>\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Custom Showcase Area</li>\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Bootstrap 3 Framework</li>\r\n 	<li class=\"list-group-item\"><i class=\"fa fa-check\" aria-hidden=\"true\"></i> Multiple Color Choices</li>\r\n</ul>\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:12;a:4:{s:5:\"title\";s:7:\"Heading\";s:4:\"text\";s:122:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sapien sem, laoreet eu tempus vitae, sollicitudin eu odio\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:13;a:4:{s:5:\"title\";s:7:\"Heading\";s:4:\"text\";s:412:\"<form>\r\n              <div>\r\n                <input type=\"text\" placeholder=\"Name\">\r\n              </div>\r\n              <div>\r\n                <input type=\"text\" placeholder=\"Email Address\">\r\n              </div>\r\n              <div>\r\n                <textarea placeholder=\"Message\"></textarea>\r\n              </div>\r\n              <input class=\"btn btn-primary\" type=\"submit\" value=\"Send\">\r\n            </form>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:14;a:4:{s:5:\"title\";s:7:\"Heading\";s:4:\"text\";s:306:\"  <ul>\r\n              <li><a href=\"#\">Eiusmod tempor</a></li>\r\n              <li><a href=\"#\">Adipisicing elit</a></li>\r\n              <li><a href=\"#\">Incididunt ut labore</a></li>\r\n              <li><a href=\"#\">Dolore magna</a></li>\r\n              <li><a href=\"#\">Eiusmod tempor</a></li>\r\n            </ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:15;a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"text\";s:246:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irur\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:16;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:2835:\"<div class=\"row\">\r\n              <div class=\"col-md-4\">\r\n                <div class=\"boxed-content left-aligned left-boxed-icon\">\r\n                  <i class=\"fa fa-database\"></i>\r\n                  <h2 class=\"boxed-content-title\">Content Heading</h2>\r\n                  <p>Mauris sed odio arcu. Vestibulum nibh urna, convallis et erat sit amet, faucibus tempus ex. Vivamus viverra augue orci, ullamcorper aliquet velit egestas quis.</p>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"col-md-4\">\r\n                <div class=\"boxed-content left-aligned left-boxed-icon\">\r\n                  <i class=\"fa fa-home\"></i>\r\n                  <h2 class=\"boxed-content-title\">Content Heading</h2>\r\n                  <p>Mauris sed odio arcu. Vestibulum nibh urna, convallis et erat sit amet, faucibus tempus ex. Vivamus viverra augue orci, ullamcorper aliquet velit egestas quis.</p>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"col-md-4\">\r\n                <div class=\"boxed-content left-aligned left-boxed-icon\">\r\n                  <i class=\"fa fa-flag\"></i>\r\n                  <h2 class=\"boxed-content-title\">Content Heading</h2>\r\n                  <p>Mauris sed odio arcu. Vestibulum nibh urna, convallis et erat sit amet, faucibus tempus ex. Vivamus viverra augue orci, ullamcorper aliquet velit egestas quis.</p>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"col-md-4\">\r\n                <div class=\"boxed-content left-aligned left-boxed-icon\">\r\n                  <i class=\"fa fa-pencil\"></i>\r\n                  <h2 class=\"boxed-content-title\">Content Heading</h2>\r\n                  <p>Mauris sed odio arcu. Vestibulum nibh urna, convallis et erat sit amet, faucibus tempus ex. Vivamus viverra augue orci, ullamcorper aliquet velit egestas quis.</p>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"col-md-4\">\r\n                <div class=\"boxed-content left-aligned left-boxed-icon\">\r\n                  <i class=\"fa fa-user\"></i>\r\n                  <h2 class=\"boxed-content-title\">Content Heading</h2>\r\n                  <p>Mauris sed odio arcu. Vestibulum nibh urna, convallis et erat sit amet, faucibus tempus ex. Vivamus viverra augue orci, ullamcorper aliquet velit egestas quis.</p>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"col-md-4\">\r\n                <div class=\"boxed-content left-aligned left-boxed-icon\">\r\n                  <i class=\"fa fa-location-arrow\"></i>\r\n                  <h2 class=\"boxed-content-title\">Content Heading</h2>\r\n                  <p>Mauris sed odio arcu. Vestibulum nibh urna, convallis et erat sit amet, faucibus tempus ex. Vivamus viverra augue orci, ullamcorper aliquet velit egestas quis.</p>\r\n                </div>\r\n              </div>\r\n            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:17;a:4:{s:5:\"title\";s:8:\"About us\";s:4:\"text\";s:442:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar ac</p>\r\n      <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\r\n      <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\r\n      <a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\r\n      <a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\r\n      <a href=\"#\"><i class=\"fa fa-youtube\"></i></a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:18;a:4:{s:5:\"title\";s:10:\"Google Map\";s:4:\"text\";s:375:\"  <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3528.279337481119!2d-71.02021798426182!3d42.82558797915832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e2fd3b09cb0a2d%3A0x44eec3b2e676a5e8!2s89+W+Main+St%2C+Merrimac%2C+MA+01860!5e1!3m2!1sen!2sus!4v1463519401419\" width=\"280\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:19;a:4:{s:5:\"title\";s:12:\"Our Location\";s:4:\"text\";s:374:\" <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3528.279337481119!2d-71.02021798426182!3d42.82558797915832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e2fd3b09cb0a2d%3A0x44eec3b2e676a5e8!2s89+W+Main+St%2C+Merrimac%2C+MA+01860!5e1!3m2!1sen!2sus!4v1463519401419\" width=\"280\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:20;a:4:{s:5:\"title\";s:8:\"About Us\";s:4:\"text\";s:174:\" <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar ac</p>\r\n\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '110', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:6:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}i:4;a:3:{s:5:\"title\";s:12:\"Le test news\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}i:5;a:3:{s:5:\"title\";s:11:\"Recent Post\";s:6:\"number\";i:3;s:9:\"show_date\";b:0;}i:6;a:3:{s:5:\"title\";s:12:\"Recent Posts\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:5:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:5;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:6;a:3:{s:5:\"title\";s:8:\"Archives\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:9:{s:7:\"fotter1\";a:2:{i:0;s:7:\"text-17\";i:1;s:13:\"categories-11\";}s:7:\"fotter4\";a:1:{i:0;s:7:\"text-18\";}s:19:\"wp_inactive_widgets\";a:31:{i:0;s:6:\"text-2\";i:1;s:12:\"categories-4\";i:2;s:14:\"recent-posts-3\";i:3;s:6:\"text-3\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";i:6;s:14:\"recent-posts-4\";i:7;s:12:\"categories-5\";i:8;s:12:\"categories-6\";i:9;s:14:\"recent-posts-5\";i:10;s:17:\"recent-comments-2\";i:11;s:8:\"search-2\";i:12;s:14:\"recent-posts-2\";i:13;s:10:\"archives-2\";i:14;s:12:\"categories-2\";i:15;s:6:\"text-7\";i:16;s:7:\"pages-2\";i:17;s:6:\"text-8\";i:18;s:10:\"calendar-2\";i:19;s:7:\"text-10\";i:20;s:7:\"text-11\";i:21;s:7:\"text-12\";i:22;s:7:\"text-14\";i:23;s:7:\"text-13\";i:24;s:12:\"categories-7\";i:25;s:10:\"archives-3\";i:26;s:7:\"text-15\";i:27;s:12:\"categories-8\";i:28;s:7:\"text-16\";i:29;s:12:\"categories-9\";i:30;s:10:\"archives-5\";}s:7:\"sidebar\";a:2:{i:0;s:13:\"categories-10\";i:1;s:10:\"archives-6\";}s:7:\"footer1\";a:1:{i:0;s:7:\"text-20\";}s:7:\"footer2\";a:1:{i:0;s:13:\"categories-12\";}s:7:\"footer3\";a:1:{i:0;s:14:\"recent-posts-6\";}s:7:\"footer4\";a:1:{i:0;s:7:\"text-19\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1564849880;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1564859870;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1564903069;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564903077;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564903080;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:3:\"dda\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564294240;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:11:{i:0;s:6:\"text-2\";i:1;s:12:\"categories-4\";i:2;s:14:\"recent-posts-3\";i:3;s:6:\"text-3\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";i:6;s:14:\"recent-posts-4\";i:7;s:12:\"categories-5\";i:8;s:12:\"categories-6\";i:9;s:14:\"recent-posts-5\";i:10;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1564849022;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '0', 'no'),
(139, 'current_theme', 'fourcorners', 'yes'),
(140, 'theme_mods_simple', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563811200;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(162, 'theme_mods_advanced-wp-themes', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563786967;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}}}}', 'yes'),
(165, 'theme_mods_advance_theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563889724;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}s:7:\"sidebar\";a:3:{i:0;s:6:\"text-2\";i:1;s:12:\"categories-4\";i:2;s:14:\"recent-posts-3\";}s:8:\"showcase\";a:1:{i:0;s:6:\"text-3\";}s:4:\"box1\";a:1:{i:0;s:6:\"text-5\";}s:4:\"box2\";a:1:{i:0;s:6:\"text-6\";}s:4:\"box3\";a:1:{i:0;s:14:\"recent-posts-4\";}}}}', 'yes'),
(170, 'recovery_mode_email_last_sent', '1564754162', 'yes'),
(193, 'theme_mods_advanced-wp', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563818354;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(214, 'theme_mods_photogenik_html', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563975180;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:11:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"text-2\";i:5;s:12:\"categories-4\";i:6;s:14:\"recent-posts-3\";i:7;s:6:\"text-3\";i:8;s:6:\"text-5\";i:9;s:6:\"text-6\";i:10;s:14:\"recent-posts-4\";}s:7:\"sidebar\";a:1:{i:0;s:12:\"categories-5\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(219, 'WPLANG', '', 'yes'),
(220, 'new_admin_email', 'abuldha7@gmail.com', 'yes'),
(263, 'theme_mods_wordstrap Theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564155725;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:12:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"text-2\";i:5;s:12:\"categories-4\";i:6;s:14:\"recent-posts-3\";i:7;s:6:\"text-3\";i:8;s:6:\"text-5\";i:9;s:6:\"text-6\";i:10;s:14:\"recent-posts-4\";i:11;s:12:\"categories-5\";}s:7:\"sidebar\";a:3:{i:0;s:12:\"categories-6\";i:1;s:14:\"recent-posts-5\";i:2;s:17:\"recent-comments-2\";}}}}', 'yes'),
(277, 'theme_mods_myshop', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:103;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564211875;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"text-2\";i:5;s:12:\"categories-4\";i:6;s:14:\"recent-posts-3\";i:7;s:6:\"text-3\";i:8;s:6:\"text-5\";i:9;s:6:\"text-6\";i:10;s:14:\"recent-posts-4\";i:11;s:12:\"categories-5\";i:12;s:12:\"categories-6\";i:13;s:14:\"recent-posts-5\";i:14;s:17:\"recent-comments-2\";}}}}', 'yes'),
(297, 'recently_activated', 'a:0:{}', 'yes'),
(305, 'theme_mods_business_theme', 'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564380176;s:4:\"data\";a:9:{s:9:\"sidebar-1\";a:2:{i:0;s:6:\"text-7\";i:1;s:7:\"pages-2\";}s:9:\"sidebar-2\";a:2:{i:0;s:6:\"text-8\";i:1;s:10:\"calendar-2\";}s:19:\"wp_inactive_widgets\";a:15:{i:0;s:6:\"text-2\";i:1;s:12:\"categories-4\";i:2;s:14:\"recent-posts-3\";i:3;s:6:\"text-3\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";i:6;s:14:\"recent-posts-4\";i:7;s:12:\"categories-5\";i:8;s:12:\"categories-6\";i:9;s:14:\"recent-posts-5\";i:10;s:17:\"recent-comments-2\";i:11;s:8:\"search-2\";i:12;s:14:\"recent-posts-2\";i:13;s:10:\"archives-2\";i:14;s:12:\"categories-2\";}s:16:\"content-region-1\";a:1:{i:0;s:7:\"text-10\";}s:16:\"content-region-2\";a:1:{i:0;s:7:\"text-11\";}s:8:\"footer_1\";a:1:{i:0;s:7:\"text-12\";}s:8:\"footer_2\";a:1:{i:0;s:7:\"text-14\";}s:8:\"footer_3\";a:1:{i:0;s:7:\"text-13\";}s:7:\"sidebar\";a:2:{i:0;s:12:\"categories-7\";i:1;s:10:\"archives-3\";}}}s:11:\"custom_logo\";i:106;s:15:\"banner_btn_text\";s:13:\"SIGN UP TODAY\";s:14:\"banner_btn_url\";s:25:\"https://www.facebook.com/\";s:12:\"banner_image\";s:64:\"http://localhost/Wp_themes/wp-content/uploads/2019/07/banner.jpg\";s:9:\"box1_text\";s:84:\"Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.\";s:12:\"box2_heading\";s:14:\"Box 2 heading \";s:9:\"box2_text\";s:84:\"Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.\";s:9:\"box2_icon\";s:4:\"book\";s:9:\"box3_text\";s:84:\"Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.\";}', 'yes'),
(318, 'page_for_posts', '116', 'yes'),
(356, 'theme_mods_cleancut_html', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:15:\"showcase_height\";s:3:\"500\";s:16:\"showcase_heading\";s:14:\"CleanCut Theme\";s:12:\"facebook_url\";s:25:\"https://www.facebook.com/\";s:11:\"twitter_url\";s:22:\"http://www.twitter.com\";s:14:\"banner_heading\";s:19:\"Want to follow us ?\";s:12:\"banner_image\";s:85:\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9.jpg\";s:9:\"animation\";b:1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564552059;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:26:{i:0;s:6:\"text-2\";i:1;s:12:\"categories-4\";i:2;s:14:\"recent-posts-3\";i:3;s:6:\"text-3\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";i:6;s:14:\"recent-posts-4\";i:7;s:12:\"categories-5\";i:8;s:12:\"categories-6\";i:9;s:14:\"recent-posts-5\";i:10;s:17:\"recent-comments-2\";i:11;s:8:\"search-2\";i:12;s:14:\"recent-posts-2\";i:13;s:10:\"archives-2\";i:14;s:12:\"categories-2\";i:15;s:6:\"text-7\";i:16;s:7:\"pages-2\";i:17;s:6:\"text-8\";i:18;s:10:\"calendar-2\";i:19;s:7:\"text-10\";i:20;s:7:\"text-11\";i:21;s:7:\"text-12\";i:22;s:7:\"text-14\";i:23;s:7:\"text-13\";i:24;s:12:\"categories-7\";i:25;s:10:\"archives-3\";}s:7:\"sidebar\";a:1:{i:0;s:7:\"text-15\";}s:6:\"subnav\";a:1:{i:0;s:12:\"categories-8\";}s:6:\"bottom\";a:1:{i:0;s:7:\"text-16\";}}}}', 'yes'),
(367, '_site_transient_timeout_browser_3112a0b665e8abab58bc13ec209ed821', '1565012499', 'no'),
(368, '_site_transient_browser_3112a0b665e8abab58bc13ec209ed821', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.142\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(369, '_site_transient_timeout_php_check_464f4068caea2f8f3edcc5ae59429c65', '1565012501', 'no'),
(370, '_site_transient_php_check_464f4068caea2f8f3edcc5ae59429c65', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(402, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1564849292;s:7:\"checked\";a:8:{s:13:\"advance_theme\";s:3:\"1.0\";s:14:\"business_theme\";s:3:\"1.1\";s:14:\"cleancut_theme\";s:3:\"1.1\";s:11:\"fourcorners\";s:3:\"1.0\";s:16:\"photogenik_theme\";s:3:\"1.0\";s:6:\"simple\";s:3:\"1.0\";s:15:\"wordstrap Theme\";s:3:\"1.0\";s:7:\"wp_news\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(404, 'theme_mods_wp_news', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564642082;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:29:{i:0;s:6:\"text-2\";i:1;s:12:\"categories-4\";i:2;s:14:\"recent-posts-3\";i:3;s:6:\"text-3\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";i:6;s:14:\"recent-posts-4\";i:7;s:12:\"categories-5\";i:8;s:12:\"categories-6\";i:9;s:14:\"recent-posts-5\";i:10;s:17:\"recent-comments-2\";i:11;s:8:\"search-2\";i:12;s:14:\"recent-posts-2\";i:13;s:10:\"archives-2\";i:14;s:12:\"categories-2\";i:15;s:6:\"text-7\";i:16;s:7:\"pages-2\";i:17;s:6:\"text-8\";i:18;s:10:\"calendar-2\";i:19;s:7:\"text-10\";i:20;s:7:\"text-11\";i:21;s:7:\"text-12\";i:22;s:7:\"text-14\";i:23;s:7:\"text-13\";i:24;s:12:\"categories-7\";i:25;s:10:\"archives-3\";i:26;s:7:\"text-15\";i:27;s:12:\"categories-8\";i:28;s:7:\"text-16\";}s:7:\"sidebar\";a:2:{i:0;s:12:\"categories-9\";i:1;s:10:\"archives-5\";}}}}', 'yes'),
(415, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1564849030;s:7:\"checked\";a:1:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(470, 'theme_mods_wpnews', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564639063;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:29:{i:0;s:6:\"text-2\";i:1;s:12:\"categories-4\";i:2;s:14:\"recent-posts-3\";i:3;s:6:\"text-3\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";i:6;s:14:\"recent-posts-4\";i:7;s:12:\"categories-5\";i:8;s:12:\"categories-6\";i:9;s:14:\"recent-posts-5\";i:10;s:17:\"recent-comments-2\";i:11;s:8:\"search-2\";i:12;s:14:\"recent-posts-2\";i:13;s:10:\"archives-2\";i:14;s:12:\"categories-2\";i:15;s:6:\"text-7\";i:16;s:7:\"pages-2\";i:17;s:6:\"text-8\";i:18;s:10:\"calendar-2\";i:19;s:7:\"text-10\";i:20;s:7:\"text-11\";i:21;s:7:\"text-12\";i:22;s:7:\"text-14\";i:23;s:7:\"text-13\";i:24;s:12:\"categories-7\";i:25;s:10:\"archives-3\";i:26;s:7:\"text-15\";i:27;s:12:\"categories-8\";i:28;s:7:\"text-16\";}s:7:\"sidebar\";a:2:{i:0;s:12:\"categories-9\";i:1;s:10:\"archives-5\";}}}}', 'yes'),
(476, 'theme_mods_fourcorners', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(487, 'category_children', 'a:0:{}', 'yes'),
(498, '_site_transient_timeout_theme_roots', '1564850828', 'no'),
(499, '_site_transient_theme_roots', 'a:8:{s:13:\"advance_theme\";s:7:\"/themes\";s:14:\"business_theme\";s:7:\"/themes\";s:14:\"cleancut_theme\";s:7:\"/themes\";s:11:\"fourcorners\";s:7:\"/themes\";s:16:\"photogenik_theme\";s:7:\"/themes\";s:6:\"simple\";s:7:\"/themes\";s:15:\"wordstrap Theme\";s:7:\"/themes\";s:7:\"wp_news\";s:7:\"/themes\";}', 'no'),
(500, '_site_transient_timeout_popular_importers_6b41f3ccfc7109d105fce4616c8e9340', '1565022188', 'no'),
(501, '_site_transient_popular_importers_6b41f3ccfc7109d105fce4616c8e9340', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', ''),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1563784519'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(7, 7, '_edit_lock', '1563890914:1'),
(9, 9, '_edit_lock', '1563819725:1'),
(11, 12, '_edit_lock', '1563784478:1'),
(12, 14, '_menu_item_type', 'custom'),
(13, 14, '_menu_item_menu_item_parent', '0'),
(14, 14, '_menu_item_object_id', '14'),
(15, 14, '_menu_item_object', 'custom'),
(16, 14, '_menu_item_target', ''),
(17, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 14, '_menu_item_xfn', ''),
(19, 14, '_menu_item_url', 'http://localhost/Wp_themes/'),
(20, 14, '_menu_item_orphaned', '1563784625'),
(21, 15, '_menu_item_type', 'post_type'),
(22, 15, '_menu_item_menu_item_parent', '0'),
(23, 15, '_menu_item_object_id', '9'),
(24, 15, '_menu_item_object', 'page'),
(25, 15, '_menu_item_target', ''),
(26, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 15, '_menu_item_xfn', ''),
(28, 15, '_menu_item_url', ''),
(29, 15, '_menu_item_orphaned', '1563784626'),
(30, 16, '_menu_item_type', 'post_type'),
(31, 16, '_menu_item_menu_item_parent', '0'),
(32, 16, '_menu_item_object_id', '12'),
(33, 16, '_menu_item_object', 'page'),
(34, 16, '_menu_item_target', ''),
(35, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 16, '_menu_item_xfn', ''),
(37, 16, '_menu_item_url', ''),
(38, 16, '_menu_item_orphaned', '1563784627'),
(39, 17, '_menu_item_type', 'post_type'),
(40, 18, '_menu_item_type', 'post_type'),
(41, 17, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_menu_item_parent', '0'),
(43, 17, '_menu_item_object_id', '12'),
(44, 18, '_menu_item_object_id', '2'),
(45, 17, '_menu_item_object', 'page'),
(46, 18, '_menu_item_object', 'page'),
(47, 17, '_menu_item_target', ''),
(48, 18, '_menu_item_target', ''),
(49, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 17, '_menu_item_xfn', ''),
(52, 18, '_menu_item_xfn', ''),
(53, 17, '_menu_item_url', ''),
(54, 18, '_menu_item_url', ''),
(55, 17, '_menu_item_orphaned', '1563784635'),
(56, 18, '_menu_item_orphaned', '1563784635'),
(57, 19, '_menu_item_type', 'post_type'),
(58, 19, '_menu_item_menu_item_parent', '0'),
(59, 19, '_menu_item_object_id', '9'),
(60, 19, '_menu_item_object', 'page'),
(61, 19, '_menu_item_target', ''),
(62, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 19, '_menu_item_xfn', ''),
(64, 19, '_menu_item_url', ''),
(65, 19, '_menu_item_orphaned', '1563784636'),
(66, 20, '_menu_item_type', 'post_type'),
(67, 20, '_menu_item_menu_item_parent', '0'),
(68, 20, '_menu_item_object_id', '2'),
(69, 20, '_menu_item_object', 'page'),
(70, 20, '_menu_item_target', ''),
(71, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 20, '_menu_item_xfn', ''),
(73, 20, '_menu_item_url', ''),
(74, 20, '_menu_item_orphaned', '1563784637'),
(102, 24, '_wp_attached_file', '2019/07/bBC0nCs.jpg'),
(103, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2019/07/bBC0nCs.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bBC0nCs-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bBC0nCs-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bBC0nCs-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bBC0nCs-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 7, '_thumbnail_id', '24'),
(106, 1, '_edit_lock', '1563785295:1'),
(108, 26, '_wp_attached_file', '2019/07/Game-of-Thrones-Wallpaper-9.jpg'),
(109, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:39:\"2019/07/Game-of-Thrones-Wallpaper-9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"Game-of-Thrones-Wallpaper-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"Game-of-Thrones-Wallpaper-9-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"Game-of-Thrones-Wallpaper-9-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"Game-of-Thrones-Wallpaper-9-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 1, '_thumbnail_id', '26'),
(113, 27, '_edit_lock', '1563819332:1'),
(115, 29, '_wp_attached_file', '2019/07/download.jpg'),
(116, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:20:\"2019/07/download.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 27, '_thumbnail_id', '29'),
(129, 32, '_edit_lock', '1563816258:1'),
(132, 35, '_edit_lock', '1563816508:1'),
(134, 35, '_oembed_437dad07d7fb2f939c650f881f1fcbd8', '{{unknown}}'),
(138, 40, '_edit_lock', '1563865411:1'),
(139, 41, '_wp_attached_file', '2019/07/25484.jpg'),
(140, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2019/07/25484.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"25484-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"25484-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"25484-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"25484-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 42, '_wp_attached_file', '2019/07/bBC0nCs-1.jpg'),
(142, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2019/07/bBC0nCs-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bBC0nCs-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bBC0nCs-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"bBC0nCs-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bBC0nCs-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 43, '_wp_attached_file', '2019/07/download-1.jpg'),
(144, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:22:\"2019/07/download-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-1-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 44, '_wp_attached_file', '2019/07/Game-of-Thrones-Wallpaper-9-1.jpg'),
(146, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:41:\"2019/07/Game-of-Thrones-Wallpaper-9-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Game-of-Thrones-Wallpaper-9-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Game-of-Thrones-Wallpaper-9-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"Game-of-Thrones-Wallpaper-9-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 45, '_wp_attached_file', '2019/07/thumb-1920-637668.jpg'),
(148, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:29:\"2019/07/thumb-1920-637668.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"thumb-1920-637668-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"thumb-1920-637668-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"thumb-1920-637668-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"thumb-1920-637668-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 47, '_wp_attached_file', '2019/07/60346400_1061767447353939_48910344537505792_n.jpg'),
(151, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:57:\"2019/07/60346400_1061767447353939_48910344537505792_n.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"60346400_1061767447353939_48910344537505792_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"60346400_1061767447353939_48910344537505792_n-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 9, '_wp_page_template', ''),
(157, 2, '_edit_lock', '1564330883:1'),
(158, 54, '_edit_lock', '1563819581:1'),
(159, 56, '_edit_lock', '1563819595:1'),
(160, 58, '_edit_lock', '1563820583:1'),
(161, 58, '_wp_page_template', 'default'),
(171, 62, '_edit_lock', '1564295953:1'),
(172, 64, '_edit_lock', '1563865686:1'),
(173, 12, '_wp_trash_meta_status', 'publish'),
(174, 12, '_wp_trash_meta_time', '1563865853'),
(175, 12, '_wp_desired_post_slug', 'home'),
(195, 70, '_edit_lock', '1563890896:1'),
(223, 72, '_edit_lock', '1563890967:1'),
(226, 70, '_wp_old_slug', 'photo__trashed'),
(228, 40, '_wp_old_slug', 'gallery__trashed'),
(230, 35, '_wp_old_slug', 'get-free-course-at__trashed'),
(232, 32, '_wp_old_slug', 'simple-aside__trashed'),
(234, 27, '_wp_old_slug', 'post-of-himel__trashed'),
(236, 7, '_wp_old_slug', 'post__trashed'),
(238, 1, '_wp_old_slug', 'hello-world__trashed'),
(239, 72, '_wp_trash_meta_status', 'publish'),
(240, 72, '_wp_trash_meta_time', '1563892193'),
(241, 72, '_wp_desired_post_slug', 'afasf'),
(242, 70, '_wp_trash_meta_status', 'publish'),
(243, 70, '_wp_trash_meta_time', '1563892194'),
(244, 70, '_wp_desired_post_slug', 'photo'),
(245, 40, '_wp_trash_meta_status', 'publish'),
(246, 40, '_wp_trash_meta_time', '1563892194'),
(247, 40, '_wp_desired_post_slug', 'gallery'),
(248, 35, '_wp_trash_meta_status', 'publish'),
(249, 35, '_wp_trash_meta_time', '1563892195'),
(250, 35, '_wp_desired_post_slug', 'get-free-course-at'),
(251, 32, '_wp_trash_meta_status', 'publish'),
(252, 32, '_wp_trash_meta_time', '1563892195'),
(253, 32, '_wp_desired_post_slug', 'simple-aside'),
(254, 27, '_wp_trash_meta_status', 'publish'),
(255, 27, '_wp_trash_meta_time', '1563892196'),
(256, 27, '_wp_desired_post_slug', 'post-of-himel'),
(257, 27, '_wp_trash_meta_comments_status', 'a:2:{i:3;s:1:\"1\";i:4;s:1:\"1\";}'),
(258, 7, '_wp_trash_meta_status', 'publish'),
(259, 7, '_wp_trash_meta_time', '1563892197'),
(260, 7, '_wp_desired_post_slug', 'post'),
(261, 1, '_wp_trash_meta_status', 'publish'),
(262, 1, '_wp_trash_meta_time', '1563892197'),
(263, 1, '_wp_desired_post_slug', 'hello-world'),
(264, 1, '_wp_trash_meta_comments_status', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"1\";}'),
(265, 74, '_edit_lock', '1563892231:1'),
(267, 74, '_thumbnail_id', '43'),
(269, 77, '_edit_lock', '1563892456:1'),
(271, 77, '_thumbnail_id', '42'),
(272, 79, '_edit_lock', '1563892435:1'),
(274, 79, '_thumbnail_id', '41'),
(275, 81, '_edit_lock', '1563892426:1'),
(277, 81, '_thumbnail_id', '44'),
(281, 84, '_edit_lock', '1563892493:1'),
(283, 84, '_thumbnail_id', '45'),
(285, 87, '_edit_lock', '1563893275:1'),
(287, 87, '_thumbnail_id', '43'),
(288, 87, '_wp_trash_meta_status', 'publish'),
(289, 87, '_wp_trash_meta_time', '1563975503'),
(290, 87, '_wp_desired_post_slug', 'photo-6'),
(291, 87, '_wp_trash_meta_status', 'publish'),
(292, 87, '_wp_trash_meta_time', '1563975503'),
(293, 87, '_wp_desired_post_slug', 'photo-6'),
(294, 84, '_wp_trash_meta_status', 'publish'),
(295, 84, '_wp_trash_meta_time', '1563975504'),
(296, 84, '_wp_trash_meta_status', 'publish'),
(297, 84, '_wp_desired_post_slug', 'phot-5'),
(298, 84, '_wp_trash_meta_time', '1563975504'),
(299, 84, '_wp_desired_post_slug', 'phot-5'),
(300, 81, '_wp_trash_meta_status', 'publish'),
(301, 81, '_wp_trash_meta_time', '1563975505'),
(302, 81, '_wp_trash_meta_status', 'publish'),
(303, 81, '_wp_desired_post_slug', 'photo-4'),
(304, 81, '_wp_trash_meta_time', '1563975505'),
(305, 81, '_wp_desired_post_slug', 'photo-4'),
(306, 79, '_wp_trash_meta_status', 'publish'),
(307, 79, '_wp_trash_meta_time', '1563975506'),
(308, 79, '_wp_trash_meta_status', 'publish'),
(309, 79, '_wp_desired_post_slug', 'photo-3'),
(310, 79, '_wp_trash_meta_time', '1563975506'),
(311, 79, '_wp_desired_post_slug', 'photo-3'),
(312, 77, '_wp_trash_meta_status', 'publish'),
(313, 77, '_wp_trash_meta_time', '1563975507'),
(314, 77, '_wp_trash_meta_status', 'publish'),
(315, 77, '_wp_desired_post_slug', 'photo-2'),
(316, 77, '_wp_trash_meta_time', '1563975507'),
(317, 77, '_wp_desired_post_slug', 'photo-2'),
(318, 74, '_wp_trash_meta_status', 'publish'),
(319, 74, '_wp_trash_meta_time', '1563975508'),
(320, 74, '_wp_trash_meta_status', 'publish'),
(321, 74, '_wp_desired_post_slug', 'photo-1'),
(322, 74, '_wp_trash_meta_time', '1563975508'),
(323, 74, '_wp_desired_post_slug', 'photo-1'),
(324, 91, '_edit_lock', '1564559447:1'),
(326, 91, '_thumbnail_id', '47'),
(328, 94, '_edit_lock', '1564559468:1'),
(330, 94, '_thumbnail_id', '133'),
(331, 96, '_edit_lock', '1563976139:1'),
(344, 102, '_wp_attached_file', '2019/07/logo.jpg'),
(345, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:84;s:4:\"file\";s:16:\"2019/07/logo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(346, 103, '_wp_attached_file', '2019/07/cropped-logo.jpg'),
(347, 103, '_wp_attachment_context', 'custom-logo'),
(348, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:84;s:4:\"file\";s:24:\"2019/07/cropped-logo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-logo-300x82.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(349, 104, '_wp_trash_meta_status', 'publish'),
(350, 104, '_wp_trash_meta_time', '1564156428'),
(351, 105, '_wp_attached_file', '2019/07/logo.png'),
(352, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:242;s:6:\"height\";i:55;s:4:\"file\";s:16:\"2019/07/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x55.png\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 106, '_wp_attached_file', '2019/07/cropped-logo.png'),
(354, 106, '_wp_attachment_context', 'custom-logo'),
(355, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:242;s:6:\"height\";i:55;s:4:\"file\";s:24:\"2019/07/cropped-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-150x55.png\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 107, '_wp_trash_meta_status', 'publish'),
(357, 107, '_wp_trash_meta_time', '1564295221'),
(358, 108, '_wp_trash_meta_status', 'publish'),
(359, 108, '_wp_trash_meta_time', '1564295945'),
(360, 109, '_wp_trash_meta_status', 'publish'),
(361, 109, '_wp_trash_meta_time', '1564296032'),
(362, 9, '_wp_trash_meta_status', 'publish'),
(363, 9, '_wp_trash_meta_time', '1564296079'),
(364, 9, '_wp_desired_post_slug', 'about'),
(365, 54, '_wp_trash_meta_status', 'publish'),
(366, 54, '_wp_trash_meta_time', '1564296079'),
(367, 54, '_wp_desired_post_slug', 'faq'),
(368, 56, '_wp_trash_meta_status', 'publish'),
(369, 56, '_wp_trash_meta_time', '1564296079'),
(370, 56, '_wp_desired_post_slug', 'our-team'),
(371, 64, '_wp_trash_meta_status', 'publish'),
(372, 64, '_wp_trash_meta_time', '1564296080'),
(373, 64, '_wp_desired_post_slug', 'blog'),
(374, 58, '_wp_trash_meta_status', 'publish'),
(375, 58, '_wp_trash_meta_time', '1564296080'),
(376, 58, '_wp_desired_post_slug', 'call'),
(377, 62, '_wp_trash_meta_status', 'publish'),
(378, 62, '_wp_trash_meta_time', '1564296104'),
(379, 62, '_wp_desired_post_slug', 'home-2'),
(380, 110, '_edit_lock', '1564753302:1'),
(381, 112, '_menu_item_type', 'post_type'),
(382, 112, '_menu_item_menu_item_parent', '0'),
(383, 112, '_menu_item_object_id', '110'),
(384, 112, '_menu_item_object', 'page'),
(385, 112, '_menu_item_target', ''),
(386, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 112, '_menu_item_xfn', ''),
(388, 112, '_menu_item_url', ''),
(390, 113, '_edit_lock', '1564296235:1'),
(391, 114, '_edit_lock', '1564296235:1'),
(392, 115, '_edit_lock', '1564296094:1'),
(393, 116, '_edit_lock', '1564296120:1'),
(394, 118, '_edit_lock', '1564321318:1'),
(395, 118, '_customize_restore_dismissed', '1'),
(396, 119, '_wp_trash_meta_status', 'publish'),
(397, 119, '_wp_trash_meta_time', '1564321370'),
(398, 120, '_wp_trash_meta_status', 'publish'),
(399, 120, '_wp_trash_meta_time', '1564321399'),
(400, 121, '_edit_lock', '1564321872:1'),
(401, 121, '_wp_trash_meta_status', 'publish'),
(402, 121, '_wp_trash_meta_time', '1564321604'),
(403, 122, '_wp_attached_file', '2019/07/banner.jpg'),
(404, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:18:\"2019/07/banner.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(405, 123, '_wp_trash_meta_status', 'publish'),
(406, 123, '_wp_trash_meta_time', '1564321916'),
(407, 124, '_wp_trash_meta_status', 'publish'),
(408, 124, '_wp_trash_meta_time', '1564322208'),
(409, 125, '_edit_lock', '1564322632:1'),
(410, 125, '_customize_restore_dismissed', '1'),
(411, 126, '_wp_trash_meta_status', 'publish'),
(412, 126, '_wp_trash_meta_time', '1564322670'),
(413, 127, '_edit_lock', '1564324494:1'),
(414, 127, '_wp_trash_meta_status', 'publish'),
(415, 127, '_wp_trash_meta_time', '1564324351'),
(416, 128, '_edit_lock', '1564324406:1'),
(417, 128, '_wp_trash_meta_status', 'publish'),
(418, 128, '_wp_trash_meta_time', '1564324457'),
(419, 129, '_wp_trash_meta_status', 'publish'),
(420, 129, '_wp_trash_meta_time', '1564324519'),
(421, 130, '_wp_trash_meta_status', 'publish'),
(422, 130, '_wp_trash_meta_time', '1564325019'),
(423, 131, '_menu_item_type', 'post_type'),
(424, 132, '_menu_item_type', 'post_type'),
(425, 131, '_menu_item_menu_item_parent', '0'),
(426, 132, '_menu_item_menu_item_parent', '0'),
(427, 131, '_menu_item_object_id', '116'),
(428, 132, '_menu_item_object_id', '116'),
(429, 131, '_menu_item_object', 'page'),
(430, 132, '_menu_item_object', 'page'),
(431, 131, '_menu_item_target', ''),
(432, 132, '_menu_item_target', ''),
(433, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(434, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(435, 131, '_menu_item_xfn', ''),
(436, 132, '_menu_item_xfn', ''),
(437, 131, '_menu_item_url', ''),
(438, 132, '_menu_item_url', ''),
(440, 132, '_menu_item_orphaned', '1564325361'),
(441, 133, '_wp_attached_file', '2019/07/blog1.jpg'),
(442, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/07/blog1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1451116878\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(444, 96, '_wp_trash_meta_status', 'publish'),
(445, 96, '_wp_trash_meta_time', '1564326695'),
(446, 96, '_wp_desired_post_slug', 'only-post'),
(456, 136, '_edit_lock', '1564382330:1'),
(457, 137, '_wp_trash_meta_status', 'publish'),
(458, 137, '_wp_trash_meta_time', '1564383389'),
(459, 138, '_wp_trash_meta_status', 'publish'),
(460, 138, '_wp_trash_meta_time', '1564383501'),
(461, 139, '_edit_lock', '1564383657:1'),
(462, 139, '_customize_restore_dismissed', '1'),
(463, 140, '_wp_trash_meta_status', 'publish'),
(464, 140, '_wp_trash_meta_time', '1564383679'),
(465, 141, '_wp_trash_meta_status', 'publish'),
(466, 141, '_wp_trash_meta_time', '1564384550'),
(467, 142, '_wp_trash_meta_status', 'publish'),
(468, 142, '_wp_trash_meta_time', '1564384564'),
(469, 144, '_wp_trash_meta_status', 'publish'),
(470, 144, '_wp_trash_meta_time', '1564408786'),
(471, 145, '_wp_trash_meta_status', 'publish'),
(472, 145, '_wp_trash_meta_time', '1564409019'),
(473, 146, '_edit_lock', '1564409532:1'),
(474, 146, '_customize_restore_dismissed', '1'),
(475, 147, '_wp_trash_meta_status', 'publish'),
(476, 147, '_wp_trash_meta_time', '1564409701'),
(477, 148, '_wp_trash_meta_status', 'publish'),
(478, 148, '_wp_trash_meta_time', '1564409719'),
(480, 151, '_edit_lock', '1564414460:1'),
(482, 151, '_thumbnail_id', '41'),
(483, 154, '_edit_lock', '1564470068:1'),
(484, 156, '_edit_lock', '1564472539:1'),
(485, 158, '_edit_lock', '1564474924:1'),
(486, 160, '_edit_lock', '1564470275:1'),
(487, 161, '_edit_lock', '1564472547:1'),
(524, 167, '_menu_item_type', 'post_type'),
(525, 167, '_menu_item_menu_item_parent', '0'),
(526, 167, '_menu_item_object_id', '158'),
(527, 167, '_menu_item_object', 'page'),
(528, 167, '_menu_item_target', ''),
(529, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(530, 167, '_menu_item_xfn', ''),
(531, 167, '_menu_item_url', ''),
(532, 167, '_menu_item_orphaned', '1564472123'),
(533, 168, '_menu_item_type', 'post_type'),
(534, 168, '_menu_item_menu_item_parent', '0'),
(535, 168, '_menu_item_object_id', '156'),
(536, 168, '_menu_item_object', 'page'),
(537, 168, '_menu_item_target', ''),
(538, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(539, 168, '_menu_item_xfn', ''),
(540, 168, '_menu_item_url', ''),
(541, 168, '_menu_item_orphaned', '1564472124'),
(551, 170, '_menu_item_type', 'post_type'),
(552, 170, '_menu_item_menu_item_parent', '0'),
(553, 170, '_menu_item_object_id', '156'),
(554, 170, '_menu_item_object', 'page'),
(555, 170, '_menu_item_target', ''),
(556, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(557, 170, '_menu_item_xfn', ''),
(558, 170, '_menu_item_url', ''),
(559, 170, '_menu_item_orphaned', '1564472157'),
(569, 156, '_wp_page_template', 'content-bottom-layout.php'),
(570, 161, '_wp_page_template', 'content-bottom-layout.php'),
(571, 158, '_wp_page_template', 'content-bottom-layout.php'),
(572, 172, '_edit_lock', '1564476068:1'),
(574, 174, '_edit_lock', '1564479805:1'),
(575, 177, '_wp_trash_meta_status', 'publish'),
(576, 177, '_wp_trash_meta_time', '1564553368'),
(577, 179, '_edit_lock', '1564553569:1'),
(578, 178, '_edit_lock', '1564553620:1'),
(579, 180, '_edit_lock', '1564553574:1'),
(580, 181, '_edit_lock', '1564556823:1'),
(581, 182, '_wp_attached_file', '2019/07/cms-sample-image.jpg'),
(582, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2019/07/cms-sample-image.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cms-sample-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cms-sample-image-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cms-sample-image-768x256.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(584, 181, '_thumbnail_id', '122'),
(585, 184, '_edit_lock', '1564553946:1'),
(586, 185, '_edit_lock', '1564554029:1'),
(587, 186, '_edit_last', '1'),
(588, 186, '_edit_lock', '1564815419:1'),
(589, 187, '_wp_attached_file', '2019/07/11720098_898795756835548_2006014200_o_898795756835548.jpg'),
(590, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:678;s:4:\"file\";s:65:\"2019/07/11720098_898795756835548_2006014200_o_898795756835548.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"11720098_898795756835548_2006014200_o_898795756835548-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"11720098_898795756835548_2006014200_o_898795756835548-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:65:\"11720098_898795756835548_2006014200_o_898795756835548-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:66:\"11720098_898795756835548_2006014200_o_898795756835548-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(591, 186, '_thumbnail_id', '187'),
(593, 185, '_wp_trash_meta_status', 'draft'),
(594, 185, '_wp_trash_meta_time', '1564555226'),
(595, 185, '_wp_desired_post_slug', ''),
(596, 174, '_wp_trash_meta_status', 'publish'),
(597, 174, '_wp_trash_meta_time', '1564556150'),
(598, 174, '_wp_desired_post_slug', 'photo-gallery'),
(599, 172, '_wp_trash_meta_status', 'publish'),
(600, 172, '_wp_trash_meta_time', '1564556150'),
(601, 172, '_wp_desired_post_slug', 'aside-post-type'),
(602, 151, '_wp_trash_meta_status', 'publish'),
(603, 151, '_wp_trash_meta_time', '1564556151'),
(604, 151, '_wp_desired_post_slug', 'aryya-stark'),
(605, 151, '_wp_trash_meta_comments_status', 'a:1:{i:8;s:1:\"1\";}'),
(606, 181, '_edit_last', '1'),
(608, 191, '_edit_last', '1'),
(609, 191, '_edit_lock', '1564755814:1'),
(610, 191, '_thumbnail_id', '42'),
(612, 193, '_edit_last', '1'),
(613, 193, '_edit_lock', '1564558904:1'),
(614, 193, '_thumbnail_id', '45'),
(619, 196, '_edit_last', '1'),
(620, 196, '_edit_lock', '1564559401:1'),
(621, 197, '_wp_attached_file', '2019/07/10734320_729589177147256_665871499_n_729571613815679.jpg'),
(622, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:1280;s:4:\"file\";s:64:\"2019/07/10734320_729589177147256_665871499_n_729571613815679.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"10734320_729589177147256_665871499_n_729571613815679-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"10734320_729589177147256_665871499_n_729571613815679-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:65:\"10734320_729589177147256_665871499_n_729571613815679-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:65:\"10734320_729589177147256_665871499_n_729571613815679-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"news-thumb\";a:4:{s:4:\"file\";s:64:\"10734320_729589177147256_665871499_n_729571613815679-150x200.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"news-large\";a:4:{s:4:\"file\";s:64:\"10734320_729589177147256_665871499_n_729571613815679-285x380.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"news-popular\";a:4:{s:4:\"file\";s:64:\"10734320_729589177147256_665871499_n_729571613815679-113x150.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(623, 196, '_thumbnail_id', '197'),
(625, 91, '_edit_last', '1'),
(628, 94, '_edit_last', '1'),
(632, 203, '_edit_last', '1'),
(633, 203, '_edit_lock', '1564559470:1'),
(634, 204, '_wp_attached_file', '2019/07/10647302_907524025962721_514989038_o_907524025962721.jpg'),
(635, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:64:\"2019/07/10647302_907524025962721_514989038_o_907524025962721.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"10647302_907524025962721_514989038_o_907524025962721-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"10647302_907524025962721_514989038_o_907524025962721-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:65:\"10647302_907524025962721_514989038_o_907524025962721-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:65:\"10647302_907524025962721_514989038_o_907524025962721-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"news-thumb\";a:4:{s:4:\"file\";s:64:\"10647302_907524025962721_514989038_o_907524025962721-150x200.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"news-large\";a:4:{s:4:\"file\";s:64:\"10647302_907524025962721_514989038_o_907524025962721-285x380.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"news-popular\";a:4:{s:4:\"file\";s:64:\"10647302_907524025962721_514989038_o_907524025962721-113x150.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(636, 203, '_thumbnail_id', '204'),
(637, 206, '_menu_item_type', 'post_type'),
(638, 206, '_menu_item_menu_item_parent', '0'),
(639, 206, '_menu_item_object_id', '154'),
(640, 206, '_menu_item_object', 'page'),
(641, 206, '_menu_item_target', ''),
(642, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(643, 206, '_menu_item_xfn', ''),
(644, 206, '_menu_item_url', ''),
(645, 207, '_edit_last', '1'),
(646, 207, '_edit_lock', '1564753037:1'),
(647, 208, '_wp_attached_file', '2019/08/pic1.jpg'),
(648, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:715;s:6:\"height\";i:449;s:4:\"file\";s:16:\"2019/08/pic1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pic1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(649, 207, '_thumbnail_id', '208'),
(651, 210, '_edit_last', '1'),
(652, 210, '_edit_lock', '1564815156:1'),
(653, 211, '_wp_attached_file', '2019/08/pic3.jpg'),
(654, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:715;s:6:\"height\";i:449;s:4:\"file\";s:16:\"2019/08/pic3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pic3-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(655, 210, '_thumbnail_id', '211'),
(657, 213, '_edit_last', '1'),
(658, 213, '_edit_lock', '1564814801:1'),
(659, 214, '_wp_attached_file', '2019/08/pic2.jpg'),
(660, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:715;s:6:\"height\";i:449;s:4:\"file\";s:16:\"2019/08/pic2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pic2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(661, 213, '_thumbnail_id', '214'),
(663, 216, '_edit_last', '1'),
(664, 216, '_edit_lock', '1564814933:1'),
(665, 217, '_wp_attached_file', '2019/08/post3.jpg'),
(666, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:460;s:4:\"file\";s:17:\"2019/08/post3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post3-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"post3-768x302.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:302;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"post3-1024x403.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(667, 216, '_thumbnail_id', '217'),
(669, 219, '_edit_last', '1'),
(670, 219, '_edit_lock', '1564814908:1'),
(671, 220, '_wp_attached_file', '2019/08/post2.jpg'),
(672, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:460;s:4:\"file\";s:17:\"2019/08/post2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post2-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"post2-768x302.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:302;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"post2-1024x403.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(673, 219, '_thumbnail_id', '220'),
(675, 222, '_edit_last', '1'),
(676, 222, '_edit_lock', '1564814880:1'),
(677, 223, '_wp_attached_file', '2019/08/post1.jpg'),
(678, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:460;s:4:\"file\";s:17:\"2019/08/post1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"post1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"post1-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"post1-768x302.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:302;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"post1-1024x403.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(679, 222, '_thumbnail_id', '223'),
(681, 225, '_edit_last', '1'),
(682, 225, '_edit_lock', '1564755834:1'),
(683, 227, '_menu_item_type', 'post_type'),
(684, 227, '_menu_item_menu_item_parent', '0'),
(685, 227, '_menu_item_object_id', '225'),
(686, 227, '_menu_item_object', 'page'),
(687, 227, '_menu_item_target', ''),
(688, 227, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(689, 227, '_menu_item_xfn', ''),
(690, 227, '_menu_item_url', ''),
(695, 228, '_menu_item_type', 'taxonomy'),
(696, 228, '_menu_item_menu_item_parent', '0'),
(697, 228, '_menu_item_object_id', '7'),
(698, 228, '_menu_item_object', 'category'),
(699, 228, '_menu_item_target', ''),
(700, 228, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(701, 228, '_menu_item_xfn', ''),
(702, 228, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-07-22 07:17:46', '2019-07-22 07:17:46', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Winter is coming', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-07-23 14:29:57', '2019-07-23 14:29:57', '', 0, 'http://localhost/Wp_themes/?p=1', 0, 'post', '', 2),
(2, 1, '2019-07-22 07:17:46', '2019-07-22 07:17:46', '<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Wp_themes/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-07-22 18:38:23', '2019-07-22 18:38:23', '', 0, 'http://localhost/Wp_themes/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-07-22 07:17:46', '2019-07-22 07:17:46', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/Wp_themes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-07-22 08:35:19', '2019-07-22 08:35:19', '', 0, 'http://localhost/Wp_themes/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-07-22 08:35:19', '2019-07-22 08:35:19', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/Wp_themes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-07-22 08:35:19', '2019-07-22 08:35:19', '', 3, 'http://localhost/Wp_themes/2019/07/22/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-07-22 08:36:18', '2019-07-22 08:36:18', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Post', '', 'trash', 'open', 'open', '', 'post__trashed', '', '', '2019-07-23 14:29:57', '2019-07-23 14:29:57', '', 0, 'http://localhost/Wp_themes/?p=7', 0, 'post', '', 0),
(8, 1, '2019-07-22 08:36:18', '2019-07-22 08:36:18', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-22 08:36:18', '2019-07-22 08:36:18', '', 7, 'http://localhost/Wp_themes/2019/07/22/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-07-22 08:36:40', '2019-07-22 08:36:40', '<!-- wp:paragraph -->\n<p>This is about page</p>\n<!-- /wp:paragraph -->', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed', '', '', '2019-07-28 06:41:19', '2019-07-28 06:41:19', '', 0, 'http://localhost/Wp_themes/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-07-22 08:36:40', '2019-07-22 08:36:40', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-07-22 08:36:40', '2019-07-22 08:36:40', '', 9, 'http://localhost/Wp_themes/2019/07/22/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-07-22 08:36:52', '2019-07-22 08:36:52', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2019-07-23 07:10:53', '2019-07-23 07:10:53', '', 0, 'http://localhost/Wp_themes/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-07-22 08:36:52', '2019-07-22 08:36:52', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-07-22 08:36:52', '2019-07-22 08:36:52', '', 12, 'http://localhost/Wp_themes/2019/07/22/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-07-22 08:37:04', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-22 08:37:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2019-07-22 08:37:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-22 08:37:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-07-22 08:37:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-22 08:37:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2019-07-22 08:37:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-22 08:37:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2019-07-22 08:37:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-22 08:37:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-07-22 08:37:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-22 08:37:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-07-22 08:37:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-22 08:37:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=20', 1, 'nav_menu_item', '', 0),
(24, 1, '2019-07-22 08:42:11', '2019-07-22 08:42:11', '', 'bBC0nCs', '', 'inherit', 'open', 'closed', '', 'bbc0ncs', '', '', '2019-07-22 08:42:11', '2019-07-22 08:42:11', '', 7, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-07-22 08:43:51', '2019-07-22 08:43:51', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Winter is coming', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-22 08:43:51', '2019-07-22 08:43:51', '', 1, 'http://localhost/Wp_themes/2019/07/22/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-07-22 08:44:01', '2019-07-22 08:44:01', '', 'Game-of-Thrones-Wallpaper-9', '', 'inherit', 'open', 'closed', '', 'game-of-thrones-wallpaper-9', '', '', '2019-07-22 08:44:01', '2019-07-22 08:44:01', '', 1, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-07-22 16:25:50', '2019-07-22 16:25:50', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Post of Himel', '', 'trash', 'open', 'open', '', 'post-of-himel__trashed', '', '', '2019-07-23 14:29:56', '2019-07-23 14:29:56', '', 0, 'http://localhost/Wp_themes/?p=27', 0, 'post', '', 2),
(28, 1, '2019-07-22 16:25:50', '2019-07-22 16:25:50', '<!-- wp:heading -->\n<h2>Post</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Posted July 22, 2019 8:36am by&nbsp;<a href=\"http://localhost/Wp_themes/\">abirdhaka7	</a>| posted in&nbsp;<a href=\"http://localhost/Wp_themes/category/post-cat/\">Post Cat</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Post of Himel', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-07-22 16:25:50', '2019-07-22 16:25:50', '', 27, 'http://localhost/Wp_themes/2019/07/22/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-07-22 16:37:48', '2019-07-22 16:37:48', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-07-22 16:37:48', '2019-07-22 16:37:48', '', 27, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-07-22 17:18:40', '2019-07-22 17:18:40', '<!-- wp:paragraph -->\n<p> lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum </p>\n<!-- /wp:paragraph -->', 'Simple Aside', '', 'trash', 'open', 'open', '', 'simple-aside__trashed', '', '', '2019-07-23 14:29:56', '2019-07-23 14:29:56', '', 0, 'http://localhost/Wp_themes/?p=32', 0, 'post', '', 0),
(33, 1, '2019-07-22 17:18:40', '2019-07-22 17:18:40', '<!-- wp:paragraph -->\n<p> lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum  lorem ipsum </p>\n<!-- /wp:paragraph -->', 'Simple Aside', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-07-22 17:18:40', '2019-07-22 17:18:40', '', 32, 'http://localhost/Wp_themes/2019/07/22/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-07-22 17:27:28', '2019-07-22 17:27:28', '<!-- wp:html -->\nhttps://freecoursesite.com/\n<!-- /wp:html -->', 'Get free course at', '', 'trash', 'open', 'open', '', 'get-free-course-at__trashed', '', '', '2019-07-23 14:29:55', '2019-07-23 14:29:55', '', 0, 'http://localhost/Wp_themes/?p=35', 0, 'post', '', 0),
(36, 1, '2019-07-22 17:27:28', '2019-07-22 17:27:28', '<!-- wp:embed {\"url\":\"https://freecoursesite.com/\"} -->\n<figure class=\"wp-block-embed\"><div class=\"wp-block-embed__wrapper\">\nhttps://freecoursesite.com/\n</div></figure>\n<!-- /wp:embed -->', 'Get free course at', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-07-22 17:27:28', '2019-07-22 17:27:28', '', 35, 'http://localhost/Wp_themes/2019/07/22/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-07-22 17:28:03', '2019-07-22 17:28:03', '<!-- wp:html -->\nhttps://freecoursesite.com/\n<!-- /wp:html -->', 'Get free course at', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-07-22 17:28:03', '2019-07-22 17:28:03', '', 35, 'http://localhost/Wp_themes/2019/07/22/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-07-22 17:28:14', '2019-07-22 17:28:14', '<!-- wp:html -->\nhttps://freecoursesite.com/\n<!-- /wp:html -->', 'Get free course at', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2019-07-22 17:28:14', '2019-07-22 17:28:14', '', 35, 'http://localhost/Wp_themes/2019/07/22/35-autosave-v1/', 0, 'revision', '', 0),
(40, 1, '2019-07-22 17:32:40', '2019-07-22 17:32:40', '<!-- wp:gallery {\"ids\":[41,42,43,44,45,47],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/?attachment_id=41\" class=\"wp-image-41\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/?attachment_id=42\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/?attachment_id=43\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\" alt=\"\" data-id=\"44\" data-link=\"http://localhost/Wp_themes/?attachment_id=44\" class=\"wp-image-44\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/?attachment_id=45\" class=\"wp-image-45\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\" alt=\"\" data-id=\"47\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery/60346400_1061767447353939_48910344537505792_n/\" class=\"wp-image-47\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Photo Gallery', '', 'trash', 'open', 'open', '', 'gallery__trashed', '', '', '2019-07-23 14:29:54', '2019-07-23 14:29:54', '', 0, 'http://localhost/Wp_themes/?p=40', 0, 'post', '', 0),
(41, 1, '2019-07-22 17:32:26', '2019-07-22 17:32:26', '', '25484', '', 'inherit', 'open', 'closed', '', '25484', '', '', '2019-07-22 17:32:26', '2019-07-22 17:32:26', '', 40, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/25484.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-07-22 17:32:27', '2019-07-22 17:32:27', '', 'bBC0nCs', '', 'inherit', 'open', 'closed', '', 'bbc0ncs-2', '', '', '2019-07-22 17:32:27', '2019-07-22 17:32:27', '', 40, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-07-22 17:32:27', '2019-07-22 17:32:27', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2019-07-22 17:32:27', '2019-07-22 17:32:27', '', 40, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-07-22 17:32:28', '2019-07-22 17:32:28', '', 'Game-of-Thrones-Wallpaper-9', '', 'inherit', 'open', 'closed', '', 'game-of-thrones-wallpaper-9-2', '', '', '2019-07-22 17:32:28', '2019-07-22 17:32:28', '', 40, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-07-22 17:32:29', '2019-07-22 17:32:29', '', 'thumb-1920-637668', '', 'inherit', 'open', 'closed', '', 'thumb-1920-637668', '', '', '2019-07-22 17:32:29', '2019-07-22 17:32:29', '', 40, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-07-22 17:32:40', '2019-07-22 17:32:40', '<!-- wp:gallery {\"ids\":[41,42,43,44,45]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/?attachment_id=41\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/?attachment_id=42\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/?attachment_id=43\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\" alt=\"\" data-id=\"44\" data-link=\"http://localhost/Wp_themes/?attachment_id=44\" class=\"wp-image-44\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/?attachment_id=45\" class=\"wp-image-45\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-22 17:32:40', '2019-07-22 17:32:40', '', 40, 'http://localhost/Wp_themes/2019/07/22/40-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-07-22 17:33:14', '2019-07-22 17:33:14', '', '60346400_1061767447353939_48910344537505792_n', '', 'inherit', 'open', 'closed', '', '60346400_1061767447353939_48910344537505792_n', '', '', '2019-07-22 17:33:14', '2019-07-22 17:33:14', '', 40, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-07-22 17:33:17', '2019-07-22 17:33:17', '<!-- wp:gallery {\"ids\":[41,42,43,44,45,47]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/?attachment_id=41\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/?attachment_id=42\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/?attachment_id=43\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\" alt=\"\" data-id=\"44\" data-link=\"http://localhost/Wp_themes/?attachment_id=44\" class=\"wp-image-44\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/?attachment_id=45\" class=\"wp-image-45\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\" alt=\"\" data-id=\"47\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery/60346400_1061767447353939_48910344537505792_n/\" class=\"wp-image-47\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-22 17:33:17', '2019-07-22 17:33:17', '', 40, 'http://localhost/Wp_themes/2019/07/22/40-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-07-22 17:57:38', '2019-07-22 17:57:38', '<!-- wp:gallery {\"ids\":[41,42,43,44,45,47],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/?attachment_id=41\" class=\"wp-image-41\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/?attachment_id=42\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/?attachment_id=43\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\" alt=\"\" data-id=\"44\" data-link=\"http://localhost/Wp_themes/?attachment_id=44\" class=\"wp-image-44\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/?attachment_id=45\" class=\"wp-image-45\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\" alt=\"\" data-id=\"47\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery/60346400_1061767447353939_48910344537505792_n/\" class=\"wp-image-47\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-22 17:57:38', '2019-07-22 17:57:38', '', 40, 'http://localhost/Wp_themes/2019/07/22/40-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-07-22 18:02:33', '2019-07-22 18:02:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Post of Himel', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-07-22 18:02:33', '2019-07-22 18:02:33', '', 27, 'http://localhost/Wp_themes/2019/07/22/27-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-07-22 18:18:28', '2019-07-22 18:18:28', '<!-- wp:paragraph -->\n<p>This is about page</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-07-22 18:18:28', '2019-07-22 18:18:28', '', 9, 'http://localhost/Wp_themes/2019/07/22/9-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-07-22 18:19:43', '2019-07-22 18:19:43', '<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Wp_themes/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-07-22 18:19:43', '2019-07-22 18:19:43', '', 2, 'http://localhost/Wp_themes/2019/07/22/2-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-07-22 18:22:05', '2019-07-22 18:22:05', '', 'FAQ', '', 'trash', 'closed', 'closed', '', 'faq__trashed', '', '', '2019-07-28 06:41:19', '2019-07-28 06:41:19', '', 9, 'http://localhost/Wp_themes/?page_id=54', 0, 'page', '', 0),
(55, 1, '2019-07-22 18:22:05', '2019-07-22 18:22:05', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-07-22 18:22:05', '2019-07-22 18:22:05', '', 54, 'http://localhost/Wp_themes/2019/07/22/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-07-22 18:22:19', '2019-07-22 18:22:19', '', 'OUR TEAM', '', 'trash', 'closed', 'closed', '', 'our-team__trashed', '', '', '2019-07-28 06:41:19', '2019-07-28 06:41:19', '', 9, 'http://localhost/Wp_themes/?page_id=56', 0, 'page', '', 0),
(57, 1, '2019-07-22 18:22:19', '2019-07-22 18:22:19', '', 'OUR TEAM', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-07-22 18:22:19', '2019-07-22 18:22:19', '', 56, 'http://localhost/Wp_themes/2019/07/22/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-07-22 18:38:45', '2019-07-22 18:38:45', '', 'Call', '', 'trash', 'closed', 'closed', '', 'call__trashed', '', '', '2019-07-28 06:41:20', '2019-07-28 06:41:20', '', 0, 'http://localhost/Wp_themes/?page_id=58', 0, 'page', '', 0),
(59, 1, '2019-07-22 18:38:45', '2019-07-22 18:38:45', '', 'Call', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-07-22 18:38:45', '2019-07-22 18:38:45', '', 58, 'http://localhost/Wp_themes/2019/07/22/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-07-23 07:03:21', '2019-07-23 07:03:21', '<!-- wp:gallery {\"ids\":[41,42,43,44,45,47],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/?attachment_id=41\" class=\"wp-image-41\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/?attachment_id=42\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/?attachment_id=43\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9-1-1024x576.jpg\" alt=\"\" data-id=\"44\" data-link=\"http://localhost/Wp_themes/?attachment_id=44\" class=\"wp-image-44\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/?attachment_id=45\" class=\"wp-image-45\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\"><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\" alt=\"\" data-id=\"47\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery/60346400_1061767447353939_48910344537505792_n/\" class=\"wp-image-47\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Photo Gallery', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-23 07:03:21', '2019-07-23 07:03:21', '', 40, 'http://localhost/Wp_themes/2019/07/23/40-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-07-23 07:10:16', '2019-07-23 07:10:16', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home-2__trashed', '', '', '2019-07-28 06:41:45', '2019-07-28 06:41:45', '', 64, 'http://localhost/Wp_themes/?page_id=62', 0, 'page', '', 0),
(63, 1, '2019-07-23 07:10:16', '2019-07-23 07:10:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-07-23 07:10:16', '2019-07-23 07:10:16', '', 62, 'http://localhost/Wp_themes/2019/07/23/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-07-23 07:10:29', '2019-07-23 07:10:29', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2019-07-28 06:41:20', '2019-07-28 06:41:20', '', 0, 'http://localhost/Wp_themes/?page_id=64', 0, 'page', '', 0),
(65, 1, '2019-07-23 07:10:29', '2019-07-23 07:10:29', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-07-23 07:10:29', '2019-07-23 07:10:29', '', 64, 'http://localhost/Wp_themes/2019/07/23/64-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-07-23 14:08:43', '2019-07-23 14:08:43', '', 'Photo', '', 'trash', 'open', 'open', '', 'photo__trashed', '', '', '2019-07-23 14:29:54', '2019-07-23 14:29:54', '', 0, 'http://localhost/Wp_themes/?p=70', 0, 'post', '', 0),
(71, 1, '2019-07-23 14:08:43', '2019-07-23 14:08:43', '', 'Photo', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-07-23 14:08:43', '2019-07-23 14:08:43', '', 70, 'http://localhost/Wp_themes/2019/07/23/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-07-23 14:11:36', '2019-07-23 14:11:36', '', 'afasf', '', 'trash', 'open', 'open', '', 'afasf__trashed', '', '', '2019-07-23 14:29:53', '2019-07-23 14:29:53', '', 0, 'http://localhost/Wp_themes/?p=72', 0, 'post', '', 0),
(73, 1, '2019-07-23 14:11:36', '2019-07-23 14:11:36', '', 'afasf', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-07-23 14:11:36', '2019-07-23 14:11:36', '', 72, 'http://localhost/Wp_themes/2019/07/23/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-07-23 14:30:38', '2019-07-23 14:30:38', '<!-- wp:paragraph -->\n<p>I like to code I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code </p>\n<!-- /wp:paragraph -->', 'Photo 1', '', 'trash', 'open', 'open', '', 'photo-1__trashed', '', '', '2019-07-24 13:38:28', '2019-07-24 13:38:28', '', 0, 'http://localhost/Wp_themes/?p=74', 0, 'post', '', 0),
(75, 1, '2019-07-23 14:30:38', '2019-07-23 14:30:38', '<!-- wp:paragraph -->\n<p>I like to code</p>\n<!-- /wp:paragraph -->', 'Photo 1', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-07-23 14:30:38', '2019-07-23 14:30:38', '', 74, 'http://localhost/Wp_themes/2019/07/23/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-07-23 14:31:01', '2019-07-23 14:31:01', '<!-- wp:paragraph -->\n<p>I like to code I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code  I like to code </p>\n<!-- /wp:paragraph -->', 'Photo 1', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-07-23 14:31:01', '2019-07-23 14:31:01', '', 74, 'http://localhost/Wp_themes/2019/07/23/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-07-23 14:33:20', '2019-07-23 14:33:20', '<!-- wp:paragraph -->\n<p>\n\nI like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code\n\n</p>\n<!-- /wp:paragraph -->', 'Photo 2', '', 'trash', 'open', 'open', '', 'photo-2__trashed', '', '', '2019-07-24 13:38:27', '2019-07-24 13:38:27', '', 0, 'http://localhost/Wp_themes/?p=77', 0, 'post', '', 0),
(78, 1, '2019-07-23 14:33:20', '2019-07-23 14:33:20', '<!-- wp:paragraph -->\n<p>\n\nI like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code\n\n</p>\n<!-- /wp:paragraph -->', 'Photo 2', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-07-23 14:33:20', '2019-07-23 14:33:20', '', 77, 'http://localhost/Wp_themes/2019/07/23/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-07-23 14:33:57', '2019-07-23 14:33:57', '<!-- wp:paragraph -->\n<p>\n\n I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code \n\n</p>\n<!-- /wp:paragraph -->', 'Photo 3', '', 'trash', 'open', 'open', '', 'photo-3__trashed', '', '', '2019-07-24 13:38:26', '2019-07-24 13:38:26', '', 0, 'http://localhost/Wp_themes/?p=79', 0, 'post', '', 0),
(80, 1, '2019-07-23 14:33:57', '2019-07-23 14:33:57', '<!-- wp:paragraph -->\n<p>\n\n I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code \n\n</p>\n<!-- /wp:paragraph -->', 'Photo 3', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-07-23 14:33:57', '2019-07-23 14:33:57', '', 79, 'http://localhost/Wp_themes/2019/07/23/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-07-23 14:36:04', '2019-07-23 14:36:04', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 4', '', 'trash', 'open', 'open', '', 'photo-4__trashed', '', '', '2019-07-24 13:38:25', '2019-07-24 13:38:25', '', 0, 'http://localhost/Wp_themes/?p=81', 0, 'post', '', 0),
(82, 1, '2019-07-23 14:36:04', '2019-07-23 14:36:04', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 4', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-07-23 14:36:04', '2019-07-23 14:36:04', '', 81, 'http://localhost/Wp_themes/2019/07/23/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-07-23 14:37:10', '2019-07-23 14:37:10', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 5', '', 'trash', 'open', 'open', '', 'phot-5__trashed', '', '', '2019-07-24 13:38:24', '2019-07-24 13:38:24', '', 0, 'http://localhost/Wp_themes/?p=84', 0, 'post', '', 0),
(85, 1, '2019-07-23 14:37:10', '2019-07-23 14:37:10', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Phot 5', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-07-23 14:37:10', '2019-07-23 14:37:10', '', 84, 'http://localhost/Wp_themes/2019/07/23/84-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2019-07-23 14:37:15', '2019-07-23 14:37:15', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 5', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-07-23 14:37:15', '2019-07-23 14:37:15', '', 84, 'http://localhost/Wp_themes/2019/07/23/84-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-07-23 14:37:56', '2019-07-23 14:37:56', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 6', '', 'trash', 'open', 'open', '', 'photo-6__trashed', '', '', '2019-07-24 13:38:24', '2019-07-24 13:38:24', '', 0, 'http://localhost/Wp_themes/?p=87', 0, 'post', '', 0),
(88, 1, '2019-07-23 14:37:56', '2019-07-23 14:37:56', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 6', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-07-23 14:37:56', '2019-07-23 14:37:56', '', 87, 'http://localhost/Wp_themes/2019/07/23/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-07-23 14:38:51', '2019-07-23 14:38:51', '<!-- wp:paragraph -->\n<p><a href=\"http://localhost/Wp_themes/2019/07/23/photo-6/\">View Post</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 6', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-07-23 14:38:51', '2019-07-23 14:38:51', '', 87, 'http://localhost/Wp_themes/2019/07/23/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-07-23 14:39:41', '2019-07-23 14:39:41', '<!-- wp:paragraph -->\n<p>I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code I like to code<br></p>\n<!-- /wp:paragraph -->', 'Photo 6', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-07-23 14:39:41', '2019-07-23 14:39:41', '', 87, 'http://localhost/Wp_themes/2019/07/23/87-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-07-24 13:39:16', '2019-07-24 13:39:16', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->', 'Business post 2', '', 'publish', 'open', 'open', '', 'hello-abir', '', '', '2019-07-31 07:50:45', '2019-07-31 07:50:45', '', 0, 'http://localhost/Wp_themes/?p=91', 0, 'post', '', 1),
(92, 1, '2019-07-24 13:39:16', '2019-07-24 13:39:16', '<!-- wp:paragraph -->\n<p>Content</p>\n<!-- /wp:paragraph -->', 'Hello Abir', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-07-24 13:39:16', '2019-07-24 13:39:16', '', 91, 'http://localhost/Wp_themes/2019/07/24/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-07-24 13:40:00', '2019-07-24 13:40:00', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->', 'Business post 1', '', 'publish', 'open', 'open', '', 'blog-post', '', '', '2019-07-31 07:51:07', '2019-07-31 07:51:07', '', 0, 'http://localhost/Wp_themes/?p=94', 0, 'post', '', 2),
(95, 1, '2019-07-24 13:40:00', '2019-07-24 13:40:00', '<!-- wp:paragraph -->\n<p>content</p>\n<!-- /wp:paragraph -->', 'Blog post', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2019-07-24 13:40:00', '2019-07-24 13:40:00', '', 94, 'http://localhost/Wp_themes/2019/07/24/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-07-24 13:46:18', '2019-07-24 13:46:18', '<!-- wp:paragraph -->\n<p> Only Post content no images</p>\n<!-- /wp:paragraph -->', 'Only Post', '', 'trash', 'open', 'open', '', 'only-post__trashed', '', '', '2019-07-28 15:11:35', '2019-07-28 15:11:35', '', 0, 'http://localhost/Wp_themes/?p=96', 0, 'post', '', 0),
(97, 1, '2019-07-24 13:46:18', '2019-07-24 13:46:18', '<!-- wp:paragraph -->\n<p> Only Post content no images</p>\n<!-- /wp:paragraph -->', 'Only Post', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-07-24 13:46:18', '2019-07-24 13:46:18', '', 96, 'http://localhost/Wp_themes/2019/07/24/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-07-24 13:51:47', '2019-07-24 13:51:47', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Blog post', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2019-07-24 13:51:47', '2019-07-24 13:51:47', '', 94, 'http://localhost/Wp_themes/2019/07/24/94-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-07-24 13:52:00', '2019-07-24 13:52:00', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Hello Abir', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-07-24 13:52:00', '2019-07-24 13:52:00', '', 91, 'http://localhost/Wp_themes/2019/07/24/91-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-07-26 15:53:31', '2019-07-26 15:53:31', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-07-26 15:53:31', '2019-07-26 15:53:31', '', 0, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-07-26 15:53:44', '2019-07-26 15:53:44', 'http://localhost/Wp_themes/wp-content/uploads/2019/07/cropped-logo.jpg', 'cropped-logo.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-jpg', '', '', '2019-07-26 15:53:44', '2019-07-26 15:53:44', '', 0, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/cropped-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2019-07-26 15:53:48', '2019-07-26 15:53:48', '{\n    \"myshop::custom_logo\": {\n        \"value\": 103,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-26 15:53:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dca567c6-249b-4506-bc2d-8a6b3b125ff5', '', '', '2019-07-26 15:53:48', '2019-07-26 15:53:48', '', 0, 'http://localhost/Wp_themes/2019/07/26/dca567c6-249b-4506-bc2d-8a6b3b125ff5/', 0, 'customize_changeset', '', 0),
(105, 1, '2019-07-28 06:26:47', '2019-07-28 06:26:47', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-07-28 06:26:47', '2019-07-28 06:26:47', '', 0, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/logo.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2019-07-28 06:26:57', '2019-07-28 06:26:57', 'http://localhost/Wp_themes/wp-content/uploads/2019/07/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2019-07-28 06:26:57', '2019-07-28 06:26:57', '', 0, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2019-07-28 06:27:01', '2019-07-28 06:27:01', '{\n    \"business_theme::custom_logo\": {\n        \"value\": 106,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 06:27:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'add573f7-39e8-4d71-acd2-295fecb470a3', '', '', '2019-07-28 06:27:01', '2019-07-28 06:27:01', '', 0, 'http://localhost/Wp_themes/2019/07/28/add573f7-39e8-4d71-acd2-295fecb470a3/', 0, 'customize_changeset', '', 0),
(108, 1, '2019-07-28 06:39:05', '2019-07-28 06:39:05', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 06:39:05\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 06:39:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aae9e1f4-263f-44b2-b0bd-c792bff7ff7b', '', '', '2019-07-28 06:39:05', '2019-07-28 06:39:05', '', 0, 'http://localhost/Wp_themes/2019/07/28/aae9e1f4-263f-44b2-b0bd-c792bff7ff7b/', 0, 'customize_changeset', '', 0),
(109, 1, '2019-07-28 06:40:31', '2019-07-28 06:40:31', '{\n    \"page_on_front\": {\n        \"value\": \"62\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 06:40:31\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"64\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 06:40:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2104ca7c-daaf-44cb-8a3c-f9f34d2bc824', '', '', '2019-07-28 06:40:31', '2019-07-28 06:40:31', '', 0, 'http://localhost/Wp_themes/2019/07/28/2104ca7c-daaf-44cb-8a3c-f9f34d2bc824/', 0, 'customize_changeset', '', 0),
(110, 1, '2019-07-28 06:42:06', '2019-07-28 06:42:06', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-30 06:55:38', '2019-07-30 06:55:38', '', 0, 'http://localhost/Wp_themes/?page_id=110', 0, 'page', '', 0),
(111, 1, '2019-07-28 06:42:06', '2019-07-28 06:42:06', '', 'home', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-07-28 06:42:06', '2019-07-28 06:42:06', '', 110, 'http://localhost/Wp_themes/2019/07/28/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-07-28 06:42:40', '2019-07-28 06:42:40', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2019-08-03 06:49:26', '2019-08-03 06:49:26', '', 0, 'http://localhost/Wp_themes/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2019-07-28 06:43:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-28 06:43:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=113', 0, 'post', '', 0),
(114, 1, '2019-07-28 06:43:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-28 06:43:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=114', 0, 'post', '', 0),
(115, 1, '2019-07-28 06:43:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-28 06:43:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=115', 0, 'post', '', 0),
(116, 1, '2019-07-28 06:44:12', '2019-07-28 06:44:12', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-07-28 06:44:12', '2019-07-28 06:44:12', '', 0, 'http://localhost/Wp_themes/?page_id=116', 0, 'page', '', 0),
(117, 1, '2019-07-28 06:44:12', '2019-07-28 06:44:12', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2019-07-28 06:44:12', '2019-07-28 06:44:12', '', 116, 'http://localhost/Wp_themes/2019/07/28/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-07-28 13:41:42', '0000-00-00 00:00:00', '{\n    \"business_theme::banner_heading\": {\n        \"value\": \"Banner Heading\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:37:42\"\n    },\n    \"business_theme::banner_text\": {\n        \"value\": \"sss\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:41:42\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '345ba087-3001-42fd-ac3a-9014f417afed', '', '', '2019-07-28 13:41:42', '2019-07-28 13:41:42', '', 0, 'http://localhost/Wp_themes/?p=118', 0, 'customize_changeset', '', 0),
(119, 1, '2019-07-28 13:42:50', '2019-07-28 13:42:50', '{\n    \"business_theme::banner_btn_text\": {\n        \"value\": \"xscs\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:42:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42e2c917-4b95-48a2-8928-18a56a3078de', '', '', '2019-07-28 13:42:50', '2019-07-28 13:42:50', '', 0, 'http://localhost/Wp_themes/2019/07/28/42e2c917-4b95-48a2-8928-18a56a3078de/', 0, 'customize_changeset', '', 0),
(120, 1, '2019-07-28 13:43:18', '2019-07-28 13:43:18', '{\n    \"business_theme::banner_btn_text\": {\n        \"value\": \"sign up\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:43:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7c1f5b12-2da9-4b18-9b26-4c130240e753', '', '', '2019-07-28 13:43:18', '2019-07-28 13:43:18', '', 0, 'http://localhost/Wp_themes/2019/07/28/7c1f5b12-2da9-4b18-9b26-4c130240e753/', 0, 'customize_changeset', '', 0),
(121, 1, '2019-07-28 13:46:43', '2019-07-28 13:46:43', '{\n    \"business_theme::banner_btn_text\": {\n        \"value\": \"SIGN UP TODAY\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:46:40\"\n    },\n    \"business_theme::banner_btn_url\": {\n        \"value\": \"https://www.facebook.com/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:46:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1db09c3f-d0ae-4532-9195-efa4a87345a5', '', '', '2019-07-28 13:46:43', '2019-07-28 13:46:43', '', 0, 'http://localhost/Wp_themes/?p=121', 0, 'customize_changeset', '', 0),
(122, 1, '2019-07-28 13:51:49', '2019-07-28 13:51:49', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2019-07-28 13:51:49', '2019-07-28 13:51:49', '', 0, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2019-07-28 13:51:55', '2019-07-28 13:51:55', '{\n    \"business_theme::banner_image\": {\n        \"value\": \"http://localhost/Wp_themes/wp-content/uploads/2019/07/banner.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:51:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2fd8e001-0cb3-476f-bd8a-44813d79af39', '', '', '2019-07-28 13:51:55', '2019-07-28 13:51:55', '', 0, 'http://localhost/Wp_themes/2019/07/28/2fd8e001-0cb3-476f-bd8a-44813d79af39/', 0, 'customize_changeset', '', 0),
(124, 1, '2019-07-28 13:56:47', '2019-07-28 13:56:47', '{\n    \"business_theme::box1_text\": {\n        \"value\": \"Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:56:47\"\n    },\n    \"business_theme::box2_heading\": {\n        \"value\": \"Box 2 heading \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:56:47\"\n    },\n    \"business_theme::box2_text\": {\n        \"value\": \"This is dummy text asasasa\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:56:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2f465f6b-335a-4e0e-a2cb-17b4516da4f9', '', '', '2019-07-28 13:56:47', '2019-07-28 13:56:47', '', 0, 'http://localhost/Wp_themes/2019/07/28/2f465f6b-335a-4e0e-a2cb-17b4516da4f9/', 0, 'customize_changeset', '', 0),
(125, 1, '2019-07-28 13:58:55', '0000-00-00 00:00:00', '{\n    \"business_theme::box1_icon\": {\n        \"value\": \"facebook\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 13:58:55\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5e07bf3e-7cf6-4548-b324-e5cf78a302da', '', '', '2019-07-28 13:58:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=125', 0, 'customize_changeset', '', 0),
(126, 1, '2019-07-28 14:04:30', '2019-07-28 14:04:30', '{\n    \"business_theme::box2_text\": {\n        \"value\": \"Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:04:30\"\n    },\n    \"business_theme::box2_icon\": {\n        \"value\": \"book\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:04:30\"\n    },\n    \"business_theme::box3_text\": {\n        \"value\": \"Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:04:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb31d0b4-a2fc-49b1-8c91-f3ad0ca4724b', '', '', '2019-07-28 14:04:30', '2019-07-28 14:04:30', '', 0, 'http://localhost/Wp_themes/2019/07/28/cb31d0b4-a2fc-49b1-8c91-f3ad0ca4724b/', 0, 'customize_changeset', '', 0),
(127, 1, '2019-07-28 14:32:31', '2019-07-28 14:32:31', '{\n    \"sidebars_widgets[content-region-1]\": {\n        \"value\": [\n            \"text-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:29:07\"\n    },\n    \"widget_text[10]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiJDbGVhbiBCb290c3RyYXAgVGVhbSI7czo0OiJ0ZXh0IjtzOjE0MjoiPHAgY2xhc3M9ImxlYWQiPkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIFF1aXNxdWUgc2FwaWVuIHNlbSwgbGFvcmVldCBldSB0ZW1wdXMgdml0YWUsIHNvbGxpY2l0dWRpbiBldSBvZGlvPC9wPiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Clean Bootstrap Team\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8e75b3b30c066f4a7e08225656a5b919\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:29:25\"\n    },\n    \"sidebars_widgets[content-region-2]\": {\n        \"value\": [\n            \"text-11\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:29:25\"\n    },\n    \"widget_text[11]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjU1MjoiPGRpdiBjbGFzcz0iY29sLW1kLTUiPjxpbWcgc3JjPSJpbWcvcGljMS5qcGciIC8+PC9kaXY+DQo8ZGl2IGNsYXNzPSJjb2wtbWQtNyI+DQo8aDM+VGhlbWUgRmVhdHVyZXM8L2gzPg0KPHVsIGNsYXNzPSJsaXN0LWdyb3VwIj4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gQ2xlYW4gQ29kZTwvbGk+DQogCTxsaSBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj48aSBjbGFzcz0iZmEgZmEtY2hlY2siIGFyaWEtaGlkZGVuPSJ0cnVlIj48L2k+IEN1c3RvbSBTaG93Y2FzZSBBcmVhPC9saT4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gQm9vdHN0cmFwIDMgRnJhbWV3b3JrPC9saT4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gTXVsdGlwbGUgQ29sb3IgQ2hvaWNlczwvbGk+DQo8L3VsPg0KPC9kaXY+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2799ee870d85c0d656169c471e1effce\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:30:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a0a210d-83f1-4227-99e7-0116516b1cdf', '', '', '2019-07-28 14:32:31', '2019-07-28 14:32:31', '', 0, 'http://localhost/Wp_themes/?p=127', 0, 'customize_changeset', '', 0),
(128, 1, '2019-07-28 14:34:17', '2019-07-28 14:34:17', '{\n    \"widget_text[11]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjYwMzoiPGRpdiBjbGFzcz0iY29sLW1kLTUiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1dwX3RoZW1lc1x3cC1jb250ZW50XHRoZW1lc1xidXNpbmVzc190aGVtZVxpbWciIC8+PC9kaXY+DQo8ZGl2IGNsYXNzPSJjb2wtbWQtNyI+DQo8aDM+VGhlbWUgRmVhdHVyZXM8L2gzPg0KPHVsIGNsYXNzPSJsaXN0LWdyb3VwIj4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gQ2xlYW4gQ29kZTwvbGk+DQogCTxsaSBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj48aSBjbGFzcz0iZmEgZmEtY2hlY2siIGFyaWEtaGlkZGVuPSJ0cnVlIj48L2k+IEN1c3RvbSBTaG93Y2FzZSBBcmVhPC9saT4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gQm9vdHN0cmFwIDMgRnJhbWV3b3JrPC9saT4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gTXVsdGlwbGUgQ29sb3IgQ2hvaWNlczwvbGk+DQo8L3VsPg0KPC9kaXY+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8f4405df38aa049a509f4c6c8b7ccfe9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:34:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4fa6b853-e427-4914-b079-5e327030734f', '', '', '2019-07-28 14:34:17', '2019-07-28 14:34:17', '', 0, 'http://localhost/Wp_themes/?p=128', 0, 'customize_changeset', '', 0),
(129, 1, '2019-07-28 14:35:18', '2019-07-28 14:35:18', '{\n    \"widget_text[11]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjYwODoiPGRpdiBjbGFzcz0iY29sLW1kLTUiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1dwX3RoZW1lc1x3cC1jb250ZW50XHRoZW1lc1xidXNpbmVzc190aGVtZVxwaWMxLmpwZyIgLz48L2Rpdj4NCjxkaXYgY2xhc3M9ImNvbC1tZC03Ij4NCjxoMz5UaGVtZSBGZWF0dXJlczwvaDM+DQo8dWwgY2xhc3M9Imxpc3QtZ3JvdXAiPg0KIAk8bGkgY2xhc3M9Imxpc3QtZ3JvdXAtaXRlbSI+PGkgY2xhc3M9ImZhIGZhLWNoZWNrIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9pPiBDbGVhbiBDb2RlPC9saT4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gQ3VzdG9tIFNob3djYXNlIEFyZWE8L2xpPg0KIAk8bGkgY2xhc3M9Imxpc3QtZ3JvdXAtaXRlbSI+PGkgY2xhc3M9ImZhIGZhLWNoZWNrIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9pPiBCb290c3RyYXAgMyBGcmFtZXdvcms8L2xpPg0KIAk8bGkgY2xhc3M9Imxpc3QtZ3JvdXAtaXRlbSI+PGkgY2xhc3M9ImZhIGZhLWNoZWNrIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9pPiBNdWx0aXBsZSBDb2xvciBDaG9pY2VzPC9saT4NCjwvdWw+DQo8L2Rpdj4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"896cd53d8fe00635b2fd26b63a356bd7\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:35:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40425df4-4516-4945-93b8-6aec6ebf8a98', '', '', '2019-07-28 14:35:18', '2019-07-28 14:35:18', '', 0, 'http://localhost/Wp_themes/2019/07/28/40425df4-4516-4945-93b8-6aec6ebf8a98/', 0, 'customize_changeset', '', 0),
(130, 1, '2019-07-28 14:43:38', '2019-07-28 14:43:38', '{\n    \"widget_text[11]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjYwODoiPGRpdiBjbGFzcz0iY29sLW1kLTUiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1dwX3RoZW1lc1x3cC1jb250ZW50XHRoZW1lc1xidXNpbmVzc190aGVtZVxwaWMxLmpwZyIgLz48L2Rpdj4NCjxkaXYgY2xhc3M9ImNvbC1tZC03Ij4NCjxoMz5UaGVtZSBGZWF0dXJlczwvaDM+DQo8dWwgY2xhc3M9Imxpc3QtZ3JvdXAiPg0KIAk8bGkgY2xhc3M9Imxpc3QtZ3JvdXAtaXRlbSI+PGkgY2xhc3M9ImZhIGZhLWNoZWNrIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9pPiBDbGVhbiBDb2RlPC9saT4NCiAJPGxpIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPjxpIGNsYXNzPSJmYSBmYS1jaGVjayIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4gQ3VzdG9tIFNob3djYXNlIEFyZWE8L2xpPg0KIAk8bGkgY2xhc3M9Imxpc3QtZ3JvdXAtaXRlbSI+PGkgY2xhc3M9ImZhIGZhLWNoZWNrIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9pPiBCb290c3RyYXAgMyBGcmFtZXdvcms8L2xpPg0KIAk8bGkgY2xhc3M9Imxpc3QtZ3JvdXAtaXRlbSI+PGkgY2xhc3M9ImZhIGZhLWNoZWNrIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9pPiBNdWx0aXBsZSBDb2xvciBDaG9pY2VzPC9saT4NCjwvdWw+DQo8L2Rpdj4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"896cd53d8fe00635b2fd26b63a356bd7\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-28 14:43:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a0fb1aa7-f1d7-454d-975d-7824dd6a2099', '', '', '2019-07-28 14:43:38', '2019-07-28 14:43:38', '', 0, 'http://localhost/Wp_themes/2019/07/28/a0fb1aa7-f1d7-454d-975d-7824dd6a2099/', 0, 'customize_changeset', '', 0),
(131, 1, '2019-07-28 14:49:27', '2019-07-28 14:49:27', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-08-03 06:49:27', '2019-08-03 06:49:27', '', 0, 'http://localhost/Wp_themes/?p=131', 3, 'nav_menu_item', '', 0),
(132, 1, '2019-07-28 14:49:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-28 14:49:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=132', 1, 'nav_menu_item', '', 0),
(133, 1, '2019-07-28 15:09:57', '2019-07-28 15:09:57', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2019-07-28 15:09:57', '2019-07-28 15:09:57', '', 94, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/blog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2019-07-28 16:17:35', '2019-07-28 16:17:35', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Wp_themes/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-07-28 16:17:35', '2019-07-28 16:17:35', '', 2, 'http://localhost/Wp_themes/2019/07/28/2-autosave-v1/', 0, 'revision', '', 0),
(136, 1, '2019-07-29 06:38:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-29 06:38:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=136', 0, 'post', '', 0),
(137, 1, '2019-07-29 06:56:29', '2019-07-29 06:56:29', '{\n    \"cleancut_html::showcase_height\": {\n        \"value\": \"800\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 06:56:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0d1aeae3-45e0-4d95-a033-6e183bfa8a43', '', '', '2019-07-29 06:56:29', '2019-07-29 06:56:29', '', 0, 'http://localhost/Wp_themes/2019/07/29/0d1aeae3-45e0-4d95-a033-6e183bfa8a43/', 0, 'customize_changeset', '', 0),
(138, 1, '2019-07-29 06:58:21', '2019-07-29 06:58:21', '{\n    \"cleancut_html::showcase_height\": {\n        \"value\": \"500\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 06:58:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9fd308c-526f-4a41-a184-8c7e75596f8b', '', '', '2019-07-29 06:58:21', '2019-07-29 06:58:21', '', 0, 'http://localhost/Wp_themes/2019/07/29/c9fd308c-526f-4a41-a184-8c7e75596f8b/', 0, 'customize_changeset', '', 0),
(139, 1, '2019-07-29 07:00:57', '0000-00-00 00:00:00', '{\n    \"cleancut_html::showcase_heading\": {\n        \"value\": \"Clean Cut Theame\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 07:00:57\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '679c1ff3-f0ef-4890-9bdb-231ef67f37c0', '', '', '2019-07-29 07:00:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=139', 0, 'customize_changeset', '', 0),
(140, 1, '2019-07-29 07:01:19', '2019-07-29 07:01:19', '{\n    \"cleancut_html::showcase_heading\": {\n        \"value\": \"CleanCut Theme\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 07:01:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '99f9cf47-9f86-47e4-9f9c-fe29774f338b', '', '', '2019-07-29 07:01:19', '2019-07-29 07:01:19', '', 0, 'http://localhost/Wp_themes/2019/07/29/99f9cf47-9f86-47e4-9f9c-fe29774f338b/', 0, 'customize_changeset', '', 0),
(141, 1, '2019-07-29 07:15:49', '2019-07-29 07:15:49', '{\n    \"cleancut_html::facebook_url\": {\n        \"value\": \"https://www.facebook.com/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 07:15:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b43a1c3c-d3af-4d68-af35-0dbc4058b975', '', '', '2019-07-29 07:15:49', '2019-07-29 07:15:49', '', 0, 'http://localhost/Wp_themes/2019/07/29/b43a1c3c-d3af-4d68-af35-0dbc4058b975/', 0, 'customize_changeset', '', 0),
(142, 1, '2019-07-29 07:16:03', '2019-07-29 07:16:03', '{\n    \"cleancut_html::twitter_url\": {\n        \"value\": \"http://www.twitter.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 07:16:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '491236da-081e-409c-89b2-d5d469f801c7', '', '', '2019-07-29 07:16:03', '2019-07-29 07:16:03', '', 0, 'http://localhost/Wp_themes/2019/07/29/491236da-081e-409c-89b2-d5d469f801c7/', 0, 'customize_changeset', '', 0),
(143, 1, '2019-07-29 13:41:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-29 13:41:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=143', 0, 'post', '', 0),
(144, 1, '2019-07-29 13:59:45', '2019-07-29 13:59:45', '{\n    \"cleancut_html::banner_heading\": {\n        \"value\": \"Want to follow us ?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 13:59:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cea61dd8-37d8-48e0-b6a2-f5dff055ac21', '', '', '2019-07-29 13:59:45', '2019-07-29 13:59:45', '', 0, 'http://localhost/Wp_themes/2019/07/29/cea61dd8-37d8-48e0-b6a2-f5dff055ac21/', 0, 'customize_changeset', '', 0),
(145, 1, '2019-07-29 14:03:38', '2019-07-29 14:03:38', '{\n    \"cleancut_html::banner_image\": {\n        \"value\": \"http://localhost/Wp_themes/wp-content/uploads/2019/07/Game-of-Thrones-Wallpaper-9.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 14:03:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ac57a399-c333-4976-8377-53b011ff028b', '', '', '2019-07-29 14:03:38', '2019-07-29 14:03:38', '', 0, 'http://localhost/Wp_themes/2019/07/29/ac57a399-c333-4976-8377-53b011ff028b/', 0, 'customize_changeset', '', 0),
(146, 1, '2019-07-29 14:12:12', '0000-00-00 00:00:00', '{\n    \"cleancut_html::animation\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 14:12:12\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '3033651f-5917-47d1-89fa-90d28208c26b', '', '', '2019-07-29 14:12:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=146', 0, 'customize_changeset', '', 0),
(147, 1, '2019-07-29 14:15:00', '2019-07-29 14:15:00', '{\n    \"cleancut_html::animation\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 14:15:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd4651f97-00e4-4112-90d2-2de2e3a1bd33', '', '', '2019-07-29 14:15:00', '2019-07-29 14:15:00', '', 0, 'http://localhost/Wp_themes/2019/07/29/d4651f97-00e4-4112-90d2-2de2e3a1bd33/', 0, 'customize_changeset', '', 0),
(148, 1, '2019-07-29 14:15:19', '2019-07-29 14:15:19', '{\n    \"cleancut_html::animation\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-29 14:15:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '31bad9b4-cf91-4ac2-98d7-7eea38478d45', '', '', '2019-07-29 14:15:19', '2019-07-29 14:15:19', '', 0, 'http://localhost/Wp_themes/2019/07/29/31bad9b4-cf91-4ac2-98d7-7eea38478d45/', 0, 'customize_changeset', '', 0),
(149, 1, '2019-07-29 14:17:04', '2019-07-29 14:17:04', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-07-29 14:17:04', '2019-07-29 14:17:04', '', 110, 'http://localhost/Wp_themes/2019/07/29/110-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-07-29 14:24:06', '2019-07-29 14:24:06', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Blog post 2', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-07-29 14:24:06', '2019-07-29 14:24:06', '', 91, 'http://localhost/Wp_themes/2019/07/29/91-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-07-29 14:40:58', '2019-07-29 14:40:58', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat  </p>\n<!-- /wp:paragraph -->', 'Aryya Stark', '', 'trash', 'open', 'open', '', 'aryya-stark__trashed', '', '', '2019-07-31 06:55:51', '2019-07-31 06:55:51', '', 0, 'http://localhost/Wp_themes/?p=151', 0, 'post', '', 1),
(152, 1, '2019-07-29 14:40:58', '2019-07-29 14:40:58', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat  </p>\n<!-- /wp:paragraph -->', 'Aryya Stark', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-07-29 14:40:58', '2019-07-29 14:40:58', '', 151, 'http://localhost/Wp_themes/2019/07/29/151-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-07-30 06:55:38', '2019-07-30 06:55:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-07-30 06:55:38', '2019-07-30 06:55:38', '', 110, 'http://localhost/Wp_themes/2019/07/30/110-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2019-07-30 07:03:32', '2019-07-30 07:03:32', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-07-30 07:03:32', '2019-07-30 07:03:32', '', 0, 'http://localhost/Wp_themes/?page_id=154', 0, 'page', '', 0),
(155, 1, '2019-07-30 07:03:32', '2019-07-30 07:03:32', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2019-07-30 07:03:32', '2019-07-30 07:03:32', '', 154, 'http://localhost/Wp_themes/2019/07/30/154-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-07-30 07:04:06', '2019-07-30 07:04:06', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-07-30 07:43:32', '2019-07-30 07:43:32', '', 154, 'http://localhost/Wp_themes/?page_id=156', 0, 'page', '', 0),
(157, 1, '2019-07-30 07:04:06', '2019-07-30 07:04:06', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2019-07-30 07:04:06', '2019-07-30 07:04:06', '', 156, 'http://localhost/Wp_themes/2019/07/30/156-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-07-30 07:04:33', '2019-07-30 07:04:33', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2019-07-30 07:45:05', '2019-07-30 07:45:05', '', 154, 'http://localhost/Wp_themes/?page_id=158', 0, 'page', '', 0),
(159, 1, '2019-07-30 07:04:33', '2019-07-30 07:04:33', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'Our Team', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2019-07-30 07:04:33', '2019-07-30 07:04:33', '', 158, 'http://localhost/Wp_themes/2019/07/30/158-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2019-07-30 07:04:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-30 07:04:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?page_id=160', 0, 'page', '', 0),
(161, 1, '2019-07-30 07:04:49', '2019-07-30 07:04:49', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2019-07-30 07:44:39', '2019-07-30 07:44:39', '', 154, 'http://localhost/Wp_themes/?page_id=161', 0, 'page', '', 0),
(162, 1, '2019-07-30 07:04:49', '2019-07-30 07:04:49', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\n\n</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2019-07-30 07:04:49', '2019-07-30 07:04:49', '', 161, 'http://localhost/Wp_themes/2019/07/30/161-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-07-30 07:35:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-30 07:35:22', '0000-00-00 00:00:00', '', 154, 'http://localhost/Wp_themes/?p=167', 1, 'nav_menu_item', '', 0),
(168, 1, '2019-07-30 07:35:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-30 07:35:23', '0000-00-00 00:00:00', '', 154, 'http://localhost/Wp_themes/?p=168', 1, 'nav_menu_item', '', 0),
(170, 1, '2019-07-30 07:35:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-30 07:35:57', '0000-00-00 00:00:00', '', 154, 'http://localhost/Wp_themes/?p=170', 1, 'nav_menu_item', '', 0),
(172, 1, '2019-07-30 08:25:06', '2019-07-30 08:25:06', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excep\n\n</p>\n<!-- /wp:paragraph -->', 'Aside post type', '', 'trash', 'open', 'open', '', 'aside-post-type__trashed', '', '', '2019-07-31 06:55:50', '2019-07-31 06:55:50', '', 0, 'http://localhost/Wp_themes/?p=172', 0, 'post', '', 0),
(173, 1, '2019-07-30 08:25:06', '2019-07-30 08:25:06', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excep\n\n</p>\n<!-- /wp:paragraph -->', 'Aside post type', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2019-07-30 08:25:06', '2019-07-30 08:25:06', '', 172, 'http://localhost/Wp_themes/2019/07/30/172-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(174, 1, '2019-07-30 08:44:11', '2019-07-30 08:44:11', '<!-- wp:gallery {\"ids\":[122,43,42,41,24,45]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/banner-1024x682.jpg\" alt=\"\" data-id=\"122\" data-link=\"http://localhost/Wp_themes/banner/\" class=\"wp-image-122\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/download-2/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/bbc0ncs-2/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/attachment/25484/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1024x576.jpg\" alt=\"\" data-id=\"24\" data-link=\"http://localhost/Wp_themes/2019/07/22/post__trashed/bbc0ncs/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/thumb-1920-637668/\" class=\"wp-image-45\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Photo Gallery', '', 'trash', 'open', 'open', '', 'photo-gallery__trashed', '', '', '2019-07-31 06:55:50', '2019-07-31 06:55:50', '', 0, 'http://localhost/Wp_themes/?p=174', 0, 'post', '', 0),
(175, 1, '2019-07-30 08:44:11', '2019-07-30 08:44:11', '<!-- wp:gallery {\"ids\":[122,43,42,41,24,45,47]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/banner-1024x682.jpg\" alt=\"\" data-id=\"122\" data-link=\"http://localhost/Wp_themes/banner/\" class=\"wp-image-122\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/download-2/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/bbc0ncs-2/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/attachment/25484/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1024x576.jpg\" alt=\"\" data-id=\"24\" data-link=\"http://localhost/Wp_themes/2019/07/22/post__trashed/bbc0ncs/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/thumb-1920-637668/\" class=\"wp-image-45\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/60346400_1061767447353939_48910344537505792_n.jpg\" alt=\"\" data-id=\"47\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/60346400_1061767447353939_48910344537505792_n/\" class=\"wp-image-47\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Photo Gallery', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2019-07-30 08:44:11', '2019-07-30 08:44:11', '', 174, 'http://localhost/Wp_themes/2019/07/30/174-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-07-30 08:45:23', '2019-07-30 08:45:23', '<!-- wp:gallery {\"ids\":[122,43,42,41,24,45]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/banner-1024x682.jpg\" alt=\"\" data-id=\"122\" data-link=\"http://localhost/Wp_themes/banner/\" class=\"wp-image-122\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/download-1.jpg\" alt=\"\" data-id=\"43\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/download-2/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1-1024x576.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/bbc0ncs-2/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/25484-1024x576.jpg\" alt=\"\" data-id=\"41\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/attachment/25484/\" class=\"wp-image-41\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/bBC0nCs-1024x576.jpg\" alt=\"\" data-id=\"24\" data-link=\"http://localhost/Wp_themes/2019/07/22/post__trashed/bbc0ncs/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/Wp_themes/wp-content/uploads/2019/07/thumb-1920-637668-1024x576.jpg\" alt=\"\" data-id=\"45\" data-link=\"http://localhost/Wp_themes/2019/07/22/gallery__trashed/thumb-1920-637668/\" class=\"wp-image-45\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Photo Gallery', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2019-07-30 08:45:23', '2019-07-30 08:45:23', '', 174, 'http://localhost/Wp_themes/2019/07/30/174-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-07-31 06:09:25', '2019-07-31 06:09:25', '{\n    \"nav_menu_item[169]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-31 06:09:25\"\n    },\n    \"nav_menu_item[166]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-31 06:09:25\"\n    },\n    \"nav_menu_item[171]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-31 06:09:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '63d66a06-1dce-4f9d-9d09-dd7e81e0a05e', '', '', '2019-07-31 06:09:25', '2019-07-31 06:09:25', '', 0, 'http://localhost/Wp_themes/2019/07/31/63d66a06-1dce-4f9d-9d09-dd7e81e0a05e/', 0, 'customize_changeset', '', 0),
(178, 1, '2019-07-31 06:13:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-31 06:13:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=178', 0, 'post', '', 0),
(179, 1, '2019-07-31 06:13:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-31 06:13:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=179', 0, 'post', '', 0),
(180, 1, '2019-07-31 06:15:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-31 06:15:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=180', 0, 'post', '', 0),
(181, 1, '2019-07-31 06:18:52', '2019-07-31 06:18:52', '<!-- wp:html -->\r\n<p><!-- wp:html --></p>\r\n<p>É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.</p>\r\n<p><!-- /wp:html -->\r\n\r\n<!-- wp:html /-->\r\n\r\n<!-- wp:html --></p>\r\n<p>É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.</p>\r\n<p><!-- /wp:html -->\r\n\r\n<!-- wp:html /-->\r\n\r\n<!-- wp:html --></p>\r\n<p>É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.</p>\r\n<p><!-- /wp:html -->\r\n\r\n<!-- wp:html /--></p>\r\n<!-- /wp:html -->\r\n\r\n<!-- wp:html /-->', 'Beaking News', '', 'publish', 'open', 'open', '', 'beaking-news', '', '', '2019-07-31 07:00:58', '2019-07-31 07:00:58', '', 0, 'http://localhost/Wp_themes/?p=181', 0, 'post', '', 0),
(182, 1, '2019-07-31 06:18:40', '2019-07-31 06:18:40', '', 'cms sample image', '', 'inherit', 'open', 'closed', '', 'cms-sample-image', '', '', '2019-07-31 06:18:40', '2019-07-31 06:18:40', '', 181, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/cms-sample-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2019-07-31 06:18:52', '2019-07-31 06:18:52', '<!-- wp:html -->\nÉ importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.\n<!-- /wp:html -->\n\n<!-- wp:html /-->', 'Beaking News', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2019-07-31 06:18:52', '2019-07-31 06:18:52', '', 181, 'http://localhost/Wp_themes/2019/07/31/181-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2019-07-31 06:19:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-31 06:19:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=184', 0, 'post', '', 0),
(185, 1, '2019-07-31 06:40:26', '2019-07-31 06:40:26', '<!-- wp:list -->\nÉ importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.\n\n<!-- /wp:list -->\n\n<!-- wp:html /-->', 'New Tech Invented', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2019-07-31 06:40:26', '2019-07-31 06:40:26', '', 0, 'http://localhost/Wp_themes/?p=185', 0, 'post', '', 0),
(186, 1, '2019-07-31 06:24:20', '2019-07-31 06:24:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'New Tech Invented', '', 'publish', 'open', 'open', '', 'new-tech-invented', '', '', '2019-08-03 06:55:10', '2019-08-03 06:55:10', '', 0, 'http://localhost/Wp_themes/?p=186', 0, 'post', '', 0),
(187, 1, '2019-07-31 06:24:14', '2019-07-31 06:24:14', '', '11720098_898795756835548_2006014200_o_898795756835548', '', 'inherit', 'open', 'closed', '', '11720098_898795756835548_2006014200_o_898795756835548', '', '', '2019-07-31 06:24:14', '2019-07-31 06:24:14', '', 186, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/11720098_898795756835548_2006014200_o_898795756835548.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2019-07-31 06:24:20', '2019-07-31 06:24:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'New Tech Invented', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2019-07-31 06:24:20', '2019-07-31 06:24:20', '', 186, 'http://localhost/Wp_themes/2019/07/31/186-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-07-31 06:40:26', '2019-07-31 06:40:26', '<!-- wp:list -->\nÉ importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.\n\n<!-- /wp:list -->\n\n<!-- wp:html /-->', 'New Tech Invented', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2019-07-31 06:40:26', '2019-07-31 06:40:26', '', 185, 'http://localhost/Wp_themes/2019/07/31/185-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2019-07-31 07:00:58', '2019-07-31 07:00:58', '<!-- wp:html -->\r\n<p><!-- wp:html --></p>\r\n<p>É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.</p>\r\n<p><!-- /wp:html -->\r\n\r\n<!-- wp:html /-->\r\n\r\n<!-- wp:html --></p>\r\n<p>É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.</p>\r\n<p><!-- /wp:html -->\r\n\r\n<!-- wp:html /-->\r\n\r\n<!-- wp:html --></p>\r\n<p>É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória.</p>\r\n<p><!-- /wp:html -->\r\n\r\n<!-- wp:html /--></p>\r\n<!-- /wp:html -->\r\n\r\n<!-- wp:html /-->', 'Beaking News', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2019-07-31 07:00:58', '2019-07-31 07:00:58', '', 181, 'http://localhost/Wp_themes/2019/07/31/181-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2019-07-31 07:11:07', '2019-07-31 07:11:07', 'É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.', 'Featured news 1', '', 'publish', 'open', 'open', '', 'featured-news-1', '', '', '2019-07-31 07:11:07', '2019-07-31 07:11:07', '', 0, 'http://localhost/Wp_themes/?p=191', 0, 'post', '', 1),
(192, 1, '2019-07-31 07:11:07', '2019-07-31 07:11:07', 'É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.', 'Featured news 1', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2019-07-31 07:11:07', '2019-07-31 07:11:07', '', 191, 'http://localhost/Wp_themes/2019/07/31/191-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2019-07-31 07:12:02', '2019-07-31 07:12:02', 'É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.', 'Featured new 2', '', 'publish', 'open', 'open', '', 'featured-new-2', '', '', '2019-07-31 07:42:34', '2019-07-31 07:42:34', '', 0, 'http://localhost/Wp_themes/?p=193', 0, 'post', '', 0),
(194, 1, '2019-07-31 07:12:02', '2019-07-31 07:12:02', 'É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impacto na agilidade decisória.', 'Featured new 2', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2019-07-31 07:12:02', '2019-07-31 07:12:02', '', 193, 'http://localhost/Wp_themes/2019/07/31/193-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2019-07-31 07:33:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-31 07:33:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/Wp_themes/?p=195', 0, 'post', '', 0),
(196, 1, '2019-07-31 07:44:40', '2019-07-31 07:44:40', 'পিসিতে মোবাইল গেম খেলুন\r\n<span class=\"_5mfr\"><span class=\"_6qdm\">😎</span></span>শত্রুদের হত্যা করা এবং জয় করা সহজ!\r\n<span class=\"_5mfr\"><span class=\"_6qdm\">✌</span></span>গেম প্রতি 18Kills গড় সঙ্গে Smoother অপারেশন!<span class=\"_5mfr\"><span class=\"_6qdm\">🎙</span></span>যে কোনো সময় প্লেয়ার সাথে চ্যাট করুন!\r\n<span class=\"_5mfr\"><span class=\"_6qdm\">👉</span></span>এখন খেলা<span class=\"_5mfr\"><span class=\"_6qdm\">👈</span></span>100% বিনামূল্যে', 'Business post 3', '', 'publish', 'open', 'open', '', 'business-news-category', '', '', '2019-07-31 07:52:11', '2019-07-31 07:52:11', '', 0, 'http://localhost/Wp_themes/?p=196', 0, 'post', '', 0),
(197, 1, '2019-07-31 07:44:34', '2019-07-31 07:44:34', '', '10734320_729589177147256_665871499_n_729571613815679', '', 'inherit', 'open', 'closed', '', '10734320_729589177147256_665871499_n_729571613815679', '', '', '2019-07-31 07:44:34', '2019-07-31 07:44:34', '', 196, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/10734320_729589177147256_665871499_n_729571613815679.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2019-07-31 07:44:40', '2019-07-31 07:44:40', 'Business News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News Category', 'Business News Category', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2019-07-31 07:44:40', '2019-07-31 07:44:40', '', 196, 'http://localhost/Wp_themes/2019/07/31/196-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2019-07-31 07:49:51', '2019-07-31 07:49:51', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->', 'Business post 2', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-07-31 07:49:51', '2019-07-31 07:49:51', '', 91, 'http://localhost/Wp_themes/2019/07/31/91-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2019-07-31 07:51:07', '2019-07-31 07:51:07', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->', 'Business post 1', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2019-07-31 07:51:07', '2019-07-31 07:51:07', '', 94, 'http://localhost/Wp_themes/2019/07/31/94-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2019-07-31 07:51:25', '2019-07-31 07:51:25', 'Business News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News CategoryBusiness News Category', 'Business post 3', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2019-07-31 07:51:25', '2019-07-31 07:51:25', '', 196, 'http://localhost/Wp_themes/2019/07/31/196-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2019-07-31 07:52:11', '2019-07-31 07:52:11', 'পিসিতে মোবাইল গেম খেলুন\r\n<span class=\"_5mfr\"><span class=\"_6qdm\">😎</span></span>শত্রুদের হত্যা করা এবং জয় করা সহজ!\r\n<span class=\"_5mfr\"><span class=\"_6qdm\">✌</span></span>গেম প্রতি 18Kills গড় সঙ্গে Smoother অপারেশন!<span class=\"_5mfr\"><span class=\"_6qdm\">🎙</span></span>যে কোনো সময় প্লেয়ার সাথে চ্যাট করুন!\r\n<span class=\"_5mfr\"><span class=\"_6qdm\">👉</span></span>এখন খেলা<span class=\"_5mfr\"><span class=\"_6qdm\">👈</span></span>100% বিনামূল্যে', 'Business post 3', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2019-07-31 07:52:11', '2019-07-31 07:52:11', '', 196, 'http://localhost/Wp_themes/2019/07/31/196-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2019-07-31 07:53:07', '2019-07-31 07:53:07', 'Looking for someone who is familiar with Wordpress (preferably with Impreza or related themes and Visual Composer/Ultimate addons) who can easily migrate an existing website from Wix into Wordpress.\r\n\r\nThere isn\'t much content or pages at all. Most of this project will be on transferring the visual aspects of the existing site into Wordpress using (preferably) Visual Composer or WPBakery plugins - Ultimate addons preferred as well\r\n\r\nPlease apply with your cost as well as any speciics like what theme you would prefer to use and why. Please visit the current visit to see the kind of visual aesthetics/plugins you will be using and how much time it will take', 'Business news 4', '', 'publish', 'open', 'open', '', 'business-news-4', '', '', '2019-07-31 07:53:07', '2019-07-31 07:53:07', '', 0, 'http://localhost/Wp_themes/?p=203', 0, 'post', '', 0),
(204, 1, '2019-07-31 07:53:00', '2019-07-31 07:53:00', '', '10647302_907524025962721_514989038_o_907524025962721', '', 'inherit', 'open', 'closed', '', '10647302_907524025962721_514989038_o_907524025962721', '', '', '2019-07-31 07:53:00', '2019-07-31 07:53:00', '', 203, 'http://localhost/Wp_themes/wp-content/uploads/2019/07/10647302_907524025962721_514989038_o_907524025962721.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2019-07-31 07:53:07', '2019-07-31 07:53:07', 'Looking for someone who is familiar with Wordpress (preferably with Impreza or related themes and Visual Composer/Ultimate addons) who can easily migrate an existing website from Wix into Wordpress.\r\n\r\nThere isn\'t much content or pages at all. Most of this project will be on transferring the visual aspects of the existing site into Wordpress using (preferably) Visual Composer or WPBakery plugins - Ultimate addons preferred as well\r\n\r\nPlease apply with your cost as well as any speciics like what theme you would prefer to use and why. Please visit the current visit to see the kind of visual aesthetics/plugins you will be using and how much time it will take', 'Business news 4', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2019-07-31 07:53:07', '2019-07-31 07:53:07', '', 203, 'http://localhost/Wp_themes/2019/07/31/203-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2019-08-01 07:09:55', '2019-08-01 07:09:55', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2019-08-03 06:49:27', '2019-08-03 06:49:27', '', 0, 'http://localhost/Wp_themes/?p=206', 2, 'nav_menu_item', '', 0),
(207, 1, '2019-08-02 13:39:31', '2019-08-02 13:39:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Lorem ipsum dolor', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor', '', '', '2019-08-02 13:39:31', '2019-08-02 13:39:31', '', 0, 'http://localhost/Wp_themes/?p=207', 0, 'post', '', 1),
(208, 1, '2019-08-02 13:39:25', '2019-08-02 13:39:25', '', 'pic1', '', 'inherit', 'open', 'closed', '', 'pic1', '', '', '2019-08-02 13:39:25', '2019-08-02 13:39:25', '', 207, 'http://localhost/Wp_themes/wp-content/uploads/2019/08/pic1.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2019-08-02 13:39:31', '2019-08-02 13:39:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Lorem ipsum dolor', '', 'inherit', 'closed', 'closed', '', '207-revision-v1', '', '', '2019-08-02 13:39:31', '2019-08-02 13:39:31', '', 207, 'http://localhost/Wp_themes/2019/08/02/207-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2019-08-02 13:40:28', '2019-08-02 13:40:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Hi WordPress', '', 'publish', 'open', 'open', '', 'hi-wordpress', '', '', '2019-08-03 06:54:48', '2019-08-03 06:54:48', '', 0, 'http://localhost/Wp_themes/?p=210', 0, 'post', '', 0),
(211, 1, '2019-08-02 13:40:18', '2019-08-02 13:40:18', '', 'pic3', '', 'inherit', 'open', 'closed', '', 'pic3', '', '', '2019-08-02 13:40:18', '2019-08-02 13:40:18', '', 210, 'http://localhost/Wp_themes/wp-content/uploads/2019/08/pic3.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2019-08-02 13:40:28', '2019-08-02 13:40:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Hi WordPress', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2019-08-02 13:40:28', '2019-08-02 13:40:28', '', 210, 'http://localhost/Wp_themes/2019/08/02/210-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2019-08-02 13:41:09', '2019-08-02 13:41:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Hello Bangladesh', '', 'publish', 'open', 'open', '', 'hello-bangladesh', '', '', '2019-08-03 06:48:53', '2019-08-03 06:48:53', '', 0, 'http://localhost/Wp_themes/?p=213', 0, 'post', '', 0),
(214, 1, '2019-08-02 13:41:06', '2019-08-02 13:41:06', '', 'pic2', '', 'inherit', 'open', 'closed', '', 'pic2', '', '', '2019-08-02 13:41:06', '2019-08-02 13:41:06', '', 213, 'http://localhost/Wp_themes/wp-content/uploads/2019/08/pic2.jpg', 0, 'attachment', 'image/jpeg', 0),
(215, 1, '2019-08-02 13:41:09', '2019-08-02 13:41:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Hello Bangladesh', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2019-08-02 13:41:09', '2019-08-02 13:41:09', '', 213, 'http://localhost/Wp_themes/2019/08/02/213-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2019-08-02 13:41:53', '2019-08-02 13:41:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Mobile technology', '', 'publish', 'open', 'open', '', 'mobile-technology', '', '', '2019-08-03 06:48:46', '2019-08-03 06:48:46', '', 0, 'http://localhost/Wp_themes/?p=216', 0, 'post', '', 0),
(217, 1, '2019-08-02 13:41:50', '2019-08-02 13:41:50', '', 'post3', '', 'inherit', 'open', 'closed', '', 'post3', '', '', '2019-08-02 13:41:50', '2019-08-02 13:41:50', '', 216, 'http://localhost/Wp_themes/wp-content/uploads/2019/08/post3.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2019-08-02 13:41:53', '2019-08-02 13:41:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Mobile technology', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2019-08-02 13:41:53', '2019-08-02 13:41:53', '', 216, 'http://localhost/Wp_themes/2019/08/02/216-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2019-08-02 13:42:50', '2019-08-02 13:42:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Web Development', '', 'publish', 'open', 'open', '', 'web-development', '', '', '2019-08-03 06:48:11', '2019-08-03 06:48:11', '', 0, 'http://localhost/Wp_themes/?p=219', 0, 'post', '', 0),
(220, 1, '2019-08-02 13:42:45', '2019-08-02 13:42:45', '', 'post2', '', 'inherit', 'open', 'closed', '', 'post2', '', '', '2019-08-02 13:42:45', '2019-08-02 13:42:45', '', 219, 'http://localhost/Wp_themes/wp-content/uploads/2019/08/post2.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2019-08-02 13:42:50', '2019-08-02 13:42:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Web Development', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2019-08-02 13:42:50', '2019-08-02 13:42:50', '', 219, 'http://localhost/Wp_themes/2019/08/02/219-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2019-08-02 13:43:34', '2019-08-02 13:43:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lo\r\n\r\n<!--more-->rem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Business of Bangladesh', '', 'publish', 'open', 'open', '', 'business-of-bangladesh', '', '', '2019-08-03 06:47:52', '2019-08-03 06:47:52', '', 0, 'http://localhost/Wp_themes/?p=222', 0, 'post', '', 0),
(223, 1, '2019-08-02 13:43:30', '2019-08-02 13:43:30', '', 'post1', '', 'inherit', 'open', 'closed', '', 'post1', '', '', '2019-08-02 13:43:30', '2019-08-02 13:43:30', '', 222, 'http://localhost/Wp_themes/wp-content/uploads/2019/08/post1.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2019-08-02 13:43:34', '2019-08-02 13:43:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis<!--more-->Lo\r\n\r\n<!--more-->rem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quisLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium efficitur justo ut malesuada. Donec efficitur commodo est, sed maximus nisi pulvinar Etiam sem tortor, tincidunt quis', 'Business of Bangladesh', '', 'inherit', 'closed', 'closed', '', '222-revision-v1', '', '', '2019-08-02 13:43:34', '2019-08-02 13:43:34', '', 222, 'http://localhost/Wp_themes/2019/08/02/222-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2019-08-02 14:26:14', '2019-08-02 14:26:14', 'importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações aind importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações aind', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-08-02 14:26:14', '2019-08-02 14:26:14', '', 0, 'http://localhost/Wp_themes/?page_id=225', 0, 'page', '', 0),
(226, 1, '2019-08-02 14:26:14', '2019-08-02 14:26:14', 'importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações aind importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações ainda não demonstrou convincentemente que vai participar na mudança do impactoagilidade decisória. É importante questionar o quanto a constante divulgação das informações aind', 'Services', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2019-08-02 14:26:14', '2019-08-02 14:26:14', '', 225, 'http://localhost/Wp_themes/2019/08/02/225-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2019-08-02 14:26:29', '2019-08-02 14:26:29', ' ', '', '', 'publish', 'closed', 'closed', '', '227', '', '', '2019-08-03 06:49:28', '2019-08-03 06:49:28', '', 0, 'http://localhost/Wp_themes/?p=227', 4, 'nav_menu_item', '', 0),
(228, 1, '2019-08-03 06:49:29', '2019-08-03 06:49:29', ' ', '', '', 'publish', 'closed', 'closed', '', '228', '', '', '2019-08-03 06:49:29', '2019-08-03 06:49:29', '', 0, 'http://localhost/Wp_themes/?p=228', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(4, 'post-format-aside', 'post-format-aside', 0),
(5, 'post-format-link', 'post-format-link', 0),
(6, 'post-format-gallery', 'post-format-gallery', 0),
(7, 'Gallery', 'gallery', 0),
(11, 'Beratheon', 'beratheon', 0),
(13, 'web design', 'travel', 0),
(14, 'Technology', 'technology', 0),
(15, 'tag 1', 'tag-1', 0),
(16, 'featured', 'featured', 0),
(18, 'business', 'business', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0),
(27, 1, 0),
(32, 1, 0),
(32, 4, 0),
(35, 1, 0),
(35, 5, 0),
(40, 6, 0),
(40, 7, 0),
(70, 1, 0),
(70, 6, 0),
(72, 1, 0),
(72, 6, 0),
(74, 6, 0),
(74, 7, 0),
(77, 1, 0),
(77, 6, 0),
(79, 1, 0),
(79, 6, 0),
(81, 1, 0),
(81, 6, 0),
(84, 1, 0),
(84, 6, 0),
(87, 1, 0),
(87, 6, 0),
(87, 11, 0),
(91, 18, 0),
(94, 18, 0),
(96, 1, 0),
(112, 2, 0),
(131, 2, 0),
(151, 1, 0),
(172, 1, 0),
(172, 4, 0),
(174, 1, 0),
(174, 6, 0),
(181, 1, 0),
(181, 15, 0),
(185, 1, 0),
(186, 7, 0),
(186, 14, 0),
(191, 16, 0),
(193, 1, 0),
(196, 18, 0),
(203, 18, 0),
(206, 2, 0),
(207, 16, 0),
(210, 7, 0),
(210, 16, 0),
(213, 7, 0),
(213, 16, 0),
(216, 7, 0),
(216, 14, 0),
(219, 7, 0),
(219, 13, 0),
(222, 7, 0),
(222, 18, 0),
(227, 2, 0),
(228, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(4, 4, 'post_format', '', 0, 0),
(5, 5, 'post_format', '', 0, 0),
(6, 6, 'post_format', '', 0, 0),
(7, 7, 'category', '', 0, 6),
(11, 11, 'post_tag', '', 0, 0),
(13, 13, 'category', '', 0, 1),
(14, 14, 'category', '', 0, 2),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'category', '', 0, 4),
(18, 18, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'abirdhaka7'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,text_widget_paste_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"96fc7778b95591756b9721b6eae613bc1367e692a56d0539c11f8f892f14c963\";a:4:{s:10:\"expiration\";i:1564989476;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563779876;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '143'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1564814857'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_post', 'a:1:{i:0;s:16:\"tagsdiv-post_tag\";}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'abirdhaka7', '$P$BuC7w8s4dQshWapDG5w2DUEP7o5.Bd.', 'abirdhaka7', 'abuldha7@gmail.com', '', '2019-07-22 07:17:45', '', 0, 'abirdhaka7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
