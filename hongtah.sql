-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2018 at 01:26 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hongtah`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-21 10:01:02', '2018-07-21 10:01:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/hongtah', 'yes'),
(2, 'home', 'http://localhost/hongtah', 'yes'),
(3, 'blogname', 'Hong Tah Logistics Inc.', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'codevopers@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=21&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wpcustomtheme', 'yes'),
(41, 'stylesheet', 'wpcustomtheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:12:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:133:\"<h3>Vision</h3>\r\nA developing and expanding logistics business through reliable, and insightful trucking and transportation services.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:91:\"<h3>Mission</h3>\r\nTo be a reputable and proved trucking service provider in the Philippines\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:101:\"<h3>Client promise:</h3>\r\nWe culture time, effort and fund efficiency in all parts of our operations.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:24:\"Specifically, we aim to:\";s:4:\"text\";s:613:\"<ol>\r\n 	<li>Provide prime trucking solutions to all of its clients, regulated by reliable and intuitive logistics standards in order to cultivate long-term relationships with our business partners.</li>\r\n 	<li>Maintain absolute compliance with the national regulatory and statutory requirements of business operations in accordance to internal quality workmanship and industrial professionalism.</li>\r\n 	<li>Endorse its employeesâ€™ professional advancement, learning and growth, as well as their health and safety.</li>\r\n 	<li>Fulfill its commitment of fair return of investments to its shareholders.</li>\r\n</ol>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:10;a:4:{s:5:\"title\";s:8:\"Trucking\";s:4:\"text\";s:125:\"Hong Tah Logistics Inc., is a trucking service company engaged in hauling and delivering general cargos through prime trucks.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:11;a:4:{s:5:\"title\";s:27:\"Warehouse Storage Solutions\";s:4:\"text\";s:98:\"HTLI offers short-term and long-term warehousing services, prioritizing the security of the items.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:16;a:4:{s:5:\"title\";s:10:\"Contact Us\";s:4:\"text\";s:319:\"Hong Tah Logistics Inc.\r\n\r\n+632 952-5134\r\n\r\n<a href=\"mailto:hongtahlogistics@gmail.com\">hongtahlogistics@gmail.com</a>\r\n\r\nLike us on:\r\n\r\n<a href=\"https://www.facebook.com/\"><img class=\"alignnone size-full wp-image-84\" src=\"http://localhost/hongtah/wp-content/uploads/2018/07/fb.png\" alt=\"\" width=\"32\" height=\"32\" /></a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:18;a:0:{}i:19;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:453:\"<h3>Trucking</h3>\r\nHong Tah Logistics Inc., is a trucking service company engaged in hauling and delivering general cargos through prime trucks. Setting reliable standards for reasonable-cost cargo moving in Metro Manila trips. We believe in being diligent and fast in every transaction with our clients, giving full safety and priority to customerâ€™s goods. Our professional employees make sure that the clientâ€™s items get moved safely and securely.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:41:\"google-maps-widget/google-maps-widget.php\";a:2:{i:0;s:3:\"GMW\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '24', 'yes'),
(84, 'page_on_front', '21', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:14:{s:9:\"feature_1\";a:2:{i:0;s:13:\"media_image-3\";i:1;s:6:\"text-4\";}s:9:\"feature_2\";a:2:{i:0;s:13:\"media_image-5\";i:1;s:6:\"text-6\";}s:9:\"feature_3\";a:2:{i:0;s:13:\"media_image-7\";i:1;s:6:\"text-8\";}s:17:\"contactoverview_1\";a:1:{i:0;s:7:\"text-16\";}s:17:\"contactoverview_2\";a:1:{i:0;s:13:\"custom_html-7\";}s:19:\"wp_inactive_widgets\";a:9:{i:0;s:7:\"text-18\";i:1;s:13:\"custom_html-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";i:8;s:6:\"text-2\";}s:5:\"list1\";a:1:{i:0;s:6:\"text-3\";}s:18:\"servicesoverview_1\";a:2:{i:0;s:7:\"text-10\";i:1;s:13:\"custom_html-4\";}s:18:\"servicesoverview_2\";a:2:{i:0;s:7:\"text-11\";i:1;s:13:\"custom_html-5\";}s:4:\"map1\";a:1:{i:0;s:13:\"custom_html-9\";}s:4:\"map2\";a:1:{i:0;s:13:\"custom_html-8\";}s:10:\"services_1\";a:2:{i:0;s:14:\"media_image-13\";i:1;s:7:\"text-19\";}s:10:\"services_2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:5:{i:3;a:15:{s:13:\"attachment_id\";i:49;s:3:\"url\";s:66:\"http://localhost/hongtah/wp-content/uploads/2018/07/truck-icon.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:4:\"none\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:5;a:15:{s:13:\"attachment_id\";i:51;s:3:\"url\";s:68:\"http://localhost/hongtah/wp-content/uploads/2018/07/storage-icon.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:7;a:15:{s:13:\"attachment_id\";i:49;s:3:\"url\";s:66:\"http://localhost/hongtah/wp-content/uploads/2018/07/truck-icon.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}i:13;a:15:{s:13:\"attachment_id\";i:49;s:3:\"url\";s:66:\"http://localhost/hongtah/wp-content/uploads/2018/07/truck-icon.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:125;s:6:\"height\";i:125;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'nonce_key', '8U,1=yJ(2:z~c=r@~CZB4,<qowf:rkfpYl`=~g1.53tuLw5]`ALpf(7Co^=J3JJ^', 'no'),
(108, 'nonce_salt', 'Rg0`4lkQ#xpMxfqW~15)k^p[G+->J!L;D,l6b#$+897W%XAB`ccLwa<p}hvCos&.', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:7:{i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:441:\"<div class=\"feature-icon mr-3\">\r\n                        <img src=\"<?php bloginfo(\'template_url\')?>/images/truck-icon.png\" width=\"125px\" alt=\"\">\r\n                    </div>\r\n                    <div class=\"feature-content\">\r\n                        <h3>Vision</h3>\r\n                        <p>A developing and expanding logistics business through reliable, and insightful trucking and transportation services.</p>\r\n                    </div>\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:54:\"<a href=\"#\" class=\"btn btn-primary\">Go to Services</a>\";}i:5;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:54:\"<a href=\"#\" class=\"btn btn-primary\">Go to Services</a>\";}i:7;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:369:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3863.6437844266634!2d120.982331315413!3d14.447680789900085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc39bd54d987dc9e3!2sPolylite+Industrial+Corp.!5e0!3m2!1sen!2sph!4v1532175656113\"\r\n                    width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\";}i:8;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:360:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3863.6437844266634!2d120.982331315413!3d14.447680789900085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc39bd54d987dc9e3!2sPolylite+Industrial+Corp.!5e0!3m2!1sen!2sph!4v1532175656113\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"width:100%; border:0\" allowfullscreen></iframe>\";}i:9;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:360:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3863.6437844266634!2d120.982331315413!3d14.447680789900085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc39bd54d987dc9e3!2sPolylite+Industrial+Corp.!5e0!3m2!1sen!2sph!4v1532175656113\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"width:100%; border:0\" allowfullscreen></iframe>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1534665663;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1534672863;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1534672919;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534747934;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1532237360;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-7.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.7\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-7.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-rollback-7.zip\";}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.7\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1534664174;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_key', '*]i0A<f}VWgg4TlDrMVDgLaiCjsj.S)[CDh7y3AqKV+ERR(Q[h:L$:d%?VXTz`Ln', 'no'),
(125, 'auth_salt', 'q&fZ*xyRZZ`O+w7q/%>Xz@@8%I{vB)s2C:^/R8a,z{xy9%&jc>p>|}Fo*&(|e%Ck', 'no'),
(126, 'logged_in_key', 'd|GtpX!+drAZN$W$J<?#Z%{RP5~:Xl=Hh6d%f)l`v*28wRB.RTwfjR1so55<7w&5', 'no'),
(127, 'logged_in_salt', 'vP!C$r[~S-&?xF1[!tV&w{)w|T[ oP%5[v;=,[.EP(+>yIE63qr0G&lP>}9R6d[j', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(156, 'current_theme', '', 'yes'),
(157, 'theme_mods_wpcustomtheme', 'a:17:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:26;s:14:\"banner_heading\";s:15:\"Company Profile\";s:11:\"banner_text\";s:309:\"Hong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners. \";s:12:\"banner_image\";s:79:\"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/services-bg.jpg\";s:11:\"home_image1\";s:84:\"http://localhost/hongtah/wp-content/uploads/2018/07/industrial-hall-1630737_1920.jpg\";s:11:\"home_image2\";s:75:\"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/banner2.jpg\";s:11:\"home_image3\";s:75:\"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/banner3.jpg\";s:25:\"services_overview_heading\";s:8:\"Services\";s:25:\"services_overview_bgimage\";s:79:\"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/services-bg.jpg\";s:21:\"services_banner_image\";s:84:\"http://localhost/hongtah/wp-content/uploads/2018/07/industrial-hall-1630737_1920.jpg\";s:13:\"email_heading\";s:5:\"Email\";s:19:\"about_overview_text\";s:308:\"Hong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\";s:17:\"about_banner_text\";s:309:\"zHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\";s:22:\"home_service_1_content\";s:309:\"zHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\";}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(168, 'category_children', 'a:0:{}', 'yes'),
(208, 'WPLANG', '', 'yes'),
(209, 'new_admin_email', 'codevopers@gmail.com', 'yes'),
(379, 'recently_activated', 'a:1:{s:41:\"google-maps-widget/google-maps-widget.php\";i:1534080427;}', 'yes'),
(386, 'WPGMZA_OTHER_SETTINGS', 'a:7:{s:30:\"wpgmza_settings_map_streetview\";s:3:\"yes\";s:24:\"wpgmza_settings_map_zoom\";s:3:\"yes\";s:23:\"wpgmza_settings_map_pan\";s:3:\"yes\";s:24:\"wpgmza_settings_map_type\";s:3:\"yes\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"1\";s:18:\"wpgmza_maps_engine\";s:11:\"google-maps\";s:30:\"wpgmza_maps_engine_dialog_done\";b:1;}', 'yes'),
(387, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(388, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(389, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(390, 'wpgmza_db_version', '7.10.25', 'yes'),
(391, 'wpgmaps_current_version', '7.10.25', 'yes'),
(392, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(393, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(394, 'WPGMZA_FIRST_TIME', '7.10.25', 'yes'),
(395, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2018-08-12 13:42:00\";s:14:\"first_accessed\";s:19:\"2018-08-12 13:20:36\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:6;s:13:\"last_accessed\";s:19:\"2018-08-12 13:42:10\";s:14:\"first_accessed\";s:19:\"2018-08-12 13:21:26\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:1;s:13:\"last_accessed\";s:19:\"2018-08-12 13:23:47\";s:14:\"first_accessed\";s:19:\"2018-08-12 13:23:47\";}}', 'yes'),
(396, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:9:\"45.950464\";s:24:\"map_default_starting_lng\";s:19:\"-109.81550500000003\";s:18:\"map_default_height\";s:3:\"300\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:2;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(399, 'gmw_options', 'a:17:{s:6:\"sc_map\";s:3:\"gmw\";s:7:\"api_key\";s:0:\"\";s:8:\"track_ga\";s:1:\"0\";s:14:\"include_jquery\";s:1:\"1\";s:17:\"include_gmaps_api\";s:1:\"1\";s:19:\"include_lightbox_js\";s:1:\"1\";s:20:\"include_lightbox_css\";s:1:\"1\";s:16:\"disable_tooltips\";s:1:\"0\";s:15:\"disable_sidebar\";s:1:\"0\";s:15:\"activation_code\";s:0:\"\";s:14:\"license_active\";s:0:\"\";s:15:\"license_expires\";s:0:\"\";s:12:\"license_type\";s:0:\"\";s:13:\"first_version\";s:4:\"3.95\";s:13:\"first_install\";i:1534080253;s:13:\"last_tracking\";b:0;s:17:\"first_install_gmt\";i:1534080253;}', 'yes'),
(402, 'widget_googlemapswidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(432, '_site_transient_timeout_theme_roots', '1534665984', 'no'),
(433, '_site_transient_theme_roots', 'a:5:{s:14:\"bootstrap_html\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:13:\"wpcustomtheme\";s:7:\"/themes\";}', 'no'),
(434, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1534664186;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:13:\"wpcustomtheme\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(435, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1534664187;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:41:\"google-maps-widget/google-maps-widget.php\";s:4:\"3.95\";s:9:\"hello.php\";s:3:\"1.7\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:7:\"7.10.25\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:7:\"7.10.27\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:41:\"google-maps-widget/google-maps-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/google-maps-widget\";s:4:\"slug\";s:18:\"google-maps-widget\";s:6:\"plugin\";s:41:\"google-maps-widget/google-maps-widget.php\";s:11:\"new_version\";s:4:\"3.95\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/google-maps-widget/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/google-maps-widget.3.95.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/google-maps-widget/assets/icon-256x256.png?rev=1625687\";s:2:\"1x\";s:71:\"https://ps.w.org/google-maps-widget/assets/icon-128x128.png?rev=1566956\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/google-maps-widget/assets/banner-1544x500.png?rev=1653423\";s:2:\"1x\";s:73:\"https://ps.w.org/google-maps-widget/assets/banner-772x250.png?rev=1653423\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/hongtah/'),
(21, 7, '_edit_last', '1'),
(22, 7, '_edit_lock', '1532854165:1'),
(23, 9, '_edit_last', '1'),
(24, 9, '_edit_lock', '1532242418:1'),
(25, 11, '_edit_last', '1'),
(26, 11, '_edit_lock', '1532242562:1'),
(27, 13, '_menu_item_type', 'post_type'),
(28, 13, '_menu_item_menu_item_parent', '0'),
(29, 13, '_menu_item_object_id', '7'),
(30, 13, '_menu_item_object', 'page'),
(31, 13, '_menu_item_target', ''),
(32, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 13, '_menu_item_xfn', ''),
(34, 13, '_menu_item_url', ''),
(54, 16, '_edit_last', '1'),
(55, 16, '_edit_lock', '1532245922:1'),
(60, 19, '_edit_last', '1'),
(63, 19, '_edit_lock', '1532246596:1'),
(64, 21, '_edit_last', '1'),
(65, 21, '_edit_lock', '1532246608:1'),
(66, 24, '_edit_last', '1'),
(67, 24, '_edit_lock', '1532246620:1'),
(68, 26, '_wp_attached_file', '2018/07/logo.png'),
(69, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:267;s:4:\"file\";s:16:\"2018/07/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 27, '_wp_trash_meta_status', 'publish'),
(71, 27, '_wp_trash_meta_time', '1532254272'),
(72, 2, '_wp_trash_meta_status', 'publish'),
(73, 2, '_wp_trash_meta_time', '1532255538'),
(74, 2, '_wp_desired_post_slug', 'sample-page'),
(75, 29, '_edit_last', '1'),
(76, 29, '_edit_lock', '1532962095:1'),
(77, 31, '_edit_last', '1'),
(78, 31, '_edit_lock', '1532962117:1'),
(79, 33, '_menu_item_type', 'post_type'),
(80, 33, '_menu_item_menu_item_parent', '0'),
(81, 33, '_menu_item_object_id', '31'),
(82, 33, '_menu_item_object', 'page'),
(83, 33, '_menu_item_target', ''),
(84, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 33, '_menu_item_xfn', ''),
(86, 33, '_menu_item_url', ''),
(88, 34, '_menu_item_type', 'post_type'),
(89, 34, '_menu_item_menu_item_parent', '0'),
(90, 34, '_menu_item_object_id', '29'),
(91, 34, '_menu_item_object', 'page'),
(92, 34, '_menu_item_target', ''),
(93, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 34, '_menu_item_xfn', ''),
(95, 34, '_menu_item_url', ''),
(96, 29, '_wp_page_template', 'custom-about.php'),
(99, 40, '_wp_trash_meta_status', 'publish'),
(100, 40, '_wp_trash_meta_time', '1532785578'),
(103, 42, '_wp_trash_meta_status', 'publish'),
(104, 42, '_wp_trash_meta_time', '1532785636'),
(105, 43, '_wp_trash_meta_status', 'publish'),
(106, 43, '_wp_trash_meta_time', '1532785737'),
(107, 44, '_wp_trash_meta_status', 'publish'),
(108, 44, '_wp_trash_meta_time', '1532785986'),
(109, 45, '_wp_trash_meta_status', 'publish'),
(110, 45, '_wp_trash_meta_time', '1532786018'),
(113, 47, '_edit_lock', '1532790911:1'),
(114, 47, '_wp_trash_meta_status', 'publish'),
(115, 47, '_wp_trash_meta_time', '1532790955'),
(116, 48, '_edit_lock', '1532791571:1'),
(117, 49, '_wp_attached_file', '2018/07/truck-icon.png'),
(118, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:125;s:4:\"file\";s:22:\"2018/07/truck-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 48, '_wp_trash_meta_status', 'publish'),
(120, 48, '_wp_trash_meta_time', '1532791574'),
(123, 51, '_wp_attached_file', '2018/07/storage-icon.png'),
(124, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:125;s:4:\"file\";s:24:\"2018/07/storage-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 52, '_wp_trash_meta_status', 'publish'),
(126, 52, '_wp_trash_meta_time', '1532792469'),
(127, 53, '_wp_trash_meta_status', 'publish'),
(128, 53, '_wp_trash_meta_time', '1532793218'),
(129, 54, '_wp_trash_meta_status', 'publish'),
(130, 54, '_wp_trash_meta_time', '1532793239'),
(131, 55, '_wp_attached_file', '2018/07/services-bg.jpg'),
(132, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1949;s:6:\"height\";i:1949;s:4:\"file\";s:23:\"2018/07/services-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"services-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"services-bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"services-bg-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"services-bg-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 58, '_wp_trash_meta_status', 'publish'),
(138, 58, '_wp_trash_meta_time', '1532794110'),
(141, 60, '_wp_attached_file', '2018/07/banner2.jpg'),
(142, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:19:\"2018/07/banner2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner2-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 61, '_wp_attached_file', '2018/07/industrial-hall-1630737_1920.jpg'),
(144, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:40:\"2018/07/industrial-hall-1630737_1920.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"industrial-hall-1630737_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"industrial-hall-1630737_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"industrial-hall-1630737_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"industrial-hall-1630737_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"NIKON D3X\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.5\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 63, '_wp_attached_file', '2018/07/felix-russell-saw-234903-unsplash.jpg'),
(148, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:3000;s:4:\"file\";s:45:\"2018/07/felix-russell-saw-234903-unsplash.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"felix-russell-saw-234903-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"felix-russell-saw-234903-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"felix-russell-saw-234903-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"felix-russell-saw-234903-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 65, '_wp_trash_meta_status', 'publish'),
(153, 65, '_wp_trash_meta_time', '1532795274'),
(158, 68, '_wp_trash_meta_status', 'publish'),
(159, 68, '_wp_trash_meta_time', '1532841423'),
(160, 69, '_wp_trash_meta_status', 'publish'),
(161, 69, '_wp_trash_meta_time', '1532841588'),
(162, 70, '_wp_trash_meta_status', 'publish'),
(163, 70, '_wp_trash_meta_time', '1532841838'),
(164, 71, '_wp_trash_meta_status', 'publish'),
(165, 71, '_wp_trash_meta_time', '1532842090'),
(166, 72, '_wp_trash_meta_status', 'publish'),
(167, 72, '_wp_trash_meta_time', '1532842107'),
(170, 74, '_wp_trash_meta_status', 'publish'),
(171, 74, '_wp_trash_meta_time', '1532849823'),
(178, 78, '_edit_lock', '1532851873:1'),
(179, 78, '_wp_trash_meta_status', 'publish'),
(180, 78, '_wp_trash_meta_time', '1532851898'),
(181, 79, '_edit_lock', '1532851933:1'),
(182, 79, '_wp_trash_meta_status', 'publish'),
(183, 79, '_wp_trash_meta_time', '1532851947'),
(184, 80, '_wp_trash_meta_status', 'publish'),
(185, 80, '_wp_trash_meta_time', '1532852127'),
(188, 82, '_wp_trash_meta_status', 'publish'),
(189, 82, '_wp_trash_meta_time', '1532852334'),
(190, 83, '_wp_trash_meta_status', 'publish'),
(191, 83, '_wp_trash_meta_time', '1532852415'),
(192, 84, '_wp_attached_file', '2018/07/fb.png'),
(193, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:14:\"2018/07/fb.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 85, '_edit_lock', '1532852532:1'),
(195, 85, '_wp_trash_meta_status', 'publish'),
(196, 85, '_wp_trash_meta_time', '1532852569'),
(197, 9, '_wp_trash_meta_status', 'publish'),
(198, 9, '_wp_trash_meta_time', '1532853129'),
(199, 9, '_wp_desired_post_slug', 'trucking'),
(200, 11, '_wp_trash_meta_status', 'publish'),
(201, 11, '_wp_trash_meta_time', '1532853132'),
(202, 11, '_wp_desired_post_slug', 'warehouse-storage-solutions'),
(203, 3, '_wp_trash_meta_status', 'draft'),
(204, 3, '_wp_trash_meta_time', '1532853139'),
(205, 3, '_wp_desired_post_slug', 'privacy-policy'),
(206, 7, '_wp_page_template', 'services.php'),
(207, 88, '_wp_trash_meta_status', 'publish'),
(208, 88, '_wp_trash_meta_time', '1532853743'),
(209, 89, '_wp_trash_meta_status', 'publish'),
(210, 89, '_wp_trash_meta_time', '1532853764'),
(211, 31, '_wp_page_template', 'contact-us.php'),
(214, 93, '_wp_trash_meta_status', 'publish'),
(215, 93, '_wp_trash_meta_time', '1533983934'),
(216, 94, '_wp_trash_meta_status', 'publish'),
(217, 94, '_wp_trash_meta_time', '1533984013'),
(220, 96, '_wp_trash_meta_status', 'publish'),
(221, 96, '_wp_trash_meta_time', '1533985195'),
(222, 97, '_wp_trash_meta_status', 'publish'),
(223, 97, '_wp_trash_meta_time', '1533985217'),
(242, 107, '_wp_trash_meta_status', 'publish'),
(243, 107, '_wp_trash_meta_time', '1534040333'),
(260, 116, '_wp_trash_meta_status', 'publish'),
(261, 116, '_wp_trash_meta_time', '1534077004'),
(262, 117, '_wp_trash_meta_status', 'publish'),
(263, 117, '_wp_trash_meta_time', '1534077065'),
(268, 119, '_edit_lock', '1534588879:1'),
(269, 119, '_customize_restore_dismissed', '1'),
(270, 120, '_wp_trash_meta_status', 'publish'),
(271, 120, '_wp_trash_meta_time', '1534594216'),
(272, 121, '_edit_lock', '1534594447:1'),
(273, 121, '_customize_restore_dismissed', '1'),
(274, 122, '_wp_trash_meta_status', 'publish'),
(275, 122, '_wp_trash_meta_time', '1534594821'),
(276, 123, '_edit_lock', '1534594929:1'),
(277, 123, '_customize_restore_dismissed', '1'),
(278, 124, '_edit_lock', '1534594967:1'),
(279, 124, '_customize_restore_dismissed', '1'),
(280, 125, '_edit_lock', '1534595389:1'),
(281, 125, '_customize_restore_dismissed', '1'),
(282, 126, '_edit_lock', '1534596189:1'),
(283, 126, '_wp_trash_meta_status', 'publish'),
(284, 126, '_wp_trash_meta_time', '1534596195'),
(285, 127, '_edit_lock', '1534596355:1'),
(286, 127, '_customize_restore_dismissed', '1'),
(287, 128, '_edit_lock', '1534596509:1'),
(288, 128, '_customize_restore_dismissed', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-21 10:01:02', '2018-07-21 10:01:02', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-21 10:01:02', '2018-07-21 10:01:02', '', 0, 'http://localhost/hongtah/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-21 10:01:02', '2018-07-21 10:01:02', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/hongtah/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-07-22 10:32:18', '2018-07-22 10:32:18', '', 0, 'http://localhost/hongtah/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-21 10:01:02', '2018-07-21 10:01:02', '<h2>Who we are</h2><p>Our website address is: http://localhost/hongtah.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-07-29 08:32:19', '2018-07-29 08:32:19', '', 0, 'http://localhost/hongtah/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-22 06:26:58', '2018-07-22 06:26:58', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-29 08:31:48', '2018-07-29 08:31:48', '', 0, 'http://localhost/hongtah/?p=5', 1, 'nav_menu_item', '', 0),
(7, 1, '2018-07-22 06:55:44', '2018-07-22 06:55:44', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-07-29 08:48:54', '2018-07-29 08:48:54', '', 0, 'http://localhost/hongtah/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-07-22 06:55:44', '2018-07-22 06:55:44', 'Services', 'Services', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-22 06:55:44', '2018-07-22 06:55:44', '', 7, 'http://localhost/hongtah/2018/07/22/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-07-22 06:55:59', '2018-07-22 06:55:59', 'Trucking', 'Trucking', '', 'trash', 'closed', 'closed', '', 'trucking__trashed', '', '', '2018-07-29 08:32:09', '2018-07-29 08:32:09', '', 7, 'http://localhost/hongtah/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-07-22 06:55:59', '2018-07-22 06:55:59', 'Trucking', 'Trucking', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-22 06:55:59', '2018-07-22 06:55:59', '', 9, 'http://localhost/hongtah/2018/07/22/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-07-22 06:58:13', '2018-07-22 06:58:13', 'Warehouse Storage Solutions', 'Warehouse Storage Solutions', '', 'trash', 'closed', 'closed', '', 'warehouse-storage-solutions__trashed', '', '', '2018-07-29 08:32:12', '2018-07-29 08:32:12', '', 7, 'http://localhost/hongtah/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-07-22 06:58:13', '2018-07-22 06:58:13', 'Warehouse Storage Solutions', 'Warehouse Storage Solutions', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-22 06:58:13', '2018-07-22 06:58:13', '', 11, 'http://localhost/hongtah/2018/07/22/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-07-22 06:58:44', '2018-07-22 06:58:44', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-07-29 08:31:49', '2018-07-29 08:31:49', '', 0, 'http://localhost/hongtah/?p=13', 3, 'nav_menu_item', '', 0),
(16, 1, '2018-07-22 07:07:45', '2018-07-22 07:07:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute i rure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 1', '', 'publish', 'open', 'open', '', 'blog-post-1', '', '', '2018-07-22 07:52:00', '2018-07-22 07:52:00', '', 0, 'http://localhost/hongtah/?p=16', 0, 'post', '', 0),
(17, 1, '2018-07-22 07:07:45', '2018-07-22 07:07:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 1', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-22 07:07:45', '2018-07-22 07:07:45', '', 16, 'http://localhost/hongtah/2018/07/22/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-07-22 07:52:00', '2018-07-22 07:52:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute i rure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog Post 1', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-22 07:52:00', '2018-07-22 07:52:00', '', 16, 'http://localhost/hongtah/2018/07/22/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-07-22 07:52:39', '2018-07-22 07:52:39', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'Blog Post 2', '', 'publish', 'open', 'open', '', 'blog-post-2', '', '', '2018-07-22 07:52:39', '2018-07-22 07:52:39', '', 0, 'http://localhost/hongtah/?p=19', 0, 'post', '', 0),
(20, 1, '2018-07-22 07:52:39', '2018-07-22 07:52:39', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'Blog Post 2', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-22 07:52:39', '2018-07-22 07:52:39', '', 19, 'http://localhost/hongtah/2018/07/22/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-07-22 08:05:48', '2018-07-22 08:05:48', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-22 08:05:48', '2018-07-22 08:05:48', '', 0, 'http://localhost/hongtah/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-07-22 08:05:48', '2018-07-22 08:05:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-22 08:05:48', '2018-07-22 08:05:48', '', 21, 'http://localhost/hongtah/2018/07/22/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-07-22 08:05:59', '2018-07-22 08:05:59', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-22 08:05:59', '2018-07-22 08:05:59', '', 0, 'http://localhost/hongtah/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-07-22 08:05:59', '2018-07-22 08:05:59', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-22 08:05:59', '2018-07-22 08:05:59', '', 24, 'http://localhost/hongtah/2018/07/22/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-07-22 10:10:48', '2018-07-22 10:10:48', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-07-22 10:10:48', '2018-07-22 10:10:48', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/logo.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2018-07-22 10:11:12', '2018-07-22 10:11:12', '{\n    \"wpcustomtheme::custom_logo\": {\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-22 10:11:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '36609311-31cb-4bd7-a457-917235e5063d', '', '', '2018-07-22 10:11:12', '2018-07-22 10:11:12', '', 0, 'http://localhost/hongtah/2018/07/22/36609311-31cb-4bd7-a457-917235e5063d/', 0, 'customize_changeset', '', 0),
(28, 1, '2018-07-22 10:32:18', '2018-07-22 10:32:18', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/hongtah/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-22 10:32:18', '2018-07-22 10:32:18', '', 2, 'http://localhost/hongtah/2018/07/22/2-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-07-22 12:28:26', '2018-07-22 12:28:26', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-07-30 14:48:14', '2018-07-30 14:48:14', '', 0, 'http://localhost/hongtah/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-07-22 12:28:26', '2018-07-22 12:28:26', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-07-22 12:28:26', '2018-07-22 12:28:26', '', 29, 'http://localhost/hongtah/2018/07/22/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-07-22 12:28:38', '2018-07-22 12:28:38', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-07-30 14:48:36', '2018-07-30 14:48:36', '', 0, 'http://localhost/hongtah/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-07-22 12:28:38', '2018-07-22 12:28:38', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-07-22 12:28:38', '2018-07-22 12:28:38', '', 31, 'http://localhost/hongtah/2018/07/22/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-07-22 12:29:06', '2018-07-22 12:29:06', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2018-07-29 08:31:49', '2018-07-29 08:31:49', '', 0, 'http://localhost/hongtah/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2018-07-22 12:29:06', '2018-07-22 12:29:06', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-07-29 08:31:49', '2018-07-29 08:31:49', '', 0, 'http://localhost/hongtah/?p=34', 2, 'nav_menu_item', '', 0),
(37, 1, '2018-07-28 10:30:22', '2018-07-28 10:30:22', 'f', 'About Us', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-07-28 10:30:22', '2018-07-28 10:30:22', '', 29, 'http://localhost/hongtah/2018/07/28/29-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-07-28 13:00:20', '2018-07-28 13:00:20', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-07-28 13:00:20', '2018-07-28 13:00:20', '', 29, 'http://localhost/hongtah/2018/07/28/29-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-07-28 13:46:18', '2018-07-28 13:46:18', '{\n    \"wpcustomtheme::banner_heading\": {\n        \"value\": \"Company Profiles\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 13:46:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f21bc22c-ed6d-41d6-aaaf-f93c87d7f33a', '', '', '2018-07-28 13:46:18', '2018-07-28 13:46:18', '', 0, 'http://localhost/hongtah/2018/07/28/f21bc22c-ed6d-41d6-aaaf-f93c87d7f33a/', 0, 'customize_changeset', '', 0),
(42, 1, '2018-07-28 13:47:15', '2018-07-28 13:47:15', '{\n    \"wpcustomtheme::banner_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 13:47:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d218744-59ef-4dac-a2c7-fb466f5eb668', '', '', '2018-07-28 13:47:15', '2018-07-28 13:47:15', '', 0, 'http://localhost/hongtah/2018/07/28/5d218744-59ef-4dac-a2c7-fb466f5eb668/', 0, 'customize_changeset', '', 0),
(43, 1, '2018-07-28 13:48:57', '2018-07-28 13:48:57', '{\n    \"wpcustomtheme::banner_heading\": {\n        \"value\": \"Company Profile\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 13:48:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8080e6bc-dfb1-4705-9e49-79ccaf827595', '', '', '2018-07-28 13:48:57', '2018-07-28 13:48:57', '', 0, 'http://localhost/hongtah/2018/07/28/8080e6bc-dfb1-4705-9e49-79ccaf827595/', 0, 'customize_changeset', '', 0),
(44, 1, '2018-07-28 13:53:05', '2018-07-28 13:53:05', '{\n    \"wpcustomtheme::banner_text\": {\n        \"value\": \"hehehehehe\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 13:53:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '622d8f26-b7f9-4098-aee9-92fcf62c35b9', '', '', '2018-07-28 13:53:05', '2018-07-28 13:53:05', '', 0, 'http://localhost/hongtah/2018/07/28/622d8f26-b7f9-4098-aee9-92fcf62c35b9/', 0, 'customize_changeset', '', 0),
(45, 1, '2018-07-28 13:53:38', '2018-07-28 13:53:38', '{\n    \"wpcustomtheme::banner_text\": {\n        \"value\": \"Hong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners. \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 13:53:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '50248589-18a1-4bb5-a1ac-9dc771b2b4db', '', '', '2018-07-28 13:53:38', '2018-07-28 13:53:38', '', 0, 'http://localhost/hongtah/2018/07/28/50248589-18a1-4bb5-a1ac-9dc771b2b4db/', 0, 'customize_changeset', '', 0),
(47, 1, '2018-07-28 15:15:55', '2018-07-28 15:15:55', '{\n    \"widget_text[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjQ2MToiPGRpdiBjbGFzcz0iZmVhdHVyZS1pY29uIG1yLTMiPg0KPGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvaG9uZ3RhaC93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wNy9sb2dvLTMwMHgxNDEucG5nIiBhbHQ9IiIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIxNDEiIGNsYXNzPSJhbGlnbm5vbmUgLz4NCiAgICAgICAgICAgICAgICAgICAgPC9kaXY+DQogICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImZlYXR1cmUtY29udGVudCI+DQogICAgICAgICAgICAgICAgICAgICAgICA8aDM+VmlzaW9uPC9oMz4NCiAgICAgICAgICAgICAgICAgICAgICAgIDxwPkEgZGV2ZWxvcGluZyBhbmQgZXhwYW5kaW5nIGxvZ2lzdGljcyBidXNpbmVzcyB0aHJvdWdoIHJlbGlhYmxlLCBhbmQgaW5zaWdodGZ1bCB0cnVja2luZyBhbmQgdHJhbnNwb3J0YXRpb24gc2VydmljZXMuPC9wPg0KICAgICAgICAgICAgICAgICAgICA8L2Rpdj4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"227fc7689f1ecb45f023c86a74d56965\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:14:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f8010d36-4c6d-4531-a9c6-eb089578e17d', '', '', '2018-07-28 15:15:55', '2018-07-28 15:15:55', '', 0, 'http://localhost/hongtah/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2018-07-28 15:26:14', '2018-07-28 15:26:14', '{\n    \"widget_text[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjA6IiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b0d01b3a86582c4db424c5df9c58bc75\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:22:18\"\n    },\n    \"sidebars_widgets[feature_1]\": {\n        \"value\": [\n            \"media_image-3\",\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:24:19\"\n    },\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjQ0MToiPGRpdiBjbGFzcz0iZmVhdHVyZS1pY29uIG1yLTMiPg0KICAgICAgICAgICAgICAgICAgICAgICAgPGltZyBzcmM9Ijw/cGhwIGJsb2dpbmZvKCd0ZW1wbGF0ZV91cmwnKT8+L2ltYWdlcy90cnVjay1pY29uLnBuZyIgd2lkdGg9IjEyNXB4IiBhbHQ9IiI+DQogICAgICAgICAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJmZWF0dXJlLWNvbnRlbnQiPg0KICAgICAgICAgICAgICAgICAgICAgICAgPGgzPlZpc2lvbjwvaDM+DQogICAgICAgICAgICAgICAgICAgICAgICA8cD5BIGRldmVsb3BpbmcgYW5kIGV4cGFuZGluZyBsb2dpc3RpY3MgYnVzaW5lc3MgdGhyb3VnaCByZWxpYWJsZSwgYW5kIGluc2lnaHRmdWwgdHJ1Y2tpbmcgYW5kIHRyYW5zcG9ydGF0aW9uIHNlcnZpY2VzLjwvcD4NCiAgICAgICAgICAgICAgICAgICAgPC9kaXY+Ijt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1fc4ac92231fbc08d3a8d3f3f81abc61\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:22:18\"\n    },\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\",\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:23:17\"\n    },\n    \"widget_media_image[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo0OTtzOjM6InVybCI7czo2NjoiaHR0cDovL2xvY2FsaG9zdC9ob25ndGFoL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L3RydWNrLWljb24ucG5nIjtzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6NToid2lkdGgiO2k6MTI1O3M6NjoiaGVpZ2h0IjtpOjEyNTtzOjc6ImNhcHRpb24iO3M6MDoiIjtzOjM6ImFsdCI7czowOiIiO3M6OToibGlua190eXBlIjtzOjQ6Im5vbmUiO3M6ODoibGlua191cmwiO3M6MDoiIjtzOjEzOiJpbWFnZV9jbGFzc2VzIjtzOjA6IiI7czoxMjoibGlua19jbGFzc2VzIjtzOjA6IiI7czo4OiJsaW5rX3JlbCI7czowOiIiO3M6MTc6ImxpbmtfdGFyZ2V0X2JsYW5rIjtiOjA7czoxMToiaW1hZ2VfdGl0bGUiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"918d4646ec2ff7a62909e353e767764c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:26:14\"\n    },\n    \"widget_text[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjEyMzoiPGgzPk1pc3Npb248L2gzPg0KICAgICAgICAgICAgICAgICAgICAgICAgPHA+VG8gYmUgYSByZXB1dGFibGUgYW5kIHByb3ZlZCB0cnVja2luZyBzZXJ2aWNlIHByb3ZpZGVyIGluIHRoZSBQaGlsaXBwaW5lcy48L3A+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"58b2eb5949d05493f9d08ccbae415a0b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:25:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1666a43d-0294-4247-b78e-90e1edb7d2c8', '', '', '2018-07-28 15:26:14', '2018-07-28 15:26:14', '', 0, 'http://localhost/hongtah/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2018-07-28 15:25:57', '2018-07-28 15:25:57', '', 'truck-icon', '', 'inherit', 'open', 'closed', '', 'truck-icon', '', '', '2018-07-28 15:25:57', '2018-07-28 15:25:57', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/truck-icon.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-07-28 15:40:24', '2018-07-28 15:40:24', '', 'storage-icon', '', 'inherit', 'open', 'closed', '', 'storage-icon', '', '', '2018-07-28 15:40:24', '2018-07-28 15:40:24', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/storage-icon.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-07-28 15:41:09', '2018-07-28 15:41:09', '{\n    \"sidebars_widgets[feature_2]\": {\n        \"value\": [\n            \"media_image-5\",\n            \"text-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:41:09\"\n    },\n    \"widget_media_image[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo1MTtzOjM6InVybCI7czo2ODoiaHR0cDovL2xvY2FsaG9zdC9ob25ndGFoL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L3N0b3JhZ2UtaWNvbi5wbmciO3M6NToidGl0bGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo1OiJ3aWR0aCI7aToxMjU7czo2OiJoZWlnaHQiO2k6MTI1O3M6NzoiY2FwdGlvbiI7czowOiIiO3M6MzoiYWx0IjtzOjA6IiI7czo5OiJsaW5rX3R5cGUiO3M6NjoiY3VzdG9tIjtzOjg6ImxpbmtfdXJsIjtzOjA6IiI7czoxMzoiaW1hZ2VfY2xhc3NlcyI7czowOiIiO3M6MTI6ImxpbmtfY2xhc3NlcyI7czowOiIiO3M6ODoibGlua19yZWwiO3M6MDoiIjtzOjE3OiJsaW5rX3RhcmdldF9ibGFuayI7YjowO3M6MTE6ImltYWdlX3RpdGxlIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e423f2fd4c8fc5dcf08ea7d53aa3fd13\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:41:09\"\n    },\n    \"widget_text[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjkxOiI8aDM+TWlzc2lvbjwvaDM+DQpUbyBiZSBhIHJlcHV0YWJsZSBhbmQgcHJvdmVkIHRydWNraW5nIHNlcnZpY2UgcHJvdmlkZXIgaW4gdGhlIFBoaWxpcHBpbmVzIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2a6e4ebafaa08342d80d7c723df348d5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:41:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec4f659f-7527-44c5-91e7-ed5a477bf625', '', '', '2018-07-28 15:41:09', '2018-07-28 15:41:09', '', 0, 'http://localhost/hongtah/2018/07/28/ec4f659f-7527-44c5-91e7-ed5a477bf625/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-07-28 15:53:38', '2018-07-28 15:53:38', '{\n    \"sidebars_widgets[feature_3]\": {\n        \"value\": [\n            \"media_image-7\",\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:53:38\"\n    },\n    \"widget_media_image[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo0OTtzOjM6InVybCI7czo2NjoiaHR0cDovL2xvY2FsaG9zdC9ob25ndGFoL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L3RydWNrLWljb24ucG5nIjtzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6NToid2lkdGgiO2k6MTI1O3M6NjoiaGVpZ2h0IjtpOjEyNTtzOjc6ImNhcHRpb24iO3M6MDoiIjtzOjM6ImFsdCI7czowOiIiO3M6OToibGlua190eXBlIjtzOjY6ImN1c3RvbSI7czo4OiJsaW5rX3VybCI7czowOiIiO3M6MTM6ImltYWdlX2NsYXNzZXMiO3M6MDoiIjtzOjEyOiJsaW5rX2NsYXNzZXMiO3M6MDoiIjtzOjg6ImxpbmtfcmVsIjtzOjA6IiI7czoxNzoibGlua190YXJnZXRfYmxhbmsiO2I6MDtzOjExOiJpbWFnZV90aXRsZSI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6a943775b97617967deb949088786b83\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:53:38\"\n    },\n    \"widget_text[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjkxOiI8aDM+TWlzc2lvbjwvaDM+DQpUbyBiZSBhIHJlcHV0YWJsZSBhbmQgcHJvdmVkIHRydWNraW5nIHNlcnZpY2UgcHJvdmlkZXIgaW4gdGhlIFBoaWxpcHBpbmVzIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2a6e4ebafaa08342d80d7c723df348d5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:53:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7760ca9a-b50e-4e03-81e1-7002eeea5fad', '', '', '2018-07-28 15:53:38', '2018-07-28 15:53:38', '', 0, 'http://localhost/hongtah/2018/07/28/7760ca9a-b50e-4e03-81e1-7002eeea5fad/', 0, 'customize_changeset', '', 0),
(54, 1, '2018-07-28 15:53:59', '2018-07-28 15:53:59', '{\n    \"widget_text[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjEwMToiPGgzPkNsaWVudCBwcm9taXNlOjwvaDM+DQpXZSBjdWx0dXJlIHRpbWUsIGVmZm9ydCBhbmQgZnVuZCBlZmZpY2llbmN5IGluIGFsbCBwYXJ0cyBvZiBvdXIgb3BlcmF0aW9ucy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3426924efff84462aacd57fa9ecdaae5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 15:53:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e340b303-05ed-447b-8d88-05192c2486f5', '', '', '2018-07-28 15:53:59', '2018-07-28 15:53:59', '', 0, 'http://localhost/hongtah/2018/07/28/e340b303-05ed-447b-8d88-05192c2486f5/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-07-28 15:55:10', '2018-07-28 15:55:10', '', 'services-bg', '', 'inherit', 'open', 'closed', '', 'services-bg', '', '', '2018-07-28 15:55:10', '2018-07-28 15:55:10', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/services-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-07-28 16:08:29', '2018-07-28 16:08:29', '{\n    \"wpcustomtheme::banner_image\": {\n        \"value\": \"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/services-bg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 16:08:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4eb38fb6-ddec-4456-93ac-18a9c3765607', '', '', '2018-07-28 16:08:29', '2018-07-28 16:08:29', '', 0, 'http://localhost/hongtah/2018/07/28/4eb38fb6-ddec-4456-93ac-18a9c3765607/', 0, 'customize_changeset', '', 0),
(60, 1, '2018-07-28 16:19:06', '2018-07-28 16:19:06', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2', '', '', '2018-07-28 16:19:06', '2018-07-28 16:19:06', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/banner2.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-07-28 16:19:25', '2018-07-28 16:19:25', '', 'industrial-hall-1630737_1920', '', 'inherit', 'open', 'closed', '', 'industrial-hall-1630737_1920', '', '', '2018-07-28 16:19:25', '2018-07-28 16:19:25', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/industrial-hall-1630737_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-07-28 16:24:55', '2018-07-28 16:24:55', '', 'felix-russell-saw-234903-unsplash', '', 'inherit', 'open', 'closed', '', 'felix-russell-saw-234903-unsplash', '', '', '2018-07-28 16:24:55', '2018-07-28 16:24:55', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/felix-russell-saw-234903-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-07-28 16:27:53', '2018-07-28 16:27:53', '{\n    \"wpcustomtheme::banner_image\": {\n        \"value\": \"http://localhost/hongtah/wp-content/uploads/2018/07/banner2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-28 16:27:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0634963b-b230-42ba-bb76-da387a2bd28b', '', '', '2018-07-28 16:27:53', '2018-07-28 16:27:53', '', 0, 'http://localhost/hongtah/2018/07/28/0634963b-b230-42ba-bb76-da387a2bd28b/', 0, 'customize_changeset', '', 0),
(68, 1, '2018-07-29 05:17:03', '2018-07-29 05:17:03', '{\n    \"wpcustomtheme::home_image1\": {\n        \"value\": \"http://localhost/hongtah/wp-content/uploads/2018/07/industrial-hall-1630737_1920.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 05:17:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dccf0339-353a-4d85-a01e-81349864c047', '', '', '2018-07-29 05:17:03', '2018-07-29 05:17:03', '', 0, 'http://localhost/hongtah/2018/07/29/dccf0339-353a-4d85-a01e-81349864c047/', 0, 'customize_changeset', '', 0),
(69, 1, '2018-07-29 05:19:48', '2018-07-29 05:19:48', '{\n    \"wpcustomtheme::home_image1\": {\n        \"value\": \"http://localhost/hongtah/wp-content/uploads/2018/07/industrial-hall-1630737_1920.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 05:19:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a7fe6cbf-aec9-4810-b6d7-0427f900c18a', '', '', '2018-07-29 05:19:48', '2018-07-29 05:19:48', '', 0, 'http://localhost/hongtah/2018/07/29/a7fe6cbf-aec9-4810-b6d7-0427f900c18a/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-07-29 05:23:58', '2018-07-29 05:23:58', '{\n    \"wpcustomtheme::home_image2\": {\n        \"value\": \"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/banner2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 05:23:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '722f8676-2867-43c4-b7d2-e1fabb2d47f0', '', '', '2018-07-29 05:23:58', '2018-07-29 05:23:58', '', 0, 'http://localhost/hongtah/2018/07/29/722f8676-2867-43c4-b7d2-e1fabb2d47f0/', 0, 'customize_changeset', '', 0),
(71, 1, '2018-07-29 05:28:10', '2018-07-29 05:28:10', '{\n    \"wpcustomtheme::home_image3\": {\n        \"value\": \"http://localhost/hongtah/wp-content/uploads/2018/07/logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 05:28:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '39bad06d-3fdb-46a2-9679-df168223dffa', '', '', '2018-07-29 05:28:10', '2018-07-29 05:28:10', '', 0, 'http://localhost/hongtah/2018/07/29/39bad06d-3fdb-46a2-9679-df168223dffa/', 0, 'customize_changeset', '', 0),
(72, 1, '2018-07-29 05:28:27', '2018-07-29 05:28:27', '{\n    \"wpcustomtheme::home_image3\": {\n        \"value\": \"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/banner3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 05:28:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2f271600-04b5-4916-b632-af1105b7bd7d', '', '', '2018-07-29 05:28:27', '2018-07-29 05:28:27', '', 0, 'http://localhost/hongtah/2018/07/29/2f271600-04b5-4916-b632-af1105b7bd7d/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-07-29 07:37:03', '2018-07-29 07:37:03', '{\n    \"widget_custom_html[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjU0OiI8YSBocmVmPSIjIiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5Ij5HbyB0byBTZXJ2aWNlczwvYT4iO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b2a7964d2a6061d0e9d7c7f30b625edf\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 07:37:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'edd03ab9-727b-47b4-bea7-a76c1cb1b162', '', '', '2018-07-29 07:37:03', '2018-07-29 07:37:03', '', 0, 'http://localhost/hongtah/2018/07/29/edd03ab9-727b-47b4-bea7-a76c1cb1b162/', 0, 'customize_changeset', '', 0),
(78, 1, '2018-07-29 08:11:37', '2018-07-29 08:11:37', '{\n    \"sidebars_widgets[contactoverview_2]\": {\n        \"value\": [\n            \"text-13\",\n            \"custom_html-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:11:13\"\n    },\n    \"widget_text[13]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiJNYWluIExvY2F0aW9uIjtzOjQ6InRleHQiO3M6MTI1OiJLbS4gMTggMzxzdXA+cmQ8L3N1cD4vRmxyLCBQb2x5bGl0ZSBIb3VzZSwgQW5uZXggQnVpbGRpbmcsIEFsYWJhbmctWmFwb3RlIFJkLiBMYXMgUGnDsWFzIENpdHksIE1ldHJvIE1hbmlsYSwgUGhpbGlwcGluZXMgMTc0NyI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Main Location\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fdcb0a56182e800fb66e118175a51d53\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:11:13\"\n    },\n    \"widget_custom_html[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjM2OToiPGlmcmFtZSBzcmM9Imh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vbWFwcy9lbWJlZD9wYj0hMW0xOCExbTEyITFtMyExZDM4NjMuNjQzNzg0NDI2NjYzNCEyZDEyMC45ODIzMzEzMTU0MTMhM2QxNC40NDc2ODA3ODk5MDAwODUhMm0zITFmMCEyZjAhM2YwITNtMiExaTEwMjQhMmk3NjghNGYxMy4xITNtMyExbTIhMXMweDAlM0EweGMzOWJkNTRkOTg3ZGM5ZTMhMnNQb2x5bGl0ZStJbmR1c3RyaWFsK0NvcnAuITVlMCEzbTIhMXNlbiEyc3BoITR2MTUzMjE3NTY1NjExMyINCiAgICAgICAgICAgICAgICAgICAgd2lkdGg9IjEwMCUiIGhlaWdodD0iMzAwIiBmcmFtZWJvcmRlcj0iMCIgc3R5bGU9ImJvcmRlcjowIiBhbGxvd2Z1bGxzY3JlZW4+PC9pZnJhbWU+Ijt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1c507985f6f94c6b91bfeefa770e05db\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:11:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e5d637f5-e879-4ec1-b127-75cef33167c6', '', '', '2018-07-29 08:11:37', '2018-07-29 08:11:37', '', 0, 'http://localhost/hongtah/?p=78', 0, 'customize_changeset', '', 0),
(79, 1, '2018-07-29 08:12:27', '2018-07-29 08:12:27', '{\n    \"sidebars_widgets[contactoverview_3]\": {\n        \"value\": [\n            \"text-14\",\n            \"custom_html-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:12:13\"\n    },\n    \"widget_text[14]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE2OiJQYXJraW5nIExvY2F0aW9uIjtzOjQ6InRleHQiO3M6MTI1OiJLbS4gMTggMzxzdXA+cmQ8L3N1cD4vRmxyLCBQb2x5bGl0ZSBIb3VzZSwgQW5uZXggQnVpbGRpbmcsIEFsYWJhbmctWmFwb3RlIFJkLiBMYXMgUGnDsWFzIENpdHksIE1ldHJvIE1hbmlsYSwgUGhpbGlwcGluZXMgMTc0NyI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Parking Location\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1f4a85dd118d0e3baacac0a316db4df6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:12:27\"\n    },\n    \"widget_custom_html[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjM2OToiPGlmcmFtZSBzcmM9Imh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vbWFwcy9lbWJlZD9wYj0hMW0xOCExbTEyITFtMyExZDM4NjMuNjQzNzg0NDI2NjYzNCEyZDEyMC45ODIzMzEzMTU0MTMhM2QxNC40NDc2ODA3ODk5MDAwODUhMm0zITFmMCEyZjAhM2YwITNtMiExaTEwMjQhMmk3NjghNGYxMy4xITNtMyExbTIhMXMweDAlM0EweGMzOWJkNTRkOTg3ZGM5ZTMhMnNQb2x5bGl0ZStJbmR1c3RyaWFsK0NvcnAuITVlMCEzbTIhMXNlbiEyc3BoITR2MTUzMjE3NTY1NjExMyINCiAgICAgICAgICAgICAgICAgICAgd2lkdGg9IjEwMCUiIGhlaWdodD0iMzAwIiBmcmFtZWJvcmRlcj0iMCIgc3R5bGU9ImJvcmRlcjowIiBhbGxvd2Z1bGxzY3JlZW4+PC9pZnJhbWU+Ijt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1c507985f6f94c6b91bfeefa770e05db\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:12:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85475bf4-1995-4764-bbcb-4342a50f84a0', '', '', '2018-07-29 08:12:27', '2018-07-29 08:12:27', '', 0, 'http://localhost/hongtah/?p=79', 0, 'customize_changeset', '', 0),
(80, 1, '2018-07-29 08:15:27', '2018-07-29 08:15:27', '{\n    \"sidebars_widgets[contactoverview_1]\": {\n        \"value\": [\n            \"text-16\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:15:27\"\n    },\n    \"widget_text[16]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDb250YWN0IFVzIjtzOjQ6InRleHQiO3M6MDoiIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Contact Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"627a67f3e3c45c0a9589fea29cbed4a1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:15:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15f98122-5c05-4632-b2d0-3b1c39b644b2', '', '', '2018-07-29 08:15:27', '2018-07-29 08:15:27', '', 0, 'http://localhost/hongtah/2018/07/29/15f98122-5c05-4632-b2d0-3b1c39b644b2/', 0, 'customize_changeset', '', 0),
(82, 1, '2018-07-29 08:18:54', '2018-07-29 08:18:54', '{\n    \"widget_text[16]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDb250YWN0IFVzIjtzOjQ6InRleHQiO3M6NzA6IkhvbmcgVGFoIExvZ2lzdGljcyBJbmMuDQoNCis2MzIgOTUyLTUxMzQNCg0KaG9uZ3RhaGxvZ2lzdGljc0BnbWFpbC5jb20iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Contact Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"39944f0c3210f4efc7a2a8e019b873a5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:18:54\"\n    },\n    \"sidebars_widgets[contactoverview_1]\": {\n        \"value\": [\n            \"text-16\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:18:54\"\n    },\n    \"widget_text[18]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:18:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f906b39-78c4-4615-8319-c31449e860e5', '', '', '2018-07-29 08:18:54', '2018-07-29 08:18:54', '', 0, 'http://localhost/hongtah/2018/07/29/7f906b39-78c4-4615-8319-c31449e860e5/', 0, 'customize_changeset', '', 0),
(83, 1, '2018-07-29 08:20:15', '2018-07-29 08:20:15', '{\n    \"widget_text[16]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDb250YWN0IFVzIjtzOjQ6InRleHQiO3M6MTE4OiJIb25nIFRhaCBMb2dpc3RpY3MgSW5jLg0KDQorNjMyIDk1Mi01MTM0DQoNCjxhIGhyZWY9Im1haWx0bzpob25ndGFobG9naXN0aWNzQGdtYWlsLmNvbSI+aG9uZ3RhaGxvZ2lzdGljc0BnbWFpbC5jb208L2E+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Contact Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d6641874ca49930193957c9ab4b77740\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:20:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '52c4a744-a0a6-4500-b5e5-9951174e3f74', '', '', '2018-07-29 08:20:15', '2018-07-29 08:20:15', '', 0, 'http://localhost/hongtah/2018/07/29/52c4a744-a0a6-4500-b5e5-9951174e3f74/', 0, 'customize_changeset', '', 0),
(84, 1, '2018-07-29 08:21:50', '2018-07-29 08:21:50', '', 'fb', '', 'inherit', 'open', 'closed', '', 'fb', '', '', '2018-07-29 08:21:50', '2018-07-29 08:21:50', '', 0, 'http://localhost/hongtah/wp-content/uploads/2018/07/fb.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2018-07-29 08:22:49', '2018-07-29 08:22:49', '{\n    \"widget_text[16]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDb250YWN0IFVzIjtzOjQ6InRleHQiO3M6MzE5OiJIb25nIFRhaCBMb2dpc3RpY3MgSW5jLg0KDQorNjMyIDk1Mi01MTM0DQoNCjxhIGhyZWY9Im1haWx0bzpob25ndGFobG9naXN0aWNzQGdtYWlsLmNvbSI+aG9uZ3RhaGxvZ2lzdGljc0BnbWFpbC5jb208L2E+DQoNCkxpa2UgdXMgb246DQoNCjxhIGhyZWY9Imh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS8iPjxpbWcgY2xhc3M9ImFsaWdubm9uZSBzaXplLWZ1bGwgd3AtaW1hZ2UtODQiIHNyYz0iaHR0cDovL2xvY2FsaG9zdC9ob25ndGFoL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE4LzA3L2ZiLnBuZyIgYWx0PSIiIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgLz48L2E+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Contact Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1e3feb34c4f31d3fbd15536623c8135c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:22:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a01634d4-bab0-4bc0-86bf-3d65600018de', '', '', '2018-07-29 08:22:49', '2018-07-29 08:22:49', '', 0, 'http://localhost/hongtah/?p=85', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2018-07-29 08:32:19', '2018-07-29 08:32:19', '<h2>Who we are</h2><p>Our website address is: http://localhost/hongtah.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-29 08:32:19', '2018-07-29 08:32:19', '', 3, 'http://localhost/hongtah/2018/07/29/3-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-07-29 08:35:14', '2018-07-29 08:35:14', '', 'Services', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-29 08:35:14', '2018-07-29 08:35:14', '', 7, 'http://localhost/hongtah/2018/07/29/7-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-07-29 08:42:23', '2018-07-29 08:42:23', '{\n    \"wpcustomtheme::banner_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:42:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f038c773-3bae-4ace-8771-07fb1bf4a5ac', '', '', '2018-07-29 08:42:23', '2018-07-29 08:42:23', '', 0, 'http://localhost/hongtah/2018/07/29/f038c773-3bae-4ace-8771-07fb1bf4a5ac/', 0, 'customize_changeset', '', 0),
(89, 1, '2018-07-29 08:42:44', '2018-07-29 08:42:44', '{\n    \"wpcustomtheme::banner_image\": {\n        \"value\": \"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/services-bg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-29 08:42:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dcdaaf99-74dc-4830-ad71-a985bae7ab4e', '', '', '2018-07-29 08:42:44', '2018-07-29 08:42:44', '', 0, 'http://localhost/hongtah/2018/07/29/dcdaaf99-74dc-4830-ad71-a985bae7ab4e/', 0, 'customize_changeset', '', 0),
(93, 1, '2018-08-11 10:38:54', '2018-08-11 10:38:54', '{\n    \"wpcustomtheme::services_overview_heading\": {\n        \"value\": \"Servicess\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-11 10:38:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97c06bf9-dfd0-41b0-9dd6-98f7c04ab266', '', '', '2018-08-11 10:38:54', '2018-08-11 10:38:54', '', 0, 'http://localhost/hongtah/2018/08/11/97c06bf9-dfd0-41b0-9dd6-98f7c04ab266/', 0, 'customize_changeset', '', 0),
(94, 1, '2018-08-11 10:40:13', '2018-08-11 10:40:13', '{\n    \"wpcustomtheme::services_overview_heading\": {\n        \"value\": \"Services\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-11 10:40:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fecdf914-9dea-4262-a05a-8563d9f5c017', '', '', '2018-08-11 10:40:13', '2018-08-11 10:40:13', '', 0, 'http://localhost/hongtah/2018/08/11/fecdf914-9dea-4262-a05a-8563d9f5c017/', 0, 'customize_changeset', '', 0),
(96, 1, '2018-08-11 10:59:54', '2018-08-11 10:59:54', '{\n    \"wpcustomtheme::services_overview_bgimage\": {\n        \"value\": \"http://localhost/hongtah/wp-content/uploads/2018/07/industrial-hall-1630737_1920.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-11 10:59:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ae1e6295-9925-45c1-bbec-5ee715b28f0c', '', '', '2018-08-11 10:59:54', '2018-08-11 10:59:54', '', 0, 'http://localhost/hongtah/2018/08/11/ae1e6295-9925-45c1-bbec-5ee715b28f0c/', 0, 'customize_changeset', '', 0),
(97, 1, '2018-08-11 11:00:16', '2018-08-11 11:00:16', '{\n    \"wpcustomtheme::services_overview_bgimage\": {\n        \"value\": \"http://localhost/hongtah/wp-content/themes/wpcustomtheme/images/services-bg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-11 11:00:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c12b074-7d0e-4800-8659-87428d3d28c0', '', '', '2018-08-11 11:00:16', '2018-08-11 11:00:16', '', 0, 'http://localhost/hongtah/2018/08/11/0c12b074-7d0e-4800-8659-87428d3d28c0/', 0, 'customize_changeset', '', 0),
(107, 1, '2018-08-12 02:18:53', '2018-08-12 02:18:53', '{\n    \"wpcustomtheme::services_banner_image\": {\n        \"value\": \"http://localhost/hongtah/wp-content/uploads/2018/07/industrial-hall-1630737_1920.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-12 02:18:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a5a1a1a6-588e-4c69-bdf2-f5b7c8b23d92', '', '', '2018-08-12 02:18:53', '2018-08-12 02:18:53', '', 0, 'http://localhost/hongtah/2018/08/12/a5a1a1a6-588e-4c69-bdf2-f5b7c8b23d92/', 0, 'customize_changeset', '', 0),
(116, 1, '2018-08-12 12:30:04', '2018-08-12 12:30:04', '{\n    \"wpcustomtheme::email_heading\": {\n        \"value\": \"Emaila\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-12 12:30:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'add8fdaa-72e6-497a-96dc-6e04024f5df2', '', '', '2018-08-12 12:30:04', '2018-08-12 12:30:04', '', 0, 'http://localhost/hongtah/2018/08/12/add8fdaa-72e6-497a-96dc-6e04024f5df2/', 0, 'customize_changeset', '', 0),
(117, 1, '2018-08-12 12:31:05', '2018-08-12 12:31:05', '{\n    \"wpcustomtheme::email_heading\": {\n        \"value\": \"Email\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-12 12:31:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97f702d5-bb2f-4f11-8110-b550ccbca7e4', '', '', '2018-08-12 12:31:05', '2018-08-12 12:31:05', '', 0, 'http://localhost/hongtah/2018/08/12/97f702d5-bb2f-4f11-8110-b550ccbca7e4/', 0, 'customize_changeset', '', 0),
(119, 1, '2018-08-18 10:41:18', '0000-00-00 00:00:00', '{\n    \"wpcustomtheme::services_banner_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 10:41:18\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b09f678b-9101-489c-8457-6285f42c5251', '', '', '2018-08-18 10:41:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/hongtah/?p=119', 0, 'customize_changeset', '', 0),
(120, 1, '2018-08-18 12:10:16', '2018-08-18 12:10:16', '{\n    \"wpcustomtheme::about_overview_text\": {\n        \"value\": \"zHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:10:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ceb77e1-45fd-4bbb-83a5-fda8a5f9a4b7', '', '', '2018-08-18 12:10:16', '2018-08-18 12:10:16', '', 0, 'http://localhost/hongtah/2018/08/18/6ceb77e1-45fd-4bbb-83a5-fda8a5f9a4b7/', 0, 'customize_changeset', '', 0),
(121, 1, '2018-08-18 12:11:06', '0000-00-00 00:00:00', '{\n    \"wpcustomtheme::about_banner_text\": {\n        \"value\": \"zHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:11:06\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '4ccf8448-2339-4861-99fa-114492f6e74c', '', '', '2018-08-18 12:11:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/hongtah/?p=121', 0, 'customize_changeset', '', 0),
(122, 1, '2018-08-18 12:20:21', '2018-08-18 12:20:21', '{\n    \"wpcustomtheme::about_banner_text\": {\n        \"value\": \"zHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:20:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '162f87a2-1936-41ae-9d3d-6e50c5e175d0', '', '', '2018-08-18 12:20:21', '2018-08-18 12:20:21', '', 0, 'http://localhost/hongtah/2018/08/18/162f87a2-1936-41ae-9d3d-6e50c5e175d0/', 0, 'customize_changeset', '', 0),
(123, 1, '2018-08-18 12:22:09', '0000-00-00 00:00:00', '{\n    \"wpcustomtheme::about_banner_text\": {\n        \"value\": \"zzzzzHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:22:09\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c2025804-007b-422e-beb7-afb7ed91473f', '', '', '2018-08-18 12:22:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/hongtah/?p=123', 0, 'customize_changeset', '', 0),
(124, 1, '2018-08-18 12:22:47', '0000-00-00 00:00:00', '{\n    \"wpcustomtheme::about_banner_text\": {\n        \"value\": \"zfdxfxdfxHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:22:47\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '52eab38f-7950-434e-91d7-25cc17d04c4b', '', '', '2018-08-18 12:22:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/hongtah/?p=124', 0, 'customize_changeset', '', 0),
(125, 1, '2018-08-18 12:24:18', '0000-00-00 00:00:00', '{\n    \"wpcustomtheme::about_banner_text\": {\n        \"value\": \"zfdsaHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:23:59\"\n    },\n    \"wpcustomtheme::services_banner_text\": {\n        \"value\": \"fdsa\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:23:59\"\n    },\n    \"wpcustomtheme::phone_heading\": {\n        \"value\": \"Phoness\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:24:18\"\n    },\n    \"wpcustomtheme::email_heading\": {\n        \"value\": \"Emailsss\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:24:18\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '33a477b5-8859-4383-b5c0-b13904edcf81', '', '', '2018-08-18 12:24:18', '2018-08-18 12:24:18', '', 0, 'http://localhost/hongtah/?p=125', 0, 'customize_changeset', '', 0),
(126, 1, '2018-08-18 12:43:15', '2018-08-18 12:43:15', '{\n    \"wpcustomtheme::home_service_1_content\": {\n        \"value\": \"zHong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:43:09\"\n    },\n    \"wpcustomtheme::about_overview_text\": {\n        \"value\": \"Hong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:43:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e8ac66b-a126-4b6a-ba05-da395d6d05b2', '', '', '2018-08-18 12:43:15', '2018-08-18 12:43:15', '', 0, 'http://localhost/hongtah/?p=126', 0, 'customize_changeset', '', 0),
(127, 1, '2018-08-18 12:45:31', '0000-00-00 00:00:00', '{\n    \"wpcustomtheme::about_banner_heading\": {\n        \"value\": \"Company Profile\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:44:08\"\n    },\n    \"wpcustomtheme::about_banner_text\": {\n        \"value\": \"gistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. It seeks to accrue impressive customer and vendor rating by providing a respectable level of service integrity to its business partners.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::vision_heading\": {\n        \"value\": \"Vision\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:44:08\"\n    },\n    \"wpcustomtheme::vision_text\": {\n        \"value\": \"ng and expanding logistics business through reliable, and insightful trucking and transportation services.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::mission_heading\": {\n        \"value\": \"Missio\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:44:08\"\n    },\n    \"wpcustomtheme::mission_text\": {\n        \"value\": \"proved trucking service provider in the Philippines.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:44:08\"\n    },\n    \"wpcustomtheme::cpromise_heading\": {\n        \"value\": \"Client Promis\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:44:08\"\n    },\n    \"wpcustomtheme::cpromise_text\": {\n        \"value\": \"and fund efficiency in all parts of our operations. \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:44:08\"\n    },\n    \"wpcustomtheme::services_banner_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::services_banner_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::services_banner_text\": {\n        \"value\": \"ides trucking services to companies demanding goods-forwarding services.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::trucking_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::trucking_text\": {\n        \"value\": \"nc\\u2024, is a trucking service company engaged in hauling and delivering general cargos through prime trucks. Setting reliable standards for reasonable-cost cargo moving in Metro Manila trips. We believe in being diligent and fast in every transaction with our clients, giving full safety and priority to customer\\u2019s goods. Our professional employees make sure that the client\\u2019s items get moved safely and securely.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::trucking_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::warehouse_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::warehouse_text\": {\n        \"value\": \"ong-term warehousing services, prioritizing the security of the items. We also offer last-minute storage solutions without compromising the condition and qualities of the goods. Our quality service are made sure to meet your supply-chain processs and standards as easily and fast as possible.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::warehouse_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:08\"\n    },\n    \"wpcustomtheme::contact_banner_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::contact_banner_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::phone_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::phone_content\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::email_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::email_content\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::loc1_heading\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::loc1_content\": {\n        \"value\": \"d, Talon, Las Pinas, 1740 Metro Manila\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::loc2_heading\": {\n        \"value\": \"P\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    },\n    \"wpcustomtheme::loc2_content\": {\n        \"value\": \"bang\\u2013Zapote Road, Talon, Las Pinas, 1740 Metro Manila\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:45:31\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '071e633c-69c7-4cbb-aa8f-5c3412ec1fa3', '', '', '2018-08-18 12:45:31', '2018-08-18 12:45:31', '', 0, 'http://localhost/hongtah/?p=127', 0, 'customize_changeset', '', 0),
(128, 1, '2018-08-18 12:48:05', '0000-00-00 00:00:00', '{\n    \"wpcustomtheme::home_service_1_content\": {\n        \"value\": \"Hong Tah Logistics Inc. is a privately owned trucking company that renders land transportation needs of customers and suppliers from the origin point to destination point. \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:48:05\"\n    },\n    \"wpcustomtheme::contact_banner_heading\": {\n        \"value\": \"Contact Usfdsfds\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-18 12:48:05\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f67dbca7-acab-4b4e-9ea2-b00aa4e0f6ec', '', '', '2018-08-18 12:48:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/hongtah/?p=128', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Trucking', 'trucking', 0),
(4, 'trucks', 'trucks', 0),
(5, 'Warehouse', 'warehouse', 0),
(6, 'warehouse', 'warehouse', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(13, 2, 0),
(16, 3, 0),
(16, 4, 0),
(19, 5, 0),
(19, 6, 0),
(33, 2, 0),
(34, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'hongtah_admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"32ccb576060e1b8dba5b374c34c512ad4c1db187e24f13d7c4198f0087363cbf\";a:4:{s:10:\"expiration\";i:1534737772;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534564972;}s:64:\"f7e95e05896b8dd70dce83f5391bed2b90fc7af059996ba762055fc4710627f3\";a:4:{s:10:\"expiration\";i:1534740342;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134\";s:5:\"login\";i:1534567542;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '91'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1532852334'),
(23, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hongtah_admin', '$P$BKcxhZx1SnamZfzt2QXI0SvCLOZZwD0', 'hongtah_admin', 'codevopers@gmail.com', '', '2018-07-21 10:01:02', '', 0, 'hongtah_admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0J`sžcB@˜`‰g¿Ú]À');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '300', '45.950464', '-109.815505', '45.950464,-109.81550500000003', 2, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:14:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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

--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
